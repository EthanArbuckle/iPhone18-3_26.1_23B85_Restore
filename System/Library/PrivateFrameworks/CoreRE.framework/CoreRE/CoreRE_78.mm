re *re::anonymous namespace::wireupVertexCacheAnimations(re *result, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, float a7)
{
  v94 = result;
  v113 = *MEMORY[0x1E69E9840];
  v9 = a4[7];
  if (!v9)
  {
    return result;
  }

  v12 = &v108;
  v13 = a4[9];
  v14 = v13 + 96 * v9;
  v92 = a4;
  v15 = a5 + 24;
  v90 = a5 + 24;
  v91 = v14;
  do
  {
    v16 = *(v13 + 80);
    v17 = *(a5 + 40);
    if (v17 <= v16)
    {
      goto LABEL_87;
    }

    v7 = v16 >> 3;
    i = *(a5 + 8);
    if (i <= v16 >> 3)
    {
      goto LABEL_88;
    }

    v18 = *(a5 + 32);
    if (*(a5 + 16))
    {
      v18 = v15;
    }

    v19 = *(*(v18 + 8 * v7) + 8 * (v16 & 7));
    v7 = *(v19 + 16);
    if (!v7)
    {
      goto LABEL_69;
    }

    i = a4[2];
    if (i <= v16)
    {
      goto LABEL_89;
    }

    v20 = a4[4] + (v16 << 9);
    if (*(v20 + 208) != 1)
    {
      goto LABEL_69;
    }

    v16 = *(v20 + 224);
    v21 = re::globalAllocators(result);
    v22 = (*(*v21[2] + 32))(v21[2], 120, 8);
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0u;
    *(v22 + 56) = 0;
    *v22 = &unk_1F5CC92D0;
    *(v22 + 16) = 0;
    *(v22 + 24) = &str_67;
    *(v22 + 40) = &str_67;
    *(v22 + 49) = 0;
    *(v22 + 52) = 1023969417;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    *(v22 + 96) = 0u;
    *(v22 + 112) = 0;
    v108.n128_u64[0] = &unk_1F5CD1190;
    *(&v109 + 1) = &v108;
    *&v102[2] = &v98[8];
    *v98 = v22;
    *&v98[8] = &unk_1F5CD1190;
    std::__function::__value_func<void ()(re::VertexCacheAsset *)>::~__value_func[abi:nn200100](&v108);
    v108.n128_u8[0] = 1;
    re::StringID::StringID(&v108.n128_i8[8], v13);
    re::StringID::StringID((&v109 + 8), (v16 + 72));
    v23 = *v98;
    *(*v98 + 8) = v108.n128_u8[0];
    re::StringID::operator=((v23 + 16), &v108.n128_i64[1]);
    v24 = re::StringID::operator=((v23 + 32), &v109 + 1);
    if (BYTE8(v109))
    {
      if (BYTE8(v109))
      {
      }
    }

    *(&v109 + 1) = 0;
    *&v110 = &str_67;
    if (v108.n128_u8[8])
    {
      if (v108.n128_u8[8])
      {
      }
    }

    v25 = *v98;
    *(*v98 + 48) = 1;
    *(v25 + 52) = a7;
    *(v25 + 56) = *v19;
    *(v25 + 64) = v7;
    *(v25 + 80) = 12;
    v27 = 0;
    v28 = 0;
    for (i = 0; i != v7; ++i)
    {
      v29 = *(v19 + 16);
      if (v29 <= i)
      {
        goto LABEL_85;
      }

      v29 = *(*v98 + 96);
      if (v29 <= i)
      {
LABEL_86:
        v97[0] = 0;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v108 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v103 = 136315906;
        *&v103[4] = "operator[]";
        v104 = 1024;
        *v105 = 468;
        *&v105[4] = 2048;
        *&v105[6] = i;
        v106 = 2048;
        v107 = v29;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_87:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v16, v17);
        _os_crash();
        __break(1u);
LABEL_88:
        *v103 = 0;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v108 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v98 = 136315906;
        *&v98[4] = "operator[]";
        *&v98[12] = 1024;
        *&v98[14] = 866;
        v99 = 2048;
        v100 = v7;
        v101 = 2048;
        *v102 = i;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_89:
        *v103 = 0;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v108 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v98 = 136315906;
        *&v98[4] = "operator[]";
        *&v98[12] = 1024;
        *&v98[14] = 789;
        v99 = 2048;
        v100 = v16;
        v101 = 2048;
        *v102 = i;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_90:
        v97[0] = 0;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v108 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v103 = 136315906;
        *&v103[4] = "operator[]";
        v104 = 1024;
        *v105 = 789;
        *&v105[4] = 2048;
        *&v105[6] = v16;
        v106 = 2048;
        v107 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_91;
      }

      v30 = (*(v19 + 24) + v28);
      v31 = (*(*v98 + 104) + v27);
      v32 = v30[1];
      *v31 = *v30;
      v31[1] = v32;
      v28 += 64;
      v27 += 32;
    }

    v33 = *(v16 + 16);
    if (!v33)
    {
      goto LABEL_29;
    }

    v34 = (*(v16 + 32) + 48);
    v35 = 80 * v33;
    while (1)
    {
      v36 = (*(v34 - 5) & 1) != 0 ? *(v34 - 4) : v34 - 39;
      v26 = strcmp(v36, "originalModelVertexIndex");
      if (!v26)
      {
        break;
      }

      v34 += 10;
      v35 -= 80;
      if (!v35)
      {
        goto LABEL_29;
      }
    }

    v37 = *v34;
    if (*v34 <= 3)
    {
LABEL_29:
      if (*(v19 + 16))
      {
        v38 = *(*(v19 + 24) + 40);
        v39 = 12 * v7 * v38;
        if (v39)
        {
          v40 = *v98;
          *(*v98 + 72) = v38;
          *(v40 + 49) = 30;
          v108.n128_u64[0] = [*(a3 + 8) newBufferWithLength:v39 options:0];
          NS::SharedPtr<MTL::Texture>::operator=((*v98 + 112), &v108);
          if (v108.n128_u64[0])
          {
          }

          v26 = [*(*v98 + 112) contents];
          v41 = *(v19 + 16);
          if (v41)
          {
            v42 = *(v19 + 24);
            v43 = v42 + (v41 << 6);
            do
            {
              v44 = *(v42 + 40);
              if (v44)
              {
                v45 = *(v42 + 48);
                v46 = 16 * v44;
                do
                {
                  v47 = *v45++;
                  v48 = v26 + 12;
                  *v26 = v47;
                  *(v26 + 8) = DWORD2(v47);
                  v26 += 12;
                  v46 -= 16;
                }

                while (v46);
                v26 = v48;
              }

              v42 += 64;
            }

            while (v42 != v43);
          }
        }

        goto LABEL_40;
      }

LABEL_91:
      v97[0] = 0;
      v12[3] = 0u;
      v12[4] = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v103 = 136315906;
      *&v103[4] = "operator[]";
      v104 = 1024;
      *v105 = 476;
      *&v105[4] = 2048;
      *&v105[6] = 0;
      v106 = 2048;
      v107 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_92:
      std::__throw_bad_function_call[abi:nn200100]();
    }

    v78 = v37 >> 2;
    v79 = 12 * v7 * (v37 >> 2);
    if (v79)
    {
      v7 = v34[2];
      v80 = *v98;
      *(*v98 + 72) = v78;
      *(v80 + 49) = 30;
      v108.n128_u64[0] = [*(a3 + 8) newBufferWithLength:v79 options:0];
      NS::SharedPtr<MTL::Texture>::operator=((*v98 + 112), &v108);
      if (v108.n128_u64[0])
      {
      }

      v26 = [*(*v98 + 112) contents];
      v81 = *(v19 + 16);
      if (v81)
      {
        v82 = *(v19 + 24);
        v83 = v82 + (v81 << 6);
        if (v78 <= 1)
        {
          v84 = 1;
        }

        else
        {
          v84 = v78;
        }

        do
        {
          v16 = *(v82 + 40);
          v85 = v7;
          v86 = v84;
          do
          {
            v87 = *v85++;
            i = v87;
            if (v16 <= v87)
            {
              v97[0] = 0;
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v108 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v103 = 136315906;
              *&v103[4] = "operator[]";
              v104 = 1024;
              *v105 = 476;
              *&v105[4] = 2048;
              *&v105[6] = i;
              v106 = 2048;
              v107 = v16;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_85:
              v97[0] = 0;
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v108 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v103 = 136315906;
              *&v103[4] = "operator[]";
              v104 = 1024;
              *v105 = 476;
              *&v105[4] = 2048;
              *&v105[6] = i;
              v106 = 2048;
              v107 = v29;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_86;
            }

            v88 = *(*(v82 + 48) + 16 * i);
            v89 = v26 + 12;
            *v26 = v88;
            *(v26 + 8) = DWORD2(v88);
            v26 += 12;
            --v86;
          }

          while (v86);
          v82 += 64;
          v26 = v89;
        }

        while (v82 != v83);
      }
    }

LABEL_40:
    if (!*(v94 + 4))
    {
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v94 + 4, 0);
      ++*(v94 + 14);
    }

    v49 = (*(**(re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 248, 0);
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 48) = 0u;
    *(v49 + 80) = 0u;
    *(v49 + 96) = 0u;
    *(v49 + 112) = 0u;
    *(v49 + 128) = 0u;
    *(v49 + 144) = 0u;
    *(v49 + 160) = 0u;
    *(v49 + 176) = 0u;
    *(v49 + 208) = 0u;
    *(v49 + 224) = 0u;
    *(v49 + 240) = 0;
    *(v49 + 192) = 0u;
    v12 = (v49 + 192);
    *(v49 + 64) = 0u;
    v50 = (v49 + 64);
    *(v49 + 32) = 0u;
    ArcSharedObject::ArcSharedObject(v49, 0);
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *v51 = &unk_1F5CD1220;
    *(v49 + 32) = 0;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 184) = 0;
    *(v49 + 64) = 0u;
    *(v51 + 80) = 0u;
    *(v51 + 96) = 0;
    *(v51 + 104) = 0u;
    *(v51 + 120) = 0u;
    *(v51 + 136) = 0;
    *(v51 + 144) = 0u;
    *(v51 + 160) = 0u;
    *(v51 + 176) = 0;
    inited = objc_initWeak((v49 + 192), 0);
    *(v49 + 200) = 0;
    *(v49 + 232) = re::globalAllocators(inited)[2];
    *(v49 + 240) = 0;
    v108.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1;
    v108.n128_u64[1] = v49;
    LOBYTE(v109) = 1;
    re::DynamicArray<re::BufferView>::add((v94 + 32), &v108);
    v16 = *(v49 + 48);
    v108 = 0uLL;
    *&v109 = 0;
    re::DynamicArray<re::AssetHandle>::add((v49 + 32), &v108);
    re::AssetHandle::~AssetHandle(&v108);
    re::DynamicArray<float>::add((v49 + 72), v19);
    v7 = *(v49 + 48);
    if (v7 <= v16)
    {
      goto LABEL_90;
    }

    v54 = *v50;
    v55 = *(a3 + 104);
    v56 = *a2;
    v57 = a2[1];
    v58 = *v98;
    *v98 = 0;
    v59 = re::VertexCacheAsset::assetType(v53);
    v60 = re::ImportAssetTable::addAsset(v55, v56, v57, v58, v59);
    if (*(v60 + 8))
    {
      v61 = *(v60 + 16);
    }

    else
    {
      v61 = (v60 + 9);
    }

    v62 = re::DynamicString::format("VertexCacheTimeAnim[%zu]", v103, v16);
    v63 = re::globalAllocators(v62);
    v7 = (*(*v63[2] + 32))(v63[2], 120, 8);
    v64 = re::TimelineAssetData::TimelineAssetData(v7, 11);
    *(v64 + 72) = 0;
    *(v64 + 80) = 0x3FF0000000000000;
    *(v64 + 88) = 0;
    *(v64 + 96) = 0;
    *(v64 + 104) = 0;
    *(v64 + 112) = 0;
    *v64 = &unk_1F5CC3530;
    if (v103[8])
    {
      v65 = *&v105[2];
    }

    else
    {
      v65 = &v103[9];
    }

    v108.n128_u64[0] = 0;
    v108.n128_u64[1] = &str_67;
    v66 = re::StringID::operator=((v7 + 24), &v108);
    if (v108.n128_u8[0])
    {
      if (v108.n128_u8[0])
      {
      }
    }

    v67 = *v19;
    *(v7 + 80) = (*(v19 + 4) - *v19);
    if ((*(v7 + 88) & 1) == 0)
    {
      *(v7 + 88) = 1;
    }

    *(v7 + 92) = v67;
    v68 = *(v19 + 4);
    if ((*(v7 + 96) & 1) == 0)
    {
      *(v7 + 96) = 1;
    }

    *(v7 + 100) = v68;
    re::DynamicString::format("VertexCache.vertexCacheTimes[%zu]", &v108, v16);
    re::DynamicString::operator=((v7 + 40), &v108);
    if (v108.n128_u64[0] && (v108.n128_u8[8] & 1) != 0)
    {
      (*(*v108.n128_u64[0] + 40))();
    }

    memset(v97, 0, sizeof(v97));
    i = *(a3 + 104);
    v70 = *a2;
    v71 = a2[1];
    TimelineAsset = re::AssetHelper::makeTimelineAsset(v7, v69);
    v73 = re::TimelineAsset::assetType(TimelineAsset);
    v74 = re::ImportAssetTable::addAsset(i, v70, v71, TimelineAsset, v73);
    if (*(v74 + 8))
    {
      v75 = *(v74 + 16);
    }

    else
    {
      v75 = (v74 + 9);
    }

    v12 = &v108;
    v76 = *(v7 + 80);
    v108.n128_f64[0] = *v19;
    v108.n128_u64[1] = v76;
    re::AssetHandle::AssetHandle(&v109, v97);
    re::AssetHandle::~AssetHandle(&v109);
    re::AssetHandle::~AssetHandle(v97);
    if (*v103)
    {
      if (v103[8])
      {
        (*(**v103 + 40))();
      }
    }

    v77 = *v98;
    *v98 = 0;
    if (v77)
    {
      v108.n128_u64[0] = v77;
      if (!*&v102[2])
      {
        goto LABEL_92;
      }

      (*(**&v102[2] + 48))(*&v102[2], &v108);
    }

    result = std::__function::__value_func<void ()(re::VertexCacheAsset *)>::~__value_func[abi:nn200100](&v98[8]);
    v14 = v91;
    a4 = v92;
    v15 = v90;
LABEL_69:
    v13 += 96;
  }

  while (v13 != v14);
  return result;
}

uint64_t re::TimelineGroupBuilder::createTimelineAsset(re::TimelineGroupBuilder *this, const char *a2, const char *a3)
{
  re::DynamicString::format("%s", &v122, a3);
  v5 = v123;
  v6 = v124;
  if (v123)
  {
    v7 = v124;
  }

  else
  {
    v7 = &v123 + 1;
  }

  if (v7)
  {
    v8 = v123 >> 1;
    if ((v123 & 1) == 0)
    {
      v8 = v123 >> 1;
    }

    if (v8)
    {
      do
      {
        if (*v7 == 32)
        {
          *v7 = 95;
          v5 = v123;
          v6 = v124;
        }

        ++v7;
        if (v5)
        {
          v9 = v6;
        }

        else
        {
          v9 = &v123 + 1;
        }

        v10 = v5 >> 1;
        if ((v5 & 1) == 0)
        {
          v10 = v5 >> 1;
        }
      }

      while (v7 != &v9[v10]);
    }
  }

  v100 = this;
  if (a2[16])
  {
    v11 = *(a2 + 3);
  }

  else
  {
    v11 = a2 + 17;
  }

  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = &v123 + 1;
  }

  re::DynamicString::format("%s_%s", &v118, v11, v12);
  re::TimelineAssetData::TimelineAssetData(v109, 2);
  v117 = 0;
  v109[0] = &unk_1F5CBE6B8;
  v114 = 0;
  v115 = 0uLL;
  v116 = 0;
  v101 = *(a2 + 12);
  if (v101)
  {
    v103 = 0;
    for (i = 0; i != v101; ++i)
    {
      v14 = re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::operator[]((a2 + 56), i);
      *&v128 = 0;
      *(&v128 + 1) = &str_67;
      v16 = v128;
      *&v128 = 0;
      *(&v128 + 1) = &str_67;
      v17 = v111;
      v18 = *(&v111 + 1);
      v111 = v16;
      if (v17)
      {
        if (v128)
        {
          if (v128)
          {
          }
        }
      }

      v20 = *(a2 + 2);
      v21 = *(a2 + 3);
      if ((v20 & 1) == 0)
      {
        v21 = a2 + 17;
      }

      v22 = v20 >> 1;
      v23 = v20 >> 1;
      if (*(a2 + 2))
      {
        v24 = v22;
      }

      else
      {
        v24 = v23;
      }

      v104 = v21;
      v105 = v24;
      *(&v128 + 1) = 0;
      v129 = 0uLL;
      if (v24)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = 0;
      }

      re::DynamicString::setCapacity(&v128, v25);
      re::DynamicString::operator=(&v128, &v104);
      v26 = re::DynamicString::operator!=(v14 + 32, &v128);
      v27 = v128;
      if (v128 && (BYTE8(v128) & 1) != 0)
      {
        v27 = (*(*v128 + 40))();
      }

      if (v26)
      {
        v28 = *(a2 + 2);
        if (v28)
        {
          v29 = v28 >> 1;
        }

        else
        {
          v29 = v28 >> 1;
        }

        v30 = re::DynamicString::operator[](v14 + 32, v29);
        v31 = *(a2 + 2);
        if (v31)
        {
          v32 = v31 >> 1;
        }

        else
        {
          v32 = v31 >> 1;
        }

        v33 = *(v14 + 40);
        v34 = *(v14 + 48);
        if ((v33 & 1) == 0)
        {
          v34 = v14 + 41;
        }

        v35 = v33 >> 1;
        v36 = v33 >> 1;
        if (*(v14 + 40))
        {
          v36 = v35;
        }

        if (*v30 == 47)
        {
          v37 = (v34 + v32 + 1);
        }

        else
        {
          v37 = (v34 + v32);
        }

        v38 = v34 + v36 - v37;
        v128 = 0u;
        v129 = 0u;
        v39 = re::DynamicString::setCapacity(&v128, 0);
        v126 = v37;
        v127 = v38;
        re::DynamicString::setCapacity(&v104, v38);
        while (v127)
        {
          v130 = 0;
          v40 = std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(v126, &v126[v127], "/", "");
          v42 = v126;
          v41 = v127;
          if (&v126[v127] == v40)
          {
            v126 = 0;
            v127 = 0;
          }

          else
          {
            v43 = v40 - v126;
            v42 = re::Slice<char>::range(&v126, 0, v40 - v126);
            v41 = v44;
            v126 = re::Slice<char>::range(&v126, v43 + 1, v127);
            v127 = v45;
          }

          v125[0] = v42;
          v125[1] = v41;
          re::internal::escapeBindingKey(v125, &v128);
          if (v105)
          {
            v46 = v105 >> 1;
          }

          else
          {
            v46 = v105 >> 1;
          }

          if (v46)
          {
            re::DynamicString::append(&v104, ".", 1uLL);
          }

          if (BYTE8(v128))
          {
            v47 = v129;
          }

          else
          {
            v47 = &v128 + 9;
          }

          re::DynamicString::appendf(&v104, "entities[%s]", v47);
        }

        if (v128 && (BYTE8(v128) & 1) != 0)
        {
          (*(*v128 + 40))();
        }

        re::DynamicString::operator=(&v107, &v104);
        v27 = v104;
        if (v104 && (v105 & 1) != 0)
        {
          v27 = (*(*v104 + 40))();
        }
      }

      if (BYTE8(v107))
      {
        v48 = *(&v107 + 1) >> 1;
      }

      else
      {
        v48 = BYTE8(v107) >> 1;
      }

      if (!v48 && ((v62 = *(v14 + 64), v63 = *(a2 + 10), v62 == v63) || vabds_f32(v62, v63) < (((fabsf(v62) + fabsf(v63)) + 1.0) * 0.00001)) && ((v64 = *(v14 + 68), v65 = *(a2 + 11), v64 == v65) || vabds_f32(v64, v65) < (((fabsf(v64) + fabsf(v65)) + 1.0) * 0.00001)))
      {
        re::DynamicArray<re::AssetHandle>::add(&v114, (v14 + 72));
      }

      else
      {
        v49 = re::globalAllocators(v27);
        v50 = (*(*v49[2] + 32))(v49[2], 176, 8);
        v51 = re::TimelineAssetData::TimelineAssetData(v50, 1);
        *v51 = &unk_1F5CBE660;
        *(v51 + 112) = 0;
        *(v51 + 128) = 0;
        *(v51 + 136) = 0;
        *(v51 + 144) = 0;
        *(v51 + 152) = 0;
        *(v51 + 80) = 0;
        *(v51 + 88) = 0;
        *(v51 + 96) = 0;
        *(v51 + 72) = 0;
        *(v50 + 168) = 1065353216;
        *(v50 + 172) = 0;
        re::AssetHandle::operator=(v51 + 72, (v14 + 72));
        *(v50 + 144) = (*(v14 + 64) - *(a2 + 10));
        *(v50 + 16) = 3;
        re::DynamicString::operator=((v50 + 40), &v107);
        v52 = v121;
        if ((v119 & 1) == 0)
        {
          v52 = v120;
        }

        v53 = *(v14 + 16);
        if ((*(v14 + 8) & 1) == 0)
        {
          v53 = v14 + 9;
        }

        re::DynamicString::format("%s_%s[%zu]", &v128, v52, v53, v103);
        v54 = *a2;
        if (BYTE8(v128))
        {
          v55 = v129;
        }

        else
        {
          v55 = &v128 + 9;
        }

        v56 = strlen(v55);
        TimelineAsset = re::AssetHelper::makeTimelineAsset(v50, v57);
        v59 = re::TimelineAsset::assetType(TimelineAsset);
        v60 = re::ImportAssetTable::addAsset(v54, v55, v56, TimelineAsset, v59);
        v105 = 0;
        v106 = 0;
        v104 = 0;
        if (*(v60 + 8))
        {
          v61 = *(v60 + 16);
        }

        else
        {
          v61 = (v60 + 9);
        }

        re::DynamicArray<re::AssetHandle>::add(&v114, &v104);
        re::AssetHandle::~AssetHandle(&v104);
        if (v128 && (BYTE8(v128) & 1) != 0)
        {
          (*(*v128 + 40))();
        }

        ++v103;
      }

      if (v107 && (BYTE8(v107) & 1) != 0)
      {
        (*(*v107 + 40))();
      }
    }
  }

  v66 = *a2;
  if (v119)
  {
    v67 = v121;
  }

  else
  {
    v67 = v120;
  }

  v68 = strlen(v67);
  v69 = re::globalAllocators(v68);
  v70 = (*(*v69[2] + 32))(v69[2], 112, 8);
  *v70 = &unk_1F5CC3608;
  v71 = v110;
  *(v70 + 8) = v109[1];
  *(v70 + 16) = v71;
  v72 = v111;
  *(v70 + 24) = *(v70 + 24) & 0xFFFFFFFFFFFFFFFELL | v111 & 1;
  *(v70 + 24) = v111 & 0xFFFFFFFFFFFFFFFELL | v72 & 1;
  *(v70 + 32) = *(&v111 + 1);
  *&v111 = 0;
  *(&v111 + 1) = &str_67;
  *(v70 + 40) = 0u;
  *(v70 + 56) = 0u;
  *(v70 + 40) = v112;
  v73 = *(&v112 + 1);
  *(v70 + 56) = v113;
  v113 = 0uLL;
  v74 = *(v70 + 48);
  *(v70 + 48) = v73;
  *&v112 = 0;
  *(&v112 + 1) = v74;
  *v70 = &unk_1F5CBE6B8;
  *(v70 + 104) = 0;
  *(v70 + 96) = 0;
  *(v70 + 88) = 0;
  *(v70 + 72) = 0u;
  *(v70 + 72) = v114;
  v114 = 0;
  *(v70 + 80) = v115;
  v115 = 0u;
  *(v70 + 104) = v117;
  v117 = 0;
  ++v116;
  ++*(v70 + 96);
  v76 = re::AssetHelper::makeTimelineAsset(v70, v75);
  v77 = re::TimelineAsset::assetType(v76);
  v78 = re::ImportAssetTable::addAsset(v66, v67, v68, v76, v77);
  v108 = 0;
  v107 = 0u;
  if (*(v78 + 8))
  {
    v79 = *(v78 + 16);
  }

  else
  {
    v79 = (v78 + 9);
  }

  v81 = *(a2 + 11);
  v82 = *(a2 + 12);
  if (v81 == v82 || vabds_f32(v81, v82) < (((fabsf(v81) + fabsf(v82)) + 1.0) * 0.00001))
  {
    *v100 = v107;
    v107 = 0uLL;
    *(v100 + 2) = v108;
    v108 = 0;
  }

  else
  {
    v85 = re::globalAllocators(v80);
    v86 = (*(*v85[2] + 32))(v85[2], 176, 8);
    v87 = re::TimelineAssetData::TimelineAssetData(v86, 1);
    *v87 = &unk_1F5CBE660;
    *(v87 + 72) = 0;
    v88 = v87 + 72;
    *(v87 + 112) = 0;
    *(v87 + 128) = 0;
    *(v87 + 136) = 0;
    *(v87 + 144) = 0;
    *(v87 + 152) = 0;
    *(v87 + 80) = 0;
    *(v87 + 88) = 0;
    *(v87 + 96) = 0;
    *(v87 + 168) = 1065353216;
    *(v87 + 172) = 0;
    *&v128 = 0;
    *(&v128 + 1) = &str_67;
    v89 = re::StringID::operator=((v86 + 24), &v128);
    if (v128)
    {
      if (v128)
      {
      }
    }

    re::AssetHandle::operator=(v88, &v107);
    v90 = (*(a2 + 11) - *(a2 + 10));
    if ((*(v86 + 152) & 1) == 0)
    {
      *(v86 + 152) = 1;
    }

    *(v86 + 160) = v90;
    *(v86 + 16) = 3;
    if (v119)
    {
      v91 = v121;
    }

    else
    {
      v91 = v120;
    }

    re::DynamicString::format("%s_Fill", &v128, v91);
    v92 = *a2;
    if (BYTE8(v128))
    {
      v93 = v129;
    }

    else
    {
      v93 = &v128 + 9;
    }

    v94 = strlen(v93);
    v96 = re::AssetHelper::makeTimelineAsset(v86, v95);
    v97 = re::TimelineAsset::assetType(v96);
    v98 = re::ImportAssetTable::addAsset(v92, v93, v94, v96, v97);
    *(v100 + 1) = 0;
    *(v100 + 2) = 0;
    *v100 = 0;
    if (*(v98 + 8))
    {
      v99 = *(v98 + 16);
    }

    else
    {
      v99 = (v98 + 9);
    }

    if (v128 && (BYTE8(v128) & 1) != 0)
    {
      (*(*v128 + 40))();
    }
  }

  re::AssetHandle::~AssetHandle(&v107);
  re::DynamicArray<re::AssetHandle>::deinit(&v114);
  v109[0] = &unk_1F5CC3608;
  v83 = v112;
  if (v112)
  {
    if (BYTE8(v112))
    {
      v83 = (*(*v112 + 40))();
    }

    v113 = 0u;
    v112 = 0u;
  }

  if (v111)
  {
    if (v111)
    {
    }
  }

  if (v118 && (v119 & 1) != 0)
  {
    (*(*v118 + 40))();
  }

  result = v122;
  if (v122 && (v123 & 1) != 0)
  {
    return (*(*v122 + 40))();
  }

  return result;
}

void *re::DynamicArray<re::AssetHandle>::insert(void *this, unint64_t a2, uint64_t *a3)
{
  v4 = this[2];
  if (v4 + 1 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = this;
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::AssetHandle>::growCapacity(this, v4 + 1);
    v4 = v6[2];
  }

  v7 = (v6[4] + 24 * v4);
  if (v4 <= a2)
  {
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
    v7[1] = a3[1];
    a3[1] = 0;
    v21 = *v7;
    *v7 = 0;
    *v7 = *a3;
    *a3 = v21;
    v22 = v7[2];
    v7[2] = a3[2];
    a3[2] = v22;
    v9 = v6[2];
  }

  else
  {
    *v7 = *(v7 - 3);
    *(v7 - 3) = 0;
    *(v7 - 2) = 0;
    v7[2] = *(v7 - 1);
    *(v7 - 1) = 0;
    v8 = v6[4];
    v9 = v6[2];
    v10 = v8 + 24 * v9 - 24;
    if (v10 != v8 + 24 * a2)
    {
      v11 = 24 * a2 - 24 * v9 + 24;
      v12 = v10;
      do
      {
        v13 = *(v12 - 3);
        v12 = (v12 - 24);
        v14 = *(v10 - 16);
        v15 = *(v10 - 8);
        *v12 = *v10;
        v16 = *(v10 + 16);
        *(v10 + 8) = v14;
        *(v10 + 16) = v15;
        *(v10 - 8) = v16;
        *v10 = v13;
        v10 = v12;
        v11 += 24;
      }

      while (v11);
      v8 = v6[4];
    }

    v17 = (v8 + 24 * a2);
    v18 = v17[1];
    v17[1] = a3[1];
    a3[1] = v18;
    v19 = *v17;
    *v17 = 0;
    *v17 = *a3;
    *a3 = v19;
    v20 = v17[2];
    v17[2] = a3[2];
    a3[2] = v20;
  }

  v6[2] = v9 + 1;
  ++*(v6 + 6);
  return this;
}

id **re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 256, 0);
  v4 = re::ecs2::AnimationComponent::AnimationComponent(v3);
  v6.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1;
  v6.n128_u64[1] = v4;
  v7 = 1;
  re::DynamicArray<re::BufferView>::add(v1, &v6);
  return v3;
}

re::ecs2::AudioPlayerComponent *re::ecs2::EntityAssetData::addComponent<re::ecs2::AudioPlayerComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 544, 0);
  v4 = re::ecs2::AudioPlayerComponent::AudioPlayerComponent(v3);
  v6.n128_u64[0] = *((*(*v4 + 40))(v4) + 24) >> 1;
  v6.n128_u64[1] = v3;
  v7 = 1;
  re::DynamicArray<re::BufferView>::add(v1, &v6);
  return v3;
}

uint64_t re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 640, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::BucketArray<re::FixedArray<unsigned short>,16ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FixedArray<unsigned short>,16ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::FixedArray<unsigned short>,16ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 16 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 384, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::TimelineGroupBuilder::TimelineGroupBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a4)
  {
    v6 = a4 + 1;
  }

  else
  {
    v6 = 0;
  }

  re::DynamicString::setCapacity((a1 + 8), v6);
  re::DynamicString::operator=((a1 + 8), v8);
  *(a1 + 40) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 48) = -8388609;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void re::ecs2::Static3DTextComponent::~Static3DTextComponent(re::ecs2::Static3DTextComponent *this)
{
  re::DynamicString::deinit((this + 248));
  re::DynamicString::deinit((this + 216));
  re::AssetHandle::~AssetHandle((this + 160));
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DynamicString::deinit((this + 248));
  re::DynamicString::deinit((this + 216));
  re::AssetHandle::~AssetHandle((this + 160));
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PrimitiveBoxComponent::~PrimitiveBoxComponent(re::ecs2::PrimitiveBoxComponent *this)
{
  *this = &unk_1F5CD0968;
  v2 = (this + 64);
  re::AssetHandle::~AssetHandle((this + 88));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD0968;
  v2 = (this + 64);
  re::AssetHandle::~AssetHandle((this + 88));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveBoxComponent,re::GeomBuildBoxOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0968;
  v2 = (a1 + 8);
  re::AssetHandle::~AssetHandle((a1 + 11));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveBoxComponent,re::GeomBuildBoxOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0968;
  v2 = (a1 + 8);
  re::AssetHandle::~AssetHandle((a1 + 11));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PrimitiveCylinderComponent::~PrimitiveCylinderComponent(re::ecs2::PrimitiveCylinderComponent *this)
{
  *this = &unk_1F5CD0A60;
  v2 = (this + 56);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD0A60;
  v2 = (this + 56);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveCylinderComponent,re::GeomBuildCylinderOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0A60;
  v2 = (a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 10));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveCylinderComponent,re::GeomBuildCylinderOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0A60;
  v2 = (a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 10));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PrimitiveConeComponent::~PrimitiveConeComponent(re::ecs2::PrimitiveConeComponent *this)
{
  *this = &unk_1F5CD0B58;
  v2 = (this + 48);
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD0B58;
  v2 = (this + 48);
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveConeComponent,re::GeomBuildConeOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0B58;
  v2 = (a1 + 6);
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveConeComponent,re::GeomBuildConeOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0B58;
  v2 = (a1 + 6);
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PrimitiveSphereComponent::~PrimitiveSphereComponent(re::ecs2::PrimitiveSphereComponent *this)
{
  *this = &unk_1F5CD0C50;
  v2 = (this + 48);
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD0C50;
  v2 = (this + 48);
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveSphereComponent,re::GeomBuildSphereOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0C50;
  v2 = (a1 + 6);
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveSphereComponent,re::GeomBuildSphereOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0C50;
  v2 = (a1 + 6);
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PrimitiveCapsuleComponent::~PrimitiveCapsuleComponent(re::ecs2::PrimitiveCapsuleComponent *this)
{
  *this = &unk_1F5CD0D48;
  v2 = (this + 56);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD0D48;
  v2 = (this + 56);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveCapsuleComponent,re::GeomBuildCapsuleOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0D48;
  v2 = (a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 10));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ecs2::PrimitiveComponentBase<re::ecs2::PrimitiveCapsuleComponent,re::GeomBuildCapsuleOptions,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::~PrimitiveComponentBase(void *a1)
{
  *a1 = &unk_1F5CD0D48;
  v2 = (a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 10));
  re::AssetHandle::~AssetHandle(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::anonymous namespace::SkeletonAndAnimationInfoPerLodLevel>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
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
        v10 = (v8 + 72 * v9);
        v11 = (v8 + 24);
        v12 = v7;
        do
        {
          v13 = *(v11 - 1);
          *v12 = *(v11 - 3);
          v12[2] = v13;
          v12[3] = 0;
          v12[4] = 0;
          v12[5] = 0;
          v12[4] = v11[1];
          v11[1] = 0;
          v14 = v12[3];
          v12[3] = 0;
          v12[3] = *v11;
          *v11 = v14;
          v15 = v12[5];
          v12[5] = v11[2];
          v11[2] = v15;
          v12[6] = 0;
          v12[7] = 0;
          v12[8] = 0;
          v12[7] = v11[4];
          v11[4] = 0;
          v16 = v12[6];
          v12[6] = 0;
          v12[6] = v11[3];
          v11[3] = v16;
          v17 = v12[8];
          v12[8] = v11[5];
          v11[5] = v17;
          re::AssetHandle::~AssetHandle((v11 + 3));
          re::AssetHandle::~AssetHandle(v11);
          v12 += 9;
          v18 = v11 + 6;
          v11 += 9;
        }

        while (v18 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::ShareableInternal<re::GeomSkeleton>::~ShareableInternal(void *a1)
{
  *a1 = &unk_1F5CD0DA0;
  v2 = a1 + 5;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 17);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<re::StringID>::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ShareableInternal<re::GeomSkeleton>::~ShareableInternal(void *a1)
{
  *a1 = &unk_1F5CD0DA0;
  v2 = a1 + 5;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 17);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<re::StringID>::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

__n128 re::BucketArray<re::anonymous namespace::EntityAnimationEntry,8ul>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 8 * v5)
  {
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 40 * (v4 & 7));
  result = *a2;
  *v8 = *a2;
  v8[1].n128_u64[1] = 0;
  v8[2].n128_u64[0] = 0;
  v8[1].n128_u64[0] = 0;
  v8[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  v10 = v8[1].n128_u64[0];
  v8[1].n128_u64[0] = 0;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v10;
  v11 = v8[2].n128_u64[0];
  v8[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v11;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::SkeletalPoseAssetData>(re *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 1) != a4)
  {
    v16 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v17 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_27;
  }

  v4 = a2;
  if (!a2[1])
  {
    v16 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v17 = "Cannot make additive values, base values array size must not be zero.";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    return 0;
  }

  *buf = 0;
  v19 = 0;
  v20 = 0;
  re::AnimationValueTraits<re::SkeletalPoseAssetData>::init(buf, *a2);
  v9 = 0;
  v10 = *(a1 + 1);
  if (v10 && v4[1])
  {
    v11 = 0;
    v9 = 0;
    while (1)
    {
      re::AnimationValueTraits<re::SkeletalPoseAssetData>::invert(*v4 + v11, buf);
      v13 = *(a1 + 1);
      if (v13 <= v9)
      {
        break;
      }

      if (a4 == v9)
      {
        goto LABEL_30;
      }

      re::AnimationValueTraits<re::SkeletalPoseAssetData>::combine(*a1 + v11, buf, a3 + v11);
      v9 = (v9 + 1);
      v10 = *(a1 + 1);
      if (v10 > v9)
      {
        v11 += 24;
        if (v4[1] > v9)
        {
          continue;
        }
      }

      v9 = v9;
      goto LABEL_11;
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v13);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v10 <= v9)
    {
LABEL_18:
      if (*buf)
      {
        if (v19)
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

    v14 = 24 * v9;
    while (v4 != v9)
    {
      re::AnimationValueTraits<re::SkeletalPoseAssetData>::combine(*a1 + v14, buf, a3 + v14);
      v9 = (v9 + 1);
      v14 += 24;
      if (*(a1 + 1) <= v9)
      {
        goto LABEL_18;
      }
    }
  }

  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, a4);
  _os_crash();
  __break(1u);
LABEL_30:
  re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *re::AnimationValueTraits<re::SkeletalPoseAssetData>::init(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 8) != result[1])
  {
    v4 = result;
    v5 = re::FixedArray<CoreIKTransform>::deinit(result);
    v6 = *(a2 + 8);
  }

  return result;
}

uint64_t re::AnimationValueTraits<re::SkeletalPoseAssetData>::invert(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v2 = 0;
    v3 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      if (*(a2 + 8) <= v3)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(result + 16) + v2);
      v10 = *(a2 + 16) + v2;
      v11 = v9[1];
      v12 = v9[2];
      v13 = vdivq_f32(_Q0, *v9);
      v14 = vnegq_f32(v11);
      v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
      v14.i32[3] = v11.i32[3];
      v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), v11), v12, v15);
      v17 = vaddq_f32(v16, v16);
      v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
      v19 = vaddq_f32(v12, vmulq_laneq_f32(v18, v11, 3));
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v11), v18, v15);
      *v10 = v13;
      *(v10 + 16) = v14;
      *(v10 + 32) = vmulq_f32(vaddq_f32(v19, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL)), vnegq_f32(v13));
      ++v3;
      v2 += 48;
    }

    while (v3 < *(result + 8));
  }

  return result;
}

void re::AnimationValueTraits<re::SkeletalPoseAssetData>::combine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(a2 + 8) <= v7)
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

      if (*(a3 + 8) <= v7)
      {
        goto LABEL_8;
      }

      re::AnimationValueTraits<re::GenericSRT<float>>::combine((*(a1 + 16) + v6), (*(a2 + 16) + v6), (*(a3 + 16) + v6));
      ++v7;
      v6 += 48;
    }

    while (v7 < *(a1 + 8));
  }
}

void *re::BucketArray<re::anonymous namespace::EntityAnimationEntry,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 320, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    ++*(v3 + 12);
  }

  return result;
}

void *re::DynamicArray<re::ModelWithLodsDescriptor>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ModelWithLodsDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ModelWithLodsDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ModelWithLodsDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ModelWithLodsDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x98uLL))
        {
          v2 = 152 * a2;
          result = (*(*result + 32))(result, 152 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 152, a2);
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
        v10 = v8 + 152 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v11[8] = 0;
          *(v11 + 14) = 0;
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = 0;
          v16 = *(v8 + 40);
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[5] = v16;
          *(v8 + 40) = 0;
          v17 = v11[6];
          v11[6] = *(v8 + 48);
          *(v8 + 48) = v17;
          v18 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v18;
          ++*(v8 + 56);
          ++*(v11 + 14);
          v11[13] = 0;
          v11[10] = 0;
          v11[11] = 0;
          v11[9] = 0;
          *(v11 + 24) = 0;
          v19 = *(v8 + 80);
          v11[9] = *(v8 + 72);
          *(v8 + 72) = 0;
          v11[10] = v19;
          *(v8 + 80) = 0;
          v20 = v11[11];
          v11[11] = *(v8 + 88);
          *(v8 + 88) = v20;
          v21 = v11[13];
          v11[13] = *(v8 + 104);
          *(v8 + 104) = v21;
          ++*(v8 + 96);
          ++*(v11 + 24);
          v11[18] = 0;
          v11[15] = 0;
          v11[16] = 0;
          v11[14] = 0;
          *(v11 + 34) = 0;
          v22 = *(v8 + 120);
          v11[14] = *(v8 + 112);
          *(v8 + 112) = 0;
          v11[15] = v22;
          *(v8 + 120) = 0;
          v23 = v11[16];
          v11[16] = *(v8 + 128);
          *(v8 + 128) = v23;
          v24 = v11[18];
          v11[18] = *(v8 + 144);
          *(v8 + 144) = v24;
          ++*(v8 + 136);
          ++*(v11 + 34);
          re::DynamicArray<unsigned long>::deinit(v8 + 112);
          re::DynamicArray<unsigned long>::deinit(v8 + 72);
          re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v8 + 32);
          re::DynamicString::deinit(v8);
          v11 += 19;
          v8 += 152;
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

__n128 re::make::shared::object<re::ShareableInternal<re::GeomInstance>,re::GeomInstance>@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 112, 16);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *v5 = &unk_1F5CD0DE8;
  *(v5 + 32) = *a1;
  result = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  *(v5 + 80) = *(a1 + 48);
  *(v5 + 96) = v8;
  *(v5 + 48) = result;
  *(v5 + 64) = v7;
  *a2 = v5;
  return result;
}

void *re::ShareableInternal<re::GeomInstance>::~ShareableInternal(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::ShareableInternal<re::GeomInstance>::~ShareableInternal(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        v7 = *(a2 + 16);
        *(result + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

void re::anonymous namespace::warnIgnoredAttribute(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v9 = " affector";
  }

  else
  {
    v9 = "";
  }

  v10 = *(a1 + 24);
  v11 = *re::pipelineLogObjects(a1);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 == a2)
  {
    if (v12)
    {
      v13 = v11;
      v14 = *(a1 + 16);
      v15 = *(a3 + 24);
      v16 = *(a4 + 8);
      v23 = 136315906;
      v24 = v14;
      v25 = 2080;
      v26 = v9;
      v27 = 2080;
      v28 = v15;
      v29 = 2080;
      v30 = v16;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Invalid attribute '%s' in %s%s for model %s, attribute ignored.", &v23, 0x2Au);
    }
  }

  else if (v12)
  {
    v17 = v11;
    v18 = *(a1 + 16);
    v19 = *(a3 + 24);
    v20 = *(a4 + 8);
    TypeName = re::GeomDeformer::Attribute::getTypeName(a2);
    v22 = re::GeomDeformer::Attribute::getTypeName(*(a1 + 24));
    v23 = 136316418;
    v24 = v18;
    v25 = 2080;
    v26 = v19;
    v27 = 2080;
    v28 = v9;
    v29 = 2080;
    v30 = v20;
    v31 = 2080;
    v32 = TypeName;
    v33 = 2080;
    v34 = v22;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Incorrect type for attribute '%s' in %s%s for model %s, attribute ignored (expected '%s', got '%s').", &v23, 0x3Eu);
  }
}

uint64_t re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::add(uint64_t result, _BYTE *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v6) ^ ((0xBF58476D1CE4E5B9 * v6) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (*result)
  {
    v9 = v8 % *(result + 24);
    v10 = *(*(result + 8) + 4 * v9);
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(result + 16);
      if (*(v11 + 56 * v10 + 4) == v6)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v10) = *(v11 + 56 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v11 + 56 * v10 + 4) == v6)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v12 = re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::allocEntry(result, v9, v8);
  *(v12 + 4) = *a2;
  v13 = *a3;
  *a3 = 0;
  *(v12 + 8) = v13;
  result = std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::__value_func[abi:nn200100](v12 + 16, (a3 + 1));
  ++*(v5 + 40);
  return result;
}

uint64_t re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshSmoothComponent>(void *a1)
{
  if (!a1[4])
  {
    return 0;
  }

  v1 = a1[6];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[8] + 8;
  v3 = 24 * v1;
  while (*(v2 - 8) != *(re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1)
  {
    v2 += 24;
    v3 -= 24;
    if (!v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshOffsetsComponent>(void *a1)
{
  if (!a1[4])
  {
    return 0;
  }

  v1 = a1[6];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[8] + 8;
  v3 = 24 * v1;
  while (*(v2 - 8) != *(re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1)
  {
    v2 += 24;
    v3 -= 24;
    if (!v3)
    {
      return 0;
    }
  }

  return *v2;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetJiggleDeformerData>::add(_anonymous_namespace_ *result, uint64_t *a2)
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

        result = re::DynamicArray<re::MeshAssetJiggleDeformerData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::MeshAssetJiggleDeformerData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 48 * v5;
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v13 = a2[2];
  *(v11 + 16) = *(v11 + 16) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 16) = a2[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 24) = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  v14 = a2[4];
  *(v11 + 40) = *(a2 + 20);
  *(v11 + 32) = v14;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t std::__function::__func<re::anonymous namespace::wireupDeformers(re::ecs2::EntityAssetData &,re::StringSlice const&,re::SceneImportOperation &,re::MeshAssetData &,re::BucketArray<re::GeomDeformerStack,8ul> const&,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> &)::$_0,std::allocator<re::anonymous namespace::wireupDeformers(re::ecs2::EntityAssetData &,re::StringSlice const&,re::SceneImportOperation &,re::MeshAssetData &,re::BucketArray<re::GeomDeformerStack,8ul> const&,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> &)::$_0>,void ()(re::MeshDeformationAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::MeshDeformationAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

const char *re::GeomDeformer::Attribute::getTypeName(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "float";
  }

  else
  {
    return off_1E871BE58[a1 - 1];
  }
}

uint64_t re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::SkeletalPoseComponent>(void *a1)
{
  if (!a1[4])
  {
    return 0;
  }

  v1 = a1[6];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[8] + 8;
  v3 = 24 * v1;
  while (*(v2 - 8) != *(re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1)
  {
    v2 += 24;
    v3 -= 24;
    if (!v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::RigComponent>(void *a1)
{
  if (!a1[4])
  {
    return 0;
  }

  v1 = a1[6];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[8] + 8;
  v3 = 24 * v1;
  while (*(v2 - 8) != *(re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1)
  {
    v2 += 24;
    v3 -= 24;
    if (!v3)
    {
      return 0;
    }
  }

  return *v2;
}

void re::ecs2::MeshSmoothComponent::~MeshSmoothComponent(re::ecs2::MeshSmoothComponent *this)
{
  *this = &unk_1F5CD0EC0;
  v2 = this + 72;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::FixedArray<CoreIKTransform>::deinit(this + 36);
  re::DynamicArray<unsigned long>::deinit(this + 232);
  re::DynamicArray<unsigned long>::deinit(this + 192);
  re::FramePersistentPtr<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs,re::FrameManager>::~FramePersistentPtr(this + 17);
  re::AssetHandle::~AssetHandle((this + 112));
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<unsigned long>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD0EC0;
  v2 = this + 72;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::FixedArray<CoreIKTransform>::deinit(this + 36);
  re::DynamicArray<unsigned long>::deinit(this + 232);
  re::DynamicArray<unsigned long>::deinit(this + 192);
  re::FramePersistentPtr<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs,re::FrameManager>::~FramePersistentPtr(this + 17);
  re::AssetHandle::~AssetHandle((this + 112));
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<unsigned long>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

id *re::FramePersistentPtr<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t re::FramePersistentPtr<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD0F48;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

re *re::internal::destroyPersistent<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::FixedArray<CoreIKTransform>::deinit((a3 + 16));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshSmoothComponent::SmoothDeformerInputs*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD0F48;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshSmoothComponent::SmoothDeformerInputs*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD0F48;
  return result;
}

uint64_t re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::allocEntry(a1, *(v13 + 48) % *(a1 + 24));
                *(v17 + 4) = *(v13 + 4);
                v18 = *(v13 + 8);
                *(v13 + 8) = 0;
                *(v17 + 8) = v18;
                std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::__value_func[abi:nn200100](v17 + 16, v13 + 16);
              }

              v13 += 56;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 56 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 56 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 56 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 48) = a3;
  ++*(a1 + 28);
  return v19 + 56 * v5;
}

uint64_t std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<re::anonymous namespace::wireupDeformers(re::ecs2::EntityAssetData &,re::StringSlice const&,re::SceneImportOperation &,re::MeshAssetData &,re::BucketArray<re::GeomDeformerStack,8ul> const&,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> &)::$_1,std::allocator<re::anonymous namespace::wireupDeformers(re::ecs2::EntityAssetData &,re::StringSlice const&,re::SceneImportOperation &,re::MeshAssetData &,re::BucketArray<re::GeomDeformerStack,8ul> const&,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> &)::$_1>,void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = a1[4];
  v6 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
LABEL_4:
    std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::~__value_func[abi:nn200100]((a1 + 1));
    return a1;
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 2) >> 31) ^ (*(v17 - 2) >> 1));
                v19 = re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = *(v17 - 2);
                v19[1] = v19[1] & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[1] = *(v17 - 2) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[2] = *(v17 - 1);
                *(v17 - 2) = 0;
                *(v17 - 1) = &str_67;
                v21 = *v17;
                v19[3] = v19[3] & 0xFFFFFFFFFFFFFFFELL | *v17 & 1;
                v19[3] = *v17 & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v19[4] = v17[1];
                *v17 = 0;
                v17[1] = &str_67;
                v22 = v17[2];
                v19[5] = v19[5] & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v19[5] = v17[2] & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v19[6] = v17[3];
                v17[2] = 0;
                v17[3] = &str_67;
              }

              v17 += 7;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 56 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 56 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 56 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 56 * v4;
}

void re::ecs2::MeshOffsetsComponent::~MeshOffsetsComponent(re::ecs2::MeshOffsetsComponent *this)
{
  *this = &unk_1F5CD1030;
  v2 = this + 32;
  re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::~FramePersistentPtr(this + 20);
  re::FixedArray<CoreIKTransform>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::AssetHandle::~AssetHandle((this + 72));
  re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD1030;
  v2 = this + 32;
  re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::~FramePersistentPtr(this + 20);
  re::FixedArray<CoreIKTransform>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::AssetHandle::~AssetHandle((this + 72));
  re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

id *re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD10B8;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

re *re::internal::destroyPersistent<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::FixedArray<re::OffsetDeformerInput>::deinit((a3 + 16));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD10B8;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD10B8;
  return result;
}

void *re::FixedArray<re::OffsetDeformerInput>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 176 * v2;
      v5 = result[2] + 136;
      do
      {
        v6 = *(v5 + 24);
        if (v6 != -1)
        {
          (off_1F5CD0418[v6])(&v7, v5);
        }

        *(v5 + 24) = -1;
        v5 += 176;
        v4 -= 176;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::deinit(uint64_t a1)
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
        v5 = 192 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 192;
          v5 -= 192;
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

uint64_t std::__function::__func<re::anonymous namespace::wireupDeformers(re::ecs2::EntityAssetData &,re::StringSlice const&,re::SceneImportOperation &,re::MeshAssetData &,re::BucketArray<re::GeomDeformerStack,8ul> const&,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> &)::$_2,std::allocator<re::anonymous namespace::wireupDeformers(re::ecs2::EntityAssetData &,re::StringSlice const&,re::SceneImportOperation &,re::MeshAssetData &,re::BucketArray<re::GeomDeformerStack,8ul> const&,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> &)::$_2>,void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC0uLL))
        {
          v2 = 192 * a2;
          result = (*(*result + 32))(result, 192 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 192, a2);
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
        v10 = v8 + 192 * v9;
        v11 = v7 + 3;
        do
        {
          v11[1] = 0;
          *(v11 - 2) = 0;
          *(v11 - 1) = 0;
          *(v11 - 3) = 0;
          *v11 = 0;
          v12 = *(v8 + 8);
          *(v11 - 3) = *v8;
          *(v11 - 2) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 1);
          *(v11 - 1) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = v11[1];
          v11[1] = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*v11;
          *(v11 + 3) = *(v8 + 48);
          v15 = *(v8 + 64);
          v16 = *(v8 + 80);
          v17 = *(v8 + 96);
          *(v11 + 11) = *(v8 + 112);
          *(v11 + 9) = v17;
          *(v11 + 7) = v16;
          *(v11 + 5) = v15;
          v18 = *(v8 + 128);
          v19 = *(v8 + 144);
          v20 = *(v8 + 160);
          *(v11 + 38) = *(v8 + 176);
          *(v11 + 17) = v20;
          *(v11 + 15) = v19;
          *(v11 + 13) = v18;
          re::DynamicArray<unsigned long>::deinit(v8);
          v8 += 192;
          v11 += 24;
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

double re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>::~unique_ptr[abi:nn200100]((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t *std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::MeshDeformationAsset *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::MeshDeformationAsset *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::MeshDeformationAsset *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1E21ECD40);
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<re::anonymous namespace::wireupVertexCacheAnimations(float,re::ecs2::EntityAssetData &,re::StringSlice const&,re::SceneImportOperation &,re::MeshAssetData &,re::BucketArray<re::VertexCacheAnimationData *,8ul> const&,re::BucketArray<re::anonymous namespace::EntityAnimationEntry,8ul> &)::$_0,std::allocator<re::anonymous namespace::wireupVertexCacheAnimations(float,re::ecs2::EntityAssetData &,re::StringSlice const&,re::SceneImportOperation &,re::MeshAssetData &,re::BucketArray<re::VertexCacheAnimationData *,8ul> const&,re::BucketArray<re::anonymous namespace::EntityAnimationEntry,8ul> &)::$_0>,void ()(re::VertexCacheAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::VertexCacheAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void re::ecs2::VertexCacheComponent::~VertexCacheComponent(id *this)
{
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::~FramePersistentPtr(this + 24);
  re::DynamicArray<re::BindPoint>::deinit((this + 19));
  re::DynamicArray<unsigned long>::deinit((this + 14));
  re::DynamicArray<unsigned long>::deinit((this + 9));
  re::DynamicArray<re::AssetHandle>::deinit((this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::~FramePersistentPtr(this + 24);
  re::DynamicArray<re::BindPoint>::deinit((this + 19));
  re::DynamicArray<unsigned long>::deinit((this + 14));
  re::DynamicArray<unsigned long>::deinit((this + 9));
  re::DynamicArray<re::AssetHandle>::deinit((this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

id *re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD12A8;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::VertexCacheComponent::VertexCacheInputs>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

re *re::internal::destroyPersistent<re::ecs2::VertexCacheComponent::VertexCacheInputs>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::FixedArray<re::VertexCacheDeformerInput>::deinit((a3 + 16));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::VertexCacheComponent::VertexCacheInputs*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD12A8;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::VertexCacheComponent::VertexCacheInputs*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD12A8;
  return result;
}

void *re::FixedArray<re::VertexCacheDeformerInput>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 88 * v2;
      v5 = result[2] + 40;
      do
      {
        v6 = *(v5 + 24);
        if (v6 != -1)
        {
          (off_1F5CD0418[v6])(&v8, v5);
        }

        *(v5 + 24) = -1;
        v7 = *(v5 - 16);
        if (v7 != -1)
        {
          (off_1F5CD0418[v7])(&v9, v5 - 40);
        }

        *(v5 - 16) = -1;
        v5 += 88;
        v4 -= 88;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::BindPoint>::deinit(uint64_t a1)
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
        v5 = v3 + 8;
        v6 = 48 * v4;
        do
        {
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5);
          v5 += 48;
          v6 -= 48;
        }

        while (v6);
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

void *re::DynamicArray<re::MeshAssetData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshAssetData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xD0uLL))
        {
          v2 = 208 * a2;
          result = (*(*result + 32))(result, 208 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 208, a2);
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
        v10 = 208 * v9;
        v11 = v7;
        do
        {
          re::MeshAssetData::MeshAssetData(v11, v8);
          re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v8 + 168);
          re::DynamicArray<unsigned long>::deinit(v8 + 120);
          re::DynamicArray<re::MeshAssetSkeleton>::deinit(v8 + 80);
          re::DynamicArray<re::MeshAssetInstance>::deinit(v8 + 40);
          re::DynamicArray<re::MeshAssetModel>::deinit(v8);
          v8 += 208;
          v11 += 208;
          v10 -= 208;
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

void re::TimelineGroupBuilder::addTimeline(uint64_t a1, const re::AssetHandle *a2, uint64_t a3, uint64_t a4, const char *a5, float32_t a6, float a7)
{
  v58 = *MEMORY[0x1E69E9840];
  v44[0] = a3;
  v44[1] = a4;
  v39 = 0uLL;
  if (a4)
  {
    v12 = a4 + 1;
  }

  else
  {
    v12 = 0;
  }

  *(&v38 + 1) = 0;
  re::DynamicString::setCapacity(&v38, v12);
  re::DynamicString::operator=(&v38, v44);
  v40 = __PAIR64__(LODWORD(a7), LODWORD(a6));
  re::AssetHandle::AssetHandle(&v41, a2);
  v13 = *(a1 + 96);
  v14 = *(a1 + 64);
  if (v13 + 1 > 8 * v14)
  {
    re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::setBucketsCapacity((a1 + 56), (v13 + 8) >> 3);
    v14 = *(a1 + 64);
  }

  if (v14 <= v13 >> 3)
  {
    v44[2] = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v45 = 136315906;
    v46 = "operator[]";
    v47 = 1024;
    v48 = 858;
    v49 = 2048;
    v50 = v13 >> 3;
    v51 = 2048;
    v52 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 72))
  {
    v15 = a1 + 80;
  }

  else
  {
    v15 = *(a1 + 88);
  }

  v16 = *(v15 + 8 * (v13 >> 3));
  ++*(a1 + 96);
  ++*(a1 + 104);
  v17 = v16 + 96 * (v13 & 7);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 24) = v37;
  v18 = v35;
  *v17 = v34;
  v19 = v36;
  v34 = 0;
  v37 = 0;
  v21 = *(v17 + 8);
  v20 = *(v17 + 16);
  *(v17 + 8) = v18;
  *(v17 + 16) = v19;
  v35 = v21;
  v36 = v20;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 56) = *(&v39 + 1);
  v22 = *(&v38 + 1);
  *(v17 + 32) = v38;
  v23 = v39;
  *&v38 = 0;
  *(&v39 + 1) = 0;
  v25 = *(v17 + 40);
  v24 = *(v17 + 48);
  *(v17 + 40) = v22;
  *(v17 + 48) = v23;
  *(&v38 + 1) = v25;
  *&v39 = v24;
  *(v17 + 64) = v40;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 80) = v42;
  v42 = 0;
  v26 = *(v17 + 72);
  *(v17 + 72) = 0;
  *(v17 + 72) = v41;
  v41 = v26;
  v27 = *(v17 + 88);
  *(v17 + 88) = v43;
  v43 = v27;
  re::AssetHandle::~AssetHandle(&v41);
  if (v38)
  {
    if (BYTE8(v38))
    {
      (*(*v38 + 40))();
    }

    v38 = 0u;
    v39 = 0u;
  }

  if (v34 && (v35 & 1) != 0)
  {
    (*(*v34 + 40))();
  }

  v28.i32[0] = *(a1 + 40);
  v28.f32[1] = a7;
  v29.i32[1] = HIDWORD(*(a1 + 40));
  v29.f32[0] = a6;
  v30 = vcgt_f32(v28, v29);
  v28.f32[0] = a6;
  *(a1 + 40) = vbsl_s8(v30, v28, *(a1 + 40));
  v31 = *(a1 + 48);
  if (v31 < a7)
  {
    v31 = a7;
  }

  *(a1 + 48) = v31;
}

void *re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 768, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::DynamicArray<re::FixedArray<re::StringID>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(a1, a2[2]);
      v13 = a2[4];
      v14 = *(a1 + 16);
      v15 = *(a1 + 32);
      if (v14)
      {
        v16 = 24 * v14;
        do
        {
          re::FixedArray<re::StringID>::operator=(v15, v13);
          v13 += 24;
          v15 += 3;
          v16 -= 24;
        }

        while (v16);
        v15 = *(a1 + 32);
        v14 = *(a1 + 16);
        v13 = a2[4];
      }

      if (v14 != v6)
      {
        v17 = 3 * v14;
        v18 = v13 + 8 * v17;
        v19 = &v15[v17];
        v20 = 24 * v6 - 8 * v17;
        do
        {
          v21 = re::FixedArray<re::StringID>::FixedArray(v19, v18);
          v18 += 24;
          v19 = v21 + 3;
          v20 -= 24;
        }

        while (v20);
      }
    }

    else
    {
      v8 = *(a1 + 32);
      if (v6)
      {
        v9 = a2[4];
        v10 = 24 * v6;
        do
        {
          re::FixedArray<re::StringID>::operator=(v8, v9);
          v9 += 24;
          v8 += 3;
          v10 -= 24;
        }

        while (v10);
        v8 = *(a1 + 32);
        v7 = *(a1 + 16);
      }

      if (v6 != v7)
      {
        v11 = &v8[3 * v6];
        v12 = 24 * v7 - 24 * v6;
        do
        {
          re::FixedArray<re::StringID>::deinit(v11);
          v11 += 3;
          v12 -= 24;
        }

        while (v12);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

unint64_t *std::__copy_impl::operator()[abi:nn200100]<re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *>(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = &v5[v6];
      *(a3 + v6 * 8) = v5[v6];
      re::StringID::operator=((a3 + v6 * 8 + 8), &v5[v6 + 1]);
      re::StringID::operator=((a3 + v6 * 8 + 24), &v5[v6 + 3]);
      result = re::StringID::operator=((a3 + v6 * 8 + 40), &v5[v6 + 5]);
      *(a3 + v6 * 8 + 56) = v5[v6 + 7];
      v6 += 8;
    }

    while (v7 + 8 != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::AnimationSceneEntityData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AnimationSceneEntityData>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 88 * v6;
          do
          {
            re::AssetHandle::~AssetHandle((v7 + 64));
            re::DynamicArray<re::AnimationSceneEntityData>::deinit(v7 + 16);
            re::StringID::destroyString(v7);
            v7 += 88;
            v8 -= 88;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AnimationSceneEntityData>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::AnimationSceneEntityData>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::AnimationSceneEntityData *,re::AnimationSceneEntityData *,re::AnimationSceneEntityData *>(&v14, *(a2 + 32), *(a2 + 32) + 88 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 88 * v8;
      v12 = 88 * v4;
      do
      {
        re::StringID::StringID((v10 + v11), (v9 + v11));
        re::DynamicArray<re::AnimationSceneEntityData>::DynamicArray(v10 + v11 + 16, (v9 + v11 + 16));
        *(v10 + v11 + 56) = *(v9 + v11 + 56);
        re::AssetHandle::AssetHandle((v10 + v11 + 64), (v9 + v11 + 64));
        v9 += 88;
        v12 -= 88;
        v10 += 88;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::AnimationSceneEntityData *,re::AnimationSceneEntityData *,re::AnimationSceneEntityData *>(&v13, *(a2 + 32), *(a2 + 32) + 88 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 88 * v4;
      v7 = -88 * v4 + 88 * v5;
      do
      {
        re::AssetHandle::~AssetHandle((v6 + 64));
        re::DynamicArray<re::AnimationSceneEntityData>::deinit(v6 + 16);
        re::StringID::destroyString(v6);
        v6 += 88;
        v7 -= 88;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::AnimationSceneEntityData *,re::AnimationSceneEntityData *,re::AnimationSceneEntityData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    re::StringID::operator=((a4 + v7), (a2 + v7));
    re::DynamicArray<re::AnimationSceneEntityData>::operator=(a4 + v7 + 16, a2 + v7 + 16);
    *(a4 + v7 + 56) = *(a2 + v7 + 56);
    re::AssetHandle::operator=(a4 + v7 + 64, (a2 + v7 + 64));
    v7 += 88;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::AnimationSceneEntityData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AnimationSceneEntityData>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 96 * (a2 & 7);
}

uint64_t re::DynamicArray<re::ModelWithLodsDescriptor>::deinit(uint64_t a1)
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
        v5 = 152 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 112);
          re::DynamicArray<unsigned long>::deinit(v3 + 72);
          re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v3 + 32);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 152);
          v5 -= 152;
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

uint64_t re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::operator[](a1, i);
      re::AssetHandle::~AssetHandle((v4 + 72));
      re::DynamicString::deinit((v4 + 32));
      re::DynamicString::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = *a1;
  if (*a1)
  {
    v6 = *(a1 + 16);
    if ((v6 & 1) == 0)
    {
      result = (*(*result + 40))(result, *(a1 + 32));
      v6 = *(a1 + 16);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = (v6 | 1) + 2;
  }

  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

void *re::DynamicArray<re::DeformationDefinition>::insert(void *this, unint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = this[2];
  if (v4 + 1 <= a2)
  {
    memset(v16, 0, sizeof(v16));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = this;
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::DeformationDefinition>::growCapacity(this, v4 + 1);
    v4 = v6[2];
  }

  v7 = (v6[4] + 40 * v4);
  if (v4 <= a2)
  {
    v14 = *a3;
    *v7 = *v7 & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
    *v7 = *a3 & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
    v7[1] = a3[1];
    *a3 = 0;
    a3[1] = &str_67;
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[2] = a3[2];
    a3[2] = 0;
    v7[3] = a3[3];
    a3[3] = 0;
    v15 = v7[4];
    v7[4] = a3[4];
    a3[4] = v15;
  }

  else
  {
    v8 = *(v7 - 5);
    v9 = *(v7 - 2);
    *(v7 - 5) = 0;
    *(v7 - 4) = &str_67;
    *(v7 + 1) = v9;
    v10 = *(v7 - 2);
    v11 = *(v7 - 1);
    *(v7 - 1) = 0;
    *v7 = v8;
    *(v7 - 3) = 0;
    *(v7 - 2) = 0;
    v7[3] = v10;
    v7[4] = v11;
    v12 = 5 * a2;
    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::DeformationDefinition *,re::DeformationDefinition *,re::DeformationDefinition *>(v16, v6[4] + 8 * v12, v6[4] + 40 * v6[2] - 40, v6[4] + 40 * v6[2]);
    v13 = re::StringID::operator=((v6[4] + 8 * v12), a3);
    this = re::FixedArray<float>::operator=(v13 + 2, a3 + 2);
  }

  ++v6[2];
  ++*(v6 + 6);
  return this;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::DeformationDefinition *,re::DeformationDefinition *,re::DeformationDefinition *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      re::StringID::operator=((a4 - 40), (v7 - 40));
      re::FixedArray<float>::operator=((a4 - 24), (v7 - 24));
      a4 -= 40;
      v7 -= 40;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t re::cloneCollisionShapeData(uint64_t this, re::CollisionShapeData *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 8);
    if (v3 > 3)
    {
      switch(v3)
      {
        case 4:
          v6 = re::globalAllocators(this);
          this = (*(*v6[2] + 32))(v6[2], 24, 8);
          *(this + 8) = 4;
          *this = &unk_1F5CC9468;
          *(this + 12) = *(v2 + 12);
          break;
        case 6:
          v8 = re::globalAllocators(this);
          this = (*(*v8[2] + 32))(v8[2], 48, 16);
          *(this + 8) = 6;
          *this = &unk_1F5CC95B8;
          *(this + 16) = 0u;
          *(this + 16) = *(v2 + 16);
          *(this + 32) = *(v2 + 32);
          break;
        case 7:
          break;
        default:
          return 0;
      }
    }

    else
    {
      switch(v3)
      {
        case 1:
          v5 = re::globalAllocators(this);
          this = (*(*v5[2] + 32))(v5[2], 16, 8);
          *(this + 8) = 1;
          *this = &unk_1F5CC9580;
          break;
        case 2:
          v7 = re::globalAllocators(this);
          this = (*(*v7[2] + 32))(v7[2], 16, 8);
          *(this + 8) = 2;
          *this = &unk_1F5CC9628;
          *(this + 12) = *(v2 + 12);
          break;
        case 3:
          v4 = re::globalAllocators(this);
          this = (*(*v4[2] + 32))(v4[2], 32, 16);
          *(this + 8) = 3;
          *this = &unk_1F5CC9400;
          *(this + 16) = 0u;
          *(this + 16) = *(v2 + 16);
          break;
        default:
          return 0;
      }
    }
  }

  return this;
}

re *re::convertCompoundToCollisionShape(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0;
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v5 = a2;
  v44 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a2 + 624, a4);
  v7 = re::globalAllocators(v44);
  v9 = v7[2];
  if (*(a1 + 8) == 7)
  {
    v10 = re::globalAllocators(v7);
    v11 = (*(*v10[2] + 32))(v10[2], 72, 8);
    *(v11 + 8) = 7;
    *v11 = &unk_1F5CC94A0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    *(v11 + 48) = 0;
    v12 = *(a1 + 24);
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v42 = v9;
    re::FixedArray<unsigned long>::init<>(&v50, v9, v12);
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = *(a1 + 32);
      v43 = &v17[6 * v14];
      do
      {
        v18 = *v17;
        v19 = *(v17 + 3);
        *v56 = *(v17 + 1);
        *&v56[16] = v19;
        *&v56[32] = v17[5];
        v20 = v5;
        v21 = v5;
        v22 = v4;
        v23 = re::convertCompoundToCollisionShape(v18, v21, a3, v4);
        v25 = v51;
        if (v51 <= v16)
        {
          v47 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v57 = 136315906;
          v58 = "operator[]";
          v59 = 1024;
          v60 = 468;
          v61 = 2048;
          v62 = v16;
          v63 = 2048;
          v64 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_28:
          v55 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v57 = 136315906;
          v58 = "operator[]";
          v59 = 1024;
          v60 = 468;
          v61 = 2048;
          v62 = v16;
          v63 = 2048;
          v64 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v55 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v57 = 136315906;
          v58 = "operator[]";
          v59 = 1024;
          v60 = 468;
          v61 = 2048;
          v62 = v16;
          v63 = 2048;
          v64 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v26 = v23;
        v27 = v24;
        *(v52 + 8 * v16) = v24;
        v28 = re::globalAllocators(v23);
        v29 = (*(*v28[2] + 32))(v28[2], 16, 8);
        *v29 = v26;
        v29[1] = v27;
        v30 = re::DynamicString::format("%s_primitive", &v47, *(v44 + 2));
        v31 = *(a3 + 104);
        if (v48)
        {
          v32 = *&v49[7];
        }

        else
        {
          v32 = v49;
        }

        *&v65 = 0;
        *(&v65 + 1) = &str_67;
        v33 = *(&v65 + 1);
        v34 = strlen(*(&v65 + 1));
        v35 = re::CollisionShapeAsset::assetType(v34);
        v36 = re::ImportAssetTable::addAsset(v31, v33, v34, v29, v35);
        v37 = v36;
        if (v65)
        {
          if (v65)
          {
          }
        }

        memset(v46, 0, sizeof(v46));
        v4 = v22;
        if (*(v37 + 8))
        {
          v38 = *(v37 + 2);
        }

        else
        {
          v38 = (v37 + 9);
        }

        v5 = v20;
        v25 = *(v11 + 24);
        if (v25 <= v16)
        {
          goto LABEL_28;
        }

        re::AssetHandle::operator=(*(v11 + 32) + v15 + 48, v46);
        v25 = *(v11 + 24);
        if (v25 <= v16)
        {
          goto LABEL_29;
        }

        v39 = *(v11 + 32) + v15;
        v40 = *&v56[24];
        *(v39 + 16) = *&v56[8];
        *(v39 + 32) = v40;
        re::AssetHandle::~AssetHandle(v46);
        if (v47 && (v48 & 1) != 0)
        {
          (*(*v47 + 40))();
        }

        v17 += 6;
        v15 += 80;
        ++v16;
      }

      while (v17 != v43);
    }

    *(v11 + 40) = 1;
    re::convertToCompoundPrimitiveCollisionShape(v11, &v50, v42, v42);
    if (v50 && v51)
    {
      (*(*v50 + 40))();
    }
  }

  else
  {
    v53 = re::cloneCollisionShapeData(a1, v8);
    re::convertFromSerializable(v53, &v54, v9, v9, 1);
    return v53;
  }

  return v11;
}

uint64_t re::convertToCompoundPrimitiveCollisionShape(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 24);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  re::FixedArray<unsigned long>::init<>(&v25, a4, v8);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  re::FixedArray<re::Pose<float>>::init<>(&v22, a4, v8);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = &v37;
    v12 = v26;
    v13 = v23;
    v14 = 16;
    while (1)
    {
      v15 = a2[1];
      if (v15 <= v10)
      {
        break;
      }

      if (v12 == v10)
      {
        goto LABEL_17;
      }

      *(v27 + 8 * v10) = *(a2[2] + 8 * v10);
      v15 = *(a1 + 24);
      if (v15 <= v10)
      {
        goto LABEL_18;
      }

      if (v13 == v10)
      {
        goto LABEL_19;
      }

      v16 = (*(a1 + 32) + v14);
      v17 = (v24 + v9);
      v18 = v16[1];
      *v17 = *v16;
      v17[1] = v18;
      ++v10;
      v14 += 80;
      v9 += 32;
      if (v8 == v10)
      {
        goto LABEL_8;
      }
    }

    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    v32 = 476;
    v33 = 2048;
    v34 = v10;
    v35 = 2048;
    v36 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v28 = 0;
    v11[3] = 0u;
    v11[4] = 0u;
    v11[2] = 0u;
    v37 = 0u;
    v38 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    v32 = 468;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v28 = 0;
    v11[3] = 0u;
    v11[4] = 0u;
    v11[2] = 0u;
    v37 = 0u;
    v38 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    v32 = 476;
    v33 = 2048;
    v34 = v10;
    v35 = 2048;
    v36 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v28 = 0;
    v11[3] = 0u;
    v11[4] = 0u;
    v11[2] = 0u;
    v37 = 0u;
    v38 = 0u;
    a3 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    v32 = 468;
    v33 = 2048;
    v34 = v13;
    v35 = 2048;
    v36 = v13;
    _os_log_send_and_compose_impl();
    v19 = _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

LABEL_8:
  a2 = &re::StackScratchAllocator::s_rootsWithPersistentBlocks[17];
  {
LABEL_20:
    re::initCollision(v19);
    v19 = a2[252];
  }

  v20 = (*(*v19 + 160))(v19, a3, v27, v24, v8, *(a1 + 40), 0);
  if (v22 && v23)
  {
    (*(*v22 + 40))(v22, v24);
  }

  if (v25 && v26)
  {
    (*(*v25 + 40))(v25, v27);
  }

  return v20;
}

uint64_t re::ecs2::EntityAssetData::addComponent<re::ecs2::RigidBodyComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 400, 0);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CD1388;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0x3F80000000000000;
  *(v4 + 64) = vdupq_n_s32(0x3DCCCCCDu);
  *(v4 + 80) = 1065353216;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 96) = 0;
  *(v4 + 120) = 2;
  *(v4 + 124) = 0;
  *(v4 + 132) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 16842752;
  *(v4 + 148) = 0xBD4CCCCDBCA3D70ALL;
  *(v4 + 156) = 1;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0;
  objc_initWeak((v4 + 280), 0);
  *(v3 + 288) = 2;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0x3F80000000000000;
  *(v3 + 384) = 0;
  *(v3 + 344) = 0;
  *(v3 + 352) = 0;
  *(v3 + 336) = 0;
  v6.n128_u64[0] = *((*(*v3 + 40))(v3) + 24) >> 1;
  v6.n128_u64[1] = v3;
  v7 = 1;
  re::DynamicArray<re::BufferView>::add(v1, &v6);
  return v3;
}

void re::ecs2::ColliderComponent::~ColliderComponent(re::ecs2::ColliderComponent *this)
{
  *this = &unk_1F5CD1300;
  objc_destroyWeak(this + 20);
  *(this + 20) = 0;
  std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::~unique_ptr[abi:nn200100](this + 15);
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD1300;
  objc_destroyWeak(this + 20);
  *(this + 20) = 0;
  std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::~unique_ptr[abi:nn200100](this + 15);
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::CollisionObject *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::CollisionObject *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::CollisionObject *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::CollisionObject *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(re::CollisionObject *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void re::ecs2::RigidBodyComponent::~RigidBodyComponent(re::ecs2::RigidBodyComponent *this)
{
  *this = &unk_1F5CD1388;
  std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::~unique_ptr[abi:nn200100](this + 44);
  objc_destroyWeak(this + 35);
  *(this + 35) = 0;
  re::AssetHandle::~AssetHandle((this + 248));
  re::AssetHandle::~AssetHandle((this + 224));
  re::AssetHandle::~AssetHandle((this + 96));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD1388;
  std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::~unique_ptr[abi:nn200100](this + 44);
  objc_destroyWeak(this + 35);
  *(this + 35) = 0;
  re::AssetHandle::~AssetHandle((this + 248));
  re::AssetHandle::~AssetHandle((this + 224));
  re::AssetHandle::~AssetHandle((this + 96));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::RigidBody *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::RigidBody *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::RigidBody *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::RigidBody *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(re::RigidBody *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::create(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1410;
  *a1 = v3;
}

void re::ecs2::GroundPlaneComponent::~GroundPlaneComponent(re::ecs2::GroundPlaneComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::create(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1498;
  *a1 = v3;
}

void re::ecs2::PhysicsOriginComponent::~PhysicsOriginComponent(re::ecs2::PhysicsOriginComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = (v6 + v4 + 40);
          re::StringID::destroyString((v6 + v4 + 8));
          re::StringID::destroyString(v9);
          re::StringID::destroyString((v8 + 24));
          v3 = *(a1 + 8);
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void *re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 1536, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + 48 * (a2 & 0x1F);
}

double re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 328;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicString const&>(uint64_t a1, uint64_t a2, const char **a3, const re::DynamicString *a4)
{
  v7 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  re::DynamicString::DynamicString((v7 + 40), a4);
  ++*(a1 + 40);
  return v7 + 40;
}

double re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 72;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::DynamicString::deinit((a1 + 16));
    v3 = *(a1 + 48);
  }
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::addInternal<re::ImportMaterialSignature,re::MaterialInfoUSK const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 40) = *(a3 + 32);
  v8 = *(a3 + 16);
  *(v7 + 16) = *(a3 + 8);
  *(a3 + 8) = 0;
  v9 = *(a3 + 24);
  *(a3 + 32) = 0;
  v11 = *(v7 + 24);
  v10 = *(v7 + 32);
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(v7 + 48) = *a4;
  v7 += 48;
  v12 = *(a4 + 12);
  *(v7 + 8) = *(a4 + 8);
  *(v7 + 12) = v12;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::findEntry<re::ImportMaterialSignature>@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_9:
    v12 = 0x7FFFFFFF;
    goto LABEL_10;
  }

  v9 = (a2 + 8);
  v10 = *a2;
  v11 = *(result + 16);
  v6 = 0x7FFFFFFF;
  v12 = 0x7FFFFFFF;
  while (1)
  {
    v13 = v8;
    v14 = v11 + 72 * v8;
    v16 = *(v14 + 8);
    v15 = v14 + 8;
    if (v16 == v10)
    {
      result = re::DynamicString::operator==(v15 + 8, v9);
      if (result)
      {
        break;
      }
    }

    v8 = *(v11 + 72 * v13) & 0x7FFFFFFF;
    v12 = v13;
    if (v8 == 0x7FFFFFFF)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  v6 = v13;
LABEL_10:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v12;
  return result;
}

unint64_t re::Hash<re::ImportMaterialSignature>::operator()(uint64_t a1, char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v3 = *(a2 + 2);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    v5 = (a2 + 17);
    v6 = *(a2 + 3);
    if (v3)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    MurmurHash3_x64_128(v7, v4, 0, &v11);
    v8 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  }

  else
  {
    v8 = 0;
  }

  MurmurHash3_x64_128(&v10, 1uLL, 0, &v11);
  return ((v8 << 6) - 0x61C8864680B583E9 + (v8 >> 2) + ((v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11)) ^ v8;
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::move(a1, v9);
      re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 32) & 0x80000000) != 0)
      {
        result = re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::allocEntry(v4, *(v7 + 32) % *(v4 + 24));
        v8 = (*(a2 + 16) + v6);
        *(result + 8) = *(v8 - 24);
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        *(result + 40) = v8[1];
        v9 = *(v8 - 1);
        *(result + 16) = *(v8 - 2);
        *(v8 - 2) = 0;
        v10 = *v8;
        v8[1] = 0;
        v12 = *(result + 24);
        v11 = *(result + 32);
        *(result + 24) = v9;
        *(result + 32) = v10;
        *(v8 - 1) = v12;
        *v8 = v11;
        v13 = *(a2 + 16) + v6;
        v14 = *(v13 + 16);
        *(v13 + 16) = 0;
        *(result + 48) = v14;
        LODWORD(v14) = *(v13 + 24);
        *(result + 60) = *(v13 + 28);
        *(result + 56) = v14;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 72;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::DynamicArray<re::GeomModelDescriptor>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 216 * v4;
        do
        {
          v7 = v3 + v5;
          re::DynamicString::deinit((v3 + v5 + 184));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + v5 + 136));
          re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v3 + v5 + 96);
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + v5 + 48));
          v8 = *(v3 + v5 + 40);
          if (v8)
          {

            *(v7 + 40) = 0;
          }

          v9 = *(v7 + 32);
          if (v9)
          {

            *(v7 + 32) = 0;
          }

          v10 = *(v3 + v5 + 8);
          if (v10)
          {

            *(v3 + v5 + 8) = 0;
          }

          v5 += 216;
        }

        while (v6 != v5);
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

void *re::DynamicArray<re::GeomModelDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomModelDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xD8uLL))
        {
          v2 = 216 * a2;
          result = (*(*result + 32))(result, 216 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_22;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 216, a2);
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
LABEL_22:
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
        v11 = 216 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          *v12 = *(v8 + v10);
          *(v12 + 2) = *(v8 + v10 + 2);
          *(v12 + 1) = *(v8 + v10 + 4);
          v14 = *(v8 + v10 + 16);
          v12[1] = *(v8 + v10 + 8);
          *(v13 + 8) = 0;
          v12[2] = v14;
          v15 = *(v8 + v10 + 32);
          v12[3] = *(v8 + v10 + 24);
          v12[4] = v15;
          *(v13 + 32) = 0;
          v12[5] = *(v8 + v10 + 40);
          *(v13 + 40) = 0;
          *(v12 + 4) = 0u;
          *(v12 + 20) = 0;
          *&v7[v10 / 8 + 6] = 0u;
          *(v12 + 84) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(&v7[v10 / 8 + 6], (v8 + v10 + 48));
          v12[16] = 0;
          *(v12 + 30) = 0;
          v12[13] = 0;
          v12[14] = 0;
          v12[12] = 0;
          v16 = *(v8 + v10 + 104);
          v12[12] = *(v8 + v10 + 96);
          *(v13 + 96) = 0;
          v12[13] = v16;
          *(v13 + 104) = 0;
          v17 = v7[v10 / 8 + 14];
          v12[14] = *(v8 + v10 + 112);
          *(v13 + 112) = v17;
          v18 = v7[v10 / 8 + 16];
          v12[16] = *(v8 + v10 + 128);
          *(v13 + 128) = v18;
          ++*(v13 + 120);
          ++*(v12 + 30);
          *(v12 + 17) = 0u;
          v19 = &v7[v10 / 8 + 17];
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0;
          *(v19 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v19, (v8 + v10 + 136));
          *(v19 + 48) = 0u;
          *(v19 + 64) = 0u;
          *(v19 + 48) = *(v8 + v10 + 184);
          *(v13 + 184) = 0;
          *(v19 + 72) = *(v8 + v10 + 208);
          *(v13 + 208) = 0;
          v21 = v7[v10 / 8 + 24];
          v20 = v7[v10 / 8 + 25];
          v22 = *(v8 + v10 + 200);
          *(v19 + 56) = *(v8 + v10 + 192);
          *(v19 + 64) = v22;
          *(v13 + 192) = v21;
          *(v13 + 200) = v20;
          re::GeomModelDescriptor::reset((v8 + v10));
          re::DynamicString::deinit((v8 + v10 + 184));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + v10 + 136));
          re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v8 + v10 + 96);
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + v10 + 48));
          v23 = *(v8 + v10 + 40);
          if (v23)
          {

            *(v13 + 40) = 0;
          }

          v24 = *(v13 + 32);
          if (v24)
          {

            *(v13 + 32) = 0;
          }

          v25 = *(v13 + 8);
          if (v25)
          {

            *(v13 + 8) = 0;
          }

          v10 += 216;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_22;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<re::usdimport::SpatialAudioNodeData *,re::loadTransformAndMeshNodes(USKScene *,USKNode *,re::USDImportContext &,BOOL)::$_0,std::allocator<re::usdimport::SpatialAudioNodeData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

re *std::__shared_ptr_pointer<re::usdimport::SpatialAudioNodeData *,re::loadTransformAndMeshNodes(USKScene *,USKNode *,re::USDImportContext &,BOOL)::$_0,std::allocator<re::usdimport::SpatialAudioNodeData>>::__on_zero_shared(re *result)
{
  v1 = *(result + 3);
  if (v1)
  {
    v2 = re::globalAllocators(result)[2];
    re::AssetHandle::~AssetHandle((v1 + 48));
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<re::usdimport::SpatialAudioNodeData *,re::loadTransformAndMeshNodes(USKScene *,USKNode *,re::USDImportContext &,BOOL)::$_0,std::allocator<re::usdimport::SpatialAudioNodeData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 40;
            do
            {
              if ((*(v17 - 40) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v17 + 40) % *(a1 + 24));
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = *(v17 - 8);
                v19 = *(v17 - 24);
                *(v18 + 8) = *(v17 - 32);
                *(v17 - 32) = 0;
                v20 = *(v17 - 16);
                *(v17 - 8) = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 24) = v22;
                *(v17 - 16) = v21;
                *(v18 + 72) = 0;
                *(v18 + 64) = 0;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                *(v18 + 40) = 0;
                v23 = *(v17 + 8);
                *(v18 + 40) = *v17;
                *(v18 + 48) = v23;
                *v17 = 0;
                *(v17 + 8) = 0;
                v24 = *(v18 + 56);
                *(v18 + 56) = *(v17 + 16);
                *(v17 + 16) = v24;
                v25 = *(v18 + 72);
                *(v18 + 72) = *(v17 + 32);
                *(v17 + 32) = v25;
                ++*(v17 + 24);
                ++*(v18 + 64);
              }

              v17 += 88;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 88 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 88 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 88 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 80) = a3;
  ++*(a1 + 28);
  return v26 + 88 * v5;
}

void *re::DynamicArray<re::ImportedScene>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ImportedScene>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
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
        v10 = v8 + 160 * v9;
        v11 = v8 + 96;
        v12 = v7;
        do
        {
          v13 = *(v11 - 96);
          *(v12 + 1) = 0u;
          *(v12 + 2) = 0u;
          *v12 = v13;
          v12[2] = *(v11 - 80);
          *(v11 - 80) = 0;
          v12[5] = *(v11 - 56);
          *(v11 - 56) = 0;
          v15 = v12[3];
          v14 = v12[4];
          v16 = *(v11 - 64);
          v12[3] = *(v11 - 72);
          v12[4] = v16;
          *(v11 - 72) = v15;
          *(v11 - 64) = v14;
          v12[6] = *(v11 - 48);
          *(v12 + 9) = 0u;
          *(v12 + 7) = 0u;
          v12[7] = *(v11 - 40);
          *(v11 - 40) = 0;
          v12[10] = *(v11 - 16);
          *(v11 - 16) = 0;
          v18 = v12[8];
          v17 = v12[9];
          v19 = *(v11 - 24);
          v12[8] = *(v11 - 32);
          v12[9] = v19;
          *(v11 - 32) = v18;
          *(v11 - 24) = v17;
          *(v12 + 88) = *(v11 - 8);
          v12[13] = 0;
          v12[14] = 0;
          v12[12] = 0;
          v12[13] = *(v11 + 8);
          *(v11 + 8) = 0;
          v20 = v12[12];
          v12[12] = 0;
          v12[12] = *v11;
          *v11 = v20;
          v21 = v12[14];
          v12[14] = *(v11 + 16);
          *(v11 + 16) = v21;
          v12[19] = 0;
          v12[16] = 0;
          v12[17] = 0;
          v12[15] = 0;
          *(v12 + 36) = 0;
          v22 = *(v11 + 32);
          v12[15] = *(v11 + 24);
          *(v11 + 24) = 0;
          v12[16] = v22;
          *(v11 + 32) = 0;
          v23 = v12[17];
          v12[17] = *(v11 + 40);
          *(v11 + 40) = v23;
          v24 = v12[19];
          v12[19] = *(v11 + 56);
          *(v11 + 56) = v24;
          ++*(v11 + 48);
          ++*(v12 + 36);
          re::DynamicArray<re::AssetHandle>::deinit(v11 + 24);
          re::AssetHandle::~AssetHandle(v11);
          re::DynamicString::deinit((v11 - 40));
          re::DynamicString::deinit((v11 - 80));
          v12 += 20;
          v25 = v11 + 64;
          v11 += 160;
        }

        while (v25 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

re::DynamicString *re::TimelineCompiler::getCurrentCompiledAssetInfo@<X0>(re::TimelineCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::TimelineAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::TimelineCompiler::assetIntrospectionType(re::TimelineCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::TimelineAsset>(BOOL)::info = re::introspect_TimelineAsset(0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 344);
}

uint64_t re::TimelineCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3[0] = re::TimelineCompiler::getSupportedExtensions(void)const::supportedExtensions;
  v3[1] = 2;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

re *re::TimelineCompiler::compile@<X0>(re::TimelineCompiler *this@<X0>, re::AssetUtilities *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v9 = re::globalAllocators(this);
  v10 = (*(*v9[2] + 32))(v9[2], 24, 8);
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  v11 = (*(*this + 24))(this);
  result = re::AssetUtilities::readSourceJson(a2, v10, v11, a3, v21);
  if (v21[0] == 1)
  {
    *a4 = v21[0];
    *(a4 + 8) = v10;
  }

  else
  {
    v13 = re::globalAllocators(result);
    v14 = (*(*v13[2] + 40))(v13[2], v10);
    v15 = v18;
    v16 = v19;
    v17 = v20;
    *a4 = 0;
    *(a4 + 8) = 100;
    *(a4 + 16) = re::AssetErrorCategory(void)::instance;
    *(a4 + 24) = v15;
    *(a4 + 40) = v16;
    *(a4 + 48) = v17;
    if ((v21[0] & 1) == 0)
    {
      result = v22;
      if (v22)
      {
        if (v23)
        {
          return (*(*v22 + 40))();
        }
      }
    }
  }

  return result;
}

re *re::TimelineCompiler::deleteAsset(re *this, void *a2)
{
  if (a2)
  {
    v2 = *(*re::globalAllocators(this)[2] + 40);

    return v2();
  }

  return this;
}

re::DynamicString *re::HMTextureCompiler::getCurrentCompiledAssetInfo@<X0>(re::HMTextureCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::TextureAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::HMTextureCompiler::assetIntrospectionType(re::HMTextureCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::TextureAsset>(BOOL)::info = re::introspect_TextureAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[235];
}

void *re::HMTextureCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, re::HMTextureCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

re::DynamicString *re::HMTextureCompiler::compile@<X0>(re::HMTextureCompiler *this@<X0>, char *a2@<X1>, void *a3@<X2>, re::AssetSerializationScheme *a4@<X3>, uint64_t a5@<X8>)
{
  v52[4] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    re::DynamicString::setCapacity(&v48, 0);
    v10 = strrchr(a2, 46);
    v11 = strcmp(v10, ".hmtexture");
    if (v11)
    {
      *(&v38 + 1) = 0;
      v39 = 0uLL;
      re::DynamicString::setCapacity(&v38, 0);
      re::DynamicString::assignf(&v38, "Unexpected file extension HMTextureCompiler cannot compile %s");
      goto LABEL_4;
    }

    v52[0] = &unk_1F5CD1660;
    v52[1] = this;
    v52[3] = v52;
    re::pathsToFilesInDirectory(a2, v52, buf);
    v22 = std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](v52);
    if (buf[0] == 1)
    {
      if (*(&v45 + 1))
      {
        re::DynamicString::operator=(&v48, v47);
        if (buf[0] == 1)
        {
          re::DynamicArray<re::DynamicString>::deinit(&buf[8]);
        }

        else if (*&buf[8] && (v45 & 1) != 0)
        {
          (*(**&buf[8] + 40))();
        }

        if (v49)
        {
          v26 = v50;
        }

        else
        {
          v26 = &v49 + 1;
        }

        v27 = strrchr(v26, 46);
        v28 = *(this + 1);
        {
          re::introspect<re::AssetCompilerService>(BOOL)::info = re::introspect_AssetCompilerService(0);
        }

        v29 = re::introspect<re::AssetCompilerService>(BOOL)::info;
        re::StringID::invalid(buf);
        v30 = (*(*v28 + 16))(v28, v29, buf);
        v31 = v30;
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        if (!v31)
        {
          v34 = re::introspect<re::AssetCompilerService>();
          re::StringID::invalid(&v38);
          re::internal::missingServiceErrorMessage(v34, &v38, buf);
          re::DynamicString::~DynamicString(buf);
          re::StringID::~StringID(&v38);
          v35 = re::introspect<re::AssetCompilerService>();
          re::StringID::invalid(&v38);
          re::internal::missingServiceErrorMessage(v35, &v38, buf);
          if (buf[8])
          {
            v37 = v45;
          }

          else
          {
            v37 = &buf[9];
          }

          re::internal::assertLog(5, v36, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v37);
          re::DynamicString::~DynamicString(buf);
          re::StringID::~StringID(&v38);
          _os_crash();
          __break(1u);
        }

        v32 = (**v31)(v31, (v27 + 1));
        if (v32)
        {
          if (v49)
          {
            v33 = v50;
          }

          else
          {
            v33 = &v49 + 1;
          }

          (*(*v32 + 40))(v32, v33, a3, a4);
          goto LABEL_41;
        }

        *(&v38 + 1) = 0;
        v39 = 0uLL;
        re::DynamicString::setCapacity(&v38, 0);
        re::DynamicString::assignf(&v38, "Failed to load texture %s\nCould not find a compiler for file %s");
LABEL_4:
        *buf = 100;
        *&buf[8] = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v45, &v38);
        v12 = v45;
        *(a5 + 8) = *buf;
        v13 = v46;
        v14 = v47;
        *a5 = 0;
        *(a5 + 24) = v12;
        *(a5 + 40) = v13;
        *(a5 + 48) = v14;
        v15 = v38;
        if (v38 && (BYTE8(v38) & 1) != 0)
        {
          v16 = v39;
LABEL_7:
          (*(*v15 + 40))(v15, v16);
          goto LABEL_41;
        }

        goto LABEL_41;
      }
    }

    else
    {
      re::DynamicString::DynamicString(&v42, &buf[8]);
    }

    *&v38 = 100;
    *(&v38 + 1) = re::AssetErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v39, &v42);
    v23 = v39;
    *(a5 + 8) = v38;
    v24 = v40;
    v25 = v41;
    *a5 = 0;
    *(a5 + 24) = v23;
    *(a5 + 40) = v24;
    *(a5 + 48) = v25;
    if (v42 && (v43 & 1) != 0)
    {
      (*(*v42 + 40))();
    }

    if (buf[0] == 1)
    {
      re::DynamicArray<re::DynamicString>::deinit(&buf[8]);
    }

    else
    {
      v15 = *&buf[8];
      if (*&buf[8] && (v45 & 1) != 0)
      {
        v16 = *(&v45 + 1);
        goto LABEL_7;
      }
    }

LABEL_41:
    result = v48;
    if (v48)
    {
      if (v49)
      {
        return (*(*v48 + 40))();
      }
    }

    return result;
  }

  v17 = *re::pipelineLogObjects(this);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "TextureAssetCompiler: sourceFilePath is null.", buf, 2u);
  }

  v20 = *buf;
  v21 = v45;
  *a5 = 0;
  *(a5 + 8) = 100;
  *(a5 + 16) = re::AssetErrorCategory(void)::instance;
  *(a5 + 24) = v20;
  *(a5 + 40) = v21;
  return result;
}

uint64_t std::__function::__func<re::HMTextureCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0,std::allocator<re::HMTextureCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0>,BOOL ()(char const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CD1660;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::HMTextureCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0,std::allocator<re::HMTextureCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0>,BOOL ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::introspect<re::AssetCompilerService>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::AssetCompilerService>(BOOL)::info = re::introspect_AssetCompilerService(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[204];
}

re::DynamicString *re::StateMachineCompiler::getCurrentCompiledAssetInfo@<X0>(re::StateMachineCompiler *this@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::StateMachineAsset::assetType(this);
  v4 = *v3;
}

uint64_t re::StateMachineCompiler::assetIntrospectionType(re::StateMachineCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::StateMachineAsset>(BOOL)::info = re::introspect_StateMachineAsset(0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 326);
}

uint64_t re::StateMachineCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v4 = "restatemachine";
  v3[0] = &v4;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t re::StateMachineCompiler::compile@<X0>(re::StateMachineCompiler *this@<X0>, char *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 104, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0;
  *&v26 = &unk_1F5CD1758;
  *(&v27 + 1) = &v26;
  v32 = v31;
  v30 = v9;
  v31[0] = &unk_1F5CD1758;
  std::__function::__value_func<void ()(re::StateMachineAsset *)>::~__value_func[abi:nn200100](&v26);
  v10 = strrchr(a2, 46);
  if (!strcasecmp(v10 + 1, "restatemachine"))
  {
    v14 = v30;
    v15 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  re::DynamicString::format("Invalid Asset Path: %s.", &v26, a2);
  v11 = v26;
  v12 = v27;
  *a4 = 0;
  *(a4 + 8) = 200;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = v11;
  *(a4 + 40) = v12;
  while (1)
  {
    v13 = v30;
    v30 = 0;
    if (!v13)
    {
      break;
    }

    *&v26 = v13;
    if (v32)
    {
      (*(*v32 + 48))(v32, &v26);
      return std::__function::__value_func<void ()(re::StateMachineAsset *)>::~__value_func[abi:nn200100](v31);
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_15:
    v21 = v14;
    v15 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    v14 = v21;
    if (v22)
    {
      re::introspect<re::StateMachineAsset>(BOOL)::info = re::introspect_StateMachineAsset(0);
      v15 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      v14 = v21;
    }

LABEL_7:
    re::AssetUtilities::readSourceJson(a2, v14, *(v15 + 326), a3, v23);
    if (v23[0])
    {
      v16 = v30;
      *a4 = 1;
      *(a4 + 8) = v16;
      v30 = 0;
      return std::__function::__value_func<void ()(re::StateMachineAsset *)>::~__value_func[abi:nn200100](v31);
    }

    *&v26 = 100;
    *(&v26 + 1) = re::AssetErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v27, &v24);
    v18 = v27;
    *(a4 + 8) = v26;
    v19 = v28;
    v20 = v29;
    *a4 = 0;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    *(a4 + 48) = v20;
    if (v23[0] & 1) == 0 && v24 && (v25)
    {
      (*(*v24 + 40))();
    }
  }

  return std::__function::__value_func<void ()(re::StateMachineAsset *)>::~__value_func[abi:nn200100](v31);
}

uint64_t std::__function::__func<re::StateMachineCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0,std::allocator<re::StateMachineCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0>,void ()(re::StateMachineAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::StateMachineAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

re::DynamicString *re::IBLAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::IBLAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::ImageBasedLightAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::IBLAssetCompiler::assetIntrospectionType(re::IBLAssetCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ImageBasedLightAsset>(BOOL)::info = re::introspect_ImageBasedLightAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[201];
}

void *re::IBLAssetCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, re::IBLAssetCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

void *re::IBLAssetCompiler::compile@<X0>(re::IBLAssetCompiler *this@<X0>, re::IBLAssetCompiler *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *re::pipelineLogObjects(this);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Compiling source .reibl is not handling colorspace/gamut conversion: use REAssetManagerImageBasedLightMemoryAssetCreateFromReiblFileAsync.", v10, 2u);
  }

  return re::IBLAssetCompiler::createFromJson(a2, a3, a4);
}

void *re::IBLAssetCompiler::createFromJson@<X0>(re::IBLAssetCompiler *this@<X0>, const re::IntrospectionBase *a2@<X2>, uint64_t a3@<X8>)
{
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 128, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 96) = 0u;
  re::DynamicString::setCapacity((v9 + 96), 0);
  {
    re::introspect<re::ImageBasedLightFile>(BOOL)::info = re::introspect_ImageBasedLightFile(0);
  }

  result = re::AssetUtilities::readSourceJson(this, v9, re::introspect<re::ImageBasedLightFile>(BOOL)::info, a2, v18);
  if (v18[0] == 1)
  {
    *a3 = v18[0];
    *(a3 + 8) = v9;
  }

  else
  {
    re::internal::destroyPersistent<re::ImageBasedLightAsset>("createFromJson", 66, v9);
    *&v14 = 100;
    *(&v14 + 1) = re::AssetErrorCategory(void)::instance;
    result = re::DynamicString::DynamicString(&v15, &v19);
    v11 = v15;
    *(a3 + 8) = v14;
    v12 = v16;
    v13 = v17;
    *a3 = 0;
    *(a3 + 24) = v11;
    *(a3 + 40) = v12;
    *(a3 + 48) = v13;
    if ((v18[0] & 1) == 0)
    {
      result = v19;
      if (v19)
      {
        if (v20)
        {
          return (*(*v19 + 40))();
        }
      }
    }
  }

  return result;
}

void re::copyCustomParamFlattenedNames(void *a1, void **a2, void **a3, void **a4, void **a5)
{
  memset(v10, 0, sizeof(v10));
  if (a1[1] == 1)
  {
    re::extractFlattenedReflection((a1[2] + 96), v10, a4);
    v9[0] = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    NS::SharedPtr<MTL::Texture>::operator=(a2, v9);
    if (v9[0])
    {
    }
  }

  memset(v9, 0, sizeof(v9));
  if (a1[4] == 1)
  {
    re::extractFlattenedReflection((a1[5] + 96), v9, a5);
    v11 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    NS::SharedPtr<MTL::Texture>::operator=(a3, &v11);
    if (v11)
    {
    }
  }

  v11 = v9;
  std::vector<NS::SharedPtr<NS::String>>::__destroy_vector::operator()[abi:nn200100](&v11);
  v9[0] = v10;
  std::vector<NS::SharedPtr<NS::String>>::__destroy_vector::operator()[abi:nn200100](v9);
}

void re::extractFlattenedReflection(_anonymous_namespace_ *a1, uint64_t a2, void **a3)
{
  if (*(a1 + 1) >= 2uLL)
  {
    v3 = *(a1 + 2);
    v4 = v3[23];
    if (v4)
    {
      v6 = v3[24];
      v7 = v6 + 80 * v4;
      v24 = *(a1 + 2);
      do
      {
        if (*(v6 + 77) == 1)
        {
          v8 = [MEMORY[0x1E696AEC0] alloc];
          if (v26)
          {
            v9 = *&v27[7];
          }

          else
          {
            v9 = v27;
          }

          v10 = [v8 initWithCString:v9 encoding:4];
          v12 = *(a2 + 8);
          v11 = *(a2 + 16);
          if (v12 >= v11)
          {
            v14 = *a2;
            v15 = (v12 - *a2) >> 3;
            v16 = v15 + 1;
            if ((v15 + 1) >> 61)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v17 = v11 - v14;
            if (v17 >> 2 > v16)
            {
              v16 = v17 >> 2;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFF8)
            {
              v18 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              if (!(v18 >> 61))
              {
                operator new();
              }

              std::string::__throw_length_error[abi:nn200100]();
            }

            v19 = (8 * v15);
            v20 = &v19[-((v12 - *a2) >> 3)];
            *v19 = v10;
            v13 = v19 + 1;
            if (v14 != v12)
            {
              v21 = v14;
              v22 = v20;
              do
              {
                *v22++ = *v21;
                *v21++ = 0;
              }

              while (v21 != v12);
              do
              {
                if (*v14)
                {

                  *v14 = 0;
                }

                ++v14;
              }

              while (v14 != v12);
              v14 = *a2;
            }

            *a2 = v20;
            *(a2 + 8) = v13;
            *(a2 + 16) = 0;
            if (v14)
            {
              operator delete(v14);
            }

            v3 = v24;
          }

          else
          {
            *v12 = v10;
            v13 = v12 + 1;
          }

          *(a2 + 8) = v13;
          a1 = v25;
          if (v25 && (v26 & 1) != 0)
          {
            a1 = (*(*v25 + 40))();
          }
        }

        v6 += 80;
      }

      while (v6 != v7);
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithCString:v3[15] encoding:4];
    NS::SharedPtr<MTL::Texture>::operator=(a3, &v25);
    if (v25)
    {
    }
  }
}

uint64_t re::parseMaterialAssetMetadata(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1;
  if (*a4 != 1)
  {
    goto LABEL_22;
  }

  v8 = re::DynamicString::compare((a4 + 8), &v128);
  v9 = v128;
  if (v128 && (BYTE8(v128) & 1) != 0)
  {
    v9 = (*(*v128 + 40))(v128, v129);
  }

  if (!v8)
  {
    v27 = 0;
LABEL_70:
    v26 = 3;
    return v27 | (v26 << 16);
  }

  v10 = re::DynamicString::compare((a4 + 8), &v128);
  v11 = v128;
  if (v128 && (BYTE8(v128) & 1) != 0)
  {
    v11 = (*(*v128 + 40))(v128, v129);
  }

  if (!v10)
  {
    v27 = 1;
    goto LABEL_70;
  }

  v12 = re::DynamicString::compare((a4 + 8), &v128);
  v13 = v128;
  if (v128 && (BYTE8(v128) & 1) != 0)
  {
    v13 = (*(*v128 + 40))(v128, v129);
  }

  if (!v12)
  {
    v27 = 0;
LABEL_207:
    v26 = 4;
    return v27 | (v26 << 16);
  }

  v14 = re::DynamicString::compare((a4 + 8), &v128);
  v15 = v128;
  if (v128 && (BYTE8(v128) & 1) != 0)
  {
    v15 = (*(*v128 + 40))(v128, v129);
  }

  if (!v14)
  {
    v27 = 1;
    goto LABEL_207;
  }

  v16 = re::DynamicString::compare((a4 + 8), &v128);
  a1 = v128;
  if (v128 && (BYTE8(v128) & 1) != 0)
  {
    a1 = (*(*v128 + 40))(v128, v129);
  }

  if (!v16)
  {
    v27 = 0;
    v26 = 8;
    return v27 | (v26 << 16);
  }

LABEL_22:
  MappedTechniqueForPass = re::getMappedTechniqueForPass(a2, &v128);
  v18 = MappedTechniqueForPass;
  v19 = v128;
  if (v128 && (BYTE8(v128) & 1) != 0)
  {
    v19 = (*(*v128 + 40))(v128, v129);
  }

  if (!MappedTechniqueForPass)
  {
    v18 = re::getMappedTechniqueForPass(a2, &v128);
    v19 = v128;
    if (v128 && (BYTE8(v128) & 1) != 0)
    {
      v19 = (*(*v128 + 40))(v128, v129);
    }

    if (!v18)
    {
      goto LABEL_42;
    }
  }

  v20 = re::DynamicString::compare((v18 + 2472), &v128);
  v21 = v128;
  if (v128 && (BYTE8(v128) & 1) != 0)
  {
    v21 = (*(*v128 + 40))(v128, v129);
  }

  if (v20)
  {
    v22 = re::DynamicString::compare((v18 + 2472), &v128);
    v23 = v128;
    if (v128 && (BYTE8(v128) & 1) != 0)
    {
      v23 = (*(*v128 + 40))(v128, v129);
    }

    if (v22)
    {
      v24 = re::DynamicString::compare((v18 + 2472), &v128);
      v25 = v128;
      if (v128 && (BYTE8(v128) & 1) != 0)
      {
        v25 = (*(*v128 + 40))(v128, v129);
      }

      if (v24)
      {
LABEL_42:
        v26 = 0;
        v27 = 0;
        return v27 | (v26 << 16);
      }

      if (*(v6 + 48))
      {
        v60 = 0;
        v61 = 80;
        do
        {
          v62 = *(*(v6 + 50) + v61);
          if (v62)
          {
            v63 = *(v62 + 280);
            v25 = re::ShaderGraphAsset::assetType(v25);
            if (v63 == v25)
            {
              v26 = 7;
              goto LABEL_209;
            }
          }

          else
          {
            v25 = re::ShaderGraphAsset::assetType(v25);
          }

          ++v60;
          v61 += 272;
        }

        while (v60 < *(v6 + 48));
      }

      v26 = 6;
LABEL_209:
      v64 = MappedTechniqueForPass == 0;
      re::getFunctionConstant(&v128, a3, v18, v101);
      if (*(&v128 + 1))
      {
        v65 = v128;
      }

      else
      {
        v65 = 0;
      }

      v66 = *&v101[0];
      if (*&v101[0])
      {
        if (BYTE8(v101[0]))
        {
          v66 = (*(**&v101[0] + 40))();
        }

        memset(v101, 0, sizeof(v101));
      }

      if (v65)
      {
        v67 = 8;
      }

      else
      {
        re::getFunctionConstant(&v128, a3, v18, v100);
        if (*(&v128 + 1))
        {
          v68 = 0;
        }

        else
        {
          v68 = v128;
        }

        v66 = *&v100[0];
        if (*&v100[0])
        {
          if (BYTE8(v100[0]))
          {
            v66 = (*(**&v100[0] + 40))();
          }

          memset(v100, 0, sizeof(v100));
        }

        if (v68)
        {
          v67 = 2;
        }

        else
        {
          v67 = 4;
        }
      }

      v69 = v67 | v64;
      re::getFunctionConstant(&v128, a3, v18, v99);
      if (*(&v128 + 1))
      {
        v70 = v128;
      }

      else
      {
        v70 = 0;
      }

      v71 = *&v99[0];
      if (*&v99[0])
      {
        if (BYTE8(v99[0]))
        {
          v71 = (*(**&v99[0] + 40))();
        }

        memset(v99, 0, sizeof(v99));
      }

      if (v70)
      {
        v69 |= 0x10u;
      }

      re::getFunctionConstant(&v128, a3, v18, v98);
      if (*(&v128 + 1))
      {
        v72 = v128;
      }

      else
      {
        v72 = 0;
      }

      v73 = *&v98[0];
      if (*&v98[0])
      {
        if (BYTE8(v98[0]))
        {
          v73 = (*(**&v98[0] + 40))();
        }

        memset(v98, 0, sizeof(v98));
      }

      if (v72)
      {
        v69 |= 0x20u;
      }

      re::getFunctionConstant(&v128, a3, v18, v97);
      if (*(&v128 + 1))
      {
        v74 = v128;
      }

      else
      {
        v74 = 0;
      }

      v75 = *&v97[0];
      if (*&v97[0])
      {
        if (BYTE8(v97[0]))
        {
          v75 = (*(**&v97[0] + 40))();
        }

        memset(v97, 0, sizeof(v97));
      }

      if (v74)
      {
        v69 |= 0x40u;
      }

      re::getFunctionConstant(&v128, a3, v18, v96);
      if (*(&v128 + 1))
      {
        v76 = v128;
      }

      else
      {
        v76 = 0;
      }

      v77 = *&v96[0];
      if (*&v96[0])
      {
        if (BYTE8(v96[0]))
        {
          v77 = (*(**&v96[0] + 40))();
        }

        memset(v96, 0, sizeof(v96));
      }

      if (v76)
      {
        v69 |= 0x80u;
      }

      FunctionConstant = re::getFunctionConstant(&v128, a3, v18, &v94);
      if (v128 == 1 && *(&v128 + 1))
      {
        v79 = v94;
        if (v94)
        {
          if (BYTE8(v94))
          {
            v79 = (*(*v94 + 40))();
          }

          v94 = 0u;
          v95 = 0u;
        }
      }

      else
      {
        re::getFunctionConstant(&v126, a3, v18, v93);
        if (*(&v126 + 1))
        {
          v80 = v126;
        }

        else
        {
          v80 = 0;
        }

        if (*&v93[0])
        {
          if (BYTE8(v93[0]))
          {
            (*(**&v93[0] + 40))();
          }

          memset(v93, 0, sizeof(v93));
        }

        v79 = v94;
        if (v94)
        {
          if (BYTE8(v94))
          {
            v79 = (*(*v94 + 40))();
          }

          v94 = 0u;
          v95 = 0u;
        }

        if (!v80)
        {
          goto LABEL_283;
        }
      }

      v69 |= 0x100u;
LABEL_283:
      re::getFunctionConstant(&v128, a3, v18, v92);
      if (*(&v128 + 1))
      {
        v81 = v128;
      }

      else
      {
        v81 = 0;
      }

      v82 = *&v92[0];
      if (*&v92[0])
      {
        if (BYTE8(v92[0]))
        {
          v82 = (*(**&v92[0] + 40))();
        }

        memset(v92, 0, sizeof(v92));
      }

      v83 = v69 | 0x200;
      if (!v81)
      {
        v83 = v69;
      }

      if (*(v6 + 358))
      {
        v83 |= 0x400u;
      }

      if (*(v6 + 360))
      {
        v84 = v83 | 0x800;
      }

      else
      {
        v84 = v83;
      }

      re::getFunctionConstant(&v128, a3, v18, v91);
      if (*(&v128 + 1))
      {
        v85 = v128;
      }

      else
      {
        v85 = 0;
      }

      v86 = *&v91[0];
      if (*&v91[0])
      {
        if (BYTE8(v91[0]))
        {
          v86 = (*(**&v91[0] + 40))();
        }

        memset(v91, 0, sizeof(v91));
      }

      if (v85)
      {
        v84 |= 0x1000u;
      }

      re::getFunctionConstant(&v128, a3, v18, &v89);
      if (*(&v128 + 1))
      {
        v87 = v128;
      }

      else
      {
        v87 = 0;
      }

      if (v89 && (v90 & 1) != 0)
      {
        (*(*v89 + 40))();
      }

      v27 = v84 | 0x2000;
      if (!v87)
      {
        v27 = v84;
      }

      if (*(v6 + 362) == 1 && *(v6 + 363))
      {
        v27 |= 0x4000u;
      }

      return v27 | (v26 << 16);
    }

    v32 = MappedTechniqueForPass == 0;
    re::getFunctionConstant(&v126, a3, v18, &v128);
    if (*(&v126 + 1))
    {
      v33 = v126;
    }

    else
    {
      v33 = 0;
    }

    v34 = v128;
    if (v128)
    {
      if (BYTE8(v128))
      {
        v34 = (*(*v128 + 40))(v128, v129);
      }

      v128 = 0u;
      v129 = 0u;
    }

    if (v33)
    {
      v32 |= 4u;
    }

    re::getFunctionConstant(&v124, a3, v18, &v126);
    if (*(&v124 + 1))
    {
      v35 = v124;
    }

    else
    {
      v35 = 0;
    }

    v36 = v126;
    if (v126)
    {
      if (BYTE8(v126))
      {
        v36 = (*(*v126 + 40))(v126, v127);
      }

      v126 = 0u;
      v127 = 0u;
    }

    if (v35)
    {
      v32 |= 8u;
    }

    re::getFunctionConstant(&v122, a3, v18, &v124);
    if (*(&v122 + 1))
    {
      v37 = v122;
    }

    else
    {
      v37 = 0;
    }

    v38 = v124;
    if (v124)
    {
      if (BYTE8(v124))
      {
        v38 = (*(*v124 + 40))(v124, v125);
      }

      v124 = 0u;
      v125 = 0u;
    }

    if (v37)
    {
      v32 |= 0x10u;
    }

    re::getFunctionConstant(&v120, a3, v18, &v122);
    if (*(&v120 + 1))
    {
      v39 = v120;
    }

    else
    {
      v39 = 0;
    }

    v40 = v122;
    if (v122)
    {
      if (BYTE8(v122))
      {
        v40 = (*(*v122 + 40))(v122, v123);
      }

      v122 = 0u;
      v123 = 0u;
    }

    if (v39)
    {
      v32 |= 0x20u;
    }

    re::getFunctionConstant(&v118, a3, v18, &v120);
    if (*(&v118 + 1))
    {
      v41 = v118;
    }

    else
    {
      v41 = 0;
    }

    v42 = v120;
    if (v120)
    {
      if (BYTE8(v120))
      {
        v42 = (*(*v120 + 40))(v120, v121);
      }

      v120 = 0u;
      v121 = 0u;
    }

    if (v41)
    {
      v32 |= 0x40u;
    }

    re::getFunctionConstant(v117, a3, v18, &v118);
    if (*(&v117[0] + 1))
    {
      v43 = LOBYTE(v117[0]);
    }

    else
    {
      v43 = 0;
    }

    v44 = v118;
    if (v118)
    {
      if (BYTE8(v118))
      {
        v44 = (*(*v118 + 40))(v118, v119);
      }

      v118 = 0u;
      v119 = 0u;
    }

    if (v43)
    {
      v32 |= 0x80u;
    }

    re::getFunctionConstant(v116, a3, v18, v117);
    if (*(&v116[0] + 1))
    {
      v45 = LOBYTE(v116[0]);
    }

    else
    {
      v45 = 0;
    }

    v46 = *&v117[0];
    if (*&v117[0])
    {
      if (BYTE8(v117[0]))
      {
        v46 = (*(**&v117[0] + 40))();
      }

      memset(v117, 0, sizeof(v117));
    }

    if (v45)
    {
      v32 |= 0x100u;
    }

    re::getFunctionConstant(v115, a3, v18, v116);
    if (*(&v115[0] + 1))
    {
      v47 = LOBYTE(v115[0]);
    }

    else
    {
      v47 = 0;
    }

    v48 = *&v116[0];
    if (*&v116[0])
    {
      if (BYTE8(v116[0]))
      {
        v48 = (*(**&v116[0] + 40))();
      }

      memset(v116, 0, sizeof(v116));
    }

    if (v47)
    {
      v32 |= 0x200u;
    }

    re::getFunctionConstant(v114, a3, v18, v115);
    if (*(&v114[0] + 1))
    {
      v49 = LOBYTE(v114[0]);
    }

    else
    {
      v49 = 0;
    }

    v50 = *&v115[0];
    if (*&v115[0])
    {
      if (BYTE8(v115[0]))
      {
        v50 = (*(**&v115[0] + 40))();
      }

      memset(v115, 0, sizeof(v115));
    }

    if (v49)
    {
      v32 |= 0x400u;
    }

    re::getFunctionConstant(v113, a3, v18, v114);
    if (*(&v113[0] + 1))
    {
      v51 = LOBYTE(v113[0]);
    }

    else
    {
      v51 = 0;
    }

    v52 = *&v114[0];
    if (*&v114[0])
    {
      if (BYTE8(v114[0]))
      {
        v52 = (*(**&v114[0] + 40))();
      }

      memset(v114, 0, sizeof(v114));
    }

    if (v51)
    {
      v32 |= 0x800u;
    }

    re::getFunctionConstant(v112, a3, v18, v113);
    if (*(&v112[0] + 1))
    {
      v53 = LOBYTE(v112[0]);
    }

    else
    {
      v53 = 0;
    }

    v54 = *&v113[0];
    if (*&v113[0])
    {
      if (BYTE8(v113[0]))
      {
        v54 = (*(**&v113[0] + 40))();
      }

      memset(v113, 0, sizeof(v113));
    }

    if (v53)
    {
      v32 |= 2u;
    }

    re::getFunctionConstant(v111, a3, v18, v112);
    if (*(&v111[0] + 1))
    {
      v55 = LOBYTE(v111[0]);
    }

    else
    {
      v55 = 0;
    }

    v56 = *&v112[0];
    if (*&v112[0])
    {
      if (BYTE8(v112[0]))
      {
        v56 = (*(**&v112[0] + 40))();
      }

      memset(v112, 0, sizeof(v112));
    }

    if (v55)
    {
      v32 |= 0x1000u;
    }

    re::getFunctionConstant(&v107, a3, v18, v111);
    if (v108)
    {
      v57 = v107;
    }

    else
    {
      v57 = 0;
    }

    v58 = *&v111[0];
    if (*&v111[0])
    {
      if (BYTE8(v111[0]))
      {
        v58 = (*(**&v111[0] + 40))();
      }

      memset(v111, 0, sizeof(v111));
    }

    if (v57)
    {
      v32 |= 0x2000u;
    }

    re::getFunctionConstant(v109, a3, v18, &v107);
    if (v110)
    {
      v59 = v109[0];
    }

    else
    {
      v59 = 0;
    }

    if (v107 && (v108 & 1) != 0)
    {
      (*(*v107 + 40))();
    }

    v27 = v32 | 0x4000;
    if (!v59)
    {
      v27 = v32;
    }

    v26 = 1;
  }

  else
  {
    v28 = MappedTechniqueForPass == 0;
    re::getFunctionConstant(&v128, a3, v18, v106);
    v29 = *&v106[0];
    if (*&v106[0])
    {
      if (BYTE8(v106[0]))
      {
        v29 = (*(**&v106[0] + 40))();
      }

      memset(v106, 0, sizeof(v106));
    }

    if ((v128 & (*(&v128 + 1) != 0)) != 0)
    {
      v28 |= 2u;
    }

    re::getFunctionConstant(&v126, a3, v18, v105);
    v30 = *&v105[0];
    if (*&v105[0])
    {
      if (BYTE8(v105[0]))
      {
        v30 = (*(**&v105[0] + 40))();
      }

      memset(v105, 0, sizeof(v105));
    }

    if ((v126 & (*(&v126 + 1) != 0)) != 0)
    {
      v28 |= 4u;
    }

    re::getFunctionConstant(&v124, a3, v18, v104);
    v31 = *&v104[0];
    if (*&v104[0])
    {
      if (BYTE8(v104[0]))
      {
        v31 = (*(**&v104[0] + 40))();
      }

      memset(v104, 0, sizeof(v104));
    }

    if ((v124 & (*(&v124 + 1) != 0)) != 0)
    {
      v28 |= 8u;
    }

    re::getFunctionConstant(&v122, a3, v18, &v102);
    if (v102 && (v103 & 1) != 0)
    {
      (*(*v102 + 40))();
    }

    if ((v122 & (*(&v122 + 1) != 0)) != 0)
    {
      v27 = v28 | 0x10;
    }

    else
    {
      v27 = v28;
    }

    v26 = 2;
  }

  return v27 | (v26 << 16);
}

uint64_t re::getMappedTechniqueForPass(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  v4 = strlen(v3);
  if (v4)
  {
    MurmurHash3_x64_128(v3, v4, 0, &v13);
    v5 = (v14 + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583E9) ^ v13;
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = *(*(a1 + 24) + 4 * (v5 % *(a1 + 40)));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  while (*(v7 + 24 * v6 + 8) != v5)
  {
    v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1 + 136, (v7 + 24 * v6 + 16), *(v7 + 24 * v6 + 16), &v13);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 152) + 48 * HIDWORD(v14);
  if (!*(v8 + 24))
  {
    return 0;
  }

  v9 = **(v8 + 32);
  v10 = *(v8 + 40);
  if (v10 == 255)
  {
    LOBYTE(v10) = 0;
  }

  v11 = (v9 + v10);
  if (*(a1 + 120) <= v11)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 128) + 8 * v11);
  }
}

uint64_t re::getFunctionConstant(uint64_t a1, uint64_t a2, uint64_t a3, const re::DynamicString *a4)
{
  v8 = re::Hash<re::DynamicString>::operator()(v14, a4);
  result = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a2, a4, v8, v14);
  if (v15 == 0x7FFFFFFF)
  {
    v10 = *(a3 + 56);
    if (!v10)
    {
LABEL_6:
      *a1 = 0;
      return result;
    }

    v11 = *(a3 + 64);
    v12 = 104 * v10;
    while (1)
    {
      result = re::DynamicString::compare(v11, a4);
      if (!result)
      {
        break;
      }

      v11 += 104;
      v12 -= 104;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v11 + 36);
  }

  else
  {
    v13 = *(*(a2 + 16) + 152 * v15 + 76);
  }

  *a1 = 1;
  *(a1 + 8) = v13;
  return result;
}

uint64_t re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 48 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 48 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 48 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 48 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void std::vector<NS::SharedPtr<NS::String>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<NS::SharedPtr<NS::String>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<NS::SharedPtr<NS::String>>::clear[abi:nn200100](void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    if (v5)
    {

      *v3 = 0;
    }
  }

  a1[1] = v2;
}

void re::usdimport::createAudioFileAssetForResourcePath(uint64_t a1@<X0>, void *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E69DED70] resourceWithResourcePath:v5];
  v7 = [v5 path];
  v8 = [v7 UTF8String];

  if (v6 || ([v5 path], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringByRemovingPercentEncoding"), v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(MEMORY[0x1E69DED70], "resourceWithPath:", v10), v6 = objc_claimAutoreleasedReturnValue(), v10, v6))
  {
    v12 = [v6 dataNoCopy];
    v13 = [v12 copy];

    if (v13)
    {
      v15 = strlen(v8);
      v16 = re::AudioFileAsset::assetType(v15);
      v17 = re::ImportAssetTable::importedAsset(a1, v8, v15, v16);
      if (!v17)
      {
        v18 = re::globalAllocators(0);
        v19 = (*(*v18[2] + 32))(v18[2], 176, 8);
        re::AudioFileAsset::AudioFileAsset(v19);
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      if (*(v17 + 8))
      {
        v22 = *(v17 + 16);
      }

      else
      {
        v22 = (v17 + 9);
      }
    }

    else
    {
      v20 = *re::pipelineLogObjects(v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = v8;
        _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Failed to load data for USD resource: %s", buf, 0xCu);
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
    }
  }

  else
  {
    v21 = *re::pipelineLogObjects(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Failed to load USD resource: %s", buf, 0xCu);
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
  }
}

void re::usdimport::SpatialAudioNodeData::configureFromUSDNode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v79 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = *a4;
  v12 = [v10 property:@"playbackMode"];
  v13 = [v12 stringValue];
  if ([v13 isEqualToString:@"onceFromStart"])
  {
    v14 = 1;
LABEL_11:

    goto LABEL_12;
  }

  if ([v13 isEqualToString:@"onceFromStartToEnd"])
  {
    v14 = 2;
    goto LABEL_11;
  }

  if ([v13 isEqualToString:@"loopFromStart"])
  {
    v14 = 3;
    goto LABEL_11;
  }

  if ([v13 isEqualToString:@"loopFromStartToEnd"])
  {
    v14 = 4;
    goto LABEL_11;
  }

  if ([v13 isEqualToString:@"loopFromStage"])
  {
    v14 = 5;
    goto LABEL_11;
  }

  v67 = *re::pipelineLogObjects(v66);
  v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v68)
    {
      v69 = v67;
      v70 = [v10 name];
      *buf = 138412546;
      *&buf[4] = v70;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      v71 = "USDz SpatialAudio node '%@' unrecognized playbackMode '%@'. Defaulting to 'onceFromStart'.";
      v72 = v69;
      v73 = 22;
LABEL_101:
      _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, v71, buf, v73);
    }
  }

  else if (v68)
  {
    v69 = v67;
    v70 = [v10 name];
    *buf = 138412290;
    *&buf[4] = v70;
    v71 = "USDz SpatialAudio node '%@' missing playbackMode. Defaulting to 'onceFromStart'.";
    v72 = v69;
    v73 = 12;
    goto LABEL_101;
  }

  v14 = 1;
LABEL_12:
  *(a1 + 24) = v14;
  v77 = 0.0;
  if (a5)
  {
    v15 = [v10 property:@"filePath"];

    v16 = [v15 resourcePath];
    v12 = [v10 property:@"auralMode"];

    v17 = [v12 stringValue];
    v18 = [v17 lowercaseString];
    [v18 isEqualToString:@"nonspatial"];

    re::usdimport::createAudioFileAssetForResourcePath(a3, v16, buf);
    v19 = *(a1 + 48);
    *(a1 + 48) = *buf;
    *buf = v19;
    v20 = *(a1 + 64);
    *(a1 + 64) = *&buf[16];
    *&buf[16] = v20;
    re::AssetHandle::~AssetHandle(buf);
  }

  v21 = v11;
  v22 = [v10 property:@"gain"];

  if (v22)
  {
    [v22 floatValue];
    *(a1 + 20) = v23;
    v76 = v22;
    *(a1 + 32) = re::usdimport::createFloatKeyframeAnimationFromProperty(&v76, v21);
  }

  v24 = [v10 property:@"mediaOffset"];

  if (v24)
  {
    [v24 floatValue];
    *(a1 + 16) = v25;
  }

  v26 = [v10 property:@"startTime"];

  if (v26)
  {
    v27 = [v26 timeCodeValue];
    v28 = v27;
    if (v27)
    {
      [v27 doubleValue];
      v5 = v29 * v21;
      v30 = 1;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v28 = 0;
  }

  v31 = [v10 property:@"endTime"];

  if (v31)
  {
    v33 = [v31 timeCodeValue];

    if (v33)
    {
      v32 = [v33 doubleValue];
      v21 = v34 * v21;
      v35 = 1;
      v28 = v33;
    }

    else
    {
      v35 = 0;
      v28 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = re::globalAllocators(v32);
  v37 = (*(*v36[2] + 32))(v36[2], 96, 8);
  v38 = re::Timeline::Timeline(v37, 38);
  *(v38 + 72) = 0;
  *v38 = &unk_1F5CB22C0;
  *(v38 + 80) = 0;
  v39 = (v38 + 80);
  *(v38 + 88) = 0;
  v40 = *(a1 + 24);
  if (v40 <= 2)
  {
    if (v40 == 1)
    {
      if ((v30 & 1) == 0)
      {
        v53 = *re::pipelineLogObjects(v38);
        v38 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
        v5 = 0.0;
        if (v38)
        {
          v54 = v53;
          v55 = [v10 name];
          *buf = 138412290;
          *&buf[4] = v55;
          _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, "USDz SpatialAudio node '%@' missing startTime.", buf, 0xCu);
        }
      }

      if (v35)
      {
        v56 = *re::pipelineLogObjects(v38);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v56;
          v58 = [v10 name];
          *buf = 138412290;
          *&buf[4] = v58;
          _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "USDz SpatialAudio node '%@' ignoring endTime for playbackMode = onceFromStart.", buf, 0xCu);
        }
      }

      v59 = v77 + v5;
LABEL_61:
      v21 = v59;
      goto LABEL_67;
    }

    if (v40 != 2)
    {
      goto LABEL_72;
    }

    if ((v30 & 1) == 0)
    {
      v41 = *re::pipelineLogObjects(v38);
      v38 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      v5 = 0.0;
      if (v38)
      {
        v42 = v41;
        v74 = [v10 name];
        *buf = 138412290;
        *&buf[4] = v74;
        _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "USDz SpatialAudio node '%@' missing startTime.", buf, 0xCu);
      }
    }

    if ((v35 & 1) == 0)
    {
      v43 = *re::pipelineLogObjects(v38);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
        v45 = [v10 name];
        *buf = 138412290;
        *&buf[4] = v45;
        _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "USDz SpatialAudio node '%@' missing endTime.", buf, 0xCu);
      }

      if (*(a4 + 24) != 1)
      {
        LOBYTE(v35) = 0;
        goto LABEL_70;
      }

      v21 = *(a4 + 28);
    }

    LOBYTE(v35) = 1;
LABEL_70:
    if (v21 > v5)
    {
      goto LABEL_71;
    }

    if (*(a4 + 24) == 1)
    {
      v65 = v77;
      if (*(a4 + 28) >= v65)
      {
        v21 = v77;
      }

      else
      {
        v21 = *(a4 + 28);
      }

      goto LABEL_67;
    }

    v59 = v77;
    goto LABEL_61;
  }

  if (v40 == 3)
  {
    if (v30)
    {
      goto LABEL_65;
    }

    v46 = *re::pipelineLogObjects(v38);
    v5 = 0.0;
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v47 = v46;
    v48 = [v10 name];
    *buf = 138412290;
    *&buf[4] = v48;
    v49 = "USDz SpatialAudio node '%@' missing startTime.";
    goto LABEL_64;
  }

  if (v40 == 4)
  {
    if ((v30 & 1) == 0)
    {
      v50 = *re::pipelineLogObjects(v38);
      v38 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
      v5 = 0.0;
      if (v38)
      {
        v51 = v50;
        v75 = [v10 name];
        *buf = 138412290;
        *&buf[4] = v75;
        _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "USDz SpatialAudio node '%@' missing startTime.", buf, 0xCu);
      }
    }

    if (v35)
    {
      goto LABEL_67;
    }

    v52 = *re::pipelineLogObjects(v38);
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v47 = v52;
    v48 = [v10 name];
    *buf = 138412290;
    *&buf[4] = v48;
    v49 = "USDz SpatialAudio node '%@' missing endTime.";
    goto LABEL_64;
  }

  if (v40 != 5)
  {
    goto LABEL_72;
  }

  if (*(a4 + 16) != 1)
  {
    v60 = *re::pipelineLogObjects(v38);
    v5 = 0.0;
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v47 = v60;
    v48 = [v10 name];
    *buf = 138412290;
    *&buf[4] = v48;
    v49 = "USDz SpatialAudio node '%@' missing stage startTime.";
LABEL_64:
    _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, v49, buf, 0xCu);

    goto LABEL_65;
  }

  v5 = *(a4 + 20);
LABEL_65:
  if (*(a4 + 24) != 1)
  {
    LOBYTE(v35) = 0;
    goto LABEL_71;
  }

  v21 = *(a4 + 28);
LABEL_67:
  LOBYTE(v35) = 1;
LABEL_71:
  v30 = 1;
LABEL_72:
  if (*a1)
  {
    if (v30)
    {
      *(a1 + 4) = v5;
      v61 = 1;
    }

    else
    {
      v61 = 0;
      *a1 = 0;
    }
  }

  else if (v30)
  {
    v61 = 1;
    *a1 = 1;
    *(a1 + 4) = v5;
  }

  else
  {
    v61 = 0;
  }

  if (*(a1 + 8))
  {
    if (v35)
    {
      *(a1 + 12) = v21;
      v62 = 1;
    }

    else
    {
      v62 = 0;
      *(a1 + 8) = 0;
    }
  }

  else if (v35)
  {
    v62 = 1;
    *(a1 + 8) = 1;
    *(a1 + 12) = v21;
  }

  else
  {
    v62 = 0;
  }

  v63 = 0.0;
  v64 = 0.0;
  if (v61)
  {
    v64 = *(a1 + 4);
  }

  *v39 = v64;
  if (v62)
  {
    v63 = *(a1 + 12);
  }

  *(v37 + 88) = v63;
  *(v37 + 16) = 3;
  *(a1 + 40) = v37;
}

re::DynamicString *re::VFXAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::VFXAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::VFXAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::VFXAssetCompiler::assetIntrospectionType(re::VFXAssetCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::VFXAsset>(BOOL)::info = re::introspect_VFXAsset(0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 258);
}

void *re::VFXAssetCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  re::DynamicArray<re::TransitionCondition *>::add(a1, re::VFXAssetCompiler::getSupportedExtensions(void)const::supportedExtensions);

  return re::DynamicArray<re::TransitionCondition *>::add(a1, off_1ECEF5FB8);
}

re::DynamicString *re::VFXAssetCompiler::compile@<X0>(re *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 88, 8);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 32) = 0u;
  v7 = re::DynamicString::setCapacity(v6, 0);
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  re::DynamicString::setCapacity((v6 + 32), 0);
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = -1;
  v9[0] = a2;
  v9[1] = strlen(a2);
  result = re::DynamicString::operator=(v6, v9);
  *a3 = 1;
  *(a3 + 8) = v6;
  return result;
}

void re::VFXAssetCompiler::~VFXAssetCompiler(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

uint64_t re::HMMaterialCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3[0] = re::HMMaterialCompiler::getSupportedExtensions(void)const::supportedExtensions;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t re::HMMaterialDefinitionCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3[0] = re::HMMaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t re::HMSceneCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3[0] = re::HMSceneCompiler::getSupportedExtensions(void)const::supportedExtensions;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t re::HMRenderGraphCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3[0] = re::HMRenderGraphCompiler::getSupportedExtensions(void)const::supportedExtensions;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t re::HMRenderGraphEmitterCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3[0] = re::HMRenderGraphEmitterCompiler::getSupportedExtensions(void)const::supportedExtensions;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t re::HMAssetCompiler<re::MaterialCompiler>::compile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  re::DynamicString::setCapacity(&v32, 0);
  v31 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v28, re::MaterialCompiler::getSupportedExtensions(void)const::supportedExtensions);
  if (v29)
  {
    v8 = v31;
    v9 = 8 * v29;
    while (1)
    {
      v10 = *v8;
      *&v36 = &unk_1F5D0B020;
      *(&v36 + 1) = v10;
      *(&v37 + 1) = &v36;
      re::pathsToFilesInDirectory(a2, &v36, &v24);
      std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](&v36);
      if (v24)
      {
        if (v26)
        {
          re::DynamicString::operator=(&v32, v27);
          v11 = 0;
          v12 = 2;
        }

        else
        {
          v12 = 0;
          v11 = 1;
        }
      }

      else
      {
        *&v36 = 100;
        *(&v36 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v37, (&v24 + 8));
        v11 = 0;
        v13 = v37;
        *(a4 + 8) = v36;
        v14 = v38;
        v15 = v39;
        *a4 = 0;
        *(a4 + 24) = v13;
        *(a4 + 40) = v14;
        *(a4 + 48) = v15;
        v12 = 1;
      }

      if (v24 == 1)
      {
        re::DynamicArray<re::DynamicString>::deinit(&v24 + 8);
      }

      else if (*(&v24 + 1) && (v25 & 1) != 0)
      {
        (*(**(&v24 + 1) + 40))();
      }

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        v12 = 2;
        break;
      }
    }

    v16 = v12 == 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = v28[0];
  if (v28[0] && v31)
  {
    v17 = (*(*v28[0] + 40))();
  }

  if (v16)
  {
    v18 = v33 >> 1;
    if ((v33 & 1) == 0)
    {
      v18 = v33 >> 1;
    }

    if (v18)
    {
      if (v33)
      {
        v19 = v34;
      }

      else
      {
        v19 = (&v33 + 1);
      }

      re::MaterialCompiler::compile((a1 + 8), v19, a3, a4);
    }

    else
    {
      v20 = v24;
      v21 = v25;
      v22 = v26;
      *a4 = 0;
      *(a4 + 8) = 100;
      *(a4 + 16) = re::AssetErrorCategory(void)::instance;
      *(a4 + 24) = v20;
      *(a4 + 40) = v21;
      *(a4 + 48) = v22;
    }
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}

uint64_t re::HMAssetCompiler<re::MaterialDefinitionCompiler>::compile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  re::DynamicString::setCapacity(&v32, 0);
  v31 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v28, &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions);
  if (v29)
  {
    v8 = v31;
    v9 = 8 * v29;
    while (1)
    {
      v10 = *v8;
      *&v36 = &unk_1F5D0B020;
      *(&v36 + 1) = v10;
      *(&v37 + 1) = &v36;
      re::pathsToFilesInDirectory(a2, &v36, &v24);
      std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](&v36);
      if (v24)
      {
        if (v26)
        {
          re::DynamicString::operator=(&v32, v27);
          v11 = 0;
          v12 = 2;
        }

        else
        {
          v12 = 0;
          v11 = 1;
        }
      }

      else
      {
        *&v36 = 100;
        *(&v36 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v37, (&v24 + 8));
        v11 = 0;
        v13 = v37;
        *(a4 + 8) = v36;
        v14 = v38;
        v15 = v39;
        *a4 = 0;
        *(a4 + 24) = v13;
        *(a4 + 40) = v14;
        *(a4 + 48) = v15;
        v12 = 1;
      }

      if (v24 == 1)
      {
        re::DynamicArray<re::DynamicString>::deinit(&v24 + 8);
      }

      else if (*(&v24 + 1) && (v25 & 1) != 0)
      {
        (*(**(&v24 + 1) + 40))();
      }

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        v12 = 2;
        break;
      }
    }

    v16 = v12 == 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = v28[0];
  if (v28[0] && v31)
  {
    v17 = (*(*v28[0] + 40))();
  }

  if (v16)
  {
    v18 = v33 >> 1;
    if ((v33 & 1) == 0)
    {
      v18 = v33 >> 1;
    }

    if (v18)
    {
      if (v33)
      {
        v19 = v34;
      }

      else
      {
        v19 = (&v33 + 1);
      }

      re::MaterialDefinitionCompiler::compile((a1 + 8), v19, a3, a4);
    }

    else
    {
      v20 = v24;
      v21 = v25;
      v22 = v26;
      *a4 = 0;
      *(a4 + 8) = 100;
      *(a4 + 16) = re::AssetErrorCategory(void)::instance;
      *(a4 + 24) = v20;
      *(a4 + 40) = v21;
      *(a4 + 48) = v22;
    }
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}

uint64_t re::HMAssetCompiler<re::SceneCompiler>::compile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  re::DynamicString::setCapacity(&v32, 0);
  v31 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v28, re::SceneCompiler::getSupportedExtensions(void)const::supportedExtensions);
  if (v29)
  {
    v8 = v31;
    v9 = 8 * v29;
    while (1)
    {
      v10 = *v8;
      *&v36 = &unk_1F5D0B020;
      *(&v36 + 1) = v10;
      *(&v37 + 1) = &v36;
      re::pathsToFilesInDirectory(a2, &v36, &v24);
      std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](&v36);
      if (v24)
      {
        if (v26)
        {
          re::DynamicString::operator=(&v32, v27);
          v11 = 0;
          v12 = 2;
        }

        else
        {
          v12 = 0;
          v11 = 1;
        }
      }

      else
      {
        *&v36 = 100;
        *(&v36 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v37, (&v24 + 8));
        v11 = 0;
        v13 = v37;
        *(a4 + 8) = v36;
        v14 = v38;
        v15 = v39;
        *a4 = 0;
        *(a4 + 24) = v13;
        *(a4 + 40) = v14;
        *(a4 + 48) = v15;
        v12 = 1;
      }

      if (v24 == 1)
      {
        re::DynamicArray<re::DynamicString>::deinit(&v24 + 8);
      }

      else if (*(&v24 + 1) && (v25 & 1) != 0)
      {
        (*(**(&v24 + 1) + 40))();
      }

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        v12 = 2;
        break;
      }
    }

    v16 = v12 == 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = v28[0];
  if (v28[0] && v31)
  {
    v17 = (*(*v28[0] + 40))();
  }

  if (v16)
  {
    v18 = v33 >> 1;
    if ((v33 & 1) == 0)
    {
      v18 = v33 >> 1;
    }

    if (v18)
    {
      if (v33)
      {
        v19 = v34;
      }

      else
      {
        v19 = (&v33 + 1);
      }

      re::SceneCompiler::compile((a1 + 8), v19, a3, a4);
    }

    else
    {
      v20 = v24;
      v21 = v25;
      v22 = v26;
      *a4 = 0;
      *(a4 + 8) = 100;
      *(a4 + 16) = re::AssetErrorCategory(void)::instance;
      *(a4 + 24) = v20;
      *(a4 + 40) = v21;
      *(a4 + 48) = v22;
    }
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}

uint64_t re::HMAssetCompiler<re::RenderGraphCompiler>::compile@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v36 = 0;
  re::DynamicString::setCapacity(&v33, 0);
  v32 = 0;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v31 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v29, &re::RenderGraphCompiler::getSupportedExtensions(void)const::supportedExtensions);
  re::DynamicArray<re::TransitionCondition *>::add(v29, &off_1ECEF5DE8);
  if (v30)
  {
    v24 = v6;
    v8 = v32;
    v9 = 8 * v30;
    while (1)
    {
      v10 = *v8;
      *&v37 = &unk_1F5D0B020;
      *(&v37 + 1) = v10;
      *(&v38 + 1) = &v37;
      re::pathsToFilesInDirectory(a2, &v37, &v25);
      std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](&v37);
      if (v25)
      {
        if (v27)
        {
          re::DynamicString::operator=(&v33, v28);
          v11 = 0;
          v12 = 2;
        }

        else
        {
          v12 = 0;
          v11 = 1;
        }
      }

      else
      {
        *&v37 = 100;
        *(&v37 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v38, (&v25 + 8));
        v11 = 0;
        v13 = v38;
        *(a4 + 8) = v37;
        v14 = v39;
        v15 = v40;
        *a4 = 0;
        *(a4 + 24) = v13;
        *(a4 + 40) = v14;
        *(a4 + 48) = v15;
        v12 = 1;
      }

      if (v25 == 1)
      {
        re::DynamicArray<re::DynamicString>::deinit(&v25 + 8);
      }

      else if (*(&v25 + 1) && (v26 & 1) != 0)
      {
        (*(**(&v25 + 1) + 40))();
      }

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        v12 = 2;
        break;
      }
    }

    v16 = v12 == 2;
    v6 = v24;
  }

  else
  {
    v16 = 1;
  }

  v17 = v29[0];
  if (v29[0] && v32)
  {
    v17 = (*(*v29[0] + 40))();
  }

  if (v16)
  {
    v18 = v34 >> 1;
    if ((v34 & 1) == 0)
    {
      v18 = v34 >> 1;
    }

    if (v18)
    {
      if (v34)
      {
        v19 = v35;
      }

      else
      {
        v19 = (&v34 + 1);
      }

      re::RenderGraphCompiler::compile((v6 + 8), v19, a3, a4);
    }

    else
    {
      v20 = v25;
      v21 = v26;
      v22 = v27;
      *a4 = 0;
      *(a4 + 8) = 100;
      *(a4 + 16) = re::AssetErrorCategory(void)::instance;
      *(a4 + 24) = v20;
      *(a4 + 40) = v21;
      *(a4 + 48) = v22;
    }
  }

  result = v33;
  if (v33)
  {
    if (v34)
    {
      return (*(*v33 + 40))();
    }
  }

  return result;
}

uint64_t re::HMAssetCompiler<re::RenderGraphEmitterCompiler>::compile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  re::DynamicString::setCapacity(&v32, 0);
  v31 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v28, &re::RenderGraphEmitterCompiler::getSupportedExtensions(void)const::supportedExtensions);
  if (v29)
  {
    v8 = v31;
    v9 = 8 * v29;
    while (1)
    {
      v10 = *v8;
      *&v36 = &unk_1F5D0B020;
      *(&v36 + 1) = v10;
      *(&v37 + 1) = &v36;
      re::pathsToFilesInDirectory(a2, &v36, &v24);
      std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](&v36);
      if (v24)
      {
        if (v26)
        {
          re::DynamicString::operator=(&v32, v27);
          v11 = 0;
          v12 = 2;
        }

        else
        {
          v12 = 0;
          v11 = 1;
        }
      }

      else
      {
        *&v36 = 100;
        *(&v36 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v37, (&v24 + 8));
        v11 = 0;
        v13 = v37;
        *(a4 + 8) = v36;
        v14 = v38;
        v15 = v39;
        *a4 = 0;
        *(a4 + 24) = v13;
        *(a4 + 40) = v14;
        *(a4 + 48) = v15;
        v12 = 1;
      }

      if (v24 == 1)
      {
        re::DynamicArray<re::DynamicString>::deinit(&v24 + 8);
      }

      else if (*(&v24 + 1) && (v25 & 1) != 0)
      {
        (*(**(&v24 + 1) + 40))();
      }

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        v12 = 2;
        break;
      }
    }

    v16 = v12 == 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = v28[0];
  if (v28[0] && v31)
  {
    v17 = (*(*v28[0] + 40))();
  }

  if (v16)
  {
    v18 = v33 >> 1;
    if ((v33 & 1) == 0)
    {
      v18 = v33 >> 1;
    }

    if (v18)
    {
      if (v33)
      {
        v19 = v34;
      }

      else
      {
        v19 = (&v33 + 1);
      }

      re::RenderGraphEmitterCompiler::compile((a1 + 8), v19, a3, a4);
    }

    else
    {
      v20 = v24;
      v21 = v25;
      v22 = v26;
      *a4 = 0;
      *(a4 + 8) = 100;
      *(a4 + 16) = re::AssetErrorCategory(void)::instance;
      *(a4 + 24) = v20;
      *(a4 + 40) = v21;
      *(a4 + 48) = v22;
    }
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}