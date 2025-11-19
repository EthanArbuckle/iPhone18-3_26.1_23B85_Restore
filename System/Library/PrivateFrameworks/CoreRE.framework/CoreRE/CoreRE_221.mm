void *re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::move(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 + 2);
  v5 = *a2;
  v6 = (a1 + 2);
  if (*a2 >= *a1)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *>(v4, v4 + 416 * *a1, v6);
    v10 = *a1;
    if (*a1 != v5)
    {
      v11 = 416 * v10;
      v12 = v4 + 416 * v10;
      v13 = v6 + v11;
      do
      {
        *v13 = *v12;
        v14 = *(v12 + 16);
        v15 = *(v12 + 48);
        *(v13 + 32) = *(v12 + 32);
        *(v13 + 48) = v15;
        *(v13 + 16) = v14;
        v16 = *(v12 + 64);
        v17 = *(v12 + 80);
        v18 = *(v12 + 112);
        *(v13 + 96) = *(v12 + 96);
        *(v13 + 112) = v18;
        *(v13 + 64) = v16;
        *(v13 + 80) = v17;
        v19 = *(v12 + 128);
        v20 = *(v12 + 144);
        v21 = *(v12 + 176);
        *(v13 + 160) = *(v12 + 160);
        *(v13 + 176) = v21;
        *(v13 + 128) = v19;
        *(v13 + 144) = v20;
        *(v13 + 200) = 0;
        *(v13 + 208) = 0;
        *(v13 + 192) = 0;
        v22 = *(v12 + 200);
        *(v13 + 192) = *(v12 + 192);
        *(v13 + 200) = v22;
        *(v12 + 192) = 0;
        *(v12 + 200) = 0;
        v23 = *(v13 + 208);
        *(v13 + 208) = *(v12 + 208);
        *(v12 + 208) = v23;
        *(v13 + 216) = *(v12 + 216);
        *(v12 + 216) = 0;
        v24 = *(v12 + 336);
        v26 = *(v12 + 288);
        v25 = *(v12 + 304);
        *(v13 + 320) = *(v12 + 320);
        *(v13 + 336) = v24;
        *(v13 + 288) = v26;
        *(v13 + 304) = v25;
        v27 = *(v12 + 352);
        v28 = *(v12 + 368);
        v29 = *(v12 + 400);
        *(v13 + 384) = *(v12 + 384);
        *(v13 + 400) = v29;
        *(v13 + 352) = v27;
        *(v13 + 368) = v28;
        v30 = *(v12 + 240);
        v32 = *(v12 + 256);
        v31 = *(v12 + 272);
        *(v13 + 224) = *(v12 + 224);
        *(v13 + 240) = v30;
        *(v13 + 256) = v32;
        *(v13 + 272) = v31;
        v12 += 416;
        v13 += 416;
      }

      while (v12 != v4 + 416 * v5);
    }
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *>(v4, v4 + 416 * v5, v6);
    if (v5 != *a1)
    {
      v7 = -416 * v5 + 416 * *a1;
      v8 = &a1[52 * v5 + 26];
      do
      {
        v9 = v8[3];
        if (v9)
        {

          v8[3] = 0;
        }

        re::FixedArray<CoreIKTransform>::deinit(v8);
        *(v8 - 24) = 0;
        v8 += 52;
        v7 -= 416;
      }

      while (v7);
    }
  }

  *a1 = v5;

  return re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear(a2);
}

__n128 std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      v7 = *(v5 + 48);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 48) = v7;
      *(a3 + 16) = v6;
      v8 = *(v5 + 64);
      v9 = *(v5 + 80);
      v10 = *(v5 + 112);
      *(a3 + 96) = *(v5 + 96);
      *(a3 + 112) = v10;
      *(a3 + 64) = v8;
      *(a3 + 80) = v9;
      v11 = *(v5 + 128);
      v12 = *(v5 + 144);
      v13 = *(v5 + 176);
      *(a3 + 160) = *(v5 + 160);
      *(a3 + 176) = v13;
      *(a3 + 128) = v11;
      *(a3 + 144) = v12;
      re::FixedArray<float>::operator=((a3 + 192), (v5 + 192));
      NS::SharedPtr<MTL::Texture>::operator=((a3 + 216), (v5 + 216));
      v14 = *(v5 + 272);
      v16 = *(v5 + 224);
      v15 = *(v5 + 240);
      *(a3 + 256) = *(v5 + 256);
      *(a3 + 272) = v14;
      *(a3 + 224) = v16;
      *(a3 + 240) = v15;
      v17 = *(v5 + 336);
      v19 = *(v5 + 288);
      v18 = *(v5 + 304);
      *(a3 + 320) = *(v5 + 320);
      *(a3 + 336) = v17;
      *(a3 + 288) = v19;
      *(a3 + 304) = v18;
      result = *(v5 + 384);
      v21 = *(v5 + 400);
      v23 = *(v5 + 352);
      v22 = *(v5 + 368);
      *(a3 + 384) = result;
      *(a3 + 400) = v21;
      *(a3 + 352) = v23;
      *(a3 + 368) = v22;
      v5 += 416;
      a3 += 416;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *a1 = v5;
      *a2 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v7;
      v8 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 16) = v8;
      LODWORD(v8) = *(a1 + 24);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 24) = v8;
      LODWORD(v8) = *(a1 + 28);
      *(a1 + 28) = *(a2 + 28);
      *(a2 + 28) = v8;
      LODWORD(v8) = *(a1 + 32);
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 32) = v8;
      LODWORD(v8) = *(a1 + 36);
      *(a1 + 36) = *(a2 + 36);
      *(a2 + 36) = v8;
LABEL_12:
      ++*(a1 + 40);
      return a1;
    }

    re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(a1);
    if (*a2)
    {
      v9 = *(a2 + 28);
      if (*(a1 + 24) < v9)
      {
        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, v9);
      }

      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, a2);
      goto LABEL_12;
    }
  }

  return a1;
}

void *re::MeshShadowProvider::MeshShadowProvider(void *a1, const re::DynamicString *a2, const re::AssetHandle *a3)
{
  re::DynamicString::DynamicString(v6, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), v6);
  if (*&v6[0])
  {
    if (BYTE8(v6[0]))
    {
      (*(**&v6[0] + 40))();
    }

    memset(v6, 0, sizeof(v6));
  }

  *a1 = &unk_1F5D158D8;
  re::AssetHandle::AssetHandle((a1 + 5), a3);
  return a1;
}

unint64_t re::MeshShadowProvider::prepareFrame(re::MeshShadowProvider *this, const char *__s, const char *a3, re::RenderFrame *a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, &v74);
    v8 = (*(&v74 + 1) - 0x61C8864680B583E9 + (v74 << 6) + (v74 >> 2)) ^ v74;
  }

  else
  {
    v8 = 0;
  }

  v9 = strlen(a3);
  if (v9)
  {
    MurmurHash3_x64_128(a3, v9, 0, &v74);
    v10 = ((*(&v74 + 1) - 0x61C8864680B583E9 + (v74 << 6) + (v74 >> 2)) ^ v74) - 0x61C8864680B583E9;
  }

  else
  {
    v10 = 0x9E3779B97F4A7C17;
  }

  if ((atomic_load_explicit(&qword_1EE1C18C0, memory_order_acquire) & 1) == 0)
  {
    v45 = __cxa_guard_acquire(&qword_1EE1C18C0);
    if (v45)
    {
      _MergedGlobals_544 = re::getCombinedScopeHash(v45, v46, v47);
      __cxa_guard_release(&qword_1EE1C18C0);
    }
  }

  if (a3)
  {
    v11 = *a3;
    if (*a3)
    {
      v12 = a3[1];
      if (v12)
      {
        v13 = a3 + 2;
        do
        {
          v11 = 31 * v11 + v12;
          v14 = *v13++;
          v12 = v14;
        }

        while (v14);
      }

      v11 &= ~0x8000000000000000;
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v73 = v11;
  v15 = "N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v16 = ("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  if (!*(a4 + 12))
  {
    return 0;
  }

  v19 = (_MergedGlobals_544 - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
  v20 = *(*(a4 + 13) + 4 * (v19 % *(a4 + 30)));
  if (v20 == 0x7FFFFFFF)
  {
    return 0;
  }

  v21 = ((v8 >> 2) + (v8 << 6) + v10) ^ v8;
  v22 = *(a4 + 14);
  while (*(v22 + 24 * v20 + 8) != v19)
  {
    v20 = *(v22 + 24 * v20) & 0x7FFFFFFF;
    if (v20 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v23 = *(v22 + 24 * v20 + 16);
  if (!v23)
  {
    return 0;
  }

  v24 = [*(*(a4 + 1) + 208) supportsTexture2DMultisampleArray];
  v25 = v24;
  v26 = *(v23 + 24);
  if (v26 >= 0x800)
  {
    v27 = 2048;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(*a4 + 296);
  if (v24)
  {
    v29 = 0;
  }

  else
  {
    v29 = 2;
  }

  *&v74 = 0xA00000000;
  if (v24)
  {
    v30 = 3;
  }

  else
  {
    v30 = 7;
  }

  v31 = *(v23 + 16);
  DWORD2(v74) = 3;
  HIDWORD(v74) = v31;
  *v75 = v31;
  *&v75[4] = 1;
  *&v75[12] = 0xFFFFFFFF00000001;
  *&v75[8] = v27;
  *&v75[20] = 0;
  v75[24] = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *&v75[28] = _D0;
  *&v75[36] = 0;
  *&v75[44] = v29;
  *v76 = 1;
  *&v76[4] = v30;
  *&v76[8] = xmmword_1E3108CE0;
  BYTE8(v77) = 0;
  *&v76[24] = 0;
  *&v77 = 0;
  *&v71[0] = 0x6AD7693626249265;
  *&v61[0] = 0x6AD7693626249265;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, v71, v61, a4, &v74, &v72);
  v71[4] = *v76;
  v71[5] = *&v76[16];
  v71[6] = v77;
  v71[0] = v74;
  v71[1] = *v75;
  v71[2] = *&v75[16];
  v71[3] = *&v75[32];
  DWORD1(v71[0]) = 20;
  *&v61[0] = 0x2C37E112E1E92C60;
  *&v54 = 0x2C37E112E1E92C60;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, v61, &v54, a4, v71, &v72);
  v65 = 0;
  v66 = 16 * (v27 + 4 * v27);
  v67 = 0;
  v68 = 1065353216;
  v69 = 0xFFFFFFFF00000020;
  v70 = xmmword_1E3062D70;
  *&v61[0] = 0x19DF38FA543D0095;
  *&v54 = 0x19DF38FA543D0095;
  re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v28, &v73, v61, &v54, a4, &v65, &v72, 0);
  v62 = *v76;
  v63 = *&v76[16];
  v64 = v77;
  v61[0] = v74;
  v61[1] = *v75;
  v61[2] = *&v75[16];
  v61[3] = *&v75[32];
  DWORD1(v61[0]) = 250;
  if (v25)
  {
    v37 = *(a4 + 1);
    if (v37[371] != 1 || (*v37 & 1) == 0)
    {
      DWORD1(v62) = 7;
    }
  }

  *&v54 = 0x6B14F36D04976B05;
  *&v49[0] = 0x6B14F36D04976B05;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, &v54, v49, a4, v61, &v72);
  v59 = *&v76[16];
  v60 = v77;
  v54 = v74;
  v55 = *v75;
  v57 = *&v75[32];
  v58 = *v76;
  v56 = *&v75[16];
  HIDWORD(v55) = *(v23 + 96);
  *&v49[0] = 0x284EDEB613E4CA80;
  v53 = 0x284EDEB613E4CA80;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, v49, &v53, a4, &v54, &v72);
  v50 = v58;
  v51 = v59;
  v52 = v60;
  v49[0] = v54;
  v49[1] = v55;
  v49[2] = v56;
  v49[3] = v57;
  DWORD1(v49[0]) = 60;
  if (v25)
  {
    v38 = *(a4 + 1);
    if (v38[371] != 1 || (*v38 & 1) == 0)
    {
      DWORD1(v50) = 7;
    }
  }

  v53 = 0x335A34A7FEF3F24;
  v48 = 0x335A34A7FEF3F24;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, &v53, &v48, a4, v49, &v72);
  v53 = 0x59A6302C4491B15;
  v48 = 0x59A6302C4491B15;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v28, &v73, &v53, &v48, a4, &v54, &v72);
  v39 = (v21 - 0x3869C2019F65CC2) ^ 0x1D5BABFC9CFDFE9ELL;
  if (v25)
  {
    v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v27) ^ ((0xBF58476D1CE4E5B9 * v27) >> 27));
    v41 = ((v39 << 6) - 0x61C8864680B583E9 + (v39 >> 2) + (v40 ^ (v40 >> 31))) ^ v39;
    v42 = 0xBF58476D1CE4E5B9 * (*(v23 + 16) ^ (*(v23 + 16) >> 30));
    v39 = ((v41 << 6) - 0x61C8864680B583E9 + (v41 >> 2) + ((0x94D049BB133111EBLL * (v42 ^ (v42 >> 27))) ^ ((0x94D049BB133111EBLL * (v42 ^ (v42 >> 27))) >> 31))) ^ v41;
  }

  v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v23 + 28)) ^ ((0xBF58476D1CE4E5B9 * *(v23 + 28)) >> 27));
  return ((v39 << 6) - 0x61C8864680B583E9 + (v39 >> 2) + (v43 ^ (v43 >> 31))) ^ v39;
}

void re::MeshShadowProvider::provide(re::MeshShadowProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v155 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C18D0, memory_order_acquire) & 1) == 0)
  {
    v96 = __cxa_guard_acquire(&qword_1EE1C18D0);
    if (v96)
    {
      qword_1EE1C18C8 = re::getCombinedScopeHash(v96, v97, v98);
      __cxa_guard_release(&qword_1EE1C18D0);
    }
  }

  v105 = this;
  v8 = "N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v9 = ("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  v12 = 0x7FFFFFFFLL;
  if (*(a4 + 12))
  {
    v13 = (qword_1EE1C18C8 + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8;
    v14 = *(*(a4 + 13) + 4 * (v13 % *(a4 + 30)));
    if (v14 != 0x7FFFFFFF)
    {
      v15 = *(a4 + 14);
      v12 = 0x7FFFFFFFLL;
      while (*(v15 + 24 * v14 + 8) != v13)
      {
        v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
        if (v14 == 0x7FFFFFFF)
        {
          goto LABEL_12;
        }
      }

      v12 = v14;
    }
  }

LABEL_12:
  v16 = *(*(a4 + 14) + 24 * v12 + 16);
  v17 = [*(*(a4 + 1) + 208) supportsTexture2DMultisampleArray];
  v130 = 2;
  v132 = -1;
  v133 = -1;
  v134 = -1;
  v131 = 2;
  v135 = 0;
  v136 = 1;
  __asm { FMOV            V9.2S, #1.0 }

  v137 = _D9;
  v138 = xmmword_1E3108CF0;
  v139 = 0x2000000000;
  v140 = -1;
  v141 = -1;
  v142 = -1;
  v144 = 0;
  if (a3)
  {
    v23 = *a3;
    if (*a3)
    {
      v24 = a3[1];
      if (v24)
      {
        v25 = a3 + 2;
        do
        {
          v23 = 31 * v23 + v24;
          v26 = *v25++;
          v24 = v26;
        }

        while (v26);
      }

      v27 = ((v23 & 0x7FFFFFFFFFFFFFFFLL) + 0x6EC7A19091F839F0) ^ 0x6AD7693626249265;
    }

    else
    {
      v27 = 0x410C8A6B7DCAB95;
    }

    v143 = v27;
    re::RenderFrame::createTarget(a4, &v130, "ProjectiveMeshShadowMapTexture", &v129);
    v29 = *a3;
    if (*a3)
    {
      v30 = a3[1];
      if (v30)
      {
        v31 = a3 + 2;
        do
        {
          v29 = 31 * v29 + v30;
          v32 = *v31++;
          v30 = v32;
        }

        while (v32);
      }

      v28 = ((v29 & 0x7FFFFFFFFFFFFFFFLL) - 0x48C249494DF020D1) ^ 0x2C37E112E1E92C60;
    }

    else
    {
      v28 = 0x9B0A57A453E6F34FLL;
    }
  }

  else
  {
    v143 = 0x8410C8A6B7DCAB8ALL;
    re::RenderFrame::createTarget(a4, &v130, "ProjectiveMeshShadowMapTexture", &v129);
    v28 = 0x1B0A57A453E6F34ELL;
  }

  v143 = v28;
  re::RenderFrame::createTarget(a4, &v130, "TiledShadowDepthPrepassDepthAsColorTexture", &v128);
  v33 = *(v16 + 24);
  if (v33 >= 0x800)
  {
    v33 = 2048;
  }

  v125.n128_u64[0] = 0xA00000000;
  v34 = *(v16 + 16);
  v125.n128_u32[2] = 8;
  v125.n128_u32[3] = v34;
  *v126 = v34;
  *&v126[4] = 4;
  *&v126[12] = 0xFFFFFFFF00000001;
  *&v126[8] = v33;
  *&v126[20] = 0;
  v126[24] = 0;
  *&v126[28] = _D9;
  *&v126[36] = xmmword_1E3108CF0;
  *&v126[52] = xmmword_1E3108D00;
  *&v126[68] = -1;
  BYTE8(v127) = 0;
  *&v126[72] = 0;
  *&v127 = 0;
  v136 = 0;
  if (a3)
  {
    v35 = *a3;
    if (*a3)
    {
      v36 = a3[1];
      if (v36)
      {
        v37 = a3 + 2;
        do
        {
          v35 = 31 * v35 + v36;
          v38 = *v37++;
          v36 = v38;
        }

        while (v38);
      }

      v39 = ((v35 & 0x7FFFFFFFFFFFFFFFLL) + 0x7E3991D5E64B1818) ^ 0x6B14F36D04976B05;
    }

    else
    {
      v39 = 0x152D62B8E2DC731DLL;
    }

    v143 = v39;
    re::RenderFrame::createTarget(a4, &v130, "MeshShadowDepthTexture", &v124);
    v41 = *a3;
    if (*a3)
    {
      v42 = a3[1];
      if (v42)
      {
        v43 = a3 + 2;
        do
        {
          v41 = 31 * v41 + v42;
          v44 = *v43++;
          v42 = v44;
        }

        while (v44);
      }

      v40 = ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 0x43FD21140289B149) ^ 0x284EDEB613E4CA80;
    }

    else
    {
      v40 = 0x944C005DEE928437;
    }
  }

  else
  {
    v143 = 0x952D62B8E2DC7312;
    re::RenderFrame::createTarget(a4, &v130, "MeshShadowDepthTexture", &v124);
    v40 = 0x144C005DEE928436;
  }

  v143 = v40;
  re::RenderFrame::createTarget(a4, &v130, "MeshShadowMippedColorTexture", &v123);
  v122 = 0;
  v45 = -1;
  v120 = -1;
  v121 = -1;
  v106 = a2;
  if (!v17)
  {
    v103 = 0;
    v102 = -1;
    if (a3)
    {
      goto LABEL_44;
    }

LABEL_50:
    v143 = 0x83ACB02986EA930ELL;
    re::RenderFrame::createTarget(a4, &v130, "MeshShadowIntermediateTexture", &v117);
    v52 = 0xEF58166664F92BFBLL;
    goto LABEL_58;
  }

  v152 = *&v126[48];
  v153 = *&v126[64];
  v154 = v127;
  v150 = v125;
  *v151 = *v126;
  *&v151[16] = *&v126[16];
  *&v151[32] = *&v126[32];
  v150.n128_u32[1] = 250;
  re::RenderFrame::createTarget(a4, &v150, "MeshShadowDepthMsaaTexture", &v108);
  v103 = v108;
  v45 = v109;
  v102 = HIDWORD(v109);
  v119 = v124;
  *(re::RenderGraphResourceDescriptions::targetDescription((a4 + 3672), &v119) + 84) = v45;
  re::RenderFrame::createTarget(a4, &v125, "MeshShadowColorMsaaTexture", &v108);
  v122 = v108;
  v46 = v109;
  v120 = HIDWORD(v109);
  v121 = v109;
  v118 = v123;
  *(re::RenderGraphResourceDescriptions::targetDescription((a4 + 3672), &v118) + 84) = v46;
  if (!a3)
  {
    goto LABEL_50;
  }

LABEL_44:
  v47 = *a3;
  if (*a3)
  {
    v48 = a3[1];
    if (v48)
    {
      v49 = a3 + 2;
      do
      {
        v47 = 31 * v47 + v48;
        v50 = *v49++;
        v48 = v50;
      }

      while (v50);
    }

    v51 = ((v47 & 0x7FFFFFFFFFFFFFFFLL) + 0x636D32B42A3881CLL) ^ 0x59A6302C4491B15;
  }

  else
  {
    v51 = 0x3ACB02986EA9309;
  }

  v143 = v51;
  re::RenderFrame::createTarget(a4, &v130, "MeshShadowIntermediateTexture", &v117);
  v53 = *a3;
  if (*a3)
  {
    v54 = a3[1];
    if (v54)
    {
      v55 = a3 + 2;
      do
      {
        v53 = 31 * v53 + v54;
        v56 = *v55++;
        v54 = v56;
      }

      while (v56);
    }

    v52 = ((v53 & 0x7FFFFFFFFFFFFFFFLL) + 0x6C6DB52C1B1614E0) ^ 0x335A34A7FEF3F24;
  }

  else
  {
    v52 = 0x6F58166664F92BC4;
  }

LABEL_58:
  v143 = v52;
  v136 = 1;
  re::RenderFrame::createTarget(a4, &v130, "MeshShadowMippedReceiverDepthColorTexture", &v116);
  if (v17 && (v57 = *(a4 + 1), v57[371] == 1) && *v57 == 1)
  {
    v152 = *&v126[48];
    v153 = *&v126[64];
    v154 = v127;
    v150 = v125;
    *v151 = *v126;
    *&v151[16] = *&v126[16];
    *&v151[32] = *&v126[32];
    v150.n128_u32[1] = 60;
    re::RenderFrame::createTarget(a4, &v150, "MeshShadowReceiverDepthColorMsaaTexture", &v108);
    v58 = v108;
    v104 = v109;
    v115 = v116;
    *(re::RenderGraphResourceDescriptions::targetDescription((a4 + 3672), &v115) + 84) = v104;
  }

  else
  {
    v58 = 0;
    v104 = -1;
  }

  LODWORD(v108) = 2;
  v109 = -1;
  v110 = 1;
  v111 = 1065353216;
  v112 = 0xFFFFFFFF00000020;
  v113 = -1;
  if (a3)
  {
    v59 = *a3;
    if (*a3)
    {
      v60 = a3[1];
      if (v60)
      {
        v61 = a3 + 2;
        do
        {
          v59 = 31 * v59 + v60;
          v62 = *v61++;
          v60 = v62;
        }

        while (v62);
      }

      v63 = ((v59 & 0x7FFFFFFFFFFFFFFFLL) + 0x1C7D868D2399E17CLL) ^ 0x19DF38FA543D0095;
    }

    else
    {
      v63 = 0x5A2BE7777A4E1E9;
    }
  }

  else
  {
    v63 = 0x85A2BE7777A4E1EELL;
  }

  v114 = v63;
  re::RenderFrame::createBuffer(a4, &v108, "MeshShadowMipDescriptionBuffer", &v107);
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "MeshShadowRenderGraph", 7uLL);
  v65 = re::globalAllocators(RenderGraph);
  v66 = (*(*v65[2] + 32))(v65[2], 264, 8);
  v67 = re::RenderGraphNode::RenderGraphNode(v66, "CopyShadowTextures");
  *v67 = &unk_1F5D0F188;
  v150.n128_u64[0] = v67;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v150);
  v66[3] = *(RenderGraph + 10);
  v66[4] = *(RenderGraph + 12);
  v66[6] = *(RenderGraph + 13);
  v150 = v107;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v66 + 18), &v150);
  v150 = v128;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v66 + 28), &v150);
  v150 = v129;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v66 + 28), &v150);
  v68 = *(v16 + 28);
  v69 = *(a4 + 1);
  if (v69[371] == 1 && *v69 == 1)
  {
    TiledShadowDepthPrepassMap = re::RenderGraph::addNode<re::GenerateTiledShadowDepthPrepassMapNode>(RenderGraph);
    v71 = TiledShadowDepthPrepassMap;
    v150 = v123;
    if (v17)
    {
      *v151 = 0x600000000;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((TiledShadowDepthPrepassMap + 224), &v150);
      v101 = v122;
      v150.n128_u64[0] = v122;
      v99 = v120;
      v100 = v121;
      v150.n128_u64[1] = __PAIR64__(v120, v121);
      *v151 = 0x100000000;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150 = v116;
      *v151 = 0x600000001;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150.n128_u64[0] = v58;
      v150.n128_u64[1] = v104;
      *v151 = 0x100000001;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150 = v124;
      *v151 = 0x700000000;
      *&v151[16] = xmmword_1E30474D0;
      *&v151[32] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150.n128_u64[0] = v103;
      v150.n128_u64[1] = __PAIR64__(v102, v45);
      *v151 = 0x200000000;
      *&v151[16] = xmmword_1E30474D0;
      *&v151[32] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      ProjectiveMeshShadowMap = re::RenderGraph::addNode<re::GenerateProjectiveMeshShadowMapNode>(RenderGraph);
      memset(v149 + 8, 0, 18);
      v150 = v123;
      *v151 = 0x600000000;
      *&v151[8] = *&v149[0];
      *&v151[18] = 0u;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v150.n128_u64[0] = v101;
      v150.n128_u64[1] = __PAIR64__(v99, v100);
      *v151 = 0x100000000;
      *&v151[8] = v149[0];
      *&v151[18] = *(v149 + 10);
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v147 = 0;
      v146 = 0;
      v148 = 0;
      v150 = v116;
      *v151 = 0xA00000001;
      *&v151[8] = v145;
      *&v151[18] = 0u;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v150 = v124;
      *v151 = 0x700000000;
      *&v151[16] = xmmword_1E30474D0;
      *&v151[32] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v150.n128_u64[0] = v103;
      v150.n128_u64[1] = __PAIR64__(v102, v45);
    }

    else
    {
      *v151 = 0x100000000;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((TiledShadowDepthPrepassMap + 224), &v150);
      v150 = v116;
      *v151 = 0x100000001;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      v150 = v124;
      *v151 = 0x200000000;
      *&v151[16] = xmmword_1E30474D0;
      *&v151[32] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v71 + 224), &v150);
      ProjectiveMeshShadowMap = re::RenderGraph::addNode<re::GenerateProjectiveMeshShadowMapNode>(RenderGraph);
      memset(v149 + 8, 0, 18);
      v150 = v123;
      *v151 = 0x100000000;
      *&v151[8] = *&v149[0];
      *&v151[18] = 0u;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      memset(v149 + 8, 0, 18);
      v150 = v116;
      *v151 = 0xA00000001;
      *&v151[8] = *&v149[0];
      *&v151[18] = 0u;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
      v150 = v124;
    }

    *v151 = 0x200000000;
    *&v151[16] = xmmword_1E30474D0;
    *&v151[32] = 0;
    *&v151[36] = 0;
    re::DynamicArray<re::TargetWrite>::add((ProjectiveMeshShadowMap + 224), &v150);
    v80 = v105;
    v79 = v106;
  }

  else
  {
    v73 = re::RenderGraph::addNode<re::GenerateTiledShadowDepthPrepassMapNode>(RenderGraph);
    v150 = v124;
    *v151 = 0x200000000;
    *&v151[16] = xmmword_1E30474D0;
    *&v151[32] = 0;
    *&v151[36] = 0;
    re::DynamicArray<re::TargetWrite>::add((v73 + 224), &v150);
    v150 = v116;
    *v151 = 0x100000001;
    *&v151[16] = xmmword_1E3047670;
    *&v151[32] = v68;
    *&v151[36] = 0;
    re::DynamicArray<re::TargetWrite>::add((v73 + 224), &v150);
    v74 = re::RenderGraph::addNode<re::GenerateProjectiveMeshShadowMapNode>(RenderGraph);
    v75 = v74;
    if (v17)
    {
      v150 = v123;
      *v151 = 0x600000000;
      *&v151[16] = xmmword_1E3047670;
      *&v151[32] = v68;
      *&v151[40] = 0;
      *&v151[36] = 0;
      re::DynamicArray<re::TargetWrite>::add((v74 + 224), &v150);
      v76 = &v122;
      v77 = &v120;
      v78 = &v121;
    }

    else
    {
      v78 = &v123.n128_u32[2];
      v77 = &v123.n128_u32[3];
      v76 = &v123;
    }

    v80 = v105;
    v79 = v106;
    v150.n128_u64[0] = v76->n128_u64[0];
    v81 = *v77;
    v150.n128_u32[2] = *v78;
    v150.n128_u32[3] = v81;
    *v151 = 0x100000000;
    *&v151[16] = xmmword_1E3047670;
    *&v151[32] = v68;
    *&v151[40] = 0;
    *&v151[36] = 0;
    re::DynamicArray<re::TargetWrite>::add((v75 + 224), &v150);
    v150 = v116;
    *v151 = 0;
    *&v151[8] = 2;
    re::DynamicArray<re::TargetRead>::add((v75 + 184), &v150);
  }

  v83 = re::globalAllocators(v82);
  v84 = (*(*v83[2] + 32))(v83[2], 592, 16);
  v85 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v84, "MeshShadowGenerateMips");
  *v85 = &unk_1F5D0F428;
  *(v85 + 31) = 0u;
  *(v85 + 32) = 0u;
  v86 = re::DynamicString::setCapacity((v84 + 496), 0);
  *(v84 + 528) = 0u;
  *(v84 + 544) = 0u;
  re::DynamicString::setCapacity((v84 + 528), 0);
  *(v84 + 576) = 0;
  *(v84 + 560) = 0u;
  v150.n128_u64[0] = v84;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v150);
  *(v84 + 24) = *(RenderGraph + 10);
  *(v84 + 32) = *(RenderGraph + 12);
  *(v84 + 48) = *(RenderGraph + 13);
  re::AssetHandle::operator=(v84 + 264, v80 + 5);
  v150.n128_u64[0] = "meshShadowCalculateMip";
  v150.n128_u64[1] = 22;
  re::DynamicString::operator=((v84 + 528), &v150);
  v150.n128_u64[0] = "meshShadowGenerateMip";
  v150.n128_u64[1] = 21;
  re::DynamicString::operator=((v84 + 496), &v150);
  v150 = v123;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v84 + 184), &v150);
  v150 = v116;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v84 + 184), &v150);
  v150 = v123;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v84 + 224), &v150);
  v150 = v116;
  *v151 = 0x100000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v84 + 224), &v150);
  v150 = v107;
  *v151 = 0x500000000;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v84 + 144), &v150);
  re::MeshShadowGenerateMipmapNode::configure(v84, v79, a3, a4);
  v87 = re::RenderGraph::addNode<re::ProjectiveMeshShadowBlurNode>(RenderGraph, "MeshShadowBlurShadowX");
  re::AssetHandle::operator=(v87 + 264, v80 + 5);
  v150.n128_u64[0] = "projectiveMeshShadowDilateHorizontal";
  v150.n128_u64[1] = 36;
  re::DynamicString::operator=((v87 + 288), &v150);
  v88 = v117;
  if ((*(v87 + 320) & 1) == 0)
  {
    *(v87 + 320) = 1;
  }

  *(v87 + 328) = v88;
  v150 = v123;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v87 + 184), &v150);
  v150 = v116;
  *v151 = 1;
  *&v151[4] = 0;
  v151[6] = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v87 + 184), &v150);
  v150 = v107;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v87 + 104), &v150);
  v150 = v117;
  *v151 = 0x500000002;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[40] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v87 + 224), &v150);
  *(v87 + 124) = 0;
  re::ProjectiveMeshShadowBlurNode::configure(v87, v79, a3, a4);
  v89 = re::RenderGraph::addNode<re::ProjectiveMeshShadowBlurNode>(RenderGraph, "MeshShadowBlurShadowY");
  re::AssetHandle::operator=(v89 + 264, v80 + 5);
  v150.n128_u64[0] = "projectiveMeshShadowDilateVertical";
  v150.n128_u64[1] = 34;
  re::DynamicString::operator=((v89 + 288), &v150);
  v90 = v129;
  if ((*(v89 + 320) & 1) == 0)
  {
    *(v89 + 320) = 1;
  }

  *(v89 + 328) = v90;
  v150 = v117;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v89 + 184), &v150);
  v150 = v116;
  *v151 = 1;
  *&v151[4] = 0;
  v151[6] = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v89 + 184), &v150);
  v150 = v107;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v89 + 104), &v150);
  v150 = v123;
  *v151 = 0x500000002;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v89 + 224), &v150);
  *(v89 + 124) = 1;
  v91 = re::ProjectiveMeshShadowBlurNode::configure(v89, v79, a3, a4);
  v92 = re::globalAllocators(v91);
  v93 = (*(*v92[2] + 32))(v92[2], 496, 16);
  v94 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v93, "MeshShadowGenerateFinalTexture");
  *v94 = &unk_1F5D0F4E8;
  v150.n128_u64[0] = v94;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v150);
  v93[3] = *(RenderGraph + 10);
  v93[4] = *(RenderGraph + 12);
  v93[6] = *(RenderGraph + 13);
  re::AssetHandle::operator=((v93 + 33), v80 + 5);
  v150.n128_u64[0] = "meshShadowGenerateFinalTexture";
  v150.n128_u64[1] = 30;
  re::DynamicString::operator=((v93 + 36), &v150);
  v150 = v123;
  *v151 = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v93 + 23), &v150);
  v150 = v116;
  *v151 = 1;
  *&v151[4] = 0;
  v151[6] = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v93 + 23), &v150);
  v150 = v107;
  *v151 = 1;
  *&v151[4] = 0;
  v151[6] = 0;
  *&v151[8] = 2;
  re::DynamicArray<re::TargetRead>::add((v93 + 13), &v150);
  v150 = v129;
  *v151 = 0x100000002;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  re::DynamicArray<re::TargetWrite>::add((v93 + 28), &v150);
  v150 = v128;
  *v151 = 0x100000003;
  *&v151[16] = xmmword_1E30474D0;
  *&v151[32] = 0;
  *&v151[36] = 0;
  v95 = re::DynamicArray<re::TargetWrite>::add((v93 + 28), &v150);
  (*(*v93 + 80))(v93, v79, a3, a4, v95);
  v150.n128_u64[0] = 0x26220881977C39BCLL;
  re::RenderFrame::addTargetOutput(a4, v150.n128_u64, v129.n128_f64, "ProjectiveMeshShadowMapScope");
  v150.n128_u64[0] = 0x25C1E79857068EA3;
  re::RenderFrame::addTargetOutput(a4, v150.n128_u64, v128.n128_f64, "ProjectiveMeshShadowMapScope");
  v150.n128_u64[0] = 0x5878D331D268CBA0;
  re::RenderFrame::addBufferOutput(a4, v150.n128_u64, v107.n128_f64, "ProjectiveMeshShadowMapScope");
}

re::RenderGraphNode *re::RenderGraph::addNode<re::GenerateTiledShadowDepthPrepassMapNode>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  v4 = re::RenderGraphNode::RenderGraphNode(v3, "GenerateTiledShadowDepthPrepassMap");
  *(v4 + 66) = 1;
  *(v4 + 268) = 0;
  *v4 = &unk_1F5D0F230;
  v8 = v4;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 13);
  *(v3 + 3) = *(a1 + 10);
  *(v3 + 4) = v5;
  *(v3 + 6) = v6;
  return v3;
}

re::RenderGraphNode *re::RenderGraph::addNode<re::GenerateProjectiveMeshShadowMapNode>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 264, 8);
  v4 = re::RenderGraphNode::RenderGraphNode(v3, "GenerateProjectiveMeshShadowMap");
  *v4 = &unk_1F5D0F2D8;
  v8 = v4;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 13);
  *(v3 + 3) = *(a1 + 10);
  *(v3 + 4) = v5;
  *(v3 + 6) = v6;
  return v3;
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::ProjectiveMeshShadowBlurNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 688, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D0F5A8;
  *(v6 + 504) = 0u;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0u;
  *(v6 + 568) = 0u;
  *(v6 + 584) = 0u;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 0u;
  *(v6 + 648) = 0u;
  *(v6 + 664) = 0u;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

void re::MeshShadowProvider::~MeshShadowProvider(re::MeshShadowProvider *this)
{
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphGenerateMipmapsNode::execute(re::RenderGraphGenerateMipmapsNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v9, 5062, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(a2, 0, &v8);
  v4 = *(this + 30);
  if (v4)
  {
    v5 = *(this + 32);
    v6 = v4 << 6;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v5, 0, 0, &v7);
      re::mtl::BlitCommandEncoder::generateMipmaps(&v8, v7);
      if (v7)
      {
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v9);
}

uint64_t re::RenderGraphGenerateMipmapsNode::validateAttachmentsDuringGraphBuild(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    re::DynamicString::format("(%s): Buffer reads not supported for RenderGraphGenerateMipmapsNode.", &v4, *(result + 16));
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[20])
  {
    re::DynamicString::format("(%s): Buffer writes not supported for RenderGraphGenerateMipmapsNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25])
  {
    re::DynamicString::format("(%s): Target reads not supported for RenderGraphGenerateMipmapsNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphTargetCopyNode::setup(_BOOL8 this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v5 = this;
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(this + 240);
  if (v6)
  {
    v7 = v6 << 6;
    v8 = (*(this + 256) + 20);
    do
    {
      if (*v8 != 4)
      {
        *v8 = 4;
        if ((atomic_exchange(&re::RenderGraphTargetCopyNode::setup(re::RenderGraphBuilder &,re::RenderGraphDataStore &)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v9 = *re::graphicsLogObjects(this);
          this = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (this)
          {
            v10 = *(v5 + 2);
            *buf = 136315138;
            v12 = v10;
            _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "(%s): Defaulting target write type to kWriteBlit. Other operation types are not supported.", buf, 0xCu);
          }
        }
      }

      v8 += 16;
      v7 -= 64;
    }

    while (v7);
  }

  re::RenderGraphNode::setup(v5, a2, a3);
}

void re::RenderGraphTargetCopyNode::execute(re::RenderGraphTargetCopyNode *this, re::RenderGraphContext *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v24, 5064, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(a2, 0, &v23);
  if (*(this + 25))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      re::RenderGraphContext::metalTexture(a2, *(this + 27) + 32 * v4, 0, 0, &v22);
      v6 = *(this + 30);
      if (v6 <= v4)
      {
        v25 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        *v34 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        v29 = 789;
        v30 = 2048;
        v31 = v4;
        v32 = 2048;
        v33 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::RenderGraphContext::metalTexture(a2, *(this + 32) + (v4 << 6), 0, 0, v34);
      v7 = v22;
      if (*(this + 368) == 1)
      {
        re::mtl::BlitCommandEncoder::textureCopy(&v23, v22, v34[0]);
      }

      else
      {
        v8 = *(this + 34);
        v21 = *(this + 33);
        v9 = *(this + 35);
        v10 = *(this + 36);
        v11 = *(this + 37);
        v12 = [v22 width];
        if (v12 >= *(this + 38))
        {
          v13 = *(this + 38);
        }

        else
        {
          v13 = v12;
        }

        v14 = [v22 height];
        v15 = a2;
        if (v14 >= *(this + 39))
        {
          v16 = *(this + 39);
        }

        else
        {
          v16 = v14;
        }

        v17 = [v22 depth];
        v18 = *(this + 40);
        if (v17 < v18)
        {
          v18 = v17;
        }

        v20 = v16;
        a2 = v15;
        re::mtl::BlitCommandEncoder::textureCopy(&v23, v7, v21, v8, v9, v10, v11, v13, v20, v18, v34[0], *(this + 41), *(this + 42), *(this + 43), *(this + 44), *(this + 45));
      }

      if (v34[0])
      {
      }

      if (v22)
      {
      }

      v4 = v5;
    }

    while (*(this + 25) > v5++);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v24);
}

uint64_t re::RenderGraphTargetCopyNode::validateAttachmentsDuringGraphBuild(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    re::DynamicString::format("(%s): Buffer reads not supported for RenderGraphTargetCopyNode.", &v4, *(result + 16));
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[20])
  {
    re::DynamicString::format("(%s): Buffer writes not supported for RenderGraphTargetCopyNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25] != v3[30])
  {
    re::DynamicString::format("(%s): Target reads must match up with the same number of target writes for RenderGraphTargetCopyNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphCopyEntityAttributeBufferNode::setup(_BOOL8 this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v5 = this;
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(this + 160);
  if (v6)
  {
    v7 = v6 << 6;
    v8 = (*(this + 176) + 20);
    do
    {
      if (*v8 != 4)
      {
        *v8 = 4;
        if ((atomic_exchange(re::RenderGraphCopyEntityAttributeBufferNode::setup(re::RenderGraphBuilder &,re::RenderGraphDataStore &)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v9 = *re::graphicsLogObjects(this);
          this = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (this)
          {
            v10 = *(v5 + 2);
            *buf = 136315138;
            v12 = v10;
            _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "(%s): Defaulting buffer write type to kWriteBlit. Other operation types are not supported.", buf, 0xCu);
          }
        }
      }

      v8 += 16;
      v7 -= 64;
    }

    while (v7);
  }

  re::RenderGraphNode::setup(v5, a2, a3);
}

void re::RenderGraphCopyEntityAttributeBufferNode::execute(re::RenderGraphCopyEntityAttributeBufferNode *this, re::RenderGraphContext *a2)
{
  v111 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v104, 5095, 0);
  v3 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v3)
  {
    v4 = v3;
    v5 = *(*a2 + 32);
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v103 = 0x7FFFFFFFLL;
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(&v100, v5, 3);
    v78 = *(v4 + 840);
    v76 = *(v78 + 40);
    if (!v76)
    {
      goto LABEL_41;
    }

    v6 = 0;
    v7 = -1;
    v81 = a2;
    while (1)
    {
      v77 = v6;
      v8 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v78, v6);
      v10 = *(v8 + 16);
      if (v10)
      {
        break;
      }

LABEL_38:
      v6 = v77 + 1;
      if (v77 + 1 == v76)
      {
        goto LABEL_42;
      }
    }

    v11 = *(v8 + 32);
    v12 = v11 + 736 * v10;
    v79 = v12;
    while (1)
    {
      if (*(v11 + 512) == *(this + 33))
      {
        v90[0] = v11;
        v13 = *(v11 + 112);
        v90[1] = *v13;
        v90[2] = v13[1];
        v14 = *(v11 + 8);
        v92[0] = 0;
        v92[1] = v14;
        v93 = xmmword_1E3047670;
        v94 = xmmword_1E3047680;
        v95 = xmmword_1E30476A0;
        v96 = xmmword_1E30474D0;
        v97 = 0;
        v98 = 0;
        v83 = v11;
        if (!*(v11 + 56))
        {
          *&v99 = v92;
          *(&v99 + 1) = 1;
          v85 = 1;
LABEL_11:
          a2 = 0;
          while (1)
          {
            v89[0] = v90;
            v89[1] = a2;
            v15 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v89, v9);
            v16 = v15[1];
            v17 = v16 >= *v15;
            v18 = v16 - *v15;
            v19 = v17 ? v18 : 0;
            if (v18 != 0 && v17)
            {
              break;
            }

LABEL_35:
            a2 = (a2 + 1);
            if (a2 == v85)
            {
              goto LABEL_36;
            }
          }

          v20 = 0;
LABEL_18:
          v21 = *v89[0];
          v22 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v89, v9);
          v23 = re::Slice<re::internal::BindPointImplBase const*>::range(v21, *v22, v22[1]);
          if (v24 <= v20)
          {
            re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v24);
            _os_crash();
            __break(1u);
LABEL_41:
            v7 = -1;
LABEL_42:
            re::RenderGraphContext::acquireManagedBlitCommandEncoder(a2, 0, v89);
            v35 = *(this + 20);
            if (!v35)
            {
              goto LABEL_81;
            }

            v36 = *(this + 22);
            v80 = v36 + (v35 << 6);
            v37 = 0xBF58476D1CE4E5B9;
            v38 = 0x94D049BB133111EBLL;
            v39 = (v7 + 1);
            v82 = a2;
LABEL_44:
            v84 = v36;
            v40 = re::RenderGraphContext::metalBuffer(a2, v36);
            LOBYTE(v90[0]) = 0;
            v91 = -1;
            v41 = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v90, v40);
            v92[0] = *(v40 + 32);
            if (v7 < 0)
            {
              goto LABEL_78;
            }

            v42 = 0;
            v43 = 0;
LABEL_46:
            if (!v100 || (v44 = (((v42 ^ (v42 >> 30)) * v37) ^ (((v42 ^ (v42 >> 30)) * v37) >> 27)) * v38, v45 = *(*(&v100 + 1) + 4 * ((v44 ^ (v44 >> 31)) % DWORD2(v101))), v45 == 0x7FFFFFFF))
            {
LABEL_51:
              v47 = *re::graphicsLogObjects(v41);
              v41 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
              if (!v41)
              {
                goto LABEL_55;
              }

              v48 = *(this + 2);
              *buf = 136315394;
              v106 = v48;
              v107 = 1024;
              LODWORD(v108) = v42;
              v49 = v47;
              v50 = "(%s): Missing material index: %d";
            }

            else
            {
              v46 = *(*(&v100 + 1) + 4 * ((v44 ^ (v44 >> 31)) % DWORD2(v101)));
              while (v42 != *(v101 + 24 * v46 + 4))
              {
                v46 = *(v101 + 24 * v46) & 0x7FFFFFFF;
                if (v46 == 0x7FFFFFFF)
                {
                  goto LABEL_51;
                }
              }

              v52 = *(v101 + 24 * v45 + 4);
              for (i = *(*(&v100 + 1) + 4 * ((v44 ^ (v44 >> 31)) % DWORD2(v101))); v42 != v52; v45 = i)
              {
                i = *(v101 + 24 * i) & 0x7FFFFFFF;
                v45 = 0x7FFFFFFF;
                if (i == 0x7FFFFFFF)
                {
                  break;
                }

                v52 = *(v101 + 24 * i + 4);
              }

              v54 = *(v101 + 24 * v45 + 8);
              if (v54)
              {
                v88 = *(this + 34) >> 1;
                v55 = v54;
                do
                {
                  v56 = v55;
                  v55 = *v55;
                }

                while (v55 && !v56[8]);
                v57 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v56 + 5, &v88);
                v58 = v54;
                if (v57 != -1)
                {
                  do
                  {
                    v59 = v58;
                    v58 = *v58;
                  }

                  while (v58 && !v59[8]);
                  v60 = *(v59[6] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v59 + 5, &v88) + 8);
                  v61 = re::AttributeTable::buffers(v54);
                  if (v62 <= v60)
                  {
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v60, v62);
                    _os_crash();
                    __break(1u);
                  }

                  v63 = v61 + 24 * v60;
                  v64 = *(v63 + 5);
                  if (v43 + v64 > HIDWORD(v92[0]))
                  {
                    v74 = *re::graphicsLogObjects(v61);
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                    {
                      v75 = *(this + 2);
                      *buf = 136315138;
                      v106 = v75;
                      _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "(%s): Write buffer not large enough for data.", buf, 0xCu);
                    }

LABEL_78:
                    if (v91 != -1)
                    {
                      (off_1F5D15D00[v91])(buf, v90);
                    }

                    a2 = v82;
                    v36 = v84 + 64;
                    if (v84 + 64 == v80)
                    {
LABEL_81:

                      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v100);
                      break;
                    }

                    goto LABEL_44;
                  }

                  v86 = *(v63 + 4);
                  v65 = v38;
                  v66 = v37;
                  v67 = *v63;
                  re::BufferSlice::buffer(v90, v62);
                  v68 = v67;
                  v37 = v66;
                  v38 = v65;
                  v39 = (v7 + 1);
                  re::mtl::BlitCommandEncoder::bufferCopy(v89, v68, v86, v90[0], v43 + LODWORD(v92[0]), v64);
                  v43 += v64;
                  goto LABEL_55;
                }

                v71 = *re::graphicsLogObjects(0xFFFFFFFFFFFFFFFFLL);
                v41 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
                if (v41)
                {
                  v72 = *(this + 2);
                  v73 = *(this + 35);
                  *buf = 136315650;
                  v106 = v72;
                  v107 = 2080;
                  v108 = v73;
                  v109 = 1024;
                  v110 = v42;
                  v49 = v71;
                  v50 = "(%s): Unable to find specified vertex buffer [ %s ] at material index %d.";
                  v51 = 28;
LABEL_54:
                  _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, v50, buf, v51);
                }

LABEL_55:
                if (++v42 == v39)
                {
                  goto LABEL_78;
                }

                goto LABEL_46;
              }

              v69 = *re::graphicsLogObjects(v41);
              v41 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
              if (!v41)
              {
                goto LABEL_55;
              }

              v70 = *(this + 2);
              *buf = 136315394;
              v106 = v70;
              v107 = 1024;
              LODWORD(v108) = v42;
              v49 = v69;
              v50 = "(%s): Invalid buffer table at material index %d.";
            }

            v51 = 18;
            goto LABEL_54;
          }

          v25 = *(v23 + 8 * v20);
          v26 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(v89, v20);
          v27 = v26;
          v28 = 0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30));
          v29 = (0x94D049BB133111EBLL * (v28 ^ (v28 >> 27))) ^ ((0x94D049BB133111EBLL * (v28 ^ (v28 >> 27))) >> 31);
          if (v100)
          {
            v30 = *(*(&v100 + 1) + 4 * (v29 % DWORD2(v101)));
            if (v30 != 0x7FFFFFFF)
            {
              while (*(v101 + 24 * v30 + 4) != v26)
              {
                v30 = *(v101 + 24 * v30) & 0x7FFFFFFF;
                if (v30 == 0x7FFFFFFF)
                {
                  goto LABEL_23;
                }
              }

              v33 = *re::graphicsLogObjects(v26);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(this + 2);
                *buf = 136315394;
                v106 = v34;
                v107 = 1024;
                LODWORD(v108) = v27;
                _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "(%s): Duplicate material indices detected: %d. Skipping.", buf, 0x12u);
              }

LABEL_31:
              if (++v20 >= v19)
              {
                goto LABEL_35;
              }

              goto LABEL_18;
            }

LABEL_23:
            v9 = v29 % DWORD2(v101);
            v31 = *(*(&v100 + 1) + 4 * v9);
            if (v31 != 0x7FFFFFFF)
            {
              while (*(v101 + 24 * v31 + 4) != v26)
              {
                LODWORD(v31) = *(v101 + 24 * v31) & 0x7FFFFFFF;
                if (v31 == 0x7FFFFFFF)
                {
                  goto LABEL_28;
                }
              }

              goto LABEL_29;
            }
          }

          else
          {
            LODWORD(v9) = 0;
          }

LABEL_28:
          v32 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v100, v9, v29);
          *(v32 + 4) = v27;
          *(v32 + 8) = v25;
          ++HIDWORD(v103);
LABEL_29:
          if (v27 > v7)
          {
            v7 = v27;
          }

          goto LABEL_31;
        }

        v99 = *(v11 + 48);
        v85 = *(&v99 + 1);
        if (*(&v99 + 1))
        {
          goto LABEL_11;
        }

LABEL_36:
        a2 = v81;
        v11 = v83;
        v12 = v79;
      }

      v11 += 736;
      if (v11 == v12)
      {
        goto LABEL_38;
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v104);
}

uint64_t re::RenderGraphCopyEntityAttributeBufferNode::validateAttachmentsDuringGraphBuild(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 200))
  {
    re::DynamicString::format("(%s): Target reads not supported for RenderGraphCopyEntityAttributeBufferNode.", &v4, *(result + 16));
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[30])
  {
    re::DynamicString::format("(%s): Target writes not supported for RenderGraphCopyEntityAttributeBufferNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[15])
  {
    re::DynamicString::format("(%s): Buffer reads not supported for RenderGraphCopyEntityAttributeBufferNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphSynchronizeTargetNode::execute(re::RenderGraphSynchronizeTargetNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v9, 5066, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(a2, 0, &v8);
  v4 = *(this + 30);
  if (v4)
  {
    v5 = *(this + 32);
    v6 = v4 << 6;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v5, 0, 0, &v7);
      if (v7)
      {
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v9);
}

uint64_t re::RenderGraphSynchronizeTargetNode::validateAttachmentsDuringGraphBuild(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    re::DynamicString::format("(%s): Buffer reads not supported for RenderGraphSynchronizeTargetNode.", &v4, *(result + 16));
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[20])
  {
    re::DynamicString::format("(%s): Buffer writes not supported for RenderGraphSynchronizeTargetNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25])
  {
    re::DynamicString::format("(%s): Target reads not supported for RenderGraphSynchronizeTargetNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphSynchronizeBufferNode::execute(re::RenderGraphSynchronizeBufferNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v10, 5068, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(a2, 0, &v9);
  v4 = *(this + 20);
  if (v4)
  {
    v5 = *(this + 22);
    v6 = v4 << 6;
    do
    {
      v7 = re::RenderGraphContext::metalBuffer(a2, v5);
      re::BufferSlice::buffer(v7, v8);
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v10);
}

uint64_t re::RenderGraphSynchronizeBufferNode::validateAttachmentsDuringGraphBuild(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    re::DynamicString::format("(%s): Buffer reads not supported for RenderGraphSynchronizeTextureNode.", &v4, *(result + 16));
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[30])
  {
    re::DynamicString::format("(%s): Buffer writes not supported for RenderGraphSynchronizeTextureNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25])
  {
    re::DynamicString::format("(%s): Target reads not supported for RenderGraphSynchronizeTextureNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void re::RenderGraphFillBufferNode::execute(re::RenderGraphFillBufferNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v11, 5070, 0);
  re::RenderGraphContext::acquireManagedBlitCommandEncoder(a2, 0, &v10);
  v4 = *(this + 20);
  if (v4)
  {
    v5 = *(this + 22);
    v6 = v4 << 6;
    do
    {
      v7 = re::RenderGraphContext::metalBuffer(a2, v5);
      v9 = re::BufferSlice::buffer(v7, v8);
      re::mtl::BlitCommandEncoder::fillBuffer(&v10, *v9, *(v9 + 32), *(v9 + 36), *(this + 264));
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v11);
}

uint64_t re::RenderGraphFillBufferNode::validateAttachmentsDuringGraphBuild(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    re::DynamicString::format("(%s): Buffer reads not supported for RenderGraphFillBufferNode.", &v4, *(result + 16));
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[30])
  {
    re::DynamicString::format("(%s): Buffer writes not supported for RenderGraphFillBufferNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        result = (*(*v4 + 40))();
      }
    }
  }

  if (v3[25])
  {
    re::DynamicString::format("(%s): Target reads not supported for RenderGraphFillBufferNode.", &v4, v3[2]);
    re::RenderGraphCompiled::addError(a2, &v4);
    result = v4;
    if (v4)
    {
      if (v5)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

void *re::allocInfo_RenderGraphGenerateMipmapsNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_545, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_545))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1A00, "RenderGraphGenerateMipmapsNode");
    __cxa_guard_release(&_MergedGlobals_545);
  }

  return &unk_1EE1C1A00;
}

void re::initInfo_RenderGraphGenerateMipmapsNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x60380926AD0DCD00;
  v10[1] = "RenderGraphGenerateMipmapsNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C18E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C18E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C18E0 = v8;
      __cxa_guard_release(&qword_1EE1C18E8);
    }
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C18E0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphGenerateMipmapsNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphGenerateMipmapsNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphGenerateMipmapsNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphGenerateMipmapsNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphGenerateMipmapsNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15920;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphGenerateMipmapsNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15920;
  return result;
}

void *re::allocInfo_RenderGraphTargetCopyNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C18F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C18F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1A90, "RenderGraphTargetCopyNode");
    __cxa_guard_release(&qword_1EE1C18F0);
  }

  return &unk_1EE1C1A90;
}

void re::initInfo_RenderGraphTargetCopyNode(re *this, re::IntrospectionBase *a2)
{
  v66[0] = 0xB8B72825D799A640;
  v66[1] = "RenderGraphTargetCopyNode";
  if (v66[0])
  {
    if (v66[0])
    {
    }
  }

  *(this + 2) = v67;
  if ((atomic_load_explicit(&qword_1EE1C18F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C18F8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1988 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "sourceSlice";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C1990 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_size_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "sourceLevel";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x11000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C1998 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_size_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "sourceX";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x11800000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C19A0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_size_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "sourceY";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x12000000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1C19A8 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_size_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "sourceZ";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x12800000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1C19B0 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_size_t(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "sourceWidth";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x13000000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1C19B8 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_size_t(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "sourceHeight";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x13800000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1C19C0 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_size_t(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "sourceDepth";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x14000000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1C19C8 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_size_t(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "destSlice";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x14800000009;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1C19D0 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_size_t(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "destLevel";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x1500000000ALL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1C19D8 = v48;
      v49 = re::introspectionAllocator(v48);
      v51 = re::introspect_size_t(1, v50);
      v52 = (*(*v49 + 32))(v49, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "destX";
      *(v52 + 16) = v51;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0x1580000000BLL;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE1C19E0 = v52;
      v53 = re::introspectionAllocator(v52);
      v55 = re::introspect_size_t(1, v54);
      v56 = (*(*v53 + 32))(v53, 72, 8);
      *v56 = 1;
      *(v56 + 8) = "destY";
      *(v56 + 16) = v55;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0x1600000000CLL;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 0;
      qword_1EE1C19E8 = v56;
      v57 = re::introspectionAllocator(v56);
      v59 = re::introspect_size_t(1, v58);
      v60 = (*(*v57 + 32))(v57, 72, 8);
      *v60 = 1;
      *(v60 + 8) = "destZ";
      *(v60 + 16) = v59;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0x1680000000DLL;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      qword_1EE1C19F0 = v60;
      v61 = re::introspectionAllocator(v60);
      v63 = re::introspect_BOOL(1, v62);
      v64 = (*(*v61 + 32))(v61, 72, 8);
      *v64 = 1;
      *(v64 + 8) = "copyAllSlices";
      *(v64 + 16) = v63;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0x1700000000ELL;
      *(v64 + 40) = 0;
      *(v64 + 48) = 0;
      *(v64 + 56) = 0;
      *(v64 + 64) = 0;
      qword_1EE1C19F8 = v64;
      __cxa_guard_release(&qword_1EE1C18F8);
    }
  }

  *(this + 2) = 0x17800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE1C1988;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTargetCopyNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTargetCopyNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTargetCopyNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTargetCopyNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v65 = v67;
}

double re::internal::defaultConstruct<re::RenderGraphTargetCopyNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D159B0;
  result = 0.0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 37) = 0;
  *(v3 + 38) = -1;
  *(v3 + 39) = -1;
  *(v3 + 40) = -1;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 353) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphTargetCopyNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D159B0;
  result = 0.0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 37) = 0;
  *(v1 + 38) = -1;
  *(v1 + 39) = -1;
  *(v1 + 40) = -1;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 353) = 0u;
  return result;
}

void *re::allocInfo_RenderGraphCopyEntityAttributeBufferNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1900))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1B20, "RenderGraphCopyEntityAttributeBufferNode");
    __cxa_guard_release(&qword_1EE1C1900);
  }

  return &unk_1EE1C1B20;
}

void re::initInfo_RenderGraphCopyEntityAttributeBufferNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x8896AD266CD311DCLL;
  v18[1] = "RenderGraphCopyEntityAttributeBufferNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C1908, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1908);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1958 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint64_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "sourceEntityId";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C1960 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::StringID>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "attributeName";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x11000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C1968 = v16;
      __cxa_guard_release(&qword_1EE1C1908);
    }
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C1958;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphCopyEntityAttributeBufferNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphCopyEntityAttributeBufferNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphCopyEntityAttributeBufferNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphCopyEntityAttributeBufferNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphCopyEntityAttributeBufferNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15A40;
  *(result + 33) = 0;
  *(result + 34) = 0;
  *(result + 35) = &str_67;
  return result;
}

void re::internal::defaultDestruct<re::RenderGraphCopyEntityAttributeBufferNode>(uint64_t a1, uint64_t a2, id *a3)
{
  re::StringID::destroyString((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphCopyEntityAttributeBufferNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15A40;
  *(result + 33) = 0;
  *(result + 34) = 0;
  *(result + 35) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphCopyEntityAttributeBufferNode>(id *a1)
{
  re::StringID::destroyString((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void *re::allocInfo_RenderGraphSynchronizeTargetNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1910))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1BB0, "RenderGraphSynchronizeTargetNode");
    __cxa_guard_release(&qword_1EE1C1910);
  }

  return &unk_1EE1C1BB0;
}

void re::initInfo_RenderGraphSynchronizeTargetNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x4E5165E59E70FC96;
  v18[1] = "RenderGraphSynchronizeTargetNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C1918, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1918);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1970 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "slice";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C1978 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_size_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "level";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x11000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C1980 = v16;
      __cxa_guard_release(&qword_1EE1C1918);
    }
  }

  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C1970;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSynchronizeTargetNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSynchronizeTargetNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSynchronizeTargetNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSynchronizeTargetNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphSynchronizeTargetNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15AD0;
  *(result + 33) = 0;
  *(result + 34) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphSynchronizeTargetNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15AD0;
  *(result + 33) = 0;
  *(result + 34) = 0;
  return result;
}

void *re::allocInfo_RenderGraphSynchronizeBufferNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1920))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1C40, "RenderGraphSynchronizeBufferNode");
    __cxa_guard_release(&qword_1EE1C1920);
  }

  return &unk_1EE1C1C40;
}

void re::initInfo_RenderGraphSynchronizeBufferNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x4E4E22A447AD62F4;
  v10[1] = "RenderGraphSynchronizeBufferNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C1930, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1930);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1928 = v8;
      __cxa_guard_release(&qword_1EE1C1930);
    }
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1928;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSynchronizeBufferNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSynchronizeBufferNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSynchronizeBufferNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSynchronizeBufferNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphSynchronizeBufferNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15B60;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphSynchronizeBufferNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15B60;
  return result;
}

void *re::allocInfo_RenderGraphFillBufferNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1938))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1CD0, "RenderGraphFillBufferNode");
    __cxa_guard_release(&qword_1EE1C1938);
  }

  return &unk_1EE1C1CD0;
}

void re::initInfo_RenderGraphFillBufferNode(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x5358828A65A95F3ALL;
  v14[1] = "RenderGraphFillBufferNode";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C1940, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1940);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1948 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint8_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "fillValue";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C1950 = v12;
      __cxa_guard_release(&qword_1EE1C1940);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C1948;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphFillBufferNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphFillBufferNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphFillBufferNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphFillBufferNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphFillBufferNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D15BF0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphFillBufferNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D15BF0;
  return result;
}

void re::RenderGraphGenerateMipmapsNode::~RenderGraphGenerateMipmapsNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphTargetCopyNode::~RenderGraphTargetCopyNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphCopyEntityAttributeBufferNode::~RenderGraphCopyEntityAttributeBufferNode(id *this)
{
  re::StringID::destroyString((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::StringID::destroyString((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphSynchronizeTargetNode::~RenderGraphSynchronizeTargetNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphSynchronizeBufferNode::~RenderGraphSynchronizeBufferNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphFillBufferNode::~RenderGraphFillBufferNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphVisualProxyHighFidelityNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C1D68, memory_order_acquire) & 1) == 0)
  {
    v16 = this;
    v18 = __cxa_guard_acquire(&qword_1EE1C1D68);
    this = v16;
    if (v18)
    {
      _MergedGlobals_546 = re::hashString(v16, v17);
      __cxa_guard_release(&qword_1EE1C1D68);
      this = v16;
    }
  }

  v3 = 0x9E3779B97F4A7C17;
  v4 = _MergedGlobals_546;
  v5 = this[4];
  v6 = strlen(v5);
  if (v6)
  {
    MurmurHash3_x64_128(v5, v6, 0, v19);
    v3 = ((v19[1] + 64 * v19[0] + (v19[0] >> 2) - 0x61C8864680B583E9) ^ v19[0]) - 0x61C8864680B583E9;
  }

  v7 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::VisualProxyHighFidelityHandlerData>>(*(a2 + 146), ((v4 >> 2) + (v4 << 6) + v3) ^ v4);
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 24))
    {
      re::RenderGraphContext::makeBlitCommandEncoder(a2, 0, v19);
      v9 = *(v8 + 24);
      if (v9)
      {
        v10 = *(v8 + 40);
        v11 = &v10[2 * v9];
        do
        {
          v12 = [*v10 width];
          v13 = [*v10 height];
          [v10[1] width];
          [v10[1] height];
          v14 = *v10;
          v15 = v10[1];
          v10 += 2;
          re::mtl::BlitCommandEncoder::textureCopy(v19, v14, 0, 0, 0, 0, 0, v12, v13, 1, v15, 0, 0, 0, 0, 0);
        }

        while (v10 != v11);
      }

      re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(a2, v19, 1);
    }
  }
}

void re::RenderGraphVisualProxyHighFidelityNode::~RenderGraphVisualProxyHighFidelityNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

re::RenderGraphMeshNode *re::RenderGraphMeshNode::RenderGraphMeshNode(re::RenderGraphMeshNode *this, const char *a2)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v3 + 66) = 1;
  *(v3 + 268) = 0;
  *v3 = &unk_1F5D15DC8;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  re::DynamicString::setCapacity(this + 34, 0);
  *(this + 42) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *(this + 82) = 0;
  *(this + 86) = 2;
  return this;
}

void re::RenderGraphMeshNode::setup(re::RenderGraphMeshNode *this, _anonymous_namespace_ **a2, re::RenderGraphDataStore *a3)
{
  v6 = *(this + 35);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (!v7)
  {
    re::DynamicString::format("(%s): No material pass set", &v8, *(this + 2));
    re::RenderGraphBuilder::addError(a2[83], &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

uint64_t re::RenderGraphBuilder::addError(_anonymous_namespace_ *a1, uint64_t a2)
{
  v4.n128_u64[0] = 2000;
  v4.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
  v5 = *a2;
  v7 = *(a2 + 24);
  v6 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = re::DynamicArray<re::DetailedError>::add(a1, &v4);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))(v2);
    }
  }

  return result;
}

void re::RenderGraphMeshNode::execute(re::RenderGraphMeshNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v26, 5030, 0);
  v4 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = re::Hash<re::DynamicString>::operator()(&v22, this + 272);
  v6 = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v6)
  {
    MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(v6, v5);
  }

  else
  {
    MeshPartBucket = 0;
  }

  v8 = re::RenderGraphDataStore::tryGet<re::MeshNodeFilterData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v8)
  {
    v10 = *(v8 + 8);
    v9 = v10 & 0xFFFFFFFF00000000;
    v10 = v10;
    if (!MeshPartBucket)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    if (!MeshPartBucket)
    {
      goto LABEL_14;
    }
  }

  v22 = MeshPartBucket;
  v23 = 0;
  v24 = 65280;
  v11 = *(this + 345);
  v25 = v11 == 0;
  v12 = *(this + 344);
  v21[0] = 0;
  if (*(this + 280))
  {
    v13 = *(this + 36);
  }

  else
  {
    v13 = this + 281;
  }

  v14 = *(this + 40);
  v18[0] = *(this + 42);
  v18[1] = v14;
  v19 = 0;
  v20 = 0;
  v15 = *(this + 347);
  if (v15 == 1)
  {
    v17 = *(this + 364);
    v16 = *(this + 348);
  }

  re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(this, a2, &v22, 1uLL, (v9 | v10), 0, v4, v12, v21, v11, v13, v18, 0, &v15);
LABEL_14:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v26);
}

double re::RenderGraphMultiPassMeshNode::RenderGraphMultiPassMeshNode(re::RenderGraphMultiPassMeshNode *this, const char *a2)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D15E58;
  result = 0.0;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 76) = 0;
  *(v2 + 308) = 0x7FFFFFFFLL;
  *(v2 + 41) = 0;
  *(v2 + 42) = 0;
  *(v2 + 40) = 0;
  *(v2 + 86) = 0;
  *(v2 + 54) = 0;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 106) = 0;
  *(v2 + 110) = 2;
  *(v2 + 56) = 0;
  *(v2 + 57) = 0;
  *(v2 + 118) = 0;
  *(v2 + 58) = 0;
  return result;
}

void re::RenderGraphMultiPassMeshNode::configure(re::RenderGraphMultiPassMeshNode *this, unint64_t a2, const char **a3, re::RenderFrame *a4)
{
  if ((atomic_load_explicit(&qword_1EE1C1E70, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v39 = *(this + 76);
    v35 = a3;
    v36 = a4;
    v34 = a2;
    if (v39)
    {
      v8 = 0;
      v9 = *(this + 36);
      while (1)
      {
        v10 = *v9;
        v9 += 56;
        if (v10 < 0)
        {
          break;
        }

        if (v39 == ++v8)
        {
          LODWORD(v8) = *(this + 76);
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 == v39)
    {
      break;
    }

    v37 = this;
    while (1)
    {
      v11 = *(this + 36) + 224 * v8;
      if ((*(v11 + 209) & 1) == 0)
      {
        v12 = v11 + 40;
        v13 = *(v11 + 192);
        if (v13)
        {
          v14 = 0;
          v15 = *(v11 + 176);
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
              LODWORD(v14) = v13;
              break;
            }
          }
        }

        else
        {
          LODWORD(v14) = 0;
        }

        if (v14 == v13)
        {
LABEL_31:
          v41 = 0;
        }

        else
        {
          v17 = *(v12 + 136);
          while (1)
          {
            v18 = v17 + 56 * v14;
            v19 = (*(v18 + 16) & 1) != 0 ? *(v18 + 24) : (v18 + 17);
            if (!strcmp("Default", v19))
            {
              break;
            }

            if (v13 <= v14 + 1)
            {
              v20 = v14 + 1;
            }

            else
            {
              v20 = v13;
            }

            while (v20 - 1 != v14)
            {
              LODWORD(v14) = v14 + 1;
              if ((*(v17 + 56 * v14) & 0x80000000) != 0)
              {
                goto LABEL_30;
              }
            }

            LODWORD(v14) = v20;
LABEL_30:
            if (v14 == v13)
            {
              goto LABEL_31;
            }
          }

          v21 = 0x101010101 * *(v17 + 56 * v14 + 40);
          v41 = 1;
          *(v12 + 169) = 1;
          *(v12 + 170) = v21;
          *(v12 + 174) = BYTE4(v21);
        }

        v38 = v12;
        if (v13)
        {
          a2 = 0;
          v22 = *(v12 + 136);
          while (1)
          {
            v23 = *v22;
            v22 += 14;
            if (v23 < 0)
            {
              break;
            }

            if (v13 == ++a2)
            {
              a2 = v13;
              break;
            }
          }
        }

        else
        {
          a2 = 0;
        }

        if (a2 != v13)
        {
          break;
        }
      }

LABEL_61:
      this = v37;
      v32 = *(v37 + 76);
      if (v32 <= v8 + 1)
      {
        v32 = v8 + 1;
      }

      while (v32 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(*(v37 + 36) + 224 * v8) & 0x80000000) != 0)
        {
          goto LABEL_67;
        }
      }

      LODWORD(v8) = v32;
LABEL_67:
      if (v8 == v39)
      {
        goto LABEL_68;
      }
    }

    v40 = v12 + 170;
    v24 = *(v12 + 136);
    v25 = qword_1EE1C2020;
    while (1)
    {
      v26 = *v25;
      if (v26)
      {
        break;
      }

LABEL_53:
      if (v13 <= a2 + 1)
      {
        v31 = (a2 + 1);
      }

      else
      {
        v31 = v13;
      }

      while (v31 - 1 != a2)
      {
        a2 = (a2 + 1);
        if ((*(v24 + 56 * a2) & 0x80000000) != 0)
        {
          goto LABEL_60;
        }
      }

      a2 = v31;
LABEL_60:
      if (a2 == v13)
      {
        goto LABEL_61;
      }
    }

    v42 = v25;
    v27 = v24 + 56 * a2;
    this = *(v25 + 1);
    a4 = (v27 + 17);
    while (1)
    {
      a3 = *this;
      if (**this == 1)
      {
        v28 = (v27 + 17);
        if (*(v27 + 16))
        {
          v28 = *(v27 + 24);
        }

        if (!strcmp(a3[2], v28))
        {
          break;
        }
      }

      this = (this + 8);
      if (!--v26)
      {
        v25 = v42;
        goto LABEL_53;
      }
    }

    if ((v41 & 1) == 0)
    {
      *(v38 + 169) = 1;
      *v40 = 0;
      *(v40 + 4) = 0;
    }

    v30 = __clz(__rbit32(*(a3 + 8)));
    if (v30 < 5)
    {
      *(v40 + v30) = *(v24 + 56 * a2 + 40);
      v25 = qword_1EE1C2020;
      v41 = 1;
      goto LABEL_53;
    }

    re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v30, 5);
    _os_crash();
    __break(1u);
LABEL_74:
    if (__cxa_guard_acquire(&qword_1EE1C1E70))
    {
      re::introspect_MeshPassFilterFlags(0, v33);
      __cxa_guard_release(&qword_1EE1C1E70);
    }
  }

LABEL_68:
  if (*(this + 57))
  {
    re::AssetHandle::loadAsync((this + 448));
  }

  re::RenderGraphNode::configure(this, v34, v35, v36);
}

void re::RenderGraphMultiPassMeshNode::setup(re::RenderGraphMultiPassMeshNode *this, _anonymous_namespace_ **a2, re::RenderGraphDataStore *a3)
{
  if (!*(this + 75))
  {
    re::DynamicString::format("(%s): No material passes", &v6, *(this + 2));
    re::RenderGraphBuilder::addError(a2[83], &v6);
    if (v6)
    {
      if (v7)
      {
        (*(*v6 + 40))();
      }
    }
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

void re::RenderGraphMultiPassMeshNode::execute(re::RenderGraphMultiPassMeshNode *this, re::RenderGraphContext *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v85, 5030, 0);
  v4 = *(*a2 + 32);
  v5 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
  v78 = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v78)
  {
    goto LABEL_102;
  }

  v6 = *(a2 + 146);
  v7 = *(*(a2 + 5) + 48);
  v8 = "N2re38VisualDepthStaticOcclusionPerFrameDataE";
  if (("N2re38VisualDepthStaticOcclusionPerFrameDataE" & 0x8000000000000000) != 0)
  {
    v9 = ("N2re38VisualDepthStaticOcclusionPerFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  v12 = 0x9E3779B97F4A7C17;
  if (!*(v6 + 64) || (v13 = (v7 + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8, v14 = *(*(v6 + 72) + 4 * (v13 % *(v6 + 88))), v14 == 0x7FFFFFFF))
  {
LABEL_10:
    v16 = 0;
  }

  else
  {
    v15 = *(v6 + 80);
    while (*(v15 + 24 * v14 + 8) != v13)
    {
      v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
      if (v14 == 0x7FFFFFFF)
      {
        goto LABEL_10;
      }
    }

    v16 = *(v15 + 24 * v14 + 16);
  }

  v17 = re::RenderGraphDataStore::get<re::SceneScope>(v6, v7);
  if (*(v17 + 16))
  {
    v18 = *(v17 + 24);
  }

  else
  {
    v18 = (v17 + 17);
  }

  v19 = strlen(v18);
  if (v19)
  {
    MurmurHash3_x64_128(v18, v19, 0, &v86);
    v12 = ((v87 - 0x61C8864680B583E9 + (v86 << 6) + (v86 >> 2)) ^ v86) - 0x61C8864680B583E9;
  }

  if ((atomic_load_explicit(&qword_1EE1C1D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1D80))
  {
    qword_1EE1C1D78 = re::Hash<re::StringSlice>::operator()("RenderGraphDataPipeData", 0x17uLL);
    __cxa_guard_release(&qword_1EE1C1D80);
  }

  v20 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(*(a2 + 146), (v12 + (qword_1EE1C1D78 << 6) + (qword_1EE1C1D78 >> 2)) ^ qword_1EE1C1D78);
  if (v20)
  {
    v21 = 4 * (*(v20 + 172) != 0);
    if (*(v20 + 193))
    {
      v22 = 8;
    }

    else
    {
      v22 = 0;
    }

    if (*(v20 + 192))
    {
      v23 = 3;
    }

    else
    {
      v23 = 1;
    }

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

  v21 = 0;
  v22 = 0;
  v23 = 1;
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_25:
  v24 = *(v16 + 9);
LABEL_28:
  v25 = *(this + 49);
  v26 = *(this + 47);
  if (v26)
  {
    v27 = *(this + 47);
    v28 = *(this + 49);
    while (*v28 != 16)
    {
      ++v28;
      if (!--v27)
      {
        v28 = &v25[v26];
        break;
      }
    }
  }

  else
  {
    v28 = *(this + 49);
  }

  if ((v28 - v25 == v26) | v24 & 1)
  {
    v71 = v5;
    v73 = a2;
    if (v24)
    {
      v29 = 16;
    }

    else
    {
      v29 = 0;
    }

    for (i = 0; v26; --v26)
    {
      v31 = *v25++;
      i |= v31;
    }

    v72 = v20;
    v32 = *(this + 52);
    if (v32)
    {
      v33 = 0;
      v34 = *(this + 54);
      do
      {
        v35 = *v34++;
        v33 |= v35;
        --v32;
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    v90 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v86 = v4;
    re::DynamicArray<re::FilteredMeshPass>::setCapacity(&v86, 0);
    ++v89;
    v37 = *(this + 76);
    if (v37)
    {
      v38 = 0;
      v39 = *(this + 36);
      while (1)
      {
        v40 = *v39;
        v39 += 56;
        if (v40 < 0)
        {
          break;
        }

        if (v37 == ++v38)
        {
          LODWORD(v38) = *(this + 76);
          break;
        }
      }
    }

    else
    {
      LODWORD(v38) = 0;
    }

    if (v38 != v37)
    {
      v41 = v23 | v21 | v22 | v29;
      v79 = i & v41;
      v76 = *(this + 76);
      v77 = v41;
      do
      {
        v42 = *(this + 36) + 224 * v38;
        v43 = *(v42 + 56);
        if (v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = i == 0;
        }

        if (v44)
        {
          v45 = 255;
        }

        else
        {
          v45 = i;
          if (v43)
          {
            v46 = *(v42 + 72);
            v45 = i;
            do
            {
              v47 = *v46++;
              v45 |= v47;
              --v43;
            }

            while (v43);
          }
        }

        v48 = *(v42 + 96);
        v49 = v33;
        if (v48)
        {
          v50 = *(v42 + 112);
          v49 = v33;
          do
          {
            v51 = *v50++;
            v49 |= v51;
            --v48;
          }

          while (v48);
        }

        if ((v45 & v41) != 0 && v79 == i)
        {
          v52 = re::Hash<re::DynamicString>::operator()(v81, v42 + 8);
          MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(v78, v52);
          v41 = v77;
          if (MeshPartBucket)
          {
            v54 = MeshPartBucket;
            v55 = *(v42 + 209);
            if (v55 == 1)
            {
              LODWORD(v81[0]) = *(v42 + 210);
              BYTE4(v81[0]) = *(v42 + 214);
            }

            v56 = *(v42 + 208);
            v57 = *(v42 + 215);
            v58 = v88;
            if (v88 >= v87)
            {
              v59 = v88 + 1;
              if (v87 < v88 + 1)
              {
                v74 = v57;
                v75 = v56;
                if (v86)
                {
                  v60 = 2 * v87;
                  if (!v87)
                  {
                    v60 = 8;
                  }

                  if (v60 <= v59)
                  {
                    v61 = v88 + 1;
                  }

                  else
                  {
                    v61 = v60;
                  }

                  re::DynamicArray<re::FilteredMeshPass>::setCapacity(&v86, v61);
                }

                else
                {
                  re::DynamicArray<re::FilteredMeshPass>::setCapacity(&v86, v59);
                  ++v89;
                }

                v41 = v77;
                v57 = v74;
                v56 = v75;
              }

              v58 = v88;
            }

            v62 = v90 + 24 * v58;
            *v62 = v54;
            *(v62 + 8) = v55;
            if (v55)
            {
              *(v62 + 9) = v81[0];
              *(v62 + 13) = BYTE4(v81[0]);
            }

            *(v62 + 14) = i;
            *(v62 + 15) = v45;
            *(v62 + 16) = v49 & v41;
            *(v62 + 17) = v56;
            *(v62 + 18) = v57;
            v88 = v58 + 1;
            ++v89;
            LODWORD(v37) = v76;
          }
        }

        v63 = *(this + 76);
        if (v63 <= v38 + 1)
        {
          v63 = v38 + 1;
        }

        while (v63 - 1 != v38)
        {
          LODWORD(v38) = v38 + 1;
          if ((*(*(this + 36) + 224 * v38) & 0x80000000) != 0)
          {
            goto LABEL_91;
          }
        }

        LODWORD(v38) = v63;
LABEL_91:
        ;
      }

      while (v38 != v37);
    }

    v64 = v88;
    if (v88)
    {
      v65 = re::RenderGraphDataStore::tryGet<re::MeshNodeFilterData>(*(v73 + 146), *(*(v73 + 5) + 48));
      v66 = v65 ? *(v65 + 8) : 0;
      v67 = *(this + 440);
      v84[0] = 0;
      v68 = *(this + 441);
      v69 = *(this + 2);
      v70 = *(this + 42);
      v81[0] = *(this + 44);
      v81[1] = v70;
      v82 = *(this + 442);
      v83 = *(this + 237);
      v80[0] = 0;
      re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(this, v73, v90, v64, v66, 0, v71, v67, v84, v68, v69, v81, 0, v80);
      if (v72)
      {
        v36.n128_f64[0] = re::RenderGraphMeshNodeBase::drawDebugSortPoints(this, v73, v72, v36.n128_f64[0]);
      }
    }

    if (v86 && v90)
    {
      (*(*v86 + 40))(v36);
    }
  }

LABEL_102:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v85);
}

void re::RenderGraphMultiViewMeshNode::setup(re::RenderGraphMultiViewMeshNode *this, _anonymous_namespace_ **a2, re::RenderGraphDataStore *a3)
{
  v6 = *(this + 35);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (!v7)
  {
    re::DynamicString::format("(%s): No material pass set", &v8, *(this + 2));
    re::RenderGraphBuilder::addError(a2[83], &v8);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))();
      }
    }
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

void re::RenderGraphMultiViewMeshNode::execute(re::RenderGraphMultiViewMeshNode *this, re::RenderGraphContext *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v63, 5097, 0);
  v47 = re::RenderGraphDataStore::get<re::CameraArrayData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v48 = a2;
  v4 = *(a2 + 146);
  v5 = *(*(a2 + 5) + 48);
  v6 = "N2re26MultiViewCullModeArrayDataE";
  if (("N2re26MultiViewCullModeArrayDataE" & 0x8000000000000000) != 0)
  {
    v7 = ("N2re26MultiViewCullModeArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  v10 = 0x7FFFFFFFLL;
  if (*(v4 + 64))
  {
    v11 = (v5 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
    v12 = *(*(v4 + 72) + 4 * (v11 % *(v4 + 88)));
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(v4 + 80);
      v10 = 0x7FFFFFFFLL;
      while (*(v13 + 24 * v12 + 8) != v11)
      {
        v12 = *(v13 + 24 * v12) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v10 = v12;
    }
  }

LABEL_11:
  v52 = *(*(v4 + 80) + 24 * v10 + 16);
  v53 = re::RenderGraphDataStore::get<re::CameraMatricesArray>(v4, v5);
  v14 = re::RenderGraphDataStore::tryGet<re::MeshPassInfoArrayData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v15 = *(a2 + 146);
  v16 = *(*(a2 + 5) + 48);
  v17 = "N2re17ViewportArrayDataE";
  if (("N2re17ViewportArrayDataE" & 0x8000000000000000) != 0)
  {
    v18 = ("N2re17ViewportArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  v21 = 0x7FFFFFFFLL;
  if (*(v15 + 64))
  {
    v22 = (v16 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
    v23 = *(*(v15 + 72) + 4 * (v22 % *(v15 + 88)));
    if (v23 != 0x7FFFFFFF)
    {
      v24 = *(v15 + 80);
      v21 = 0x7FFFFFFFLL;
      while (*(v24 + 24 * v23 + 8) != v22)
      {
        v23 = *(v24 + 24 * v23) & 0x7FFFFFFF;
        if (v23 == 0x7FFFFFFF)
        {
          goto LABEL_21;
        }
      }

      v21 = v23;
    }
  }

LABEL_21:
  v51 = v14;
  v25 = *(*(v15 + 80) + 24 * v21 + 16);
  v26 = re::RenderGraphDataStore::tryGet<re::MeshNodeFilterData>(v15, v16);
  if (v26)
  {
    v27 = *(v26 + 8);
    v45 = v27;
    v46 = v27 & 0xFFFFFFFF00000000;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v28 = re::Hash<re::DynamicString>::operator()(&v73, this + 272);
  v29 = v51;
  v49 = v28;
  if (*(v53 + 24))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 873;
    while (1)
    {
      v36 = *(v52 + 16);
      if (v36 <= v34)
      {
        break;
      }

      v36 = *(v25 + 16);
      if (v36 <= v34)
      {
        goto LABEL_40;
      }

      if (v29)
      {
        v36 = *(v29 + 16);
        if (v36 <= v34)
        {
          goto LABEL_41;
        }

        v37 = *(v53 + 40);
        v2 = *(v52 + 24);
        v38 = *(v25 + 24);
        MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket((*(v29 + 24) + v33), v49);
        v29 = v51;
        if (MeshPartBucket)
        {
          v59 = MeshPartBucket;
          v60 = 0;
          v61 = 65280;
          v62 = 1;
          v40 = *(this + 344);
          v58[0] = *(v2 + v31);
          if (v58[0] == 1)
          {
            v58[1] = *(v2 + v31 + 1);
          }

          v41 = this + 281;
          if (*(this + 280))
          {
            v41 = *(this + 36);
          }

          v42 = *(this + 345);
          v43 = *(this + 40);
          v55[0] = *(this + 42);
          v55[1] = v43;
          v56 = 0;
          v57 = 0;
          v2 = *(v47 + 16);
          if (v2 <= v34)
          {
            goto LABEL_42;
          }

          v44 = *(*(v47 + 24) + v35);
          v54[0] = 0;
          re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(this, v48, &v59, 1uLL, (v46 | v45), v38 + v32, v37 + v30, v40, v58, v42, v41, v55, v44, v54);
          v29 = v51;
        }
      }

      ++v34;
      v35 += 960;
      v33 += 16;
      v32 += 32;
      v31 += 2;
      v30 += 176;
      if (*(v53 + 24) <= v34)
      {
        goto LABEL_38;
      }
    }

    v59 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    v68 = 476;
    v69 = 2048;
    v70 = v34;
    v71 = 2048;
    v72 = v36;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v59 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    v68 = 476;
    v69 = 2048;
    v70 = v34;
    v71 = 2048;
    v72 = v36;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_41:
    v59 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    v68 = 476;
    v69 = 2048;
    v70 = v34;
    v71 = 2048;
    v72 = v36;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v64 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    v68 = 476;
    v69 = 2048;
    v70 = v34;
    v71 = 2048;
    v72 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_38:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v63);
}

void re::RenderGraphTextNode::execute(re::RenderGraphTextNode *this, re::RenderGraphContext *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v44, 5032, 0);
  v3 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  if ((atomic_load_explicit(&qword_1EE1C1D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1D90))
  {
    qword_1EE1C1D88 = re::Hash<re::StringSlice>::operator()("TextInfo", 8uLL);
    __cxa_guard_release(&qword_1EE1C1D90);
  }

  v4 = qword_1EE1C1D88;
  if (*(v3 + 16))
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = (v3 + 17);
  }

  v6 = strlen(v5);
  if (v6)
  {
    MurmurHash3_x64_128(v5, v6, 0, v45);
    v7 = ((v45[1] - 0x61C8864680B583E9 + (v45[0] << 6) + (v45[0] >> 2)) ^ v45[0]) - 0x61C8864680B583E9;
  }

  else
  {
    v7 = 0x9E3779B97F4A7C17;
  }

  v8 = *(a2 + 146);
  v9 = "N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE" & 0x8000000000000000) != 0)
  {
    v10 = ("N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  if (*(v8 + 16))
  {
    v13 = ((((v4 >> 2) + (v4 << 6) + v7) ^ v4) - 0x61C8864680B583E9 + (v9 << 6) + (v9 >> 2)) ^ v9;
    v14 = *(*(v8 + 24) + 4 * (v13 % *(v8 + 40)));
    if (v14 != 0x7FFFFFFF)
    {
      v15 = *(v8 + 32);
      while (*(v15 + 24 * v14 + 8) != v13)
      {
        v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
        if (v14 == 0x7FFFFFFF)
        {
          goto LABEL_46;
        }
      }

      v16 = *(v15 + 24 * v14 + 16);
      if (v16)
      {
        re::RenderGraphContext::acquireManagedRenderCommandEncoder(v43, a2, 0);
        v17 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
        v18 = re::RenderGraphDataStore::tryGet<re::StencilInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
        v19 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
        if (v19)
        {
          v20 = *(v19 + 65);
        }

        else
        {
          v20 = 0;
        }

        v36 = v16;
        v38 = *(v16 + 16);
        if (v38)
        {
          v37 = *(v38 + 40);
          if (v37)
          {
            for (i = 0; i != v37; ++i)
            {
              v22 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v38, i);
              v23 = *(v22 + 16);
              if (v23)
              {
                v24 = *(v22 + 32);
                v25 = 144 * v23;
                do
                {
                  v26 = *(*(a2 + 1) + 64);
                  re::RenderGraphContext::rtInfo(a2, *(a2 + 5), v45);
                  if (v18)
                  {
                    v27 = *(v18 + 8);
                    v42 = *(v18 + 24);
                    v41 = v27;
                  }

                  else
                  {
                    *&v41 = 134217472;
                    *(&v41 + 1) = 134217472;
                    v42 = 0;
                  }

                  *&v54 = v17 + 8;
                  *(&v54 + 1) = v17 + 48;
                  re::TextManager::render(v26, v45, &v41, v43, *a2, v54, (v17 + 160), v24, v20 & 1, 1);
                  v24 += 144;
                  v25 -= 144;
                }

                while (v25);
              }
            }
          }
        }

        v28 = *(v36 + 8);
        if (v28)
        {
          v29 = *(v28 + 40);
          if (v29)
          {
            for (j = 0; j != v29; ++j)
            {
              v31 = re::BucketArray<unsigned long,4ul>::operator[](v28, j);
              v32 = re::StringID::invalid(v45);
              v45[2] = 0x3F8000003F800000;
              v45[3] = 0x3F8000003F800000;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              re::DynamicString::setCapacity(&v50, 0);
              v52 = *v31;
              v33 = *(*(a2 + 1) + 64);
              re::RenderGraphContext::rtInfo(a2, *(a2 + 5), &v41);
              if (v18)
              {
                v34 = *(v18 + 8);
                v40 = *(v18 + 24);
                v39 = v34;
              }

              else
              {
                *&v39 = 134217472;
                *(&v39 + 1) = 134217472;
                v40 = 0;
              }

              *&v55 = v17 + 8;
              *(&v55 + 1) = v17 + 48;
              re::TextManager::render(v33, &v41, &v39, v43, *a2, v55, (v17 + 160), v45, v20 & 1, 1);
              v35 = v50;
              if (v50)
              {
                if (BYTE8(v50))
                {
                  v35 = (*(*v50 + 40))();
                }

                v50 = 0u;
                v51 = 0u;
              }

              if (v45[0])
              {
                if (v45[0])
                {
                }
              }
            }
          }
        }

        re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v43);
      }
    }
  }

LABEL_46:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v44);
}

void re::RenderGraphDebugNode::execute(re::RenderGraphDebugNode *this, re::RenderGraphContext *a2)
{
  v26 = this;
  v68 = *MEMORY[0x1E69E9840];
  v3 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  BYTE8(v53) = 0;
  if ((*(v3 + 862) & 1) == 0)
  {
    re::RenderGraphContext::acquireManagedRenderCommandEncoder(v55, a2, 0);
    LOBYTE(v60[0]) = 1;
    *(v60 + 8) = *v55;
    memset(v55, 0, sizeof(v55));
    re::Optional<re::mtl::RenderCommandEncoder>::operator=(&v53 + 8, v60);
    if (LOBYTE(v60[0]) == 1)
    {
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder((v60 + 8));
    }

    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v55);
  }

  *&v53 = 0;
  *(&v51 + 1) = 0;
  *&v52 = 0;
  DWORD2(v52) = 0;
  v4 = re::DynamicArray<re::DynamicString>::setCapacity(&v51, 2uLL);
  ++DWORD2(v52);
  v5 = re::DynamicArray<re::DynamicString>::add(&v51, v60);
  v6 = *&v60[0];
  if (*&v60[0] && (BYTE8(v60[0]) & 1) != 0)
  {
    v6 = (*(**&v60[0] + 40))(v5);
  }

  v7 = re::DynamicArray<re::DynamicString>::add(&v51, v60);
  if (*&v60[0] && (BYTE8(v60[0]) & 1) != 0)
  {
    (*(**&v60[0] + 40))(v7);
  }

  if (v52)
  {
    v8 = v53;
    v9 = v53 + 32 * v52;
    v27 = (a2 + 1352);
    do
    {
      v10 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
      v11 = re::Hash<re::DynamicString>::operator()(v60, v8);
      MeshPartBucket = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
      if (MeshPartBucket)
      {
        MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(MeshPartBucket, v11);
        v13 = MeshPartBucket;
      }

      else
      {
        v13 = 0;
      }

      if (*(v8 + 8))
      {
        v14 = *(v8 + 16);
      }

      else
      {
        v14 = (v8 + 9);
      }

      if (*v27)
      {
        MeshPartBucket = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v27, *(v26 + 2), v14);
        v15 = MeshPartBucket;
        if (v13)
        {
LABEL_21:
          v16 = *(*a2 + 32);
          v28 = v13;
          LOBYTE(v29) = 0;
          *(&v29 + 6) = 65280;
          BYTE10(v29) = 1;
          v49 = &v28;
          v50 = 1;
          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          memset(v60, 0, sizeof(v60));
          *(&v63 + 1) = re::globalAllocators(MeshPartBucket)[2];
          v65 = 0;
          v66 = 0;
          v67 = 0;
          re::RenderGraphMeshNodeBase::sortMeshParts(0, &v28, 1uLL, a2, v15, v60, v16, v55, v26, v27, SHIDWORD(v27), v28, v29, *(&v29 + 1), v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54[0], v54[1], v55[0], v55[1], SBYTE1(v55[1]), SBYTE2(v55[1]), SHIBYTE(v55[1]), v55[2], v55[3], v56, v57, v58, v59, v60[0], *(&v60[0] + 1), *&v60[1], *(&v60[1] + 1), v61, SWORD4(v61), v62, *(&v62 + 1), v63, *(&v63 + 1), 0);
          re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v61 + 8);
          if (v56 >= 2)
          {
            v17 = v9;
            *&v61 = 0;
            memset(v60, 0, 28);
            re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v60, v56);
            if (v56)
            {
              v18 = 0;
              v19 = v57;
              v20 = (v57 + 12 * v56);
              do
              {
                while (1)
                {
                  v21 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v13, *v19);
                  if (!*(v21 + 64) || *(v21 + 66) == 0)
                  {
                    break;
                  }

                  v19 = (v19 + 12);
                  v18 = 1;
                  if (v19 == v20)
                  {
                    goto LABEL_34;
                  }
                }

                re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v60, v19);
                v19 = (v19 + 12);
              }

              while (v19 != v20);
              if ((v18 & 1) == 0)
              {
                goto LABEL_35;
              }

LABEL_34:
              re::DynamicArray<re::MeshPartSortResult>::operator=(v55, v60);
            }

LABEL_35:
            if (*&v60[0] && v61)
            {
              (*(**&v60[0] + 40))();
            }

            v9 = v17;
          }

          v23 = (*(*v16 + 32))(v16, 328, 8);
          re::DrawTable::DrawTable(v23, v16, (v56 + 127) >> 7);
          LOBYTE(v37[0]) = 0;
          BYTE4(v38) = 0;
          HIDWORD(v42) = 0;
          LOBYTE(v44) = 0;
          v40 = 0;
          v41 = 0;
          LOBYTE(v42) = 0;
          re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v49, v57, v56, a2, v23, v15, v37);
          if (*v55 && v57)
          {
            (*(**v55 + 40))();
          }

          if (*(v23 + 5))
          {
            re::DrawTableSlice::DrawTableSlice(v60, v23);
            if (*(v8 + 8))
            {
              v24 = *(v8 + 16);
            }

            else
            {
              v24 = v8 + 9;
            }

            v28 = v24;
            *&v29 = v60;
            v25 = *(v10 + 80);
            *(&v29 + 1) = *(v10 + 40);
            v30 = v25;
            v31 = 0;
            LOBYTE(v32) = *(v10 + 160);
            *(&v32 + 1) = 2;
            WORD2(v32) = 0;
            HIBYTE(v34) = 0;
            v35 = v15;
            LOBYTE(v36) = 0;
            re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v55);
            re::RenderGraphContext::encodeDrawCalls(a2, v55, &v28);
          }
        }
      }

      else
      {
        v15 = 0;
        if (v13)
        {
          goto LABEL_21;
        }
      }

      v8 += 32;
    }

    while (v8 != v9);
  }

  re::DynamicArray<re::DynamicString>::deinit(&v51);
  if (BYTE8(v53) == 1)
  {
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v54);
  }
}

uint64_t re::DynamicArray<re::MeshPartSortResult>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(a1, a2);
    }
  }

  return a1;
}

re::RenderGraphMaterialReplaceNode *re::RenderGraphMaterialReplaceNode::RenderGraphMaterialReplaceNode(re::RenderGraphMaterialReplaceNode *this, const char *a2)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *(v3 + 66) = 1;
  *(v3 + 268) = 0;
  *v3 = &unk_1F5D16098;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  v4 = re::DynamicString::setCapacity(this + 38, 0);
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  re::DynamicString::setCapacity(this + 42, 0);
  *(this + 184) = 2;
  return this;
}

void re::RenderGraphMaterialReplaceNode::configure(re::RenderGraphMaterialReplaceNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v8 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 280));
  *(this + 34) = v8;
  if (v8)
  {

    re::RenderGraphNode::configure(this, a2, a3, a4);
  }
}

void re::RenderGraphMaterialReplaceNode::execute(re::RenderGraphMaterialReplaceNode *this, re::RenderGraphContext *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(&v77, 5046, 0);
  v51 = *(*(this + 34) + 1776);
  v4 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = re::Hash<re::DynamicString>::operator()(&v86, this + 304);
  MeshPartBucket = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (MeshPartBucket)
  {
    MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(MeshPartBucket, v5);
    v7 = MeshPartBucket;
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 338))
  {
LABEL_53:
    MeshPartBucket = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, *(this + 2), "MaterialReplace");
    v47 = MeshPartBucket;
    if (!v7)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v47 = 0;
    if (!v7)
    {
      goto LABEL_51;
    }
  }

  v8 = *(*a2 + 32);
  v52 = v7;
  LOBYTE(v53) = 0;
  *(&v53 + 6) = 65280;
  BYTE10(v53) = 1;
  *&v76 = &v52;
  *(&v76 + 1) = 1;
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v86 = 0u;
  v87 = 0u;
  v90 = re::globalAllocators(MeshPartBucket)[2];
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v9 = v47;
  re::RenderGraphMeshNodeBase::sortMeshParts(0, &v52, 1uLL, a2, v47, &v86, v8, &v78, v38, v39, SHIDWORD(v39), v40, v41, v42, v43, v44, v45, v46, v47, v49, *(&v49 + 1), v50, v51, v52, v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, *(&v87 + 1), *&v88[0]);
  re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(v88 + 8);
  if (v79 >= 2)
  {
    *&v88[0] = 0;
    *&v87 = 0;
    v86 = 0uLL;
    DWORD2(v87) = 0;
    re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&v86, v79);
    if (v79)
    {
      v10 = 0;
      v11 = v80;
      v12 = (v80 + 12 * v79);
      do
      {
        while (1)
        {
          v13 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v7, *v11);
          if (!*(v13 + 64) || *(v13 + 66) == 0)
          {
            break;
          }

          v11 = (v11 + 12);
          v10 = 1;
          if (v11 == v12)
          {
            goto LABEL_19;
          }
        }

        re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(&v86, v11);
        v11 = (v11 + 12);
      }

      while (v11 != v12);
      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      re::DynamicArray<re::MeshPartSortResult>::operator=(&v78, &v86);
    }

LABEL_20:
    if (v86 && *&v88[0])
    {
      (*(*v86 + 40))();
    }
  }

  v7 = (*(*v8 + 32))(v8, 328, 8);
  re::DrawTable::DrawTable(v7, v8, (v79 + 127) >> 7);
  LOBYTE(v60) = 0;
  BYTE4(v62) = 0;
  DWORD1(v65) = 0;
  LOBYTE(v66) = 0;
  v64 = 0uLL;
  LOBYTE(v65) = 0;
  re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v76, v80, v79, a2, v7, v9, &v60);
  if (v78 && v80)
  {
    (*(*v78 + 40))();
  }

  v15 = re::Hash<re::DynamicString>::operator()(&v86, this + 336);
  v16 = *(v7 + 5);
  if (v16)
  {
    v17 = v15;
    v44 = v4;
    v45 = this;
    v46 = a2;
    this = 0;
    v49 = xmmword_1E304F3C0;
    __asm { FMOV            V9.2S, #1.0 }

    while (1)
    {
      v4 = re::BucketArray<re::DrawCall,128ul>::operator[](v7, this);
      PrioritizedPassTechniqueMapping = re::MaterialParameterTableLayers::getPrioritizedPassTechniqueMapping(*(v4 + 72), v5);
      if (PrioritizedPassTechniqueMapping)
      {
        break;
      }

LABEL_45:
      this = (this + 1);
      if (v16 == this)
      {
        if (*(v7 + 5))
        {
          re::DrawTableSlice::DrawTableSlice(&v86, v7);
          if (*(v45 + 344))
          {
            v36 = *(v45 + 44);
          }

          else
          {
            v36 = v45 + 345;
          }

          v52 = v36;
          *&v53 = &v86;
          v37 = *(v44 + 80);
          *(&v53 + 1) = *(v44 + 40);
          v54 = v37;
          v55 = 0;
          LOBYTE(v56) = *(v44 + 160);
          *(&v56 + 1) = *(v45 + 368);
          WORD2(v56) = *(v45 + 369);
          HIBYTE(v58) = 0;
          *&v59 = v48;
          BYTE8(v59) = 0;
          re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v46, &v78);
          re::RenderGraphContext::encodeDrawCalls(v46, &v78, &v52);
        }

        goto LABEL_51;
      }
    }

    re::globalAllocators(PrioritizedPassTechniqueMapping);
    v23 = (*(*v8 + 32))(v8, 336, 16);
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0u;
    *(v23 + 72) = 0u;
    *(v23 + 88) = 0u;
    *(v23 + 104) = 0u;
    *(v23 + 120) = 0;
    *(v23 + 192) = 0;
    *(v23 + 200) = 0;
    *(v23 + 208) = 0;
    *(v23 + 224) = 0;
    *(v23 + 128) = 0u;
    *(v23 + 144) = 0u;
    *(v23 + 160) = 0u;
    *(v23 + 176) = 0;
    *(v23 + 184) = v8;
    *(v23 + 232) = xmmword_1E304F3C0;
    *(v23 + 248) = 0;
    *(v23 + 252) = 10854;
    *(v23 + 256) = _D9;
    *(v23 + 264) = 0;
    *(v23 + 272) = 0;
    *(v23 + 320) = 0;
    *(&v87 + 1) = re::globalAllocators(v23)[2];
    *&v88[0] = &v86;
    *&v86 = &unk_1F5D161B8;
    v24 = (*(*v8 + 16))(v8, v23, &v86);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v86);
    a2 = *(v4 + 72);
    v25 = *a2;
    v26 = *(a2 + 2);
    *(v24 + 16) = *(a2 + 1);
    *(v24 + 32) = v26;
    *v24 = v25;
    v27 = *(a2 + 3);
    v28 = *(a2 + 4);
    v29 = *(a2 + 5);
    *(v24 + 96) = *(a2 + 12);
    *(v24 + 64) = v28;
    *(v24 + 80) = v29;
    *(v24 + 48) = v27;
    v30 = *(a2 + 104);
    *(v24 + 120) = *(a2 + 15);
    *(v24 + 104) = v30;
    if (v24 != a2)
    {
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::copy((v24 + 128), a2 + 128);
    }

    *(v24 + 192) = *(a2 + 96);
    *(v24 + 200) = *(a2 + 50);
    if (*(v24 + 208))
    {
      if ((*(a2 + 208) & 1) == 0)
      {
        *(v24 + 208) = 0;
        goto LABEL_37;
      }
    }

    else
    {
      if ((*(a2 + 208) & 1) == 0)
      {
        goto LABEL_37;
      }

      *(v24 + 208) = 1;
    }

    *(v24 + 216) = *(a2 + 27);
LABEL_37:
    v31 = *(a2 + 14);
    v32 = *(a2 + 15);
    *(v24 + 249) = *(a2 + 249);
    *(v24 + 224) = v31;
    *(v24 + 240) = v32;
    if (*(v24 + 272))
    {
      if ((*(a2 + 272) & 1) == 0)
      {
        *(v24 + 272) = 0;
LABEL_43:
        *(v24 + 320) = *(a2 + 40);
        *(v24 + 56) = v51;
        *(v4 + 72) = v24;
        v34 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v24, v17);
        if (!v35)
        {
          v42 = 0;
          v43 = 0;
          v40 = "operator[]";
          v41 = 264;
          v38 = "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu";
          v39 = "index < size()";
          re::internal::assertLog(6, 0);
          _os_crash();
          __break(1u);
          goto LABEL_53;
        }

        *(v4 + 44) = *v34;
        goto LABEL_45;
      }
    }

    else
    {
      if ((*(a2 + 272) & 1) == 0)
      {
        goto LABEL_43;
      }

      *(v24 + 272) = 1;
    }

    v33 = *(a2 + 19);
    *(v24 + 288) = *(a2 + 18);
    *(v24 + 304) = v33;
    goto LABEL_43;
  }

LABEL_51:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&v77);
}

void *re::allocInfo_RenderGraphMeshNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1D98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2130, "RenderGraphMeshNode");
    __cxa_guard_release(&qword_1EE1C1D98);
  }

  return &unk_1EE1C2130;
}

void re::initInfo_RenderGraphMeshNode(re *this, re::IntrospectionBase *a2)
{
  v32[0] = 0x11A172C87C45D5CELL;
  v32[1] = "RenderGraphMeshNode";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1C1DA0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1DA0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1F28 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "materialPassName";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x11000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C1F30 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::DynamicArray<re::TechniqueTagFilter>>::get(v13);
      v14 = (*(*v13 + 32))(v13, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "excludedTechniqueTags";
      *(v14 + 16) = &qword_1EE1C1F60;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x13000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1C1F38 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::mtl::introspect_CullMode(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "cullMode";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x15800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1C1F40 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::mtl::introspect_TriangleFillMode(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "fillMode";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x15900000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1C1F48 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_BOOL(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "useSubFrustums";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x15A00000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1C1F50 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_MeshSortMode(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "sortMode";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x10800000006;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1C1F58 = v30;
      __cxa_guard_release(&qword_1EE1C1DA0);
    }
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1C1F28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMeshNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMeshNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMeshNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMeshNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v31 = v33;
}

void re::IntrospectionInfo<re::DynamicArray<re::TechniqueTagFilter>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C1E78, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C1E78);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1C1F60);
      qword_1EE1C1F60 = &unk_1F5D16210;
      __cxa_guard_release(&qword_1EE1C1E78);
    }
  }

  if ((byte_1EE1C1D71 & 1) == 0)
  {
    v1 = qword_1EE1C1E68;
    if (qword_1EE1C1E68 || (v1 = re::allocInfo_TechniqueTagFilter(a1), qword_1EE1C1E68 = v1, re::initInfo_TechniqueTagFilter(v1, v2), (byte_1EE1C1D71 & 1) == 0))
    {
      byte_1EE1C1D71 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1C1F60, 0);
      qword_1EE1C1F70 = 0x2800000003;
      dword_1EE1C1F78 = v3;
      word_1EE1C1F7C = 0;
      *&xmmword_1EE1C1F80 = 0;
      *(&xmmword_1EE1C1F80 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C1F90 = v1;
      qword_1EE1C1F98 = 0;
      qword_1EE1C1F60 = &unk_1F5D16210;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1C1F60, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1C1F80 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphMultiPassMeshNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C21C0, "RenderGraphMultiPassMeshNode");
    __cxa_guard_release(&qword_1EE1C1DB0);
  }

  return &unk_1EE1C21C0;
}

void re::initInfo_RenderGraphMultiPassMeshNode(re *this, re::IntrospectionBase *a2)
{
  v53[0] = 0x5BAAD2E756B69C82;
  v53[1] = "RenderGraphMultiPassMeshNode";
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  *(this + 2) = v54;
  if ((atomic_load_explicit(&qword_1EE1C1DB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1DB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C20C8 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "materialPasses";
      *(v11 + 16) = &qword_1EE1C2028;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x11000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1C20D0 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::DynamicArray<re::TechniqueTagFilter>>::get(v12);
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "excludedTechniqueTags";
      *(v13 + 16) = &qword_1EE1C1F60;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x14000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C20D8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::mtl::introspect_CullMode(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "cullMode";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1B800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1C20E0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::mtl::introspect_TriangleFillMode(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "fillMode";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1B900000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1C20E8 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "useSubFrustums";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1D800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1C20F0 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_MeshSortMode(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "sortMode";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x10800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1C20F8 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_uint16_t(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "fadeGroupRenderPassOrder";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1BA0000000ALL;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1C2100 = v33;
      v34 = re::introspectionAllocator(v33);
      re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v34, v35);
      v36 = (*(*v34 + 32))(v34, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "globalRequiredFilters";
      *(v36 + 16) = &qword_1EE1C1FA0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x1680000000CLL;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1C2108 = v36;
      v37 = re::introspectionAllocator(v36);
      re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v37, v38);
      v39 = (*(*v37 + 32))(v37, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "globalExcludedFilters";
      *(v39 + 16) = &qword_1EE1C1FA0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x1900000000DLL;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1C2110 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::introspect_AssetHandle(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "depthPatchMaterial";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x1C00000000ELL;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1C2118 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::introspect_BOOL(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "forceColorWriteMaskNone";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x1DA0000000FLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1C2120 = v47;
      v48 = re::introspectionAllocator(v47);
      v50 = re::introspect_BOOL(1, v49);
      v51 = (*(*v48 + 32))(v48, 72, 8);
      *v51 = 1;
      *(v51 + 8) = "enableBreakthroughStencilPrepass";
      *(v51 + 16) = v50;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x1DB00000010;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      qword_1EE1C2128 = v51;
      __cxa_guard_release(&qword_1EE1C1DB8);
    }
  }

  *(this + 2) = 0x1E000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1C20C8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMultiPassMeshNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMultiPassMeshNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMultiPassMeshNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMultiPassMeshNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v52 = v54;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C1E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E80))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1C2028);
    qword_1EE1C2028 = &unk_1F5D162A8;
    __cxa_guard_release(&qword_1EE1C1E80);
  }

  if ((byte_1EE1C1D72 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1C1E50;
    if (!qword_1EE1C1E50)
    {
      v4 = re::allocInfo_MeshPassFilters(v2);
      qword_1EE1C1E50 = v4;
      re::initInfo_MeshPassFilters(v4, v5);
    }

    if ((byte_1EE1C1D72 & 1) == 0)
    {
      byte_1EE1C1D72 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1C2028, 0);
      qword_1EE1C2038 = 0x3000000007;
      dword_1EE1C2040 = v6;
      word_1EE1C2044 = 0;
      *&xmmword_1EE1C2048 = 0;
      *(&xmmword_1EE1C2048 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C2058 = v3;
      qword_1EE1C2060 = 0;
      qword_1EE1C2068 = v4;
      qword_1EE1C2070 = 0;
      qword_1EE1C2028 = &unk_1F5D162A8;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1C2028, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1C2048 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C1E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E88))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1C1FA0);
    qword_1EE1C1FA0 = &unk_1F5D16348;
    __cxa_guard_release(&qword_1EE1C1E88);
  }

  if ((byte_1EE1C1D73 & 1) == 0)
  {
    re::introspect_MeshPassFilterFlags(1, a2);
    if ((byte_1EE1C1D73 & 1) == 0)
    {
      byte_1EE1C1D73 = 1;
      v2 = dword_1EE1C1FF8;
      ArcSharedObject::ArcSharedObject(&qword_1EE1C1FA0, 0);
      qword_1EE1C1FB0 = 0x2800000003;
      dword_1EE1C1FB8 = v2;
      word_1EE1C1FBC = 0;
      *&xmmword_1EE1C1FC0 = 0;
      *(&xmmword_1EE1C1FC0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C1FD0 = &qword_1EE1C1FE0;
      qword_1EE1C1FD8 = 0;
      qword_1EE1C1FA0 = &unk_1F5D16348;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1C1FA0, &v12);
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

      v9 = xmmword_1EE1C2000;
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1C1FC0 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphMultiViewMeshNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2250, "RenderGraphMultiViewMeshNode");
    __cxa_guard_release(&qword_1EE1C1DC0);
  }

  return &unk_1EE1C2250;
}

void re::initInfo_RenderGraphMultiViewMeshNode(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x60120976EB70A1AALL;
  v12[1] = "RenderGraphMultiViewMeshNode";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C1DD0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1DD0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C1DA8;
      if (!qword_1EE1C1DA8)
      {
        v8 = re::allocInfo_RenderGraphMeshNode(v6);
        qword_1EE1C1DA8 = v8;
        re::initInfo_RenderGraphMeshNode(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "RenderGraphMeshNode";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C1DC8 = v10;
      __cxa_guard_release(&qword_1EE1C1DD0);
    }
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1DC8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMultiViewMeshNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMultiViewMeshNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMultiViewMeshNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMultiViewMeshNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

re::RenderGraphMeshNode *re::internal::defaultConstruct<re::RenderGraphMultiViewMeshNode>(int a1, int a2, re::RenderGraphMeshNode *this)
{
  result = re::RenderGraphMeshNode::RenderGraphMeshNode(this);
  *result = &unk_1F5D15EE8;
  return result;
}

re::RenderGraphMeshNode *re::internal::defaultConstructV2<re::RenderGraphMultiViewMeshNode>(re::RenderGraphMeshNode *a1)
{
  result = re::RenderGraphMeshNode::RenderGraphMeshNode(a1);
  *result = &unk_1F5D15EE8;
  return result;
}

void *re::allocInfo_RenderGraphTextNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DD8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C22E0, "RenderGraphTextNode");
    __cxa_guard_release(&qword_1EE1C1DD8);
  }

  return &unk_1EE1C22E0;
}

void re::initInfo_RenderGraphTextNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x11A173223CF8F44ELL;
  v10[1] = "RenderGraphTextNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C1DE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1DE8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1DE0 = v8;
      __cxa_guard_release(&qword_1EE1C1DE8);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000110;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1DE0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTextNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTextNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTextNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTextNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphTextNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5D15F78;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphTextNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5D15F78;
  return result;
}

void *re::allocInfo_RenderGraphDebugNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1DF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2370, "RenderGraphDebugNode");
    __cxa_guard_release(&qword_1EE1C1DF0);
  }

  return &unk_1EE1C2370;
}

void re::initInfo_RenderGraphDebugNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x228CD849C812213ALL;
  v10[1] = "RenderGraphDebugNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C1E00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1E00);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1DF8 = v8;
      __cxa_guard_release(&qword_1EE1C1E00);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1DF8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDebugNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDebugNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDebugNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDebugNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphDebugNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5D16008;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphDebugNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5D16008;
  return result;
}

void *re::allocInfo_RenderGraphMaterialReplaceNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1E08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2400, "RenderGraphMaterialReplaceNode");
    __cxa_guard_release(&qword_1EE1C1E08);
  }

  return &unk_1EE1C2400;
}

void re::initInfo_RenderGraphMaterialReplaceNode(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0xAF16046478AEDAELL;
  v26[1] = "RenderGraphMaterialReplaceNode";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1C1E10, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1E10);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1EA8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "material";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x11800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C1EB0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicString>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "techniqueToReplace";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x13000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C1EB8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::DynamicString>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "techniqueToUse";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x15000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C1EC0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::mtl::introspect_CullMode(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "cullMode";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x17000000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1C1EC8 = v24;
      __cxa_guard_release(&qword_1EE1C1E10);
    }
  }

  *(this + 2) = 0x17800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1C1EA8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMaterialReplaceNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMaterialReplaceNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMaterialReplaceNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMaterialReplaceNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

void *re::allocInfo_RenderGraphDebugMaterialsNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2490, "RenderGraphDebugMaterialsNode");
    __cxa_guard_release(&qword_1EE1C1E18);
  }

  return &unk_1EE1C2490;
}

void re::initInfo_RenderGraphDebugMaterialsNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x86C8A26ABC359026;
  v10[1] = "RenderGraphDebugMaterialsNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C1E28, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1E28);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1E20 = v8;
      __cxa_guard_release(&qword_1EE1C1E28);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1E20;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDebugMaterialsNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDebugMaterialsNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDebugMaterialsNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDebugMaterialsNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphDebugMaterialsNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5CB4F88;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphDebugMaterialsNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 66) = 1;
  *(result + 268) = 0;
  *result = &unk_1F5CB4F88;
  return result;
}

void re::introspect_MeshPassFilterFlags(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1C1E30, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C1E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E38))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C1FE0, "MeshPassFilterFlags", 1, 1, 1, 1);
      qword_1EE1C1FE0 = &unk_1F5D0C658;
      qword_1EE1C2020 = &re::introspect_MeshPassFilterFlags(BOOL)::enumTable;
      dword_1EE1C1FF0 = 9;
      __cxa_guard_release(&qword_1EE1C1E38);
    }

    if (v2)
    {
      if (_MergedGlobals_547)
      {
        return;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v47);
      v3 = _MergedGlobals_547;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v47);
      if (v3)
      {
        return;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_547)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_547 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C1FE0, a2);
    v44 = 0xF30C980373391EA2;
    v45 = "MeshPassFilterFlags";
    v48 = 0x31CD534126;
    v49 = "uint8_t";
    v9 = v47[0];
    v10 = v47[1];
    if (v48)
    {
      if (v48)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v45);
    _os_crash();
    __break(1u);
LABEL_49:
    v33 = __cxa_guard_acquire(&qword_1EE1C1E30);
    if (v33)
    {
      v34 = re::introspectionAllocator(v33);
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 1) = 1;
      *(v35 + 2) = "Default";
      qword_1EE1C1ED0 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 1) = 2;
      *(v37 + 2) = "TwoPassSortGroup";
      qword_1EE1C1ED8 = v37;
      v38 = re::introspectionAllocator(v37);
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 1) = 4;
      *(v39 + 2) = "RenderPassGroup";
      qword_1EE1C1EE0 = v39;
      v40 = re::introspectionAllocator(v39);
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 1) = 8;
      *(v41 + 2) = "RenderOnTop";
      qword_1EE1C1EE8 = v41;
      v42 = re::introspectionAllocator(v41);
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 16;
      *(v43 + 16) = "RenderToFarPlane";
      qword_1EE1C1EF0 = v43;
      __cxa_guard_release(&qword_1EE1C1E30);
    }
  }

  v11 = qword_1EE1C2020;
  v48 = v9;
  v49 = v10;
  re::TypeBuilder::beginEnumType(v47, &v44, 1, 1, &v48);
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
        *&v46.var0 = 2 * v16;
        v46.var1 = v15;
        re::TypeBuilder::addEnumConstant(v47, v20, &v46);
        if (*&v46.var0)
        {
          if (*&v46.var0)
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
          *&v46.var0 = 2 * v25;
          v46.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v47, v29, &v46);
          if (*&v46.var0)
          {
            if (*&v46.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v47, v31);
  xmmword_1EE1C2000 = v46;
  if (v44)
  {
    if (v44)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }
}

void *re::allocInfo_MeshPassFilters(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2520, "MeshPassFilters");
    __cxa_guard_release(&qword_1EE1C1E40);
  }

  return &unk_1EE1C2520;
}

void re::initInfo_MeshPassFilters(re *this, re::IntrospectionBase *a2)
{
  v27[0] = 0xBC5389F7EA012CBALL;
  v27[1] = "MeshPassFilters";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1C1E48, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1E48);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "included";
      *(v8 + 16) = &qword_1EE1C1FA0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C1EF8 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "excluded";
      *(v11 + 16) = &qword_1EE1C1FA0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1C1F00 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v12, v13);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "renderPassGroupOrder";
      *(v14 + 16) = &qword_1EE1C2078;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x7800000004;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1C1F08 = v14;
      v15 = re::introspectionAllocator(v14);
      re::IntrospectionInfo<re::DynamicArray<re::MeshPassFilterFlags>>::get(v15, v16);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "required";
      *(v17 + 16) = &qword_1EE1C1FA0;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5000000005;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1C1F10 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "overrideDepthBiasPriorityWithRenderPassOrder";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xA800000006;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1C1F18 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "portalRecursible";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xAF00000007;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1C1F20 = v25;
      __cxa_guard_release(&qword_1EE1C1E48);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1C1EF8;
  *(this + 9) = re::internal::defaultConstruct<re::MeshPassFilters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshPassFilters>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshPassFilters>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshPassFilters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C1E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E90))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1C2078);
    qword_1EE1C2078 = &unk_1F5D163E0;
    __cxa_guard_release(&qword_1EE1C1E90);
  }

  if ((byte_1EE1C1D74 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_uint16_t(1, v3);
    if ((byte_1EE1C1D74 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1C1D74 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1C2078, 0);
      qword_1EE1C2088 = 0x3000000007;
      dword_1EE1C2090 = v6;
      word_1EE1C2094 = 0;
      *&xmmword_1EE1C2098 = 0;
      *(&xmmword_1EE1C2098 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C20A8 = v2;
      qword_1EE1C20B0 = 0;
      qword_1EE1C20B8 = v5;
      qword_1EE1C20C0 = 0;
      qword_1EE1C2078 = &unk_1F5D163E0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1C2078, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1C2098 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshPassFilters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *a3 = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 140) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 156) = 0x7FFFFFFFLL;
  *(a3 + 168) = 0;
  *(a3 + 175) = 1;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshPassFilters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a3 + 120));
  re::DynamicArray<unsigned long>::deinit(a3 + 80);
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MeshPassFilters>(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 140) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 156) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0;
  *(a1 + 175) = 1;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshPassFilters>(uint64_t a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 120));
  re::DynamicArray<unsigned long>::deinit(a1 + 80);
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void *re::allocInfo_TechniqueTagFilter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1E58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C25B0, "TechniqueTagFilter");
    __cxa_guard_release(&qword_1EE1C1E58);
  }

  return &unk_1EE1C25B0;
}

void re::initInfo_TechniqueTagFilter(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x3F8C2D11870B6C4;
  v15[1] = "TechniqueTagFilter";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C1E60, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1E60);
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
      qword_1EE1C1E98 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "value";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C1EA0 = v13;
      __cxa_guard_release(&qword_1EE1C1E60);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C1E98;
  *(this + 9) = re::internal::defaultConstruct<re::TechniqueTagFilter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TechniqueTagFilter>;
  *(this + 13) = re::internal::defaultConstructV2<re::TechniqueTagFilter>;
  *(this + 14) = re::internal::defaultDestructV2<re::TechniqueTagFilter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::internal::defaultConstruct<re::TechniqueTagFilter>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
}

void re::internal::defaultDestruct<re::TechniqueTagFilter>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::TechniqueTagFilter>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::TechniqueTagFilter>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void re::RenderGraphMultiPassMeshNode::~RenderGraphMultiPassMeshNode(re::RenderGraphMultiPassMeshNode *this)
{
  re::RenderGraphMultiPassMeshNode::~RenderGraphMultiPassMeshNode(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D15E58;
  re::AssetHandle::~AssetHandle((this + 448));
  re::DynamicArray<unsigned long>::deinit(this + 400);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(this + 320);
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 34);

  re::RenderGraphNode::~RenderGraphNode(this);
}

void re::RenderGraphMultiViewMeshNode::~RenderGraphMultiViewMeshNode(id *this)
{
  re::RenderGraphMeshNode::~RenderGraphMeshNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphTextNode::~RenderGraphTextNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphDebugNode::~RenderGraphDebugNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphMaterialReplaceNode::~RenderGraphMaterialReplaceNode(id *this)
{
  re::RenderGraphMaterialReplaceNode::~RenderGraphMaterialReplaceNode(this);

  JUMPOUT(0x1E6906520);
}

{
  re::DynamicString::deinit((this + 42));
  re::DynamicString::deinit((this + 38));
  re::AssetHandle::~AssetHandle((this + 35));

  re::RenderGraphNode::~RenderGraphNode(this);
}

void *re::internal::Callable<re::RenderGraphMaterialReplaceNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D161B8;
  return result;
}

void *re::internal::Callable<re::RenderGraphMaterialReplaceNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D161B8;
  return result;
}

double re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 224;
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

uint64_t *re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t *result)
{
  if ((*result & 0x80000000) != 0)
  {
    v2 = result;
    *result &= ~0x80000000;
    v3 = (result + 10);
    re::DynamicString::deinit((result + 1));
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v2 + 20);
    re::DynamicArray<unsigned long>::deinit((v2 + 15));
    re::DynamicArray<unsigned long>::deinit(v3);

    return re::DynamicArray<unsigned long>::deinit((v2 + 5));
  }

  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::MeshNodeFilterData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re18MeshNodeFilterDataE";
  if (("N2re18MeshNodeFilterDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re18MeshNodeFilterDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

void *re::DynamicArray<re::FilteredMeshPass>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FilteredMeshPass>::setCapacity(v5, a2);
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
              goto LABEL_18;
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
        v10 = v8 + 24 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 8);
          *(v11 + 8) = v12;
          if (v12 == 1)
          {
            v13 = *(v8 + 9);
            *(v11 + 13) = *(v8 + 13);
            *(v11 + 9) = v13;
          }

          v14 = *(v8 + 14);
          *(v11 + 18) = *(v8 + 18);
          *(v11 + 14) = v14;
          v8 += 24;
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::TechniqueTagFilter>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::TechniqueTagFilter>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::TechniqueTagFilter>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::TechniqueTagFilter>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::TechniqueTagFilter>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::TechniqueTagFilter>::addElement(re::Allocator **a1, re *this, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 32 * v9);
  *v15 = 0;
  v15[1] = &str_67;
  v15[2] = 0;
  v15[3] = &str_67;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 32 * v16 - 32);
  re::introspectionInitElement(this, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::TechniqueTagFilter>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 32 * v8;
      do
      {
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 32;
        v10 -= 32;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 32 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 32;
        v14 -= 32;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TechniqueTagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

re::RenderGraphMeshNode *re::RenderGraphMeshNode::RenderGraphMeshNode(re::RenderGraphMeshNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D15DC8;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  re::DynamicString::setCapacity(this + 34, 0);
  *(this + 42) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *(this + 82) = 0;
  *(this + 86) = 2;
  return this;
}

void *re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  HIDWORD(v18) = 0x7FFFFFFF;
  HIBYTE(v19) = 1;
  v8 = re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v11);
  v9.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v17 + 1);
  if (v15)
  {
    if (*&v17[0])
    {
      (*(*v15 + 40))(v9.n128_f64[0]);
    }

    *&v17[0] = 0;
    *&v16 = 0;
    v15 = 0uLL;
    ++DWORD2(v16);
  }

  if (*(&v12 + 1))
  {
    if (*(&v14 + 1))
    {
      (*(**(&v12 + 1) + 40))(v9);
    }

    *(&v14 + 1) = 0;
    v13 = 0uLL;
    *(&v12 + 1) = 0;
    LODWORD(v14) = v14 + 1;
  }

  if (*&v11[0] && v12)
  {
    (*(**&v11[0] + 40))(v9);
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 56;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 224 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 224 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v17, 0, 36);
      *&v17[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v17, v4, a2);
      v5 = *v17;
      *v17 = *a1;
      *a1 = v5;
      v6 = *&v17[16];
      v7 = *(a1 + 16);
      *&v17[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v17[24];
      *&v17[24] = *(a1 + 24);
      v8 = *&v17[32];
      *(a1 + 24) = v9;
      ++*&v17[40];
      v10 = v8;
      if (v8)
      {
        do
        {
          if ((*v7 & 0x80000000) != 0)
          {
            v11 = re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v7 + 216) % *(a1 + 24));
            *(v11 + 24) = 0u;
            *(v11 + 8) = 0u;
            *(v11 + 32) = *(v7 + 32);
            v12 = *(v7 + 16);
            *(v11 + 8) = *(v7 + 8);
            *(v7 + 8) = 0;
            v13 = *(v7 + 24);
            *(v7 + 32) = 0;
            v15 = *(v11 + 16);
            v14 = *(v11 + 24);
            *(v11 + 16) = v12;
            *(v11 + 24) = v13;
            *(v7 + 16) = v15;
            *(v7 + 24) = v14;
            re::MeshPassFilters::MeshPassFilters(v11 + 40, v7 + 40);
          }

          v7 += 224;
          --v10;
        }

        while (v10);
      }

      re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v17);
    }
  }

  else
  {
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = 3;
    }
  }
}

uint64_t re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 224 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 224 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 224 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 216) = a3;
  ++*(a1 + 28);
  return v7 + 224 * v5;
}

uint64_t re::MeshPassFilters::MeshPassFilters(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  ++*(a2 + 24);
  ++*(a1 + 24);
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  ++*(a2 + 64);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v11 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v12;
  ++*(a2 + 104);
  LODWORD(v12) = *(a1 + 104) + 1;
  *(a1 + 120) = 0u;
  v13 = a1 + 120;
  *(a1 + 104) = v12;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 120), (a2 + 120));
  *(v13 + 48) = *(a2 + 168);
  v14 = *(a2 + 169);
  *(v13 + 49) = v14;
  if (v14 == 1)
  {
    v15 = *(a2 + 170);
    *(a1 + 174) = *(a2 + 174);
    *(a1 + 170) = v15;
  }

  *(a1 + 175) = *(a2 + 175);
  return a1;
}

void re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 224;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v19, a2);
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v16, a1, a2, v6);
  v7 = HIDWORD(v17);
  if (HIDWORD(v17) != 0x7FFFFFFF)
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 224 * v7;
    v9 = v10 + 40;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v10 + 40, a3);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v10 + 80, a3 + 40);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v10 + 120, a3 + 80);
    if (v10 + 40 != a3)
    {
      v11 = *(v10 + 160);
      if (v11)
      {
        v12 = v11 == *(a3 + 120);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v10 + 160), (a3 + 120));
      }

      else
      {
        re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v10 + 160);
        if (*(a3 + 120))
        {
          v13 = *(a3 + 148);
          if (*(v10 + 184) < v13)
          {
            re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(v10 + 160, v13);
          }

          re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(v10 + 160, a3 + 120);
          ++*(v10 + 200);
        }
      }
    }

    *(v10 + 208) = *(a3 + 168);
    if (*(v10 + 209))
    {
      if ((*(a3 + 169) & 1) == 0)
      {
        *(v10 + 209) = 0;
LABEL_20:
        *(v10 + 215) = *(a3 + 175);
        return v9;
      }
    }

    else
    {
      if ((*(a3 + 169) & 1) == 0)
      {
        goto LABEL_20;
      }

      *(v10 + 209) = 1;
    }

    v14 = *(a3 + 170);
    *(v10 + 214) = *(a3 + 174);
    *(v10 + 210) = v14;
    goto LABEL_20;
  }

  v8 = re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17, v16);
  re::DynamicString::DynamicString((v8 + 8), a2);
  v9 = v8 + 40;
  re::MeshPassFilters::MeshPassFilters(v8 + 40, a3);
  ++*(a1 + 40);
  return v9;
}

BOOL re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 224 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 224 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 224 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 224 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 224 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 224 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 56;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 224 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 224 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MeshPassFilters,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<BOOL>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<BOOL>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::addElement(re::Allocator **a1, re *this, int a3, uint64_t a4)
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

        re::DynamicArray<BOOL>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<BOOL>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32);
  *(v15 + v9) = 0;
  v16 = v9 + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (v15 + v16 - 1);
  re::introspectionInitElement(this, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::MeshPassFilterFlags>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<BOOL>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<BOOL>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v12);
    re::TypeInfo::TypeInfo(v11, &v13);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      do
      {
        re::TypeInfo::destruct(v11, v10, a3, 0);
        re::TypeInfo::construct(v11, v10++, a3, 0);
        --v9;
      }

      while (v9);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshPassFilterFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::RenderGraphMultiPassMeshNode::RenderGraphMultiPassMeshNode(re::RenderGraphMultiPassMeshNode *this)
{
  v1 = re::RenderGraphNode::RenderGraphNode(this);
  *(v1 + 66) = 1;
  *(v1 + 268) = 0;
  *v1 = &unk_1F5D15E58;
  result = 0.0;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 76) = 0;
  *(v1 + 308) = 0x7FFFFFFFLL;
  *(v1 + 41) = 0;
  *(v1 + 42) = 0;
  *(v1 + 40) = 0;
  *(v1 + 86) = 0;
  *(v1 + 54) = 0;
  *(v1 + 22) = 0u;
  *(v1 + 23) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 106) = 0;
  *(v1 + 110) = 2;
  *(v1 + 56) = 0;
  *(v1 + 57) = 0;
  *(v1 + 118) = 0;
  *(v1 + 58) = 0;
  return result;
}

re::RenderGraphMaterialReplaceNode *re::RenderGraphMaterialReplaceNode::RenderGraphMaterialReplaceNode(re::RenderGraphMaterialReplaceNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D16098;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  v3 = re::DynamicString::setCapacity(this + 38, 0);
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  re::DynamicString::setCapacity(this + 42, 0);
  *(this + 184) = 2;
  return this;
}

void *re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 14;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 56 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 56 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, _WORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
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

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 56 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 14;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::ar::DualGuidedFilter::create(re::ar::DualGuidedFilter *this@<X0>, const re::mtl::Device *a2@<X1>, void *a3@<X8>)
{
  v4 = [objc_alloc(getARDualGuidedFilterClass()) initWithDevice:*this useSmoothing:a2];
  *a3 = v4;
}

void re::ar::DualGuidedFilter::encodeDualCoefficients(void **a1, void **a2, void **a3, void **a4, id *a5, uint64_t *a6)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a6;
  v11 = *a5;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  [v15 encodeDualCoefficients:v14 guide:v13 stencil:v12 coefficientsTextureFG:v11 coefficientsTextureBG:v10];
}

Class initARDualGuidedFilter(void)
{
  if (qword_1EE1C2648 != -1)
  {
    dispatch_once(&qword_1EE1C2648, &__block_literal_global_50);
  }

  result = objc_getClass("ARDualGuidedFilter");
  _MergedGlobals_548 = result;
  getARDualGuidedFilterClass = ARDualGuidedFilterFunction;
  return result;
}

void ___ZL9LoadARKitv_block_invoke()
{
  LoadARKit(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ARKit.framework/ARKit", 2);
  if (!LoadARKit(void)::frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

void re::ARGuidedFilterOcclusionNode::setup(re::ARGuidedFilterOcclusionNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a2 + 296) = 257;
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 264, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 280, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 296, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 312, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 328, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 328, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 344, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 344, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 360, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 360, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 376, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 376, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 392, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 392, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 408, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 408, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 424, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 424, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 440, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 440, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 456, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 456, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 472, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 472, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 488, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 488, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 504, &v6);
  re::RenderGraphNode::setup(this, a2, a3);
}

void re::ARGuidedFilterOcclusionNode::execute(re::ARGuidedFilterOcclusionNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v64, 5087, 0);
  v4 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
  v5 = re::RenderFrame::currentCommandBuffer(v4);
  if ((atomic_load_explicit(&qword_1EE1C2658, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_1EE1C2658);
    if (v12)
    {
      _MergedGlobals_549 = re::getCombinedScopeHash(v12, v13, v14);
      __cxa_guard_release(&qword_1EE1C2658);
    }
  }

  v6 = re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(*(a2 + 146), _MergedGlobals_549);
  v7 = *(v6 + 32);
  v8 = *v7;
  v9 = *v7 == 0;
  v58 = *(*(a2 + 1) + 208);
  v57 = *(v5 + 2);
  v10 = *(v6 + 184);
  v60 = 0;
  v61 = 0;
  location = 0;
  v62 = v10;
  v63 = 0;
  re::ObjCObject::operator=(&v60, &v57);
  re::ObjCObject::operator=(&location, &v58);

  v50 = *(*(a2 + 1) + 208);
  v51 = 0u;
  v52 = 0u;
  v54 = v6;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  re::ObjCObject::operator=(&v55, &v50);

  re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler::prepareTexturesForFrame(&v51);
  v11 = *(v6 + 185) | (v9 | v56) & 1;
  v44 = *(*(a2 + 1) + 208);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = v6;
  v49 = 0;
  re::ObjCObject::operator=(&v49, &v44);

  v43 = *(*(*(a2 + 1) + 48) + 360);
  re::guided_filter_occlusion::GuidedFilterKernelRecycler::prepareKernelsForFrame(&v45, *(a2 + 1), &v43, v9);
  re::RenderGraphContext::metalTexture(a2, this + 264, 0, 0, &v27);
  re::RenderGraphContext::metalTexture(a2, this + 280, 0, 0, &v28);
  re::RenderGraphContext::metalTexture(a2, this + 296, 0, 0, &v29);
  re::RenderGraphContext::metalTexture(a2, this + 312, 0, 0, &v30);
  re::RenderGraphContext::metalTexture(a2, this + 328, 0, 0, &v31);
  re::RenderGraphContext::metalTexture(a2, this + 344, 0, 0, &v32);
  re::RenderGraphContext::metalTexture(a2, this + 360, 0, 0, &v33);
  re::RenderGraphContext::metalTexture(a2, this + 376, 0, 0, &v34);
  re::RenderGraphContext::metalTexture(a2, this + 392, 0, 0, &v35);
  re::RenderGraphContext::metalTexture(a2, this + 408, 0, 0, &v36);
  re::RenderGraphContext::metalTexture(a2, this + 424, 0, 0, &v37);
  re::RenderGraphContext::metalTexture(a2, this + 440, 0, 0, &v38);
  re::RenderGraphContext::metalTexture(a2, this + 456, 0, 0, &v39);
  re::RenderGraphContext::metalTexture(a2, this + 472, 0, 0, &v40);
  re::RenderGraphContext::metalTexture(a2, this + 488, 0, 0, &v41);
  re::RenderGraphContext::metalTexture(a2, this + 504, 0, 0, &v42);
  v17 = a2;
  v18 = *(v5 + 2);
  p_location = &location;
  v20 = v6;
  v21 = &v45;
  v22 = &v51;
  v23 = &v27;
  v24 = v7;
  v25 = v9;
  v26 = v11;
  v16 = *(&v51 + 1);
  v15 = v53;
  if ((v11 & 1) != 0 || !v8)
  {
    NS::SharedPtr<MTL::Buffer>::operator=(&v16, &v51);
    NS::SharedPtr<MTL::Buffer>::operator=(&v15, &v52 + 1);
  }

  [*(v5 + 2) pushDebugGroup:@"ARGuidedFilterOcclusionNode"];
  re::guided_filter_occlusion::encodeGuidedFilterOcclusionCommands(&v17);
  [*(v5 + 2) popDebugGroup];
  re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler::saveTexturesForNextFrame(&v51);
  ++*v7;
  if (v15)
  {
  }

  if (v16)
  {
  }

  if (v42)
  {

    v42 = 0;
  }

  if (v41)
  {

    v41 = 0;
  }

  if (v40)
  {

    v40 = 0;
  }

  if (v39)
  {

    v39 = 0;
  }

  if (v38)
  {

    v38 = 0;
  }

  if (v37)
  {

    v37 = 0;
  }

  if (v36)
  {

    v36 = 0;
  }

  if (v35)
  {

    v35 = 0;
  }

  if (v34)
  {

    v34 = 0;
  }

  if (v33)
  {

    v33 = 0;
  }

  if (v32)
  {

    v32 = 0;
  }

  if (v31)
  {

    v31 = 0;
  }

  if (v30)
  {

    v30 = 0;
  }

  if (v29)
  {

    v29 = 0;
  }

  if (v28)
  {

    v28 = 0;
  }

  if (v27)
  {
  }

  if (v53)
  {

    v53 = 0;
  }

  if (*(&v52 + 1))
  {

    *(&v52 + 1) = 0;
  }

  if (v52)
  {

    *&v52 = 0;
  }

  if (*(&v51 + 1))
  {

    *(&v51 + 1) = 0;
  }

  if (v51)
  {
  }

  if (v61)
  {

    v61 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v64);
}

void *re::allocInfo_ARGuidedFilterOcclusionNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2660))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2750, "ARGuidedFilterOcclusionNode");
    __cxa_guard_release(&qword_1EE1C2660);
  }

  return &unk_1EE1C2750;
}

void re::initInfo_ARGuidedFilterOcclusionNode(re *this, re::IntrospectionBase *a2)
{
  v74[0] = 0x30DAB7D54DFCD6BCLL;
  v74[1] = "ARGuidedFilterOcclusionNode";
  if (v74[0])
  {
    if (v74[0])
    {
    }
  }

  *(this + 2) = v75;
  if ((atomic_load_explicit(&qword_1EE1C2668, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2668);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C26C8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_RenderGraphTargetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "suVirtualContentOpaqueOnlyDepth";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C26D0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_RenderGraphTargetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "suAllVirtualContentDepth";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x11800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C26D8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_RenderGraphTargetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "suVirtualContentDepthAsR16";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x14800000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C26E0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_RenderGraphTargetHandle(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "processedVirtualDepthAsR16";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x15800000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1C26E8 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_RenderGraphTargetHandle(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "suMeshDepthEdgesScratch";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x16800000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1C26F0 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_RenderGraphTargetHandle(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "suMeshDepthEdges";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x17800000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1C26F8 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_RenderGraphTargetHandle(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "maskOfAllOcclusions";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x18800000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1C2700 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_RenderGraphTargetHandle(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "regressionInputCameraFeed";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x19800000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1C2708 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_RenderGraphTargetHandle(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "reconstructionInputCameraFeed";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x1A800000009;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1C2710 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_RenderGraphTargetHandle(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "cameraFeedRGBDownsampled";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x1B80000000ALL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1C2718 = v48;
      v49 = re::introspectionAllocator(v48);
      v51 = re::introspect_RenderGraphTargetHandle(1, v50);
      v52 = (*(*v49 + 32))(v49, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "guidedFilterInputWeights";
      *(v52 + 16) = v51;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0x1C80000000BLL;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE1C2720 = v52;
      v53 = re::introspectionAllocator(v52);
      v55 = re::introspect_RenderGraphTargetHandle(1, v54);
      v56 = (*(*v53 + 32))(v53, 72, 8);
      *v56 = 1;
      *(v56 + 8) = "guidedFilterInputMask";
      *(v56 + 16) = v55;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0x1D80000000CLL;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 0;
      qword_1EE1C2728 = v56;
      v57 = re::introspectionAllocator(v56);
      v59 = re::introspect_RenderGraphTargetHandle(1, v58);
      v60 = (*(*v57 + 32))(v57, 72, 8);
      *v60 = 1;
      *(v60 + 8) = "reconstructedAlpha";
      *(v60 + 16) = v59;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0x1E80000000DLL;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      qword_1EE1C2730 = v60;
      v61 = re::introspectionAllocator(v60);
      v63 = re::introspect_RenderGraphTargetHandle(1, v62);
      v64 = (*(*v61 + 32))(v61, 72, 8);
      *v64 = 1;
      *(v64 + 8) = "suMeshDepth";
      *(v64 + 16) = v63;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0x1280000000ELL;
      *(v64 + 40) = 0;
      *(v64 + 48) = 0;
      *(v64 + 56) = 0;
      *(v64 + 64) = 0;
      qword_1EE1C2738 = v64;
      v65 = re::introspectionAllocator(v64);
      v67 = re::introspect_RenderGraphTargetHandle(1, v66);
      v68 = (*(*v65 + 32))(v65, 72, 8);
      *v68 = 1;
      *(v68 + 8) = "suMeshBackfacesDepth";
      *(v68 + 16) = v67;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0x1380000000FLL;
      *(v68 + 40) = 0;
      *(v68 + 48) = 0;
      *(v68 + 56) = 0;
      *(v68 + 64) = 0;
      qword_1EE1C2740 = v68;
      v69 = re::introspectionAllocator(v68);
      v71 = re::introspect_RenderGraphTargetHandle(1, v70);
      v72 = (*(*v69 + 32))(v69, 72, 8);
      *v72 = 1;
      *(v72 + 8) = "suOcclusionMatte";
      *(v72 + 16) = v71;
      *(v72 + 24) = 0;
      *(v72 + 32) = 0x1F800000010;
      *(v72 + 40) = 0;
      *(v72 + 48) = 0;
      *(v72 + 56) = 0;
      *(v72 + 64) = 0;
      qword_1EE1C2748 = v72;
      __cxa_guard_release(&qword_1EE1C2668);
    }
  }

  *(this + 2) = 0x20800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 17;
  *(this + 8) = &qword_1EE1C26C8;
  *(this + 9) = re::internal::defaultConstruct<re::ARGuidedFilterOcclusionNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARGuidedFilterOcclusionNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARGuidedFilterOcclusionNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARGuidedFilterOcclusionNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v73 = v75;
}

void *re::allocInfo_SceneUnderstandingGuidedFilterOcclusionConnectionData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2670))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C27E0, "SceneUnderstandingGuidedFilterOcclusionConnectionData");
    __cxa_guard_release(&qword_1EE1C2670);
  }

  return &unk_1EE1C27E0;
}

void re::initInfo_SceneUnderstandingGuidedFilterOcclusionConnectionData(re *this, re::IntrospectionBase *a2)
{
  v42[0] = 0x4001EAA823D50D7ALL;
  v42[1] = "SceneUnderstandingGuidedFilterOcclusionConnectionData";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE1C2678, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2678);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C2680 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "guidedFilterResolutionX";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C2688 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "guidedFilterResolutionY";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xC00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C2690 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint32_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "outputMatteResolutionX";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C2698 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_uint32_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "outputMatteResolutionY";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1400000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1C26A0 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_uint32_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "suMeshDepthEdgesResolutionX";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x2000000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1C26A8 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_uint32_t(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "suMeshDepthEdgesResolutionY";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x2400000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1C26B0 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_uint32_t(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "downsampledCameraFeedResolutionX";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x1800000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1C26B8 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_uint32_t(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "downsampledCameraFeedResolutionY";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x1C00000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1C26C0 = v40;
      __cxa_guard_release(&qword_1EE1C2678);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1C2680;
  *(this + 9) = re::internal::defaultConstruct<re::SceneUnderstandingGuidedFilterOcclusionConnectionData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SceneUnderstandingGuidedFilterOcclusionConnectionData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SceneUnderstandingGuidedFilterOcclusionConnectionData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SceneUnderstandingGuidedFilterOcclusionConnectionData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v41 = v43;
}

void re::ARGuidedFilterOcclusionNode::~ARGuidedFilterOcclusionNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

double re::ARGuidedFilterOcclusionNode::ARGuidedFilterOcclusionNode(re::ARGuidedFilterOcclusionNode *this)
{
  v1 = re::RenderGraphNode::RenderGraphNode(this);
  *v1 = &unk_1F5D164A0;
  *(v1 + 33) = 0;
  result = NAN;
  *(v1 + 34) = -1;
  *(v1 + 35) = 0;
  *(v1 + 36) = -1;
  *(v1 + 37) = 0;
  *(v1 + 38) = -1;
  *(v1 + 39) = 0;
  *(v1 + 40) = -1;
  *(v1 + 41) = 0;
  *(v1 + 42) = -1;
  *(v1 + 43) = 0;
  *(v1 + 44) = -1;
  *(v1 + 45) = 0;
  *(v1 + 46) = -1;
  *(v1 + 47) = 0;
  *(v1 + 48) = -1;
  *(v1 + 49) = 0;
  *(v1 + 50) = -1;
  *(v1 + 51) = 0;
  *(v1 + 52) = -1;
  *(v1 + 53) = 0;
  *(v1 + 54) = -1;
  *(v1 + 55) = 0;
  *(v1 + 56) = -1;
  *(v1 + 57) = 0;
  *(v1 + 58) = -1;
  *(v1 + 59) = 0;
  *(v1 + 60) = -1;
  *(v1 + 61) = 0;
  *(v1 + 62) = -1;
  *(v1 + 63) = 0;
  *(v1 + 64) = -1;
  return result;
}

void re::RenderGraphBlurGenerationNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v15 = 0;
  v18 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v13);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 36, ComputePipelineState);
  if (v28)
  {

    v28 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v21);
  if (v18 == 1 && v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v19 = 0u;
    v20 = 0u;
  }

  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v17 = 0u;
    v16 = 0u;
  }

  v9 = v13;
  if (v13 && (v14 & 1) != 0)
  {
    v9 = (*(*v13 + 40))();
  }

  v15 = 0;
  v18 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v10 = re::getOrCreateComputePipelineState(*(a4 + 1), &v13);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 37, v10);
  if (v28)
  {

    v28 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v21);
  if (v18 == 1 && v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v19 = 0u;
    v20 = 0u;
  }

  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v17 = 0u;
    v16 = 0u;
  }

  v11 = v13;
  if (v13 && (v14 & 1) != 0)
  {
    v11 = (*(*v13 + 40))();
  }

  v15 = 0;
  v18 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v12 = re::getOrCreateComputePipelineState(*(a4 + 1), &v13);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 38, v12);
  if (v28)
  {

    v28 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v21);
  if (v18 == 1 && v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v19 = 0u;
    v20 = 0u;
  }

  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v17 = 0u;
    v16 = 0u;
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}