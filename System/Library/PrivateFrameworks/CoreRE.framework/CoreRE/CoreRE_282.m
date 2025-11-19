unint64_t RETimelineDefinitionSetClipLoopBehavior(_anonymous_namespace_::TimelineDefinition *a1, char a2)
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
        *(v3 + 180) = a2;
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
        *(v3 + 172) = a2;
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
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set clip loop behavior for timeline clips.", v8, 2u);
    }
  }

  return v5 & 1;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateTimelineGroup(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 112, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 2);
  *v4 = &unk_1F5CBE6B8;
  *(v4 + 104) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = 0;
  v8[0] = &unk_1F5D2AC00;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2AC00;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

uint64_t RETimelineDefinitionGetChildrenTimelineCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 2)
  {
    return *(v1 + 88);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get children count for timeline groups.", v4, 2u);
  }

  return 0;
}

BOOL RETimelineDefinitionSetChildrenTimelineCount(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v4 = *(v3 + 2);
  if (v4 == 2)
  {
    re::DynamicArray<re::AssetHandle>::resize(v3 + 72, a2);
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
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Can only set children count for timeline groups.", v7, 2u);
    }
  }

  return v4 == 2;
}

uint64_t RETimelineDefinitionCreateChildTimelineRef(void *a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  if (!v3)
  {
    a1 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    v3 = a1[1];
  }

  if (*(v3 + 8) != 2)
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

    LOWORD(buf[0]) = 0;
    v12 = "Can only set children count for timeline groups.";
    goto LABEL_28;
  }

  if (*(v3 + 88) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(v3 + 88);
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = a2;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = v13;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Timeline group child index (%zu) does not exist, children count: %zu", buf, 0x16u);
    }

    return 0;
  }

  v4 = *(*(v3 + 104) + 24 * a2 + 8);
  if (!v4)
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

    LOWORD(buf[0]) = 0;
    v12 = "Timeline child is not valid.";
    goto LABEL_28;
  }

  v5 = atomic_load((v4 + 896));
  if (v5 != 2)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_25:
      v9 = CoreRELog::log;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        return 0;
      }

      LOWORD(buf[0]) = 0;
      v12 = "Timeline child is not loaded.";
LABEL_28:
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v12, buf, 2u);
      goto LABEL_12;
    }

LABEL_30:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_25;
  }

  if (*(v3 + 88) <= a2)
  {
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v6 = (*(v3 + 104) + 24 * a2);
  v7 = re::globalAllocators(a1);
  v8 = (*(*v7[2] + 32))(v7[2], 112, 8);
  re::AssetHandle::AssetHandle(buf, v6);
  re::AssetHandle::~AssetHandle(buf);
  return v8;
}

uint64_t RETimelineDefinitionSetChildTimeline(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, AssetService *a3, unint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) != 2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Can only set children count for timeline groups.", buf, 2u);
    }

    return 0;
  }

  v8 = v7;
  if (*(v7 + 11) > a4)
  {
    v9 = *(v8 + 11);
    if (v9 > a4)
    {
      v10 = (*(v8 + 13) + 24 * a4);
      v11 = v10[1];
      v10[1] = v19;
      v19 = v11;
      v12 = *v10;
      *v10 = 0;
      *v10 = v18;
      v18 = v12;
      v13 = v10[2];
      v10[2] = v20;
      v20 = v13;
      re::AssetHandle::~AssetHandle(&v18);
      return 1;
    }

    v21 = 0;
    memset(buf, 0, sizeof(buf));
    v8 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    v25 = 789;
    v26 = 2048;
    v27 = a4;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_16:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v16 = CoreRELog::log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *(v8 + 11);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a4;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v17;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Timeline group child index (%zu) does not exist, children count: %zu", buf, 0x16u);
  }

  return 0;
}

BOOL RETimelineDefinitionAddChildTimeline(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, AssetService *a3)
{
  v6 = *(v5 + 2);
  if (v6 == 2)
  {
    v7 = v5;
    re::DynamicArray<re::AssetHandle>::add(v7 + 9, v10);
    re::AssetHandle::~AssetHandle(v10);
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
      LOWORD(v10[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Can only add children for timeline groups.", v10, 2u);
    }
  }

  return v6 == 2;
}

uint64_t RETimelineDefinitionInsertChildTimeline(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, AssetService *a3, unint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) != 2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Can only insert children for timeline groups.", &v13, 2u);
    }

    return 0;
  }

  v8 = v7;
  if (*(v7 + 11) < a4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v8 + 11);
      v13 = 134218240;
      v14 = a4;
      v15 = 2048;
      v16 = v12;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Cannot insert child index (%zu), children count: %zu", &v13, 0x16u);
    }

    return 0;
  }

  re::DynamicArray<re::AssetHandle>::insert(v8 + 9, a4, &v13);
  re::AssetHandle::~AssetHandle(&v13);
  return 1;
}

uint64_t RETimelineDefinitionRemoveChildTimeline(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(v3 + 2) == 2)
  {
    v4 = v3;
    if (*(v3 + 11) > a2)
    {
      re::DynamicArray<re::AssetHandle>::removeStableAt(v3 + 72, a2);
      return 1;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(v4 + 11);
      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Timeline group child index (%zu) does not exist, children count: %zu", &v9, 0x16u);
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
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only remove children from timeline groups.", &v9, 2u);
    }
  }

  return 0;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateOrbitAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 160, 16);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 37);
  *(v4 + 72) = 0;
  *v4 = &unk_1F5CC0998;
  *(v4 + 76) = 1065353216;
  *(v4 + 80) = xmmword_1E3047680;
  *(v4 + 96) = 0x3F8000003F800000;
  *(v4 + 104) = 1065353216;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0x3F80000000000000;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 1;
  *(v4 + 148) = 1065353216;
  v8[0] = &unk_1F5D2AC80;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2AC80;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

double RETimelineDefinitionGetAxis(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (v1->i32[2] == 37)
  {
    v2 = v1[5];
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
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get axis for orbit animations.", v6, 2u);
    }

    v4 = 0x3F0000003FLL;
    v2.i64[1] = 0x3F0000003FLL;
    v2.i64[0] = vnegq_f32(v2).u64[0];
  }

  return *v2.i64;
}

BOOL RETimelineDefinitionSetAxis(_anonymous_namespace_::TimelineDefinition *a1, __n128 a2)
{
  v3 = v2->n128_u32[2];
  if (v3 == 37)
  {
    v2[5] = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Can only set axis for orbit animations.", buf, 2u);
    }
  }

  return v3 == 37;
}

double RETimelineDefinitionGetStartTransform(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (v1->i32[2] == 37)
  {
    v2 = v1[6];
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
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get start transform for orbit animations.", v6, 2u);
    }

    v4 = 0x3F0000003FLL;
    v2.i64[1] = 0x3F0000003FLL;
    v2.i64[0] = vnegq_f32(v2).u64[0];
  }

  return *v2.i64;
}

BOOL RETimelineDefinitionSetStartTransform(_anonymous_namespace_::TimelineDefinition *a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4->n128_u32[2];
  if (v5 == 37)
  {
    v4[6] = a2;
    v4[7] = a3;
    v4[8] = a4;
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
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Can only set start transform for orbit animations.", buf, 2u);
    }
  }

  return v5 == 37;
}

uint64_t RETimelineDefinitionGetSpinClockwise(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 37)
  {
    v2 = *(v1 + 144);
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
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get spin clockwise state for orbit animations.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

BOOL RETimelineDefinitionSetSpinClockwise(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if (v4 == 37)
  {
    *(v3 + 144) = a2;
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
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Can only set spin clockwise state for orbit animations.", v7, 2u);
    }
  }

  return v4 == 37;
}

uint64_t RETimelineDefinitionGetOrientToPath(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 37)
  {
    v2 = *(v1 + 145);
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
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get orient to path for orbit animations.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

BOOL RETimelineDefinitionSetOrientToPath(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  v4 = *(v3 + 2);
  if (v4 == 37)
  {
    *(v3 + 145) = a2;
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
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Can only set orient to path for orbit animations.", v7, 2u);
    }
  }

  return v4 == 37;
}

float RETimelineDefinitionGetRotationCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 37)
  {
    return *(v1 + 148);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Can only get rotation count for orbit animations.", v4, 2u);
  }

  return NAN;
}

BOOL RETimelineDefinitionSetRotationCount(_anonymous_namespace_::TimelineDefinition *a1, float a2)
{
  v4 = *(v3 + 2);
  if (v4 == 37)
  {
    *(v3 + 37) = a2;
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
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Can only set rotation count for orbit animations.", v7, 2u);
    }
  }

  return v4 == 37;
}

uint64_t RETimelineDefinitionCreateFloatBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 39);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0A60;
  v11[0] = &unk_1F5D2AD00;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2AD00;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2AD80;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateDoubleBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 40);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0B10;
  v11[0] = &unk_1F5D2ADC8;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2ADC8;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2AE48;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateFloat2BlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 41);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0BC0;
  v11[0] = &unk_1F5D2AE90;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2AE90;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2AF10;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateFloat3BlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 42);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0C70;
  v11[0] = &unk_1F5D2AF58;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2AF58;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2AFD8;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateFloat4BlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 43);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0D20;
  v11[0] = &unk_1F5D2B020;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2B020;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2B0A0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateQuaternionBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 44);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0DD0;
  v11[0] = &unk_1F5D2B0E8;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2B0E8;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2B168;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateSRTBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 45);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0E80;
  v11[0] = &unk_1F5D2B1B0;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2B1B0;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2B230;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionCreateSkeletalPoseBlendTree(re *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 46);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  *v4 = &unk_1F5CC0F30;
  v11[0] = &unk_1F5D2B278;
  v11[3] = v11;
  v12 = v4;
  v13[3] = v13;
  v13[0] = &unk_1F5D2B278;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 608, 8);
  *v7 = &unk_1F5D2B2F8;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0x7FFFFFFFLL;
  v8 = re::StringID::invalid((v7 + 208));
  *(v6 + 248) = 0;
  *(v6 + 240) = 0;
  *(v6 + 224) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 484) = 0x7FFFFFFFLL;
  *(v6 + 496) = 0;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0;
  *(v6 + 556) = 0x7FFFFFFFLL;
  *(v6 + 600) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 568) = 0u;
  *(v6 + 504) = v9;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v12);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v11);
  return v6;
}

uint64_t RETimelineDefinitionBlendTreeAddRigNode(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, const char *a4, float a5)
{
  v12 = -1;
  if (v10 > 42)
  {
    if (v10 <= 45 || v10 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v10 > 40 || v10 == 39 || v10 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddRigNode(a1, a2, a3, a4, &v12, a5);
  }

  return v12;
}

void TimelineDefinitionForBlendTree<float>::doAddRigNode(_anonymous_namespace_ *a1, const char *a2, const char *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  *&v17.var0 = 0;
  v17.var1 = &str_67;
  *&v16.var0 = 0;
  v16.var1 = &str_67;
  *&v15.var0 = 0;
  if (a4)
  {
    v15.var1 = &str_67;
  }

  else
  {
    v15.var1 = "";
  }

  v14 = re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v17, &v16, &v15, a6);
  *a5 = v14;
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }

  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddBlend(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, float a4)
{
  v10 = -1;
  if (v8 > 42)
  {
    if (v8 <= 45 || v8 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v8 > 40 || v8 == 39 || v8 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddBlendNode(a1, a2, a3, &v10, a4);
  }

  return v10;
}

void TimelineDefinitionForBlendTree<float>::doAddBlendNode(_anonymous_namespace_ *a1, const char *a2, const char *a3, _anonymous_namespace_ **a4, float a5)
{
  *&v13.var0 = 0;
  v13.var1 = &str_67;
  *&v12.var0 = 0;
  if (a3)
  {
    v12.var1 = &str_67;
  }

  else
  {
    v12.var1 = "";
  }

  *&v14.var0 = 128540770;
  v14.var1 = "Blend";
  v11 = re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v14, &v13, &v12, a5);
  *a4 = v11;
  if (*&v12.var0)
  {
    if (*&v12.var0)
    {
    }
  }

  if (*&v13.var0)
  {
    if (*&v13.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddAdditiveBlend(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, float a4)
{
  v10 = -1;
  if (v8 > 42)
  {
    if (v8 <= 45 || v8 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v8 > 40 || v8 == 39 || v8 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddAdditiveBlendNode(a1, a2, a3, &v10, a4);
  }

  return v10;
}

void TimelineDefinitionForBlendTree<float>::doAddAdditiveBlendNode(_anonymous_namespace_ *a1, const char *a2, const char *a3, _anonymous_namespace_ **a4, float a5)
{
  *&v13.var0 = 0;
  v13.var1 = &str_67;
  *&v12.var0 = 0;
  if (a3)
  {
    v12.var1 = &str_67;
  }

  else
  {
    v12.var1 = "";
  }

  *&v14.var0 = 0xF17087402FF81E3ALL;
  v14.var1 = "BlendAdditive";
  v11 = re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v14, &v13, &v12, a5);
  *a4 = v11;
  if (*&v12.var0)
  {
    if (*&v12.var0)
    {
    }
  }

  if (*&v13.var0)
  {
    if (*&v13.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddTimelineSource(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, const char *a3, AssetService *a4, const char *a5, float a6)
{
  v10 = -1;
  v22 = -1;
  if (v11 > 42)
  {
    if (v11 <= 44)
    {
      if (v11 == 43)
      {
        v12 = v17;
        re::AssetHandle::AssetHandle(v17, v23);
        TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(a1, a3, v17, a5, &v22, a6);
      }

      else
      {
        v12 = v16;
        re::AssetHandle::AssetHandle(v16, v23);
        TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(a1, a3, v16, a5, &v22, a6);
      }

      goto LABEL_18;
    }

    if (v11 == 45)
    {
      v12 = v15;
      re::AssetHandle::AssetHandle(v15, v23);
      TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(a1, a3, v15, a5, &v22, a6);
      goto LABEL_18;
    }

    if (v11 == 46)
    {
      v12 = v14;
      re::AssetHandle::AssetHandle(v14, v23);
      TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(a1, a3, v14, a5, &v22, a6);
      goto LABEL_18;
    }
  }

  else
  {
    if (v11 > 40)
    {
      if (v11 == 41)
      {
        v12 = v19;
        re::AssetHandle::AssetHandle(v19, v23);
        TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(a1, a3, v19, a5, &v22, a6);
      }

      else
      {
        v12 = v18;
        re::AssetHandle::AssetHandle(v18, v23);
        TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(a1, a3, v18, a5, &v22, a6);
      }

      goto LABEL_18;
    }

    if (v11 == 39)
    {
      v12 = v21;
      re::AssetHandle::AssetHandle(v21, v23);
      TimelineDefinitionForBlendTree<float>::doAddTimeline(a1, a3, v21, a5, &v22, a6);
      goto LABEL_18;
    }

    if (v11 == 40)
    {
      v12 = v20;
      re::AssetHandle::AssetHandle(v20, v23);
      TimelineDefinitionForBlendTree<double>::doAddTimeline(a1, a3, v20, a5, &v22, a6);
LABEL_18:
      re::AssetHandle::~AssetHandle(v12);
      v10 = v22;
    }
  }

  re::AssetHandle::~AssetHandle(v23);
  return v10;
}

void TimelineDefinitionForBlendTree<float>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<float>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 3;
  LODWORD(v17) = v14 - 3;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<double>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<double>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 4;
  LODWORD(v17) = v14 - 4;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 5;
  LODWORD(v17) = v14 - 5;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 6;
  LODWORD(v17) = v14 - 6;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 7;
  LODWORD(v17) = v14 - 7;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add empty timeline to blend tree.";
    goto LABEL_30;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 == 2)
  {
    if (*(v13 + 88) == 1)
    {
      re::AssetHandle::AssetHandle(v28, *(v13 + 104));
      TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(a1, a2, v28, a4, a5, a6);
      re::AssetHandle::~AssetHandle(v28);
    }

    return;
  }

  HIDWORD(v17) = v14 - 8;
  LODWORD(v17) = v14 - 8;
  v16 = v17 >> 2;
  v18 = v16 > 9;
  v19 = (1 << v16) & 0x255;
  if (v18 || v19 == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *&buf.var0 = 0;
    v24 = "Cannot add incompatible timeline type to blend tree.";
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v24, &buf, 2u);
LABEL_9:

    return;
  }

  *&buf.var0 = 0;
  buf.var1 = &str_67;
  *&v26.var0 = 0;
  if (a4)
  {
    v26.var1 = &str_67;
  }

  else
  {
    v26.var1 = "";
  }

  *&v25.var0 = 0;
  v25.var1 = "";
  v22 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v26, &v25, a6);
  *a5 = v22;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  if (*&buf.var0)
  {
    if (*&buf.var0)
    {
    }
  }

  re::DynamicArray<re::AssetHandle>::add((v23 + 248), a3);
}

void TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *&buf.var0 = 0;
    v19 = "Cannot add empty timeline to blend tree.";
    goto LABEL_28;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 > 0x2D)
  {
    goto LABEL_23;
  }

  if (((1 << v14) & 0x201202020200) != 0)
  {
    *&buf.var0 = 0;
    buf.var1 = &str_67;
    *&v21.var0 = 0;
    if (a4)
    {
      v21.var1 = &str_67;
    }

    else
    {
      v21.var1 = "";
    }

    *&v20.var0 = 0;
    v20.var1 = "";
    v17 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v21, &v20, a6);
    *a5 = v17;
    if (*&v21.var0)
    {
      if (*&v21.var0)
      {
      }
    }

    if (*&buf.var0)
    {
      if (*&buf.var0)
      {
      }
    }

    re::DynamicArray<re::AssetHandle>::add((v18 + 248), a3);
    return;
  }

  if (v14 != 2)
  {
LABEL_23:
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *&buf.var0 = 0;
    v19 = "Cannot add incompatible timeline type to blend tree.";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v19, &buf, 2u);
LABEL_10:

    return;
  }

  if (*(v13 + 88) == 1)
  {
    re::AssetHandle::AssetHandle(v23, *(v13 + 104));
    TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(a1, a2, v23, a4, a5, a6);
    re::AssetHandle::~AssetHandle(v23);
  }
}

void TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, re::TimelineAsset *a3, const char *a4, _anonymous_namespace_ **a5, float a6)
{
  if (!*(a3 + 1))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *&buf.var0 = 0;
    v19 = "Cannot add empty timeline to blend tree.";
    goto LABEL_28;
  }

  v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v12)
  {
    return;
  }

  v13 = *(v12 + 1);
  v14 = *(v13 + 8);
  if (v14 > 0x2E)
  {
    goto LABEL_23;
  }

  if (((1 << v14) & 0x400C04040400) != 0)
  {
    *&buf.var0 = 0;
    buf.var1 = &str_67;
    *&v21.var0 = 0;
    if (a4)
    {
      v21.var1 = &str_67;
    }

    else
    {
      v21.var1 = "";
    }

    *&v20.var0 = 0;
    v20.var1 = "";
    v17 = re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, &buf, &v21, &v20, a6);
    *a5 = v17;
    if (*&v21.var0)
    {
      if (*&v21.var0)
      {
      }
    }

    if (*&buf.var0)
    {
      if (*&buf.var0)
      {
      }
    }

    re::DynamicArray<re::AssetHandle>::add((v18 + 248), a3);
    return;
  }

  if (v14 != 2)
  {
LABEL_23:
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v16 = CoreRELog::log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *&buf.var0 = 0;
    v19 = "Cannot add incompatible timeline type to blend tree.";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v19, &buf, 2u);
LABEL_10:

    return;
  }

  if (*(v13 + 88) == 1)
  {
    re::AssetHandle::AssetHandle(v23, *(v13 + 104));
    TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(a1, a2, v23, a4, a5, a6);
    re::AssetHandle::~AssetHandle(v23);
  }
}

void RETimelineDefinitionBlendTreeAddTimeline(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, uint64_t a3, const char *a4, float a5)
{
  if (v10 > 42)
  {
    if (v10 > 44)
    {
      if (v10 == 45)
      {
        v11 = v13;
        re::AssetAPIHelper::assetHandleCreate(a3, v13);
        TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(a1, a2, v13, a4, &v20, a5);
      }

      else
      {
        if (v10 != 46)
        {
          return;
        }

        v11 = v12;
        re::AssetAPIHelper::assetHandleCreate(a3, v12);
        TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(a1, a2, v12, a4, &v20, a5);
      }
    }

    else if (v10 == 43)
    {
      v11 = v15;
      re::AssetAPIHelper::assetHandleCreate(a3, v15);
      TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(a1, a2, v15, a4, &v20, a5);
    }

    else
    {
      v11 = v14;
      re::AssetAPIHelper::assetHandleCreate(a3, v14);
      TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(a1, a2, v14, a4, &v20, a5);
    }
  }

  else if (v10 > 40)
  {
    if (v10 == 41)
    {
      v11 = v17;
      re::AssetAPIHelper::assetHandleCreate(a3, v17);
      TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(a1, a2, v17, a4, &v20, a5);
    }

    else
    {
      v11 = v16;
      re::AssetAPIHelper::assetHandleCreate(a3, v16);
      TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(a1, a2, v16, a4, &v20, a5);
    }
  }

  else if (v10 == 39)
  {
    v11 = v19;
    re::AssetAPIHelper::assetHandleCreate(a3, v19);
    TimelineDefinitionForBlendTree<float>::doAddTimeline(a1, a2, v19, a4, &v20, a5);
  }

  else
  {
    if (v10 != 40)
    {
      return;
    }

    v11 = v18;
    re::AssetAPIHelper::assetHandleCreate(a3, v18);
    TimelineDefinitionForBlendTree<double>::doAddTimeline(a1, a2, v18, a4, &v20, a5);
  }

  re::AssetHandle::~AssetHandle(v11);
}

uint64_t RETimelineDefinitionBlendTreeAddInput(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, const char *a4, const char *a5, float a6)
{
  v14 = -1;
  if (v12 > 42)
  {
    if (v12 <= 45 || v12 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v12 > 40 || v12 == 39 || v12 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddInput(a1, a2, a3, a4, a5, &v14, a6);
  }

  return v14;
}

void TimelineDefinitionForBlendTree<float>::doAddInput(_anonymous_namespace_ *a1, const char *a2, const char *a3, const char *a4, const char *a5, void *a6, float a7)
{
  *&v21.var0 = 0;
  v21.var1 = &str_67;
  *&v20.var0 = 0;
  v20.var1 = &str_67;
  *&v19.var0 = 0;
  if (a4)
  {
    v19.var1 = &str_67;
  }

  else
  {
    v19.var1 = "";
  }

  *&v18.var0 = 0;
  if (a5)
  {
    v18.var1 = &str_67;
  }

  else
  {
    v18.var1 = "";
  }

  v16 = *(a1 + 63);
  re::StringID::StringID(&v22, &v21);
  v24 = 141610836;
  v25 = "Input";
  if (*&v20.var0 <= 1uLL && v20.var1 && !*v20.var1)
  {
    v26 = 0x19BD80BACLL;
    v27 = "unused";
  }

  else
  {
    re::StringID::StringID(&v26, &v20);
  }

  re::StringID::StringID(&v28, &v19);
  re::StringID::StringID(&v30, &v18);
  v32 = a7;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::add(v16, &v22);
  if (v30)
  {
    if (v30)
    {
    }
  }

  v30 = 0;
  v31 = &str_67;
  if (v28)
  {
    if (v28)
    {
    }
  }

  v28 = 0;
  v29 = &str_67;
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0;
  v27 = &str_67;
  if (v24)
  {
    if (v24)
    {
    }
  }

  v24 = 0;
  v25 = &str_67;
  if (v22)
  {
    if (v22)
    {
    }
  }

  *a6 = *(*(a1 + 63) + 16) - 1;
  if (*&v18.var0)
  {
    if (*&v18.var0)
    {
    }
  }

  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  if (*&v20.var0)
  {
    if (*&v20.var0)
    {
    }
  }

  if (*&v21.var0)
  {
    if (*&v21.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddConnection(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3)
{
  v8 = -1;
  if (v6 > 42)
  {
    if (v6 <= 45 || v6 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v6 > 40 || v6 == 39 || v6 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddConnection(a1, a2, a3, 0, 0, &v8);
  }

  return v8;
}

void TimelineDefinitionForBlendTree<float>::doAddConnection(_anonymous_namespace_ *a1, const char *a2, const char *a3, const char *a4, const char *a5, _anonymous_namespace_ **a6)
{
  *&v18.var0 = 0;
  v18.var1 = &str_67;
  *&v17.var0 = 0;
  v17.var1 = &str_67;
  *&v16.var0 = 0;
  if (a4)
  {
    v16.var1 = &str_67;
  }

  else
  {
    v16.var1 = "";
  }

  *&v15.var0 = 0;
  if (a5)
  {
    v15.var1 = &str_67;
  }

  else
  {
    v15.var1 = "";
  }

  v14 = re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, &v18, &v17, &v16, &v15);
  *a6 = v14;
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }

  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }

  if (*&v18.var0)
  {
    if (*&v18.var0)
    {
    }
  }
}

uint64_t RETimelineDefinitionBlendTreeAddBlendSpace(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, AssetService **a3, const char **a4, uint64_t a5, uint64_t a6)
{
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v119 = 0x7FFFFFFFLL;
  if (a5)
  {
    v6 = a5;
    do
    {
      v10 = *a4;
      *&v122.var0 = 0;
      v122.var1 = &str_67;
      *&v120.var0 = 0;
      v120.var1 = 0;
      v121 = 0;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v122.var0 >> 31) ^ (*&v122.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v122.var0 >> 31) ^ (*&v122.var0 >> 1))) >> 27));
      v13 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, &v122, v12 ^ (v12 >> 31), &v120);
      if (HIDWORD(v120.var1) == 0x7FFFFFFF)
      {
        v13 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::AssetHandle const&>(&v116, &v120, &v122, &v115);
      }

      if (*&v122.var0)
      {
        if (*&v122.var0)
        {
        }
      }

      re::AssetHandle::~AssetHandle(&v115);
      ++a3;
      ++a4;
      --v6;
    }

    while (v6);
  }

  v14 = 0;
  if (v15 > 42)
  {
    if (v15 > 44)
    {
      if (v15 == 45)
      {
        v100 = *(a6 + 24);
        if (!v100)
        {
          goto LABEL_83;
        }

        v101 = *(a1 + 63);
        *(v101 + 80) = v100;
        re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v101 + 88, (a6 + 32));
        re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v101 + 128, (a6 + 72));
        *&v115.var0 = 7012804;
        v115.var1 = "root";
        *&v122.var0 = 0;
        v122.var1 = "";
        *&v120.var0 = 128540770;
        v120.var1 = "Blend";
        re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
        v102 = *(a6 + 88);
        if (!v102)
        {
          goto LABEL_82;
        }

        v103 = *(a6 + 104);
        v104 = v102 << 6;
        do
        {
          *&v120.var0 = 0;
          v120.var1 = "";
          re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v103, &v120, v103, 0.0);
          *&v120.var0 = 7012804;
          v120.var1 = "root";
          *&v115.var0 = 0;
          v115.var1 = "";
          *&v122.var0 = 0;
          v122.var1 = "";
          re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v103, &v120, &v115, &v122);
          v103 += 4;
          v104 -= 64;
        }

        while (v104);
        v105 = *(a6 + 88);
        if (!v105)
        {
          goto LABEL_82;
        }

        v106 = *(a6 + 104);
        v107 = v105 << 6;
        v108 = v106;
        do
        {
          v110 = *v108;
          v108 += 8;
          v111 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v110 >> 31) ^ (v110 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v110 >> 31) ^ (v110 >> 1))) >> 27));
          re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v106, v111 ^ (v111 >> 31), &v120);
          re::DynamicArray<re::AssetHandle>::add((v109 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
          v14 = 1;
          v106 = v108;
          v107 -= 64;
        }

        while (v107);
      }

      else
      {
        if (v15 != 46)
        {
          goto LABEL_84;
        }

        v52 = *(a6 + 24);
        if (!v52)
        {
          goto LABEL_83;
        }

        v53 = *(a1 + 63);
        *(v53 + 80) = v52;
        re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v53 + 88, (a6 + 32));
        re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v53 + 128, (a6 + 72));
        *&v115.var0 = 7012804;
        v115.var1 = "root";
        *&v122.var0 = 0;
        v122.var1 = "";
        *&v120.var0 = 128540770;
        v120.var1 = "Blend";
        re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
        v54 = *(a6 + 88);
        if (!v54)
        {
          goto LABEL_82;
        }

        v55 = *(a6 + 104);
        v56 = v54 << 6;
        do
        {
          *&v120.var0 = 0;
          v120.var1 = "";
          re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v55, &v120, v55, 0.0);
          *&v120.var0 = 7012804;
          v120.var1 = "root";
          *&v115.var0 = 0;
          v115.var1 = "";
          *&v122.var0 = 0;
          v122.var1 = "";
          re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v55, &v120, &v115, &v122);
          v55 += 4;
          v56 -= 64;
        }

        while (v56);
        v57 = *(a6 + 88);
        if (!v57)
        {
          goto LABEL_82;
        }

        v58 = *(a6 + 104);
        v59 = v57 << 6;
        v60 = v58;
        do
        {
          v62 = *v60;
          v60 += 8;
          v63 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v62 >> 31) ^ (v62 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v62 >> 31) ^ (v62 >> 1))) >> 27));
          re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v58, v63 ^ (v63 >> 31), &v120);
          re::DynamicArray<re::AssetHandle>::add((v61 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
          v14 = 1;
          v58 = v60;
          v59 -= 64;
        }

        while (v59);
      }
    }

    else if (v15 == 43)
    {
      v76 = *(a6 + 24);
      if (!v76)
      {
        goto LABEL_83;
      }

      v77 = *(a1 + 63);
      *(v77 + 80) = v76;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v77 + 88, (a6 + 32));
      re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v77 + 128, (a6 + 72));
      *&v115.var0 = 7012804;
      v115.var1 = "root";
      *&v122.var0 = 0;
      v122.var1 = "";
      *&v120.var0 = 128540770;
      v120.var1 = "Blend";
      re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
      v78 = *(a6 + 88);
      if (!v78)
      {
        goto LABEL_82;
      }

      v79 = *(a6 + 104);
      v80 = v78 << 6;
      do
      {
        *&v120.var0 = 0;
        v120.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v79, &v120, v79, 0.0);
        *&v120.var0 = 7012804;
        v120.var1 = "root";
        *&v115.var0 = 0;
        v115.var1 = "";
        *&v122.var0 = 0;
        v122.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v79, &v120, &v115, &v122);
        v79 += 4;
        v80 -= 64;
      }

      while (v80);
      v81 = *(a6 + 88);
      if (!v81)
      {
        goto LABEL_82;
      }

      v82 = *(a6 + 104);
      v83 = v81 << 6;
      v84 = v82;
      do
      {
        v86 = *v84;
        v84 += 8;
        v87 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v86 >> 31) ^ (v86 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v86 >> 31) ^ (v86 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v82, v87 ^ (v87 >> 31), &v120);
        re::DynamicArray<re::AssetHandle>::add((v85 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
        v14 = 1;
        v82 = v84;
        v83 -= 64;
      }

      while (v83);
    }

    else
    {
      v28 = *(a6 + 24);
      if (!v28)
      {
        goto LABEL_83;
      }

      v29 = *(a1 + 63);
      *(v29 + 80) = v28;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v29 + 88, (a6 + 32));
      re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v29 + 128, (a6 + 72));
      *&v115.var0 = 7012804;
      v115.var1 = "root";
      *&v122.var0 = 0;
      v122.var1 = "";
      *&v120.var0 = 128540770;
      v120.var1 = "Blend";
      re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
      v30 = *(a6 + 88);
      if (!v30)
      {
        goto LABEL_82;
      }

      v31 = *(a6 + 104);
      v32 = v30 << 6;
      do
      {
        *&v120.var0 = 0;
        v120.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v31, &v120, v31, 0.0);
        *&v120.var0 = 7012804;
        v120.var1 = "root";
        *&v115.var0 = 0;
        v115.var1 = "";
        *&v122.var0 = 0;
        v122.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v31, &v120, &v115, &v122);
        v31 += 4;
        v32 -= 64;
      }

      while (v32);
      v33 = *(a6 + 88);
      if (!v33)
      {
        goto LABEL_82;
      }

      v34 = *(a6 + 104);
      v35 = v33 << 6;
      v36 = v34;
      do
      {
        v38 = *v36;
        v36 += 8;
        v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v38 >> 31) ^ (v38 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v38 >> 31) ^ (v38 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v34, v39 ^ (v39 >> 31), &v120);
        re::DynamicArray<re::AssetHandle>::add((v37 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
        v14 = 1;
        v34 = v36;
        v35 -= 64;
      }

      while (v35);
    }
  }

  else if (v15 > 40)
  {
    if (v15 == 41)
    {
      v88 = *(a6 + 24);
      if (!v88)
      {
        goto LABEL_83;
      }

      v89 = *(a1 + 63);
      *(v89 + 80) = v88;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v89 + 88, (a6 + 32));
      re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v89 + 128, (a6 + 72));
      *&v115.var0 = 7012804;
      v115.var1 = "root";
      *&v122.var0 = 0;
      v122.var1 = "";
      *&v120.var0 = 128540770;
      v120.var1 = "Blend";
      re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
      v90 = *(a6 + 88);
      if (!v90)
      {
        goto LABEL_82;
      }

      v91 = *(a6 + 104);
      v92 = v90 << 6;
      do
      {
        *&v120.var0 = 0;
        v120.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v91, &v120, v91, 0.0);
        *&v120.var0 = 7012804;
        v120.var1 = "root";
        *&v115.var0 = 0;
        v115.var1 = "";
        *&v122.var0 = 0;
        v122.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v91, &v120, &v115, &v122);
        v91 += 4;
        v92 -= 64;
      }

      while (v92);
      v93 = *(a6 + 88);
      if (!v93)
      {
        goto LABEL_82;
      }

      v94 = *(a6 + 104);
      v95 = v93 << 6;
      v96 = v94;
      do
      {
        v98 = *v96;
        v96 += 8;
        v99 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v98 >> 31) ^ (v98 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v98 >> 31) ^ (v98 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v94, v99 ^ (v99 >> 31), &v120);
        re::DynamicArray<re::AssetHandle>::add((v97 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
        v14 = 1;
        v94 = v96;
        v95 -= 64;
      }

      while (v95);
    }

    else
    {
      v40 = *(a6 + 24);
      if (!v40)
      {
        goto LABEL_83;
      }

      v41 = *(a1 + 63);
      *(v41 + 80) = v40;
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v41 + 88, (a6 + 32));
      re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v41 + 128, (a6 + 72));
      *&v115.var0 = 7012804;
      v115.var1 = "root";
      *&v122.var0 = 0;
      v122.var1 = "";
      *&v120.var0 = 128540770;
      v120.var1 = "Blend";
      re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
      v42 = *(a6 + 88);
      if (!v42)
      {
        goto LABEL_82;
      }

      v43 = *(a6 + 104);
      v44 = v42 << 6;
      do
      {
        *&v120.var0 = 0;
        v120.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v43, &v120, v43, 0.0);
        *&v120.var0 = 7012804;
        v120.var1 = "root";
        *&v115.var0 = 0;
        v115.var1 = "";
        *&v122.var0 = 0;
        v122.var1 = "";
        re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v43, &v120, &v115, &v122);
        v43 += 4;
        v44 -= 64;
      }

      while (v44);
      v45 = *(a6 + 88);
      if (!v45)
      {
        goto LABEL_82;
      }

      v46 = *(a6 + 104);
      v47 = v45 << 6;
      v48 = v46;
      do
      {
        v50 = *v48;
        v48 += 8;
        v51 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v50 >> 31) ^ (v50 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v50 >> 31) ^ (v50 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v46, v51 ^ (v51 >> 31), &v120);
        re::DynamicArray<re::AssetHandle>::add((v49 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
        v14 = 1;
        v46 = v48;
        v47 -= 64;
      }

      while (v47);
    }
  }

  else
  {
    if (v15 != 39)
    {
      if (v15 != 40)
      {
        goto LABEL_84;
      }

      v16 = *(a6 + 24);
      if (v16)
      {
        v17 = *(a1 + 63);
        *(v17 + 80) = v16;
        re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v17 + 88, (a6 + 32));
        re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v17 + 128, (a6 + 72));
        *&v115.var0 = 7012804;
        v115.var1 = "root";
        *&v122.var0 = 0;
        v122.var1 = "";
        *&v120.var0 = 128540770;
        v120.var1 = "Blend";
        re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
        v18 = *(a6 + 88);
        if (v18)
        {
          v19 = *(a6 + 104);
          v20 = v18 << 6;
          do
          {
            *&v120.var0 = 0;
            v120.var1 = "";
            re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v19, &v120, v19, 0.0);
            *&v120.var0 = 7012804;
            v120.var1 = "root";
            *&v115.var0 = 0;
            v115.var1 = "";
            *&v122.var0 = 0;
            v122.var1 = "";
            re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v19, &v120, &v115, &v122);
            v19 += 4;
            v20 -= 64;
          }

          while (v20);
          v21 = *(a6 + 88);
          if (v21)
          {
            v22 = *(a6 + 104);
            v23 = v21 << 6;
            v24 = v22;
            do
            {
              v26 = *v24;
              v24 += 8;
              v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v26 >> 31) ^ (v26 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v26 >> 31) ^ (v26 >> 1))) >> 27));
              re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v22, v27 ^ (v27 >> 31), &v120);
              re::DynamicArray<re::AssetHandle>::add((v25 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
              v14 = 1;
              v22 = v24;
              v23 -= 64;
            }

            while (v23);
            goto LABEL_84;
          }
        }

LABEL_82:
        v14 = 1;
        goto LABEL_84;
      }

LABEL_83:
      v14 = 0;
      goto LABEL_84;
    }

    v64 = *(a6 + 24);
    if (!v64)
    {
      goto LABEL_83;
    }

    v65 = *(a1 + 63);
    *(v65 + 80) = v64;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v65 + 88, (a6 + 32));
    re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v65 + 128, (a6 + 72));
    *&v115.var0 = 7012804;
    v115.var1 = "root";
    *&v122.var0 = 0;
    v122.var1 = "";
    *&v120.var0 = 128540770;
    v120.var1 = "Blend";
    re::AnimationBlendTreeBuilder<float>::addRigNode(a1 + 112, &v120, &v115, &v122, 1.0);
    v66 = *(a6 + 88);
    if (!v66)
    {
      goto LABEL_82;
    }

    v67 = *(a6 + 104);
    v68 = v66 << 6;
    do
    {
      *&v120.var0 = 0;
      v120.var1 = "";
      re::AnimationBlendTreeBuilder<float>::addClip(a1 + 112, v67, &v120, v67, 0.0);
      *&v120.var0 = 7012804;
      v120.var1 = "root";
      *&v115.var0 = 0;
      v115.var1 = "";
      *&v122.var0 = 0;
      v122.var1 = "";
      re::AnimationBlendTreeBuilder<float>::addConnection(a1 + 112, v67, &v120, &v115, &v122);
      v67 += 4;
      v68 -= 64;
    }

    while (v68);
    v69 = *(a6 + 88);
    if (!v69)
    {
      goto LABEL_82;
    }

    v70 = *(a6 + 104);
    v71 = v69 << 6;
    v72 = v70;
    do
    {
      v74 = *v72;
      v72 += 8;
      v75 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v74 >> 31) ^ (v74 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v74 >> 31) ^ (v74 >> 1))) >> 27));
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v116, v70, v75 ^ (v75 >> 31), &v120);
      re::DynamicArray<re::AssetHandle>::add((v73 + 248), (v117 + 48 * HIDWORD(v120.var1) + 24));
      v14 = 1;
      v70 = v72;
      v71 -= 64;
    }

    while (v71);
  }

LABEL_84:
  re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v116);
  return v14;
}

uint64_t RETimelineDefinitionBlendTreeAddRigConnection(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v12 = -1;
  if (v10 > 42)
  {
    if (v10 <= 45 || v10 == 46)
    {
      goto LABEL_10;
    }
  }

  else if (v10 > 40 || v10 == 39 || v10 == 40)
  {
LABEL_10:
    TimelineDefinitionForBlendTree<float>::doAddConnection(a1, a2, a4, a3, a5, &v12);
  }

  return v12;
}

uint64_t RETimelineDefinitionCreateBlendTreeNodeSourceRef(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 44)
    {
      if (v5 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          goto LABEL_29;
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v5 != 46)
      {
LABEL_31:
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v7 = CoreRELog::log;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", buf, 2u);
        }

        goto LABEL_69;
      }

      if (*(v3 + 96) <= a2)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    else if (v5 == 43)
    {
      if (*(v3 + 96) <= a2)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    else if (*(v3 + 96) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v8 = CoreRELog::log;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else if (v5 > 40)
  {
    if (v5 == 41)
    {
      if (*(v3 + 96) <= a2)
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    else if (*(v3 + 96) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v8 = CoreRELog::log;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else
  {
    if (v5 != 39)
    {
      if (v5 == 40)
      {
        if (*(v3 + 96) > a2)
        {
          goto LABEL_29;
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v8 = CoreRELog::log;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

LABEL_67:
        v9 = *(v3 + 96);
        *buf = 134218240;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = v9;
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", buf, 0x16u);
LABEL_68:

LABEL_69:
        v6 = 0;
        goto LABEL_70;
      }

      goto LABEL_31;
    }

    if (*(v3 + 96) <= a2)
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v8 = CoreRELog::log;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

LABEL_29:
  getBlendTreeClip<float>(buf, v3, a2);
  v6 = *&buf[8];
  v11 = *buf;
  v12 = *&buf[8];
  memset(buf, 0, sizeof(buf));
  v13 = *&buf[16];
  re::AssetHandle::~AssetHandle(buf);
  if (v6)
  {
    v6 = *buf;
  }

LABEL_70:
  re::AssetHandle::~AssetHandle(&v11);
  return v6;
}

unint64_t getBlendTreeClip<float>(re::AssetHandle *a1, void *a2, unint64_t a3)
{
  result = re::AnimationBlendTreeDefinition::findClipIndex((a2 + 10), a3);
  if (result >= a2[33])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }

  else
  {
    v6 = (a2[35] + 24 * result);

    return re::AssetHandle::AssetHandle(a1, v6);
  }

  return result;
}

uint64_t RETimelineDefinitionBlendTreeNodeCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v2 = *(v1 + 8);
  if (v2 > 42)
  {
    if (v2 > 45 && v2 != 46)
    {
      goto LABEL_13;
    }

    return *(v1 + 96);
  }

  if (v2 > 40 || v2 == 39 || v2 == 40)
  {
    return *(v1 + 96);
  }

LABEL_13:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", v5, 2u);
  }

  return -1;
}

BOOL RETimelineDefinitionBlendTreeNodeReplaceClip(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v41 = *MEMORY[0x1E69E9840];
  result = RETimelineDefinitionBlendTreeNodeIsClipSource(a1, a2);
  if (result)
  {
    v8 = v7;
    v9 = *(v7 + 2);
    if (v9 <= 42)
    {
      if (v9 > 40)
      {
        goto LABEL_15;
      }

      if (v9 == 39)
      {
LABEL_25:
        ClipIndex = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
        if (ClipIndex >= *(v8 + 33))
        {
          return 0;
        }

        v4 = ClipIndex;
        re::AssetAPIHelper::assetHandleCreate(a3, &v24);
        a3 = *(v8 + 33);
        if (a3 > v4)
        {
          goto LABEL_36;
        }

        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *buf = 0u;
        v8 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        v31 = 789;
        v32 = 2048;
        v33 = v4;
        v34 = 2048;
        v35 = a3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_28;
      }

      if (v9 != 40)
      {
LABEL_37:
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v23 = CoreRELog::log;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", buf, 2u);
        }

        return 0;
      }

      v10 = re::AnimationBlendTreeDefinition::findClipIndex((v7 + 80), v4);
      if (v10 >= *(v8 + 33))
      {
        return 0;
      }

      v4 = v10;
      re::AssetAPIHelper::assetHandleCreate(a3, &v24);
      a3 = *(v8 + 33);
      if (a3 > v4)
      {
        goto LABEL_36;
      }

      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      *buf = 0u;
      v8 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      v31 = 789;
      v32 = 2048;
      v33 = v4;
      v34 = 2048;
      v35 = a3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v9 > 44)
    {
LABEL_20:
      if (v9 == 45)
      {
        goto LABEL_34;
      }

      if (v9 == 46)
      {
        v13 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
        if (v13 >= *(v8 + 33))
        {
          return 0;
        }

        v4 = v13;
        re::AssetAPIHelper::assetHandleCreate(a3, &v24);
        a3 = *(v8 + 33);
        if (a3 > v4)
        {
          goto LABEL_36;
        }

        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *buf = 0u;
        v8 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        v31 = 789;
        v32 = 2048;
        v33 = v4;
        v34 = 2048;
        v35 = a3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_25;
      }

      goto LABEL_37;
    }

    if (v9 == 43)
    {
LABEL_28:
      v15 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
      if (v15 >= *(v8 + 33))
      {
        return 0;
      }

      v4 = v15;
      re::AssetAPIHelper::assetHandleCreate(a3, &v24);
      a3 = *(v8 + 33);
      if (a3 > v4)
      {
        goto LABEL_36;
      }

      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      *buf = 0u;
      v8 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      v31 = 789;
      v32 = 2048;
      v33 = v4;
      v34 = 2048;
      v35 = a3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_31;
    }

    if (v9 != 44)
    {
      goto LABEL_37;
    }

    v11 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
    if (v11 >= *(v8 + 33))
    {
      return 0;
    }

    v4 = v11;
    re::AssetAPIHelper::assetHandleCreate(a3, &v24);
    a3 = *(v8 + 33);
    if (a3 > v4)
    {
      goto LABEL_36;
    }

    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *buf = 0u;
    v8 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    v31 = 789;
    v32 = 2048;
    v33 = v4;
    v34 = 2048;
    v35 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_15:
    if (v9 == 41)
    {
LABEL_31:
      v16 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
      if (v16 < *(v8 + 33))
      {
        v4 = v16;
        re::AssetAPIHelper::assetHandleCreate(a3, &v24);
        a3 = *(v8 + 33);
        if (a3 <= v4)
        {
          v27 = 0;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          *buf = 0u;
          v8 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v28 = 136315906;
          v29 = "operator[]";
          v30 = 1024;
          v31 = 789;
          v32 = 2048;
          v33 = v4;
          v34 = 2048;
          v35 = a3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_34:
          v17 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
          if (v17 < *(v8 + 33))
          {
            v4 = v17;
            re::AssetAPIHelper::assetHandleCreate(a3, &v24);
            v18 = *(v8 + 33);
            if (v18 <= v4)
            {
              v27 = 0;
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              *buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v28 = 136315906;
              v29 = "operator[]";
              v30 = 1024;
              v31 = 789;
              v32 = 2048;
              v33 = v4;
              v34 = 2048;
              v35 = v18;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            goto LABEL_36;
          }

          return 0;
        }

LABEL_36:
        v19 = (*(v8 + 35) + 24 * v4);
        v20 = v19[1];
        v19[1] = v25;
        v25 = v20;
        v21 = *v19;
        *v19 = 0;
        *v19 = v24;
        v24 = v21;
        v22 = v19[2];
        v19[2] = v26;
        v26 = v22;
        re::AssetHandle::~AssetHandle(&v24);
        return 1;
      }

      return 0;
    }

    if (v9 != 42)
    {
      goto LABEL_37;
    }

    v12 = re::AnimationBlendTreeDefinition::findClipIndex((v8 + 80), v4);
    if (v12 >= *(v8 + 33))
    {
      return 0;
    }

    v4 = v12;
    re::AssetAPIHelper::assetHandleCreate(a3, &v24);
    a3 = *(v8 + 33);
    if (a3 > v4)
    {
      goto LABEL_36;
    }

    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *buf = 0u;
    v8 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    v31 = 789;
    v32 = 2048;
    v33 = v4;
    v34 = 2048;
    v35 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

BOOL RETimelineDefinitionBlendTreeNodeIsClipSource(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 45 && v5 != 46)
    {
      return 0;
    }
  }

  else if (v5 <= 40 && v5 != 39 && v5 != 40)
  {
    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    return 0;
  }

  v6 = (*(v3 + 112) + 88 * a2 + 16);

  return re::StringID::operator==(v6, re::AnimationBlendTreeNodeDescription::kClip);
}

uint64_t RETimelineDefinitionBlendTreeNodeGetName(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 8);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 8);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 96) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 112) + 88 * a2 + 8);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return 0;
    }

    if (*(v3 + 96) > a2)
    {
      return *(*(v3 + 112) + 88 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 96);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return 0;
}

BOOL RETimelineDefinitionBlendTreeNodeIsBlend(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 45 && v5 != 46)
    {
      return 0;
    }
  }

  else if (v5 <= 40 && v5 != 39 && v5 != 40)
  {
    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    return 0;
  }

  v6 = (*(v3 + 112) + 88 * a2);

  return re::AnimationBlendTreeNodeDescription::isBlend(v6);
}

BOOL RETimelineDefinitionBlendTreeNodeIsBlendAdditive(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 45 && v5 != 46)
    {
      return 0;
    }
  }

  else if (v5 <= 40 && v5 != 39 && v5 != 40)
  {
    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    return 0;
  }

  v6 = (*(v3 + 112) + 88 * a2 + 16);

  return re::StringID::operator==(v6, re::AnimationBlendTreeNodeDescription::kBlendAdditive);
}

BOOL RETimelineDefinitionBlendTreeNodeIsInput(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24));
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v3 + 8);
  if (v5 > 42)
  {
    if (v5 > 45 && v5 != 46)
    {
      return 0;
    }
  }

  else if (v5 <= 40 && v5 != 39 && v5 != 40)
  {
    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    return 0;
  }

  v6 = (*(v3 + 112) + 88 * a2 + 16);

  return re::StringID::operator==(v6, re::AnimationBlendTreeNodeDescription::kInput);
}

float RETimelineDefinitionBlendTreeNodeGetWeight(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 80);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 80);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 80);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 80);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 80);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 80);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 96) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 112) + 88 * a2 + 80);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return NAN;
    }

    if (*(v3 + 96) > a2)
    {
      return *(*(v3 + 112) + 88 * a2 + 80);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 96);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return NAN;
}

uint64_t RETimelineDefinitionBlendTreeNodeGetWeightPath(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 72);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 96) > a2)
        {
          return *(*(v3 + 112) + 88 * a2 + 72);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 72);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 72);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 72);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 96) > a2)
      {
        return *(*(v3 + 112) + 88 * a2 + 72);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 96) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 112) + 88 * a2 + 72);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return 0;
    }

    if (*(v3 + 96) > a2)
    {
      return *(*(v3 + 112) + 88 * a2 + 72);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 96);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return 0;
}

BOOL RETimelineDefinitionBlendTreeNodeIsAdditive(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 96) > a2)
        {
          goto LABEL_45;
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_48;
        }

        if (*(v3 + 96) > a2)
        {
          goto LABEL_45;
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      if (v4 == 43)
      {
        v6 = *(v3 + 96);
        if (v6 > a2)
        {
          goto LABEL_45;
        }

        memset(buf, 0, sizeof(buf));
        v3 = v6;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_39;
      }

      if (*(v3 + 96) > a2)
      {
        goto LABEL_45;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }
    }

LABEL_56:
    v10 = *(v3 + 96);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a2;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = v10;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid node index (%zu), node count: %zu", buf, 0x16u);
LABEL_57:

    return 0;
  }

  if (v4 > 40)
  {
    if (v4 != 41)
    {
      if (*(v3 + 96) > a2)
      {
        goto LABEL_45;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

LABEL_39:
    if (*(v3 + 96) > a2)
    {
      goto LABEL_45;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v4 == 39)
  {
    if (*(v3 + 96) > a2)
    {
      goto LABEL_45;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v4 != 40)
  {
LABEL_48:
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", buf, 2u);
    }

    return 0;
  }

  if (*(v3 + 96) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_45:
  v7 = (*(v3 + 112) + 88 * a2 + 16);

  return re::StringID::operator==(v7, re::AnimationBlendTreeNodeDescription::kBlendAdditive);
}

uint64_t RETimelineDefinitionBlendTreeConnectionCount(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v2 = *(v1 + 8);
  if (v2 > 42)
  {
    if (v2 > 45 && v2 != 46)
    {
      goto LABEL_13;
    }

    return *(v1 + 136);
  }

  if (v2 > 40 || v2 == 39 || v2 == 40)
  {
    return *(v1 + 136);
  }

LABEL_13:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", v5, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionBlendTreeConnectionGetSource(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 136) > a2)
        {
          return *(*(v3 + 152) + 160 * a2 + 8);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 136) > a2)
        {
          return *(*(v3 + 152) + 160 * a2 + 8);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 8);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 136) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 152) + 160 * a2 + 8);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return 0;
    }

    if (*(v3 + 136) > a2)
    {
      return *(*(v3 + 152) + 160 * a2 + 8);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 136);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid connection index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return 0;
}

uint64_t RETimelineDefinitionBlendTreeConnectionGetTarget(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v4 = *(v3 + 8);
  if (v4 > 42)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        if (*(v3 + 136) > a2)
        {
          return *(*(v3 + 152) + 160 * a2 + 88);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 != 46)
        {
          goto LABEL_49;
        }

        if (*(v3 + 136) > a2)
        {
          return *(*(v3 + 152) + 160 * a2 + 88);
        }

        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v5 = CoreRELog::log;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }
    }

    else if (v4 == 43)
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 88);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 88);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else if (v4 > 40)
  {
    if (v4 == 41)
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 88);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*(v3 + 136) > a2)
      {
        return *(*(v3 + 152) + 160 * a2 + 88);
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v5 = CoreRELog::log;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (v4 != 39)
    {
      if (v4 == 40)
      {
        if (*(v3 + 136) <= a2)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v5 = CoreRELog::log;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        return *(*(v3 + 152) + 160 * a2 + 88);
      }

LABEL_49:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v7 = CoreRELog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid blend tree definition type.", &v9, 2u);
      }

      return 0;
    }

    if (*(v3 + 136) > a2)
    {
      return *(*(v3 + 152) + 160 * a2 + 88);
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v8 = *(v3 + 136);
  v9 = 134218240;
  v10 = a2;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid connection index (%zu), node count: %zu", &v9, 0x16u);
LABEL_58:

  return 0;
}

uint64_t RETimelineDefinitionBlendTreeAddNodeFromSource(void *a1, uint64_t a2, unint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a1[6];
  if (!v6)
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    if (v7)
    {
      v6 = *(v7 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(a2 + 48);
  if (!v8)
  {
    v8 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24)) + 8);
  }

  v9 = *(v6 + 8);
  if (v9 != *(v8 + 8))
  {
    return 0;
  }

  result = 0;
  if (v9 <= 42)
  {
    if (v9 > 40)
    {
      if (v9 != 41)
      {
        v15 = *(a2 + 48);
        if (!v15)
        {
          v16 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
          if (v16)
          {
            v15 = *(v16 + 8);
          }

          else
          {
            v15 = 0;
          }
        }

        v27 = v15[12];
        if (v27 > a3)
        {
          v28 = v15[14] + 88 * a3;
          v48 = -1;
          if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
          {
            v44 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            v30 = *(v28 + 8);
            v31 = *(v28 + 80);
            v32 = *(v28 + 72);
            if (v44)
            {
              goto LABEL_123;
            }

            goto LABEL_131;
          }

          if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
          {
            getBlendTreeClip<float>(&v57, v15, a3);
            if (*(&v57 + 1))
            {
              v45 = *(v28 + 8);
              re::AssetHandle::AssetHandle(&v49, &v57);
              TimelineDefinitionForBlendTree<re::Vector3<float>>::doAddTimeline(a1, v45, &v49, *(v28 + 72), &v48, *(v28 + 80));
              goto LABEL_127;
            }

            goto LABEL_128;
          }

          if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
          {
            goto LABEL_133;
          }

          goto LABEL_134;
        }

        goto LABEL_146;
      }

      v23 = *(a2 + 48);
      if (!v23)
      {
        v24 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v24)
        {
          v23 = *(v24 + 8);
        }

        else
        {
          v23 = 0;
        }
      }

      v27 = v23[12];
      if (v27 > a3)
      {
        v28 = v23[14] + 88 * a3;
        v48 = -1;
        if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
        {
          v36 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
          v30 = *(v28 + 8);
          v31 = *(v28 + 80);
          v32 = *(v28 + 72);
          if (!v36)
          {
            goto LABEL_131;
          }

          goto LABEL_123;
        }

        if (!re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
        {
          if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
          {
            goto LABEL_133;
          }

          goto LABEL_134;
        }

        getBlendTreeClip<float>(&v57, v23, a3);
        if (!*(&v57 + 1))
        {
          goto LABEL_128;
        }

        v37 = *(v28 + 8);
        re::AssetHandle::AssetHandle(&v49, &v57);
        TimelineDefinitionForBlendTree<re::Vector2<float>>::doAddTimeline(a1, v37, &v49, *(v28 + 72), &v48, *(v28 + 80));
        goto LABEL_127;
      }

      goto LABEL_142;
    }

    if (v9 != 39)
    {
      if (v9 != 40)
      {
        return result;
      }

      v11 = *(a2 + 48);
      if (!v11)
      {
        v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v12)
        {
          v11 = *(v12 + 8);
        }

        else
        {
          v11 = 0;
        }
      }

      v27 = v11[12];
      if (v27 > a3)
      {
        v28 = v11[14] + 88 * a3;
        v48 = -1;
        if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
        {
          v40 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
          v30 = *(v28 + 8);
          v31 = *(v28 + 80);
          v32 = *(v28 + 72);
          if (v40)
          {
            goto LABEL_123;
          }

LABEL_131:
          TimelineDefinitionForBlendTree<float>::doAddBlendNode(a1, v30, v32, &v48, v31);
          return v48;
        }

        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
        {
          getBlendTreeClip<float>(&v57, v11, a3);
          if (*(&v57 + 1))
          {
            v41 = *(v28 + 8);
            re::AssetHandle::AssetHandle(&v49, &v57);
            TimelineDefinitionForBlendTree<double>::doAddTimeline(a1, v41, &v49, *(v28 + 72), &v48, *(v28 + 80));
            goto LABEL_127;
          }

LABEL_128:
          re::AssetHandle::~AssetHandle(&v57);
          return v48;
        }

        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      goto LABEL_144;
    }

    v19 = *(a2 + 48);
    if (!v19)
    {
      v20 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v20)
      {
        v19 = *(v20 + 8);
      }

      else
      {
        v19 = 0;
      }
    }

    v27 = v19[12];
    if (v27 > a3)
    {
      v28 = v19[14] + 88 * a3;
      v48 = -1;
      if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
      {
        v29 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
        v30 = *(v28 + 8);
        v31 = *(v28 + 80);
        v32 = *(v28 + 72);
        if (!v29)
        {
          goto LABEL_131;
        }

        goto LABEL_123;
      }

      if (!re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      getBlendTreeClip<float>(&v57, v19, a3);
      if (!*(&v57 + 1))
      {
        goto LABEL_128;
      }

      v33 = *(v28 + 8);
      re::AssetHandle::AssetHandle(&v49, &v57);
      TimelineDefinitionForBlendTree<float>::doAddTimeline(a1, v33, &v49, *(v28 + 72), &v48, *(v28 + 80));
LABEL_127:
      re::AssetHandle::~AssetHandle(&v49);
      goto LABEL_128;
    }

    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 797;
    v53 = 2048;
    v54 = a3;
    v55 = 2048;
    v56 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 797;
    v53 = 2048;
    v54 = a3;
    v55 = 2048;
    v56 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_142:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 797;
    v53 = 2048;
    v54 = a3;
    v55 = 2048;
    v56 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_143;
  }

  if (v9 <= 44)
  {
    if (v9 != 43)
    {
      v13 = *(a2 + 48);
      if (!v13)
      {
        v14 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v14)
        {
          v13 = *(v14 + 8);
        }

        else
        {
          v13 = 0;
        }
      }

      v27 = v13[12];
      if (v27 > a3)
      {
        v28 = v13[14] + 88 * a3;
        v48 = -1;
        if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
        {
          v42 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
          v30 = *(v28 + 8);
          v31 = *(v28 + 80);
          v32 = *(v28 + 72);
          if (v42)
          {
            goto LABEL_123;
          }

          goto LABEL_131;
        }

        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
        {
          getBlendTreeClip<float>(&v57, v13, a3);
          if (*(&v57 + 1))
          {
            v43 = *(v28 + 8);
            re::AssetHandle::AssetHandle(&v49, &v57);
            TimelineDefinitionForBlendTree<re::Quaternion<float>>::doAddTimeline(a1, v43, &v49, *(v28 + 72), &v48, *(v28 + 80));
            goto LABEL_127;
          }

          goto LABEL_128;
        }

        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
LABEL_133:
          TimelineDefinitionForBlendTree<float>::doAddInput(a1, *(v28 + 8), *(v28 + 40), *(v28 + 56), *(v28 + 72), &v48, *(v28 + 80));
          return v48;
        }

LABEL_134:
        TimelineDefinitionForBlendTree<float>::doAddRigNode(a1, *(v28 + 24), *(v28 + 8), *(v28 + 72), &v48, *(v28 + 80));
        return v48;
      }

      goto LABEL_145;
    }

    v21 = *(a2 + 48);
    if (!v21)
    {
      v22 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v22)
      {
        v21 = *(v22 + 8);
      }

      else
      {
        v21 = 0;
      }
    }

    v27 = v21[12];
    if (v27 > a3)
    {
      v28 = v21[14] + 88 * a3;
      v48 = -1;
      if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
      {
        v34 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
        v30 = *(v28 + 8);
        v31 = *(v28 + 80);
        v32 = *(v28 + 72);
        if (!v34)
        {
          goto LABEL_131;
        }

        goto LABEL_123;
      }

      if (!re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      getBlendTreeClip<float>(&v57, v21, a3);
      if (!*(&v57 + 1))
      {
        goto LABEL_128;
      }

      v35 = *(v28 + 8);
      re::AssetHandle::AssetHandle(&v49, &v57);
      TimelineDefinitionForBlendTree<re::Vector4<float>>::doAddTimeline(a1, v35, &v49, *(v28 + 72), &v48, *(v28 + 80));
      goto LABEL_127;
    }

    goto LABEL_141;
  }

  if (v9 == 45)
  {
    v25 = *(a2 + 48);
    if (!v25)
    {
      v26 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v26)
      {
        v25 = *(v26 + 8);
      }

      else
      {
        v25 = 0;
      }
    }

    v27 = v25[12];
    if (v27 > a3)
    {
      v28 = v25[14] + 88 * a3;
      v48 = -1;
      if (re::AnimationBlendTreeNodeDescription::isBlend(v28))
      {
        v38 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
        v30 = *(v28 + 8);
        v31 = *(v28 + 80);
        v32 = *(v28 + 72);
        if (!v38)
        {
          goto LABEL_131;
        }

        goto LABEL_123;
      }

      if (!re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      getBlendTreeClip<float>(&v57, v25, a3);
      if (!*(&v57 + 1))
      {
        goto LABEL_128;
      }

      v39 = *(v28 + 8);
      re::AssetHandle::AssetHandle(&v49, &v57);
      TimelineDefinitionForBlendTree<re::GenericSRT<float>>::doAddTimeline(a1, v39, &v49, *(v28 + 72), &v48, *(v28 + 80));
      goto LABEL_127;
    }

LABEL_143:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 797;
    v53 = 2048;
    v54 = a3;
    v55 = 2048;
    v56 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_144:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 797;
    v53 = 2048;
    v54 = a3;
    v55 = 2048;
    v56 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 797;
    v53 = 2048;
    v54 = a3;
    v55 = 2048;
    v56 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_146:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 797;
    v53 = 2048;
    v54 = a3;
    v55 = 2048;
    v56 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_147;
  }

  if (v9 != 46)
  {
    return result;
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    v18 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
    if (v18)
    {
      v17 = *(v18 + 8);
    }

    else
    {
      v17 = 0;
    }
  }

  v27 = v17[12];
  if (v27 <= a3)
  {
LABEL_147:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 797;
    v53 = 2048;
    v54 = a3;
    v55 = 2048;
    v56 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v28 = v17[14] + 88 * a3;
  v48 = -1;
  if (!re::AnimationBlendTreeNodeDescription::isBlend(v28))
  {
    if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kClip))
    {
      getBlendTreeClip<float>(&v57, v17, a3);
      if (*(&v57 + 1))
      {
        v47 = *(v28 + 8);
        re::AssetHandle::AssetHandle(&v49, &v57);
        TimelineDefinitionForBlendTree<re::SkeletalPose>::doAddTimeline(a1, v47, &v49, *(v28 + 72), &v48, *(v28 + 80));
        goto LABEL_127;
      }

      goto LABEL_128;
    }

    if (re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kInput))
    {
      goto LABEL_133;
    }

    goto LABEL_134;
  }

  v46 = re::StringID::operator==((v28 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
  v30 = *(v28 + 8);
  v31 = *(v28 + 80);
  v32 = *(v28 + 72);
  if (!v46)
  {
    goto LABEL_131;
  }

LABEL_123:
  TimelineDefinitionForBlendTree<float>::doAddAdditiveBlendNode(a1, v30, v32, &v48, v31);
  return v48;
}

uint64_t RETimelineDefinitionBlendTreeAddConnectionFromSource(void *a1, uint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a1[6];
  if (!v6)
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    if (v7)
    {
      v6 = *(v7 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(a2 + 48);
  if (!v8)
  {
    v8 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24)) + 8);
  }

  v9 = *(v6 + 8);
  if (v9 != *(v8 + 8))
  {
    return 0;
  }

  result = 0;
  if (v9 > 42)
  {
    if (v9 > 44)
    {
      if (v9 != 45)
      {
        if (v9 != 46)
        {
          return result;
        }

        v11 = *(a2 + 48);
        if (!v11)
        {
          v15 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
          if (v15)
          {
            v11 = *(v15 + 8);
          }

          else
          {
            v11 = 0;
          }
        }

        if (*(v11 + 136) <= a3)
        {
LABEL_74:
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v21 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        goto LABEL_65;
      }

      v11 = *(a2 + 48);
      if (!v11)
      {
        v19 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v19)
        {
          v11 = *(v19 + 8);
        }

        else
        {
          v11 = 0;
        }
      }

      if (*(v11 + 136) > a3)
      {
        goto LABEL_65;
      }

LABEL_70:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_71:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_72:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_73:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    if (v9 != 43)
    {
      v11 = *(a2 + 48);
      if (!v11)
      {
        v13 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v13)
        {
          v11 = *(v13 + 8);
        }

        else
        {
          v11 = 0;
        }
      }

      if (*(v11 + 136) <= a3)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v11 = *(a2 + 48);
    if (!v11)
    {
      v17 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v17)
      {
        v11 = *(v17 + 8);
      }

      else
      {
        v11 = 0;
      }
    }

    if (*(v11 + 136) > a3)
    {
      goto LABEL_65;
    }

    goto LABEL_68;
  }

  if (v9 > 40)
  {
    if (v9 != 41)
    {
      v11 = *(a2 + 48);
      if (!v11)
      {
        v14 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
        if (v14)
        {
          v11 = *(v14 + 8);
        }

        else
        {
          v11 = 0;
        }
      }

      if (*(v11 + 136) <= a3)
      {
        goto LABEL_73;
      }

      goto LABEL_65;
    }

    v11 = *(a2 + 48);
    if (!v11)
    {
      v18 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v18)
      {
        v11 = *(v18 + 8);
      }

      else
      {
        v11 = 0;
      }
    }

    if (*(v11 + 136) > a3)
    {
      goto LABEL_65;
    }

    goto LABEL_69;
  }

  if (v9 != 39)
  {
    if (v9 != 40)
    {
      return result;
    }

    v11 = *(a2 + 48);
    if (!v11)
    {
      v12 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
      if (v12)
      {
        v11 = *(v12 + 8);
      }

      else
      {
        v11 = 0;
      }
    }

    if (*(v11 + 136) > a3)
    {
      goto LABEL_65;
    }

    goto LABEL_71;
  }

  v11 = *(a2 + 48);
  if (!v11)
  {
    v16 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a2 + 24));
    if (v16)
    {
      v11 = *(v16 + 8);
    }

    else
    {
      v11 = 0;
    }
  }

  if (*(v11 + 136) <= a3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_68:
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

LABEL_65:
  v20 = (*(v11 + 152) + 160 * a3);
  *&v21 = -1;
  TimelineDefinitionForBlendTree<float>::doAddConnection(a1, v20[1], v20[11], v20[9], v20[19], &v21);
  return v21;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateTypedEventTimeline(re *a1, const char *a2, char a3)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 640, 8);
  re::EventTimelineAssetData::EventTimelineAssetData(v7);
  v14[0] = &unk_1F5D2B340;
  v14[3] = v14;
  v15 = v8;
  v16[3] = v16;
  v16[0] = &unk_1F5D2B340;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v15);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v14);
  v9 = v13;
  v15 = 0;
  v16[0] = &str_67;
  v11 = re::StringID::operator=(v10 + 10, &v15);
  if (v15)
  {
    if (v15)
    {
    }
  }

  *(v10 + 552) = a3;
  return v9;
}

uint64_t RETimelineDefinitionEventTimelineGetAnimatableType(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 48)
  {
    return *(v1 + 552);
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
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetAnimatableType - Wrong timeline type. Expected an event timeline.", v5, 2u);
    }

    return -1;
  }
}

uint64_t RETimelineDefinitionEventTimelineGetEventTypeName(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 48)
  {
    return *(v1 + 88);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetAnimatableType - Wrong timeline type. Expected an event timeline.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionEventTimelineGetReversible(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  if (*(v1 + 8) == 48)
  {
    v2 = *(v1 + 592);
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
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetAnimatableType - Wrong timeline type. Expected an event timeline.", v5, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

void RETimelineDefinitionEventTimelineSetReversible(_anonymous_namespace_::TimelineDefinition *a1, char a2)
{
  if (*(v3 + 2) == 48)
  {
    *(v3 + 592) = a2;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetAnimatableType - Wrong timeline type. Expected an event timeline.", v5, 2u);
    }
  }
}

BOOL RETimelineDefinitionEventTimelineSetConstantData(_anonymous_namespace_::TimelineDefinition *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v5 + 2);
  if (v6 == 48)
  {
    v7 = v5;
    v11[0] = a2;
    v11[1] = a3;
    re::FixedArray<unsigned char>::FixedArray(buf, v11);
    re::FixedArray<unsigned char>::operator=(v7 + 70, buf);
    v8 = *(v7 + 73);
    *(v7 + 73) = 0;

    if (*buf && v13)
    {
      (*(**buf + 40))();
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }
  }

  return v6 == 48;
}

BOOL RETimelineDefinitionEventTimelineSetAndRetainSwiftConstantData(_anonymous_namespace_::TimelineDefinition *a1, void *a2)
{
  v4 = *(v3 + 2);
  if (v4 == 48)
  {
    v5 = v3;
    v6 = a2;
    v8 = v6;
    re::FixedArray<CoreIKTransform>::deinit(v5 + 70);
    re::ObjCObject::operator=(v5 + 73, &v8);
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
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }
  }

  return v4 == 48;
}

id RETimelineDefinitionEventTimelineGetSwiftConstantData(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 48)
  {
    v2 = *(v1 + 73);
    v3 = v2;

    return v2;
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
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", v6, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionEventTimelineGetConstantDataSize(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 48)
  {
    return *(v1 + 71);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionEventTimelineGetConstantData(_anonymous_namespace_::TimelineDefinition *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(v1 + 2) == 48)
  {
    if (*(v1 + 71))
    {
      return *(v1 + 72);
    }

    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_9:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.", buf, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionEventTimelineAddEvent(_anonymous_namespace_::TimelineDefinition *a1, float a2, float a3)
{
  if (*(v5 + 2) != 48)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = 0;
    v9 = "RETimelineDefinitionEventTimelineAddEvent - Wrong timeline type. Expected an event timeline.";
    v10 = &v12;
    goto LABEL_13;
  }

  re::TimelineEventData::addEvent((v5 + 80), a2, a3, v6, &v12);
  if (v12 == 1)
  {
    return v13;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v8 = CoreRELog::log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 0;
    v9 = "Cannot set event on timline. Check that time and duration does not overlap with existing event.";
    v10 = &v11;
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
  }

LABEL_11:

  return -1;
}

BOOL RETimelineDefinitionEventTimelineAddParameter(_anonymous_namespace_::TimelineDefinition *a1, const char *a2, int a3)
{
  if (*(v5 + 2) == 48)
  {
    v6 = v5;
    *&v11.var0 = 0;
    v11.var1 = &str_67;
    v7 = re::TimelineEventData::addParameterDescription(v6 + 10, &v11, a3);
    v8 = v7;
    if (*&v11.var0)
    {
      if (*&v11.var0)
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *&v11.var0 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineAddParameter - Wrong timeline type. Expected an event timeline.", &v11, 2u);
    }

    return 0;
  }

  return v8;
}

BOOL RETimelineDefinitionEventTimelineSetParameterData(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(v9 + 2) == 48)
  {
    v10 = v9;
    *buf = a4;
    *&buf[8] = a5;
    re::FixedArray<unsigned char>::FixedArray(v23, buf);
    if (a2)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = a2[1];
        if (v12)
        {
          v13 = (a2 + 2);
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

    v22[0] = 2 * v11;
    v22[1] = a2;
    v17 = re::TimelineEventData::parameterDescription((v10 + 80), v22);
    v16 = v18 == 5;
    if (v18 == 5)
    {
      v19 = v17 + *(v10 + 57) * a3;
      v20 = *(v10 + 60);
      if (v20 <= v19)
      {
        v23[3] = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = v19;
        v30 = 2048;
        v31 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v17 = re::FixedArray<unsigned char>::operator=((*(v10 + 62) + 24 * v19), v23);
    }

    if (v22[0])
    {
      if (v22[0])
      {
      }
    }

    if (v23[0] && v23[1])
    {
      (*(*v23[0] + 40))();
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterData - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v16;
}

BOOL RETimelineDefinitionEventTimelineSetAndRetainSwiftParameter(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 48)
  {
    v8 = v7;
    if (a2)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2[1];
        if (v10)
        {
          v11 = (a2 + 2);
          do
          {
            v9 = 31 * v9 + v10;
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v25[0] = 2 * v9;
    v25[1] = a2;
    v15 = a4;
    v24 = v15;
    v16 = re::TimelineEventData::parameterDescription((v8 + 80), v25);
    v14 = v17 == 6;
    if (v17 == 6)
    {
      v18 = v16 + *(v8 + 63) * a3;
      v19 = *(v8 + 66);
      if (v19 <= v18)
      {
        v25[2] = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        *buf = 0u;
        v22 = v18;
        v23 = v19;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        v29 = 789;
        v30 = 2048;
        v31 = v22;
        v32 = 2048;
        v33 = v23;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::ObjCObject::operator=((*(v8 + 68) + 8 * v18), &v24);
    }

    if (v25[0])
    {
      if (v25[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterData - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v14;
}

BOOL RETimelineDefinitionEventTimelineSetParameterInt(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 48)
  {
    v8 = v7;
    if (a2)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2[1];
        if (v10)
        {
          v11 = (a2 + 2);
          do
          {
            v9 = 31 * v9 + v10;
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v21[0] = 2 * v9;
    v21[1] = a2;
    v15 = re::TimelineEventData::parameterDescription((v7 + 80), v21);
    v14 = v16 == 2;
    if (v16 == 2)
    {
      v17 = v15 + *(v8 + 39) * a3;
      v18 = *(v8 + 42);
      if (v18 <= v17)
      {
        v21[2] = 0;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        *buf = 0u;
        v20 = v18;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v22 = 136315906;
        v23 = "operator[]";
        v24 = 1024;
        v25 = 789;
        v26 = 2048;
        v27 = v17;
        v28 = 2048;
        v29 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v8 + 44) + 4 * v17) = a4;
    }

    if (v21[0])
    {
      if (v21[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterInt - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v14;
}

BOOL RETimelineDefinitionEventTimelineSetParameterFloat(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 48)
  {
    v8 = v7;
    if (a2)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2[1];
        if (v10)
        {
          v11 = (a2 + 2);
          do
          {
            v9 = 31 * v9 + v10;
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v22[0] = 2 * v9;
    v22[1] = a2;
    v15 = re::TimelineEventData::parameterDescription((v7 + 80), v22);
    v14 = v16 == 1;
    if (v16 == 1)
    {
      v17 = v15 + *(v8 + 33) * a3;
      v18 = *(v8 + 36);
      if (v18 <= v17)
      {
        v22[2] = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        *buf = 0u;
        v20 = v17;
        v21 = v18;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        v26 = 789;
        v27 = 2048;
        v28 = v20;
        v29 = 2048;
        v30 = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v8 + 38) + 4 * v17) = a4;
    }

    if (v22[0])
    {
      if (v22[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterFloat - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v14;
}

BOOL RETimelineDefinitionEventTimelineSetParameterString(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, const char *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(v7 + 2) == 48)
  {
    v8 = v7;
    if (a2)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2[1];
        if (v10)
        {
          v11 = (a2 + 2);
          do
          {
            v9 = 31 * v9 + v10;
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v24 = 2 * v9;
    v25 = a2;
    v22 = 0;
    v23 = &str_67;
    v15 = re::TimelineEventData::parameterDescription((v8 + 80), &v24);
    v14 = v16 == 3;
    if (v16 == 3)
    {
      v17 = v15 + *(v8 + 45) * a3;
      v18 = *(v8 + 48);
      if (v18 <= v17)
      {
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *buf = 0u;
        v20 = v17;
        v21 = v18;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        v30 = 789;
        v31 = 2048;
        v32 = v20;
        v33 = 2048;
        v34 = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = re::StringID::operator=((*(v8 + 50) + 16 * v17), &v22);
    }

    if (v22)
    {
      if (v22)
      {
      }
    }

    if (v24)
    {
      if (v24)
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterString - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v14;
}

BOOL RETimelineDefinitionEventTimelineSetParameterVector4(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3, __n128 a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(v6 + 2) == 48)
  {
    v7 = v6;
    if (a2)
    {
      v8 = *a2;
      if (*a2)
      {
        v9 = a2[1];
        if (v9)
        {
          v10 = (a2 + 2);
          do
          {
            v8 = 31 * v8 + v9;
            v11 = *v10++;
            v9 = v11;
          }

          while (v11);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v22[0] = 2 * v8;
    v22[1] = a2;
    v14 = re::TimelineEventData::parameterDescription((v6 + 80), v22);
    v13 = v15 == 4;
    if (v15 == 4)
    {
      v16 = v14 + *(v7 + 51) * a3;
      v17 = *(v7 + 54);
      if (v17 <= v16)
      {
        v22[2] = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        *buf = 0u;
        v19 = v16;
        v20 = v17;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        v26 = 789;
        v27 = 2048;
        v28 = v19;
        v29 = 2048;
        v30 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(v7 + 56) + 16 * v16) = a4;
    }

    if (v22[0])
    {
      if (v22[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineSetParameterVector4 - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

  return v13;
}

uint64_t RETimelineDefinitionEventTimelineGetEventCount(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 48)
  {
    return *(v1 + 24) + *(v1 + 14);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetEventCount - Wrong timeline type. Expected an event timeline.", v4, 2u);
  }

  return 0x7FFFFFFFLL;
}

float RETimelineDefinitionEventTimelineGetEventStartTime(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  if (*(v3 + 2) != 48)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetEventStartTime. - Wrong timeline type. Expected an event timeline.", v9, 2u);
    }

    return NAN;
  }

  v4 = *(v3 + 14);
  v5 = a2 - v4;
  if (a2 >= v4)
  {
    if (v5 < *(v3 + 24))
    {
      v6 = 128;
      a2 = v5;
      return *(*(v3 + v6 + 80) + 4 * a2);
    }

    return NAN;
  }

  v6 = 48;
  return *(*(v3 + v6 + 80) + 4 * a2);
}

float RETimelineDefinitionEventTimelineGetEventDuration(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  if (*(v3 + 2) == 48)
  {
    v4 = *(v3 + 19);
    v5 = a2 >= v4;
    v6 = a2 - v4;
    if (v5)
    {
      result = NAN;
      if (v6 < *(v3 + 24))
      {
        return 0.0;
      }
    }

    else
    {
      return *(*(v3 + 21) + 4 * a2);
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
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetEventDuration - Wrong timeline type. Expected an event timeline.", v9, 2u);
    }

    return NAN;
  }

  return result;
}

uint64_t RETimelineDefinitionEventTimelineGetParameterCount(_anonymous_namespace_::TimelineDefinition *a1)
{
  if (*(v1 + 2) == 48)
  {
    return *(v1 + 61);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v3 = CoreRELog::log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterCount - Wrong timeline type. Expected an event timeline.", v4, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionEventTimelineGetParameterName(_anonymous_namespace_::TimelineDefinition *a1, unint64_t a2)
{
  if (*(v3 + 2) == 48)
  {
    v4 = (v3 + 80);

    return re::TimelineEventData::parameterName(v4, a2);
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
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterName - Wrong timeline type. Expected an event timeline.", v7, 2u);
    }

    return 0;
  }
}

uint64_t RETimelineDefinitionEventTimelineGetParameterType(_anonymous_namespace_::TimelineDefinition *a1, char *a2)
{
  if (*(v3 + 2) == 48)
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
      }
    }

    else
    {
      v4 = 0;
    }

    v13[0] = 2 * v4;
    v13[1] = a2;
    v10 = re::TimelineEventData::parameterDescription((v3 + 80), v13);
    v9 = v11;
    if (v13[0])
    {
      if (v13[0])
      {
      }
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
      LOWORD(v13[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterType - Wrong timeline type. Expected an event timeline.", v13, 2u);
    }

    return 0;
  }

  return v9;
}

uint64_t re::TimelineEventData::parameterDescription(re::TimelineEventData *this, const re::StringID *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 136, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(*(this + 19) + 40 * v6 + 24);
  }
}

uint64_t RETimelineDefinitionEventTimelineGetEventParameterData(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(v5 + 2) != 48)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterData - Wrong timeline type. Expected an event timeline.", buf, 2u);
    }

    return 0;
  }

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
    }
  }

  else
  {
    v6 = 0;
  }

  *buf = 2 * v6;
  *&buf[8] = a2;
  v11 = re::TimelineEventData::parameter<re::FixedArray<unsigned char>>((v5 + 80), a3, buf);
  v12 = v11;
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  if (!v12)
  {
    return 0;
  }

  if (!*(v12 + 1))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v12 + 2);
}

unint64_t re::TimelineEventData::parameter<re::FixedArray<unsigned char>>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 5)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 47) * a2;
  if (*(a1 + 50) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 52) + 24 * v7;
}

id RETimelineDefinitionEventTimelineGetEventSwiftParameter(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) != 48)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterData - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }

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
    }
  }

  else
  {
    v6 = 0;
  }

  v14[0] = 2 * v6;
  v14[1] = a2;
  v11 = re::TimelineEventData::parameter<re::ObjCObject>((v5 + 80), a3, v14);
  v12 = v11;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if (!v12)
  {
    return 0;
  }

  result = *v12;
  if (*v12)
  {
    return result;
  }

  return result;
}

unint64_t re::TimelineEventData::parameter<re::ObjCObject>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 6)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 53) * a2;
  if (*(a1 + 56) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 58) + 8 * v7;
}

uint64_t RETimelineDefinitionEventTimelineGetEventParameterDataSize(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
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
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v11 = re::TimelineEventData::parameter<re::FixedArray<unsigned char>>((v5 + 80), a3, v14);
    v12 = v11;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    if (v12)
    {
      return *(v12 + 1);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterData - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }
  }

  return 0;
}

_anonymous_namespace_ *RETimelineDefinitionEventTimelineGetParameterInt(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
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
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v12 = re::TimelineEventData::parameter<int>((v5 + 80), a3, v14);
    v11 = v12;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterInt - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }

  return v11;
}

unint64_t re::TimelineEventData::parameter<int>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 2)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 29) * a2;
  if (*(a1 + 32) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 34) + 4 * v7;
}

_anonymous_namespace_ *RETimelineDefinitionEventTimelineGetParameterFloat(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
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
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v12 = re::TimelineEventData::parameter<float>((v5 + 80), a3, v14);
    v11 = v12;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterFloat - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }

  return v11;
}

unint64_t re::TimelineEventData::parameter<float>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 1)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 23) * a2;
  if (*(a1 + 26) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 28) + 4 * v7;
}

const char *RETimelineDefinitionEventTimelineGetParameterString(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
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
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v12 = re::TimelineEventData::parameter<re::StringID>(v5 + 10, a3, v14);
    v13 = v12;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    if (v13)
    {
      return *(v13 + 1);
    }

    else
    {
      return "";
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterString - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }
}

_anonymous_namespace_ *RETimelineDefinitionEventTimelineGetParameterVector4(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
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
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v12 = re::TimelineEventData::parameter<re::Vector4<float>>((v5 + 80), a3, v14);
    v11 = v12;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterVector4 - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }

  return v11;
}

unint64_t re::TimelineEventData::parameter<re::Vector4<float>>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 4)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 41) * a2;
  if (*(a1 + 44) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 46) + 16 * v7;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateAudioAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 96, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 38);
  *(v4 + 72) = 0;
  *v4 = &unk_1F5CC09F0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  v8[0] = &unk_1F5D2B3C0;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2B3C0;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

uint64_t RETimelineDefinitionGetEasingFunction(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v2 = *(v1 + 8);
  if (v2 <= 14)
  {
    if (v2 > 12)
    {
      if (v2 != 13)
      {
        return *(v1 + 192);
      }
    }

    else
    {
      if (v2 == 11)
      {
        return *(v1 + 112);
      }

      if (v2 != 12)
      {
        goto LABEL_18;
      }
    }

    return *(v1 + 136);
  }

  if (v2 <= 16)
  {
    return *(v1 + 192);
  }

  if (v2 == 17)
  {
    return *(v1 + 288);
  }

  if (v2 == 18 || v2 == 50)
  {
    return *(v1 + 184);
  }

LABEL_18:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Cannot get easing function from non-from-to-by animation.", v5, 2u);
  }

  return 0;
}

_anonymous_namespace_ *RETimelineDefinitionCreateEasingFunctionEx(void *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v1 = a1[6];
  if (!v1)
  {
    a1 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    v1 = a1[1];
  }

  v2 = *(v1 + 8);
  if (v2 <= 14)
  {
    if (v2 > 12)
    {
      if (v2 != 13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v2 == 11)
      {
        v3 = 112;
        goto LABEL_18;
      }

      if (v2 != 12)
      {
        goto LABEL_21;
      }
    }

    v3 = 136;
    goto LABEL_18;
  }

  if (v2 <= 16)
  {
LABEL_14:
    v3 = 192;
    goto LABEL_18;
  }

  if (v2 == 17)
  {
    v3 = 288;
LABEL_18:
    v4 = *(v1 + v3);
    if (v4)
    {
      v8[0] = &unk_1F5D2B440;
      v8[3] = v8;
      *buf = v5;
      v10[3] = v10;
      v10[0] = &unk_1F5D2B440;
      std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v8);
      re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(buf, v8);
      v4 = v8[0];
      std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](buf);
    }

    return v4;
  }

  if (v2 == 18 || v2 == 50)
  {
    v3 = 184;
    goto LABEL_18;
  }

LABEL_21:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Cannot get easing function from non-from-to-by animation.", buf, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetEasingFunction(void *a1, uint64_t a2)
{
  v4 = a1[6];
  if (!v4)
  {
    v4 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3)) + 8);
  }

  v5 = *(v4 + 8);
  if (v5 <= 14)
  {
    if (v5 > 12)
    {
      if (v5 != 13)
      {
LABEL_15:
        v9 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v8 + 24));
        *(v8 + 24) = 0;
        if (a2)
        {
        }

        return 1;
      }
    }

    else
    {
      if (v5 == 11)
      {
        v13 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v12 + 14));
        *(v12 + 14) = 0;
        if (a2)
        {
        }

        return 1;
      }

      if (v5 != 12)
      {
        goto LABEL_24;
      }
    }

    v11 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v10 + 17));
    *(v10 + 17) = 0;
    if (a2)
    {
    }

    return 1;
  }

  if (v5 <= 16)
  {
    goto LABEL_15;
  }

  if (v5 == 17)
  {
    v15 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v14 + 36));
    *(v14 + 36) = 0;
    if (a2)
    {
    }

    return 1;
  }

  if (v5 == 18 || v5 == 50)
  {
    v7 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v6 + 23));
    *(v6 + 23) = 0;
    if (a2)
    {
    }

    return 1;
  }

LABEL_24:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v17 = CoreRELog::log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Cannot set easing function for non-from-to-by animation.", v18, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetEasingFunctionEx(void *a1, uint64_t a2)
{
  v4 = a1[6];
  if (!v4)
  {
    v4 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3)) + 8);
  }

  v5 = *(v4 + 8);
  if (v5 <= 14)
  {
    if (v5 > 12)
    {
      if (v5 != 13)
      {
LABEL_15:
        re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v8 + 24));
        *(v8 + 24) = 0;
        v9 = *(a2 + 24);
        if (v9)
        {
        }

        return 1;
      }
    }

    else
    {
      if (v5 == 11)
      {
        re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v12 + 14));
        *(v12 + 14) = 0;
        v13 = *(a2 + 24);
        if (v13)
        {
        }

        return 1;
      }

      if (v5 != 12)
      {
        goto LABEL_24;
      }
    }

    re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v10 + 17));
    *(v10 + 17) = 0;
    v11 = *(a2 + 24);
    if (v11)
    {
    }

    return 1;
  }

  if (v5 <= 16)
  {
    goto LABEL_15;
  }

  if (v5 == 17)
  {
    re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v14 + 36));
    *(v14 + 36) = 0;
    v15 = *(a2 + 24);
    if (v15)
    {
    }

    return 1;
  }

  if (v5 == 18 || v5 == 50)
  {
    re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v6 + 23));
    *(v6 + 23) = 0;
    v7 = *(a2 + 24);
    if (v7)
    {
    }

    return 1;
  }

LABEL_24:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v17 = CoreRELog::log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Cannot set easing function for non-from-to-by animation.", v18, 2u);
  }

  return 0;
}

void std::__function::__func<anonymous namespace::TimelineDefinition::timelineAssetData(void)::{lambda(re::TimelineAssetData *)#1},std::allocator<anonymous namespace::TimelineDefinition::timelineAssetData(void)::{lambda(re::TimelineAssetData *)#1}>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<anonymous namespace::TimelineDefinition::timelineAssetData(void)::{lambda(re::TimelineAssetData *)#1},std::allocator<anonymous namespace::TimelineDefinition::timelineAssetData(void)::{lambda(re::TimelineAssetData *)#1}>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::makeAdditive<re::SkeletalPoseAssetData>(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v4 = *(a2 + 80);
  if (v3 != v4 && vabds_f32(v3, v4) >= (((fabsf(v3) + fabsf(v4)) + 1.0) * 0.00001))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v6 = "Cannot make additive animation from differing from-to-by durations.";
    goto LABEL_23;
  }

  if ((*(a1 + 72) & 1) != 0 || *(a2 + 72) == 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v6 = "Cannot make additive animation from existing additive from-to-by animation.";
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, v6, buf, 2u);
LABEL_24:

    return 0;
  }

  if (*(a1 + 88) != 1 || *(a2 + 88) != 1 || *(a1 + 120) != 1 || *(a2 + 120) != 1 || (*(a1 + 152) & 1) != 0 || *(a2 + 152) == 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v6 = "Currently only supports from-to animations.";
    goto LABEL_23;
  }

  *buf = a1 + 88;
  v12 = a1 + 120;
  v10[0] = a2 + 96;
  v10[1] = a2 + 128;
  v9[0] = buf;
  v9[1] = 2;
  v8[0] = v10;
  v8[1] = 2;
  result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::SkeletalPoseAssetData>(v9, v8, buf, 2);
  *(a1 + 72) = result;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::SkeletalPoseAssetData>(re *a1, void *a2, uint64_t a3, void *a4)
{
  if (*(a1 + 1) != a4)
  {
    v18 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v19 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_35;
  }

  v4 = a2;
  if (!a2[1])
  {
    v18 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v19 = "Cannot make additive values, base values array size must not be zero.";
LABEL_35:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    return 0;
  }

  *buf = 0;
  v21 = 0;
  v22 = 0;
  re::AnimationValueTraits<re::SkeletalPoseAssetData>::init(buf, **a2);
  v9 = 0;
  v10 = *(a1 + 1);
  if (v10 && v4[1])
  {
    v9 = 0;
    while (a4 != v9)
    {
      v8 = *(*a1 + 8 * v9);
      v11 = *(a3 + 8 * v9);
      if (*v8 != *v11)
      {
        re::Optional<re::SkeletalPoseAssetData>::operator=(v11, v8);
        v10 = *(a1 + 1);
      }

      if (v10 <= v9)
      {
        goto LABEL_37;
      }

      v12 = v4[1];
      if (**(*a1 + 8 * v9) == 1)
      {
        if (v12 <= v9)
        {
          goto LABEL_40;
        }

        re::AnimationValueTraits<re::SkeletalPoseAssetData>::invert(*(*v4 + 8 * v9), buf);
        v14 = *(a1 + 1);
        if (v14 <= v9)
        {
          goto LABEL_41;
        }

        re::AnimationValueTraits<re::SkeletalPoseAssetData>::combine(*(*a1 + 8 * v9) + 8, buf, *(a3 + 8 * v9) + 8);
        v10 = *(a1 + 1);
        v12 = v4[1];
      }

      if (v10 <= ++v9 || v12 <= v9)
      {
        v9 = v9;
        goto LABEL_17;
      }
    }

    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
    _os_crash();
    __break(1u);
LABEL_37:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v10);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_17:
    if (v10 <= v9)
    {
LABEL_26:
      if (*buf)
      {
        if (v21)
        {
          (*(**buf + 40))();
        }
      }

      return 1;
    }

    if (a4 <= v9)
    {
      v4 = v9;
    }

    else
    {
      v4 = a4;
    }

    while (v4 != v9)
    {
      v15 = *(*a1 + 8 * v9);
      v16 = *(a3 + 8 * v9);
      if (*v15 != *v16)
      {
        re::Optional<re::SkeletalPoseAssetData>::operator=(v16, v15);
        v10 = *(a1 + 1);
      }

      if (v10 <= v9)
      {
        goto LABEL_39;
      }

      re::AnimationValueTraits<re::SkeletalPoseAssetData>::combine(*(*a1 + 8 * v9) + 8, buf, *(a3 + 8 * v9) + 8);
      ++v9;
      v10 = *(a1 + 1);
      if (v10 <= v9)
      {
        goto LABEL_26;
      }
    }
  }

  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, a4);
  _os_crash();
  __break(1u);
LABEL_39:
  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v10);
  _os_crash();
  __break(1u);
LABEL_40:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v12);
  _os_crash();
  __break(1u);
LABEL_41:
  re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL re::AnimationHelper::makeAdditiveForValues<re::BlendShapeWeightsAssetData>(re *a1, void *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) != a4)
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v13 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_9;
  }

  v4 = a2;
  if (!a2[1])
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v13 = "Cannot make additive values, base values array size must not be zero.";
LABEL_9:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    return 0;
  }

  v5 = a4;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v8 = *(*a2 + 8);
  if (v8)
  {
    v9 = *(a1 + 1);
    v10 = v4[1] != 0;
  }

  else
  {
    v10 = 1;
    v9 = a4;
  }

  v14 = 0;
  if (v9 && v10)
  {
    v14 = 0;
    while (1)
    {
      v15 = *v4 + 24 * v14;
      v16 = *(v15 + 8);
      if (v16)
      {
        break;
      }

LABEL_18:
      if (v9 <= v14)
      {
        goto LABEL_37;
      }

      if (v14 == v5)
      {
        goto LABEL_38;
      }

      re::AnimationValueTraits<re::BlendShapeWeightsAssetData>::combine(*(*a1 + 24 * v14 + 8), *(*a1 + 24 * v14 + 16), v23, v24, *(a3 + 24 * v14 + 8), *(a3 + 24 * v14 + 16));
      ++v14;
      v9 = *(a1 + 1);
      if (v9 <= v14 || v4[1] <= v14)
      {
        v14 = v14;
        goto LABEL_23;
      }
    }

    v17 = 0;
    v18 = *(v15 + 16);
    v20 = v23;
    v19 = v24;
    while (v20 != v17)
    {
      *(v19 + 4 * v17) = -*(v18 + 4 * v17);
      if (v16 == ++v17)
      {
        goto LABEL_18;
      }
    }

    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 468;
    v30 = 2048;
    v31 = v20;
    v32 = 2048;
    v33 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_36:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v5);
    _os_crash();
    __break(1u);
LABEL_37:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v9);
    _os_crash();
    __break(1u);
LABEL_38:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v5, v5);
    _os_crash();
    __break(1u);
  }

LABEL_23:
  if (v9 > v14)
  {
    if (v5 <= v14)
    {
      v4 = v14;
    }

    else
    {
      v4 = v5;
    }

    v21 = 24 * v14;
    while (v4 != v14)
    {
      re::AnimationValueTraits<re::BlendShapeWeightsAssetData>::combine(*(*a1 + v21 + 8), *(*a1 + v21 + 16), v23, v24, *(a3 + v21 + 8), *(a3 + v21 + 16));
      ++v14;
      v21 += 24;
      if (*(a1 + 1) <= v14)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_36;
  }

LABEL_30:
  if (v22)
  {
    if (v23)
    {
      (*(*v22 + 40))();
    }
  }

  return 1;
}

float re::AnimationValueTraits<re::BlendShapeWeightsAssetData>::combine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    for (i = 0; i != a1; ++i)
    {
      if (a3 == i)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a5 == i)
      {
        goto LABEL_8;
      }

      result = *(a2 + 4 * i) + *(a4 + 4 * i);
      *(a6 + 4 * i) = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::TimelineAssetData *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::TimelineAssetData *)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::TimelineAssetData *)>::__value_func[abi:nn200100](v4, v5);
}

uint64_t std::__function::__value_func<void ()(re::TimelineAssetData *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t anonymous namespace::TimelineDefinition::TimelineDefinition(uint64_t a1, const re::AssetHandle *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D29DB8;
  re::AssetHandle::AssetHandle((a1 + 24), a2);
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void anonymous namespace::TimelineDefinition::~TimelineDefinition(_anonymous_namespace_::TimelineDefinition *this)
{

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D29DB8;
  if (*(this + 88) == 1)
  {
    re::StringID::destroyString((this + 96));
  }

  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](this + 6);
  re::AssetHandle::~AssetHandle((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void std::__function::__func<RETimelineDefinitionCreateFromToByFloatAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloatAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByFloatAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloatAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::make::shared::object<anonymous namespace::TimelineDefinition,std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 112, 8);
  *a2 = result;
  return result;
}

uint64_t anonymous namespace::TimelineDefinition::TimelineDefinition(uint64_t a1, uint64_t *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_1F5D29DB8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 48) = v4;
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::__value_func[abi:nn200100](a1 + 56, (a2 + 1));
  *(a1 + 88) = 0;
  return a1;
}

void std::__function::__func<RETimelineDefinitionCreateFromToByDoubleAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByDoubleAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByDoubleAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByDoubleAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByFloat2Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat2Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByFloat2Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat2Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByFloat3Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat3Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByFloat3Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat3Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByFloat4Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat4Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByFloat4Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat4Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByQuaternionAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByQuaternionAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByQuaternionAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByQuaternionAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToBySRTAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToBySRTAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToBySRTAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToBySRTAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToBySkeletalPoseAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToBySkeletalPoseAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToBySkeletalPoseAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToBySkeletalPoseAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledFloatAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloatAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledFloatAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloatAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledDoubleAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledDoubleAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledDoubleAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledDoubleAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledFloat2Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat2Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledFloat2Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat2Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledFloat3Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat3Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledFloat3Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat3Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledFloat4Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat4Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledFloat4Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat4Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledQuaternionAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledQuaternionAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledQuaternionAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledQuaternionAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledSRTAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledSRTAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledSRTAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledSRTAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledSkeletalPoseAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledSkeletalPoseAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledSkeletalPoseAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledSkeletalPoseAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_0,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_0,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_1,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_1>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_1,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_1>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_2,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_2>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_2,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_2>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}