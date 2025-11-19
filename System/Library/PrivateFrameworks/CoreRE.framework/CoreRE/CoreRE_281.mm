uint64_t RETimelineDefinitionMakeAdditiveFromBaseSRT(_anonymous_namespace_::TimelineDefinition *a1, __n128 a2, __n128 a3, __n128 a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v5 = v4;
  v6 = *(v4 + 2);
  if (v6 == 33)
  {
    if (*(v4 + 72) == 1)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v8 = "Cannot make additive sampled animation from existing additive animation.";
      goto LABEL_22;
    }

    v10 = *(v4 + 13);
    v16 = *(v4 + 15);
    v17 = v10;
    *buf = v11;
    v15 = 1;
    result = re::AnimationHelper::makeAdditiveForValues<re::GenericSRT<float>>(&v16, buf, v16, v10);
  }

  else
  {
    if (v6 != 17)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v8 = "Unsupported additive SRT animation type.";
      goto LABEL_22;
    }

    if (*(v4 + 72) == 1)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v8 = "Cannot make additive animation from existing additive from-to-by animation.";
LABEL_22:
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
LABEL_23:

      return 0;
    }

    if (*(v4 + 224) == 1)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v8 = "From-to-by animation with by value is already an additive animation.";
      goto LABEL_22;
    }

    v16 = v4 + 96;
    v17 = v4 + 160;
    v12[0] = &v16;
    v12[1] = 2;
    v13 = v11;
    *buf = &v13;
    v15 = 1;
    result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::GenericSRT<float>>(v12, buf, &v16, 2uLL);
  }

  *(v5 + 72) = result;
  return result;
}

uint64_t RETimelineDefinitionMakeAdditiveFromBaseSkeletalPose(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = v5;
  v7 = *(v5 + 2);
  if (v7 == 34)
  {
    if (*(v5 + 21) != a3)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v16 = CoreRELog::log;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 0;
      v17 = "Cannot make additive animation, number of joints do not match joint count.";
      goto LABEL_49;
    }

    v12 = *(v5 + 13);
    if (v12)
    {
      v13 = (*(v5 + 15) + 8);
      v14 = 24 * v12;
      while (1)
      {
        v15 = *v13;
        v13 += 3;
        if (v15 != a3)
        {
          break;
        }

        v14 -= 24;
        if (!v14)
        {
          goto LABEL_23;
        }
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v16 = CoreRELog::log;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 0;
      v17 = "Cannot make additive animation, number of joint transforms do not match joint count.";
      goto LABEL_49;
    }

LABEL_23:
    *buf = 0;
    v25 = 0;
    v26 = 0;
    *v27 = a2;
    v28 = a3;
    re::FixedArray<re::GenericSRT<float>>::operator=(buf, v27);
    if (*(v6 + 72) == 1)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      *v27 = 0;
      v11 = "Cannot make additive sampled animation from existing additive animation.";
      goto LABEL_57;
    }

    v18 = *(v6 + 13);
    v29 = *(v6 + 15);
    v30 = v18;
    *v27 = buf;
    v28 = 1;
    v19 = re::AnimationHelper::makeAdditiveForValues<re::SkeletalPoseAssetData>(&v29, v27, v29, v18);
LABEL_60:
    v20 = v19;
    *(v6 + 72) = v19;
    goto LABEL_61;
  }

  if (v7 != 18)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *buf = 0;
    v17 = "Unsupported additive skeletal pose animation type.";
    goto LABEL_49;
  }

  if (*(v5 + 88) == 1 && *(v5 + 13) != a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *buf = 0;
    v17 = "Cannot make additive animation, from-to-by animation from joint count does not match.";
LABEL_49:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
LABEL_50:

    return 0;
  }

  if (*(v5 + 120) == 1 && *(v5 + 17) != a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *buf = 0;
    v17 = "Cannot make additive animation, from-to-by animation from joint count does not match.";
    goto LABEL_49;
  }

  *buf = 0;
  v25 = 0;
  v26 = 0;
  *v27 = a2;
  v28 = a3;
  re::FixedArray<re::GenericSRT<float>>::operator=(buf, v27);
  if (*(v6 + 72) != 1)
  {
    if (*(v6 + 152) == 1)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v10 = CoreRELog::log;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      *v27 = 0;
      v11 = "From-to-by animation with by value is already an additive animation.";
      goto LABEL_57;
    }

    v29 = v6 + 88;
    v30 = (v6 + 120);
    v22[0] = &v29;
    v22[1] = 2;
    v23 = buf;
    *v27 = &v23;
    v28 = 1;
    v19 = re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::SkeletalPoseAssetData>(v22, v27, &v29, 2);
    goto LABEL_60;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_58;
  }

  *v27 = 0;
  v11 = "Cannot make additive animation from existing additive from-to-by animation.";
LABEL_57:
  _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v11, v27, 2u);
LABEL_58:

  v20 = 0;
LABEL_61:
  if (*buf && v25)
  {
    (*(**buf + 40))();
  }

  return v20;
}

uint64_t RETimelineDefinitionMakeAdditiveFromBaseSkeletalPoses(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) != 34)
  {
    if (CoreRELog::onceToken == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

  v8 = v7;
  if (*(v7 + 72) == 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "Cannot make additive animation from existing additive from-to-by animation.";
    goto LABEL_38;
  }

  if (*(v7 + 21) != a4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "Cannot make additive animation, number of joints do not match joint count.";
    goto LABEL_38;
  }

  v13 = *(v7 + 13);
  if (v13)
  {
    v14 = (*(v7 + 15) + 8);
    v15 = 24 * v13;
    while (1)
    {
      v16 = *v14;
      v14 += 3;
      if (v16 != a4)
      {
        break;
      }

      v15 -= 24;
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    if (CoreRELog::onceToken == -1)
    {
LABEL_30:
      v9 = CoreRELog::log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = "Cannot make additive animation, number of joint transforms do not match joint count.";
LABEL_38:
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

LABEL_43:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_30;
  }

LABEL_16:
  if (a3)
  {
    if (a3 >= 0xAAAAAAAAAAAAAABLL)
    {
      re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
      _os_crash();
      __break(1u);
    }

    else
    {
      if (v18)
      {
        v20 = v18;
        v21 = v18;
        if (a3 != 1)
        {
          bzero(v18, 24 * a3 - 24);
          v21 = (v20 + 24 * a3 - 24);
        }

        v22 = 0;
        *v21 = 0;
        *(v21 + 1) = 0;
        v23 = v20;
        *(v21 + 2) = 0;
        while (1)
        {
          v27[0] = *(a2 + 8 * v22);
          v27[1] = a4;
          if (a3 == v22)
          {
            break;
          }

          re::FixedArray<re::GenericSRT<float>>::operator=(v23, v27);
          ++v22;
          v23 = (v23 + 24);
          if (a3 == v22)
          {
            goto LABEL_33;
          }
        }

        v27[2] = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v28 = 136315906;
        *&v28[4] = "operator[]";
        *&v28[12] = 1024;
        *&v28[14] = 468;
        v29 = 2048;
        v30 = a3;
        v31 = 2048;
        v32 = a3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_40:
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_8:
        v9 = CoreRELog::log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v10 = "Unsupported additive skeletal poses animation type.";
          goto LABEL_38;
        }

LABEL_9:

        return 0;
      }
    }

    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    goto LABEL_43;
  }

  v20 = 0;
LABEL_33:
  v24 = *(v8 + 13);
  *buf = *(v8 + 15);
  *&buf[8] = v24;
  *v28 = v20;
  *&v28[8] = a3;
  v11 = re::AnimationHelper::makeAdditiveForValues<re::SkeletalPoseAssetData>(buf, v28, *buf, v24);
  *(v8 + 72) = v11;
  if (a3)
  {
    v25 = 24 * a3;
    v26 = v20;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v26);
      v26 += 3;
      v25 -= 24;
    }

    while (v25);
  }

  return v11;
}

BOOL RETimelineDefinitionMakeAdditiveFromBaseBlendShapeWeights(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  if (*(v7 + 2) != 59)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v10 = "Unsupported additive blend shape weights animation type.";
    goto LABEL_36;
  }

  v8 = v7;
  if (*(v7 + 72) != 1)
  {
    if (*(v7 + 18) != a4)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v9 = CoreRELog::log;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v10 = "Cannot make additive animation, number of weights do not match weight count.";
      goto LABEL_36;
    }

    v13 = *(v7 + 13);
    if (v13)
    {
      v14 = (*(v7 + 15) + 8);
      v15 = 24 * v13;
      while (1)
      {
        v16 = *v14;
        v14 += 3;
        if (v16 != a4)
        {
          break;
        }

        v15 -= 24;
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v9 = CoreRELog::log;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v10 = "Cannot make additive animation, number of weights do not match weight count.";
      goto LABEL_36;
    }

LABEL_17:
    re::StackScratchAllocator::StackScratchAllocator(buf);
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v24 = buf;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(&v24, 0);
    ++v27;
    if (v25 >= a3)
    {
      if (!a3)
      {
LABEL_30:
        v18 = *(v8 + 13);
        v21 = *(v8 + 15);
        v22 = v18;
        v19 = v28;
        v20 = v26;
        v11 = re::AnimationHelper::makeAdditiveForValues<re::BlendShapeWeightsAssetData>(&v21, &v19, v21, v18);
        *(v8 + 72) = v11;
        re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v24);
        re::StackScratchAllocator::~StackScratchAllocator(buf);
        return v11;
      }
    }

    else
    {
      re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(&v24, a3);
    }

    do
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v19 = *a2;
      v20 = a4;
      re::FixedArray<int>::operator=(&v21, &v19);
      v17 = v26;
      if (v26 >= v25)
      {
        re::DynamicArray<re::BlendShapeWeightsAssetData>::growCapacity(&v24, v26 + 1);
        v17 = v26;
      }

      re::FixedArray<float>::FixedArray((v28 + 24 * v17), &v21);
      ++v26;
      ++v27;
      if (v21 && v22)
      {
        (*(*v21 + 40))();
      }

      ++a2;
      --a3;
    }

    while (a3);
    goto LABEL_30;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_10;
  }

  *buf = 0;
  v10 = "Cannot make additive animation from existing additive from-to-by animation.";
LABEL_36:
  _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
LABEL_10:

  return 0;
}

uint64_t RETimelineDefinitionIsAdditive(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v2 = *(v1 + 8);
  if (v2 - 3 >= 0x20 && ((v3 = v2 > 0x3D, v4 = (1 << v2) & 0x38057FA000000000, !v3) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v1 + 72);
  }

  return v6 & 1;
}

uint64_t RETimelineDefinitionSetAdditive(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if (v4 - 3 >= 0x20)
  {
    v5 = v4 > 0x3D;
    v6 = (1 << v4) & 0x38057FA000000000;
    if (v5 || v6 == 0)
    {
      return 0;
    }
  }

  *(v3 + 72) = a2;
  return 1;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToByFloatAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 120, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 11);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC3530;
  v8[0] = &unk_1F5D29E00;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D29E00;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToByDoubleAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 144, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 12);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  *v4 = &unk_1F5CBF140;
  v8[0] = &unk_1F5D29E80;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D29E80;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToByFloat2Animation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 144, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 13);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  *v4 = &unk_1F5CBF270;
  v8[0] = &unk_1F5D29F00;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D29F00;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToByFloat3Animation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 208, 16);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 14);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  *v4 = &unk_1F5CBF3A0;
  v8[0] = &unk_1F5D29F80;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D29F80;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToByFloat4Animation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 208, 16);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 15);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  *v4 = &unk_1F5CBF4D0;
  v8[0] = &unk_1F5D2A000;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A000;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToByQuaternionAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 208, 16);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 16);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  *v4 = &unk_1F5CBF600;
  v8[0] = &unk_1F5D2A080;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A080;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToBySRTAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 304, 16);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 17);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 160) = 0;
  *(v4 + 224) = 0;
  *(v4 + 288) = 0;
  *v4 = &unk_1F5CBF730;
  v8[0] = &unk_1F5D2A100;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A100;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToBySkeletalPoseAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 336, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 18);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 120) = 0;
  *(v4 + 152) = 0;
  *(v4 + 184) = 0;
  *v4 = &unk_1F5CBF8F8;
  *(v4 + 328) = 0;
  *(v4 + 280) = 0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0;
  v8[0] = &unk_1F5D2A180;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A180;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 312, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 50);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 120) = 0;
  *(v4 + 152) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *v4 = &unk_1F5CBFA28;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 304) = 0;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0;
  v8[0] = &unk_1F5D2A200;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A200;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

double computeBlendTreeDuration(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0.0;
  do
  {
    v5 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((*(a1 + 32) + v2));
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = (*(*v6 + 40))(v6);
        if (v4 < v7)
        {
          v4 = v7;
        }
      }
    }

    ++v3;
    v2 += 24;
  }

  while (v3 < *(a1 + 16));
  return v4;
}

double RETimelineDefinitionGetDuration(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  switch(*(v1 + 8))
  {
    case 1:
      v13 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((v1 + 72));
      if (!v13)
      {
        return 0.0;
      }

      v14 = *(v1 + 152);
      if (v14 == 1)
      {
        v4.n128_u64[0] = *(v1 + 160);
      }

      v15 = 0.0;
      if (*(v1 + 96) == 1)
      {
        v15 = *(v1 + 104);
      }

      if (*(v1 + 112) == 1)
      {
        if ((v14 & 1) == 0)
        {
          v16 = *(v1 + 120);
LABEL_58:
          v28 = v16 - v15;
          v24 = v16 < v15;
          v4.n128_u64[0] = 0;
          if (!v24)
          {
            v4.n128_f64[0] = v28;
          }
        }
      }

      else if ((v14 & 1) == 0)
      {
        v27 = *(v13 + 16);
        if (v27)
        {
          (*(*v27 + 40))(v27, v4);
        }

        else
        {
          v16 = 0.0;
        }

        goto LABEL_58;
      }

      v25 = *(v1 + 144);
      v26 = *(v1 + 168);
      return v25 + v4.n128_f64[0] / v26;
    case 2:
      if (!*(v1 + 88))
      {
        return 0.0;
      }

      v17 = 0;
      v18 = 0;
      v8 = 0.0;
      do
      {
        v19 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((*(v1 + 104) + v17));
        if (v19)
        {
          v20 = *(v19 + 16);
          if (v20)
          {
            v21 = (*(*v20 + 40))(v20);
            if (v8 < v21)
            {
              v8 = v21;
            }
          }
        }

        ++v18;
        v17 += 24;
      }

      while (v18 < *(v1 + 88));
      return v8;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0x3C:
      v3 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((v1 + 80));
      if (!v3)
      {
        return 0.0;
      }

      v5 = *(v1 + 160);
      if (v5 == 1)
      {
        v4.n128_u64[0] = *(v1 + 168);
      }

      v6 = 0.0;
      if (*(v1 + 104) == 1)
      {
        v6 = *(v1 + 112);
      }

      if (*(v1 + 120) == 1)
      {
        if (v5)
        {
          goto LABEL_51;
        }

        v7 = *(v1 + 128);
      }

      else
      {
        if (v5)
        {
          goto LABEL_51;
        }

        v11 = *(v3 + 16);
        if (v11)
        {
          (*(*v11 + 40))(v11, v4);
        }

        else
        {
          v7 = 0.0;
        }
      }

      v23 = v7 - v6;
      v24 = v7 < v6;
      v4.n128_u64[0] = 0;
      if (!v24)
      {
        v4.n128_f64[0] = v23;
      }

LABEL_51:
      v25 = *(v1 + 152);
      v26 = *(v1 + 176);
      return v25 + v4.n128_f64[0] / v26;
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x32:
      return *(v1 + 80);
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x3B:
      v9 = *(v1 + 104);
      if (v9)
      {
        return (v9 - 1) * *(v1 + 76);
      }

      else
      {
        return 0.0;
      }

    case 0x25:
      return *(v1 + 76);
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:

      return computeBlendTreeDuration(v1 + 248);
    case 0x30:
      return re::TimelineEventData::totalDuration((v1 + 80));
    default:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v22 = CoreRELog::log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Unsupported timeline for getting duration property.", v29, 2u);
      }

      return NAN;
  }
}

uint64_t RETimelineDefinitionSetDuration(_anonymous_namespace_::TimelineDefinition *a1, double a2)
{
  v4 = *(v3 + 2);
  if (v4 > 15)
  {
    if (v4 <= 18)
    {
      goto LABEL_10;
    }

    if (v4 == 37)
    {
      v6 = a2;
      *(v3 + 19) = v6;
      return 1;
    }

    if (v4 == 50)
    {
LABEL_10:
      *(v3 + 10) = a2;
      return 1;
    }
  }

  else if (v4 > 12 || v4 == 11 || v4 == 12)
  {
    goto LABEL_10;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Unsupported timeline for setting duration property.", v8, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionGetFloatFromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 11)
  {
    v2 = *(v1 + 88);
    v3 = v1 + 92;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float 'from' value from non-float from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloatToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 11)
  {
    v2 = *(v1 + 96);
    v3 = v1 + 100;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float 'to' value from non-float from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloatByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 11)
  {
    v2 = *(v1 + 104);
    v3 = v1 + 108;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float 'by' value from non-float from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

BOOL RETimelineDefinitionSetFloatFromValue(_anonymous_namespace_::TimelineDefinition *a1, int *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 11)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 88) & 1) == 0)
      {
        *(v3 + 88) = 1;
      }

      *(v3 + 23) = v5;
    }

    else if (*(v3 + 88))
    {
      *(v3 + 88) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float 'from' value for non-float from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 11;
}

BOOL RETimelineDefinitionSetFloatToValue(_anonymous_namespace_::TimelineDefinition *a1, int *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 11)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 96) & 1) == 0)
      {
        *(v3 + 96) = 1;
      }

      *(v3 + 25) = v5;
    }

    else if (*(v3 + 96))
    {
      *(v3 + 96) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float 'to' value for non-float from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 11;
}

BOOL RETimelineDefinitionSetFloatByValue(_anonymous_namespace_::TimelineDefinition *a1, int *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 11)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 104) & 1) == 0)
      {
        *(v3 + 104) = 1;
      }

      *(v3 + 27) = v5;
    }

    else if (*(v3 + 104))
    {
      *(v3 + 104) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float 'by' value for non-float from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 11;
}

uint64_t RETimelineDefinitionGetDoubleFromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 12)
  {
    v2 = *(v1 + 88);
    v3 = v1 + 96;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get double 'from' value from non-double from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetDoubleToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 12)
  {
    v2 = *(v1 + 104);
    v3 = v1 + 112;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get double 'to' value from non-double from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetDoubleByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 12)
  {
    v2 = *(v1 + 120);
    v3 = v1 + 128;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get double 'by' value from non-double from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

BOOL RETimelineDefinitionSetDoubleFromValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 12)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 88) & 1) == 0)
      {
        *(v3 + 88) = 1;
      }

      *(v3 + 12) = v5;
    }

    else if (*(v3 + 88))
    {
      *(v3 + 88) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set double 'from' value for non-double from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 12;
}

BOOL RETimelineDefinitionSetDoubleToValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 12)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 104) & 1) == 0)
      {
        *(v3 + 104) = 1;
      }

      *(v3 + 14) = v5;
    }

    else if (*(v3 + 104))
    {
      *(v3 + 104) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set double 'to' value for non-double from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 12;
}

BOOL RETimelineDefinitionSetDoubleByValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 12)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 120) & 1) == 0)
      {
        *(v3 + 120) = 1;
      }

      *(v3 + 16) = v5;
    }

    else if (*(v3 + 120))
    {
      *(v3 + 120) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set double 'by' value for non-double from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 12;
}

uint64_t RETimelineDefinitionGetFloat2FromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 13)
  {
    v2 = *(v1 + 88);
    v3 = v1 + 96;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float2 'from' value from non-float2 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat2ToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 13)
  {
    v2 = *(v1 + 104);
    v3 = v1 + 112;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float2 'to' value from non-float2 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat2ByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 13)
  {
    v2 = *(v1 + 120);
    v3 = v1 + 128;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float2 'by' value from non-float2 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

BOOL RETimelineDefinitionSetFloat2FromValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 13)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 88) & 1) == 0)
      {
        *(v3 + 88) = 1;
      }

      *(v3 + 12) = v5;
    }

    else if (*(v3 + 88))
    {
      *(v3 + 88) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float2 'from' value for non-float2 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 13;
}

BOOL RETimelineDefinitionSetFloat2ToValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 13)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 104) & 1) == 0)
      {
        *(v3 + 104) = 1;
      }

      *(v3 + 14) = v5;
    }

    else if (*(v3 + 104))
    {
      *(v3 + 104) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float2 'to' value for non-float2 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 13;
}

BOOL RETimelineDefinitionSetFloat2ByValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 13)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 120) & 1) == 0)
      {
        *(v3 + 120) = 1;
      }

      *(v3 + 16) = v5;
    }

    else if (*(v3 + 120))
    {
      *(v3 + 120) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float2 'by' value for non-float2 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 13;
}

uint64_t RETimelineDefinitionGetFloat3FromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 14)
  {
    v2 = *(v1 + 96);
    v3 = v1 + 112;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float3 'from' value from non-float3 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat3ToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 14)
  {
    v2 = *(v1 + 128);
    v3 = v1 + 144;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float3 'to' value from non-float3 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat3ByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 14)
  {
    v2 = *(v1 + 160);
    v3 = v1 + 176;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float3 'by' value from non-float3 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

BOOL RETimelineDefinitionSetFloat3FromValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 14)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 96) & 1) == 0)
      {
        *(v3 + 96) = 1;
      }

      *(v3 + 7) = v5;
    }

    else if (*(v3 + 96))
    {
      *(v3 + 96) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float3 'from' value for non-float3 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 14;
}

BOOL RETimelineDefinitionSetFloat3ToValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 14)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 128) & 1) == 0)
      {
        *(v3 + 128) = 1;
      }

      *(v3 + 9) = v5;
    }

    else if (*(v3 + 128))
    {
      *(v3 + 128) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float3 'to' value for non-float3 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 14;
}

BOOL RETimelineDefinitionSetFloat3ByValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 14)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 160) & 1) == 0)
      {
        *(v3 + 160) = 1;
      }

      *(v3 + 11) = v5;
    }

    else if (*(v3 + 160))
    {
      *(v3 + 160) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float3 'by' value for non-float3 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 14;
}

uint64_t RETimelineDefinitionGetFloat4FromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 15)
  {
    v2 = *(v1 + 96);
    v3 = v1 + 112;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float4 'from' value from non-float4 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat4ToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 15)
  {
    v2 = *(v1 + 128);
    v3 = v1 + 144;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float4 'to' value from non-float4 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat4ByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 15)
  {
    v2 = *(v1 + 160);
    v3 = v1 + 176;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get float4 'by' value from non-float4 from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

BOOL RETimelineDefinitionSetFloat4FromValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 15)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 96) & 1) == 0)
      {
        *(v3 + 96) = 1;
      }

      *(v3 + 7) = v5;
    }

    else if (*(v3 + 96))
    {
      *(v3 + 96) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float4 'from' value for non-float4 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 15;
}

BOOL RETimelineDefinitionSetFloat4ToValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 15)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 128) & 1) == 0)
      {
        *(v3 + 128) = 1;
      }

      *(v3 + 9) = v5;
    }

    else if (*(v3 + 128))
    {
      *(v3 + 128) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float4 'to' value for non-float4 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 15;
}

BOOL RETimelineDefinitionSetFloat4ByValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 15)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 160) & 1) == 0)
      {
        *(v3 + 160) = 1;
      }

      *(v3 + 11) = v5;
    }

    else if (*(v3 + 160))
    {
      *(v3 + 160) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set float4 'by' value for non-float4 from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 15;
}

uint64_t RETimelineDefinitionGetQuaternionFromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 16)
  {
    v2 = *(v1 + 96);
    v3 = v1 + 112;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get quaternion 'from' value from non-quaternion from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetQuaternionToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 16)
  {
    v2 = *(v1 + 128);
    v3 = v1 + 144;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get quaternion 'to' value from non-quaternion from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetQuaternionByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 16)
  {
    v2 = *(v1 + 160);
    v3 = v1 + 176;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get quaternion 'by' value from non-quaternion from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

BOOL RETimelineDefinitionSetQuaternionFromValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 16)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 96) & 1) == 0)
      {
        *(v3 + 96) = 1;
      }

      *(v3 + 7) = v5;
    }

    else if (*(v3 + 96))
    {
      *(v3 + 96) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set quaternion 'from' value for non-quaternion from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 16;
}

BOOL RETimelineDefinitionSetQuaternionToValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 16)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 128) & 1) == 0)
      {
        *(v3 + 128) = 1;
      }

      *(v3 + 9) = v5;
    }

    else if (*(v3 + 128))
    {
      *(v3 + 128) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set quaternion 'to' value for non-quaternion from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 16;
}

BOOL RETimelineDefinitionSetQuaternionByValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 16)
  {
    if (a2)
    {
      v5 = *a2;
      if ((*(v3 + 160) & 1) == 0)
      {
        *(v3 + 160) = 1;
      }

      *(v3 + 11) = v5;
    }

    else if (*(v3 + 160))
    {
      *(v3 + 160) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set quaternion 'by' value for non-quaternion from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 16;
}

uint64_t RETimelineDefinitionGetSRTFromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 17)
  {
    v2 = *(v1 + 96);
    v3 = v1 + 112;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get RESRT 'from' value from non-RESRT from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetSRTToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 17)
  {
    v2 = *(v1 + 160);
    v3 = v1 + 176;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get RESRT 'to' value from non-RESRT from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionGetSRTByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 17)
  {
    v2 = *(v1 + 224);
    v3 = v1 + 240;
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get RESRT 'by' value from non-RESRT from-to-by animation.", v6, 2u);
    }

    return 0;
  }
}

BOOL RETimelineDefinitionSetSRTFromValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 2);
  if (v4 == 17)
  {
    if (a2)
    {
      v5 = a2[1];
      v12 = *a2;
      v13 = v5;
      v14 = a2[2];
      if (*(v3 + 96))
      {
        v6 = *a2;
        v7 = a2[2];
        *(v3 + 8) = a2[1];
        *(v3 + 9) = v7;
        *(v3 + 7) = v6;
      }

      else
      {
        *(v3 + 96) = 1;
        v9 = v13;
        *(v3 + 7) = v12;
        *(v3 + 8) = v9;
        *(v3 + 9) = v14;
      }
    }

    else if (*(v3 + 96))
    {
      *(v3 + 96) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Cannot set RESRT 'from' value for non-RESRT from-to-by animation.", v11, 2u);
    }
  }

  return v4 == 17;
}

BOOL RETimelineDefinitionSetSRTToValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 2);
  if (v4 == 17)
  {
    if (a2)
    {
      v5 = a2[1];
      v12 = *a2;
      v13 = v5;
      v14 = a2[2];
      if (*(v3 + 160))
      {
        v6 = *a2;
        v7 = a2[2];
        *(v3 + 12) = a2[1];
        *(v3 + 13) = v7;
        *(v3 + 11) = v6;
      }

      else
      {
        *(v3 + 160) = 1;
        v9 = v13;
        *(v3 + 11) = v12;
        *(v3 + 12) = v9;
        *(v3 + 13) = v14;
      }
    }

    else if (*(v3 + 160))
    {
      *(v3 + 160) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Cannot set RESRT 'to' value for non-RESRT from-to-by animation.", v11, 2u);
    }
  }

  return v4 == 17;
}

BOOL RETimelineDefinitionSetSRTByValue(_anonymous_namespace_::TimelineDefinition *a1, __int128 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 2);
  if (v4 == 17)
  {
    if (a2)
    {
      v5 = a2[1];
      v12 = *a2;
      v13 = v5;
      v14 = a2[2];
      if (*(v3 + 224))
      {
        v6 = *a2;
        v7 = a2[2];
        *(v3 + 16) = a2[1];
        *(v3 + 17) = v7;
        *(v3 + 15) = v6;
      }

      else
      {
        *(v3 + 224) = 1;
        v9 = v13;
        *(v3 + 15) = v12;
        *(v3 + 16) = v9;
        *(v3 + 17) = v14;
      }
    }

    else if (*(v3 + 224))
    {
      *(v3 + 224) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Cannot set RESRT 'by' value for non-RESRT from-to-by animation.", v11, 2u);
    }
  }

  return v4 == 17;
}

uint64_t RETimelineDefinitionGetSkeletalPoseFromJointCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 18)
  {
    return *(v1 + 232);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'from' joint count for non-SkeletalPose from-to-by animation.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionGetSkeletalPoseToJointCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 18)
  {
    return *(v1 + 272);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'to' joint count for non-SkeletalPose from-to-by animation.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionGetSkeletalPoseByJointCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 18)
  {
    return *(v1 + 312);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'by' joint count for non-SkeletalPose from-to-by animation.", v4, 2u);
  }

  return 0;
}

BOOL RETimelineDefinitionSetSkeletalPoseFromJointCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 18)
  {
    v5 = v3;
    re::DynamicArray<re::StringID>::resize(v3 + 216, a2);
    if (a2)
    {
      if ((*(v5 + 88) & 1) == 0)
      {
        v8[0] = 1;
        v10 = 0;
        v11 = 0;
        v9 = 0;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 88, v8);
        if (v8[0] == 1 && v9 && v10)
        {
          (*(*v9 + 40))();
        }
      }
    }

    else
    {
      v8[0] = 0;
      re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 88, v8);
      if (v8[0] == 1 && v9 && v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'from' joint count for non-SkeletalPose from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 18;
}

uint64_t *anonymous namespace::resizeFixedArray<re::GenericSRT<float>>(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    v5 = *result;
    *result = 0;
    result[1] = 0;
    v6 = result[2];
    result[2] = 0;
    v7 = re::FixedArray<CoreIKTransform>::deinit(result);
    if (v2 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v2;
    }

    if (v8)
    {
      v9 = 0;
      for (i = 0; i != v8; ++i)
      {
        if (v4[1] <= i)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v11 = (v4[2] + v9);
        v12 = *(v6 + v9);
        v13 = *(v6 + v9 + 32);
        v11[1] = *(v6 + v9 + 16);
        v11[2] = v13;
        *v11 = v12;
        v9 += 48;
      }
    }

    if (v2 && v5)
    {
      v14 = *(*v5 + 40);

      return v14(v5, v6);
    }
  }

  return result;
}

BOOL RETimelineDefinitionSetSkeletalPoseToJointCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 18)
  {
    v5 = v3;
    re::DynamicArray<re::StringID>::resize(v3 + 256, a2);
    if (a2)
    {
      if ((*(v5 + 120) & 1) == 0)
      {
        v8[0] = 1;
        v10 = 0;
        v11 = 0;
        v9 = 0;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 120, v8);
        if (v8[0] == 1 && v9 && v10)
        {
          (*(*v9 + 40))();
        }
      }
    }

    else
    {
      v8[0] = 0;
      re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 120, v8);
      if (v8[0] == 1 && v9 && v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'to' joint count for non-SkeletalPose from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 18;
}

BOOL RETimelineDefinitionSetSkeletalPoseByJointCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 18)
  {
    v5 = v3;
    re::DynamicArray<re::StringID>::resize(v3 + 296, a2);
    if (a2)
    {
      if ((*(v5 + 152) & 1) == 0)
      {
        v8[0] = 1;
        v10 = 0;
        v11 = 0;
        v9 = 0;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 152, v8);
        if (v8[0] == 1 && v9 && v10)
        {
          (*(*v9 + 40))();
        }
      }
    }

    else
    {
      v8[0] = 0;
      re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 152, v8);
      if (v8[0] == 1 && v9 && v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'by' joint count for non-SkeletalPose from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 18;
}

BOOL RETimelineDefinitionSetSkeletalPoseFromJointNames(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = RETimelineDefinitionSetSkeletalPoseFromJointCount(a1, a3);
  if (v6)
  {
    if (a3)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(a2 + 8 * v10);
        v14 = 0;
        v15 = &str_67;
        v12 = *(v8 + 29);
        if (v12 <= v10)
        {
          v16 = 0;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v17 = 136315906;
          v18 = "operator[]";
          v19 = 1024;
          v20 = 789;
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v7 = re::StringID::operator=((*(v8 + 31) + v9), &v14);
        if (v14)
        {
          if (v14)
          {
          }
        }

        ++v10;
        v9 += 16;
      }

      while (a3 != v10);
    }
  }

  return v6;
}

BOOL RETimelineDefinitionSetSkeletalPoseToJointNames(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = RETimelineDefinitionSetSkeletalPoseToJointCount(a1, a3);
  if (v6)
  {
    if (a3)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(a2 + 8 * v10);
        v14 = 0;
        v15 = &str_67;
        v12 = *(v8 + 34);
        if (v12 <= v10)
        {
          v16 = 0;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v17 = 136315906;
          v18 = "operator[]";
          v19 = 1024;
          v20 = 789;
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v7 = re::StringID::operator=((*(v8 + 36) + v9), &v14);
        if (v14)
        {
          if (v14)
          {
          }
        }

        ++v10;
        v9 += 16;
      }

      while (a3 != v10);
    }
  }

  return v6;
}

BOOL RETimelineDefinitionSetSkeletalPoseByJointNames(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = RETimelineDefinitionSetSkeletalPoseByJointCount(a1, a3);
  if (v6)
  {
    if (a3)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(a2 + 8 * v10);
        v14 = 0;
        v15 = &str_67;
        v12 = *(v8 + 39);
        if (v12 <= v10)
        {
          v16 = 0;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v17 = 136315906;
          v18 = "operator[]";
          v19 = 1024;
          v20 = 789;
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v7 = re::StringID::operator=((*(v8 + 41) + v9), &v14);
        if (v14)
        {
          if (v14)
          {
          }
        }

        ++v10;
        v9 += 16;
      }

      while (a3 != v10);
    }
  }

  return v6;
}

uint64_t RETimelineDefinitionGetSkeletalPoseFromJointName(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v3 + 8) == 18)
  {
    if (*(v3 + 232) > a2)
    {
      return *(*(v3 + 248) + 16 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'from' joint name, invalid joint index: %zu.", &v7, 0xCu);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'from' joint name for non-SkeletalPose from-to-by animation.", &v7, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionGetSkeletalPoseToJointName(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v3 + 8) == 18)
  {
    if (*(v3 + 272) > a2)
    {
      return *(*(v3 + 288) + 16 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'to' joint name, invalid joint index: %zu.", &v7, 0xCu);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'to' joint name for non-SkeletalPose from-to-by animation.", &v7, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionGetSkeletalPoseByJointName(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v3 + 8) == 18)
  {
    if (*(v3 + 312) > a2)
    {
      return *(*(v3 + 328) + 16 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'by' joint name, invalid joint index: %zu.", &v7, 0xCu);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'by' joint name for non-SkeletalPose from-to-by animation.", &v7, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionSetSkeletalPoseFromJointName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, const char *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 18)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'from' joint name for non-SkeletalPose from-to-by animation.", buf, 2u);
    }

    return 0;
  }

  v6 = v5;
  if (*(v5 + 29) <= a2)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'from' joint name, invalid joint index: %zu.", buf, 0xCu);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v12 = 0;
  v13 = &str_67;
  v7 = *(v6 + 29);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = re::StringID::operator=((*(v6 + 31) + 16 * a2), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  return 1;
}

uint64_t RETimelineDefinitionSetSkeletalPoseToJointName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, const char *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 18)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'to' joint name for non-SkeletalPose from-to-by animation.", buf, 2u);
    }

    return 0;
  }

  v6 = v5;
  if (*(v5 + 34) <= a2)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'to' joint name, invalid joint index: %zu.", buf, 0xCu);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v12 = 0;
  v13 = &str_67;
  v7 = *(v6 + 34);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = re::StringID::operator=((*(v6 + 36) + 16 * a2), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  return 1;
}

uint64_t RETimelineDefinitionSetSkeletalPoseByJointName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, const char *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 18)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'by' joint name for non-SkeletalPose from-to-by animation.", buf, 2u);
    }

    return 0;
  }

  v6 = v5;
  if (*(v5 + 39) <= a2)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'by' joint name, invalid joint index: %zu.", buf, 0xCu);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v12 = 0;
  v13 = &str_67;
  v7 = *(v6 + 39);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = re::StringID::operator=((*(v6 + 41) + 16 * a2), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  return 1;
}

uint64_t RETimelineDefinitionGetSkeletalPoseFromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 18)
  {
    if (*(v1 + 88) == 1)
    {
      return *(v1 + 112);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'from' joint values for non-SkeletalPose from-to-by animation.", v4, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionGetSkeletalPoseToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 18)
  {
    if (*(v1 + 120) == 1)
    {
      return *(v1 + 144);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'to' joint values for non-SkeletalPose from-to-by animation.", v4, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionGetSkeletalPoseByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 18)
  {
    if (*(v1 + 152) == 1)
    {
      return *(v1 + 176);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Sketetal Pose 'by' joint values for non-SkeletalPose from-to-by animation.", v4, 2u);
    }
  }

  return 0;
}

BOOL RETimelineDefinitionSetSkeletalPoseFromValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v6 = RETimelineDefinitionSetSkeletalPoseFromJointCount(a1, a3);
  v7 = v6;
  if (a3 && v6)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (*(v8 + 13) <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = (*(v8 + 14) + v9);
      v12 = *(a2 + v9);
      v13 = *(a2 + v9 + 32);
      v11[1] = *(a2 + v9 + 16);
      v11[2] = v13;
      *v11 = v12;
      ++v10;
      v9 += 48;
    }

    while (a3 != v10);
  }

  return v7;
}

BOOL RETimelineDefinitionSetSkeletalPoseToValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v6 = RETimelineDefinitionSetSkeletalPoseToJointCount(a1, a3);
  v7 = v6;
  if (a3 && v6)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (*(v8 + 17) <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = (*(v8 + 18) + v9);
      v12 = *(a2 + v9);
      v13 = *(a2 + v9 + 32);
      v11[1] = *(a2 + v9 + 16);
      v11[2] = v13;
      *v11 = v12;
      ++v10;
      v9 += 48;
    }

    while (a3 != v10);
  }

  return v7;
}

BOOL RETimelineDefinitionSetSkeletalPoseByValue(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v6 = RETimelineDefinitionSetSkeletalPoseByJointCount(a1, a3);
  v7 = v6;
  if (a3 && v6)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (*(v8 + 21) <= v10)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = (*(v8 + 22) + v9);
      v12 = *(a2 + v9);
      v13 = *(a2 + v9 + 32);
      v11[1] = *(a2 + v9 + 16);
      v11[2] = v13;
      *v11 = v12;
      ++v10;
      v9 += 48;
    }

    while (a3 != v10);
  }

  return v7;
}

uint64_t RETimelineDefinitionSetSkeletalPoseFromJointValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(v6 + 2) != 18)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "Cannot set Sketetal Pose 'from' joint value for non-SkeletalPose from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v6 + 88) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "Cannot set Sketetal Pose 'from' joint value for invalid 'from' pose.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
LABEL_12:

    return 0;
  }

  if (*(v6 + 13) > a2)
  {
    v7 = (*(v6 + 14) + 48 * a2);
    *v7 = a3;
    v7[1] = a4;
    v7[2] = a5;
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v16 = a2;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'from' joint value, invalid joint index: %zu.", buf, 0xCu);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetSkeletalPoseToJointValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(v6 + 2) != 18)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "Cannot set Sketetal Pose 'to' joint value for non-SkeletalPose from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v6 + 120) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "Cannot set Sketetal Pose 'to' joint value for invalid 'to' pose.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
LABEL_12:

    return 0;
  }

  if (*(v6 + 17) > a2)
  {
    v7 = (*(v6 + 18) + 48 * a2);
    *v7 = a3;
    v7[1] = a4;
    v7[2] = a5;
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v16 = a2;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'to' joint value, invalid joint index: %zu.", buf, 0xCu);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetSkeletalPoseByJointValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(v6 + 2) != 18)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "Cannot set Sketetal Pose 'by' joint value for non-SkeletalPose from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v6 + 152) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "Cannot set Sketetal Pose 'by' joint value for invalid 'by' pose.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
LABEL_12:

    return 0;
  }

  if (*(v6 + 21) > a2)
  {
    v7 = (*(v6 + 22) + 48 * a2);
    *v7 = a3;
    v7[1] = a4;
    v7[2] = a5;
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v16 = a2;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Sketetal Pose 'by' joint value, invalid joint index: %zu.", buf, 0xCu);
  }

  return 0;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsFromWeightCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 50)
  {
    return *(v1 + 208);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'from' weight count for non-BlendShapeWeights from-to-by animation.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsToWeightCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 50)
  {
    return *(v1 + 248);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'to' weight count for non-BlendShapeWeights from-to-by animation.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsByWeightCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 50)
  {
    return *(v1 + 288);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'by' weight count for non-BlendShapeWeights from-to-by animation.", v4, 2u);
  }

  return 0;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsFromWeightCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 50)
  {
    v5 = v3;
    re::DynamicArray<re::StringID>::resize(v3 + 192, a2);
    if (a2)
    {
      if ((*(v5 + 88) & 1) == 0)
      {
        v8[0] = 1;
        v10 = 0;
        v11 = 0;
        v9 = 0;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 88, v8);
        if (v8[0] == 1 && v9 && v10)
        {
          (*(*v9 + 40))();
        }
      }
    }

    else
    {
      v8[0] = 0;
      re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 88, v8);
      if (v8[0] == 1 && v9 && v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'from' weight count for non-BlendShapeWeights from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 50;
}

void anonymous namespace::resizeFixedArray<float>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 != a2)
  {
    v5 = *a1;
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[2];
    a1[2] = 0;
    v7 = re::FixedArray<CoreIKTransform>::deinit(a1);
    if (v2 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v2;
    }

    if (v8)
    {
      v9 = 0;
      v11 = a1[1];
      v10 = a1[2];
      do
      {
        if (v11 == v9)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(v10 + 4 * v9) = *(v6 + 4 * v9);
        ++v9;
      }

      while (v8 != v9);
    }

    if (v2 && v5)
    {
      v12 = *(*v5 + 40);

      v12(v5, v6);
    }
  }
}

BOOL RETimelineDefinitionSetBlendShapeWeightsToWeightCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 50)
  {
    v5 = v3;
    re::DynamicArray<re::StringID>::resize(v3 + 232, a2);
    if (a2)
    {
      if ((*(v5 + 120) & 1) == 0)
      {
        v8[0] = 1;
        v10 = 0;
        v11 = 0;
        v9 = 0;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 120, v8);
        if (v8[0] == 1 && v9 && v10)
        {
          (*(*v9 + 40))();
        }
      }
    }

    else
    {
      v8[0] = 0;
      re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 120, v8);
      if (v8[0] == 1 && v9 && v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'to' weight count for non-BlendShapeWeights from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 50;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsByWeightCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 50)
  {
    v5 = v3;
    re::DynamicArray<re::StringID>::resize(v3 + 272, a2);
    if (a2)
    {
      if ((*(v5 + 152) & 1) == 0)
      {
        v8[0] = 1;
        v10 = 0;
        v11 = 0;
        v9 = 0;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 152, v8);
        if (v8[0] == 1 && v9 && v10)
        {
          (*(*v9 + 40))();
        }
      }
    }

    else
    {
      v8[0] = 0;
      re::Optional<re::SkeletalPoseAssetData>::operator=(v5 + 152, v8);
      if (v8[0] == 1 && v9 && v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'by' weight count for non-BlendShapeWeights from-to-by animation.", v8, 2u);
    }
  }

  return v4 == 50;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsFromWeightNames(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = RETimelineDefinitionSetBlendShapeWeightsFromWeightCount(a1, a3);
  if (v6)
  {
    if (a3)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(a2 + 8 * v10);
        v14 = 0;
        v15 = &str_67;
        v12 = *(v8 + 26);
        if (v12 <= v10)
        {
          v16 = 0;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v17 = 136315906;
          v18 = "operator[]";
          v19 = 1024;
          v20 = 789;
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v7 = re::StringID::operator=((*(v8 + 28) + v9), &v14);
        if (v14)
        {
          if (v14)
          {
          }
        }

        ++v10;
        v9 += 16;
      }

      while (a3 != v10);
    }
  }

  return v6;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsToWeightNames(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = RETimelineDefinitionSetBlendShapeWeightsToWeightCount(a1, a3);
  if (v6)
  {
    if (a3)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(a2 + 8 * v10);
        v14 = 0;
        v15 = &str_67;
        v12 = *(v8 + 31);
        if (v12 <= v10)
        {
          v16 = 0;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v17 = 136315906;
          v18 = "operator[]";
          v19 = 1024;
          v20 = 789;
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v7 = re::StringID::operator=((*(v8 + 33) + v9), &v14);
        if (v14)
        {
          if (v14)
          {
          }
        }

        ++v10;
        v9 += 16;
      }

      while (a3 != v10);
    }
  }

  return v6;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsByWeightNames(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = RETimelineDefinitionSetBlendShapeWeightsByWeightCount(a1, a3);
  if (v6)
  {
    if (a3)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(a2 + 8 * v10);
        v14 = 0;
        v15 = &str_67;
        v12 = *(v8 + 36);
        if (v12 <= v10)
        {
          v16 = 0;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v17 = 136315906;
          v18 = "operator[]";
          v19 = 1024;
          v20 = 789;
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v7 = re::StringID::operator=((*(v8 + 38) + v9), &v14);
        if (v14)
        {
          if (v14)
          {
          }
        }

        ++v10;
        v9 += 16;
      }

      while (a3 != v10);
    }
  }

  return v6;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsFromWeightName(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v3 + 8) == 50)
  {
    if (*(v3 + 208) > a2)
    {
      return *(*(v3 + 224) + 16 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'from' weight name, invalid weight index: %zu.", &v7, 0xCu);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'from' weight name for non-BlendShapeWeights from-to-by animation.", &v7, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsToWeightName(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v3 + 8) == 50)
  {
    if (*(v3 + 248) > a2)
    {
      return *(*(v3 + 264) + 16 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'to' weight name, invalid weight index: %zu.", &v7, 0xCu);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'to' weight name for non-BlendShapeWeights from-to-by animation.", &v7, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsByWeightName(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v3 + 8) == 50)
  {
    if (*(v3 + 288) > a2)
    {
      return *(*(v3 + 304) + 16 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'by' weight name, invalid weight index: %zu.", &v7, 0xCu);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'by' weight name for non-BlendShapeWeights from-to-by animation.", &v7, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsFromWeightName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, const char *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'from' weight name for non-BlendShapeWeights from-to-by animation.", buf, 2u);
    }

    return 0;
  }

  v6 = v5;
  if (*(v5 + 26) <= a2)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'from' weight name, invalid weight index: %zu.", buf, 0xCu);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v12 = 0;
  v13 = &str_67;
  v7 = *(v6 + 26);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = re::StringID::operator=((*(v6 + 28) + 16 * a2), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  return 1;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsToWeightName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, const char *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'to' weight name for non-BlendShapeWeights from-to-by animation.", buf, 2u);
    }

    return 0;
  }

  v6 = v5;
  if (*(v5 + 31) <= a2)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'to' weight name, invalid weight index: %zu.", buf, 0xCu);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v12 = 0;
  v13 = &str_67;
  v7 = *(v6 + 31);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = re::StringID::operator=((*(v6 + 33) + 16 * a2), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  return 1;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsByWeightName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, const char *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'by' weight name for non-BlendShapeWeights from-to-by animation.", buf, 2u);
    }

    return 0;
  }

  v6 = v5;
  if (*(v5 + 36) <= a2)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'by' weight name, invalid weight index: %zu.", buf, 0xCu);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v12 = 0;
  v13 = &str_67;
  v7 = *(v6 + 36);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = re::StringID::operator=((*(v6 + 38) + 16 * a2), &v12);
  if (v12)
  {
    if (v12)
    {
    }
  }

  return 1;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsFromValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 50)
  {
    if (*(v1 + 88) == 1)
    {
      return *(v1 + 112);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'from' weight values for non-BlendShapeWeights from-to-by animation.", v4, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsToValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 50)
  {
    if (*(v1 + 120) == 1)
    {
      return *(v1 + 144);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'to' weight values for non-BlendShapeWeights from-to-by animation.", v4, 2u);
    }
  }

  return 0;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsByValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 50)
  {
    if (*(v1 + 152) == 1)
    {
      return *(v1 + 176);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get Blend Shape Weights 'by' weight values for non-BlendShapeWeights from-to-by animation.", v4, 2u);
    }
  }

  return 0;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsFromValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v6 = RETimelineDefinitionSetBlendShapeWeightsFromWeightCount(a1, a3);
  v7 = v6;
  if (a3 && v6)
  {
    v9 = 0;
    v10 = *(v8 + 13);
    do
    {
      if (v10 == v9)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v8 + 14) + 4 * v9) = *(a2 + 4 * v9);
      ++v9;
    }

    while (a3 != v9);
  }

  return v7;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsToValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v6 = RETimelineDefinitionSetBlendShapeWeightsToWeightCount(a1, a3);
  v7 = v6;
  if (a3 && v6)
  {
    v9 = 0;
    v10 = *(v8 + 17);
    do
    {
      if (v10 == v9)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v8 + 18) + 4 * v9) = *(a2 + 4 * v9);
      ++v9;
    }

    while (a3 != v9);
  }

  return v7;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsByValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, unint64_t a3)
{
  v6 = RETimelineDefinitionSetBlendShapeWeightsByWeightCount(a1, a3);
  v7 = v6;
  if (a3 && v6)
  {
    v9 = 0;
    v10 = *(v8 + 21);
    do
    {
      if (v10 == v9)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v8 + 22) + 4 * v9) = *(a2 + 4 * v9);
      ++v9;
    }

    while (a3 != v9);
  }

  return v7;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsFromValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v10) = 0;
    v8 = "Cannot set Blend Shape Weights 'from' weight value for non-BlendShapeWeights from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v5 + 88) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v10) = 0;
    v8 = "Cannot set Blend Shape Weights 'from' weight value for invalid 'from' value.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, &v10, 2u);
LABEL_12:

    return 0;
  }

  if (*(v5 + 13) > a2)
  {
    *(*(v5 + 14) + 4 * a2) = a3;
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = a2;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'from' weight value, invalid weight index: %zu.", &v10, 0xCu);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsToValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v10) = 0;
    v8 = "Cannot set Blend Shape Weights 'to' weight value for non-BlendShapeWeights from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v5 + 120) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v10) = 0;
    v8 = "Cannot set Blend Shape Weights 'to' weight value for invalid 'to' value.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, &v10, 2u);
LABEL_12:

    return 0;
  }

  if (*(v5 + 17) > a2)
  {
    *(*(v5 + 18) + 4 * a2) = a3;
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = a2;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'to' weight value, invalid weight index: %zu.", &v10, 0xCu);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsByValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v10) = 0;
    v8 = "Cannot set Blend Shape Weights 'by' weight value for non-BlendShapeWeights from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v5 + 152) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v10) = 0;
    v8 = "Cannot set Blend Shape Weights 'by' weight value for invalid 'by' value.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, &v10, 2u);
LABEL_12:

    return 0;
  }

  if (*(v5 + 21) > a2)
  {
    *(*(v5 + 22) + 4 * a2) = a3;
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = a2;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'by' weight value, invalid weight index: %zu.", &v10, 0xCu);
  }

  return 0;
}

float RETimelineDefinitionGetBlendShapeWeightsFromWeightValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(v3 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v8) = 0;
    v6 = "Cannot set Blend Shape Weights 'from' weight value for non-BlendShapeWeights from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v3 + 88) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v8) = 0;
    v6 = "Cannot set Blend Shape Weights 'from' weight value for invalid 'from' value.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 2u);
LABEL_12:

    return NAN;
  }

  if (*(v3 + 13) > a2)
  {
    return *(*(v3 + 14) + 4 * a2);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'from' weight value, invalid weight index: %zu.", &v8, 0xCu);
  }

  return NAN;
}

float RETimelineDefinitionGetBlendShapeWeightsToWeightValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(v3 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v8) = 0;
    v6 = "Cannot set Blend Shape Weights 'to' weight value for non-BlendShapeWeights from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v3 + 120) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v8) = 0;
    v6 = "Cannot set Blend Shape Weights 'to' weight value for invalid 'to' value.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 2u);
LABEL_12:

    return NAN;
  }

  if (*(v3 + 17) > a2)
  {
    return *(*(v3 + 18) + 4 * a2);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'to' weight value, invalid weight index: %zu.", &v8, 0xCu);
  }

  return NAN;
}

float RETimelineDefinitionGetBlendShapeWeightsByWeightValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(v3 + 2) != 50)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v8) = 0;
    v6 = "Cannot set Blend Shape Weights 'by' weight value for non-BlendShapeWeights from-to-by animation.";
    goto LABEL_20;
  }

  if ((*(v3 + 152) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v8) = 0;
    v6 = "Cannot set Blend Shape Weights 'by' weight value for invalid 'by' value.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 2u);
LABEL_12:

    return NAN;
  }

  if (*(v3 + 21) > a2)
  {
    return *(*(v3 + 22) + 4 * a2);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Cannot set Blend Shape Weights 'by' weight value, invalid weight index: %zu.", &v8, 0xCu);
  }

  return NAN;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledFloatAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 27);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC0368;
  v8[0] = &unk_1F5D2A280;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A280;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledDoubleAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 28);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC0418;
  v8[0] = &unk_1F5D2A300;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A300;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledFloat2Animation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 29);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC04C8;
  v8[0] = &unk_1F5D2A380;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A380;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledFloat3Animation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 30);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC0578;
  v8[0] = &unk_1F5D2A400;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A400;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledFloat4Animation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 31);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC0628;
  v8[0] = &unk_1F5D2A480;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A480;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledQuaternionAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 32);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC06D8;
  v8[0] = &unk_1F5D2A500;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A500;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledSRTAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 33);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC0788;
  v8[0] = &unk_1F5D2A580;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A580;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledSkeletalPoseAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 200, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 34);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC0838;
  *(v4 + 184) = 0;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 192) = 257;
  *(v4 + 194) = 1;
  v8[0] = &unk_1F5D2A600;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A600;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 168, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 59);
  *(v4 + 72) = 256;
  *(v4 + 76) = 1023969417;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *v4 = &unk_1F5CC08E8;
  *(v4 + 160) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  v8[0] = &unk_1F5D2A680;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2A680;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

float RETimelineDefinitionGetFrameInterval(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((v3 - 27) < 8 || v3 == 59)
  {
    return *(v1 + 76);
  }

  else
  {
    return NAN;
  }
}

uint64_t RETimelineDefinitionSetFrameInterval(_anonymous_namespace_::TimelineDefinition *a1, float a2)
{
  v4 = *(v3 + 2);
  if ((v4 - 27) >= 8 && v4 != 59)
  {
    return 0;
  }

  *(v3 + 19) = a2;
  return 1;
}

float RETimelineDefinitionGetStartTime(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  result = NAN;
  if (v3 > 31)
  {
    if (v3 <= 34 || v3 == 59)
    {
      return *(v1 + 80);
    }

    if (v3 == 38)
    {
      return *(v1 + 80);
    }
  }

  else if (v3 > 28 || v3 == 27 || v3 == 28)
  {
    return *(v1 + 80);
  }

  return result;
}

uint64_t RETimelineDefinitionSetStartTime(_anonymous_namespace_::TimelineDefinition *a1, float a2)
{
  result = 0;
  v5 = *(v3 + 2);
  if (v5 > 31)
  {
    if (v5 > 34 && v5 != 59)
    {
      if (v5 != 38)
      {
        return result;
      }

      *(v3 + 10) = a2;
      return 1;
    }

LABEL_10:
    *(v3 + 20) = a2;
    return 1;
  }

  if (v5 > 28 || v5 == 27 || v5 == 28)
  {
    goto LABEL_10;
  }

  return result;
}

float RETimelineDefinitionGetEndTime(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  result = NAN;
  if (v3 > 31)
  {
    if (v3 <= 34 || v3 == 59)
    {
      return *(v1 + 84);
    }

    if (v3 == 38)
    {
      return *(v1 + 88);
    }
  }

  else if (v3 > 28 || v3 == 27 || v3 == 28)
  {
    return *(v1 + 84);
  }

  return result;
}

uint64_t RETimelineDefinitionSetEndTime(_anonymous_namespace_::TimelineDefinition *a1, float a2)
{
  result = 0;
  v5 = *(v3 + 2);
  if (v5 > 31)
  {
    if (v5 > 34 && v5 != 59)
    {
      if (v5 != 38)
      {
        return result;
      }

      *(v3 + 11) = a2;
      return 1;
    }

LABEL_10:
    *(v3 + 21) = a2;
    return 1;
  }

  if (v5 > 28 || v5 == 27 || v5 == 28)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t RETimelineDefinitionGetInterpolationEnabled(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((v3 - 27) < 8 || v3 == 59)
  {
    v4 = *(v1 + 73);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t RETimelineDefinitionSetInterpolationEnabled(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if ((v4 - 27) >= 8 && v4 != 59)
  {
    return 0;
  }

  *(v3 + 73) = a2;
  return 1;
}

uint64_t RETimelineDefinitionGetValueCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((v3 - 27) < 8 || v3 == 59)
  {
    return *(v1 + 104);
  }

  else
  {
    return -1;
  }
}

uint64_t re::DynamicArray<re::SkeletalPoseAssetData>::operator[](uint64_t a1, unint64_t a2)
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

uint64_t RETimelineDefinitionSetValueCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  result = 0;
  v5 = *(v3 + 2);
  if (v5 <= 30)
  {
    if (v5 > 28)
    {
      if (v5 == 29)
      {
        re::DynamicArray<unsigned long>::resize(v3 + 88, a2);
      }

      else
      {
        re::DynamicArray<re::Vector3<float>>::resize(v3 + 88, a2);
      }
    }

    else if (v5 == 27)
    {
      re::DynamicArray<float>::resize(v3 + 88, a2);
    }

    else
    {
      if (v5 != 28)
      {
        return result;
      }

      re::DynamicArray<double>::resize(v3 + 88, a2);
    }
  }

  else if (v5 <= 32)
  {
    if (v5 == 31)
    {
      re::DynamicArray<re::Vector4<float>>::resize(v3 + 88, a2);
    }

    else
    {
      re::DynamicArray<re::Quaternion<float>>::resize(v3 + 88, a2);
    }
  }

  else
  {
    switch(v5)
    {
      case '!':
        re::DynamicArray<re::GenericSRT<float>>::resize(v3 + 11, a2);
        break;
      case '""':
        v8 = *(v3 + 13);
        re::DynamicArray<re::SkeletalPoseAssetData>::resize(v3 + 11, a2);
        if (v8 < a2)
        {
          v9 = 24 * v8;
          while (*(v3 + 13) > v8)
          {
            ++v8;
            v9 += 24;
            if (a2 == v8)
            {
              return 1;
            }
          }

LABEL_30:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        break;
      case ';':
        v6 = *(v3 + 13);
        re::DynamicArray<re::SkeletalPoseAssetData>::resize(v3 + 11, a2);
        if (v6 < a2)
        {
          v7 = 24 * v6;
          while (*(v3 + 13) > v6)
          {
            ++v6;
            v7 += 24;
            if (a2 == v6)
            {
              return 1;
            }
          }

          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_30;
        }

        break;
      default:
        return result;
    }
  }

  return 1;
}

uint64_t RETimelineDefinitionGetFloatValues(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 27)
  {
    return *(v1 + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t RETimelineDefinitionGetDoubleValues(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 28)
  {
    return *(v1 + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat2Values(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 29)
  {
    return *(v1 + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat3Values(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 30)
  {
    return *(v1 + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t RETimelineDefinitionGetFloat4Values(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 31)
  {
    return *(v1 + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t RETimelineDefinitionGetQuaternionValues(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 32)
  {
    return *(v1 + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t RETimelineDefinitionGetSRTValues(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 33)
  {
    return *(v1 + 120);
  }

  else
  {
    return 0;
  }
}

BOOL RETimelineDefinitionSetFloatValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 27)
  {
    v8[0] = a2;
    v8[1] = a3;
    re::DynamicArray<float>::operator=((v5 + 88), v8);
  }

  return v6 == 27;
}

BOOL RETimelineDefinitionSetDoubleValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 28)
  {
    v8[0] = a2;
    v8[1] = a3;
    re::DynamicArray<double>::operator=((v5 + 88), v8);
  }

  return v6 == 28;
}

BOOL RETimelineDefinitionSetFloat2Values(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 29)
  {
    v8[0] = a2;
    v8[1] = a3;
    re::DynamicArray<re::Vector2<float>>::operator=((v5 + 88), v8);
  }

  return v6 == 29;
}

BOOL RETimelineDefinitionSetFloat3Values(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 30)
  {
    v8[0] = a2;
    v8[1] = a3;
    re::DynamicArray<re::Vector3<float>>::operator=((v5 + 88), v8);
  }

  return v6 == 30;
}

BOOL RETimelineDefinitionSetFloat4Values(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 31)
  {
    v8[0] = a2;
    v8[1] = a3;
    re::DynamicArray<re::Vector4<float>>::operator=((v5 + 88), v8);
  }

  return v6 == 31;
}

BOOL RETimelineDefinitionSetQuaternionValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 32)
  {
    v8[0] = a2;
    v8[1] = a3;
    re::DynamicArray<re::Quaternion<float>>::operator=((v5 + 88), v8);
  }

  return v6 == 32;
}

BOOL RETimelineDefinitionSetSRTValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 33)
  {
    v8[0] = a2;
    v8[1] = a3;
    re::DynamicArray<re::GenericSRT<float>>::operator=((v5 + 88), v8);
  }

  return v6 == 33;
}

uint64_t RETimelineDefinitionSetFloatIndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, float a3)
{
  if (*(v5 + 2) != 27 || *(v5 + 13) <= a2)
  {
    return 0;
  }

  *(*(v5 + 15) + 4 * a2) = a3;
  return 1;
}

uint64_t RETimelineDefinitionSetDoubleIndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, double a3)
{
  if (*(v5 + 2) != 28 || *(v5 + 13) <= a2)
  {
    return 0;
  }

  *(*(v5 + 15) + 8 * a2) = a3;
  return 1;
}

uint64_t RETimelineDefinitionSetFloat2IndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, double a3)
{
  if (*(v5 + 2) != 29 || *(v5 + 13) <= a2)
  {
    return 0;
  }

  *(*(v5 + 15) + 8 * a2) = a3;
  return 1;
}

uint64_t RETimelineDefinitionSetFloat3IndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, __n128 a3)
{
  if (*(v4 + 2) != 30 || *(v4 + 13) <= a2)
  {
    return 0;
  }

  *(*(v4 + 15) + 16 * a2) = a3;
  return 1;
}

uint64_t RETimelineDefinitionSetFloat4IndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, __n128 a3)
{
  if (*(v4 + 2) != 31 || *(v4 + 13) <= a2)
  {
    return 0;
  }

  *(*(v4 + 15) + 16 * a2) = a3;
  return 1;
}

uint64_t RETimelineDefinitionSetQuaternionIndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, __n128 a3)
{
  if (*(v4 + 2) != 32 || *(v4 + 13) <= a2)
  {
    return 0;
  }

  *(*(v4 + 15) + 16 * a2) = a3;
  return 1;
}

uint64_t RETimelineDefinitionSetSRTIndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (*(v6 + 2) != 33 || *(v6 + 13) <= a2)
  {
    return 0;
  }

  v7 = (*(v6 + 15) + 48 * a2);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  return 1;
}

BOOL RETimelineDefinitionSetSkeleton(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 34)
  {
    v5 = v3;
    re::AssetAPIHelper::assetHandleCreate(a2, &v10);
    v6 = *(v5 + 8);
    *(v5 + 8) = v10;
    v10 = v6;
    v7 = *(v5 + 18);
    *(v5 + 18) = v11;
    v11 = v7;
    re::AssetHandle::~AssetHandle(&v10);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Cannot set skeleton for any animation type other than SampledSkeletalPoseAnimation.", &v10, 2u);
    }
  }

  return v4 == 34;
}

uint64_t RETimelineDefinitionGetSkeletalJointCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 34)
  {
    return *(v1 + 168);
  }

  else
  {
    return -1;
  }
}

BOOL RETimelineDefinitionSetSkeletalJointCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 34)
  {
    v5 = v3;
    re::DynamicArray<re::StringID>::resize(v3 + 152, a2);
    v6 = *(v5 + 13);
    if (v6)
    {
      v7 = *(v5 + 15);
      v8 = 24 * v6;
      do
      {
        v7 += 3;
        v8 -= 24;
      }

      while (v8);
    }
  }

  return v4 == 34;
}

uint64_t RETimelineDefinitionGetSkeletalJointName(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v3 + 8) == 34 && *(v3 + 168) > a2)
  {
    return *(*(v3 + 184) + 16 * a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t RETimelineDefinitionSetSkeletalJointName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, const char *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 34)
  {
    return 0;
  }

  v6 = v5;
  if (*(v5 + 21) <= a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = &str_67;
  v7 = *(v6 + 21);
  if (v7 <= a2)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = re::StringID::operator=((*(v6 + 23) + 16 * a2), &v10);
  if (v10)
  {
    if (v10)
    {
    }
  }

  return 1;
}

float32x4_t RETimelineDefinitionGetSkeletalPoseIndexJointValue(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v7.i64[0] = 0x3F0000003FLL;
  v7.i64[1] = 0x3F0000003FLL;
  result.i64[0] = vnegq_f32(v7).u64[0];
  if (*(v5 + 8) == 34)
  {
    result.i64[0] = vnegq_f32(v7).u64[0];
    if (*(v5 + 104) > a2)
    {
      v8 = *(v5 + 120) + 24 * a2;
      v9 = 0x3F0000003FLL;
      result.i64[1] = 0x3F0000003FLL;
      result.i64[0] = vnegq_f32(result).u64[0];
      if (*(v8 + 8) > a3)
      {
        return *(*(v8 + 16) + 48 * a3);
      }
    }
  }

  return result;
}

BOOL RETimelineDefinitionSetSkeletalPoses(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  LODWORD(v10) = *(v9 + 2);
  if (v10 == 34)
  {
    v11 = v9;
    re::DynamicArray<re::StringID>::resize(v9 + 152, a5);
    if (a5)
    {
      v13 = 0;
      v10 = 0;
      while (1)
      {
        v15 = *(a2 + 8 * v10);
        v27 = 0;
        v28 = &str_67;
        v16 = *(v11 + 21);
        if (v16 <= v10)
        {
          break;
        }

        v12 = re::StringID::operator=((*(v11 + 23) + v13), &v27);
        if (v27)
        {
          if (v27)
          {
          }
        }

        v10 = (v10 + 1);
        v13 += 16;
        if (a5 == v10)
        {
          goto LABEL_9;
        }
      }

      v29 = 0;
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      *buf = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 789;
      v34 = 2048;
      v35 = v10;
      v36 = 2048;
      v37 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_9:
      re::DynamicArray<re::SkeletalPoseAssetData>::resize(v11 + 11, a4);
      LODWORD(v10) = 34;
      if (!a4)
      {
        return v10 == 34;
      }

      v14 = 0;
      while (1)
      {
        a2 = *(v11 + 13);
        if (a2 <= v14)
        {
          break;
        }

        v17 = (*(v11 + 15) + 24 * v14);
        if (a5)
        {
          v18 = 0;
          v19 = 0;
          while (1)
          {
            v20 = v17[1];
            if (v20 <= v19)
            {
              break;
            }

            v21 = (*(a3 + 8 * v14) + v18);
            v22 = (v17[2] + v18);
            v23 = *v21;
            v24 = v21[2];
            v22[1] = v21[1];
            v22[2] = v24;
            *v22 = v23;
            v19 = (v19 + 1);
            v18 += 48;
            if (a5 == v19)
            {
              goto LABEL_16;
            }
          }

          v27 = 0;
          v42 = 0u;
          v40 = 0u;
          v41 = 0u;
          *buf = 0u;
          v39 = 0u;
          v25 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v30 = 136315906;
          v31 = "operator[]";
          v32 = 1024;
          v33 = 468;
          v34 = 2048;
          v35 = v19;
          v36 = 2048;
          v37 = v20;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_23;
        }

LABEL_16:
        v14 = (v14 + 1);
        if (v14 == a4)
        {
          return v10 == 34;
        }
      }
    }

    v27 = 0;
    v42 = 0u;
    v40 = 0u;
    v41 = 0u;
    *buf = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    v33 = 789;
    v34 = 2048;
    v35 = v14;
    v36 = 2048;
    v37 = a2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_26:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v25 = CoreRELog::log;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
LABEL_23:
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Cannot set skeletal poses for incompatible animation.", buf, 2u);
  }

  return v10 == 34;
}

BOOL RETimelineDefinitionSetSkeletalPosePoseCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 34)
  {
    re::DynamicArray<re::SkeletalPoseAssetData>::resize(v3 + 11, a2);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot set skeletal poses for incompatible animation.", v7, 2u);
    }
  }

  return v4 == 34;
}

uint64_t RETimelineDefinitionSetSkeletalPosesValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 34)
  {
    v8 = v7;
    if (*(v7 + 21) == a4)
    {
      re::DynamicArray<re::SkeletalPoseAssetData>::resize(v7 + 11, a3);
      if (!a3)
      {
        return 1;
      }

      v9 = 0;
      while (1)
      {
        if (*(v8 + 13) <= v9)
        {
          v24 = 0u;
          v25 = 0u;
          v23 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_23;
        }

        if (a4)
        {
          break;
        }

LABEL_10:
        if (++v9 == a3)
        {
          return 1;
        }
      }

      v10 = 0;
      v11 = 0;
      v12 = *(v8 + 15) + 24 * v9;
      while (*(v12 + 8) > v11)
      {
        v13 = (*(a2 + 8 * v9) + v10);
        v14 = (*(v12 + 16) + v10);
        v15 = *v13;
        v16 = v13[2];
        v14[1] = v13[1];
        v14[2] = v16;
        *v14 = v15;
        ++v11;
        v10 += 48;
        if (a4 == v11)
        {
          goto LABEL_10;
        }
      }

      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      memset(buf, 0, sizeof(buf));
      a4 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      a3 = CoreRELog::log;
      if (!os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    v21 = *(v8 + 21);
    *buf = 134218240;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    v18 = "Skeletal Pose cannot set joint values, joint count does not match: %zu != %zu";
    v19 = a3;
    v20 = 22;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
LABEL_23:
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    a3 = CoreRELog::log;
    if (!os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v18 = "Cannot set skeletal pose values for incompatible animation.";
    v19 = a3;
    v20 = 2;
  }

  _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_18:

  return 0;
}

uint64_t RETimelineDefinitionSetSkeletalPoseIndexValues(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 34)
  {
    v8 = v7;
    if (*(v7 + 21) != a4)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v16 = CoreRELog::log;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v20 = *(v8 + 21);
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v20;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = a4;
      v17 = "Skeletal Pose cannot set joint values, joint count does not match: %zu != %zu";
      v18 = v16;
      v19 = 22;
      goto LABEL_20;
    }

    if (*(v7 + 13) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v16 = CoreRELog::log;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = a2;
      v17 = "Skeletal Pose cannot set joint value for index %zu.";
      v18 = v16;
      v19 = 12;
      goto LABEL_20;
    }

    v9 = (*(v7 + 15) + 24 * a2);
    if (!a4)
    {
      return 1;
    }

    v10 = 0;
    v11 = 0;
    while (v9[1] > v11)
    {
      v12 = (v9[2] + v10);
      v13 = *(a3 + v10);
      v14 = *(a3 + v10 + 32);
      v12[1] = *(a3 + v10 + 16);
      v12[2] = v14;
      *v12 = v13;
      ++v11;
      v10 += 48;
      if (a4 == v11)
      {
        return 1;
      }
    }

    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else if (CoreRELog::onceToken == -1)
  {
    goto LABEL_10;
  }

  dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_10:
  v16 = CoreRELog::log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    v17 = "Cannot set skeletal pose index values for incompatible animation.";
    v18 = v16;
    v19 = 2;
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

LABEL_21:

  return 0;
}

uint64_t RETimelineDefinitionSetSkeletalPoseIndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(v8 + 2) != 34)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v13 = "Cannot set skeletal pose index value for incompatible animation.";
LABEL_14:
    v14 = v12;
    v15 = 2;
    goto LABEL_15;
  }

  if (*(v8 + 21) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v13 = "Skeletal Pose cannot set joint values, not enough joints.";
    goto LABEL_14;
  }

  if (*(v8 + 13) > a2)
  {
    v9 = *(v8 + 15) + 24 * a2;
    if (*(v9 + 8) > a3)
    {
      v10 = (*(v9 + 16) + 48 * a3);
      *v10 = a4;
      v10[1] = a5;
      v10[2] = a6;
      return 1;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_21:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v12 = CoreRELog::log;
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_18;
  }

  *buf = 134217984;
  *&buf[4] = a2;
  v13 = "Skeletal Pose cannot set joint value for index %zu.";
  v14 = v12;
  v15 = 12;
LABEL_15:
  _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_18:

  return 0;
}

uint64_t RETimelineDefinitionGetSkeletalPoseScaleChannelMask(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 34)
  {
    v2 = *(v1 + 192);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get skeletal pose scale channel mask for incompatible animation.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

BOOL RETimelineDefinitionSetSkeletalPoseScaleChannelMask(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if (v4 == 34)
  {
    *(v3 + 192) = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot set skeletal pose scale channel mask for incompatible animation.", v7, 2u);
    }
  }

  return v4 == 34;
}

uint64_t RETimelineDefinitionGetSkeletalPoseRotationChannelMask(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 34)
  {
    v2 = *(v1 + 193);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get skeletal pose rotation channel mask for incompatible animation.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

BOOL RETimelineDefinitionSetSkeletalPoseRotationChannelMask(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if (v4 == 34)
  {
    *(v3 + 193) = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot set skeletal pose rotation channel mask for incompatible animation.", v7, 2u);
    }
  }

  return v4 == 34;
}

uint64_t RETimelineDefinitionGetSkeletalPoseTranslationChannelMask(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 34)
  {
    v2 = *(v1 + 194);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get skeletal pose translation channel mask for incompatible animation.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

BOOL RETimelineDefinitionSetSkeletalPoseTranslationChannelMask(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if (v4 == 34)
  {
    *(v3 + 194) = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot set skeletal pose translation channel mask for incompatible animation.", v7, 2u);
    }
  }

  return v4 == 34;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsWeightsCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 59)
  {
    return *(v1 + 144);
  }

  else
  {
    return -1;
  }
}

BOOL RETimelineDefinitionSetBlendShapeWeightsWeightsCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 59)
  {
    v5 = v3;
    re::DynamicArray<re::StringID>::resize(v3 + 128, a2);
    v6 = *(v5 + 13);
    if (v6)
    {
      v7 = *(v5 + 15);
      v8 = 24 * v6;
      do
      {
        v7 += 3;
        v8 -= 24;
      }

      while (v8);
    }
  }

  return v4 == 59;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsWeightName(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v3 + 8) == 59 && *(v3 + 144) > a2)
  {
    return *(*(v3 + 160) + 16 * a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsWeightName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, const char *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 59)
  {
    return 0;
  }

  v6 = v5;
  if (*(v5 + 18) <= a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = &str_67;
  v7 = *(v6 + 18);
  if (v7 <= a2)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = re::StringID::operator=((*(v6 + 20) + 16 * a2), &v10);
  if (v10)
  {
    if (v10)
    {
    }
  }

  return 1;
}

float RETimelineDefinitionGetBlendShapeWeightsIndexWeightValue(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v5 + 8) == 59 && *(v5 + 104) > a2 && (v6 = *(v5 + 120) + 24 * a2, *(v6 + 8) > a3))
  {
    return *(*(v6 + 16) + 4 * a3);
  }

  else
  {
    return NAN;
  }
}

BOOL RETimelineDefinitionSetBlendShapeWeightsData(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  LODWORD(v10) = *(v9 + 2);
  if (v10 == 59)
  {
    v11 = v9;
    re::DynamicArray<re::StringID>::resize(v9 + 128, a5);
    if (a5)
    {
      v10 = 0;
      v13 = 0;
      while (1)
      {
        v15 = *(a2 + 8 * v13);
        v22 = 0;
        v23 = &str_67;
        v16 = *(v11 + 18);
        if (v16 <= v13)
        {
          break;
        }

        v12 = re::StringID::operator=((*(v11 + 20) + v10), &v22);
        if (v22)
        {
          if (v22)
          {
          }
        }

        v13 = (v13 + 1);
        v10 += 16;
        if (a5 == v13)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v37 = 0u;
      v35 = 0u;
      v36 = 0u;
      *buf = 0u;
      v34 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      v28 = 789;
      v29 = 2048;
      v30 = v13;
      v31 = 2048;
      v32 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_9:
      re::DynamicArray<re::SkeletalPoseAssetData>::resize(v11 + 11, a4);
      LODWORD(v10) = 59;
      if (!a4)
      {
        return v10 == 59;
      }

      v14 = 0;
      while (1)
      {
        a2 = *(v11 + 13);
        if (a2 <= v14)
        {
          break;
        }

        v17 = (*(v11 + 15) + 24 * v14);
        if (a5)
        {
          v18 = 0;
          v19 = v17[1];
          while (v19 != v18)
          {
            *(v17[2] + 4 * v18) = *(*(a3 + 8 * v14) + 4 * v18);
            if (a5 == ++v18)
            {
              goto LABEL_16;
            }
          }

          v22 = 0;
          v37 = 0u;
          v35 = 0u;
          v36 = 0u;
          *buf = 0u;
          v34 = 0u;
          v20 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v25 = 136315906;
          v26 = "operator[]";
          v27 = 1024;
          v28 = 468;
          v29 = 2048;
          v30 = v19;
          v31 = 2048;
          v32 = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_23;
        }

LABEL_16:
        v14 = (v14 + 1);
        if (v14 == a4)
        {
          return v10 == 59;
        }
      }
    }

    v22 = 0;
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 789;
    v29 = 2048;
    v30 = v14;
    v31 = 2048;
    v32 = a2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_26:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v20 = CoreRELog::log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
LABEL_23:
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Cannot set blend shape weights for incompatible animation.", buf, 2u);
  }

  return v10 == 59;
}

uint64_t RETimelineDefinitionGetBlendShapeWeightsSampleCount(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 59)
  {
    return *(v1 + 13);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get blend shape weights sample count for incompatible animation.", v4, 2u);
  }

  return 0;
}

BOOL RETimelineDefinitionSetBlendShapeWeightsSampleCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 59)
  {
    re::DynamicArray<re::SkeletalPoseAssetData>::resize(v3 + 11, a2);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Cannot set blend shape weights sample count for incompatible animation.", v7, 2u);
    }
  }

  return v4 == 59;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsSampleValues(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 59)
  {
    v8 = v7;
    if (*(v7 + 18) == a4)
    {
      re::DynamicArray<re::SkeletalPoseAssetData>::resize(v7 + 11, a3);
      if (!a3)
      {
        return 1;
      }

      v9 = 0;
      v10 = *(v8 + 13);
      while (1)
      {
        if (v9 == v10)
        {
          v21 = 0u;
          v22 = 0u;
          v20 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_23;
        }

        if (a4)
        {
          break;
        }

LABEL_10:
        if (++v9 == a3)
        {
          return 1;
        }
      }

      v11 = 0;
      v12 = *(v8 + 15) + 24 * v9;
      v13 = *(v12 + 8);
      while (v13 != v11)
      {
        *(*(v12 + 16) + 4 * v11) = *(*(a2 + 8 * v9) + 4 * v11);
        if (a4 == ++v11)
        {
          goto LABEL_10;
        }
      }

      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      memset(buf, 0, sizeof(buf));
      a4 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      a3 = CoreRELog::log;
      if (!os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    v18 = *(v8 + 18);
    *buf = 134218240;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    v15 = "Blend Shape Weights animation sample cannot set weight values, weight count does not match: %zu != %zu";
    v16 = a3;
    v17 = 22;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
LABEL_23:
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    a3 = CoreRELog::log;
    if (!os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v15 = "Cannot set blend shape weights sample values for incompatible animation.";
    v16 = a3;
    v17 = 2;
  }

  _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
LABEL_18:

  return 0;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsIndexValues(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 59)
  {
    v8 = v7;
    if (*(v7 + 18) != a4)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v13 = CoreRELog::log;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v17 = *(v8 + 18);
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v17;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = a4;
      v14 = "Blend Shape Weights cannot set weight values, weight count does not match: %zu != %zu";
      v15 = v13;
      v16 = 22;
      goto LABEL_20;
    }

    if (*(v7 + 13) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v13 = CoreRELog::log;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = a2;
      v14 = "Blend Shape Weights cannot set weight value for index %zu.";
      v15 = v13;
      v16 = 12;
      goto LABEL_20;
    }

    v9 = (*(v7 + 15) + 24 * a2);
    if (!a4)
    {
      return 1;
    }

    v10 = 0;
    v11 = v9[1];
    while (v11 != v10)
    {
      *(v9[2] + 4 * v10) = *(a3 + 4 * v10);
      if (a4 == ++v10)
      {
        return 1;
      }
    }

    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else if (CoreRELog::onceToken == -1)
  {
    goto LABEL_10;
  }

  dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
LABEL_10:
  v13 = CoreRELog::log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    v14 = "Cannot set blend shape weights index values for incompatible animation.";
    v15 = v13;
    v16 = 2;
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
  }

LABEL_21:

  return 0;
}

uint64_t RETimelineDefinitionSetBlendShapeWeightsIndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, unint64_t a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) != 59)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v11 = "Cannot set blend shape weights index value for incompatible animation.";
LABEL_14:
    v12 = v10;
    v13 = 2;
    goto LABEL_15;
  }

  if (*(v7 + 18) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v11 = "Blend Shape Weights cannot set weight value, not enough weights.";
    goto LABEL_14;
  }

  if (*(v7 + 13) > a2)
  {
    v8 = *(v7 + 15) + 24 * a2;
    if (*(v8 + 8) > a3)
    {
      *(*(v8 + 16) + 4 * a3) = a4;
      return 1;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *buf = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_21:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_18;
  }

  *buf = 134217984;
  *&buf[4] = a2;
  v11 = "Blend Shape Weights cannot set weight value for index %zu.";
  v12 = v10;
  v13 = 12;
LABEL_15:
  _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
LABEL_18:

  return 0;
}

float RETimelineDefinitionGetBlendShapeWeightsIndexValue(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 59)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v9 = "Cannot get blend shape weights index value for incompatible animation.";
LABEL_14:
    v10 = v8;
    v11 = 2;
    goto LABEL_15;
  }

  if (*(v5 + 18) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v9 = "Blend Shape Weights cannot get weight value, not enough weights.";
    goto LABEL_14;
  }

  if (*(v5 + 13) > a2)
  {
    v6 = *(v5 + 15) + 24 * a2;
    if (*(v6 + 8) > a3)
    {
      return *(*(v6 + 16) + 4 * a3);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *buf = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_21:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v8 = CoreRELog::log;
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_18;
  }

  *buf = 134217984;
  *&buf[4] = a2;
  v9 = "Blend Shape Weights cannot get weight value for index %zu.";
  v10 = v8;
  v11 = 12;
LABEL_15:
  _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
LABEL_18:

  return NAN;
}

void createClipAssetData(uint64_t *a1, uint64_t a2, AssetService *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  var0 = a3[6].var0;
  if (!var0)
  {
    var0 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(&a3[3]) + 8);
  }

  *a1 = 0;
  a1[4] = 0;
  v7 = *(var0 + 2);
  if (v7 == 48)
  {
    v7 = re::TimelineEventData::instancedTimelineType((var0 + 10));
  }

  switch(v7)
  {
    case 3:
    case 11:
    case 19:
    case 27:
    case 39:
    case 51:
      v18 = re::globalAllocators(v7);
      v19 = (*(*v18[2] + 32))(v18[2], 184, 8);
      v20 = re::TimelineAssetData::TimelineAssetData(v19, 3);
      *(v20 + 72) = 0;
      *(v20 + 120) = 0;
      *(v20 + 136) = 0;
      *(v20 + 144) = 0;
      *(v20 + 152) = 0;
      *(v20 + 160) = 0;
      *(v20 + 88) = 0;
      *(v20 + 96) = 0;
      *(v20 + 80) = 0;
      *(v20 + 104) = 0;
      *(v20 + 176) = 1065353216;
      *(v20 + 180) = 0;
      *v20 = &unk_1F5CBE790;
      v45[0] = &unk_1F5D2A700;
      v46 = v45;
      *&v47 = v20;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2A700;
      goto LABEL_15;
    case 4:
    case 12:
    case 20:
    case 28:
    case 40:
    case 52:
      v24 = re::globalAllocators(v7);
      v25 = (*(*v24[2] + 32))(v24[2], 184, 8);
      v26 = re::TimelineAssetData::TimelineAssetData(v25, 4);
      *(v26 + 72) = 0;
      *(v26 + 120) = 0;
      *(v26 + 136) = 0;
      *(v26 + 144) = 0;
      *(v26 + 152) = 0;
      *(v26 + 160) = 0;
      *(v26 + 88) = 0;
      *(v26 + 96) = 0;
      *(v26 + 80) = 0;
      *(v26 + 104) = 0;
      *(v26 + 176) = 1065353216;
      *(v26 + 180) = 0;
      *v26 = &unk_1F5CBE880;
      v45[0] = &unk_1F5D2A780;
      v46 = v45;
      *&v47 = v26;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2A780;
      goto LABEL_15;
    case 5:
    case 13:
    case 21:
    case 29:
    case 41:
    case 53:
      v21 = re::globalAllocators(v7);
      v22 = (*(*v21[2] + 32))(v21[2], 184, 8);
      v23 = re::TimelineAssetData::TimelineAssetData(v22, 5);
      *(v23 + 72) = 0;
      *(v23 + 120) = 0;
      *(v23 + 136) = 0;
      *(v23 + 144) = 0;
      *(v23 + 152) = 0;
      *(v23 + 160) = 0;
      *(v23 + 88) = 0;
      *(v23 + 96) = 0;
      *(v23 + 80) = 0;
      *(v23 + 104) = 0;
      *(v23 + 176) = 1065353216;
      *(v23 + 180) = 0;
      *v23 = &unk_1F5CBE988;
      v45[0] = &unk_1F5D2A800;
      v46 = v45;
      *&v47 = v23;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2A800;
      goto LABEL_15;
    case 6:
    case 14:
    case 22:
    case 30:
    case 42:
    case 54:
      v15 = re::globalAllocators(v7);
      v16 = (*(*v15[2] + 32))(v15[2], 184, 8);
      v17 = re::TimelineAssetData::TimelineAssetData(v16, 6);
      *(v17 + 72) = 0;
      *(v17 + 120) = 0;
      *(v17 + 136) = 0;
      *(v17 + 144) = 0;
      *(v17 + 152) = 0;
      *(v17 + 160) = 0;
      *(v17 + 88) = 0;
      *(v17 + 96) = 0;
      *(v17 + 80) = 0;
      *(v17 + 104) = 0;
      *(v17 + 176) = 1065353216;
      *(v17 + 180) = 0;
      *v17 = &unk_1F5CBEA90;
      v45[0] = &unk_1F5D2A880;
      v46 = v45;
      *&v47 = v17;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2A880;
      goto LABEL_15;
    case 7:
    case 15:
    case 23:
    case 31:
    case 43:
    case 55:
      v30 = re::globalAllocators(v7);
      v31 = (*(*v30[2] + 32))(v30[2], 184, 8);
      v32 = re::TimelineAssetData::TimelineAssetData(v31, 7);
      *(v32 + 72) = 0;
      *(v32 + 120) = 0;
      *(v32 + 136) = 0;
      *(v32 + 144) = 0;
      *(v32 + 152) = 0;
      *(v32 + 160) = 0;
      *(v32 + 88) = 0;
      *(v32 + 96) = 0;
      *(v32 + 80) = 0;
      *(v32 + 104) = 0;
      *(v32 + 176) = 1065353216;
      *(v32 + 180) = 0;
      *v32 = &unk_1F5CBEB98;
      v45[0] = &unk_1F5D2A900;
      v46 = v45;
      *&v47 = v32;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2A900;
      goto LABEL_15;
    case 8:
    case 16:
    case 24:
    case 32:
    case 44:
    case 57:
      v12 = re::globalAllocators(v7);
      v13 = (*(*v12[2] + 32))(v12[2], 184, 8);
      v14 = re::TimelineAssetData::TimelineAssetData(v13, 8);
      *(v14 + 72) = 0;
      *(v14 + 120) = 0;
      *(v14 + 136) = 0;
      *(v14 + 144) = 0;
      *(v14 + 152) = 0;
      *(v14 + 160) = 0;
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 80) = 0;
      *(v14 + 104) = 0;
      *(v14 + 176) = 1065353216;
      *(v14 + 180) = 0;
      *v14 = &unk_1F5CBECA0;
      v45[0] = &unk_1F5D2A980;
      v46 = v45;
      *&v47 = v14;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2A980;
      goto LABEL_15;
    case 9:
    case 17:
    case 25:
    case 33:
    case 37:
    case 45:
    case 56:
      v8 = re::globalAllocators(v7);
      v9 = (*(*v8[2] + 32))(v8[2], 184, 8);
      v10 = re::TimelineAssetData::TimelineAssetData(v9, 9);
      *(v10 + 72) = 0;
      *(v10 + 120) = 0;
      *(v10 + 136) = 0;
      *(v10 + 144) = 0;
      *(v10 + 152) = 0;
      *(v10 + 160) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 0;
      *(v10 + 80) = 0;
      *(v10 + 104) = 0;
      *(v10 + 176) = 1065353216;
      *(v10 + 180) = 0;
      *v10 = &unk_1F5CBEDA8;
      v45[0] = &unk_1F5D2AA00;
      v46 = v45;
      *&v47 = v10;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2AA00;
      goto LABEL_15;
    case 10:
    case 18:
    case 26:
    case 34:
    case 46:
    case 58:
      v27 = re::globalAllocators(v7);
      v28 = (*(*v27[2] + 32))(v27[2], 184, 8);
      v29 = re::TimelineAssetData::TimelineAssetData(v28, 10);
      *(v29 + 72) = 0;
      *(v29 + 120) = 0;
      *(v29 + 136) = 0;
      *(v29 + 144) = 0;
      *(v29 + 152) = 0;
      *(v29 + 160) = 0;
      *(v29 + 88) = 0;
      *(v29 + 96) = 0;
      *(v29 + 80) = 0;
      *(v29 + 104) = 0;
      *(v29 + 176) = 1065353216;
      *(v29 + 180) = 0;
      *v29 = &unk_1F5CBEEB0;
      v45[0] = &unk_1F5D2AA80;
      v46 = v45;
      *&v47 = v29;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2AA80;
      goto LABEL_15;
    case 50:
    case 59:
    case 60:
    case 61:
      v33 = re::globalAllocators(v7);
      v34 = (*(*v33[2] + 32))(v33[2], 184, 8);
      v35 = re::TimelineAssetData::TimelineAssetData(v34, 60);
      *(v35 + 72) = 0;
      *(v35 + 120) = 0;
      *(v35 + 136) = 0;
      *(v35 + 144) = 0;
      *(v35 + 152) = 0;
      *(v35 + 160) = 0;
      *(v35 + 88) = 0;
      *(v35 + 96) = 0;
      *(v35 + 80) = 0;
      *(v35 + 104) = 0;
      *(v35 + 176) = 1065353216;
      *(v35 + 180) = 0;
      *v35 = &unk_1F5CBEFB8;
      v45[0] = &unk_1F5D2AB00;
      v46 = v45;
      *&v47 = v35;
      v49 = &v47 + 8;
      v11 = &unk_1F5D2AB00;
LABEL_15:
      *(&v47 + 1) = v11;
      std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::operator=[abi:nn200100](a1, &v47);
      std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v47);
      std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v45);
      v36 = *a1;
      v37 = *(&v47 + 1);
      v38 = *(*a1 + 80);
      v36[10] = v47;
      v36[11] = v37;
      v47 = v38;
      v39 = v36[12];
      v36[12] = v48;
      break;
    default:
      v40 = re::globalAllocators(v7);
      v41 = (*(*v40[2] + 32))(v40[2], 176, 8);
      v45[0] = &unk_1F5D2AB80;
      v46 = v45;
      *&v47 = re::TimelineClipAssetData::TimelineClipAssetData(v41);
      v49 = &v47 + 8;
      *(&v47 + 1) = &unk_1F5D2AB80;
      std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::operator=[abi:nn200100](a1, &v47);
      std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v47);
      std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v45);
      v42 = *a1;
      v43 = *(&v47 + 1);
      v44 = *(*a1 + 72);
      v42[9] = v47;
      v42[10] = v43;
      v47 = v44;
      v39 = v42[11];
      v42[11] = v48;
      break;
  }

  v48 = v39;
  re::AssetHandle::~AssetHandle(&v47);
}

uint64_t *std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::TimelineAssetData *)>::operator()((a1 + 1), v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = a2[4];
  if (v7)
  {
    if (v7 == a2 + 1)
    {
      a1[4] = (a1 + 1);
      (*(*a2[4] + 24))(a2[4], a1 + 1);
    }

    else
    {
      a1[4] = v7;
      a2[4] = 0;
    }
  }

  else
  {
    a1[4] = 0;
  }

  return a1;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateTimelineClip(const char *a1, uint64_t a2, AssetService *a3)
{
  v7[5] = *MEMORY[0x1E69E9840];
  createClipAssetData(v7, a2, a3);
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](v7);
  v4 = v6;
  return v4;
}

uint64_t RETimelineDefinitionCreateClipSourceRef(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    *buf = 0;
    v11 = 0;
    v12 = 0;
    v6 = 80;
    if ((v3 - 3) >= 8 && v3 != 60)
    {
      if (v3 != 1)
      {
        goto LABEL_18;
      }

      v6 = 72;
    }

    re::AssetHandle::operator=(buf, (v1 + v6));
    if (v11)
    {
      v7 = atomic_load((v11 + 896));
      if (v7 == 2)
      {
        v5 = v9;
LABEL_19:
        re::AssetHandle::~AssetHandle(buf);
        return v5;
      }
    }

LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip source from timeline clips.", buf, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetClipSource(uint64_t *a1, uint64_t a2, AssetService *a3)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v6 = a1 + 6;
  v7 = a1[6];
  if (!v7)
  {
    v8 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    if (v8)
    {
      v7 = *(v8 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  var0 = a3[6].var0;
  if (!var0)
  {
    v10 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(&a3[3]);
    if (v10)
    {
      var0 = *(v10 + 8);
    }

    else
    {
      var0 = 0;
    }
  }

  v11 = *(v7 + 8);
  if (v11 > 6)
  {
    if (v11 <= 8)
    {
      if (v11 == 7)
      {
        v12 = *(var0 + 2) - 7;
      }

      else
      {
        v12 = *(var0 + 2) - 8;
      }

      goto LABEL_34;
    }

    switch(v11)
    {
      case 9:
        HIDWORD(v17) = *(var0 + 2) - 9;
        LODWORD(v17) = HIDWORD(v17);
        v16 = v17 >> 2;
        v18 = v16 > 9;
        v19 = 1 << v16;
        v20 = 725;
        goto LABEL_35;
      case 10:
        v12 = *(var0 + 2) - 10;
        goto LABEL_34;
      case 60:
        v13 = *(var0 + 2);
        v18 = v13 > 0x3D;
        v14 = (1 << v13) & 0x3804000000000000;
        if (!v18 && v14 != 0)
        {
LABEL_39:
          v25 = *(v7 + 8);
          v26 = 80;
          if ((v25 - 3) >= 8 && v25 != 60)
          {
            if (v25 != 1)
            {
              goto LABEL_41;
            }

            v26 = 72;
          }

          re::AssetHandle::operator=(v27 + v26, v31);
LABEL_41:
          re::AssetHandle::~AssetHandle(v31);
          return 1;
        }

LABEL_46:
        createClipAssetData(v31, a2, a3);
        std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::operator=[abi:nn200100](v6, v31);
        v29 = a1[3];
        if (v29)
        {

          a1[3] = 0;
        }

        a1[4] = 0;
        std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](v31);
        return 1;
    }
  }

  else
  {
    if (v11 > 3)
    {
      if (v11 == 4)
      {
        v12 = *(var0 + 2) - 4;
      }

      else if (v11 == 5)
      {
        v12 = *(var0 + 2) - 5;
      }

      else
      {
        v12 = *(var0 + 2) - 6;
      }

      goto LABEL_34;
    }

    if (v11 == 1)
    {
      goto LABEL_39;
    }

    if (v11 == 3)
    {
      v12 = *(var0 + 2) - 3;
LABEL_34:
      HIDWORD(v22) = v12;
      LODWORD(v22) = v12;
      v21 = v22 >> 2;
      v18 = v21 > 9;
      v19 = 1 << v21;
      v20 = 597;
LABEL_35:
      v23 = v19 & v20;
      if (!v18 && v23 != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_46;
    }
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v30 = CoreRELog::log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v31[0]) = 0;
    _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Can only set clip source of timeline clips.", v31, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionGetClipStart(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        v6 = *(v1 + 96);
        v7 = v1 + 104;
LABEL_20:
        if (v6)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    v6 = *(v1 + 104);
    v7 = v1 + 112;
    goto LABEL_20;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip start for timeline clips.", v8, 2u);
  }

  return 0;
}

unint64_t RETimelineDefinitionSetClipStart(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 > 10 && v4 != 60)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (v4 > 3)
    {
LABEL_15:
      if (a2)
      {
        v7 = *a2;
        if ((*(v3 + 104) & 1) == 0)
        {
          *(v3 + 104) = 1;
        }

        *(v3 + 14) = v7;
      }

      else if (*(v3 + 104))
      {
        *(v3 + 104) = 0;
      }

      return v5 & 1;
    }

    if (v4 != 1)
    {
      if (v4 != 3)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (a2)
    {
      v8 = *a2;
      if ((*(v3 + 96) & 1) == 0)
      {
        *(v3 + 96) = 1;
      }

      *(v3 + 13) = v8;
    }

    else if (*(v3 + 96))
    {
      *(v3 + 96) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip start for timeline clips.", v10, 2u);
    }
  }

  return v5 & 1;
}

uint64_t RETimelineDefinitionGetClipEnd(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        v6 = *(v1 + 112);
        v7 = v1 + 120;
LABEL_20:
        if (v6)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    v6 = *(v1 + 120);
    v7 = v1 + 128;
    goto LABEL_20;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip end for timeline clips.", v8, 2u);
  }

  return 0;
}

unint64_t RETimelineDefinitionSetClipEnd(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 > 10 && v4 != 60)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (v4 > 3)
    {
LABEL_15:
      if (a2)
      {
        v7 = *a2;
        if ((*(v3 + 120) & 1) == 0)
        {
          *(v3 + 120) = 1;
        }

        *(v3 + 16) = v7;
      }

      else if (*(v3 + 120))
      {
        *(v3 + 120) = 0;
      }

      return v5 & 1;
    }

    if (v4 != 1)
    {
      if (v4 != 3)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (a2)
    {
      v8 = *a2;
      if ((*(v3 + 112) & 1) == 0)
      {
        *(v3 + 112) = 1;
      }

      *(v3 + 15) = v8;
    }

    else if (*(v3 + 112))
    {
      *(v3 + 112) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip end for timeline clips.", v10, 2u);
    }
  }

  return v5 & 1;
}

double RETimelineDefinitionGetClipOffset(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0.0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        return *(v1 + 128);
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    return *(v1 + 136);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip offset for timeline clips.", v6, 2u);
  }

  return NAN;
}

unint64_t RETimelineDefinitionSetClipOffset(_anonymous_namespace_::TimelineDefinition *a1, double a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 <= 10 || v4 == 60)
      {
LABEL_15:
        *(v3 + 17) = a2;
      }
    }

    else
    {
      if (v4 > 3)
      {
        goto LABEL_15;
      }

      if (v4 == 1)
      {
        *(v3 + 16) = a2;
        return v5 & 1;
      }

      if (v4 == 3)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip offset for timeline clips.", v8, 2u);
    }
  }

  return v5 & 1;
}

double RETimelineDefinitionGetClipDelay(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0.0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        return *(v1 + 144);
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    return *(v1 + 152);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip delay for timeline clips.", v6, 2u);
  }

  return NAN;
}

unint64_t RETimelineDefinitionSetClipDelay(_anonymous_namespace_::TimelineDefinition *a1, double a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 <= 10 || v4 == 60)
      {
LABEL_15:
        *(v3 + 19) = a2;
      }
    }

    else
    {
      if (v4 > 3)
      {
        goto LABEL_15;
      }

      if (v4 == 1)
      {
        *(v3 + 18) = a2;
        return v5 & 1;
      }

      if (v4 == 3)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip delay for timeline clips.", v8, 2u);
    }
  }

  return v5 & 1;
}

uint64_t RETimelineDefinitionGetClipDuration(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        v6 = *(v1 + 152);
        v7 = v1 + 160;
LABEL_20:
        if (v6)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if (v3 != 3)
      {
        return result;
      }
    }

    v6 = *(v1 + 160);
    v7 = v1 + 168;
    goto LABEL_20;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip duration for timeline clips.", v8, 2u);
  }

  return 0;
}

unint64_t RETimelineDefinitionSetClipDuration(_anonymous_namespace_::TimelineDefinition *a1, uint64_t *a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 > 10 && v4 != 60)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (v4 > 3)
    {
LABEL_15:
      if (a2)
      {
        v7 = *a2;
        if ((*(v3 + 160) & 1) == 0)
        {
          *(v3 + 160) = 1;
        }

        *(v3 + 21) = v7;
      }

      else if (*(v3 + 160))
      {
        *(v3 + 160) = 0;
      }

      return v5 & 1;
    }

    if (v4 != 1)
    {
      if (v4 != 3)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (a2)
    {
      v8 = *a2;
      if ((*(v3 + 152) & 1) == 0)
      {
        *(v3 + 152) = 1;
      }

      *(v3 + 20) = v8;
    }

    else if (*(v3 + 152))
    {
      *(v3 + 152) = 0;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip duration for timeline clips.", v10, 2u);
    }
  }

  return v5 & 1;
}

float RETimelineDefinitionGetClipSpeed(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if ((0x10000000000007FAuLL >> v3))
  {
    result = 0.0;
    if (v3 > 6)
    {
      if (v3 > 10 && v3 != 60)
      {
        return result;
      }
    }

    else if (v3 <= 3)
    {
      if (v3 == 1)
      {
        result = *(v1 + 168);
        if ((*(v1 + 136) & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        if (v3 != 3)
        {
          return result;
        }

        result = *(v1 + 176);
        if (*(v1 + 144) != 1)
        {
          return result;
        }
      }

      return -result;
    }

    result = *(v1 + 176);
    if ((*(v1 + 144) & 1) == 0)
    {
      return result;
    }

    return -result;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip speed for timeline clips.", v6, 2u);
  }

  return NAN;
}

unint64_t RETimelineDefinitionSetClipSpeed(_anonymous_namespace_::TimelineDefinition *a1, float a2)
{
  v4 = *(v3 + 2);
  v5 = 0x10000000000007FAuLL >> v4;
  if ((0x10000000000007FAuLL >> v4))
  {
    if (v4 > 6)
    {
      if (v4 > 10 && v4 != 60)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    if (v4 > 3)
    {
LABEL_15:
      v7 = -a2;
      if (!*(v3 + 144))
      {
        v7 = a2;
      }

      *(v3 + 44) = v7;
      return v5 & 1;
    }

    if (v4 != 1)
    {
      if (v4 != 3)
      {
        return v5 & 1;
      }

      goto LABEL_15;
    }

    v9 = -a2;
    if (!*(v3 + 136))
    {
      v9 = a2;
    }

    *(v3 + 42) = v9;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip speed for timeline clips.", v10, 2u);
    }
  }

  return v5 & 1;
}

uint64_t RETimelineDefinitionGetClipLoopBehavior(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v2 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v3 = *(v1 + 8);
  if (((0x10000000000007FAuLL >> v3) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only get clip loop behavior for timeline clips.", v7, 2u);
    }

    return -1;
  }

  v5 = -1;
  if (v3 > 6)
  {
    if (v3 > 10 && v3 != 60)
    {
      return v5;
    }

    return *(v1 + 180);
  }

  if (v3 > 3)
  {
    return *(v1 + 180);
  }

  if (v3 == 1)
  {
    return *(v1 + 172);
  }

  if (v3 == 3)
  {
    return *(v1 + 180);
  }

  return v5;
}