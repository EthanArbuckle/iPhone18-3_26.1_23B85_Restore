double re::internal::defaultDestructV2<re::VFXFile>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_VFXAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193E70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193F28, "VFXAsset");
    __cxa_guard_release(&qword_1EE193E70);
  }

  return &unk_1EE193F28;
}

void re::initInfo_VFXAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x46BED1B7050;
  v12[1] = "VFXAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE193E80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE193E80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE193E68;
      if (!qword_1EE193E68)
      {
        v8 = re::allocInfo_VFXFile(v6);
        qword_1EE193E68 = v8;
        re::initInfo_VFXFile(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "vfxFile";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE193E78 = v10;
      __cxa_guard_release(&qword_1EE193E80);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE193E78;
  *(this + 9) = re::internal::defaultConstruct<re::VFXAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VFXAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::VFXAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::VFXAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void *re::internal::defaultConstruct<re::VFXAsset>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[2] = 0u;
  v3[3] = 0u;
  v3 += 2;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 4) = 0;
  *(v3 + 40) = 0;
  *(v3 + 6) = -1;
  return result;
}

void *re::internal::defaultConstructV2<re::VFXAsset>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 4) = 0;
  *(v1 + 40) = 0;
  *(v1 + 6) = -1;
  return result;
}

uint64_t re::introspect<re::RenderManager>(unsigned int a1)
{
  {
    re::introspect<re::RenderManager>(BOOL)::info = re::introspect_RenderManager(a1);
  }

  return re::introspect<re::RenderManager>(BOOL)::info;
}

uint64_t *re::MeshAsset::assetType(re::MeshAsset *this)
{
  {
    re::MeshAsset::assetType(void)::type = "Mesh";
    qword_1EE1C5738 = 0;
    re::AssetType::generateCompiledExtension(&re::MeshAsset::assetType(void)::type);
  }

  return &re::MeshAsset::assetType(void)::type;
}

double re::MeshAsset::MeshAsset(re::MeshAsset *this)
{
  *this = &unk_1F5CBD550;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 52) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 0;
  *(this + 136) = 0;
  *(this + 71) = 0;
  *(this + 144) = 0;
  *(this + 552) = 0u;
  *(this + 154) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 676) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 82) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 21) = 0u;
  *(this + 39) = 0u;
  *(this + 160) = 0;
  *(this + 692) = 0x7FFFFFFFLL;
  *(this + 184) = 0;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 740) = 0x7FFFFFFFLL;
  *(this + 304) = 0;
  *(this + 75) = 0u;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 72) = 0u;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 1220) = 0x7FFFFFFFLL;
  *(this + 1232) = 0;
  *(this + 155) = 0;
  *(this + 157) = 0;
  *(this + 156) = 0;
  *(this + 1264) = 0;
  return result;
}

uint64_t re::MeshAsset::MeshAsset(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CBD550;
  *(a1 + 8) = 0;
  re::MeshAssetData::MeshAssetData(a1 + 16, a2);
  *(a1 + 224) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 676) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 692) = 0x7FFFFFFFLL;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0x7FFFFFFFLL;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0;
  *(a1 + 1220) = 0x7FFFFFFFLL;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  if (!*(a1 + 152))
  {
    re::MeshAssetData::generateMetaData((a1 + 16));
  }

  re::DynamicArray<float>::operator=(a1 + 224, (a1 + 136));
  v3 = a1 + 96;
  if (!*(a1 + 112))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(a1 + 48) + 232;
      while (!*(v5 + 16))
      {
        v5 += 512;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      v3 = v5;
    }
  }

LABEL_10:
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  v9[0] = v6;
  v9[1] = v7;
  re::MeshAsset::setSkeletons(a1, v9);
  return a1;
}

void re::MeshAsset::setSkeletons(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v6 = re::FixedArray<re::Skeleton>::deinit(a1 + 155);
  a1[156] = v5;
  if (v5)
  {
    if (v5 < 0x1642C8590B21643)
    {
      a1[157] = v8;
      if (!v8)
      {
        goto LABEL_22;
      }

      v10 = v5 - 1;
      if (v5 == 1)
      {
        v12 = 0uLL;
        *v8 = 0u;
        *(v8 + 176) = 0;
        *(v8 + 144) = 0u;
        *(v8 + 160) = 0u;
        *(v8 + 112) = 0u;
        *(v8 + 128) = 0u;
        *(v8 + 80) = 0u;
        *(v8 + 96) = 0u;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        v13 = (v8 + 16);
        *(v8 + 8) = &str_67;
        v11 = v8 + 172;
        *(v8 + 32) = 0u;
      }

      else
      {
        v11 = v8 + 172;
        do
        {
          *(v11 - 172) = 0uLL;
          *(v11 - 12) = 0uLL;
          *(v11 - 28) = 0uLL;
          *(v11 + 4) = 0;
          *(v11 - 44) = 0uLL;
          *(v11 - 60) = 0uLL;
          *(v11 - 76) = 0uLL;
          *(v11 - 92) = 0uLL;
          *(v11 - 108) = 0uLL;
          *(v11 - 124) = 0uLL;
          *(v11 - 140) = 0uLL;
          *(v11 - 156) = 0uLL;
          *(v11 - 164) = &str_67;
          *(v11 - 16) = 0uLL;
          *v11 = 0x7FFFFFFF;
          v11 += 184;
          --v10;
        }

        while (v10);
        v12 = 0uLL;
        *(v11 - 156) = 0u;
        v13 = (v11 - 156);
        *(v11 - 172) = 0u;
        *(v11 + 4) = 0;
        v13[8] = 0u;
        v13[9] = 0u;
        v13[6] = 0u;
        v13[7] = 0u;
        v13[4] = 0u;
        v13[5] = 0u;
        v13[2] = 0u;
        v13[3] = 0u;
        v13[1] = 0u;
        *(v11 - 164) = &str_67;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(v13 + 140) = v12;
      v13[7] = v12;
      v13[8] = v12;
      *v11 = 0x7FFFFFFF;
      v13[5] = v12;
      v13[6] = v12;
      v13[3] = v12;
      v13[4] = v12;
      v13[1] = v12;
      v13[2] = v12;
      *v13 = v12;
      while (1)
      {
        v17 = a2[1];
        if (v17 <= v16)
        {
          break;
        }

        v2 = a1[156];
        if (v2 <= v16)
        {
          goto LABEL_20;
        }

        v2 = (*a2 + v15);
        v18 = a1[157];
        v19 = v2[3];
        v31[0] = v2[4];
        v31[1] = v19;
        v20 = v2[6];
        *v26 = v2[7];
        *&v26[8] = v20;
        v21 = v2[9];
        v22[0] = v2[10];
        v22[1] = v21;
        if ((v23[0] & 1) == 0)
        {
          v8 = v24;
          if (v24)
          {
            if (BYTE8(v24))
            {
              v8 = (*(*v24 + 40))();
            }

            v25 = 0u;
            v24 = 0u;
          }
        }

        ++v16;
        v15 += 112;
        v14 += 184;
        if (v5 == v16)
        {
          return;
        }
      }

      re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v17);
      _os_crash();
      __break(1u);
LABEL_20:
      v22[0] = 0;
      memset(v31, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v26 = 136315906;
      *&v26[4] = "operator[]";
      *&v26[12] = 1024;
      *&v26[14] = 468;
      v27 = 2048;
      v28 = v16;
      v29 = 2048;
      v30 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 184, v5);
    _os_crash();
    __break(1u);
LABEL_22:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::MeshAsset::MeshAsset(uint64_t a1, id *a2, uint64_t a3)
{
  *a1 = &unk_1F5CBD550;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 336) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 344) = *a2;
  *(a1 + 352) = 0;
  *(a1 + 544) = -1;
  v5 = *(a3 + 192);
  if (v5 != -1)
  {
    v12[0] = a1 + 352;
    (off_1F5CBD6F8[v5])(v12, a3);
    *(a1 + 544) = v5;
  }

  *(a1 + 576) = 0;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 676) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 692) = 0x7FFFFFFFLL;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0x7FFFFFFFLL;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0;
  *(a1 + 1220) = 0x7FFFFFFFLL;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  re::makeMeshCollectionWithMeshPayload((a1 + 344), (a1 + 352), v12);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 304, v12);
  re::DynamicArray<re::MeshModel>::deinit(v12);
  v15 = 0;
  v12[1] = 0;
  v13 = 0;
  v12[0] = 0;
  v14 = 0;
  re::makeMeshAssetInstancesWithMeshPayload((a1 + 344), v12);
  v11[0] = v15;
  v11[1] = v13;
  v6 = *(a1 + 1248);
  v10[0] = *(a1 + 1256);
  v10[1] = v6;
  v8 = re::globalAllocators(v7);
  re::MeshNameMap::init(a1 + 640, a1 + 304, v11, v10, v8[2]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(v12);
  return a1;
}

void re::MeshAsset::~MeshAsset(re::MeshAsset *this)
{
  *this = &unk_1F5CBD550;
  *(this + 71) = 0;
  ++*(this + 144);
  *(this + 76) = 0;
  ++*(this + 154);
  *(this + 1264) = 0;
  re::FixedArray<re::Skeleton>::deinit(this + 155);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 148);
  re::FixedArray<CoreIKTransform>::deinit(this + 145);
  re::FixedArray<CoreIKTransform>::deinit(this + 142);
  re::FixedArray<CoreIKTransform>::deinit(this + 139);
  re::FixedArray<CoreIKTransform>::deinit(this + 136);
  re::FixedArray<CoreIKTransform>::deinit(this + 133);
  re::MeshNameMap::~MeshNameMap((this + 640));
  re::DynamicArray<unsigned long>::deinit(this + 592);
  re::DynamicArray<unsigned long>::deinit(this + 552);
  v2 = *(this + 136);
  if (v2 != -1)
  {
    (off_1F5CBD6E8[v2])(&v3, this + 352);
  }

  *(this + 136) = -1;

  re::DynamicArray<re::MeshModel>::deinit(this + 304);
  re::DynamicArray<re::AssetHandle>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(this + 184);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(this + 96);
  re::DynamicArray<re::MeshAssetInstance>::deinit(this + 56);
  re::DynamicArray<re::MeshAssetModel>::deinit(this + 16);
}

{
  re::MeshAsset::~MeshAsset(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<re::Skeleton>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 184 * v2;
      do
      {
        re::Skeleton::~Skeleton(v4);
        v4 = (v6 + 184);
        v5 -= 184;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::MeshAsset::replaceContentsWithMeshResourceDefinition(re::MeshAsset *a1, uint64_t a2, Device **a3, re::MeshManager *a4, int a5)
{
  v8 = *(a2 + 240) != 0;
  *(a1 + 1232) = v8;
  v11 = a5;
  v12 = v8;
  re::makeMeshPayloadWithMeshResourceDefinition(a2, a3, &v11, &v10);
  LOBYTE(a4) = re::MeshAsset::replaceContentsWithPayload(a1, &v10, a3, a4);

  if ((a4 & 1) == 0)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Unable to replace MeshAsset contents with a model definition", "success", "replaceContentsWithMeshResourceDefinition", 552);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::MeshAsset::replaceContentsWithPayload(re::MeshAsset *this, id *a2, id *a3, re::MeshManager *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  *(this + 1264) = 0;
  if (*(this + 74) && *(this + 69))
  {
    re::MeshManager::destroyCollection(a4, this + 69);
    re::DynamicArray<unsigned long>::deinit(this + 592);
    re::DynamicArray<unsigned long>::deinit(this + 552);
  }

  re::FixedArray<re::Skeleton>::deinit(this + 155);
  re::MeshNameMap::deinit((this + 640));
  *(this + 30) = 0;
  ++*(this + 62);
  if (!*a3)
  {
    goto LABEL_8;
  }

  re::ObjCObject::operator=(this + 43, a2);
  re::MeshPayload::makeMeshPayloadBuffers(a2, a3, &v42);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1>>(this + 352, &v42);
  if (v47 != -1)
  {
    (off_1F5CBD6E8[v47])(v48, &v42);
  }

  result = re::MeshPayloadBuffers::areValid((this + 352));
  if (result)
  {
LABEL_8:
    re::makeMeshCollectionWithMeshPayload(a2, (this + 352), &v42);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 304, &v42);
    re::DynamicArray<re::MeshModel>::deinit(&v42);
    v40 = 0;
    v37[1] = 0;
    v38 = 0;
    v37[0] = 0;
    v39 = 0;
    re::makeMeshAssetSkeletonsWithMeshPayload(a2, v37);
    *&v42 = v40;
    *(&v42 + 1) = v38;
    re::MeshAsset::setSkeletons(this, &v42);
    v36 = 0;
    v33[1] = 0;
    v34 = 0;
    v33[0] = 0;
    v35 = 0;
    v28 = a2;
    re::makeMeshAssetInstancesWithMeshPayload(a2, v33);
    *&v42 = v36;
    *(&v42 + 1) = v34;
    v8 = *(this + 156);
    *v48 = *(this + 157);
    *&v48[8] = v8;
    v10 = re::globalAllocators(v9);
    re::MeshNameMap::init(this + 640, this + 304, &v42, v48, v10[2]);
    v32 = 0;
    memset(v30, 0, sizeof(v30));
    v31 = 0;
    v11 = *(this + 40);
    if (v11)
    {
      v12 = 0;
      v29 = *(this + 40);
      do
      {
        v13 = *(this + 40);
        if (v13 <= v12)
        {
          v41 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v48 = 136315906;
          *&v48[4] = "operator[]";
          *&v48[12] = 1024;
          *&v48[14] = 797;
          v49 = 2048;
          v50 = v12;
          v51 = 2048;
          v52 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v14 = (*(this + 42) + 864 * v12);
        v15 = v14[28];
        if (v15 && (v16 = *(v15 + 8)) != 0)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = v14[28];
            if (v20 && *(v20 + 8) > v18 && (v21 = *(*(v20 + 16) + 88 * v18 + 1)) != 0)
            {
              if (v18 >= v14[7])
              {
                v22 = 0;
              }

              else
              {
                v22 = *(v14[8] + 544 * v18 + 452);
              }

              v17 += v22;
              v19 += v22 * v21;
            }

            else
            {
              re::SkinningModelUtil::skinnedEndIndicesBuffer((v14 + 18), v18, v48);
              re::ReadOnlyCPUAccessibleBufferSliceContent::make(v48, &v42);
              if (v42 == 1)
              {
                if (v43 >= 4)
                {
                  v23 = 0;
                  v24 = v43 >> 2;
                  v25 = *(&v42 + 1);
                  do
                  {
                    v26 = *v25++;
                    v19 = v19 - v23 + v26;
                    v23 = v26;
                    --v24;
                  }

                  while (v24);
                }

                v17 += v43 >> 2;
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v42 + 8));
              }

              else if (*(&v43 + 1) && (v44 & 1) != 0)
              {
                (*(**(&v43 + 1) + 40))();
              }

              if (HIDWORD(v50) != -1)
              {
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[HIDWORD(v50)])(&v42, v48);
              }
            }

            ++v18;
          }

          while (v18 != v16);
          if (v17)
          {
            v27 = v19 / v17;
          }

          else
          {
            v27 = 0.0;
          }

          v11 = v29;
        }

        else
        {
          v27 = 0.0;
        }

        *&v42 = v27;
        re::DynamicArray<float>::add(v30, &v42);
        ++v12;
      }

      while (v12 != v11);
    }

    re::DynamicArray<re::RigComponentConstraint>::operator=(this + 224, v30);
    if (v30[0])
    {
      if (v32)
      {
        (*(*v30[0] + 40))();
      }
    }

    *(this + 1232) = [*v28 isLimitedRenderAsset];
    re::DynamicArray<re::MeshAssetInstance>::deinit(v33);
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v37);
    return 1;
  }

  return result;
}

__n128 re::MeshAsset::aabbFromMesh@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*(a1 + 632) && (*(a1 + 1264) & 1) != 0)
  {
    v6 = *(a1 + 568);
    if (*(a1 + 568))
    {
      v7 = 0;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v9.i64[0] = 0x7F0000007FLL;
      v9.i64[1] = 0x7F0000007FLL;
      v53 = vnegq_f32(v8);
      v54 = v9;
      while (1)
      {
        v10 = *(a1 + 568);
        if (v10 <= v7)
        {
          goto LABEL_25;
        }

        v11 = re::DataArray<re::MeshInstance>::tryGet(*(a1 + 632) + 72, *(*(a1 + 584) + 8 * v7));
        if (v11)
        {
          v12 = v11;
          v13 = re::DataArray<re::MeshModel>::tryGet(*(a1 + 632) + 8, *(v11 + 16));
          if (v13)
          {
            v14 = 0;
            v15 = *a2;
            v16 = a2[1];
            v17 = a2[2];
            v18 = a2[3];
            v19 = v12[3];
            v20 = v12[4];
            v21 = v12[5];
            *v60 = v12[2];
            *&v60[16] = v19;
            *&v60[32] = v20;
            v61 = v21;
            do
            {
              *(&v55 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*&v60[v14])), v16, *&v60[v14], 1), v17, *&v60[v14], 2), v18, *&v60[v14], 3);
              v14 += 16;
            }

            while (v14 != 64);
            re::AABB::transform(v13 + 1, &v55, v60);
            v22 = v53;
            v22.i32[3] = 0;
            v23 = *v60;
            v24 = *&v60[16];
            v23.i32[3] = 0;
            v25 = vminnmq_f32(v22, v23);
            v26 = v54;
            v26.i32[3] = 0;
            v24.i32[3] = 0;
            v53 = v25;
            v54 = vmaxnmq_f32(v26, v24);
          }
        }

        if (++v7 == v6)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v10 = *(a1 + 72);
    v7 = v10;
    if (v10)
    {
      v27 = 0;
      v28 = *a2;
      v29 = a2[1];
      v30.i64[0] = 0x7F0000007FLL;
      v30.i64[1] = 0x7F0000007FLL;
      v31.i64[0] = 0x7F0000007FLL;
      v31.i64[1] = 0x7F0000007FLL;
      v53 = vnegq_f32(v30);
      v54 = v31;
      v32 = a2[2];
      v33 = a2[3];
      v51 = v29;
      v52 = *a2;
      v49 = v33;
      v50 = v32;
      while (v27 != v10)
      {
        v34 = *(a1 + 88) + 96 * v27;
        v3 = *(v34 + 80);
        v35 = *(a1 + 32);
        if (v35 <= v3)
        {
          goto LABEL_24;
        }

        v36 = 0;
        v37 = *(a1 + 48);
        v38 = *(v34 + 32);
        v39 = *(v34 + 48);
        v40 = *(v34 + 64);
        *v60 = *(v34 + 16);
        *&v60[16] = v38;
        *&v60[32] = v39;
        v61 = v40;
        do
        {
          *(&v55 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*&v60[v36])), v29, *&v60[v36], 1), v32, *&v60[v36], 2), v33, *&v60[v36], 3);
          v36 += 16;
        }

        while (v36 != 64);
        re::AABB::transform((v37 + (v3 << 9) + 16), &v55, v60);
        v33 = v49;
        v32 = v50;
        v29 = v51;
        v28 = v52;
        v42 = v53;
        v41 = v54;
        v42.i32[3] = 0;
        v43 = *v60;
        v44 = *&v60[16];
        v43.i32[3] = 0;
        v41.i32[3] = 0;
        v44.i32[3] = 0;
        v53 = vminnmq_f32(v42, v43);
        v54 = vmaxnmq_f32(v41, v44);
        if (++v27 == v10)
        {
          goto LABEL_22;
        }
      }

      *a3 = v53;
      a3[1] = v54;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v35 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v60 = 136315906;
      *&v60[4] = "operator[]";
      *&v60[12] = 1024;
      *&v60[14] = 797;
      *&v60[18] = 2048;
      *&v60[20] = v10;
      *&v60[28] = 2048;
      *&v60[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_24:
      *a3 = v53;
      a3[1] = v54;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v60 = 136315906;
      *&v60[4] = "operator[]";
      *&v60[12] = 1024;
      *&v60[14] = 797;
      *&v60[18] = 2048;
      *&v60[20] = v3;
      *&v60[28] = 2048;
      *&v60[30] = v35;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_25:
      *a3 = v53;
      a3[1] = v54;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v60 = 136315906;
      *&v60[4] = "operator[]";
      *&v60[12] = 1024;
      *&v60[14] = 797;
      *&v60[18] = 2048;
      *&v60[20] = v7;
      *&v60[28] = 2048;
      *&v60[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  v45.i64[0] = 0x7F0000007FLL;
  v45.i64[1] = 0x7F0000007FLL;
  v46.i64[0] = 0x7F0000007FLL;
  v46.i64[1] = 0x7F0000007FLL;
  v53 = vnegq_f32(v45);
  v54 = v46;
LABEL_22:
  result = v54;
  *a3 = v53;
  a3[1] = v54;
  return result;
}

uint64_t re::DataArray<re::MeshInstance>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 144 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DataArray<re::MeshModel>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 864 * a2;
  }

  else
  {
    return 0;
  }
}

void re::MeshAsset::tightAABBFromMesh(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v85 = *MEMORY[0x1E69E9840];
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v5 = vnegq_f32(v4);
  *a3 = v5;
  a3[1] = v4;
  if (*(a1 + 632))
  {
    v6 = a1;
    v55 = *(a1 + 568);
    if (*(a1 + 568))
    {
      v7 = 0;
      v5 = vnegq_f32(v4);
      do
      {
        v8 = v6[71];
        if (v8 <= v7)
        {
LABEL_53:
          *a3 = v5;
          a3[1] = v4;
          v70[0].i64[0] = 0;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v72 = 0u;
          v41 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v82[0]) = 136315906;
          *(v82 + 4) = "operator[]";
          WORD6(v82[0]) = 1024;
          *(v82 + 14) = 797;
          WORD1(v82[1]) = 2048;
          *(&v82[1] + 4) = v7;
          WORD6(v82[1]) = 2048;
          *(&v82[1] + 14) = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_54:
          *a3 = v39;
          a3[1] = v38;
          v71 = 0;
          v83 = 0u;
          v84 = 0u;
          memset(v82, 0, sizeof(v82));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v77 = 136315906;
          *&v77[4] = "operator[]";
          *&v77[12] = 1024;
          *&v77[14] = 476;
          v78 = 2048;
          v79 = v3;
          v80 = 2048;
          v81 = v41;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_55:
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        v64 = v5;
        v65 = v4;
        v9 = re::DataArray<re::MeshInstance>::tryGet(v6[79] + 72, *(v6[73] + 8 * v7));
        if (!v9)
        {
          goto LABEL_46;
        }

        v10 = 0;
        v11 = *a2;
        v12 = a2[1];
        v13 = a2[2];
        v14 = a2[3];
        v15 = *(v9 + 48);
        v16 = *(v9 + 64);
        v17 = *(v9 + 80);
        v82[0] = *(v9 + 32);
        v82[1] = v15;
        v82[2] = v16;
        v83 = v17;
        do
        {
          *(&v72 + v10 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v82[v10])), v12, *&v82[v10], 1), v13, v82[v10], 2), v14, v82[v10], 3);
          ++v10;
        }

        while (v10 != 4);
        v60 = v73;
        v61 = v72;
        v62 = v75;
        v63 = v74;
        v18 = re::DataArray<re::MeshModel>::tryGet(v6[79] + 8, *(v9 + 16));
        if (v18)
        {
          v19 = v18;
          v8 = *(v18 + 56);
          v5 = v64;
          v4 = v65;
          if (*(v18 + 56))
          {
            v20 = 0;
            v22 = v62;
            v21 = v63;
            while (1)
            {
              v3 = *(v19 + 56);
              if (v3 <= v20)
              {
                *a3 = v5;
                a3[1] = v4;
                v70[0].i64[0] = 0;
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v72 = 0u;
                v31 = MEMORY[0x1E69E9C10];
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v82[0]) = 136315906;
                *(v82 + 4) = "operator[]";
                WORD6(v82[0]) = 1024;
                *(v82 + 14) = 476;
                WORD1(v82[1]) = 2048;
                *(&v82[1] + 4) = v20;
                WORD6(v82[1]) = 2048;
                *(&v82[1] + 14) = v3;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_51:
                *a3 = v64;
                a3[1] = v65;
                v66[0] = 0;
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v72 = 0u;
                v8 = MEMORY[0x1E69E9C10];
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v82[0]) = 136315906;
                *(v82 + 4) = "operator[]";
                WORD6(v82[0]) = 1024;
                *(v82 + 14) = 476;
                WORD1(v82[1]) = 2048;
                *(&v82[1] + 4) = v3;
                WORD6(v82[1]) = 2048;
                *(&v82[1] + 14) = v31;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_52:
                *a3 = v64;
                a3[1] = v65;
                re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v34);
                _os_crash();
                __break(1u);
                goto LABEL_53;
              }

              v64 = v5;
              v65 = v4;
              v23 = 0;
              v24 = *(v19 + 64);
              v25 = v24 + 544 * v20;
              v3 = *(v25 + 461);
              v26 = *(v25 + 368);
              v27 = *(v25 + 384);
              v28 = *(v25 + 400);
              v82[0] = *(v25 + 352);
              v82[1] = v26;
              v82[2] = v27;
              v83 = v28;
              do
              {
                *(&v72 + v23 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(v82[v23])), v60, *&v82[v23], 1), v21, v82[v23], 2), v22, v82[v23], 3);
                ++v23;
              }

              while (v23 != 4);
              v70[0] = v72;
              v70[1] = v73;
              v70[2] = v74;
              v70[3] = v75;
              if (v3 == 255 || !*(v25 + 452))
              {
                goto LABEL_43;
              }

              v29 = (v24 + 544 * v20);
              do
              {
                v30 = v29;
                v29 = *v29;
                v31 = v30[3];
                if (v29)
                {
                  v32 = v31 == 0;
                }

                else
                {
                  v32 = 0;
                }
              }

              while (v32);
              if (v31 <= v3)
              {
                goto LABEL_51;
              }

              if (*(v30[4] + 16 * v3 + 12) != 30)
              {
                goto LABEL_43;
              }

              v56 = v75;
              v57 = v74;
              v58 = v73;
              v59 = v72;
              v33 = re::AttributeTable::buffers(v25);
              if (v34 <= v3)
              {
                goto LABEL_52;
              }

              v35 = v33 + 24 * v3;
              *v77 = *v35;
              v36 = *(v35 + 4);
              LODWORD(v35) = *(v35 + 5);
              v72 = *v77;
              v73.i64[0] = __PAIR64__(v35, v36);
              v66[0] = 0;
              v67 = 0;
              v68 = v36;
              v69 = v35;
              *&v82[0] = v66;
              *(&v82[0] + 1) = v66;
              if (*&v77[8] == -1)
              {
                goto LABEL_55;
              }

              v71 = v82;
              (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSliceC1ENS6_10BufferViewEmmE3__0ZNS9_C1ESA_mmE3__1EEEEEJRNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v72.u32[2]])(&v71, &v72);
              re::ReadOnlyCPUAccessibleBufferSliceContent::make(v66, &v72);
              if (v72.u8[0] != 1)
              {
                break;
              }

              v37 = v25;
              v39 = v64;
              v38 = v65;
              do
              {
                v40 = v37;
                v37 = *v37;
                v41 = v40[3];
                if (v37)
                {
                  v42 = v41 == 0;
                }

                else
                {
                  v42 = 0;
                }
              }

              while (v42);
              if (v41 <= v3)
              {
                goto LABEL_54;
              }

              v43 = *(v25 + 452);
              if (v43)
              {
                v44 = *(v40[4] + 16 * v3);
                v45 = (v72.i64[1] + 8);
                do
                {
                  v46 = vaddq_f32(v56, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v59, *(v45 - 2)), v58, *(v45 - 1)), v57, *v45));
                  v47 = vdivq_f32(v46, vdupq_laneq_s32(v46, 3));
                  v39.i32[3] = 0;
                  v47.i32[3] = 0;
                  v39 = vminnmq_f32(v39, v47);
                  v38.i32[3] = 0;
                  v38 = vmaxnmq_f32(v38, v47);
                  v45 = (v45 + v44);
                  --v43;
                }

                while (v43);
              }

              v64 = v39;
              v65 = v38;
              re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v72.u32[2]);
              if (v67 != -1)
              {
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v67])(&v72, v66);
              }

              v5 = v64;
              v4 = v65;
LABEL_44:
              ++v20;
              v22 = v62;
              v21 = v63;
              if (v20 == v8)
              {
                goto LABEL_47;
              }
            }

            if (v73.i64[1] && (v74.i8[0] & 1) != 0)
            {
              (*(*v73.i64[1] + 40))();
            }

            if (v67 != -1)
            {
              (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v67])(&v72, v66);
            }

LABEL_43:
            re::AABB::transform((v25 + 416), v70, &v72);
            v48 = v72;
            v50 = v64;
            v49 = v65;
            v50.i32[3] = 0;
            v48.i32[3] = 0;
            v5 = vminnmq_f32(v50, v48);
            v51 = v73;
            v49.i32[3] = 0;
            v51.i32[3] = 0;
            v4 = vmaxnmq_f32(v49, v51);
            goto LABEL_44;
          }
        }

        else
        {
LABEL_46:
          v5 = v64;
          v4 = v65;
        }

LABEL_47:
        ++v7;
        v6 = a1;
      }

      while (v7 != v55);
    }

    *a3 = v5;
    a3[1] = v4;
  }
}

re::AttributeTable *re::AttributeTable::buffers(re::AttributeTable **this)
{
  v2 = *this;
  if (v2)
  {
    v3 = this[15] == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return re::AttributeTable::buffers(v2);
  }

  else
  {
    return this[17];
  }
}

uint64_t re::MeshAssetLoader::introspectionType(re::MeshAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::MeshAsset>(BOOL)::info = re::internal::getOrCreateInfo("MeshAsset", re::allocInfo_MeshAsset, re::initInfo_MeshAsset, &re::internal::introspectionInfoStorage<re::MeshAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[43];
}

uint64_t re::MeshAsset::createRuntimeData(uint64_t a1, uint64_t a2, re *a3, int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  *(a1 + 1264) = 0;
  if (!a2)
  {
    return 1;
  }

  if (*(a1 + 568) || *(a1 + 72) == 0)
  {
    return 1;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 48);
      v35 = v6 + (v5 << 9);
      do
      {
        re::DynamicArray<re::MeshAssetBlendShapeData>::clear(v6 + 112);
        v7 = *(v6 + 208);
        if (v7)
        {
          v8 = *(v6 + 224);
          v9 = v8 + (v7 << 8);
          do
          {
            v10 = *(v8 + 16);
            if (v10)
            {
              v11 = 0;
              v12 = 80 * v10;
              v13 = (*(v8 + 32) + 16);
              while (1)
              {
                v14 = (*(v13 - 1) & 1) != 0 ? *v13 : v13 - 7;
                if (!strcmp(v14, "vertexUV1"))
                {
                  break;
                }

                v11 |= strcmp(v14, "vertexUV") == 0;
                v13 += 10;
                v12 -= 80;
                if (!v12)
                {
                  if (v11)
                  {
                    v36 = "vertexUV1";
                    v15 = re::Hash<re::DynamicString>::operator()(&v37, "vertexUV1");
                    v16 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(v8 + 200, &v36, v15, &v37);
                    if (HIDWORD(v38) == 0x7FFFFFFF)
                    {
                      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(v8 + 200, "vertexUV1", &v37);
                      if (v37)
                      {
                        if (v38)
                        {
                          (*(*v37 + 40))();
                        }
                      }
                    }
                  }

                  break;
                }
              }
            }

            v8 += 256;
          }

          while (v8 != v9);
        }

        v6 += 512;
      }

      while (v6 != v35);
    }
  }

  if (!*(a1 + 1248))
  {
    v17 = a1 + 96;
    if (!*(a1 + 112))
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = *(a1 + 48) + 232;
        while (!*(v19 + 16))
        {
          v19 += 512;
          if (!--v18)
          {
            goto LABEL_33;
          }
        }

        v17 = v19;
      }
    }

LABEL_33:
    v20 = *(v17 + 32);
    v21 = *(v17 + 16);
    v37 = v20;
    v38 = v21;
    re::MeshAsset::setSkeletons(a1, &v37);
  }

  if ((atomic_load_explicit(&qword_1EE193FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193FC0))
  {
    re::Defaults::BOOLValue("EnableMeshPayload", v30, &v37);
    if (v37)
    {
      v31 = BYTE1(v37);
    }

    else
    {
      v31 = 1;
    }

    _MergedGlobals_61 = v31;
    __cxa_guard_release(&qword_1EE193FC0);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = (*(a1 + 48) + 488);
    v24 = v22 << 9;
    while (!*(v23 - 20) && !*(v23 - 15) && !*(v23 - 10) && !*(v23 - 5) && !*v23)
    {
      v23 += 64;
      v24 -= 512;
      if (!v24)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

LABEL_43:
  if ((_MergedGlobals_61 & 1) == 0)
  {
LABEL_51:
    re::createMeshCollectionFromMeshAsset(a3, (a1 + 16), &v37);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 304, &v37);
    re::DynamicArray<re::MeshModel>::deinit(&v37);
    goto LABEL_52;
  }

  if (!*(a1 + 344))
  {
    LODWORD(v36) = a4;
    BYTE4(v36) = *(a1 + 1232);
    operator new();
  }

  if (re::MeshPayloadBuffers::areValid((a1 + 352)))
  {
    goto LABEL_50;
  }

  re::MeshPayload::makeMeshPayloadBuffers((a1 + 344), a3, &v37);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1>>(a1 + 352, &v37);
  if (v40 != -1)
  {
    (off_1F5CBD6E8[v40])(&v36, &v37);
  }

  result = re::MeshPayloadBuffers::areValid((a1 + 352));
  if (result)
  {
LABEL_50:
    v37 = &unk_1F5CBD830;
    v38 = a1;
    v39 = &v37;
    re::runInLocalAutoreleasePool(&v37);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v37);
LABEL_52:
    v26 = re::MeshNameMap::deinit((a1 + 640));
    v27 = *(a1 + 88);
    v28 = *(a1 + 72);
    v29 = re::globalAllocators(v26);
    re::MeshNameMap::init(a1 + 640, (a1 + 16), v27, v28, v29[2]);
    if (!*(a1 + 152))
    {
      re::MeshAssetData::generateMetaData((a1 + 16));
    }

    re::DynamicArray<float>::operator=(a1 + 224, (a1 + 136));
    return 1;
  }

  return result;
}

void re::DynamicArray<re::MeshAssetBlendShapeData>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 56 * v2;
    do
    {
      re::FixedArray<re::BlendShapeDefinition>::deinit(v3 + 2);
      re::StringID::destroyString(v3);
      v3 = (v3 + 56);
      v4 -= 56;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(uint64_t a1, char *a2, void *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicString>(a1, &v7, &v10, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v8) + 40;
  }
}

uint64_t re::DataArray<re::MeshInstance>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 144 * a2;
}

uint64_t re::DataArray<re::MeshModel>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 864 * a2;
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(a1, a2, v3 ^ (v3 >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::addNew(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(a1, a2, v6 ^ (v6 >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

uint64_t re::MeshAsset::registerRuntimeData(re::MeshAsset *this, re::MeshManager *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  *(this + 1264) = 0;
  if (*(this + 38))
  {
    if (*(this + 43))
    {
      re::registerMeshCollectionWithMeshPayload(this + 304, this + 43, a2, v87);
      if ((this + 552) != v87)
      {
        v7 = *(this + 69);
        if (v7 && *&v87[0] && v7 != *&v87[0])
        {
          goto LABEL_105;
        }

        *(this + 69) = *&v87[0];
        *&v87[0] = v7;
        v8 = *(this + 35);
        *(this + 35) = *(v87 + 8);
        *(v87 + 8) = v8;
        v9 = *(this + 73);
        *(this + 73) = v88;
        *&v88 = v9;
        ++DWORD2(v87[1]);
        ++*(this + 144);
      }

      v10 = *(&v88 + 1);
      if (this + 592 != &v88 + 8)
      {
        v11 = *(this + 74);
        if (v11 && *(&v88 + 1) && v11 != *(&v88 + 1))
        {
LABEL_106:
          re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash();
          __break(1u);
        }

        *(this + 74) = *(&v88 + 1);
        *(&v88 + 1) = v11;
        v12 = *(this + 600);
        *(this + 600) = v89;
        v89 = v12;
        v13 = *(this + 78);
        *(this + 78) = *(&v90 + 1);
        *(&v90 + 1) = v13;
        LODWORD(v90) = v90 + 1;
        v10 = v11;
        ++*(this + 154);
      }

      if (v10)
      {
        if (*(&v90 + 1))
        {
          (*(*v10 + 40))(v10);
        }

        *(&v90 + 1) = 0;
        v89 = 0uLL;
        *(&v88 + 1) = 0;
        LODWORD(v90) = v90 + 1;
      }

      if (*&v87[0] && v88)
      {
        (*(**&v87[0] + 40))();
      }
    }

    else
    {
      v14 = *(this + 40);
      if (v14)
      {
        v15 = *(this + 42);
        v16 = 864 * v14;
        do
        {
          *&v87[0] = re::DataArray<re::MeshModel>::create<re::MeshModel>(a2 + 8, v15);
          re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add(this + 74, v87);
          v15 += 108;
          v16 -= 864;
        }

        while (v16);
      }

      v17 = *(this + 9);
      if (v17)
      {
        v18 = *(this + 11);
        v3 = v18 + 96 * v17;
        do
        {
          re::StringID::StringID(&v97, v18);
          v2 = *(v18 + 80);
          v19 = *(this + 76);
          if (v19 <= v2)
          {
            goto LABEL_104;
          }

          v2 = *(*(this + 78) + 8 * v2);
          v87[0] = v97;
          *&v97 = 0;
          *(&v97 + 1) = &str_67;
          *&v87[1] = 0xFFFFFFFFLL;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v20 = re::DataArray<re::MeshModel>::tryGet(a2 + 8, v2);
          v21 = *(v18 + 64);
          v23 = *(v18 + 16);
          v22 = *(v18 + 32);
          v90 = *(v18 + 48);
          v91 = v21;
          v88 = v23;
          v89 = v22;
          *&v87[1] = v2;
          if (v97)
          {
            if (v97)
            {
            }
          }

          *&v97 = 0;
          *(&v97 + 1) = &str_67;
          *&v108 = re::DataArray<re::MeshInstance>::create<re::MeshInstance>(a2 + 72, v87);
          re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add(this + 69, &v108);
          re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(&v93 + 1);
          v24 = v92;
          if (v92)
          {
            if (*(&v92 + 1))
            {
              v24 = (*(*v92 + 40))();
              *(&v92 + 1) = 0;
              *&v93 = 0;
            }

            *&v92 = 0;
          }

          if (v87[0])
          {
            if (v87[0])
            {
            }
          }

          v18 += 96;
        }

        while (v18 != v3);
      }
    }

    re::DynamicArray<re::MeshModel>::deinit(this + 304);
  }

  *(this + 79) = a2;
  re::FixedArray<CoreIKTransform>::deinit(this + 133);
  re::FixedArray<CoreIKTransform>::deinit(this + 136);
  re::FixedArray<CoreIKTransform>::deinit(this + 139);
  re::FixedArray<CoreIKTransform>::deinit(this + 142);
  re::FixedArray<CoreIKTransform>::deinit(this + 145);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 148);
  v85 = *(this + 71);
  if (!v85)
  {
    goto LABEL_89;
  }

  re::StackScratchAllocator::StackScratchAllocator(v87);
  v25 = 2 * *(this + 152);
  memset(v100, 0, 36);
  *&v100[36] = 0x7FFFFFFFLL;
  re::HashSetBase<re::DataArrayHandle<re::MeshModel>,re::DataArrayHandle<re::MeshModel>,re::internal::ValueAsKey<re::DataArrayHandle<re::MeshModel>>,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(v100, v87, v25);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v19 = 24;
  do
  {
    v29 = *(this + 71);
    if (v29 <= v28)
    {
      goto LABEL_96;
    }

    v3 = re::DataArray<re::MeshInstance>::get(*(this + 79) + 72, *(*(this + 73) + 8 * v28));
    v30 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(v3 + 16));
    v2 = *(v30 + 7);
    v31 = *(v3 + 16);
    v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v31 & 0xFFFFFF)) >> 27));
    v33 = v32 ^ (v32 >> 31);
    if (!*&v100[24])
    {
      v86 = v27;
      v34 = 0;
LABEL_56:
      v46 = *&v100[36];
      if (*&v100[36] == 0x7FFFFFFF)
      {
        v46 = *&v100[32];
        v47 = *&v100[32];
        if (*&v100[32] == *&v100[24])
        {
          v48 = v30;
          re::HashSetBase<re::DataArrayHandle<re::MeshModel>,re::DataArrayHandle<re::MeshModel>,re::internal::ValueAsKey<re::DataArrayHandle<re::MeshModel>>,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(v100, 2 * *&v100[28]);
          v30 = v48;
          v47 = *&v100[32];
          v34 = v33 % *&v100[24];
        }

        *&v100[32] = v47 + 1;
        v49 = *&v100[16];
        v50 = *(*&v100[16] + 24 * v46 + 8);
      }

      else
      {
        v49 = *&v100[16];
        v50 = *(*&v100[16] + 24 * *&v100[36] + 8);
        *&v100[36] = v50 & 0x7FFFFFFF;
      }

      v51 = v49 + 24 * v46;
      *(v51 + 8) = v50 | 0x80000000;
      v52 = *&v100[8];
      *(v51 + 8) = *(*&v100[8] + 4 * v34) | 0x80000000;
      *v51 = v33;
      *(v51 + 16) = *(v3 + 16);
      *(v52 + 4 * v34) = v46;
      ++*&v100[28];
      ++*&v100[40];
      v53 = *(v30 + 7);
      v27 = v86;
LABEL_62:
      v27 += v53;
      goto LABEL_63;
    }

    v34 = v33 % *&v100[24];
    v35 = *(*&v100[8] + 4 * v34);
    if (v35 == 0x7FFFFFFF)
    {
      v86 = v27;
      v34 = v34;
      goto LABEL_56;
    }

    v36 = *(v3 + 16);
    v37 = HIDWORD(v31);
    v38 = WORD1(v31);
    v39 = *(*&v100[8] + 4 * (v33 % *&v100[24]));
    while (1)
    {
      v40 = *&v100[16] + 24 * v39;
      v42 = *(v40 + 16);
      v41 = v40 + 16;
      if (v42 == v36 && *(v41 + 2) == v38 && ((*(v41 + 4) ^ v37) & 0xFFFFFF) == 0)
      {
        break;
      }

      v39 = *(*&v100[16] + 24 * v39 + 8) & 0x7FFFFFFF;
      if (v39 == 0x7FFFFFFF)
      {
        v34 = v34;
        while (1)
        {
          v43 = *&v100[16] + 24 * v35;
          v45 = *(v43 + 16);
          v44 = v43 + 16;
          if (v45 == v36 && *(v44 + 2) == v38 && ((*(v44 + 4) ^ v37) & 0xFFFFFF) == 0)
          {
            break;
          }

          v35 = *(*&v100[16] + 24 * v35 + 8) & 0x7FFFFFFF;
          if (v35 == 0x7FFFFFFF)
          {
            v86 = v27;
            goto LABEL_56;
          }
        }

        v53 = *(v30 + 7);
        goto LABEL_62;
      }
    }

LABEL_63:
    v26 += v2;
    ++v28;
  }

  while (v28 != v85);
  v59 = 2 * *(this + 152);
  v28 = 0;
  v60 = 0;
  v3 = 0;
  v61 = 96;
  do
  {
    v29 = *(this + 71);
    if (v29 <= v3)
    {
      goto LABEL_97;
    }

    v62 = re::DataArray<re::MeshInstance>::get(*(this + 79) + 72, *(*(this + 73) + 8 * v3));
    v2 = v62 + 16;
    v63 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(v62 + 16));
    v64 = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet(this + 1184, (v62 + 16));
    if (v64)
    {
      v29 = *(this + 137);
      if (v29 <= v3)
      {
        goto LABEL_102;
      }

      *(*(this + 138) + 96 * v3) = *v64;
      goto LABEL_79;
    }

    v65 = *(v63 + 56);
    v19 = v60;
    if (v65)
    {
      v66 = *(v63 + 64);
      v29 = *(this + 134);
      if (v60 <= v29)
      {
        v61 = *(this + 134);
      }

      else
      {
        v61 = v60;
      }

      v67 = 544 * v65;
      v68 = v60;
      while (v61 != v68)
      {
        v19 = v68 + 1;
        *(*(this + 135) + 8 * v68) = v66;
        v66 += 544;
        ++v68;
        v67 -= 544;
        if (!v67)
        {
          goto LABEL_77;
        }
      }

LABEL_95:
      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 468;
      v104 = 2048;
      v105 = v61;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_96:
      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 789;
      v104 = 2048;
      v105 = v28;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_97:
      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 789;
      v104 = 2048;
      v105 = v3;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_98:
      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 468;
      v104 = 2048;
      v105 = v3;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_99:
      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 468;
      v104 = 2048;
      v105 = v3;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_100:
      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 468;
      v104 = 2048;
      v105 = v3;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_101:
      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 468;
      v104 = 2048;
      v105 = v3;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_102:
      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 468;
      v104 = 2048;
      v105 = v3;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_103:
      v99 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 468;
      v104 = 2048;
      v105 = v3;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_104:
      *v101 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v100 = 136315906;
      *&v100[4] = "operator[]";
      *&v100[12] = 1024;
      *&v100[14] = 789;
      *&v100[18] = 2048;
      *&v100[20] = v2;
      *&v100[28] = 2048;
      *&v100[30] = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_105:
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
      goto LABEL_106;
    }

LABEL_77:
    *&v98 = v60;
    *(&v98 + 1) = v19;
    re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::addNew(this + 1184, v2, &v98);
    v29 = *(this + 137);
    if (v29 <= v3)
    {
      goto LABEL_103;
    }

    v61 = 96;
    *(*(this + 138) + 96 * v3) = v98;
    v60 = v19;
LABEL_79:
    v29 = *(this + 137);
    if (v29 <= v3)
    {
      goto LABEL_98;
    }

    v69 = (*(this + 138) + 96 * v3);
    v70 = *(v62 + 32);
    v71 = *(v62 + 48);
    v72 = *(v62 + 80);
    v69[3] = *(v62 + 64);
    v69[4] = v72;
    v69[1] = v70;
    v69[2] = v71;
    v29 = *(this + 137);
    if (v29 <= v3)
    {
      goto LABEL_99;
    }

    v73 = *(v62 + 104);
    v74 = *(this + 138) + 96 * v3;
    *(v74 + 80) = *(v62 + 112);
    *(v74 + 88) = v73;
    v29 = *(this + 140);
    if (v29 <= v3)
    {
      goto LABEL_100;
    }

    *(*(this + 141) + 8 * v3) = v63 + 80;
    v29 = *(this + 143);
    if (v29 <= v3)
    {
      goto LABEL_101;
    }

    v75 = (*(this + 144) + 32 * v3);
    v76 = *(v63 + 32);
    *v75 = *(v63 + 16);
    v75[1] = v76;
    v77 = *(v63 + 56);
    if (v77)
    {
      v78 = 544 * v77;
      v79 = (*(v63 + 64) + 416);
      v80 = 32 * v28;
      while (1)
      {
        v29 = *(this + 146);
        if (v29 <= v28)
        {
          break;
        }

        ++v28;
        v81 = (*(this + 147) + v80);
        v82 = *v79;
        v83 = v79[1];
        v79 += 34;
        *v81 = v82;
        v81[1] = v83;
        v80 += 32;
        v78 -= 544;
        if (!v78)
        {
          goto LABEL_87;
        }
      }

      *&v98 = 0;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      v102 = 1024;
      v103 = 468;
      v104 = 2048;
      v105 = v28;
      v106 = 2048;
      v107 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_95;
    }

LABEL_87:
    ++v3;
  }

  while (v3 != v85);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v100);
  re::StackScratchAllocator::~StackScratchAllocator(v87);
LABEL_89:
  *(this + 1264) = 1;
  v95 = 0u;
  memset(v96, 0, sizeof(v96));
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  memset(v87, 0, sizeof(v87));
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 16, v87);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 56, &v88 + 8);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 96, &v91);
  re::DynamicArray<re::RigComponentConstraint>::operator=(this + 136, &v93 + 8);
  *(this + 44) = v96[0];
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 184, v96 + 8);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v96 + 8);
  if (*(&v93 + 1))
  {
    if (*(&v95 + 1))
    {
      (*(**(&v93 + 1) + 40))();
    }

    *(&v95 + 1) = 0;
    v94 = 0uLL;
    *(&v93 + 1) = 0;
    LODWORD(v95) = v95 + 1;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v91);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v88 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(v87);
  return 0;
}

void *re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<float *>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void re::MeshAssetLoader::~MeshAssetLoader(re::MeshAssetLoader *this)
{
  *this = &unk_1F5CBD570;
  *(this + 4) = 0;

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 33);
  re::AssetHandle::~AssetHandle((this + 224));
  re::AssetHandle::~AssetHandle((this + 200));
  re::AssetHandle::~AssetHandle((this + 176));
  re::AssetHandle::~AssetHandle((this + 152));
  re::AssetHandle::~AssetHandle((this + 128));
  re::AssetHandle::~AssetHandle((this + 104));
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 56));
}

{
  re::MeshAssetLoader::~MeshAssetLoader(this);

  JUMPOUT(0x1E6906520);
}

void re::MeshAssetLoader::makeSharedResourcePayload(re::MeshAssetLoader *this@<X0>, void *a2@<X1>, re::AssetSerializationScheme *a3@<X2>, RESerializedPayload **a4@<X8>)
{
  v8 = *(a2 + 43);
  if (v8 && [v8 isShareable])
  {
    *a4 = *(a2 + 43);
  }

  else
  {

    re::AssetLoader::makeSharedResourcePayload(this, a2, a3, a4);
  }
}

void re::MeshAssetLoader::resourceDidUpdate(uint64_t a1, re::MeshAsset *a2, id *a3, uint64_t a4)
{
  re::MeshPayload::dynamicCast(a3, &v12);
  if (v12)
  {
    re::MeshAsset::replaceContentsWithPayload(a2, &v12, (a1 + 8), *(a1 + 24));
    re::MeshAsset::registerRuntimeData(a2, *(a1 + 24));
  }

  else
  {
    v9 = *re::assetsLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Using fallback Mesh resourceDidUpdate, invalid MeshPayload found.", buf, 2u);
    }

    v10 = *a3;
    re::AssetLoader::resourceDidUpdate(a1, a2, &v10, a4);
  }
}

uint64_t re::MeshAssetLoader::initializeAssetWithSerializedDataFromPayload(uint64_t a1, id *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::MeshPayload::dynamicCast(this, &v17);
  v11 = v17;
  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v13 = *re::assetsLogObjects(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Using fallback Mesh resourceDidUpdate, invalid MeshPayload found.", buf, 2u);
    }

    v15 = *this;
    v12 = re::AssetLoader::initializeAssetWithSerializedDataFromPayload(a1, &v15, a3, a4, a5, 0);

    v11 = v17;
  }

  return v12;
}

uint64_t re::MeshAssetLoader::postInitializeAssetFromPayload(uint64_t a1, id *a2, re::MeshAsset *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    re::DirectMeshPayload::dynamicCast(a2, &v11);
    if (v11)
    {
      v6 = *(a1 + 32);
      v7 = re::DirectMeshPayload::connectionId(&v11);
      uuid_copy(dst, [v11 identifier]);
      if (re::DirectResourceAssetTracker::findResource(v6, v7, dst))
      {
        v8 = DRResourceAsMesh();
        if (v8)
        {
          [v11 setDirectMesh:v8];
        }
      }
    }
  }

  re::MeshPayload::dynamicCast(a2, dst);
  v9 = *dst;
  if (*dst)
  {
    re::MeshAsset::replaceContentsWithPayload(a3, dst, (a1 + 8), *(a1 + 24));
    v9 = *dst;
  }

  return 1;
}

_anonymous_namespace_ *re::MeshAssetLoader::checkCredentialsOfNetworkAsset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _WORD *a4@<X8>)
{
  result = re::ServiceLocator::serviceOrNull<re::EntitlementService>(*(a1 + 40));
  if (a2)
  {
    if (result)
    {
      result = (*(*result + 72))(result, a3);
    }

    *a4 = 257;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void re::MeshAssetLoader::replaceAssetContentsWithMeshResourceDefinition(re::MeshAssetLoader *this, re::AssetHandle *a2, const re::MeshResourceDefinition *a3)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = atomic_load((v4 + 896));
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(a2);
      ++*(*(a2 + 1) + 276);
      v8 = re::AssetHandle::loadedAsset<re::MeshAsset>(a2);
      if (v8)
      {
        v9 = v8;
        re::MeshAsset::replaceContentsWithMeshResourceDefinition(v8, a3, this + 1, *(this + 3), *(this + 12));
        v10 = *(a2 + 1);
        if (!v10 || (*(v10 + 258) & 1) == 0)
        {
          re::MeshAsset::registerRuntimeData(v9, *(this + 3));
          v10 = *(a2 + 1);
        }

        *(v10 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v10);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(a2 + 1));
      }
    }
  }

  re::AssetHandle::payloadDidChangeIfPossible(a2);
}

void re::MeshAssetLoader::replaceAssetContentsWithMeshPayload(uint64_t a1, re::internal::AssetEntry **a2, id *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  if (v4)
  {
    v5 = atomic_load(v4 + 224);
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(a2);
      ++*(a2[1] + 69);
      v8 = re::AssetHandle::loadedAsset<re::MeshAsset>(a2);
      if (v8)
      {
        v9 = v8;
        if (*(a1 + 32))
        {
          re::DirectMeshPayload::dynamicCast((v8 + 344), &v23);
          re::DirectMeshPayload::dynamicCast(a3, &v22);
          if (v23)
          {
            v10 = re::DirectMeshPayload::connectionId(&v23);
            v11 = [v23 identifier];
            v26 = v10;
            uuid_copy(v27, v11);
            v12 = *(a1 + 32);
            v24 = v26;
            uuid_copy(v25, v27);
            v13 = re::AssetHandle::assetInfo(a2);
            if (v13[10] == -1)
            {
              v14 = 0;
            }

            else
            {
              v14 = v13[10];
            }

            re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(v12, &v24, v14);
          }

          v15 = v22;
          if (v22)
          {
            v16 = re::DirectMeshPayload::connectionId(&v22);
            v17 = [v22 identifier];
            v26 = v16;
            uuid_copy(v27, v17);
            v18 = *(a1 + 32);
            v24 = v26;
            uuid_copy(v25, v27);
            v19 = re::AssetHandle::assetInfo(a2);
            if (v19[10] == -1)
            {
              v20 = 0;
            }

            else
            {
              v20 = v19[10];
            }

            re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(v18, &v24, v20);
            v15 = v22;
          }
        }

        re::MeshAsset::replaceContentsWithPayload(v9, a3, (a1 + 8), *(a1 + 24));
        v21 = a2[1];
        if (!v21 || (*(v21 + 258) & 1) == 0)
        {
          re::MeshAsset::registerRuntimeData(v9, *(a1 + 24));
          v21 = a2[1];
        }

        *(v21 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v21);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(a2[1]);
      }
    }
  }

  re::AssetHandle::payloadDidChangeIfPossible(a2);
}

void *re::MeshAssetLoader::internalFindAssetHandleFields@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = a1[35];
  if (v4)
  {
    v5 = a1[37];
    v6 = 24 * v4;
    do
    {
      v8 = v5;
      result = re::DynamicArray<re::TransitionCondition *>::add(a2, &v8);
      v5 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return result;
}

void re::MeshAssetLoader::init(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v9 = v8;
  *(a1 + 16) = v8;
  if (v8)
  {
    v10 = *(v8 + 26);
  }

  else
  {
    v10 = 0;
  }

  v16 = v10;
  re::ObjCObject::operator=((a1 + 8), &v16);

  if (v9)
  {
    *(a1 + 24) = *(v9 + 4);
    *(a1 + 32) = a3;
    *(a1 + 40) = a2;
    if (a4)
    {
      v11 = *(a1 + 8);
      if (v11 && ([v11 supportsBufferWithIOSurface] & 1) != 0)
      {
        v12 = 2;
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = a3;
    *(a1 + 40) = a2;
    if (a4)
    {
LABEL_10:
      v12 = 1;
      goto LABEL_12;
    }
  }

  v12 = 0;
LABEL_12:
  *(a1 + 48) = v12;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = [v13 newCommandQueue];

    v15 = *(a1 + 312);
    *(a1 + 312) = v14;
  }
}

uint64_t re::MeshAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2)
{
  re::MeshAssetLoader::addProceduralVertexAttributes(a1, a2 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);

  return re::MeshAsset::createRuntimeData(a2, v4, (a1 + 8), v5);
}

void re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetLoader *this, unint64_t a2)
{
  v103 = *MEMORY[0x1E69E9840];
  if (*(this + 2) && *(this + 1))
  {
    v6 = &v90;
    re::StackScratchAllocator::StackScratchAllocator(v89);
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v84 = v89;
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v84, 0);
    v7 = ++v87;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v79 = v89;
    re::DynamicArray<re::EvaluationRegister>::setCapacity(&v79, 0);
    v8 = ++v82;
    v78 = 0;
    v75[1] = 0;
    v76 = 0;
    v77 = 0;
    v75[0] = v89;
    re::DynamicArray<BOOL>::setCapacity(v75, 0);
    ++v77;
    v65 = *(a2 + 16);
    v66 = a2;
    if (*(a2 + 16))
    {
      v72 = v7;
      v2 = 0;
      v70 = 0;
      while (1)
      {
        v9 = *(a2 + 16);
        if (v9 <= v2)
        {
          goto LABEL_119;
        }

        v67 = v2;
        v9 = *(a2 + 32) + (v2 << 9);
        v10 = *(v9 + 208);
        if (!*(v9 + 208))
        {
          goto LABEL_46;
        }

        v11 = 0;
        do
        {
          a2 = *(v9 + 208);
          if (a2 <= v11)
          {
            v90 = 0;
            v102 = 0u;
            v101 = 0u;
            v100 = 0u;
            memset(v99, 0, sizeof(v99));
            v8 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v91 = 136315906;
            v92 = "operator[]";
            v93 = 1024;
            v94 = 797;
            v95 = 2048;
            v96 = v11;
            v97 = 2048;
            v98 = a2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_118:
            v90 = 0;
            v102 = 0u;
            v101 = 0u;
            v100 = 0u;
            memset(v99, 0, sizeof(v99));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v91 = 136315906;
            v92 = "operator[]";
            v93 = 1024;
            v94 = 797;
            v95 = 2048;
            v96 = a2;
            v97 = 2048;
            v98 = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_119:
            v90 = 0;
            v102 = 0u;
            v101 = 0u;
            v100 = 0u;
            memset(v99, 0, sizeof(v99));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v91 = 136315906;
            v92 = "operator[]";
            v93 = 1024;
            v94 = 789;
            v95 = 2048;
            v96 = v2;
            v97 = 2048;
            v98 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_120:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v8;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_121:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_122:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_123:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = a2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_124:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 797;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_125:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v8;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_126:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = a2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_127:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = a2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_128:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v4;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_129:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v8;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_130:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v8;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_131:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            *(v6 + 22) = 468;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_132:
            re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, v2);
            _os_crash();
            __break(1u);
            goto LABEL_133;
          }

          v2 = *(v9 + 224) + (v11 << 8);
          v12 = *(v2 + 16);
          v74 = -1;
          v4 = v12;
          if (!v12)
          {
            goto LABEL_45;
          }

          v3 = 0;
          v6 = 8;
          while (1)
          {
            if (v12 == v3)
            {
              v90 = 0;
              v102 = 0u;
              v101 = 0u;
              v100 = 0u;
              memset(v99, 0, sizeof(v99));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v91 = 136315906;
              v92 = "operator[]";
              v93 = 1024;
              v94 = 797;
              v95 = 2048;
              v96 = v12;
              v97 = 2048;
              v98 = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_49;
            }

            v13 = (*(v2 + 32) + v6);
            v14 = (*v13 & 1) != 0 ? v13[1] : v13 + 1;
            if (!strcmp(v14, "patchParams"))
            {
              break;
            }

            ++v3;
            v6 += 80;
            if (v12 == v3)
            {
              goto LABEL_21;
            }
          }

          v74 = v3;
          if (v3 == 0xFF)
          {
LABEL_21:
            v6 = &v90;
            goto LABEL_45;
          }

          v15 = re::DynamicArray<unsigned char>::add(v75, &v74);
          if (v86 >= v85)
          {
            v16 = v86 + 1;
            v6 = &v90;
            if (v85 < v86 + 1)
            {
              if (v84)
              {
                v17 = 8;
                if (v85)
                {
                  v17 = 2 * v85;
                }

                if (v17 <= v16)
                {
                  v18 = v86 + 1;
                }

                else
                {
                  v18 = v17;
                }

                v15 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v84, v18);
                v19 = v87;
              }

              else
              {
                v15 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v84, v16);
                v19 = v87 + 1;
              }

              v72 = v19;
            }
          }

          else
          {
            v6 = &v90;
          }

          v20 = v86;
          *(v88 + 8 * v86) = v67 | (v11 << 32);
          v86 = v20 + 1;
          v87 = ++v72;
          v21 = *(v2 + 64);
          memset(v99 + 4, 0, 24);
          v22 = v81;
          if (v81 >= v80)
          {
            v23 = v81 + 1;
            if (v80 < v81 + 1)
            {
              if (v79)
              {
                v24 = 2 * v80;
                if (!v80)
                {
                  v24 = 8;
                }

                if (v24 <= v23)
                {
                  v25 = v81 + 1;
                }

                else
                {
                  v25 = v24;
                }

                re::DynamicArray<re::EvaluationRegister>::setCapacity(&v79, v25);
                LODWORD(v8) = v82;
              }

              else
              {
                re::DynamicArray<re::EvaluationRegister>::setCapacity(&v79, v23);
                LODWORD(v8) = ++v82;
              }
            }

            v22 = v81;
          }

          v26 = &v83[8 * v22];
          *v26 = v21;
          *(v26 + 1) = v99[0];
          *(v26 + 1) = *(v99 + 12);
          v81 = v22 + 1;
          v8 = (v8 + 1);
          v82 = v8;
          a2 = v74;
          v3 = *(v2 + 16);
          if (v3 <= v74)
          {
            goto LABEL_118;
          }

          v70 += *(*(v2 + 32) + 80 * v74 + 48);
LABEL_45:
          ++v11;
        }

        while (v11 != v10);
LABEL_46:
        v2 = v67 + 1;
        a2 = v66;
        if (v67 + 1 == v65)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_49:
    v70 = 0;
LABEL_50:
    v9 = v81;
    if (v81)
    {
      v27 = [*(this + 1) newBufferWithLength:v70 options:0];
      if (v27)
      {
        v28 = v27;
        if ([v27 contents])
        {
          v71 = v28;
          v73 = v9;
          a2 = 0;
          v29 = 0;
          v8 = v86;
          v30 = v88;
          v68 = v83;
          v31 = v83 + 4;
          v4 = v88 + 4;
          do
          {
            if (v8 == a2)
            {
              goto LABEL_120;
            }

            v2 = *(v4 - 4);
            v9 = v66[2];
            if (v9 <= v2)
            {
              goto LABEL_121;
            }

            v32 = v66[4] + (v2 << 9);
            v2 = *v4;
            v9 = *(v32 + 208);
            if (v9 <= v2)
            {
              goto LABEL_122;
            }

            v9 = v76;
            if (v76 <= a2)
            {
              goto LABEL_123;
            }

            v33 = *(v32 + 224) + (v2 << 8);
            v2 = *(v78 + a2);
            v9 = *(v33 + 16);
            if (v9 <= v2)
            {
              goto LABEL_124;
            }

            v34 = *(v33 + 32) + 80 * *(v78 + a2);
            memcpy([v71 contents] + v29, *(v34 + 64), *(v34 + 48));
            v36 = *(v34 + 48);
            *(v31 - 1) = v71;
            *v31 = 0;
            v31[2] = v29;
            v31[3] = v36;
            v29 += *(v34 + 48);
            ++a2;
            v31 += 8;
            v4 += 8;
            v9 = v73;
          }

          while (v73 != a2);
          v9 = 0;
          do
          {
            if (v9 == v8)
            {
              goto LABEL_125;
            }

            v37 = (v30 + 8 * v9);
            a2 = *v37;
            v2 = v66[2];
            if (v2 <= a2)
            {
              goto LABEL_126;
            }

            v38 = v66[4] + (a2 << 9);
            a2 = v37[1];
            v2 = *(v38 + 208);
            if (v2 <= a2)
            {
              goto LABEL_127;
            }

            a2 = *(v38 + 224) + (a2 << 8);
            v4 = *(a2 + 16);
            v2 = v73;
            if (v4)
            {
              v39 = 0;
              do
              {
                v40 = *(a2 + 32) + 80 * v39;
                if (*(v40 + 8))
                {
                  v41 = *(v40 + 16);
                }

                else
                {
                  v41 = (v40 + 9);
                }

                if (re::OpenSubdivUtils::isGeneratedTessellationBuffer(v41, v35))
                {
                  re::DynamicArray<re::MeshAssetBuffer>::removeAt(a2, v39);
                  v4 = *(a2 + 16);
                }

                else
                {
                  ++v39;
                }
              }

              while (v39 < v4);
            }

            ++v9;
          }

          while (v9 != v73);
          if (v73 >= 0xAAAAAAAAAAAAAABLL)
          {
            goto LABEL_132;
          }

          v42 = (*(v89[0] + 32))(v89, 24 * v73, 8);
          if (!v42)
          {
LABEL_133:
            re::internal::assertLog(4, v43, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
            _os_crash();
            __break(1u);
          }

          v44 = v42;
          v45 = v42;
          if (v73 != 1)
          {
            bzero(v42, 24 * v73 - 24);
            v45 = (v44 + 24 * v73 - 24);
          }

          *v45 = 0;
          v45[1] = 0;
          v45[2] = 0;
          v46 = v68;
          v69 = v44;
          re::OpenSubdivUtils::generateOpenSubdivTesselationBuffers(*(this + 2), this + 39, v46, v73, v44, v73);
          v4 = 0;
          do
          {
            v8 = v86;
            if (v86 <= v4)
            {
              goto LABEL_128;
            }

            v48 = (v88 + 8 * v4);
            v8 = *v48;
            v9 = v66[2];
            if (v9 <= v8)
            {
              goto LABEL_129;
            }

            v49 = v66[4] + (v8 << 9);
            v8 = v48[1];
            v9 = *(v49 + 208);
            if (v9 <= v8)
            {
              goto LABEL_130;
            }

            if (v4 == v2)
            {
              goto LABEL_131;
            }

            v50 = &v69[3 * v4];
            v51 = v50[1];
            if (v51)
            {
              v52 = (*(v49 + 224) + (v8 << 8));
              v9 = v50[2] + 68;
              v53 = 72 * v51;
              do
              {
                *(v6 + 72) = 0u;
                *(v6 + 56) = 0u;
                re::DynamicString::setCapacity(v99, 0);
                *(v6 + 120) = 0;
                *&v101 = 0;
                v100 = 0uLL;
                DWORD2(v101) = 0;
                *(v6 + 128) = 256;
                v54 = strlen(*(v9 - 60));
                *(v6 + 8) = *(v9 - 60);
                *(v6 + 16) = v54;
                re::DynamicString::operator=(v99, &v91);
                BYTE8(v102) = *(v9 - 40);
                BYTE9(v102) = *(v9 - 50);
                re::DynamicArray<BOOL>::resize(&v100, *v9);
                v55 = *(v6 + 120);
                v56 = re::BufferSlice::contents((v9 - 36));
                memcpy(v55, v56, *v9);
                v57.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(v52, v99);
                v58 = *(v6 + 88);
                if (v58)
                {
                  if (*(v6 + 120))
                  {
                    (*(*v58 + 40))(v58, v57.n128_f64[0]);
                  }

                  *(v6 + 120) = 0;
                  *&v101 = 0;
                  v100 = 0uLL;
                  ++*(v6 + 112);
                }

                v47 = *(v6 + 56);
                if (v47 && (BYTE8(v99[0]) & 1) != 0)
                {
                  v47 = (*(*v47 + 40))(v47, *(v6 + 72), v57);
                }

                v9 += 72;
                v53 -= 72;
              }

              while (v53);
            }

            ++v4;
            v2 = v73;
          }

          while (v4 != v73);
          v59 = v69;
          do
          {
            if (*v59)
            {
              v60 = v59[1];
              if (v60)
              {
                v61 = 72 * v60;
                v62 = v59[2] + 32;
                do
                {
                  v63 = *(v62 + 24);
                  if (v63 != -1)
                  {
                    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v63])(v99, v62);
                  }

                  *(v62 + 24) = -1;
                  re::StringID::destroyString((v62 - 32));
                  v62 += 72;
                  v61 -= 72;
                }

                while (v61);
                (*(**v59 + 40))(*v59, v59[2]);
                v59[1] = 0;
                v59[2] = 0;
              }

              *v59 = 0;
            }

            v59 += 3;
          }

          while (v59 != &v69[3 * v73]);
          (*(v89[0] + 40))(v89, v69);
          v28 = v71;
        }
      }
    }

    if (v75[0] && v78)
    {
      (*(*v75[0] + 40))(v75[0], v78);
    }

    if (v79 && v83)
    {
      (*(*v79 + 40))(v79, v83);
    }

    if (v84)
    {
      if (v88)
      {
        (*(*v84 + 40))(v84, v88);
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v89);
  }
}

re *re::MeshAssetLoader::createRuntimeDataWithMemoryAttribution(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) createRuntimeDataWithMemoryAttribution: task token cannot be null", "memoryAttributionTarget != ((task_id_token_t) 0)", "createRuntimeDataWithMemoryAttribution", 1196);
    _os_crash();
    __break(1u);
  }

  v8 = (*(*a1 + 24))(a1, a2, a4, a5);
  v9 = v8;
  if (a1[1])
  {
    v10 = *(a2 + 544);
    v11 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = a3;
      _os_log_debug_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEBUG, "Attributing mesh asset to %llu", buf, 0xCu);
      if (v10)
      {
        return v9;
      }
    }

    else if (v10)
    {
      return v9;
    }

    for (i = 0; i != 64; i += 8)
    {
      v13 = *(a2 + 352 + i);
      if (v13)
      {
        v14 = v13;
        v20 = v13;
        v15 = re::AssetHelper::attributeResourceMemory(&v20, a3);
        if ((v15 & 1) == 0)
        {
          v16 = *re::assetTypesLogObjects(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [objc_msgSend(v20 label)];
            *buf = 134218242;
            v22 = a3;
            v23 = 2080;
            v24 = v17;
            _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Mesh asset memory attribution failed for task_id %llu and buffer %s.", buf, 0x16u);
          }
        }

        if (v20)
        {
        }
      }
    }
  }

  else
  {
    v18 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Mesh asset memory attribution requires Metal buffers.", buf, 2u);
    }
  }

  return v9;
}

void re::MeshAssetLoader::createRuntimeData(re::MeshAssetLoader *this@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, uint64_t a4@<X8>)
{
  v5 = this;
  v19[5] = *MEMORY[0x1E69E9840];
  if (!a3[1])
  {
    goto LABEL_6;
  }

  v7 = **a3;
  if (v7)
  {
    this = (v7 + 8);
  }

  v8 = re::globalAllocators(this)[2];
  v19[0] = &unk_1F5CBD738;
  v19[1] = a2;
  v19[3] = v8;
  v19[4] = v19;
  (*(*v7 + 48))(&v17, v7, v19);
  re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v19);
  if (v17)
  {

LABEL_6:
    re::MeshAssetLoader::addProceduralVertexAttributes(v5, a2 + 16);
    if (re::MeshAsset::createRuntimeData(a2, *(v5 + 3), (v5 + 8), *(v5 + 12)))
    {
      *a4 = 1;
      *(a4 + 8) = 0;
    }

    else
    {
      re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, "Failed to create runtime data for mesh asset.", &v14);
      v9 = v14;
      v14 = 0;
      *a4 = 0;
      *(a4 + 8) = v9;
    }

    return;
  }

  v10 = re::WrappedError::localizedDescription(&v18);
  re::DynamicString::format("Failed to create runtime data for MeshAsset due to error: %s", &v14, v10);
  if (v15)
  {
    v11 = *&v16[7];
  }

  else
  {
    v11 = v16;
  }

  re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, v11, &v13);
  v12 = v13;
  v13 = 0;
  *a4 = 0;
  *(a4 + 8) = v12;

  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  if ((v17 & 1) == 0)
  {
  }
}

uint64_t re::MeshAssetLoader::assetByteSize(re::MeshAssetLoader *this, void *a2)
{
  v4 = (*(*this + 56))(this);
  v5 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 5));
  v6 = a2[43];
  if (v6)
  {
    v4 += [v6 totalPayloadSize];
    goto LABEL_3;
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  v8 = a2[76];
  if (v8)
  {
    v9 = *(v5 + 4);
    v10 = a2[78];
    v11 = &v10[v8];
    do
    {
      v12 = re::DataArray<re::MeshModel>::get(v9 + 8, *v10);
      v13 = *(v12 + 56);
      if (v13)
      {
        v14 = *(v12 + 64);
        v15 = &v14[68 * v13];
        do
        {
          v16 = re::AttributeTable::buffers(v14);
          if (v17)
          {
            v18 = 24 * v17;
            v19 = (v16 + 20);
            do
            {
              v20 = *v19;
              v19 += 6;
              v4 += v20;
              v18 -= 24;
            }

            while (v18);
          }

          v14 += 68;
        }

        while (v14 != v15);
      }

      ++v10;
    }

    while (v10 != v11);
LABEL_3:
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_18:
    v7 = 1;
    return v7 * v4;
  }

LABEL_4:
  v7 = 1;
  if (!*(v5 + 26))
  {
    v7 = 2;
  }

  return v7 * v4;
}

uint64_t re::MeshAssetLoader::prepareAssetForSerialization(re::MeshAssetLoader *this, const re::MeshAsset *a2)
{
  if (*(a2 + 1264) != 1)
  {
    return 0;
  }

  v13[7] = v2;
  v13[8] = v3;
  re::MeshAsset::makeMeshAssetDataFromRegisteredMeshAsset(v6, a2);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 16, v6);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 56, v7);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 96, v8);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 136, v9);
  *(a2 + 44) = v12;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 184, v13);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v13);
  if (v9[0])
  {
    if (v11)
    {
      (*(*v9[0] + 40))();
    }

    v11 = 0;
    memset(v9, 0, sizeof(v9));
    ++v10;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(v8);
  re::DynamicArray<re::MeshAssetInstance>::deinit(v7);
  re::DynamicArray<re::MeshAssetModel>::deinit(v6);
  return 2;
}

uint64_t re::MeshAsset::makeMeshAssetDataFromRegisteredMeshAsset(re::MeshAsset *this, const re::MeshAsset *a2)
{
  v140 = *MEMORY[0x1E69E9840];
  if (*(a2 + 1264) != 1)
  {
    re::DynamicArray<re::MeshAssetModel>::DynamicArray(this, a2 + 2);
    re::DynamicArray<re::MeshAssetInstance>::DynamicArray(this + 40, a2 + 7);
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(this + 80, a2 + 12);
    re::DynamicArray<float>::DynamicArray(this + 120, a2 + 17);
    *(this + 40) = *(a2 + 44);

    return re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(this + 168, a2 + 23);
  }

  v78[0] = 0;
  v78[1] = 0;
  v80 = 0;
  v79 = 0;
  v89 = 0;
  v90 = 0;
  v93 = 0;
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  v81 = 0u;
  v82 = 0u;
  v83 = 0;
  memset(v84, 0, sizeof(v84));
  v85 = 0;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v4 = *(a2 + 76);
  v5 = v4;
  v6 = *(a2 + 142);
  v73 = *(a2 + 79);
  re::DynamicArray<re::MeshAssetModel>::resize(v78, v4);
  v72 = v6;
  re::DynamicArray<re::MeshAssetInstance>::resize(&v81 + 8, v6);
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v77 = 0x7FFFFFFFLL;
  if (v4)
  {
    v8 = 2 * v4;
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 79);
  if (!v10)
  {
    v18 = "No Mesh Manager on MeshAsset";
LABEL_39:
    v95[0] = 0;
    *&v95[8] = 100;
    *&v95[16] = re::AssetErrorCategory(void)::instance;
    *&v95[24] = *buf;
    v96[0] = *&buf[16];
    goto LABEL_40;
  }

  v11 = *(a2 + 156);
  v12 = *(a2 + 76);
  if (v12)
  {
    v13 = *(a2 + 78);
    v14 = 8 * v12;
    while (1)
    {
      v9 = re::DataArray<re::MeshModel>::get(v10 + 8, *v13);
      v15 = *(v9 + 28);
      if (v15)
      {
        if (*(v15 + 8))
        {
          break;
        }
      }

      ++v13;
      v14 -= 8;
      if (!v14)
      {
        v12 = 0;
        v16 = 0;
        goto LABEL_18;
      }
    }

    v19 = v15 + 32;
    v12 = *(v15 + 32);
    v16 = *(v19 + 8);
LABEL_18:
    v5 = v4;
  }

  else
  {
    v16 = 0;
  }

  if (v12 != v11)
  {
    v18 = "Inverse bind transforms array doesn't match skeleton count";
    goto LABEL_39;
  }

  *&v137[2] = 0;
  memset(v137, 0, 28);
  re::DynamicArray<re::MeshAssetSkeleton>::resize(v137, v11);
  if (!v11)
  {
LABEL_35:
    v30 = *&v137[0];
    memset(v137, 0, 24);
    v31 = *&v137[2];
    *&v137[2] = 0;
    ++DWORD2(v137[1]);
    v95[0] = 1;
    *&v95[8] = v30;
    memset(buf, 0, 24);
    *&v95[16] = *(v137 + 8);
    *&v96[0] = v31;
    *&v110 = 0;
    *&buf[24] = 2;
    *&v95[32] = 1;
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(buf);
    goto LABEL_36;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = *&v137[1];
    if (*&v137[1] <= v21)
    {
      goto LABEL_121;
    }

    v23 = *&v137[2];
    v24 = *&v137[2] + v20;
    v25 = re::MeshAsset::skeletonAtIndex(a2, v21);
    re::StringID::operator=((v23 + v20), v25);
    v26 = v25[3];
    *buf = v25[4];
    *&buf[8] = v26;
    re::FixedArray<re::StringID>::operator=((v24 + 16), buf);
    v27 = v25[6];
    *buf = v25[7];
    *&buf[8] = v27;
    re::FixedArray<int>::operator=((v24 + 40), buf);
    v28 = v25[12];
    *buf = v25[13];
    *&buf[8] = v28;
    re::FixedArray<re::GenericSRT<float>>::operator=((v24 + 64), buf);
    v130[0] = 0;
    HIDWORD(v134) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v130, v16);
    *&v136[2] = *(v16 + 32);
    if (!re::BufferSlice::isValid(v130))
    {
      goto LABEL_32;
    }

    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v130, buf);
    if ((buf[0] & 1) == 0)
    {
      v68 = "Could not access inverset bind pose data";
      goto LABEL_107;
    }

    if (*&buf[16] >= 0x40uLL && *(v23 + v20 + 48) != *&buf[16] >> 6)
    {
      break;
    }

    *v95 = *&buf[8];
    *&v95[8] = *&buf[16] >> 6;
    re::FixedArray<re::Matrix4x4<float>>::operator=((v23 + v20 + 88), v95);
    if (buf[0] == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&buf[8]);
    }

    else if (*&buf[24] && (v110 & 1) != 0)
    {
      (*(**&buf[24] + 40))();
    }

LABEL_32:
    if (HIDWORD(v134) != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[HIDWORD(v134)])(buf, v130);
    }

    ++v21;
    v16 += 40;
    v20 += 112;
    if (v11 == v21)
    {
      goto LABEL_35;
    }
  }

  v68 = "Inverse bind pose count does not match joint count";
LABEL_107:
  v95[0] = 0;
  *&v95[8] = 100;
  *&v95[16] = re::AssetErrorCategory(void)::instance;
  *&v95[24] = v94[0];
  v96[0] = v94[1];
  if (buf[0] == 1)
  {
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&buf[8]);
  }

  else if (*&buf[24] && (v110 & 1) != 0)
  {
    (*(**&buf[24] + 40))();
  }

  if (HIDWORD(v134) != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[HIDWORD(v134)])(buf, v130);
  }

LABEL_36:
  v32 = re::DynamicArray<re::MeshAssetSkeleton>::deinit(v137);
  if (v95[0])
  {
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v84 + 8, &v95[8]);
    goto LABEL_41;
  }

LABEL_40:
  v33 = *re::assetsLogObjects(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    if (v95[32])
    {
      v69 = *&v96[0];
    }

    else
    {
      v69 = &v95[33];
    }

    *buf = 136315138;
    *&buf[4] = v69;
    _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to make mesh asset skeleton from model: %s", buf, 0xCu);
  }

LABEL_41:
  if (v95[0] == 1)
  {
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v95[8]);
  }

  else if (*&v95[24] && (v95[32] & 1) != 0)
  {
    (*(**&v95[24] + 40))();
  }

  v21 = 0xBF58476D1CE4E5B9;
  v22 = buf;
  re::DirectMeshPayload::dynamicCast(a2 + 43, buf);
  v34 = *buf;

  if (v4)
  {
    v35 = 0;
    v36 = 0;
    v37 = v5 << 9;
    v38 = 0x7FFFFFFFLL;
    do
    {
      v39 = *(a2 + 76);
      if (v39 <= v36)
      {
        *v130 = 0;
        v111 = 0u;
        *v112 = 0u;
        v110 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v137[0]) = 136315906;
        *(v137 + 4) = "operator[]";
        WORD6(v137[0]) = 1024;
        *(v137 + 14) = 797;
        WORD1(v137[1]) = 2048;
        *(&v137[1] + 4) = v36;
        WORD6(v137[1]) = 2048;
        *(&v137[1] + 14) = v39;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_115:
        *&v94[0] = 0;
        v138 = 0u;
        v139 = 0u;
        memset(v137, 0, sizeof(v137));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v130 = 136315906;
        *&v130[4] = "operator[]";
        v131 = 1024;
        v132 = 789;
        v133 = 2048;
        v134 = v36;
        v135 = 2048;
        *v136 = v39;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_116:
        *&v94[0] = 0;
        v138 = 0u;
        v139 = 0u;
        memset(v137, 0, sizeof(v137));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v130 = 136315906;
        *&v130[4] = "operator[]";
        v131 = 1024;
        v132 = 797;
        v133 = 2048;
        v134 = v36;
        v135 = 2048;
        *v136 = v39;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_117:
        *v130 = 0;
        v111 = 0u;
        *v112 = 0u;
        v110 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v137[0]) = 136315906;
        *(v137 + 4) = "operator[]";
        WORD6(v137[0]) = 1024;
        *(v137 + 14) = 797;
        WORD1(v137[1]) = 2048;
        *(&v137[1] + 4) = v38;
        WORD6(v137[1]) = 2048;
        *(&v137[1] + 14) = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_118:
        *v130 = 0;
        v111 = 0u;
        *v112 = 0u;
        v110 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v137[0]) = 136315906;
        *(v137 + 4) = "operator[]";
        WORD6(v137[0]) = 1024;
        *(v137 + 14) = 789;
        WORD1(v137[1]) = 2048;
        *(&v137[1] + 4) = v38;
        WORD6(v137[1]) = 2048;
        *(&v137[1] + 14) = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_119:
        *v130 = 0;
        v111 = 0u;
        *v112 = 0u;
        v110 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v137[0]) = 136315906;
        *(v137 + 4) = "operator[]";
        WORD6(v137[0]) = 1024;
        *(v137 + 14) = 789;
        WORD1(v137[1]) = 2048;
        *(&v137[1] + 4) = v38;
        WORD6(v137[1]) = 2048;
        *(&v137[1] + 14) = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_120:
        *v130 = 0;
        v111 = 0u;
        *v112 = 0u;
        v110 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v137[0]) = 136315906;
        *(v137 + 4) = "operator[]";
        WORD6(v137[0]) = 1024;
        *(v137 + 14) = 789;
        WORD1(v137[1]) = 2048;
        *(&v137[1] + 4) = v38;
        WORD6(v137[1]) = 2048;
        *(&v137[1] + 14) = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_121:
        *v130 = 0;
        v111 = 0u;
        *v112 = 0u;
        v110 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v95 = 136315906;
        *&v95[4] = "operator[]";
        *&v95[12] = 1024;
        *&v95[14] = 789;
        *&v95[18] = 2048;
        *&v95[20] = v21;
        *&v95[28] = 2048;
        *&v95[30] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v40 = re::DataArray<re::MeshModel>::get(v73 + 8, *(*(a2 + 78) + 8 * v36));
      if (buf[0] != 1)
      {
        v63 = v110;
        v65 = *(&v111 + 1);
        v64 = v111;
        v95[0] = 0;
        *&v95[8] = *&buf[16];
        goto LABEL_78;
      }

      v39 = v79;
      if (v79 <= v36)
      {
        goto LABEL_115;
      }

      v41 = (v81 + v35);
      re::StringID::operator=((v81 + v35), &buf[16]);
      v42 = v111;
      v41[1] = v110;
      v41[2] = v42;
      v43 = *v112;
      v44 = *&v112[16];
      v45 = v113;
      v41[5] = *&v112[32];
      v41[6] = v45;
      v41[3] = v43;
      v41[4] = v44;
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 7), &v114);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 152, &v118);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 12), v122);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 232, v123);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 17), v124);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 312, v125);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 22), v126);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 392, v127);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 27), v128);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 472, v129);
      v39 = *(a2 + 76);
      if (v39 <= v36)
      {
        goto LABEL_116;
      }

      v46 = *(a2 + 78);
      memset(v137, 0, 24);
      v47 = *(v46 + 8 * v36);
      v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v47 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v47 & 0xFFFFFF)) >> 27));
      re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(v137, &v74, v47, v48 ^ (v48 >> 31));
      if (HIDWORD(v137[0]) == 0x7FFFFFFF)
      {
        v49 = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(&v74, DWORD2(v137[0]), *&v137[0]);
        *(v49 + 8) = *(v46 + 8 * v36);
        *(v49 + 16) = v36;
        ++HIDWORD(v77);
      }

      if (buf[0])
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v129);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v128);
        re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v127);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v126);
        re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v125);
        re::DynamicArray<re::MeshLodLevelInfo>::deinit(v124);
        re::DynamicArray<re::MeshAssetSkeleton>::deinit(v123);
        re::DynamicArray<re::MeshAssetPart>::deinit(v122);
        re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v118);
        v50 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(&v114);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_62;
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_62;
        }

        v51 = *&buf[24];
      }

      else
      {
        v52 = v110;
        if (!v110 || (BYTE8(v110) & 1) == 0)
        {
          goto LABEL_62;
        }

        v51 = v111;
      }

      (*(*v52 + 40))(v52, v51);
LABEL_62:
      ++v36;
      v35 += 512;
    }

    while (v37 != v35);
  }

  if (v72)
  {
    v53 = 0;
    v38 = 0;
    v54 = v75;
    while (1)
    {
      v36 = *(a2 + 71);
      if (v36 <= v38)
      {
        goto LABEL_117;
      }

      v36 = re::DataArray<re::MeshInstance>::get(v73 + 72, *(*(a2 + 73) + 8 * v38));
      v55 = *(v36 + 16);
      v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v55 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v55 & 0xFFFFFF)) >> 27));
      v57 = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(buf, &v74, v55, v56 ^ (v56 >> 31));
      v58 = *&buf[12];
      if (*&buf[12] == 0x7FFFFFFF)
      {
        break;
      }

      v22 = *(&v82 + 1);
      if (*(&v82 + 1) <= v38)
      {
        goto LABEL_118;
      }

      re::StringID::operator=((*&v84[0] + v53), v36);
      v22 = *(&v82 + 1);
      if (*(&v82 + 1) <= v38)
      {
        goto LABEL_119;
      }

      v59 = (*&v84[0] + v53);
      v60 = *(v36 + 32);
      v61 = *(v36 + 48);
      v62 = *(v36 + 80);
      v59[3] = *(v36 + 64);
      v59[4] = v62;
      v59[1] = v60;
      v59[2] = v61;
      v36 = *(&v82 + 1);
      if (*(&v82 + 1) <= v38)
      {
        goto LABEL_120;
      }

      *(*&v84[0] + v53 + 80) = *(v54 + 32 * v58 + 16);
      ++v38;
      v53 += 96;
      if (v72 == v38)
      {
        goto LABEL_71;
      }
    }

    v63 = *buf;
    v65 = *&buf[24];
    v64 = *&buf[16];
    v95[0] = 0;
    *&v95[8] = 100;
    *&v95[16] = re::AssetErrorCategory(void)::instance;
LABEL_78:
    *&v95[24] = v63;
    *&v96[0] = v64;
    *(&v96[0] + 1) = v65;
  }

  else
  {
LABEL_71:
    re::MeshAssetData::generateMetaData(v78);
    re::DynamicArray<re::MeshAssetModel>::DynamicArray(buf, v78);
    re::DynamicArray<re::MeshAssetInstance>::DynamicArray(&v110 + 8, &v81 + 1);
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(&v112[16], v84 + 1);
    re::DynamicArray<float>::DynamicArray(&v113 + 8, &v86 + 1);
    v117 = v90;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(&v118, v91);
    v95[0] = 1;
    *&v95[8] = *buf;
    memset(buf, 0, 24);
    *&v95[16] = *&buf[8];
    v96[0] = v110;
    v96[1] = v111;
    v98[0] = *&v112[8];
    v98[1] = *&v112[24];
    v100 = v113;
    ++*&buf[24];
    v110 = 0u;
    v111 = 0u;
    *&v95[32] = 1;
    v97 = 1;
    memset(&v112[8], 0, 32);
    ++*v112;
    ++*&v112[40];
    v101 = v114;
    v113 = 0u;
    v114 = 0u;
    v103 = v116;
    ++v115;
    v99 = 1;
    v102 = 1;
    v104 = v117;
    v105 = v118;
    v116 = 0;
    v118 = 0;
    v106 = v119;
    v119 = 0u;
    v108 = v121;
    v121 = 0;
    ++v120;
    v107 = 1;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v118);
    if (*(&v113 + 1))
    {
      if (v116)
      {
        (*(**(&v113 + 1) + 40))();
      }

      v116 = 0;
      v114 = 0uLL;
      *(&v113 + 1) = 0;
      ++v115;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v112[16]);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v110 + 8);
    re::DynamicArray<re::MeshAssetModel>::deinit(buf);
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v74);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v91);
  if (*(&v86 + 1))
  {
    if (v89)
    {
      (*(**(&v86 + 1) + 40))();
    }

    v89 = 0;
    v87 = 0uLL;
    *(&v86 + 1) = 0;
    ++v88;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(v84 + 8);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v81 + 8);
  v66 = re::DynamicArray<re::MeshAssetModel>::deinit(v78);
  if (v95[0] == 1)
  {
    re::DynamicArray<re::MeshAssetModel>::DynamicArray(this, &v95[8]);
    re::DynamicArray<re::MeshAssetInstance>::DynamicArray(this + 40, v96 + 1);
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(this + 80, v98 + 1);
    re::DynamicArray<float>::DynamicArray(this + 120, &v100 + 1);
    *(this + 40) = v104;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(this + 168, &v105);
  }

  else
  {
    v67 = *re::assetsLogObjects(v66);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      if (v95[32])
      {
        v70 = *&v96[0];
      }

      else
      {
        v70 = &v95[33];
      }

      *buf = 136315138;
      *&buf[4] = v70;
      _os_log_error_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_ERROR, "Failed to make mesh asset data from loaded mesh asset: %s", buf, 0xCu);
    }

    *(this + 11) = 0u;
    *(this + 12) = 0u;
    *(this + 9) = 0u;
    *(this + 10) = 0u;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  if (v95[0] == 1)
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v105);
    if (*(&v100 + 1))
    {
      if (v103)
      {
        (*(**(&v100 + 1) + 40))();
      }

      v103 = 0;
      v101 = 0uLL;
      *(&v100 + 1) = 0;
      ++v102;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v98 + 8);
    re::DynamicArray<re::MeshAssetInstance>::deinit(v96 + 8);
    return re::DynamicArray<re::MeshAssetModel>::deinit(&v95[8]);
  }

  else
  {
    result = *&v95[24];
    if (*&v95[24] && (v95[32] & 1) != 0)
    {
      return (*(**&v95[24] + 40))();
    }
  }

  return result;
}

uint64_t re::MeshAssetLoader::cleanupSerializationState(re::MeshAssetLoader *this, _DWORD *a2)
{
  if (*(a2 + 1264) == 1)
  {
    v12 = v2;
    v13 = v3;
    v10 = 0u;
    memset(v11, 0, sizeof(v11));
    v8 = 0u;
    v9 = 0u;
    memset(v7, 0, sizeof(v7));
    memset(v6, 0, sizeof(v6));
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 4), v6);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 14), &v6[2] + 8);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 24), v7);
    re::DynamicArray<re::RigComponentConstraint>::operator=((a2 + 34), &v8 + 8);
    a2[44] = v11[0];
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 46), v11 + 8);
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v11 + 8);
    if (*(&v8 + 1))
    {
      if (*(&v10 + 1))
      {
        (*(**(&v8 + 1) + 40))();
      }

      *(&v10 + 1) = 0;
      v9 = 0uLL;
      *(&v8 + 1) = 0;
      LODWORD(v10) = v10 + 1;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v7);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v6[2] + 8);
    return re::DynamicArray<re::MeshAssetModel>::deinit(v6);
  }

  return result;
}

uint64_t re::MeshAssetLoader::registerAsset(re::MeshAssetLoader *this, id *a2, const re::ExistingAssetInformation *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4)
  {
    re::MeshAsset::registerRuntimeData(a2, v4);
    if (*(this + 4))
    {
      re::DirectMeshPayload::dynamicCast(a2 + 43, &v13);
      v7 = v13;
      if (v13)
      {
        v8 = re::DirectMeshPayload::connectionId(&v13);
        v9 = [v13 identifier];
        v16 = v8;
        uuid_copy(v17, v9);
        v10 = *(this + 4);
        v14 = v16;
        uuid_copy(v15, v17);
        if (*(a3 + 10) == -1)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(a3 + 10);
        }

        re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(v10, &v14, v11);
        v7 = v13;
      }
    }
  }

  return 0;
}

uint64_t (***re::MeshAssetLoader::unregisterAsset(re::MeshAssetLoader *this, id *a2, const re::ExistingAssetInformation *a3))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  result = *(this + 3);
  if (result)
  {
    if (*(this + 4))
    {
      re::DirectMeshPayload::dynamicCast(a2 + 43, &v12);
      v7 = v12;
      if (v12)
      {
        v8 = re::DirectMeshPayload::connectionId(&v12);
        v9 = [v12 identifier];
        v15 = v8;
        uuid_copy(v16, v9);
        v10 = *(this + 4);
        v13 = v15;
        uuid_copy(v14, v16);
        if (*(a3 + 10) == -1)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(a3 + 10);
        }

        re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(v10, &v13, v11);
        v7 = v12;
      }

      result = *(this + 3);
    }

    *(a2 + 1264) = 0;
    result = re::MeshManager::destroyCollection(result, a2 + 69);
    a2[71] = 0;
    ++*(a2 + 144);
    a2[76] = 0;
    ++*(a2 + 154);
  }

  return result;
}

uint64_t re::MeshAssetLoader::defaultAssetCompileOptions(re::MeshAssetLoader *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 2) = 257;
  *(v3 + 4) = 1;
  *(v3 + 9) = 16842752;
  *(v3 + 5) = 0;
  *(v3 + 13) = 1;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 52) = 0x7FFFFFFF;
  v4 = *(this + 255);
  *v3 = *(this + 31);
  *(v3 + 7) = v4;
  re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v3 + 16), this + 264);
  return v3;
}

re::DynamicString *re::MeshAssetLoader::setDefaultAssetCompileOptions(re::MeshAssetLoader *this, uint64_t *a2)
{
  v2 = *a2;
  *(this + 255) = *(a2 + 7);
  *(this + 31) = v2;
  return re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((this + 264), (a2 + 2));
}

void re::DynamicArray<re::MeshAssetBuffer>::removeAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 80 * v2;
    v6 = (v4 + 80 * a2);
    re::DynamicString::operator=(v6, (v5 - 80));
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v6 + 32, v5 - 48);
    *(v6 + 36) = *(v5 - 8);
    v2 = *(a1 + 16);
  }

  v7 = *(a1 + 32) + 80 * v2;
  v8 = (v7 - 80);
  re::DynamicArray<unsigned long>::deinit(v7 - 48);
  re::DynamicString::deinit(v8);
  --*(a1 + 16);
  ++*(a1 + 24);
}

double re::DynamicArray<re::MeshAssetBuffer>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetBuffer>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v8 = *(a2 + 16);
  *(a2 + 24) = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(v5 + 64) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v11 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(v5 + 48);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = v12;
  v13 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 64) = v13;
  ++*(a2 + 56);
  ++*(v5 + 56);
  *(v5 + 72) = *(a2 + 72);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::BufferTable::resize(re::BufferTable *this, unint64_t a2)
{
  re::DynamicArray<re::BufferView>::resize(this + 64, a2);
  re::BucketArray<re::BufferSlice,8ul>::resize(this + 144, a2);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(this + 25, a2);

  re::DynamicArray<unsigned long>::resize(this + 240, a2);
}

uint64_t re::BufferTable::setBuffer(re::BufferTable *this, const re::WeakStringID *a2, const re::BufferSlice *a3)
{
  v5 = re::BufferTable::getOrAddKey(this, a2);
  re::BufferTable::setBufferRef(this, v5, a3);
  v6 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, v5);
  v12 = *(a3 + 4);
  v7 = *(v6 + 24);
  if (v7 == -1)
  {
    v10 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::MeshAssetLoader::preloadAssets(v10);
  }

  else
  {
    v14 = &v13;
    *&v11 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v7])(&v14, v6);
    *(&v11 + 1) = v8;
    re::BufferTable::setBufferView(this, v5, &v11);
    return re::BufferTable::setBufferIndirectResources(this, v5, 0, 0);
  }
}

void re::MeshAssetLoader::preloadAssets(re::MeshAssetLoader *this)
{
  v2 = re::ServiceLocator::service<re::AssetService>(*(this + 5));
  if ((*(*v2 + 360))(v2))
  {
  }
}

void anonymous namespace::ensureSharedCubeRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v18[98] = v3;
    v18[99] = v4;
    re::GeomMesh::GeomMesh(v18, 0);
    re::buildCube(v18, 1, 1.0, 1u);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v18, 1uLL, 0, 0, v16);
    v8 = v16[0];
    v9 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v10 = (*(*v9[2] + 32))(v9[2], 1272, 8);
    v11 = v10;
    if (v8 == 1)
    {
      re::MeshAsset::MeshAsset(v10, &v17);
    }

    else
    {
      re::MeshAsset::MeshAsset(v10);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v11, "sharedCubeMesh.compiledmesh", 2);
    v12 = *this;
    *this = v14;
    v14 = v12;
    v13 = *(this + 2);
    *(this + 2) = v15;
    v15 = v13;
    re::AssetHandle::~AssetHandle(&v14);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(v16);
    re::GeomMesh::~GeomMesh(v18);
  }
}

void anonymous namespace::ensureSharedPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v29[98] = v3;
    v29[99] = v4;
    re::GeomMesh::GeomMesh(v29, 0);
    v23 = 65537;
    v24 = 0;
    v26 = 0;
    v27 = 257;
    __asm { FMOV            V0.2S, #1.0 }

    v25 = _D0;
    v28 = 2;
    re::buildPlane(v29, &v23);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v29, 1uLL, 0, 0, v21);
    v13 = v21[0];
    v14 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v15 = (*(*v14[2] + 32))(v14[2], 1272, 8);
    v16 = v15;
    if (v13 == 1)
    {
      re::MeshAsset::MeshAsset(v15, &v22);
    }

    else
    {
      re::MeshAsset::MeshAsset(v15);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v16, "sharedPlaneMesh.compiledmesh", 2);
    v17 = *this;
    *this = v19;
    v19 = v17;
    v18 = *(this + 2);
    *(this + 2) = v20;
    v20 = v18;
    re::AssetHandle::~AssetHandle(&v19);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(v21);
    re::GeomMesh::~GeomMesh(v29);
  }
}

void anonymous namespace::ensureSharedBillboardPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v29[98] = v3;
    v29[99] = v4;
    re::GeomMesh::GeomMesh(v29, 0);
    v23 = 65537;
    v24 = 0;
    v26 = 0;
    v27 = 257;
    __asm { FMOV            V0.2S, #1.0 }

    v25 = _D0;
    v28 = 4;
    re::buildPlane(v29, &v23);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v29, 1uLL, 0, 0, v21);
    v13 = v21[0];
    v14 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v15 = (*(*v14[2] + 32))(v14[2], 1272, 8);
    v16 = v15;
    if (v13 == 1)
    {
      re::MeshAsset::MeshAsset(v15, &v22);
    }

    else
    {
      re::MeshAsset::MeshAsset(v15);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v16, "sharedBillboardMesh.compiledmesh", 2);
    v17 = *this;
    *this = v19;
    v19 = v17;
    v18 = *(this + 2);
    *(this + 2) = v20;
    v20 = v18;
    re::AssetHandle::~AssetHandle(&v19);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(v21);
    re::GeomMesh::~GeomMesh(v29);
  }
}

void anonymous namespace::ensureSharedDoubleBillboardPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v19[98] = v3;
    v19[99] = v4;
    re::GeomMesh::GeomMesh(v19, 0);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v19, 1uLL, 0, 0, v17);
    v9 = v17[0];
    v10 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v11 = (*(*v10[2] + 32))(v10[2], 1272, 8);
    v12 = v11;
    if (v9 == 1)
    {
      re::MeshAsset::MeshAsset(v11, &v18);
    }

    else
    {
      re::MeshAsset::MeshAsset(v11);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v12, "sharedDoubleBillboardMesh.compiledmesh", 2);
    v13 = *this;
    *this = v15;
    v15 = v13;
    v14 = *(this + 2);
    *(this + 2) = v16;
    v16 = v14;
    re::AssetHandle::~AssetHandle(&v15);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(v17);
    re::GeomMesh::~GeomMesh(v19);
  }
}

void anonymous namespace::ensureSharedDoubleVertexBillboardPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v19[98] = v3;
    v19[99] = v4;
    re::GeomMesh::GeomMesh(v19, 0);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v19, 1uLL, 0, 0, v17);
    v9 = v17[0];
    v10 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v11 = (*(*v10[2] + 32))(v10[2], 1272, 8);
    v12 = v11;
    if (v9 == 1)
    {
      re::MeshAsset::MeshAsset(v11, &v18);
    }

    else
    {
      re::MeshAsset::MeshAsset(v11);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v12, "sharedDoubleVertexdBillboardMesh.compiledmesh", 2);
    v13 = *this;
    *this = v15;
    v15 = v13;
    v14 = *(this + 2);
    *(this + 2) = v16;
    v16 = v14;
    re::AssetHandle::~AssetHandle(&v15);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(v17);
    re::GeomMesh::~GeomMesh(v19);
  }
}

void anonymous namespace::ensureSharedDoubleVertexCircularPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v26[100] = v3;
    v26[101] = v4;
    re::GeomMesh::GeomMesh(v26, 0);
    v19 = 0x10000;
    v20 = 1;
    v21 = 0;
    v22 = 0;
    v23 = 65793;
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    DWORD1(v25) = 0x7FFFFFFF;
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v26, 1uLL, 0, &v19, v17);
    v9 = v17[0];
    v10 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v11 = (*(*v10[2] + 32))(v10[2], 1272, 8);
    v12 = v11;
    if (v9 == 1)
    {
      re::MeshAsset::MeshAsset(v11, &v18);
    }

    else
    {
      re::MeshAsset::MeshAsset(v11);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v12, "sharedDoubleVertexCircularPlaneMesh.compiledmesh", 2);
    v13 = *this;
    *this = v15;
    v15 = v13;
    v14 = *(this + 2);
    *(this + 2) = v16;
    v16 = v14;
    re::AssetHandle::~AssetHandle(&v15);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(v17);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v24);
    re::GeomMesh::~GeomMesh(v26);
  }
}

void anonymous namespace::ensureSharedFullscreenPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v24[98] = v3;
    v24[99] = v4;
    re::GeomMesh::GeomMesh(v24, 0);
    v18 = 65537;
    v19 = 0;
    v21 = 0;
    v22 = 257;
    v20 = 0x4000000040000000;
    v23 = 4;
    re::buildPlane(v24, &v18);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v24, 1uLL, 0, 0, v16);
    v8 = v16[0];
    v9 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v10 = (*(*v9[2] + 32))(v9[2], 1272, 8);
    v11 = v10;
    if (v8 == 1)
    {
      re::MeshAsset::MeshAsset(v10, &v17);
    }

    else
    {
      re::MeshAsset::MeshAsset(v10);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v11, "sharedFullscreenMesh.compiledmesh", 2);
    v12 = *this;
    *this = v14;
    v14 = v12;
    v13 = *(this + 2);
    *(this + 2) = v15;
    v15 = v13;
    re::AssetHandle::~AssetHandle(&v14);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(v16);
    re::GeomMesh::~GeomMesh(v24);
  }
}

void anonymous namespace::ensureSharedCircularPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v29[98] = v3;
    v29[99] = v4;
    re::GeomMesh::GeomMesh(v29, 0);
    v23 = 65537;
    v27 = 257;
    __asm { FMOV            V0.2S, #1.0 }

    v25 = _D0;
    v26 = 1056964608;
    v24 = 10;
    v28 = 2;
    re::buildPlane(v29, &v23);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v29, 1uLL, 0, 0, v21);
    v13 = v21[0];
    v14 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v15 = (*(*v14[2] + 32))(v14[2], 1272, 8);
    v16 = v15;
    if (v13 == 1)
    {
      re::MeshAsset::MeshAsset(v15, &v22);
    }

    else
    {
      re::MeshAsset::MeshAsset(v15);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v16, "sharedCircularPlaneMesh.compiledmesh", 2);
    v17 = *this;
    *this = v19;
    v19 = v17;
    v18 = *(this + 2);
    *(this + 2) = v20;
    v20 = v18;
    re::AssetHandle::~AssetHandle(&v19);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(v21);
    re::GeomMesh::~GeomMesh(v29);
  }
}

void re::MeshAssetLoader::sharedCube(re::MeshAssetLoader *this@<X0>, AssetService *a2@<X1>, uint64_t a3@<X8>)
{
  re::MeshAsset::assetType(this);
  v6 = *(this + 226);
  v9 = &re::MeshAsset::assetType(void)::type;
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, &v9);
  (*(**v7 + 128))(*v7);
}

void anonymous namespace::preloadedAssetHandle(_anonymous_namespace_ *this@<X0>, AssetService *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  re::MeshAsset::assetType(this);
  (*(*this + 32))(&v9, this, a2, &re::MeshAsset::assetType(void)::type);
  if (*(&v9 + 1))
  {
    v8 = atomic_load((*(&v9 + 1) + 896));
    if (v8 != 2)
    {
      if (v4)
      {
        re::AssetHandle::loadNow(*(&v9 + 1), 0);
      }

      else
      {
        re::AssetHandle::loadAsync(&v9);
      }
    }

    *a4 = v9;
    v9 = 0uLL;
    *(a4 + 16) = v10;
    v10 = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  re::AssetHandle::~AssetHandle(&v9);
}

void re::MeshAssetLoader::sharedBillboardPlane(re::MeshAssetLoader *this@<X0>, AssetService *a2@<X1>, uint64_t a3@<X8>)
{
  re::MeshAsset::assetType(this);
  v6 = *(this + 226);
  v9 = &re::MeshAsset::assetType(void)::type;
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, &v9);
  (*(**v7 + 128))(*v7);
}

uint64_t re::MeshAssetLoader::serializableAsset@<X0>(re::MeshAsset *a1@<X1>, uint64_t *a2@<X8>)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) ", "runtimeAssetPointer != nullptr", "serializableAsset", 1732);
    _os_crash();
    __break(1u);
  }

  if (*(a1 + 1264) == 1)
  {
    MeshAssetDataFromRegisteredMeshAsset = re::MeshAsset::makeMeshAssetDataFromRegisteredMeshAsset(v10, a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetModel>::DynamicArray(v10, a1 + 2);
    re::DynamicArray<re::MeshAssetInstance>::DynamicArray(v11, a1 + 7);
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(v12, a1 + 12);
    re::DynamicArray<float>::DynamicArray(v13, a1 + 17);
    v16 = *(a1 + 44);
    MeshAssetDataFromRegisteredMeshAsset = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(v17, a1 + 23);
  }

  v6 = re::globalAllocators(MeshAssetDataFromRegisteredMeshAsset);
  v7 = (*(*v6[2] + 32))(v6[2], 1272, 8);
  v8 = re::MeshAsset::MeshAsset(v7, v10);
  v18[0] = &unk_1F5CBD8B0;
  v18[3] = v18;
  a2[4] = (a2 + 1);
  *a2 = v8;
  a2[1] = &unk_1F5CBD8B0;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v18);
  if (*a2)
  {
    re::DynamicArray<re::AssetHandle>::operator=(*a2 + 264, a1 + 33);
  }

  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v17);
  if (v13[0])
  {
    if (v15)
    {
      (*(*v13[0] + 40))();
    }

    v15 = 0;
    memset(v13, 0, sizeof(v13));
    ++v14;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(v12);
  re::DynamicArray<re::MeshAssetInstance>::deinit(v11);
  return re::DynamicArray<re::MeshAssetModel>::deinit(v10);
}

uint64_t re::DynamicArray<re::AssetHandle>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AssetHandle>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::AssetHandle>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AssetHandle>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AssetHandle>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::MeshAssetLoader::writeAssetToRealityFile@<X0>(re::AssetHandle *this@<X1>, uint64_t a2@<X0>, const re::DynamicString *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9)
{
  v58[5] = *MEMORY[0x1E69E9840];
  re::AssetHandle::serializableAsset(this, v58);
  v17 = v58[0];
  v18 = (*(*a7 + 32))(&v55, a7, this, *(a4 + 24), *(a4 + 41));
  if ((v55 & 1) == 0)
  {
    v24 = v56;
    *a8 = 0;
    *(a8 + 8) = v24;
LABEL_38:
    re::Result<re::Optional<std::unique_ptr<void,std::function<void ()(void *)>>>,re::WrappedError>::~Result(&v55);
    return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v58);
  }

  if (v56)
  {
    v19 = v57;
  }

  else
  {
    v19 = v17;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  re::DynamicString::setCapacity(&v51, 0);
  if (*(a4 + 42) != 1)
  {
    v50 = 0;
    v47[1] = 0;
    v48 = 0;
    v47[0] = 0;
    v49 = 0;
    v46[0] = &unk_1F5D0A7B0;
    v46[1] = v47;
    v46[2] = 0;
    v21 = re::AssetHandle::legacy_assetPath(this);
    v22 = *(this + 1);
    if (v22)
    {
      v23 = *(v22 + 280);
    }

    else
    {
      v23 = 0;
    }

    v25 = re::AssetUtilities::saveCompiledAssetToStream(v46, v19, v21, v23, a5, v42);
    if (v42[0])
    {
      v26 = a9;
      if (!a9)
      {
        v26 = (*(*a2 + 264))(a2, v19, a4, v25) ^ 1;
      }

      v27 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v50, v48, *MEMORY[0x1E695E498]);
      v28 = v27;
      if (*(a3 + 1))
      {
        v29 = *(a3 + 2);
      }

      else
      {
        v29 = a3 + 9;
      }

      re::RealityFileWriter::saveEntryToArchive(v27, v29, a6, v26, 0, 0, &v37);
      CFRelease(v28);
      if (v37)
      {
        v37 = 0;
        v38 = 0;
        v39 = 1;
        v40 = 0;
        v41 = 0;
        re::DynamicOverflowArray<re::DynamicString,2ul>::add(&v37, a3);
        if (v52)
        {
          v30 = v52 >> 1;
        }

        else
        {
          v30 = v52 >> 1;
        }

        if (v30)
        {
          re::DynamicOverflowArray<re::DynamicString,2ul>::add(&v37, &v51);
        }

        re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(v36, &v37);
        *a8 = 1;
        re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(a8 + 8, v36);
        re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(v36);
        re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(&v37);
        goto LABEL_28;
      }

      v35 = v38;
      *a8 = 0;
      *(a8 + 8) = v35;
      if (v37)
      {
LABEL_28:
        if (v42[0] & 1) == 0 && v43 && (v44)
        {
          (*(*v43 + 40))();
        }

        if (v47[0] && v50)
        {
          (*(*v47[0] + 40))();
        }

        if (v51)
        {
          if (v52)
          {
            (*(*v51 + 40))();
          }
        }

        goto LABEL_38;
      }

      v33 = v38;
    }

    else
    {
      if (v44)
      {
        v31 = *&v45[7];
      }

      else
      {
        v31 = v45;
      }

      re::WrappedError::make(@"RERealityFileWriterErrorDomain", 5, v31, &v37);
      v32 = v37;
      v37 = 0;
      *a8 = 0;
      *(a8 + 8) = v32;
      v33 = 0;
    }

    goto LABEL_28;
  }

  re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Exporting with vvm side cars not supported in geode-era xcode trains", "!Unreachable code", "writeAssetToRealityFile", 1822);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::DynamicArray<re::MeshAssetModel>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v10 = a2 << 9;
    v11 = a2;
    do
    {
      v12 = (*(a1 + 32) + v10);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v12 + 472);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v12 + 432);
      re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v12 + 392);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v12 + 352);
      re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v12 + 312);
      re::DynamicArray<re::MeshLodLevelInfo>::deinit(v12 + 272);
      re::DynamicArray<re::MeshAssetSkeleton>::deinit(v12 + 232);
      re::DynamicArray<re::MeshAssetPart>::deinit(v12 + 192);
      re::DynamicArray<re::MeshAssetSkinningData>::deinit(v12 + 152);
      re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v12 + 112);
      re::StringID::destroyString(v12);
      ++v11;
      v10 += 512;
    }

    while (v11 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 9;
      v7.i64[0] = 0x7F0000007FLL;
      v7.i64[1] = 0x7F0000007FLL;
      v8 = vnegq_f32(v7);
      do
      {
        v9 = *(a1 + 32) + v6;
        *v9 = 0;
        *(v9 + 8) = &str_67;
        *(v9 + 16) = v8;
        *(v9 + 32) = v7;
        *(v9 + 504) = 0;
        *(v9 + 48) = 0uLL;
        *(v9 + 64) = 0uLL;
        *(v9 + 80) = 0uLL;
        *(v9 + 96) = 0uLL;
        *(v9 + 112) = 0uLL;
        *(v9 + 124) = 0uLL;
        *(v9 + 144) = 0uLL;
        *(v9 + 160) = 0uLL;
        *(v9 + 176) = 0;
        *(v9 + 184) = 0uLL;
        *(v9 + 200) = 0uLL;
        *(v9 + 216) = 0;
        *(v9 + 224) = 0uLL;
        *(v9 + 240) = 0uLL;
        *(v9 + 256) = 0;
        *(v9 + 296) = 0;
        *(v9 + 264) = 0uLL;
        *(v9 + 280) = 0uLL;
        *(v9 + 336) = 0;
        *(v9 + 304) = 0uLL;
        *(v9 + 320) = 0uLL;
        *(v9 + 376) = 0;
        *(v9 + 344) = 0uLL;
        *(v9 + 360) = 0uLL;
        *(v9 + 416) = 0;
        *(v9 + 384) = 0uLL;
        *(v9 + 400) = 0uLL;
        *(v9 + 456) = 0;
        *(v9 + 424) = 0uLL;
        *(v9 + 440) = 0uLL;
        *(v9 + 464) = 0uLL;
        *(v9 + 480) = 0uLL;
        v6 += 512;
        *(v9 + 496) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::DynamicArray<re::MeshAssetInstance>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 96 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + v8));
      ++v9;
      v8 += 96;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void anonymous namespace::makeMeshAssetModelFromMeshModel(_anonymous_namespace_ *this, float32x4_t *a2, id *a3, int a4)
{
  v215 = *MEMORY[0x1E69E9840];
  v161 = 0;
  v162 = &str_67;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v163 = vnegq_f32(v7);
  v164 = v7;
  v189 = 0;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  memset(v169, 0, 28);
  memset(&v169[2], 0, 32);
  v171 = 0u;
  v172 = 0u;
  v170 = 0;
  v173 = 0;
  memset(v174, 0, sizeof(v174));
  v175 = 0;
  v176 = 0u;
  v177 = 0u;
  v178 = 0;
  v180 = 0;
  memset(v179, 0, sizeof(v179));
  memset(v181, 0, sizeof(v181));
  v182 = 0;
  v184 = 0;
  memset(v183, 0, sizeof(v183));
  memset(v185, 0, sizeof(v185));
  v186 = 0;
  memset(v187, 0, sizeof(v187));
  v188 = 0;
  v8 = re::StringID::operator=(&v161, a2);
  v9 = a2[2];
  v163 = a2[1];
  v164 = v9;
  v10 = a2[3].u64[1];
  if (v172 < v10)
  {
    v8 = re::DynamicArray<re::MeshAssetPart>::setCapacity(&v171 + 1, a2[3].u64[1]);
  }

  v11 = a2[7].u64[1];
  v12 = a2[8].u64[0];
  if (*(&v176 + 1))
  {
    if (v11)
    {
      re::DynamicArray<re::MeshLodLevelInfo>::copy(&v176 + 1, a2[8].i64[0], a2[7].u64[1]);
      re::DynamicArray<re::MeshLodLevelInfo>::resize(&v176 + 1, v11);
      if (!v10)
      {
        goto LABEL_30;
      }

LABEL_10:
      v13 = 0;
      v12 = 0;
      v11 = v211;
      while (1)
      {
        v14 = a2[3].u64[1];
        if (v14 <= v12)
        {
          goto LABEL_283;
        }

        v15 = LOBYTE(v202[0]);
        if (v202[0])
        {
          re::DynamicArray<re::MeshAssetPart>::add((&v171 + 8), &v202[1]);
        }

        else
        {
          *v211 = v202[1];
          re::DynamicString::DynamicString(&v211[16], &v202[2]);
          *this = 0;
          *(this + 1) = *v211;
          v16 = v212;
          *(this + 4) = *&v211[16];
          *(this + 7) = v16;
          *(this + 40) = *&v211[24];
        }

        if (LOBYTE(v202[0]) == 1)
        {
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v208);
          if (BYTE8(v204))
          {
            if (BYTE8(v204))
            {
            }
          }

          *&v205 = &str_67;
          *(&v204 + 1) = 0;
          re::DynamicArray<re::MeshAssetBuffer>::deinit(&v202[1]);
        }

        else if (*&v202[2] && (BYTE8(v202[2]) & 1) != 0)
        {
          (*(**&v202[2] + 40))();
        }

        if (!v15)
        {
          goto LABEL_330;
        }

        ++v12;
        v13 += 544;
        if (v10 == v12)
        {
          goto LABEL_30;
        }
      }
    }

    v18 = *(&v177 + 1);
    *(&v177 + 1) = 0;
    if (v18)
    {
      v19 = 48 * v18;
      v11 = *&v179[0] + 8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v11);
        v11 += 48;
        v19 -= 48;
      }

      while (v19);
    }

    ++v178;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v11)
    {
      re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(&v176 + 1, v11);
      ++v178;
      re::DynamicArray<re::MeshLodLevelInfo>::copy(&v176 + 1, v12, v11);
    }

    if (v10)
    {
      goto LABEL_10;
    }
  }

LABEL_30:
  v201 = 0;
  v198 = 0;
  v199 = 0uLL;
  v200 = 0;
  v20 = a2[3].u64[1];
  v21 = a2[14].i64[0];
  if (v21)
  {
    v22 = *(v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
  v24 = 0uLL;
  v25 = 1;
  v26 = 0;
  if (!v20 || v22 != v20)
  {
LABEL_103:
    v201 = 0;
    v198 = 0;
    v199 = 0uLL;
    v200 = v25;
    v209[0] = 1;
    *&v209[8] = v26;
    *&v209[16] = v24;
    memset(v202, 0, 24);
    *&v210 = v23;
    *&v202[2] = 0;
    DWORD2(v202[1]) = 2;
    *&v209[32] = 1;
    re::DynamicArray<re::MeshAssetSkinningData>::deinit(v202);
    goto LABEL_113;
  }

  re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(&v198, a2[3].u64[1]);
  v27 = 0;
  v11 = v202;
  v14 = 88;
  while (1)
  {
    v195[0] = 0;
    v197 = 0;
    v196 = 0;
    v28 = a2[14].i64[0];
    if (!v28 || *(v28 + 8) <= v27)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::make(v195, v211);
LABEL_105:
      v209[0] = 0;
      *&v209[8] = 100;
      *&v209[16] = re::AssetErrorCategory(void)::instance;
      *&v209[24] = v202[0];
      v210 = v202[1];
LABEL_106:
      if (v211[0] == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v211[8]);
      }

      else if (*&v211[24] && (v211[32] & 1) != 0)
      {
        (*(**&v211[24] + 40))();
      }

      if (v196 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v196])(v202, v195);
      }

LABEL_113:
      re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v198);
      v61 = v209[0];
      if (v209[0])
      {
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v169[2] + 8, &v209[8]);
        if (v209[0])
        {
          v62 = re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v209[8]);
          goto LABEL_120;
        }
      }

      else
      {
        v63 = *&v209[24];
        *&v209[32] = 0;
        *&v209[24] = 0;
        v64 = v210;
        v210 = 0uLL;
        *this = 0;
        *(this + 1) = *&v209[8];
        *(this + 2) = v63;
        *(this + 3) = v64;
      }

      v62 = *&v209[24];
      if (*&v209[24] && (v209[32] & 1) != 0)
      {
        v62 = (*(**&v209[24] + 40))();
      }

LABEL_120:
      if (!v61)
      {
        goto LABEL_330;
      }

      *&v214[2] = 0;
      memset(v214, 0, 28);
      v65 = a2[9].i64[0];
      if (v65)
      {
        v66 = *(v65 + 40);
        if (v66 != a2[3].i64[1])
        {
          LOBYTE(v202[0]) = 0;
          *(&v202[0] + 1) = 100;
          *&v202[1] = re::AssetErrorCategory(void)::instance;
          *(&v202[1] + 8) = *v211;
          *(&v202[2] + 1) = *&v211[16];
          *&v202[3] = *&v211[24];
          goto LABEL_153;
        }

        v20 = *(v65 + 64);
        re::DynamicArray<re::MeshAssetBlendShapeData>::resize(v214, v20);
        if (v20)
        {
          v27 = 0;
          v10 = v211;
          v11 = 1;
          v12 = 56;
          while (1)
          {
            re::BlendShapeModelUtil::makeBlendShapeGroupDefinitionFromGroup(&a2[9], (v11 - 1), v211);
            if (v211[0] != 1)
            {
              break;
            }

            v14 = *&v214[1];
            if (*&v214[1] <= v27)
            {
              goto LABEL_335;
            }

            v68 = (*&v214[2] + 56 * v27);
            re::StringID::operator=(v68, &v211[8]);
            re::FixedArray<float>::operator=(v68 + 2, &v211[24]);
            v68[5] = *(&v212 + 1);
            re::Result<re::BlendShapeGroupDefinition,re::DetailedError>::~Result(v211);
            v27 = v11;
            v72 = v20 > v11;
            v11 = (v11 + 1);
            if (!v72)
            {
              goto LABEL_128;
            }
          }

          LOBYTE(v202[0]) = 0;
          *(&v202[0] + 1) = 100;
          *&v202[1] = re::AssetErrorCategory(void)::instance;
          *(&v202[1] + 8) = *v209;
          *(&v202[2] + 8) = *&v209[16];
          re::Result<re::BlendShapeGroupDefinition,re::DetailedError>::~Result(v211);
LABEL_153:
          re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v214);
          v75 = LOBYTE(v202[0]);
          if (v202[0])
          {
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v169, v202 + 8);
            if (v202[0])
            {
              v76 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v202 + 8);
              goto LABEL_160;
            }
          }

          else
          {
            v77 = *(&v202[1] + 8);
            memset(&v202[1] + 8, 0, 32);
            v78 = *(&v202[2] + 1);
            v79 = *&v202[3];
            *this = 0;
            *(this + 1) = *(v202 + 8);
            *(this + 2) = v77;
            *(this + 6) = v78;
            *(this + 7) = v79;
          }

          v76 = *(&v202[1] + 1);
          if (*(&v202[1] + 1) && (v202[2] & 1) != 0)
          {
            v76 = (*(**(&v202[1] + 1) + 40))();
          }

LABEL_160:
          if (!v75)
          {
            goto LABEL_330;
          }

          *&v211[32] = 0;
          memset(v211, 0, 28);
          v80 = a2[44].i64[0];
          if (v80)
          {
            if (*(v80 + 32) != a2[3].i64[1])
            {
              LOBYTE(v202[0]) = 0;
              *(&v202[0] + 1) = 100;
              *&v202[1] = re::AssetErrorCategory(void)::instance;
              *(&v202[1] + 8) = v214[0];
              *(&v202[2] + 8) = v214[1];
              goto LABEL_209;
            }

            v159 = *(v80 + 32);
            v81 = *(v80 + 56);
            re::DynamicArray<re::MeshAssetContactDeformerData>::resize(v211, v81);
            if (v81)
            {
              v20 = 0;
              v82 = 0;
              v27 = 0xFFFFFFFFLL;
              while (1)
              {
                v10 = *&v211[16];
                if (*&v211[16] <= v20)
                {
                  goto LABEL_336;
                }

                v83 = a2[44].i64[0];
                if (v83 && *(v83 + 32) > v82)
                {
                  v11 = *(*(v83 + 40) + 24 * v82 + 8);
                }

                else
                {
                  v11 = 0;
                }

                v12 = *&v211[32] + 48 * v20;
                *(v12 + 40) = -1;
                re::ContactDeformerModelUtil::offsetBufferName(&a2[9], v82, v202);
                v84 = re::StringID::operator=(v12, v202);
                if (v202[0])
                {
                  if (v202[0])
                  {
                  }
                }

                if (v11)
                {
                  break;
                }

LABEL_190:
                v20 = ++v82;
                if (v81 <= v82)
                {
                  goto LABEL_191;
                }
              }

              v14 = 0;
              v85 = 0;
              v10 = 0;
              while (1)
              {
                v35 = *(v12 + 24);
                if (v35 <= v10)
                {
                  break;
                }

                v86 = a2[44].i64[0];
                if (v86 && *(v86 + 32) > v82)
                {
                  v87 = *(v86 + 40) + 24 * v82;
                  if (*(v87 + 8) <= v10)
                  {
                    v88 = -1;
                  }

                  else
                  {
                    v88 = *(*(v87 + 16) + v14);
                  }

                  v89 = *(v12 + 32);
                  *(v89 + v85) = v88;
                  v91 = *(v86 + 40) + 24 * v82;
                  v90 = 0;
                  if (*(v91 + 8) > v10)
                  {
                    v90 = *(*(v91 + 16) + v14 + 4);
                  }
                }

                else
                {
                  v89 = *(v12 + 32);
                  *(v89 + v85) = -1;
                  v90 = 0;
                }

                *(v89 + v85 + 4) = v90;
                re::ContactDeformerModelUtil::heightMapForTarget(&a2[9], v82, v10, v209);
                v35 = *(v12 + 24);
                if (v35 <= v10)
                {
                  goto LABEL_282;
                }

                re::FixedArray<float>::operator=((*(v12 + 32) + v85 + 8), v209);
                if (*v209 && *&v209[8])
                {
                  (*(**v209 + 40))();
                }

                ++v10;
                v85 += 32;
                v14 += 16;
                if (v11 == v10)
                {
                  goto LABEL_190;
                }
              }

LABEL_281:
              *v209 = 0;
              v203 = 0u;
              memset(v202, 0, sizeof(v202));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v214[0]) = 136315906;
              *(v214 + 4) = "operator[]";
              WORD6(v214[0]) = 1024;
              *(v214 + 14) = 468;
              WORD1(v214[1]) = 2048;
              *(&v214[1] + 4) = v10;
              WORD6(v214[1]) = 2048;
              *(&v214[1] + 14) = v35;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_282:
              v198 = 0;
              v203 = 0u;
              memset(v202, 0, sizeof(v202));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v214[0]) = 136315906;
              *(v214 + 4) = "operator[]";
              WORD6(v214[0]) = 1024;
              *(v214 + 14) = 468;
              WORD1(v214[1]) = 2048;
              *(&v214[1] + 4) = v10;
              WORD6(v214[1]) = 2048;
              *(&v214[1] + 14) = v35;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_283:
              *&v214[0] = 0;
              v203 = 0u;
              memset(v202, 0, sizeof(v202));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v211 = 136315906;
              *&v211[4] = "operator[]";
              *&v211[12] = 1024;
              *&v211[14] = 476;
              *&v211[18] = 2048;
              *&v211[20] = v12;
              *&v211[28] = 2048;
              *&v211[30] = v14;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_284;
            }

LABEL_191:
            if (v159)
            {
              v92 = 0;
              v93 = a2[44].i64[0];
              v20 = *&v211[16];
              v94 = *&v211[32];
              do
              {
                if (v93 && *(v93 + 56) > v92)
                {
                  v27 = *(*(v93 + 64) + 2 * v92);
                  if (v27 != 0xFFFF && v81 > v27)
                  {
                    if (v20 <= v27)
                    {
                      goto LABEL_342;
                    }

                    *(v94 + 48 * *(*(v93 + 64) + 2 * v92) + 40) = v92;
                  }
                }

                ++v92;
              }

              while (v159 > v92);
            }

            else
            {
              v20 = *&v211[16];
            }

            v96 = *v211;
            memset(v211, 0, 24);
            v97 = *&v211[32];
            *&v211[32] = 0;
            ++*&v211[24];
            LOBYTE(v202[0]) = 1;
            *(v202 + 8) = v96;
            *(&v202[1] + 1) = v20;
            memset(v214, 0, 24);
            *(&v202[2] + 1) = v97;
            *&v214[2] = 0;
            DWORD2(v214[1]) = 2;
            LODWORD(v202[2]) = 1;
          }

          else
          {
            *&v211[32] = 0;
            memset(v211, 0, 24);
            *&v211[24] = 1;
            LOBYTE(v202[0]) = 1;
            memset(v214, 0, 24);
            memset(v202 + 8, 0, 24);
            *(&v202[2] + 1) = 0;
            *&v214[2] = 0;
            DWORD2(v214[1]) = 2;
            LODWORD(v202[2]) = 1;
          }

          re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v214);
LABEL_209:
          re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v211);
          v98 = LOBYTE(v202[0]);
          if (v202[0])
          {
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v179 + 8, v202 + 8);
            if (v202[0])
            {
              v99 = re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v202 + 8);
              goto LABEL_216;
            }
          }

          else
          {
            v100 = *(&v202[1] + 8);
            memset(&v202[1] + 8, 0, 32);
            v101 = *(&v202[2] + 1);
            v102 = *&v202[3];
            *this = 0;
            *(this + 1) = *(v202 + 8);
            *(this + 2) = v100;
            *(this + 6) = v101;
            *(this + 7) = v102;
          }

          v99 = *(&v202[1] + 1);
          if (*(&v202[1] + 1) && (v202[2] & 1) != 0)
          {
            v99 = (*(**(&v202[1] + 1) + 40))();
          }

LABEL_216:
          if (!v98)
          {
            goto LABEL_330;
          }

          *&v211[32] = 0;
          memset(v211, 0, 28);
          v103 = a2[34].i64[0];
          if (v103)
          {
            v104 = *(v103 + 32);
            if (a2[3].i64[1] != v104)
            {
              LOBYTE(v202[0]) = 0;
              *(&v202[0] + 1) = 100;
              *&v202[1] = re::AssetErrorCategory(void)::instance;
              *(&v202[1] + 8) = v214[0];
              *(&v202[2] + 8) = v214[1];
              goto LABEL_240;
            }

            v105 = *(v103 + 8);
            v20 = v105;
            v106 = v105;
            re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(v211, v105);
            if (v106)
            {
              v11 = 0;
              v12 = 16;
              while (1)
              {
                v10 = *&v211[16];
                if (*&v211[16] <= v11)
                {
                  break;
                }

                v107 = *&v211[32] + v12;
                *(*&v211[32] + v12) = -1;
                re::SmoothDeformerModelUtil::envelopeBufferNameForSmoothDataIndex(&a2[9], v11, v202);
                v108 = re::StringID::operator=((v107 - 16), v202);
                if (v202[0])
                {
                  if (v202[0])
                  {
                  }
                }

                ++v11;
                v12 += 24;
                if (v20 == v11)
                {
                  goto LABEL_226;
                }
              }

LABEL_337:
              *v209 = 0;
              v203 = 0u;
              memset(v202, 0, sizeof(v202));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v214[0]) = 136315906;
              *(v214 + 4) = "operator[]";
              WORD6(v214[0]) = 1024;
              *(v214 + 14) = 789;
              WORD1(v214[1]) = 2048;
              *(&v214[1] + 4) = v11;
              WORD6(v214[1]) = 2048;
              *(&v214[1] + 14) = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_338:
              re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
              _os_crash();
              __break(1u);
              goto LABEL_339;
            }

LABEL_226:
            if (v104)
            {
              v109 = 0;
              v110 = a2[34].i64[0];
              v27 = *&v211[16];
              v111 = *&v211[32];
              do
              {
                if (v110)
                {
                  if (*(v110 + 32) > v109)
                  {
                    v10 = *(*(v110 + 40) + 2 * v109);
                    if (v10 < v20)
                    {
                      if (v27 <= v10)
                      {
                        goto LABEL_343;
                      }

                      *(v111 + 24 * *(*(v110 + 40) + 2 * v109) + 16) = v109;
                    }
                  }
                }

                ++v109;
              }

              while (v104 != v109);
            }

            else
            {
              v27 = *&v211[16];
            }

            v112 = *v211;
            memset(v211, 0, 24);
            v113 = *&v211[32];
            *&v211[32] = 0;
            ++*&v211[24];
            LOBYTE(v202[0]) = 1;
            *(v202 + 8) = v112;
            *(&v202[1] + 1) = v27;
            memset(v214, 0, 24);
            *(&v202[2] + 1) = v113;
            *&v214[2] = 0;
            DWORD2(v214[1]) = 2;
            LODWORD(v202[2]) = 1;
          }

          else
          {
            *&v211[32] = 0;
            memset(v211, 0, 24);
            *&v211[24] = 1;
            LOBYTE(v202[0]) = 1;
            memset(v214, 0, 24);
            memset(v202 + 8, 0, 24);
            *(&v202[2] + 1) = 0;
            *&v214[2] = 0;
            DWORD2(v214[1]) = 2;
            LODWORD(v202[2]) = 1;
          }

          re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v214);
LABEL_240:
          re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v211);
          v114 = LOBYTE(v202[0]);
          if (v202[0])
          {
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v181[8], v202 + 8);
            if (v202[0])
            {
              v115 = re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v202 + 8);
LABEL_247:
              if (!v114)
              {
                goto LABEL_330;
              }

              *&v211[32] = 0;
              memset(v211, 0, 28);
              v119 = a2[39].i64[0];
              if (!v119)
              {
                *&v211[32] = 0;
                memset(v211, 0, 24);
                *&v211[24] = 1;
                LOBYTE(v202[0]) = 1;
                memset(v214, 0, 24);
                memset(v202 + 8, 0, 24);
                *(&v202[2] + 1) = 0;
                *&v214[2] = 0;
                DWORD2(v214[1]) = 2;
                LODWORD(v202[2]) = 1;
LABEL_286:
                re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v214);
LABEL_287:
                re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v211);
                v133 = LOBYTE(v202[0]);
                if (v202[0])
                {
                  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v183 + 8, v202 + 8);
                  if (v202[0])
                  {
                    v134 = re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v202 + 8);
LABEL_294:
                    if (!v133)
                    {
                      goto LABEL_330;
                    }

                    *&v214[2] = 0;
                    memset(v214, 0, 28);
                    v138 = a2[31].i64[1];
                    if (!v138)
                    {
                      *&v214[2] = 0;
                      memset(v214, 0, 24);
                      DWORD2(v214[1]) = 1;
                      v211[0] = 1;
                      memset(v202, 0, 24);
                      memset(&v211[8], 0, 24);
                      *&v212 = 0;
                      *&v202[2] = 0;
                      DWORD2(v202[1]) = 2;
                      *&v211[32] = 1;
                      goto LABEL_318;
                    }

                    v139 = *(v138 + 32);
                    if (a2[3].i64[1] != v139)
                    {
                      v148 = *&v202[1];
                      v149 = *&v202[0];
                      v211[0] = 0;
                      *&v211[8] = 100;
                      *&v211[16] = re::AssetErrorCategory(void)::instance;
                      *(&v212 + 1) = *(&v202[1] + 1);
                      *&v211[32] = *(&v202[0] + 1);
                      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v214);
                      v150 = 0;
                      v151 = *&v211[32];
                      v152 = *(&v212 + 1);
                      *&v211[24] = 0u;
                      v212 = 0u;
                      *this = 0;
                      *(this + 1) = *&v211[8];
                      *(this + 6) = v148;
                      *(this + 7) = v152;
                      *(this + 4) = v149;
                      *(this + 5) = v151;
                      goto LABEL_321;
                    }

                    v140 = *(v138 + 8);
                    v20 = v140;
                    v141 = v140;
                    re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(v214, v140);
                    if (!v141)
                    {
LABEL_304:
                      if (!v139)
                      {
                        goto LABEL_316;
                      }

                      v145 = 0;
                      v146 = a2[31].i64[1];
                      v27 = *&v214[1];
                      v147 = *&v214[2];
                      do
                      {
                        if (v146)
                        {
                          if (*(v146 + 32) > v145)
                          {
                            v10 = *(*(v146 + 40) + 2 * v145);
                            if (v10 < v20)
                            {
                              if (v27 <= v10)
                              {
                                goto LABEL_345;
                              }

                              *(v147 + 24 * *(*(v146 + 40) + 2 * v145) + 16) = v145;
                            }
                          }
                        }

                        ++v145;
                      }

                      while (v139 != v145);
                      goto LABEL_317;
                    }

                    v11 = 0;
                    v142 = 16;
                    while (1)
                    {
                      v10 = *&v214[1];
                      if (*&v214[1] <= v11)
                      {
                        break;
                      }

                      v143 = *&v214[2];
                      re::OffsetsDeformerModelUtil::envelopeBufferNameForOffsetsDataIndex(&a2[9], v11, v202);
                      v144 = re::StringID::operator=((v143 + v142 - 16), v202);
                      if (v202[0])
                      {
                        if (v202[0])
                        {
                        }
                      }

                      *(v143 + v142) = -1;
                      ++v11;
                      v142 += 24;
                      if (v20 == v11)
                      {
                        goto LABEL_304;
                      }
                    }

LABEL_341:
                    v198 = 0;
                    v203 = 0u;
                    memset(v202, 0, sizeof(v202));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v209 = 136315906;
                    *&v209[4] = "operator[]";
                    *&v209[12] = 1024;
                    *&v209[14] = 789;
                    *&v209[18] = 2048;
                    *&v209[20] = v11;
                    *&v209[28] = 2048;
                    *&v209[30] = v10;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_342:
                    *v209 = 0;
                    v203 = 0u;
                    memset(v202, 0, sizeof(v202));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v214[0]) = 136315906;
                    *(v214 + 4) = "operator[]";
                    WORD6(v214[0]) = 1024;
                    *(v214 + 14) = 789;
                    WORD1(v214[1]) = 2048;
                    *(&v214[1] + 4) = v27;
                    WORD6(v214[1]) = 2048;
                    *(&v214[1] + 14) = v20;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_343:
                    *v209 = 0;
                    v203 = 0u;
                    memset(v202, 0, sizeof(v202));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v214[0]) = 136315906;
                    *(v214 + 4) = "operator[]";
                    WORD6(v214[0]) = 1024;
                    *(v214 + 14) = 789;
                    WORD1(v214[1]) = 2048;
                    *(&v214[1] + 4) = v10;
                    WORD6(v214[1]) = 2048;
                    *(&v214[1] + 14) = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_344:
                    *v209 = 0;
                    v203 = 0u;
                    memset(v202, 0, sizeof(v202));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v214[0]) = 136315906;
                    *(v214 + 4) = "operator[]";
                    WORD6(v214[0]) = 1024;
                    *(v214 + 14) = 789;
                    WORD1(v214[1]) = 2048;
                    *(&v214[1] + 4) = v10;
                    WORD6(v214[1]) = 2048;
                    *(&v214[1] + 14) = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_345:
                    v198 = 0;
                    v203 = 0u;
                    memset(v202, 0, sizeof(v202));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v209 = 136315906;
                    *&v209[4] = "operator[]";
                    *&v209[12] = 1024;
                    *&v209[14] = 789;
                    *&v209[18] = 2048;
                    *&v209[20] = v10;
                    *&v209[28] = 2048;
                    *&v209[30] = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }
                }

                else
                {
                  v135 = *(&v202[1] + 8);
                  memset(&v202[1] + 8, 0, 32);
                  v136 = *(&v202[2] + 1);
                  v137 = *&v202[3];
                  *this = 0;
                  *(this + 1) = *(v202 + 8);
                  *(this + 2) = v135;
                  *(this + 6) = v136;
                  *(this + 7) = v137;
                }

                v134 = *(&v202[1] + 1);
                if (*(&v202[1] + 1) && (v202[2] & 1) != 0)
                {
                  v134 = (*(**(&v202[1] + 1) + 40))(*(&v202[1] + 1), *(&v202[2] + 1));
                }

                goto LABEL_294;
              }

              v11 = *(v119 + 32);
              if (a2[3].i64[1] != v11)
              {
                LOBYTE(v202[0]) = 0;
                *(&v202[0] + 1) = 100;
                *&v202[1] = re::AssetErrorCategory(void)::instance;
                *(&v202[1] + 8) = v214[0];
                *(&v202[2] + 8) = v214[1];
                goto LABEL_287;
              }

              v120 = *(v119 + 8);
              v20 = v120;
              v121 = v120;
              re::DynamicArray<re::MeshAssetWrapDeformerData>::resize(v211, v120);
              if (!v121)
              {
LABEL_269:
                if (v11)
                {
                  v128 = 0;
                  v129 = a2[39].i64[0];
                  v27 = *&v211[16];
                  v130 = *&v211[32];
                  do
                  {
                    if (v129)
                    {
                      if (*(v129 + 32) > v128)
                      {
                        v10 = *(*(v129 + 40) + 2 * v128);
                        if (v10 < v20)
                        {
                          if (v27 <= v10)
                          {
                            goto LABEL_344;
                          }

                          *(v130 + 112 * *(*(v129 + 40) + 2 * v128) + 104) = v128;
                        }
                      }
                    }

                    ++v128;
                  }

                  while (v11 != v128);
                  goto LABEL_285;
                }

LABEL_284:
                v27 = *&v211[16];
LABEL_285:
                v131 = *v211;
                memset(v211, 0, 24);
                v132 = *&v211[32];
                *&v211[32] = 0;
                ++*&v211[24];
                LOBYTE(v202[0]) = 1;
                *(v202 + 8) = v131;
                *(&v202[1] + 1) = v27;
                memset(v214, 0, 24);
                *(&v202[2] + 1) = v132;
                *&v214[2] = 0;
                DWORD2(v214[1]) = 2;
                LODWORD(v202[2]) = 1;
                goto LABEL_286;
              }

              v12 = 0;
              v122 = 104;
              while (1)
              {
                v10 = *&v211[16];
                if (*&v211[16] <= v12)
                {
                  break;
                }

                v123 = *&v211[32];
                v124 = *&v211[32] + v122;
                v125 = (*&v211[32] + v122 - 104);
                re::WrapDeformerModelUtil::targetMeshInstanceNameForWrapDataIndex(&a2[9], v12, v202);
                v126 = re::StringID::operator=(v125, v202);
                if (v202[0])
                {
                  if (v202[0])
                  {
                  }
                }

                re::WrapDeformerModelUtil::envelopeBufferNameForWrapDataIndex(&a2[9], v12, v202);
                v127 = re::StringID::operator=((v124 - 88), v202);
                if (v202[0])
                {
                  if (v202[0])
                  {
                  }
                }

                re::WrapDeformerModelUtil::faceIndicesForWrapDataIndex(&a2[9], v12, v202);
                re::FixedArray<float>::operator=((v123 + v122 - 72), v202);
                if (*&v202[0] && *(&v202[0] + 1))
                {
                  (*(**&v202[0] + 40))();
                }

                re::WrapDeformerModelUtil::faceCoordinatesForWrapDataIndex(&a2[9], v12, v202);
                re::FixedArray<float>::operator=((v123 + v122 - 48), v202);
                if (*&v202[0] && *(&v202[0] + 1))
                {
                  (*(**&v202[0] + 40))();
                }

                re::WrapDeformerModelUtil::positionOffsetsForWrapDataIndex(&a2[9], v12, v202);
                re::FixedArray<float>::operator=((v123 + v122 - 24), v202);
                if (*&v202[0] && *(&v202[0] + 1))
                {
                  (*(**&v202[0] + 40))();
                }

                *(v123 + v122) = -1;
                ++v12;
                v122 += 112;
                if (v20 == v12)
                {
                  goto LABEL_269;
                }
              }

LABEL_339:
              *v209 = 0;
              v203 = 0u;
              memset(v202, 0, sizeof(v202));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v214[0]) = 136315906;
              *(v214 + 4) = "operator[]";
              WORD6(v214[0]) = 1024;
              *(v214 + 14) = 789;
              WORD1(v214[1]) = 2048;
              *(&v214[1] + 4) = v12;
              WORD6(v214[1]) = 2048;
              *(&v214[1] + 14) = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_340:
              *v209 = 0;
              v203 = 0u;
              memset(v202, 0, sizeof(v202));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v211 = 136315906;
              *&v211[4] = "operator[]";
              *&v211[12] = 1024;
              *&v211[14] = 789;
              *&v211[18] = 2048;
              *&v211[20] = v10;
              *&v211[28] = 2048;
              *&v211[30] = v27;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_341;
            }
          }

          else
          {
            v116 = *(&v202[1] + 8);
            memset(&v202[1] + 8, 0, 32);
            v117 = *(&v202[2] + 1);
            v118 = *&v202[3];
            *this = 0;
            *(this + 1) = *(v202 + 8);
            *(this + 2) = v116;
            *(this + 6) = v117;
            *(this + 7) = v118;
          }

          v115 = *(&v202[1] + 1);
          if (*(&v202[1] + 1) && (v202[2] & 1) != 0)
          {
            v115 = (*(**(&v202[1] + 1) + 40))();
          }

          goto LABEL_247;
        }

LABEL_128:
        if (v66)
        {
          v69 = 0;
          v70 = a2[9].i64[0];
          v27 = *&v214[1];
          v71 = *&v214[2];
          do
          {
            if (v70 && *(v70 + 40) > v69)
            {
              v10 = *(*(v70 + 48) + 4 * v69);
              v72 = v10 != -1 && v20 > v10;
              if (v72)
              {
                if (v27 <= v10)
                {
                  goto LABEL_340;
                }

                *(v71 + 56 * v10 + 48) = v69;
              }
            }

            ++v69;
          }

          while (v66 != v69);
        }

        else
        {
          v27 = *&v214[1];
        }

        v73 = v214[0];
        memset(v214, 0, 24);
        v74 = *&v214[2];
        *&v214[2] = 0;
        ++DWORD2(v214[1]);
        LOBYTE(v202[0]) = 1;
        *(v202 + 8) = v73;
        *(&v202[1] + 1) = v27;
        memset(v211, 0, 24);
        *(&v202[2] + 1) = v74;
        *&v211[32] = 0;
        *&v211[24] = 2;
        LODWORD(v202[2]) = 1;
      }

      else
      {
        *&v214[2] = 0;
        memset(v214, 0, 24);
        DWORD2(v214[1]) = 1;
        LOBYTE(v202[0]) = 1;
        memset(v211, 0, 24);
        memset(v202 + 8, 0, 24);
        *(&v202[2] + 1) = 0;
        *&v211[32] = 0;
        *&v211[24] = 2;
        LODWORD(v202[2]) = 1;
      }

      re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v211);
      goto LABEL_153;
    }

    v12 = *(v28 + 16) + 88 * v27;
    v29 = *v12;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v195, v12 + 48);
    v197 = *(v12 + 80);
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v195, v211);
    if ((v211[0] & 1) == 0)
    {
      goto LABEL_105;
    }

    v193 = 0uLL;
    v194 = 0;
    if (v29)
    {
      v31 = *&v211[8];
      v32 = *&v211[16];
      v12 = *&v211[16] >> 2;
      if (v32 >= 4)
      {
        v34 = 0;
        v35 = *(&v193 + 1);
        v36 = (v194 + 4);
        while (v35 != v34)
        {
          v37 = *(v31 + 4 * v34);
          *(v36 - 1) = v37 >> 22;
          *v36 = (v37 & 0x3FFFFF) * 0.00000023842;
          v36 += 2;
          if (v12 == ++v34)
          {
            goto LABEL_46;
          }
        }

        *v213 = 0;
        v203 = 0u;
        memset(v202, 0, sizeof(v202));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v214[0]) = 136315906;
        *(v214 + 4) = "operator[]";
        WORD6(v214[0]) = 1024;
        *(v214 + 14) = 468;
        WORD1(v214[1]) = 2048;
        *(&v214[1] + 4) = v35;
        WORD6(v214[1]) = 2048;
        *(&v214[1] + 14) = v35;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_281;
      }
    }

    else
    {
      *&v202[0] = *&v211[8];
      *(&v202[0] + 1) = *&v211[16] >> 3;
      v33 = re::FixedArray<re::SkinningInfluence>::operator=(&v193, v202);
    }

LABEL_46:
    v38 = a2[14].i64[0];
    if (v38)
    {
      if (*(v38 + 8) > v27)
      {
        break;
      }
    }

    v191 = 0uLL;
    v192 = 0;
LABEL_55:
    re::SkinningModelUtil::skinnedEndIndicesBuffer(&a2[9], v27, v214);
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v214, v202);
    v48 = LOBYTE(v202[0]);
    if (v202[0])
    {
      v49 = 0;
      v12 = *&v202[1] >> 2;
      v190[0] = *(&v202[0] + 1);
      v190[1] = (*&v202[1] >> 2);
      memset(v213, 0, 24);
      if (*&v202[1] >= 4uLL)
      {
        re::FixedArray<int>::copy(v213, v190);
        v49 = *v213;
      }

      v50 = v191;
      if (v191 && v191 != v49)
      {
        goto LABEL_338;
      }

      v51 = *(&v191 + 1);
      v52 = v192;
      *&v191 = v49;
      *(&v191 + 1) = *&v213[8];
      *v213 = v50;
      *&v213[8] = v51;
      v192 = *&v213[16];
      *&v213[16] = v52;
      if (v50 && v51)
      {
        (*(*v50 + 40))(v50);
      }
    }

    else
    {
      v209[0] = 0;
      *&v209[8] = 100;
      *&v209[16] = re::AssetErrorCategory(void)::instance;
      *&v209[24] = *v213;
      v210 = *&v213[16];
    }

    if (LOBYTE(v202[0]) == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v202 + 8));
    }

    else if (*(&v202[1] + 1) && (v202[2] & 1) != 0)
    {
      (*(**(&v202[1] + 1) + 40))();
    }

    if (DWORD2(v214[1]) != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[DWORD2(v214[1])])(v202, v214);
    }

    if (!v48)
    {
      if (v191 && *(&v191 + 1))
      {
        (*(*v191 + 40))();
      }

      if (v193 && *(&v193 + 1))
      {
        (*(*v193 + 40))();
      }

      goto LABEL_106;
    }

LABEL_72:
    v53 = a2[14].i64[0];
    if (v53 && *(v53 + 8) > v27)
    {
      v54 = *(*(v53 + 16) + 88 * v27 + 4);
    }

    else
    {
      v54 = -1;
    }

    LODWORD(v202[0]) = v54;
    *(v202 + 8) = v193;
    v55 = v194;
    v194 = 0;
    v193 = 0uLL;
    *(&v202[1] + 1) = v55;
    v202[2] = v191;
    v191 = 0uLL;
    v202[3] = v192;
    v192 = 0;
    v203 = 0uLL;
    v12 = a2[3].u64[1];
    if (v12 <= v27)
    {
      v190[0] = 0;
      memset(v214, 0, sizeof(v214));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v213 = 136315906;
      *&v213[4] = "operator[]";
      *&v213[12] = 1024;
      *&v213[14] = 476;
      *&v213[18] = 2048;
      *&v213[20] = v27;
      *&v213[28] = 2048;
      *&v213[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_335:
      v198 = 0;
      v203 = 0u;
      memset(v202, 0, sizeof(v202));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v209 = 136315906;
      *&v209[4] = "operator[]";
      *&v209[12] = 1024;
      *&v209[14] = 789;
      *&v209[18] = 2048;
      *&v209[20] = v27;
      *&v209[28] = 2048;
      *&v209[30] = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_336:
      *v209 = 0;
      v203 = 0u;
      memset(v202, 0, sizeof(v202));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v214[0]) = 136315906;
      *(v214 + 4) = "operator[]";
      WORD6(v214[0]) = 1024;
      *(v214 + 14) = 789;
      WORD1(v214[1]) = 2048;
      *(&v214[1] + 4) = v20;
      WORD6(v214[1]) = 2048;
      *(&v214[1] + 14) = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_337;
    }

    v56 = (a2[4].i64[0] + 544 * v27);
    v57 = v56[25];
    v59 = v56[22];
    v58 = v56[23];
    v206 = v56[24];
    v207 = v57;
    v204 = v59;
    v205 = v58;
    v60 = re::DynamicArray<re::MeshAssetSkinningData>::add(&v198, v202);
    if (*(&v202[3] + 1))
    {
      if (v203)
      {
        (*(**(&v202[3] + 1) + 40))(v60);
        v203 = 0uLL;
      }

      *(&v202[3] + 1) = 0;
    }

    if (*&v202[2])
    {
      if (*(&v202[2] + 1))
      {
        (*(**&v202[2] + 40))(v60);
        *(&v202[2] + 1) = 0;
        *&v202[3] = 0;
      }

      *&v202[2] = 0;
    }

    if (*(&v202[0] + 1) && *&v202[1])
    {
      (*(**(&v202[0] + 1) + 40))(v60);
    }

    if (v191 && *(&v191 + 1))
    {
      (*(*v191 + 40))(v60);
    }

    if (v193 && *(&v193 + 1))
    {
      (*(*v193 + 40))(v60);
    }

    if (v211[0] == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v211[8]);
    }

    else if (*&v211[24] && (v211[32] & 1) != 0)
    {
      (*(**&v211[24] + 40))(v60);
    }

    if (v196 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v196])(v202, v195);
    }

    if (++v27 == v20)
    {
      v26 = v198;
      v24 = v199;
      v23 = v201;
      v25 = v200 + 1;
      goto LABEL_103;
    }
  }

  v39 = *(*(v38 + 16) + 88 * v27 + 1);
  v191 = 0uLL;
  v192 = 0;
  if (!v39)
  {
    goto LABEL_55;
  }

  v40 = *(&v193 + 1);
  v41 = *(&v193 + 1) / v39;
  if (v40 < v39)
  {
    goto LABEL_72;
  }

  v42 = 0;
  v43 = *(&v191 + 1);
  v44 = v192;
  v45 = v39;
  while (v43 != v42)
  {
    *(v44 + 4 * v42) = v45;
    v45 += v39;
    if (++v42 >= v41)
    {
      goto LABEL_72;
    }
  }

  *v213 = 0;
  v203 = 0u;
  memset(v202, 0, sizeof(v202));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  LODWORD(v214[0]) = 136315906;
  *(v214 + 4) = "operator[]";
  WORD6(v214[0]) = 1024;
  *(v214 + 14) = 468;
  WORD1(v214[1]) = 2048;
  *(&v214[1] + 4) = v43;
  WORD6(v214[1]) = 2048;
  *(&v214[1] + 14) = v43;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_316:
  v27 = *&v214[1];
LABEL_317:
  v153 = v214[0];
  memset(v214, 0, 24);
  v154 = *&v214[2];
  *&v214[2] = 0;
  ++DWORD2(v214[1]);
  v211[0] = 1;
  *&v211[8] = v153;
  *&v211[24] = v27;
  memset(v202, 0, 24);
  *&v212 = v154;
  *&v202[2] = 0;
  DWORD2(v202[1]) = 2;
  *&v211[32] = 1;
LABEL_318:
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v202);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v214);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v185[8], &v211[8]);
  if (v211[0])
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v211[8]);
    goto LABEL_327;
  }

  v150 = 1;
LABEL_321:
  if (*&v211[24])
  {
    if (v211[32])
    {
      (*(**&v211[24] + 40))(*&v211[24], v212);
    }

    if (v150)
    {
LABEL_327:
      if (v202[0])
      {
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v187 + 8, v202 + 8);
        re::Result<re::DynamicArray<re::MeshAssetJiggleDeformerData>,re::DetailedError>::~Result(v202);
        v165 = v202[0];
        v166 = v202[1];
        v167 = v202[2];
        v168 = v202[3];
        re::MeshAssetModel::MeshAssetModel(v202, &v161);
        *this = 1;
        re::MeshAssetModel::MeshAssetModel(this + 16, v202);
        re::types::Ok<re::MeshAssetModel>::~Ok(v202);
      }

      else
      {
        v155 = *(&v202[1] + 8);
        memset(&v202[1] + 8, 0, 32);
        v156 = *(&v202[2] + 1);
        v157 = *&v202[3];
        *this = 0;
        *(this + 1) = *(v202 + 8);
        *(this + 2) = v155;
        *(this + 6) = v156;
        *(this + 7) = v157;
        re::Result<re::DynamicArray<re::MeshAssetJiggleDeformerData>,re::DetailedError>::~Result(v202);
      }
    }
  }

  else if (v150)
  {
    goto LABEL_327;
  }

LABEL_330:
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v187 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v185[8]);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v183 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v181[8]);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v179 + 8);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(&v176 + 8);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(v174 + 8);
  re::DynamicArray<re::MeshAssetPart>::deinit(&v171 + 8);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v169[2] + 8);
  v158 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v169);
  if (v161)
  {
    if (v161)
    {
    }
  }
}

void *re::MeshAssetLoader::downgradeMeshAssetFromFall2021@<X0>(void *this@<X0>, _BYTE *a2@<X8>)
{
  if (this)
  {
    v5 = this;
    v6 = this[4];
    if (v6)
    {
      v7 = 0;
      v8 = 232;
      do
      {
        if (v5[4] <= v7)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        this = re::DynamicArray<re::MeshAssetSkeleton>::operator=(v5[6] + v8, v5 + 12);
        ++v7;
        v8 += 512;
      }

      while (v6 != v7);
    }
  }

  *a2 = 1;
  return this;
}

uint64_t re::DynamicArray<re::MeshAssetSkeleton>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetSkeleton>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 112 * v6;
          do
          {
            re::FixedArray<CoreIKTransform>::deinit(v7 + 11);
            re::FixedArray<CoreIKTransform>::deinit(v7 + 8);
            re::FixedArray<CoreIKTransform>::deinit(v7 + 5);
            re::FixedArray<re::StringID>::deinit(v7 + 2);
            re::StringID::destroyString(v7);
            v7 += 14;
            v8 -= 112;
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
      re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetSkeleton>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::MeshAssetLoader::assetNonIntrospectionNonSharedDataByteSize(re::MeshAssetLoader *this, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = 4 * a2[29] + 8 * a2[75] + 8 * a2[70] + 1272;
  v4 = a2[79];
  if (v4)
  {
    v64 = a2[76];
    if (v64)
    {
      v5 = 0;
      v62 = a2[79];
      do
      {
        if (v2[76] <= v5)
        {
          goto LABEL_64;
        }

        v6 = re::DataArray<re::MeshModel>::get(v4 + 8, *(v2[78] + 8 * v5));
        v8 = v6;
        v65 = v5;
        if (*v6)
        {
          v9 = strlen(*(v6 + 8)) + 1;
        }

        else
        {
          v9 = 0;
        }

        v66 = v3;
        v10 = v8[7];
        if (v10)
        {
          v11 = 0;
          v12 = v8[8];
          do
          {
            v13 = v12 + 544 * v11;
            v14 = v13;
            do
            {
              v15 = v14[3];
              v14 = *v14;
              if (v14)
              {
                v16 = v15 == 0;
              }

              else
              {
                v16 = 0;
              }
            }

            while (v16);
            v17 = (v12 + 544 * v11);
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17 && !v18[15]);
            v19 = v18[7] + v15 + (v18[7] >> 4);
            v20 = (v12 + 544 * v11);
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20 && !v21[15]);
            v22 = 24 * v21[14];
            v23 = (v12 + 544 * v11);
            do
            {
              v24 = v23[15];
              v23 = *v23;
              if (v23)
              {
                v25 = v24 == 0;
              }

              else
              {
                v25 = 0;
              }
            }

            while (v25);
            v26 = (v12 + 544 * v11);
            do
            {
              v27 = v26[15];
              v26 = *v26;
              if (v26)
              {
                v28 = v27 == 0;
              }

              else
              {
                v28 = 0;
              }
            }

            while (v28);
            v29 = (v27 & 7) != 0;
            if (*(v13 + 488))
            {
              v30 = strlen(*(v13 + 496)) + 1;
            }

            else
            {
              v30 = 0;
            }

            v31 = (v24 + 8 * v29) & 0xFFFFFFFFFFFFFFF8;
            v32 = *(v13 + 336);
            v33 = v22 + v31 + v30 + 16 * (v19 + v32) + 544;
            if (v32)
            {
              v34 = (*(v13 + 344) + 8);
              do
              {
                if (*(v34 - 1))
                {
                  v35 = strlen(*v34) + 1;
                }

                else
                {
                  v35 = 0;
                }

                v33 += v35;
                v34 += 2;
                --v32;
              }

              while (v32);
            }

            v9 += v33;
            ++v11;
          }

          while (v11 != v10);
        }

        v37 = re::BlendShapeModelUtil::computeBlendShapeModelSizeExcludingMetalBuffers((v8 + 18), v7);
        v38 = v8[28];
        if (v38)
        {
          v39 = 40 * *(v38 + 32) + 88 * *(v38 + 8) + 48;
        }

        else
        {
          v39 = 0;
        }

        v40 = re::ContactDeformerModelUtil::computeContactModelSizeExcludingMetalBuffers((v8 + 18), v36);
        v42 = re::SmoothDeformerModelUtil::computeSmoothDeformerModelSizeExcludingMetalBuffers((v8 + 18), v41);
        v44 = re::WrapDeformerModelUtil::computeWrapDeformerModelSizeExcludingMetalBuffers((v8 + 18), v43);
        v46 = re::OffsetsDeformerModelUtil::computeOffsetsDeformerModelSizeExcludingMetalBuffers((v8 + 18), v45);
        v3 = v66 + v9 + v37 + v39 + v40 + v42 + v44 + v46 + re::JiggleDeformerModelUtil::computeJiggleDeformerModelSizeExcludingMetalBuffers((v8 + 18), v47) + 8;
        v5 = v65 + 1;
        v4 = v62;
        v2 = a2;
      }

      while (v65 + 1 != v64);
      v4 = a2[79];
    }

    v48 = v2[71];
    if (v48)
    {
      v49 = 0;
      while (v2[71] > v49)
      {
        v50 = re::DataArray<re::MeshInstance>::get(v4 + 72, *(v2[73] + 8 * v49));
        v51 = v50;
        if (*v50)
        {
          v52 = strlen(*(v50 + 8)) + 1;
        }

        else
        {
          v52 = 0;
        }

        v3 += 144 + v52 + 4 * *(v51 + 104) + 8 * *(v51 + 128);
        if (v48 == ++v49)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_65;
    }
  }

LABEL_54:
  v53 = 24 * v2[34];
  v54 = v2[43];
  if (v54)
  {
    v55 = [v54 estimatePayloadContainerOverheadSize];
  }

  else
  {
    v55 = 0;
  }

  v57 = v2[29];
  v58 = v3 + v53 + v55 + 4 * v57 + re::MeshNameMap::estimateFootprint((v2 + 80)) + 96 * v2[137] + 8 * (v2[140] + v2[134]) + 32 * (v2[146] + v2[143]) - 424;
  v59 = v2[156];
  if (v59)
  {
    v60 = 0;
    v61 = 0;
    while (v2[156] > v61)
    {
      v58 += re::Skeleton::estimatedFootprint((v2[157] + v60));
      ++v61;
      v60 += 184;
      if (v59 == v61)
      {
        return v58 + 864 * v2[39];
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_65:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v58 + 864 * v2[39];
}

uint64_t re::MeshAsset::makeMeshAssetDataByCombiningPartsWithSharedMaterial(re::MeshAsset *this, const re::MeshAsset *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v416 = *MEMORY[0x1E69E9840];
  memset(v338, 0, sizeof(v338));
  v339 = 0;
  v347 = 0;
  v348 = 0;
  v351 = 0;
  memset(v349, 0, sizeof(v349));
  v350 = 0;
  memset(v340, 0, sizeof(v340));
  v341 = 0;
  memset(v342, 0, sizeof(v342));
  v343 = 0;
  v346 = 0;
  v344 = 0u;
  v345 = 0u;
  if (v2[1264] == 1)
  {
    re::MeshAsset::makeMeshAssetDataFromRegisteredMeshAsset(&v357, v2);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v338, &v357);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v340[8], &v359 + 8);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v342[8], v362);
    re::DynamicArray<re::RigComponentConstraint>::operator=(&v344 + 8, v363);
    v348 = v366;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v349, v367);
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v367);
    if (v363[0])
    {
      if (v365)
      {
        (*(*v363[0] + 40))();
      }

      v365 = 0;
      memset(v363, 0, sizeof(v363));
      ++v364;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v362);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v359 + 8);
    v2 = re::DynamicArray<re::MeshAssetModel>::deinit(&v357);
    v5 = v338;
  }

  else
  {
    v5 = v2 + 16;
  }

  v6 = *(v5 + 2);
  if (!v6)
  {
    v66 = v357;
    v67 = v358;
    *v4 = 0;
    *(v4 + 8) = 100;
    *(v4 + 16) = re::AssetErrorCategory(void)::instance;
    *(v4 + 24) = v66;
    *(v4 + 40) = v67;
    goto LABEL_455;
  }

  v310 = v4;
  v7 = &v368;
  v368 = 0;
  v369 = 0;
  v370 = 1;
  v371 = 0;
  v372 = 0;
  v8 = re::DynamicOverflowArray<unsigned int,128ul>::setCapacity(&v368, v6);
  v9 = v370;
  v370 += 2;
  v10 = (v9 & 1) == 0;
  v11 = 128;
  if (v10)
  {
    v11 = v371;
  }

  if (v11 < v6)
  {
    v8 = re::DynamicOverflowArray<unsigned int,128ul>::setCapacity(&v368, v6);
  }

  v12 = &v371;
  v13 = v369;
  if (v369 < v6)
  {
    do
    {
      if (v370)
      {
        v14 = &v371;
      }

      else
      {
        v14 = v372;
      }

      *(v14 + v13) = 0;
      v13 = (v13 + 1);
    }

    while (v6 != v13);
  }

  v369 = v6;
  v370 += 2;
  v15 = *(v5 + 2);
  v333 = 0;
  v334 = 0;
  v335 = 1;
  v336 = 0;
  v337 = 0;
  v322 = v5;
  if (v15)
  {
    v8 = re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul>::setCapacity(&v333, v15);
    v16 = v335;
    v335 += 2;
    v10 = (v16 & 1) == 0;
    v17 = 128;
    if (v10)
    {
      v17 = v336;
    }

    if (v17 < v15)
    {
      v8 = re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul>::setCapacity(&v333, v15);
    }

    v18 = v15 - v334;
    if (v15 > v334)
    {
      v19 = 67 * v334;
      do
      {
        if (v335)
        {
          v20 = &v336;
        }

        else
        {
          v20 = v337;
        }

        v21 = &v20[v19];
        *v21 = 0;
        v21[1] = 0;
        *(v21 + 4) = 1;
        v21[3] = 0;
        v21[4] = 0;
        v19 += 67;
        --v18;
      }

      while (v18);
    }

    v334 = v15;
    v335 += 2;
    v22 = v355;
    v23 = 0;
    if (*(v5 + 2))
    {
      v24 = 0;
      while (1)
      {
        v25 = v334;
        if (v334 <= v24)
        {
          goto LABEL_468;
        }

        v26 = (v322[4] + (v24 << 9));
        v27 = v337;
        if (v335)
        {
          v27 = &v336;
        }

        v28 = &v27[67 * v24];
        v29 = v26[26];
        v30 = v28[1];
        if (v30 >= v29)
        {
          if (v30 <= v29)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        if (*v28)
        {
          if (v28[2])
          {
            goto LABEL_41;
          }
        }

        else
        {
          v8 = re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(v28, v29);
          v22 = v355;
          v32 = *(v28 + 4) + 2;
          *(v28 + 4) = v32;
          if (v32)
          {
LABEL_41:
            v31 = 64;
            goto LABEL_42;
          }
        }

        v31 = v28[3];
LABEL_42:
        if (v31 < v29)
        {
          v8 = re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(v28, v29);
          v22 = v355;
        }

        v33 = v28[1];
        if (v33 < v29)
        {
          do
          {
            v34 = v28 + 3;
            if ((v28[2] & 1) == 0)
            {
              v34 = v28[4];
            }

            v34[v33++] = 0;
          }

          while (v29 != v33);
        }

LABEL_48:
        v28[1] = v29;
        *(v28 + 4) += 2;
LABEL_49:
        v12 = &v371;
        if (v26[16] || v26[21] || v26[36] || v26[41] || v26[46] || v26[51] || v26[56] || v26[61])
        {
          goto LABEL_57;
        }

        v37 = v26[26];
        if (v37)
        {
          v38 = (v26[28] + 64);
          v39 = v37 << 8;
          while (!*v38)
          {
            v38 += 64;
            v39 -= 256;
            if (!v39)
            {
              goto LABEL_68;
            }
          }

LABEL_57:
          v25 = v369;
          if (v369 <= v24)
          {
            goto LABEL_469;
          }

          v23 = (v23 + 1);
          if (v370)
          {
            v35 = &v371;
          }

          else
          {
            v35 = v372;
          }

          *(v35 + v24) = v23;
          v36 = v322[2];
          goto LABEL_62;
        }

LABEL_68:
        v317 = v23;
        v8 = re::DynamicOverflowArray<unsigned int,128ul>::operator[](&v368, v24);
        *v8 = 0;
        v36 = v322[2];
        if (v36 <= v24)
        {
          goto LABEL_498;
        }

        v40 = v322[4];
        v22 = v355;
        v23 = v23;
        if (*(v40 + (v24 << 9) + 208))
        {
          v41 = 0;
          while (1)
          {
            v42 = *(v40 + (v24 << 9) + 224) + (v41 << 8);
            v43 = *(v42 + 44);
            v8 = re::MeshPartFlags::flattenToRenderFlags((v42 + 192));
            v44 = *(v42 + 232);
            if (v44)
            {
              v45 = 0;
              v46 = *(v42 + 216);
              while (1)
              {
                v47 = *v46;
                v46 += 20;
                if (v47 < 0)
                {
                  break;
                }

                if (v44 == ++v45)
                {
                  LODWORD(v45) = *(v42 + 232);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v45) = 0;
            }

            v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v43) ^ ((0xBF58476D1CE4E5B9 * v43) >> 27));
            v49 = 0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30));
            v50 = (((v48 ^ (v48 >> 31)) << 6) - 0x61C8864680B583E9 + ((v48 ^ (v48 >> 31)) >> 2) + ((0x94D049BB133111EBLL * (v49 ^ (v49 >> 27))) ^ ((0x94D049BB133111EBLL * (v49 ^ (v49 >> 27))) >> 31))) ^ v48 ^ (v48 >> 31);
            if (v45 != v44)
            {
              v51 = *(v42 + 216);
              do
              {
                v8 = re::Hash<re::DynamicString>::operator()(&v357, v51 + 80 * v45 + 8);
                v50 ^= (v50 << 6) - 0x61C8864680B583E9 + (v50 >> 2) + v8;
                if (*(v42 + 232) <= (v45 + 1))
                {
                  v52 = v45 + 1;
                }

                else
                {
                  v52 = *(v42 + 232);
                }

                v51 = *(v42 + 216);
                while (v52 - 1 != v45)
                {
                  LODWORD(v45) = v45 + 1;
                  if ((*(v51 + 80 * v45) & 0x80000000) != 0)
                  {
                    goto LABEL_87;
                  }
                }

                LODWORD(v45) = v52;
LABEL_87:
                ;
              }

              while (v45 != v44);
            }

            v53 = *(v42 + 16);
            if (v53)
            {
              v54 = *(v42 + 32);
              v55 = v54 + 80 * v53;
              v7 = &v368;
              do
              {
                if (*(v54 + 8))
                {
                  v56 = *(v54 + 16);
                }

                else
                {
                  v56 = (v54 + 9);
                }

                v8 = strncmp(v56, "original", 8uLL);
                if (v8)
                {
                  {
                    v57 = *(v54 + 48);
                    if (v57)
                    {
                      v58 = *(v54 + 64);
                      do
                      {
                        v59 = *v58++;
                        v60 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v59) ^ ((0xBF58476D1CE4E5B9 * v59) >> 27));
                        v50 ^= (v50 << 6) - 0x61C8864680B583E9 + (v50 >> 2) + (v60 ^ (v60 >> 31));
                        --v57;
                      }

                      while (v57);
                    }
                  }

                  v8 = re::Hash<re::DynamicString>::operator()(&v357, v54);
                  v61 = ((v50 << 6) - 0x61C8864680B583E9 + (v50 >> 2) + v8) ^ v50;
                  v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v54 + 72)) ^ ((0xBF58476D1CE4E5B9 * *(v54 + 72)) >> 27));
                  v50 = ((v61 << 6) - 0x61C8864680B583E9 + (v61 >> 2) + (v62 ^ (v62 >> 31))) ^ v61;
                }

                v54 += 80;
              }

              while (v54 != v55);
            }

            else
            {
              v7 = &v368;
            }

            v36 = v334;
            if (v334 <= v24)
            {
              goto LABEL_499;
            }

            v63 = v337;
            if (v335)
            {
              v63 = &v336;
            }

            v64 = &v63[67 * v24];
            v36 = v64[1];
            v22 = v355;
            v12 = &v371;
            v23 = v317;
            if (v36 <= v41)
            {
              break;
            }

            if (v64[2])
            {
              v65 = v64 + 3;
            }

            else
            {
              v65 = v64[4];
            }

            v65[v41] = v50;
            v36 = v322[2];
            if (v36 <= v24)
            {
              goto LABEL_498;
            }

            ++v41;
            v40 = v322[4];
            if (v41 >= *(v40 + (v24 << 9) + 208))
            {
              goto LABEL_62;
            }
          }

LABEL_500:
          v225 = v373;
          *&v385[0] = 0;
          v22[9] = 0u;
          v22[10] = 0u;
          v22[7] = 0u;
          v22[8] = 0u;
          v22[6] = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v373 = 136315906;
          *&v373[4] = "operator[]";
          *&v373[12] = 1024;
          *&v373[14] = 858;
          *&v373[18] = 2048;
          *&v373[20] = v41;
          *&v373[28] = 2048;
          *&v373[30] = v36;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_501:
          v12 = -1;
LABEL_502:
          v354 = 0;
          v414 = 0u;
          v415 = 0u;
          memset(v413, 0, sizeof(v413));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v406 = 136315906;
          *&v406[4] = "operator[]";
          v407 = 1024;
          v408 = 797;
          v409 = 2048;
          v410 = v12;
          v411 = 2048;
          v412 = v225;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_503:
          re::internal::assertLog(4, v128, "assertion failure: '%s' (%s:line %i) ", "combinedPartCount + nonCombinedCount == partTotal", "combineParts", 3671);
          _os_crash();
          __break(1u);
LABEL_504:
          re::internal::assertLog(4, v230, "assertion failure: '%s' (%s:line %i) Unsupported index type.", "false", "copyAndOffsetTriangleIndices", 3505);
          _os_crash();
          __break(1u);
        }

LABEL_62:
        if (++v24 >= v36)
        {
          goto LABEL_115;
        }
      }
    }

    v36 = 0;
  }

  else
  {
    LODWORD(v23) = 0;
    v36 = 0;
  }

LABEL_115:
  if (v36 != v23)
  {
    v318 = v23;
    v357 = 0uLL;
    LODWORD(v358) = 1;
    v359 = 0uLL;
    v70 = v322;
    v71 = v322[7];
    if (!v71)
    {
      goto LABEL_430;
    }

    v72 = 0;
    v23 = 0;
    v36 = v322[9];
    v73 = v36 + 96 * v71;
    v320 = v73;
    do
    {
      v74 = *(v36 + 80);
      v75 = v369;
      if (v369 <= v74)
      {
        goto LABEL_470;
      }

      v76 = v372;
      if (v370)
      {
        v76 = &v371;
      }

      if (!*(v76 + v74))
      {
        var0 = v70[2];
        if (var0 <= v74)
        {
          goto LABEL_478;
        }

        v7 = (v70[4] + (v74 << 9));
        v78 = v7[26];
        v72 += v78;
        if (v78)
        {
          v323 = *(v36 + 80);
          v312 = v72;
          v79 = 0;
          while (1)
          {
            v24 = *(&v357 + 1);
            v80 = &v7[28][32 * v79];
            v82 = *(v80 + 28);
            v12 = (v80 + 7);
            v81 = v82;
            if (*(&v357 + 1) <= v82)
            {
              v24 = v81 + 1;
              if (v357)
              {
                v83 = v358;
              }

              else
              {
                v70 = v322;
                v83 = v358 + 2;
                LODWORD(v358) = v358 + 2;
              }

              v10 = (v83 & 1) == 0;
              v84 = 64;
              if (v10)
              {
                v84 = v359;
              }

              if (v84 <= v81)
              {
              }

              if (*(&v357 + 1) <= v81)
              {
                v85 = v81 - *(&v357 + 1) + 1;
                v86 = 322 * *(&v357 + 1);
                do
                {
                  if (v358)
                  {
                    v87 = &v359;
                  }

                  else
                  {
                    v87 = *(&v359 + 1);
                  }

                  v88 = &v87[v86];
                  *v88 = 0;
                  *(v88 + 1) = 0;
                  *(v88 + 4) = 1;
                  *(v88 + 4) = 0;
                  *(v88 + 5) = 0;
                  v86 += 322;
                  --v85;
                }

                while (v85);
              }

              *(&v357 + 1) = v81 + 1;
              LODWORD(v358) = v358 + 2;
              v81 = *v12;
            }

            if (v24 <= v81)
            {
              *&v355[0].var0 = 0;
              memset(v373, 0, 80);
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 858;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v81;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = v24;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_461:
              *&v355[0].var0 = 0;
              memset(v373, 0, 80);
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 858;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v24;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = v81;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_462:
              v354 = 0;
              v414 = 0u;
              v415 = 0u;
              memset(v413, 0, sizeof(v413));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v406 = 136315906;
              *&v406[4] = "operator[]";
              v407 = 1024;
              v408 = 797;
              v409 = 2048;
              v410 = v24;
              v411 = 2048;
              v412 = v81;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_463:
              var0 = v338;
              v354 = 0;
              v414 = 0u;
              v415 = 0u;
              memset(v413, 0, sizeof(v413));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v406 = 136315906;
              *&v406[4] = "operator[]";
              v407 = 1024;
              v408 = 797;
              v409 = 2048;
              v410 = v24;
              v411 = 2048;
              v412 = v81;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_464;
            }

            if (v358)
            {
              v89 = &v359;
            }

            else
            {
              v89 = *(&v359 + 1);
            }

            v90 = &v89[322 * v81];
            *&v373[8] = *(v36 + 16);
            *&v373[24] = *(v36 + 32);
            *&v373[40] = *(v36 + 48);
            *&v373[56] = *(v36 + 64);
            if (*v90)
            {
              v91 = *(v90 + 1);
              v92 = *(v90 + 4);
              if ((v92 & 1) == 0)
              {
                v93 = *(v90 + 4);
                v95 = v91 >= v93;
                v94 = v91 + 1;
                v95 = !v95 || v93 >= v94;
                if (v95)
                {
                  goto LABEL_159;
                }

                v96 = 2 * v93;
                goto LABEL_155;
              }

              if (v91 - 64 < 0xFFFFFFFFFFFFFFBFLL)
              {
                v94 = v91 + 1;
                v96 = 128;
LABEL_155:
                if (v96 <= v94)
                {
                  v98 = v94;
                }

                else
                {
                  v98 = v96;
                }

                v92 = *(v90 + 4);
              }
            }

            else
            {
              v97 = *(v90 + 1);
              v92 = *(v90 + 4) + 2;
              *(v90 + 4) = v92;
            }

LABEL_159:
            if (v92)
            {
              v99 = v90 + 2;
            }

            else
            {
              v99 = *(v90 + 5);
            }

            v100 = &v99[5 * *(v90 + 1)];
            *v100 = v323;
            *(v100 + 1) = v79;
            v102 = *&v373[32];
            v101 = *&v373[48];
            v103 = *&v373[64];
            *(v100 + 24) = *&v373[16];
            *(v100 + 9) = v103;
            *(v100 + 56) = v101;
            *(v100 + 40) = v102;
            *(v100 + 8) = *v373;
            ++*(v90 + 1);
            *(v90 + 4) += 2;
            if (v23)
            {
              v23 = 1;
            }

            else
            {
              v24 = *v12;
              v81 = *(&v357 + 1);
              if (*(&v357 + 1) <= v24)
              {
                goto LABEL_461;
              }

              v104 = *(&v359 + 1);
              if (v358)
              {
                v104 = &v359;
              }

              v23 = *(&v104[322 * *v12] + 1) > 1uLL;
            }

            if (++v79 >= v7[26])
            {
              v72 = v312;
              v73 = v320;
              v12 = &v371;
              break;
            }
          }
        }
      }

      v36 += 96;
    }

    while (v36 != v73);
    if (v23)
    {
      v313 = v72;
      v332 = 0;
      v330 = 0uLL;
      v329 = 0;
      v331 = 0;
      re::DynamicArray<re::MeshAssetModel>::resize(&v329, (v318 + 1));
      v105 = v70[7];
      v328 = 0;
      v326 = 0uLL;
      v327 = 0;
      re::DynamicArray<re::MeshAssetInstance>::setCapacity(&v325, v105);
      ++v327;
      v107 = v332;
      re::StringID::destroyString(v332);
      *v107 = 0x523B6FD560ALL;
      *(v107 + 1) = "combined";
      v307 = v107;
      *&v355[0].var0 = 0;
      v355[0].var1 = &str_67;
      v355[1] = xmmword_1E3047670;
      v355[2] = xmmword_1E3047680;
      v355[3] = xmmword_1E30476A0;
      v355[4] = xmmword_1E30474D0;
      v356 = 0;
      re::DynamicArray<re::MeshAssetInstance>::add(&v325, v355);
      v23 = v373;
      if (v318)
      {
        v109 = v70[2];
        if (v109)
        {
          var0 = 0;
          v110 = 472;
          do
          {
            v111 = v369;
            if (v369 <= var0)
            {
              goto LABEL_482;
            }

            if (v370)
            {
              v112 = *(&v371 + var0);
              if (v112)
              {
LABEL_180:
                v113 = *(&v330 + 1);
                if (*(&v330 + 1) <= v112)
                {
                  goto LABEL_484;
                }

                v114 = (v70[4] + v110);
                v36 = v332 + 512 * v112;
                re::StringID::operator=(v36, v114 - 59);
                v115 = *(v114 - 55);
                *(v36 + 16) = *(v114 - 57);
                *(v36 + 32) = v115;
                v116 = *(v114 - 53);
                v117 = *(v114 - 51);
                v118 = *(v114 - 47);
                *(v36 + 80) = *(v114 - 49);
                *(v36 + 96) = v118;
                *(v36 + 48) = v116;
                *(v36 + 64) = v117;
                re::DynamicArray<re::MeshAssetBlendShapeData>::operator=(v36 + 112, v114 - 45);
                re::DynamicArray<re::MeshAssetSkinningData>::operator=(v36 + 152, v114 - 40);
                re::DynamicArray<re::MeshAssetPart>::operator=(v36 + 192, v114 - 35);
                re::DynamicArray<re::MeshAssetSkeleton>::operator=(v36 + 232, v114 - 30);
                re::DynamicArray<re::MeshLodLevelInfo>::operator=(v36 + 272, v114 - 25);
                re::DynamicArray<re::MeshAssetContactDeformerData>::operator=(v36 + 312, v114 - 20);
                re::DynamicArray<re::MeshAssetSmoothDeformerData>::operator=(v36 + 352, v114 - 15);
                re::DynamicArray<re::MeshAssetWrapDeformerData>::operator=(v36 + 392, v114 - 10);
                re::DynamicArray<re::MeshAssetSmoothDeformerData>::operator=(v36 + 432, v114 - 5);
                re::DynamicArray<re::MeshAssetJiggleDeformerData>::operator=(v36 + 472, v114);
                v109 = v70[2];
              }
            }

            else
            {
              v112 = *(v372 + var0);
              if (v112)
              {
                goto LABEL_180;
              }
            }

            ++var0;
            v110 += 512;
          }

          while (var0 < v109);
        }

        v119 = v70[7];
        if (v119)
        {
          v113 = v70[9];
          v120 = 96 * v119;
          do
          {
            var0 = v113[5].var0;
            v36 = v369;
            if (v369 <= var0)
            {
              goto LABEL_483;
            }

            v121 = v372;
            if (v370)
            {
              v121 = &v371;
            }

            if (*(v121 + var0))
            {
              re::StringID::StringID(v373, v113);
              v122 = v113[1];
              v123 = v113[2];
              v124 = v113[4];
              *&v373[48] = v113[3];
              *&v373[64] = v124;
              *&v373[16] = v122;
              *&v373[32] = v123;
              v36 = v369;
              if (v369 <= var0)
              {
                goto LABEL_485;
              }

              if (v370)
              {
                v125 = &v371;
              }

              else
              {
                v125 = v372;
              }

              *&v373[80] = *(v125 + var0);
              re::DynamicArray<re::MeshAssetInstance>::add(&v325, v373);
              if (v373[0])
              {
                if (v373[0])
                {
                }
              }
            }

            v113 += 6;
            v120 -= 96;
          }

          while (v120);
        }
      }

      v127 = *(&v357 + 1);
      v128 = *(&v357 + 1) + 4;
      if (v307[12].i64[1] < (*(&v357 + 1) + 4))
      {
        re::DynamicArray<re::MeshAssetPart>::setCapacity(v307[12].i64, v128);
        v127 = *(&v357 + 1);
      }

      v129 = v313;
      if (v127)
      {
        v130 = 0;
        v304 = 0;
        v131 = 0;
        v132 = v358;
        v133.i64[0] = 0x7F0000007FLL;
        v133.i64[1] = 0x7F0000007FLL;
        v302 = vnegq_f32(v133);
        while (1)
        {
          if (v132)
          {
            v134 = &v359;
          }

          else
          {
            v134 = *(&v359 + 1);
          }

          v305 = v131;
          v135 = &v134[322 * v131];
          if (v135[1])
          {
            v136 = (v135 + 2);
          }

          else
          {
            v136 = *(v135 + 5);
          }

          v137 = *(v135 + 1);
          *v373 = &v333;
          v138 = 126 - 2 * __clz(v137);
          if (v137)
          {
            v139 = v138;
          }

          else
          {
            v139 = 0;
          }

          var0 = *(&v357 + 1);
          v140 = v305;
          if (*(&v357 + 1) <= v305)
          {
            goto LABEL_481;
          }

          v24 = 0;
          v141 = &v359 + 322 * v305;
          v128 = 536;
          while (1)
          {
            v132 = v358;
            if (v358)
            {
              v143 = *(v141 + 1);
              v142 = &v359;
            }

            else
            {
              v142 = *(&v359 + 1);
              v143 = *(*(&v359 + 1) + 5152 * v140 + 8);
            }

            if (v24 >= v143)
            {
              break;
            }

            v144 = &v142[322 * v140];
            var0 = *(v144 + 1);
            if (var0 <= v24)
            {
              goto LABEL_489;
            }

            if (v144[1])
            {
              v145 = v144 + 2;
            }

            else
            {
              v145 = *(v144 + 5);
            }

            v146 = &v145[5 * v24];
            v12 = v146->u32[0];
            var0 = v70[2];
            if (var0 <= v12)
            {
LABEL_490:
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 797;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v12;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = var0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_491:
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 797;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v36;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = var0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_492:
              v24 = v400;
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 866;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v12;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = var0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_493:
              v179 = v400;
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 866;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v36;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_494;
            }

            v147 = v70[4] + (v12 << 9);
            v36 = v146->u32[1];
            var0 = *(v147 + 208);
            if (var0 <= v36)
            {
              goto LABEL_491;
            }

            var0 = v334;
            if (v334 <= v12)
            {
              goto LABEL_492;
            }

            v148 = v337;
            if (v335)
            {
              v148 = &v336;
            }

            v149 = &v148[67 * v12];
            v12 = v149[1];
            if (v12 <= v36)
            {
              goto LABEL_493;
            }

            if (v149[2])
            {
              v150 = v149 + 3;
            }

            else
            {
              v150 = v149[4];
            }

            v306 = v130;
            v151 = *(v147 + 224) + (v36 << 8);
            v152 = v150[v36];
            v153 = v24 + 1;
            v316 = -1;
            v154 = 5 * v24;
            v155 = v24 + 1;
            if ((v358 & 1) == 0)
            {
LABEL_230:
              v156 = *(&v359 + 1);
              if (v155 < *(*(&v359 + 1) + 5152 * v140 + 8))
              {
                goto LABEL_233;
              }

LABEL_245:
              if (-v316 < 2)
              {
                goto LABEL_250;
              }

              if (v358)
              {
                v162 = &v359;
              }

              else
              {
                v162 = *(&v359 + 1);
              }

              goto LABEL_270;
            }

            while (1)
            {
              v156 = &v359;
              if (v155 >= *(v141 + 1))
              {
                break;
              }

LABEL_233:
              v157 = &v156[322 * v140];
              v36 = *(v157 + 1);
              if (v36 <= v155)
              {
                goto LABEL_472;
              }

              if (v157[1])
              {
                v158 = v157 + 2;
              }

              else
              {
                v158 = *(v157 + 5);
              }

              v159 = &v158[v154];
              v36 = LODWORD(v158[v154 + 5]);
              if (v334 <= v36)
              {
                goto LABEL_473;
              }

              v160 = &v148[67 * v36];
              v36 = *(v159 + 21);
              v12 = v160[1];
              if (v12 <= v36)
              {
                goto LABEL_474;
              }

              if (v160[2])
              {
                v161 = v160 + 3;
              }

              else
              {
                v161 = v160[4];
              }

              if (v152 != v161[v36])
              {
                goto LABEL_245;
              }

              ++v155;
              v154 += 5;
              --v316;
              if ((v358 & 1) == 0)
              {
                goto LABEL_230;
              }
            }

            v162 = &v359;
            if (-v316 == 1 || v316 == 0)
            {
LABEL_250:
              v163 = v307;
              v164 = v307[13].u64[0];
              if (v164 >= v307[12].i64[1])
              {
                re::DynamicArray<re::MeshAssetPart>::growCapacity(v307[12].i64, v164 + 1);
                v164 = v307[13].u64[0];
              }

              v36 = v307[14].i64[0] + (v164 << 8);
              re::DynamicArray<re::MeshAssetBuffer>::DynamicArray(v36, v151);
              v165 = *(v151 + 40);
              *(v36 + 52) = *(v151 + 52);
              *(v36 + 40) = v165;
              re::StringID::StringID((v36 + 72), (v151 + 72));
              v166 = *(v151 + 112);
              *(v36 + 96) = *(v151 + 96);
              *(v36 + 112) = v166;
              v167 = *(v151 + 128);
              v168 = *(v151 + 144);
              v169 = *(v151 + 176);
              *(v36 + 160) = *(v151 + 160);
              *(v36 + 176) = v169;
              *(v36 + 128) = v167;
              *(v36 + 144) = v168;
              v170 = *(v151 + 192);
              *(v36 + 192) = v170;
              if (v170 == 1)
              {
                *(v36 + 193) = *(v151 + 193);
              }

              v171 = *(v151 + 194);
              *(v36 + 194) = v171;
              if (v171 == 1)
              {
                *(v36 + 195) = *(v151 + 195);
              }

              v172 = *(v151 + 196);
              *(v36 + 196) = v172;
              if (v172 == 1)
              {
                *(v36 + 197) = *(v151 + 197);
              }

              v173 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v36 + 200, v151 + 200);
              ++v307[13].i64[0];
              ++v307[13].i32[2];
              v174 = *(v151 + 16);
              if (v174)
              {
                v175 = 0;
                if (v373[8])
                {
                  v36 = *&v373[16];
                }

                else
                {
                  v36 = &v373[9];
                }

                v176 = (*(v151 + 32) + 16);
                v177 = 80 * v174;
                do
                {
                  if (*(v176 - 1))
                  {
                    v178 = *v176;
                  }

                  else
                  {
                    v178 = v176 - 7;
                  }

                  if (!strcmp(v36, v178))
                  {
                    goto LABEL_269;
                  }

                  ++v175;
                  v176 += 10;
                  v177 -= 80;
                }

                while (v177);
                v175 = -1;
LABEL_269:
                v179 = v175;
                v163 = v307;
              }

              else
              {
                v179 = -1;
              }

              v128 = 536;
              v141 = &v359 + 322 * v305;
              if (*v373 && (v373[8] & 1) != 0)
              {
                (*(**v373 + 40))();
                v141 = &v359 + 322 * v305;
                v128 = 536;
              }

              v263 = v163[14].i64[0] + (v163[13].i64[0] << 8);
              v24 = *(v263 - 240);
              if (v24 > v179)
              {
                v264 = *(v263 - 224) + 80 * v179;
                v265 = *(v264 + 48);
                v266 = *(v264 + 64);
                v267 = vaddq_f32(v146[4], vaddq_f32(v146[3], vmlaq_f32(vmulq_f32(v146[1], 0), 0, v146[2])));
                v140 = v305;
                if (v267.f32[2] == 1.0 || fabsf(v267.f32[2] + -1.0) < (((fabsf(v267.f32[2]) + 1.0) + 1.0) * 0.0001))
                {
                  v268 = vmulq_f32(v267, v267);
                  v269 = vaddv_f32(vadd_f32(*v268.i8, *&vextq_s8(v268, v268, 8uLL)));
                  if (v269 == 1.0)
                  {
                    goto LABEL_412;
                  }

                  if (fabsf(v269 + -1.0) < (((fabsf(v269) + 1.0) + 1.0) * 0.0001) || v265 <= 0xB)
                  {
                    goto LABEL_412;
                  }

LABEL_410:
                  v271 = v265 / 0xC;
                  v272 = (v266 + 8);
                  do
                  {
                    v273 = vaddq_f32(v146[4], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v146[1], *(v272 - 2)), v146[2], *(v272 - 1)), v146[3], *v272));
                    *(v272 - 1) = v273.i64[0];
                    *v272 = v273.f32[2];
                    v272 += 3;
                    --v271;
                  }

                  while (v271);
                }

                else if (v265 >= 0xC)
                {
                  goto LABEL_410;
                }

LABEL_412:
                v274 = *(v151 + 96);
                v275 = v163[1];
                v276 = v163[2];
                v275.i32[3] = 0;
                v274.i32[3] = 0;
                v163[1] = vminnmq_f32(v275, v274);
                v276.i32[3] = 0;
                v277 = *(v151 + 112);
                v277.i32[3] = 0;
                v163[2] = vmaxnmq_f32(v276, v277);
                ++v304;
                v130 = v306;
                goto LABEL_413;
              }

LABEL_494:
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 789;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v179;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = v24;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_495:
              re::internal::assertLog(4, v191, "assertion failure: '%s' (%s:line %i) Combine vertex count overflow.", "combinedPart.indexType == mtl::IndexType::kUInt32 || combinedPart.vertexCount < 65535", "combineParts", 3660);
              _os_crash();
              __break(1u);
LABEL_496:
              *v406 = 0;
              v414 = 0u;
              v415 = 0u;
              memset(v413, 0, sizeof(v413));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v400[0]) = 136315906;
              *(v400 + 4) = "operator[]";
              WORD2(v400[1]) = 1024;
              *(&v400[1] + 6) = 797;
              WORD1(v400[2]) = 2048;
              *(&v400[2] + 4) = v179;
              WORD2(v400[3]) = 2048;
              *(&v400[3] + 6) = v24;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_497:
              *v406 = 0;
              v414 = 0u;
              v415 = 0u;
              memset(v413, 0, sizeof(v413));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v400[0]) = 136315906;
              *(v400 + 4) = "operator[]";
              WORD2(v400[1]) = 1024;
              *(&v400[1] + 6) = 797;
              WORD1(v400[2]) = 2048;
              *(&v400[2] + 4) = v179;
              WORD2(v400[3]) = 2048;
              *(&v400[3] + 6) = v24;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_498:
              *&v385[0] = 0;
              v360 = 0u;
              v361 = 0u;
              v358 = 0u;
              v359 = 0u;
              v357 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v373 = 136315906;
              *&v373[4] = "operator[]";
              *&v373[12] = 1024;
              *&v373[14] = 797;
              *&v373[18] = 2048;
              *&v373[20] = v24;
              *&v373[28] = 2048;
              *&v373[30] = v36;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_499:
              v41 = v373;
              *&v385[0] = 0;
              v360 = 0u;
              v361 = 0u;
              v358 = 0u;
              v359 = 0u;
              v357 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v373 = 136315906;
              *&v373[4] = "operator[]";
              *&v373[12] = 1024;
              *&v373[14] = 858;
              *&v373[18] = 2048;
              *&v373[20] = v24;
              *&v373[28] = 2048;
              *&v373[30] = v36;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_500;
            }

LABEL_270:
            v180 = &v162[322 * v140];
            if (v180[1])
            {
              v181 = v180 + 2;
            }

            else
            {
              v181 = *(v180 + 5);
            }

            *&v385[2] = 0;
            memset(v385, 0, 28);
            BYTE12(v385[2]) = 1;
            WORD4(v386) = -1;
            *&v387[8] = 0;
            *&v387[16] = &str_67;
            v182.i64[0] = 0x7F0000007FLL;
            v182.i64[1] = 0x7F0000007FLL;
            *&v388[8] = v302;
            v389 = v182;
            BYTE2(v394) = 0;
            v395 = 0;
            memset(v397, 0, sizeof(v397));
            v398 = 0;
            v390 = 0u;
            v391 = 0u;
            v392 = 0u;
            v393 = 0u;
            LOBYTE(v394) = 0;
            v399 = 0x7FFFFFFFLL;
            WORD4(v386) = *(v151 + 56);
            v183 = *(v151 + 52);
            LODWORD(v386) = 0;
            DWORD1(v386) = v183;
            DWORD2(v385[2]) = 0;
            HIDWORD(v386) = 0;
            *v387 = 0;
            BYTE12(v385[2]) = *(v151 + 44);
            if (*(v151 + 192) == 1)
            {
              LOBYTE(v394) = 1;
              BYTE1(v394) = *(v151 + 193);
            }

            if (*(v151 + 194) == 1)
            {
              BYTE2(v394) = 1;
              HIBYTE(v394) = *(v151 + 195);
            }

            v303 = v155;
            if (*(v151 + 196) == 1)
            {
              v395 = 1;
              v396 = *(v151 + 197);
            }

            v184 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v397, v151 + 200);
            v185 = *(v151 + 160);
            v186 = *(v151 + 176);
            v188 = *(v151 + 128);
            v187 = *(v151 + 144);
            v189 = -v316;
            v392 = v185;
            v393 = v186;
            v390 = v188;
            v391 = v187;
            *&v373[8] = 0;
            *&v373[16] = 1;
            v36 = &v373[24];
            *&v373[24] = 0;
            *&v373[32] = 0;
            v190 = re::DynamicOverflowArray<unsigned long,256ul>::setCapacity(v373, 0x100uLL);
            v192 = v373[16] + 2;
            *&v373[16] += 2;
            if (*&v373[8] >= -v316)
            {
              v12 = v385;
              v194 = v316;
              if (*&v373[8] <= -v316)
              {
                goto LABEL_294;
              }
            }

            else
            {
              v12 = v385;
              if (!*v373)
              {
                re::DynamicOverflowArray<unsigned long,256ul>::setCapacity(v373, v189);
                v192 = v373[16] + 2;
                *&v373[16] += 2;
              }

              v10 = (v192 & 1) == 0;
              v193 = 256;
              if (v10)
              {
                v193 = *&v373[24];
              }

              v194 = v316;
              if (v193 < v189)
              {
                re::DynamicOverflowArray<unsigned long,256ul>::setCapacity(v373, v189);
              }

              v195 = *&v373[8];
              if (*&v373[8] < v189)
              {
                do
                {
                  if (v373[16])
                  {
                    v196 = &v373[24];
                  }

                  else
                  {
                    v196 = *&v373[32];
                  }

                  *&v196[8 * v195++] = 0;
                }

                while (v316 + v195);
              }
            }

            *&v373[8] = -v316;
            *&v373[16] += 2;
LABEL_294:
            v197 = 0;
            v321 = &v181[5 * v24];
            v198 = v386;
            v199 = DWORD2(v385[2]);
            v200 = v70[4];
            v201 = v321 + 1;
            do
            {
              v179 = *(v201 - 1);
              v24 = v70[2];
              if (v24 <= v179)
              {
                goto LABEL_475;
              }

              v202 = v200 + (v179 << 9);
              v179 = *v201;
              v24 = *(v202 + 208);
              if (v24 <= v179)
              {
                goto LABEL_476;
              }

              v24 = *&v373[8];
              if (*&v373[8] <= v197)
              {
                goto LABEL_477;
              }

              v203 = (*(v202 + 224) + (v179 << 8));
              if (v373[16])
              {
                v204 = &v373[24];
              }

              else
              {
                v204 = *&v373[32];
              }

              *&v204[8 * v197] = v198;
              v198 += v203[3].u32[0];
              LODWORD(v386) = v198;
              v199 += v203[2].i32[2];
              DWORD2(v385[2]) = v199;
              v205 = v203[6];
              v206 = *&v388[8];
              v207 = v389;
              v206.i32[3] = 0;
              v205.i32[3] = 0;
              *&v388[8] = vminnmq_f32(v206, v205);
              v208 = v203[7];
              v207.i32[3] = 0;
              v208.i32[3] = 0;
              v389 = vmaxnmq_f32(v207, v208);
              ++v197;
              v201 += 20;
            }

            while (v194 + v197);
            HIDWORD(v386) = v198;
            if (BYTE12(v385[2]) != 1 && v198 > 0xFFFE)
            {
              goto LABEL_495;
            }

            v179 = *v321;
            v24 = v70[2];
            if (v24 <= v179)
            {
              goto LABEL_496;
            }

            v209 = v200 + (v179 << 9);
            v179 = v321[1];
            v24 = *(v209 + 208);
            if (v24 <= v179)
            {
              goto LABEL_497;
            }

            v210 = *(v209 + 224) + (v179 << 8);
            v36 = *(v210 + 16);
            if (*(&v385[0] + 1) < v36)
            {
              re::DynamicArray<re::MeshAssetBuffer>::setCapacity(v385, *(v210 + 16));
              v36 = *(v210 + 16);
            }

            if (!v36)
            {
              goto LABEL_389;
            }

            v24 = 0;
            v211 = 2;
            if (v189 > 2)
            {
              v211 = -v316;
            }

            v319 = v211;
            v315 = *&v373[8];
            v314 = v373[16];
            v311 = *&v373[32];
            v308 = v210;
            do
            {
              v7 = (*(v210 + 32) + 80 * v24);
              if (v7[1])
              {
                v23 = v7[2];
              }

              else
              {
                v23 = v7 + 9;
              }

              v212 = strncmp(v23, "original", 8uLL);
              if (!v212)
              {
                goto LABEL_388;
              }

              v352 = 0;
              v353 = &str_67;
              v324 = re::sizeFromVertexFormat(*(v7 + 72), v213);
              v214 = v7[6] / v324;
              v309 = v24;
              if (v316 != -1)
              {
                v23 = v321;
                if (!isNonCombinableConstantBuffer)
                {
                  var0 = v70[2];
                  v25 = 1;
                  while (1)
                  {
                    v217 = &v321[20 * v25];
                    v24 = *v217;
                    if (var0 <= v24)
                    {
                      break;
                    }

                    v218 = v70[4] + (v24 << 9);
                    v24 = v217[1];
                    v219 = *(v218 + 208);
                    if (v219 <= v24)
                    {
                      goto LABEL_465;
                    }

                    v220 = *(v218 + 224) + (v24 << 8);
                    v24 = *(v220 + 16);
                    if (!v24)
                    {
                      goto LABEL_488;
                    }

                    v219 = 0;
                    v36 = *(v220 + 32);
                    v12 = 80 * v24;
                    while (1)
                    {
                      isNonCombinableConstantBuffer = re::DynamicString::operator==(v7, v36);
                      if (isNonCombinableConstantBuffer)
                      {
                        break;
                      }

                      v36 += 80;
                      v219 = (v219 + 1);
                      v12 -= 80;
                      if (!v12)
                      {
                        goto LABEL_488;
                      }
                    }

                    if (v24 <= v219)
                    {
                      goto LABEL_466;
                    }

                    if (*(v7 + 72) != *(v36 + 72))
                    {
                      goto LABEL_467;
                    }

                    v214 += *(v36 + 48) / v324;
                    if (++v25 == v319)
                    {
                      goto LABEL_329;
                    }
                  }

LABEL_464:
                  v219 = v400;
                  *v406 = 0;
                  v414 = 0u;
                  v415 = 0u;
                  memset(v413, 0, sizeof(v413));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v400[0]) = 136315906;
                  *(v400 + 4) = "operator[]";
                  WORD2(v400[1]) = 1024;
                  *(&v400[1] + 6) = 797;
                  WORD1(v400[2]) = 2048;
                  *(&v400[2] + 4) = v24;
                  WORD2(v400[3]) = 2048;
                  *(&v400[3] + 6) = var0;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_465:
                  *v406 = 0;
                  v414 = 0u;
                  v415 = 0u;
                  memset(v413, 0, sizeof(v413));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v400[0]) = 136315906;
                  *(v400 + 4) = "operator[]";
                  WORD2(v400[1]) = 1024;
                  *(&v400[1] + 6) = 797;
                  WORD1(v400[2]) = 2048;
                  *(&v400[2] + 4) = v24;
                  WORD2(v400[3]) = 2048;
                  *(&v400[3] + 6) = v219;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_466:
                  *v406 = 0;
                  v414 = 0u;
                  v415 = 0u;
                  memset(v413, 0, sizeof(v413));
                  v25 = MEMORY[0x1E69E9C10];
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v400[0]) = 136315906;
                  *(v400 + 4) = "operator[]";
                  WORD2(v400[1]) = 1024;
                  *(&v400[1] + 6) = 797;
                  WORD1(v400[2]) = 2048;
                  *(&v400[2] + 4) = v219;
                  WORD2(v400[3]) = 2048;
                  *(&v400[3] + 6) = v24;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_467:
                  re::internal::assertLog(4, v216, "assertion failure: '%s' (%s:line %i) ", "srcBuffer.format == buffer.format", "combineAttributeBuffers", 3556);
                  _os_crash();
                  __break(1u);
LABEL_468:
                  *&v385[0] = 0;
                  v22[9] = 0u;
                  v22[10] = 0u;
                  v22[7] = 0u;
                  v22[8] = 0u;
                  v22[6] = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *(v7 + 134) = 136315906;
                  *&v373[4] = "operator[]";
                  *&v373[12] = 1024;
                  *&v373[14] = 858;
                  *&v373[18] = 2048;
                  *&v373[20] = v24;
                  *&v373[28] = 2048;
                  *&v373[30] = v25;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_469:
                  *&v385[0] = 0;
                  v22[9] = 0u;
                  v22[10] = 0u;
                  v22[7] = 0u;
                  v22[8] = 0u;
                  v22[6] = 0u;
                  v75 = MEMORY[0x1E69E9C10];
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v373 = 136315906;
                  *&v373[4] = "operator[]";
                  *&v373[12] = 1024;
                  *&v373[14] = 858;
                  *&v373[18] = 2048;
                  *&v373[20] = v24;
                  *&v373[28] = 2048;
                  *&v373[30] = v25;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_470:
                  v222 = v338;
                  *&v355[0].var0 = 0;
                  memset(v373, 0, 80);
                  v36 = v74;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v385[0]) = 136315906;
                  *(v385 + 4) = "operator[]";
                  WORD6(v385[0]) = 1024;
                  *(v385 + 14) = 858;
                  WORD1(v385[1]) = 2048;
                  *(&v385[1] + 4) = v36;
                  WORD6(v385[1]) = 2048;
                  *(&v385[1] + 14) = v75;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_471:
                  v354 = 0;
                  v414 = 0u;
                  v415 = 0u;
                  memset(v413, 0, sizeof(v413));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v406 = 136315906;
                  *&v406[4] = "operator[]";
                  v407 = 1024;
                  v408 = 866;
                  v409 = 2048;
                  v410 = v222;
                  v411 = 2048;
                  v412 = v315;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_472:
                  var0 = v400;
                  v413[0] = 0;
                  *(v23 + 48) = 0u;
                  *(v23 + 64) = 0u;
                  *(v23 + 16) = 0u;
                  *(v23 + 32) = 0u;
                  *v23 = 0u;
                  v299 = v155;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v385[0]) = 136315906;
                  *(v385 + 4) = "operator[]";
                  WORD6(v385[0]) = 1024;
                  *(v385 + 14) = 858;
                  WORD1(v385[1]) = 2048;
                  *(&v385[1] + 4) = v299;
                  WORD6(v385[1]) = 2048;
                  *(&v385[1] + 14) = v36;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_473:
                  v24 = v400;
                  v413[0] = 0;
                  *(v23 + 48) = 0u;
                  *(v23 + 64) = 0u;
                  *(v23 + 16) = 0u;
                  *(v23 + 32) = 0u;
                  *v23 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v385[0]) = 136315906;
                  *(v385 + 4) = "operator[]";
                  WORD6(v385[0]) = 1024;
                  *(v385 + 14) = 866;
                  WORD1(v385[1]) = 2048;
                  *(&v385[1] + 4) = v36;
                  WORD6(v385[1]) = 2048;
                  *(&v385[1] + 14) = var0;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_474:
                  v179 = v400;
                  v413[0] = 0;
                  *(v23 + 48) = 0u;
                  *(v23 + 64) = 0u;
                  *(v23 + 16) = 0u;
                  *(v23 + 32) = 0u;
                  *v23 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v385[0]) = 136315906;
                  *(v385 + 4) = "operator[]";
                  WORD6(v385[0]) = 1024;
                  *(v385 + 14) = 866;
                  WORD1(v385[1]) = 2048;
                  *(&v385[1] + 4) = v36;
                  WORD6(v385[1]) = 2048;
                  *(&v385[1] + 14) = v12;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_475:
                  *v406 = 0;
                  v414 = 0u;
                  v415 = 0u;
                  memset(v413, 0, sizeof(v413));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *(v12 + 256) = 136315906;
                  *(v400 + 4) = "operator[]";
                  WORD2(v400[1]) = 1024;
                  *(&v400[1] + 6) = 797;
                  WORD1(v400[2]) = 2048;
                  *(&v400[2] + 4) = v179;
                  WORD2(v400[3]) = 2048;
                  *(&v400[3] + 6) = v24;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_476:
                  v197 = v400;
                  *v406 = 0;
                  v414 = 0u;
                  v415 = 0u;
                  memset(v413, 0, sizeof(v413));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v400[0]) = 136315906;
                  *(v400 + 4) = "operator[]";
                  WORD2(v400[1]) = 1024;
                  *(&v400[1] + 6) = 797;
                  WORD1(v400[2]) = 2048;
                  *(&v400[2] + 4) = v179;
                  WORD2(v400[3]) = 2048;
                  *(&v400[3] + 6) = v24;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_477:
                  var0 = v400;
                  *v406 = 0;
                  v414 = 0u;
                  v415 = 0u;
                  memset(v413, 0, sizeof(v413));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v400[0]) = 136315906;
                  *(v400 + 4) = "operator[]";
                  WORD2(v400[1]) = 1024;
                  *(&v400[1] + 6) = 858;
                  WORD1(v400[2]) = 2048;
                  *(&v400[2] + 4) = v197;
                  WORD2(v400[3]) = 2048;
                  *(&v400[3] + 6) = v24;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_478:
                  v300 = v74;
                  *&v355[0].var0 = 0;
                  memset(v373, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v385[0]) = 136315906;
                  *(v385 + 4) = "operator[]";
                  WORD6(v385[0]) = 1024;
                  *(v385 + 14) = 797;
                  WORD1(v385[1]) = 2048;
                  *(&v385[1] + 4) = v300;
                  WORD6(v385[1]) = 2048;
                  *(&v385[1] + 14) = var0;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_479:
                  re::internal::assertLog(4, v230, "assertion failure: '%s' (%s:line %i) ", "bufferOffset + count * sizeof(IndexType) <= destBufferSize", "copyAndOffsetTriangleIndices", 3490);
                  _os_crash();
                  __break(1u);
LABEL_480:
                  re::internal::assertLog(4, v230, "assertion failure: '%s' (%s:line %i) ", "bufferOffset + count * sizeof(IndexType) <= destBufferSize", "copyAndOffsetTriangleIndices", 3490);
                  _os_crash();
                  __break(1u);
                  goto LABEL_481;
                }
              }

LABEL_329:
              memset(v400, 0, 32);
              var0 = v400;
              re::DynamicString::setCapacity(v400, 0);
              v404 = 0;
              v401 = 0;
              v402 = 0;
              v400[4] = 0;
              v403 = 0;
              v405 = 256;
              if (*(v7 + 73) == 1 && v214 != v386)
              {
                goto LABEL_486;
              }

              re::DynamicString::operator=(v400, v7);
              v405 = *(v7 + 36);
              re::DynamicArray<BOOL>::resize(&v400[4], (v214 * v324 + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v23 = 0;
              v222 = 0;
              do
              {
                var0 = &v321[20 * v222];
                v24 = *var0;
                v81 = v70[2];
                if (v81 <= v24)
                {
                  goto LABEL_462;
                }

                v223 = v70[4] + (v24 << 9);
                v24 = *(var0 + 4);
                v81 = *(v223 + 208);
                if (v81 <= v24)
                {
                  goto LABEL_463;
                }

                v224 = *(v223 + 224) + (v24 << 8);
                v225 = *(v224 + 16);
                if (!v225)
                {
                  goto LABEL_501;
                }

                v226 = 0;
                v227 = *(v224 + 32);
                v228 = 80 * v225;
                v229 = v227;
                while (!re::DynamicString::operator==(v7, v229))
                {
                  ++v226;
                  v229 += 80;
                  v228 -= 80;
                  if (!v228)
                  {
                    v226 = -1;
                    break;
                  }
                }

                v12 = v226;
                if (v225 <= v226)
                {
                  goto LABEL_502;
                }

                v231 = v227 + 80 * v226;
                v36 = *(v231 + 48);
                v24 = v36 / v324;
                if (v352 >> 1 == 0x2B3FAC222C23CAEDLL)
                {
                  if (v353 != "vertexPosition" && strcmp(v353, "vertexPosition"))
                  {
                    goto LABEL_363;
                  }

                  v233 = *(v231 + 64);
                  v234 = vaddq_f32(*(var0 + 64), vaddq_f32(*(var0 + 48), vmlaq_f32(vmulq_f32(*(var0 + 16), 0), 0, *(var0 + 32))));
                  if ((v234.f32[2] == 1.0 || fabsf(v234.f32[2] + -1.0) < (((fabsf(v234.f32[2]) + 1.0) + 1.0) * 0.0001)) && ((v235 = vmulq_f32(v234, v234), v236 = vaddv_f32(vadd_f32(*v235.i8, *&vextq_s8(v235, v235, 8uLL))), v236 == 1.0) || fabsf(v236 + -1.0) < (((fabsf(v236) + 1.0) + 1.0) * 0.0001)))
                  {
                    memcpy((v404 + v23), v233, 12 * v24);
                  }

                  else if (v36 >= v324)
                  {
                    v245 = (v404 + v23 + 8);
                    v246 = v233 + 2;
                    v247 = v36 / v324;
                    do
                    {
                      v248 = *(v246 - 2);
                      v249 = *(v246 - 1);
                      v250 = *v246;
                      v246 += 3;
                      v251 = vaddq_f32(*(var0 + 64), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(var0 + 16), v248), *(var0 + 32), v249), *(var0 + 48), v250));
                      *(v245 - 1) = v251.i64[0];
                      *v245 = v251.i32[2];
                      v245 += 3;
                      --v247;
                    }

                    while (v247);
                  }
                }

                else
                {
                  if (v352 >> 1 != 0x5353CF4AA93DFAB9 || v353 != "indexTriangles" && strcmp(v353, "indexTriangles"))
                  {
                    goto LABEL_363;
                  }

                  if (v315 <= v222)
                  {
                    goto LABEL_471;
                  }

                  v232 = (v314 & 1) != 0 ? &v373[24] : v311;
                  v237 = *&v232[8 * v222];
                  if (!v237)
                  {
LABEL_363:
                    re::DynamicArray<REFrameAnalysisBottleneck>::copy(&v400[4], v23, *(v227 + 80 * v12 + 64), v36);
                    goto LABEL_364;
                  }

                  v238 = *(v231 + 72);
                  if (v238 == 36)
                  {
                    if ((v36 & 0xFFFFFFFFFFFFFFFCLL) + v23 > v402)
                    {
                      goto LABEL_480;
                    }

                    if (v36 >= 4)
                    {
                      v252 = *(v231 + 64);
                      v253 = v36 >> 2;
                      v254 = (v404 + v23);
                      do
                      {
                        v255 = *v252++;
                        *v254++ = v255 + v237;
                        --v253;
                      }

                      while (v253);
                    }
                  }

                  else
                  {
                    if (v238 != 49)
                    {
                      goto LABEL_504;
                    }

                    if ((v36 & 0xFFFFFFFFFFFFFFFELL) + v23 > v402)
                    {
                      goto LABEL_479;
                    }

                    if (v36 >= 2)
                    {
                      v239 = *(v231 + 64);
                      v240 = v36 >> 1;
                      v241 = (v404 + v23);
                      do
                      {
                        v242 = *v239++;
                        *v241++ = v242 + v237;
                        --v240;
                      }

                      while (v240);
                    }
                  }
                }

LABEL_364:
                v23 += v24 * v324;
                ++v222;
                v70 = v322;
              }

              while (v222 < -v316 && !v243);
              if (v23 / v324 != v214)
              {
                goto LABEL_487;
              }

              v256.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(v385, v400);
              v24 = v309;
              if (v400[4])
              {
                if (v404)
                {
                  (*(*v400[4] + 40))(v256.n128_f64[0]);
                }

                v404 = 0;
                v401 = 0;
                v402 = 0;
                v400[4] = 0;
                ++v403;
              }

              v257 = v400[0];
              if (v400[0] && (v400[1] & 1) != 0)
              {
                v257 = (*(*v400[0] + 40))(v256);
              }

              if (v352)
              {
                if (v352)
                {
                }
              }

              v210 = v308;
              v36 = *(v308 + 16);
LABEL_388:
              ++v24;
            }

            while (v24 < v36);
LABEL_389:
            v258 = v307[1];
            v259 = v307[2];
            v258.i32[3] = 0;
            v260 = *&v388[8];
            v260.i32[3] = 0;
            v307[1] = vminnmq_f32(v258, v260);
            v261 = v389;
            v259.i32[3] = 0;
            v261.i32[3] = 0;
            v307[2] = vmaxnmq_f32(v259, v261);
            re::DynamicArray<re::MeshAssetPart>::add(&v307[12], v385);
            v23 = v373;
            if (*v373 && (v373[16] & 1) == 0)
            {
              (*(**v373 + 40))();
            }

            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v397);
            if (v387[8])
            {
              if (v387[8])
              {
              }
            }

            v130 = v306 - v316;
            *&v387[8] = 0;
            *&v387[16] = &str_67;
            re::DynamicArray<re::MeshAssetBuffer>::deinit(v385);
            v153 = v303;
            v141 = &v359 + 322 * v305;
            v140 = v305;
            v128 = 536;
LABEL_413:
            var0 = *(&v357 + 1);
            v24 = v153;
            if (*(&v357 + 1) <= v140)
            {
LABEL_481:
              v111 = v400;
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              v301 = v140;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 858;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v301;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = var0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_482:
              v113 = v400;
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 858;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = var0;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = v111;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_483:
              v112 = v400;
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 858;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = var0;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = v36;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_484:
              var0 = v400;
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 789;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v112;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = v113;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_485:
              v24 = v385;
              v400[0] = 0;
              v386 = 0u;
              *v387 = 0u;
              memset(v385, 0, sizeof(v385));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v413[0]) = 136315906;
              *(v413 + 4) = "operator[]";
              WORD2(v413[1]) = 1024;
              *(&v413[1] + 6) = 858;
              WORD1(v413[2]) = 2048;
              *(&v413[2] + 4) = var0;
              WORD2(v413[3]) = 2048;
              *(&v413[3] + 6) = v36;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_486:
              re::internal::assertLog(4, v221, "assertion failure: '%s' (%s:line %i) ", "srcBuffer.stepFunction != mtl::VertexStepFunction::kPerVertex || newElementCount == combinedPart.vertexCount", "combineAttributeBuffers", 3563);
              _os_crash();
              __break(1u);
LABEL_487:
              re::internal::assertLog(4, v244, "assertion failure: '%s' (%s:line %i) ", "bufferOffset / elementSize == newElementCount", "combineAttributeBuffers", 3589);
              _os_crash();
              __break(1u);
LABEL_488:
              re::internal::assertLog(4, v216, "assertion failure: '%s' (%s:line %i) ", "bufferIndex >= 0", "combineAttributeBuffers", 3554);
              _os_crash();
              __break(1u);
LABEL_489:
              v413[0] = 0;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v385[0]) = 136315906;
              *(v385 + 4) = "operator[]";
              WORD6(v385[0]) = 1024;
              *(v385 + 14) = 858;
              WORD1(v385[1]) = 2048;
              *(&v385[1] + 4) = v24;
              WORD6(v385[1]) = 2048;
              *(&v385[1] + 14) = var0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_490;
            }
          }

          v131 = v140 + 1;
          v129 = v313;
          if (v131 >= var0)
          {
            LODWORD(v127) = v304 + v130;
            break;
          }
        }
      }

      if (v127 != v129)
      {
        goto LABEL_503;
      }

      v379 = 0;
      v380 = 0;
      v384 = 0;
      v381 = 0;
      v382 = 0u;
      v383 = 0;
      v374 = 0u;
      v375 = 0;
      v376 = 0u;
      v377 = 0u;
      v378 = 0;
      *v373 = v329;
      v329 = 0;
      *&v373[8] = v330;
      v330 = 0u;
      v278 = v332;
      v332 = 0;
      ++v331;
      *&v373[24] = 1;
      *&v373[32] = v278;
      *&v373[40] = v325;
      v325 = 0;
      *&v373[48] = v326;
      v326 = 0u;
      *&v373[72] = v328;
      *&v373[80] = 0;
      v328 = 0;
      ++v327;
      *&v373[64] = 1;
      re::MeshAssetData::generateMetaData(v373);
      *(v310 + 16) = *&v373[8];
      v279 = *&v373[48];
      *(v310 + 40) = *&v373[32];
      *(v310 + 56) = v279;
      v280 = v374;
      *(v310 + 80) = *&v373[72];
      *(v310 + 96) = v280;
      v281 = v377;
      *(v310 + 120) = v376;
      v282 = *v373;
      *v373 = 0;
      ++*&v373[24];
      ++*&v373[64];
      ++v375;
      v283 = v379;
      v379 = 0;
      ++v378;
      LODWORD(v392) = v380;
      v284 = v380;
      v285 = v381;
      v381 = 0;
      v286 = v384;
      v384 = 0;
      ++v383;
      *v310 = 1;
      *(v310 + 8) = v282;
      memset(v385, 0, 24);
      *&v373[8] = 0u;
      DWORD2(v385[1]) = 2;
      *(v310 + 32) = 1;
      memset(&v373[32], 0, 32);
      v385[2] = 0u;
      v386 = 0u;
      *v387 = 2;
      *(v310 + 72) = 1;
      *&v373[72] = 0u;
      *&v387[8] = 0u;
      v374 = 0u;
      *v388 = 0u;
      *&v388[16] = 2;
      *(v310 + 112) = 1;
      v376 = 0u;
      v377 = 0u;
      *(v310 + 136) = v281;
      v389 = 0u;
      v390 = 0u;
      *(v310 + 160) = v283;
      *(&v391 + 1) = 0;
      LODWORD(v391) = 2;
      *(v310 + 152) = 1;
      *(v310 + 168) = v284;
      *(v310 + 176) = v285;
      *(&v392 + 1) = 0;
      v287 = v382;
      v382 = 0u;
      *(v310 + 184) = v287;
      v393 = 0u;
      *(v310 + 208) = v286;
      v397[0] = 0;
      v394 = 2;
      *(v310 + 200) = 1;
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v392 + 8);
      if (v389.i64[1])
      {
        if (*(&v391 + 1))
        {
          (*(*v389.i64[1] + 40))();
        }

        *(&v391 + 1) = 0;
        v390 = 0uLL;
        v389.i64[1] = 0;
        LODWORD(v391) = v391 + 1;
      }

      re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v387[16]);
      re::DynamicArray<re::MeshAssetInstance>::deinit(&v385[2] + 8);
      re::DynamicArray<re::MeshAssetModel>::deinit(v385);
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v381);
      if (*(&v376 + 1))
      {
        if (v379)
        {
          (*(**(&v376 + 1) + 40))();
        }

        v379 = 0;
        v377 = 0uLL;
        *(&v376 + 1) = 0;
        ++v378;
      }

      re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v373[80]);
      re::DynamicArray<re::MeshAssetInstance>::deinit(&v373[40]);
      v288 = re::DynamicArray<re::MeshAssetModel>::deinit(v373);
      if (*&v355[0].var0)
      {
        if (*&v355[0].var0)
        {
        }
      }

      re::DynamicArray<re::MeshAssetInstance>::deinit(&v325);
      re::DynamicArray<re::MeshAssetModel>::deinit(&v329);
    }

    else
    {
LABEL_430:
      v289 = *v373;
      v290 = *&v373[16];
      v291 = *&v373[24];
      *v310 = 0;
      *(v310 + 8) = 100;
      *(v310 + 16) = re::AssetErrorCategory(void)::instance;
      *(v310 + 24) = v289;
      *(v310 + 40) = v290;
      *(v310 + 48) = v291;
    }

    if (v357)
    {
      v292 = v358;
      if (*(&v357 + 1))
      {
        if (v358)
        {
          v293 = &v359;
        }

        else
        {
          v293 = *(&v359 + 1);
        }

        v294 = 5152 * *(&v357 + 1);
        do
        {
          v293 += 322;
          v294 -= 5152;
        }

        while (v294);
        v292 = v358;
      }

      if ((v292 & 1) == 0)
      {
        (*(*v357 + 40))(v357, *(&v359 + 1));
      }
    }

    goto LABEL_441;
  }

  v68 = v357;
  v69 = v358;
  *v4 = 0;
  *(v4 + 8) = 100;
  *(v4 + 16) = re::AssetErrorCategory(void)::instance;
  *(v4 + 24) = v68;
  *(v4 + 40) = v69;
LABEL_441:
  if (v333)
  {
    v295 = v335;
    if (v334)
    {
      if (v335)
      {
        v296 = &v336;
      }

      else
      {
        v296 = v337;
      }

      v297 = 536 * v334;
      do
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v296);
        v296 += 67;
        v297 -= 536;
      }

      while (v297);
      v295 = v335;
    }

    if ((v295 & 1) == 0)
    {
      (*(*v333 + 40))(v333, v337);
    }

    v333 = 0;
    v334 = 0;
  }

  if (v368 && (v370 & 1) == 0)
  {
    (*(*v368 + 40))();
  }

LABEL_455:
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v349);
  if (*(&v344 + 1))
  {
    if (v347)
    {
      (*(**(&v344 + 1) + 40))();
    }

    v347 = 0;
    v345 = 0uLL;
    *(&v344 + 1) = 0;
    ++v346;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v342[8]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v340[8]);
  return re::DynamicArray<re::MeshAssetModel>::deinit(v338);
}