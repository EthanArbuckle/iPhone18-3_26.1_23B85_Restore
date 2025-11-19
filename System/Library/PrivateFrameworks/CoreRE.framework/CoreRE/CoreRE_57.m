void re::RenderGraphNodeExecutionData::~RenderGraphNodeExecutionData(re::RenderGraphNodeExecutionData *this)
{
  *this = &unk_1F5CC4F48;
  re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 1);
}

{
  *this = &unk_1F5CC4F48;
  re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::DynamicArray<re::NodePatchData>::add(_anonymous_namespace_ *result, void *a2)
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

        result = re::DynamicArray<re::NodePatchData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::NodePatchData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = (*(v3 + 4) + 56 * v5);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v12 = a2[1];
  *v11 = *a2;
  v11[1] = v12;
  *a2 = 0;
  a2[1] = 0;
  v13 = v11[2];
  v11[2] = a2[2];
  a2[2] = v13;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = 0;
  v14 = a2[4];
  v11[3] = a2[3];
  v11[4] = v14;
  a2[3] = 0;
  a2[4] = 0;
  v15 = v11[5];
  v11[5] = a2[5];
  a2[5] = v15;
  v11[6] = a2[6];
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void re::RenderGraphFile::provide(re::RenderGraphFile *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v4 = a4;
  v105 = *MEMORY[0x1E69E9840];
  re::RenderFrame::makeRenderGraph(a4, a3, *(this + 17));
  if (a3)
  {
    v8 = *a3;
    if (*a3)
    {
      v9 = a3[1];
      if (v9)
      {
        v10 = a3 + 2;
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
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = 0x9E3779B97F4A7C17;
  v97[0] = v8;
  v13 = strlen(a2);
  if (v13)
  {
    MurmurHash3_x64_128(a2, v13, 0, &v100);
    v84 = (v101 - 0x61C8864680B583E9 + (v100 << 6) + (v100 >> 2)) ^ v100;
  }

  else
  {
    v84 = 0;
  }

  v14 = strlen(a3);
  if (v14)
  {
    MurmurHash3_x64_128(a3, v14, 0, &v100);
    v12 = ((v101 - 0x61C8864680B583E9 + (v100 << 6) + (v100 >> 2)) ^ v100) - 0x61C8864680B583E9;
  }

  if (*(this + 133))
  {
    v15 = *(this + 132);
    if (v15)
    {
      memset_pattern16(*(this + 64), &memset_pattern_231, 4 * v15);
    }

    v16 = *(this + 134);
    if (v16)
    {
      v17 = *(this + 65);
      do
      {
        if ((*v17 & 0x80000000) != 0)
        {
          *v17 &= ~0x80000000;
        }

        v17 += 6;
        --v16;
      }

      while (v16);
    }

    *(this + 135) = 0x7FFFFFFF;
    *(this + 532) = 0;
    ++*(this + 136);
  }

  re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(this + 504, *(this + 34));
  v87 = (this + 552);
  if (*(this + 145))
  {
    v18 = *(this + 144);
    if (v18)
    {
      memset_pattern16(*(this + 70), &memset_pattern_231, 4 * v18);
    }

    v19 = *(this + 146);
    if (v19)
    {
      v20 = *(this + 71);
      do
      {
        if ((*v20 & 0x80000000) != 0)
        {
          *v20 &= ~0x80000000;
        }

        v20 += 8;
        --v19;
      }

      while (v19);
    }

    *(this + 147) = 0x7FFFFFFF;
    *(this + 580) = 0;
    ++*(this + 148);
  }

  re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(v87, *(this + 14));
  v86 = (this + 600);
  if (*(this + 157))
  {
    v21 = *(this + 156);
    if (v21)
    {
      memset_pattern16(*(this + 76), &memset_pattern_231, 4 * v21);
    }

    v22 = *(this + 158);
    if (v22)
    {
      v23 = *(this + 77);
      do
      {
        if ((*v23 & 0x80000000) != 0)
        {
          *v23 &= ~0x80000000;
        }

        v23 += 8;
        --v22;
      }

      while (v22);
    }

    *(this + 159) = 0x7FFFFFFF;
    *(this + 628) = 0;
    ++*(this + 160);
  }

  re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(v86, *(this + 24));
  v24 = (this + 648);
  if (*(this + 169))
  {
    v25 = *(this + 168);
    if (v25)
    {
      memset_pattern16(*(this + 82), &memset_pattern_231, 4 * v25);
    }

    v26 = *(this + 170);
    if (v26)
    {
      v27 = *(this + 83);
      do
      {
        if ((*v27 & 0x80000000) != 0)
        {
          *v27 &= ~0x80000000;
        }

        v27 += 6;
        --v26;
      }

      while (v26);
    }

    *(this + 171) = 0x7FFFFFFF;
    *(this + 676) = 0;
    ++*(this + 172);
  }

  re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(this + 648, *(this + 44));
  v28 = *(this + 22);
  if (v28)
  {
    v29 = *(this + 24);
    v30 = v29 + 56 * v28;
    do
    {
      v31 = *(v29 + 16) >> 1;
      if (*v24)
      {
        v32 = v31 % *(this + 168);
        v33 = *(*(this + 82) + 4 * v32);
        if (v33 != 0x7FFFFFFF)
        {
          v34 = *(this + 83);
          while (*(v34 + 24 * v33 + 8) != v31)
          {
            LODWORD(v33) = *(v34 + 24 * v33) & 0x7FFFFFFF;
            if (v33 == 0x7FFFFFFF)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_59;
        }
      }

      else
      {
        LODWORD(v32) = 0;
      }

LABEL_58:
      v35 = re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(this + 648, v32, *(v29 + 16) >> 1);
      *(v35 + 8) = v31;
      *(v35 + 16) = v29;
      ++*(this + 172);
LABEL_59:
      v29 += 56;
    }

    while (v29 != v30);
  }

  v83 = (v84 >> 2) + (v84 << 6) + v12;
  v36 = *(this + 7);
  v85 = v4;
  if (v36)
  {
    v37 = *(this + 9);
    v81 = v37 + 160 * v36;
    do
    {
      v38 = *(v37 + 48);
      v92 = *(v37 + 32);
      v93 = v38;
      v94 = *(v37 + 64);
      v95 = *(v37 + 80);
      v91 = *(v37 + 16);
      re::AssetHandle::AssetHandle(v96, (v37 + 88));
      v96[24] = *(v37 + 112);
      if ((atomic_load_explicit(&qword_1EE196918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196918))
      {
        qword_1EE196910 = re::internal::getOrCreateInfo("RenderGraphTargetDescriptionData", re::allocInfo_RenderGraphTargetDescriptionData, re::initInfo_RenderGraphTargetDescriptionData, &qword_1EE196880, 0);
        __cxa_guard_release(&qword_1EE196918);
      }

      re::RenderGraphFile::connectionWalker(this, v4, v83 ^ v84, qword_1EE196910, &v91, v37 + 120);
      if (!*v24)
      {
        goto LABEL_68;
      }

      v39 = *v37 >> 1;
      v40 = *(*(this + 82) + 4 * (v39 % *(this + 168)));
      if (v40 == 0x7FFFFFFF)
      {
        goto LABEL_68;
      }

      v41 = *(this + 83);
      while (*(v41 + 24 * v40 + 8) != v39)
      {
        v40 = *(v41 + 24 * v40) & 0x7FFFFFFF;
        if (v40 == 0x7FFFFFFF)
        {
          goto LABEL_68;
        }
      }

      v52 = v4;
      v53 = v41 + 24 * v40;
      v55 = *(v53 + 16);
      v54 = v53 + 16;
      v56 = *(v55 + 8);
      v57 = *(v55 + 48);
      v58 = *v57 ? v57 : a3;
      re::RenderFrame::tryGetInputTarget(v52, v56, v58, &v98);
      v43 = v98;
      v44 = v99;
      v45 = HIDWORD(v99);
      if ((*(*v54 + 32) & 1) == 0 && (v99 == -1 || HIDWORD(v99) == -1))
      {
LABEL_68:
        v42 = v102;
        if ((v102 - 2) > 0xFFFFFFFC)
        {
          re::RenderFrame::createTarget(v85, &v100, *(v37 + 8), &v98);
          v43 = v98;
          v44 = v99;
          v45 = HIDWORD(v99);
        }

        else
        {
          v102 = 1;
          re::RenderFrame::createTarget(v85, &v100, *(v37 + 8), &v98);
          v43 = v98;
          v44 = v99;
          v45 = HIDWORD(v99);
          v102 = v42;
          re::InlineString<64ul>::format(&v98, *(v37 + 8));
          re::RenderFrame::createTarget(v85, &v100, &v99, &v103);
          v88 = v43;
          v89 = v44;
          v90 = v45;
          v46 = v104;
          *(re::RenderGraphResourceDescriptions::targetDescription((v85 + 3672), &v88) + 84) = v46;
        }
      }

      v47 = *v37 >> 1;
      if (*v87)
      {
        v48 = v47 % *(this + 144);
        v49 = *(*(this + 70) + 4 * v48);
        if (v49 != 0x7FFFFFFF)
        {
          v50 = *(this + 71);
          while (*(v50 + 32 * v49 + 8) != v47)
          {
            v49 = *(v50 + 32 * v49) & 0x7FFFFFFF;
            if (v49 == 0x7FFFFFFF)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_79;
        }
      }

      else
      {
        LODWORD(v48) = 0;
      }

LABEL_78:
      v51 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(v87, v48, *v37 >> 1);
      *(v51 + 8) = v47;
      *(v51 + 16) = v43;
      *(v51 + 24) = v44;
      *(v51 + 28) = v45;
      ++*(this + 148);
LABEL_79:
      re::AssetHandle::~AssetHandle(v96);
      v37 += 160;
      v4 = v85;
    }

    while (v37 != v81);
  }

  v59 = *(this + 12);
  if (!v59)
  {
LABEL_118:
    if ((atomic_load_explicit(&qword_1EE196938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196938))
    {
      qword_1EE196930 = re::introspect_RenderGraphTargetHandle(0, v78);
      __cxa_guard_release(&qword_1EE196938);
    }

    if ((atomic_load_explicit(&qword_1EE196948, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1EE196948))
      {
        qword_1EE196940 = re::introspect_RenderGraphBufferHandle(0, v79);
        __cxa_guard_release(&qword_1EE196948);
      }
    }

    v97[7] = 0;
    operator new();
  }

  v60 = *(this + 14);
  v61 = v60 + 88 * v59;
  while (1)
  {
    v62 = *(v60 + 32);
    v91 = *(v60 + 16);
    v92 = v62;
    if ((atomic_load_explicit(&qword_1EE196928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196928))
    {
      qword_1EE196920 = re::internal::getOrCreateInfo("RenderGraphBufferDescriptionData", re::allocInfo_RenderGraphBufferDescriptionData, re::initInfo_RenderGraphBufferDescriptionData, &qword_1EE1967C0, 0);
      __cxa_guard_release(&qword_1EE196928);
    }

    re::RenderGraphFile::connectionWalker(this, v4, v83 ^ v84, qword_1EE196920, &v91, v60 + 48);
    if (!*v24)
    {
      goto LABEL_98;
    }

    v63 = *v60 >> 1;
    v64 = *(*(this + 82) + 4 * (v63 % *(this + 168)));
    if (v64 == 0x7FFFFFFF)
    {
      goto LABEL_98;
    }

    v65 = *(this + 83);
    while (*(v65 + 24 * v64 + 8) != v63)
    {
      v64 = *(v65 + 24 * v64) & 0x7FFFFFFF;
      if (v64 == 0x7FFFFFFF)
      {
        goto LABEL_98;
      }
    }

    v72 = v65 + 24 * v64;
    v74 = *(v72 + 16);
    v73 = v72 + 16;
    v75 = *(v74 + 8);
    v76 = *(v74 + 48);
    v77 = *v76 ? v76 : a3;
    re::RenderFrame::tryGetInputBuffer(v85, v75, v77, &v98);
    v66 = v98;
    v82 = v99;
    if ((*(*v73 + 32) & 1) == 0 && (v99 == -1 || HIDWORD(v99) == -1))
    {
LABEL_98:
      re::RenderFrame::createBuffer(v85, &v100, *(v60 + 8), &v98);
      v66 = v98;
      v82 = v99;
    }

    v67 = *v60 >> 1;
    if (*v86)
    {
      v68 = v67 % *(this + 156);
      v69 = *(*(this + 76) + 4 * v68);
      if (v69 != 0x7FFFFFFF)
      {
        v70 = *(this + 77);
        while (*(v70 + 32 * v69 + 8) != v67)
        {
          v69 = *(v70 + 32 * v69) & 0x7FFFFFFF;
          if (v69 == 0x7FFFFFFF)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_107;
      }
    }

    else
    {
      LODWORD(v68) = 0;
    }

LABEL_106:
    v71 = re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(v86, v68, *v60 >> 1);
    v71[1] = v67;
    v71[2] = v66;
    v71[3] = v82;
    ++*(this + 160);
LABEL_107:
    v60 += 88;
    v4 = v85;
    if (v60 == v61)
    {
      goto LABEL_118;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      v7 = *(a1 + 16);
      *&v15[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v8 = *&v15[32];
      *(a1 + 24) = v9;
      ++*&v15[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 8);
        do
        {
          if ((*(v11 - 1) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *v11 % *(a1 + 24), *v11);
            v13 = v11[1];
            *(v12 + 8) = *v11;
            *(v12 + 16) = v13;
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v15);
    }
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 3;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v14, v4, a2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = *(a1 + 16);
      *&v14[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 24);
      v8 = *&v14[32];
      *(a1 + 24) = v9;
      ++*&v14[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 2) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v11 - 1) % *(a1 + 24), *(v11 - 1));
            v12[1] = *(v11 - 1);
            v12[2] = 0;
            v12[3] = -1;
            v12[2] = *v11;
            v12[3] = v11[1];
          }

          v11 += 4;
          --v10;
        }

        while (v10);
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 3;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v14, v4, a2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = *(a1 + 16);
      *&v14[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 24);
      v8 = *&v14[32];
      *(a1 + 24) = v9;
      ++*&v14[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 2) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v11 - 1) % *(a1 + 24), *(v11 - 1));
            v12[1] = *(v11 - 1);
            v12[2] = 0;
            v12[3] = -1;
            v12[2] = *v11;
            v12[3] = v11[1];
          }

          v11 += 4;
          --v10;
        }

        while (v10);
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 3;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      v7 = *(a1 + 16);
      *&v15[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v8 = *&v15[32];
      *(a1 + 24) = v9;
      ++*&v15[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 8);
        do
        {
          if ((*(v11 - 1) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *v11 % *(a1 + 24), *v11);
            v13 = v11[1];
            *(v12 + 8) = *v11;
            *(v12 + 16) = v13;
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v15);
    }
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 3;
    }
  }
}

uint64_t re::InlineString<64ul>::format@<X0>(uint64_t a1@<X8>, char a2)
{
  *(a1 + 8) = 0u;
  v3 = a1 + 8;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = 0;
  result = vsnprintf((a1 + 8), 0x40uLL, "%s[MSAA]", &a2);
  if ((result & 0x80000000) != 0)
  {
    *(v3 + *a1) = 0;
  }

  else
  {
    v6 = *a1 + result;
    if (v6 >= 0x40)
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) ", "m_length + result < m_capacity", "vappendf", 446);
      result = _os_crash();
      __break(1u);
    }

    else
    {
      *a1 = v6;
    }
  }

  return result;
}

uint64_t re::RenderFrame::addError(uint64_t a1, uint64_t a2)
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
  v2 = re::DynamicArray<re::DetailedError>::add((a1 + 3376), &v4);
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

void sub_1E2051190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a11)
  {
    if (a12)
    {
      (*(*a11 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::RenderGraphFile::setRuntimeNodeSetting(re::RenderGraphFile *this, const re::StringID *a2, const re::IntrospectionBase *a3, const char *a4, void *a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = 0xBF58476D1CE4E5B9;
  v11 = 0x94D049BB133111EBLL;
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  v13 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 736, a2, v12 ^ (v12 >> 31), buf);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v14 = *re::graphicsLogObjects(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a2 + 1);
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Failed to find node with name [%s].", buf, 0xCu);
    }

    return 0;
  }

  v16 = *(*(this + 94) + 32 * *&buf[12] + 24);
  v17 = *(this + 90);
  if (v17 <= v16)
  {
    v43[0] = 0;
    v48 = 0u;
    v49 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v44 = 136315906;
    *&v44[4] = "operator[]";
    *&v44[12] = 1024;
    *&v44[14] = 468;
    *&v44[18] = 2048;
    *&v44[20] = v16;
    v45 = 2048;
    v46 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  v18 = *(this + 91) + (v16 << 7);
  if (a4)
  {
    v19 = *a4;
    if (*a4)
    {
      v20 = a4[1];
      if (v20)
      {
        v21 = a4 + 2;
        do
        {
          v19 = 31 * v19 + v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  *v44 = 2 * v19;
  *&v44[8] = a4;
  v23 = 0xBF58476D1CE4E5B9 * (v19 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v19) >> 31));
  v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v18 + 80, v44, (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31), buf);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    if (v44[0])
    {
      if (v44[0])
      {
      }
    }

    v43[0] = 0;
    v43[1] = &str_67;
    memset(buf, 0, 36);
    *&buf[40] = 0;
    *&v48 = 0;
    *(&v48 + 1) = &str_67;
    v42[0] = a4;
    v42[1] = strlen(a4);
    re::BindNode::bindPoint((v18 + 8), a3, v42, v44);
    *buf = *v44;
    re::DynamicArray<re::RigDataValue>::operator=(&buf[8], &v44[8]);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v44[8]);
    v25 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v44[8]);
    v26 = *&buf[24];
    if (*&buf[24])
    {
      re::StringID::operator=(&v48, v43);
      re::DynamicArray<re::BindPointAndPath>::add((v18 + 40), buf);
      *v44 = *(v18 + 56) - 1;
      v27 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v18 + 80, v43, v44);
      v28 = v27;
    }

    else
    {
      v29 = *re::graphicsLogObjects(v25);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a2 + 1);
        *v44 = 136315394;
        *&v44[4] = v30;
        *&v44[12] = 2080;
        *&v44[14] = a4;
        _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Failed to find binding path [node].[binding path]: [%s].[%s].", v44, 0x16u);
      }

      v28 = 0;
    }

    if (v48)
    {
      if (v48)
      {
      }
    }

    *&v48 = 0;
    *(&v48 + 1) = &str_67;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
    v24 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
    if (v43[0])
    {
      if (v43[0])
      {
      }
    }

    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    v28 = (*(v18 + 96) + 32 * *&buf[12] + 24);
    if (v44[0])
    {
      if (v44[0])
      {
      }
    }
  }

  v11 = *v28;
  v10 = *(v18 + 56);
  if (v10 <= v11)
  {
LABEL_47:
    v43[0] = 0;
    v48 = 0u;
    v49 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v44 = 136315906;
    *&v44[4] = "operator[]";
    *&v44[12] = 1024;
    *&v44[14] = 789;
    *&v44[18] = 2048;
    *&v44[20] = v11;
    v45 = 2048;
    v46 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v31 = (*(v18 + 72) + (v11 << 6));
  if (*v31 != a3)
  {
    v32 = *re::graphicsLogObjects(v24);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a2 + 1);
      *buf = 136315394;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = a4;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Binding path does not match expected type [node].[binding path]: [%s].[%s].", buf, 0x16u);
    }

    return 0;
  }

  v36 = re::BindPoint::valueUntyped((*(v18 + 72) + (v11 << 6)));
  v37 = (*(*a3 + 32))(a3);
  if (!v37)
  {
    v37 = memcmp(v36, a5, *(a3 + 5));
    if (!v37)
    {
      return 1;
    }
  }

  *(this + 704) = 1;
  memset(&buf[8], 0, 32);
  *buf = re::PassthroughAssetSerialization::instance(void)::instance;
  v38 = *v31;
  *&v44[8] = 0;
  *&v44[16] = buf;
  v34 = v39;
  if ((v39 & 1) == 0)
  {
    v40 = *re::graphicsLogObjects(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a2 + 1);
      *v44 = 136315394;
      *&v44[4] = v41;
      *&v44[12] = 2080;
      *&v44[14] = a4;
      _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Failed to perform deep copy into [node].[binding path]: [%s].[%s]", v44, 0x16u);
    }
  }

  return v34;
}

void sub_1E2051918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  re::StringID::destroyString((v5 + 48));
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 | 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 | 8);
  re::StringID::destroyString(va);
  _Unwind_Resume(a1);
}

void *re::DynamicArray<re::BindPointAndPath>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::BindPointAndPath>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + (v4 << 6);
  v6 = *a2;
  *(v5 + 40) = 0;
  *v5 = v6;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[2];
  *(v5 + 8) = a2[1];
  *(v5 + 16) = v7;
  a2[1] = 0;
  a2[2] = 0;
  v8 = *(v5 + 24);
  *(v5 + 24) = a2[3];
  a2[3] = v8;
  v9 = *(v5 + 40);
  *(v5 + 40) = a2[5];
  a2[5] = v9;
  ++*(a2 + 8);
  ++*(v5 + 32);
  v10 = a2[6];
  *(v5 + 48) = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 48) = a2[6] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 56) = a2[7];
  a2[6] = 0;
  a2[7] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::allocInfo_RenderGraphBufferDescriptionData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1967B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196F70, "RenderGraphBufferDescriptionData");
    __cxa_guard_release(&qword_1EE1967B0);
  }

  return &unk_1EE196F70;
}

void re::initInfo_RenderGraphBufferDescriptionData(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0x761AC20EE8B6461CLL;
  v26[1] = "RenderGraphBufferDescriptionData";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1967B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1967B8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RenderGraphResourceDescriptionType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE196EE0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE196A88 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "length";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE196A90 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "exposeToMaterial";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1C00000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE196A98 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint64_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "protectionOptions";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE196AA0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_float(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "lengthMultiplier";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1800000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE196AA8 = v24;
      __cxa_guard_release(&qword_1EE1967B8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE196A88;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphBufferDescriptionData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphBufferDescriptionData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphBufferDescriptionData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphBufferDescriptionData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

void re::internal::defaultConstruct<re::RenderGraphBufferDescriptionData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 2;
  *(a3 + 8) = -1;
  *(a3 + 16) = -1;
  *(a3 + 24) = 1065353216;
  *(a3 + 28) = 0;
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphBufferDescriptionData>(uint64_t result)
{
  *result = 2;
  *(result + 8) = -1;
  *(result + 16) = -1;
  *(result + 24) = 1065353216;
  *(result + 28) = 0;
  return result;
}

void *re::allocInfo_RenderGraphBufferData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1967C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197000, "RenderGraphBufferData");
    __cxa_guard_release(&qword_1EE1967C8);
  }

  return &unk_1EE197000;
}

void re::initInfo_RenderGraphBufferData(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x2F0DE9BEFAA4A6C4;
  v18[1] = "RenderGraphBufferData";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1967D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1967D0);
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
      qword_1EE196A08 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = v10;
      v12 = qword_1EE1967C0;
      if (!qword_1EE1967C0)
      {
        v12 = re::allocInfo_RenderGraphBufferDescriptionData(v10);
        qword_1EE1967C0 = v12;
        re::initInfo_RenderGraphBufferDescriptionData(v12, v13);
      }

      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "description";
      *(v14 + 16) = v12;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE196A10 = v14;
      v15 = re::introspectionAllocator(v14);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataStoreConnection>>::get(v15);
      v16 = (*(*v15 + 32))(v15, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "connections";
      *(v16 + 16) = &qword_1EE196B58;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE196A18 = v16;
      __cxa_guard_release(&qword_1EE1967D0);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE196A08;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphBufferData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphBufferData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphBufferData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphBufferData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataStoreConnection>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196960, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196960);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196B58);
      qword_1EE196B58 = &unk_1F5CC5088;
      __cxa_guard_release(&qword_1EE196960);
    }
  }

  if ((byte_1EE196793 & 1) == 0)
  {
    v1 = qword_1EE196808;
    if (qword_1EE196808 || (v1 = re::allocInfo_RenderGraphDataStoreConnection(a1), qword_1EE196808 = v1, re::initInfo_RenderGraphDataStoreConnection(v1, v2), (byte_1EE196793 & 1) == 0))
    {
      byte_1EE196793 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196B58, 0);
      qword_1EE196B68 = 0x2800000003;
      dword_1EE196B70 = v3;
      word_1EE196B74 = 0;
      *&xmmword_1EE196B78 = 0;
      *(&xmmword_1EE196B78 + 1) = 0xFFFFFFFFLL;
      qword_1EE196B88 = v1;
      qword_1EE196B90 = 0;
      qword_1EE196B58 = &unk_1F5CC5088;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196B58, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196B78 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::RenderGraphBufferData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 2;
  *(a3 + 24) = -1;
  *(a3 + 32) = -1;
  *(a3 + 40) = 1065353216;
  *(a3 + 44) = 0;
  *(a3 + 80) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  *(a3 + 72) = 0;
}

void re::internal::defaultDestruct<re::RenderGraphBufferData>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a3 + 48);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphBufferData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 2;
  *(result + 24) = -1;
  *(result + 32) = -1;
  *(result + 40) = 1065353216;
  *(result + 44) = 0;
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphBufferData>(re::StringID *a1)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a1 + 48);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphDataNodeConnection(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1967E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197090, "RenderGraphDataNodeConnection");
    __cxa_guard_release(&qword_1EE1967E0);
  }

  return &unk_1EE197090;
}

void re::initInfo_RenderGraphDataNodeConnection(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x5BFF1C4CD5873844;
  v13[1] = "RenderGraphDataNodeConnection";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1967E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1967E8);
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
      qword_1EE1969C8 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataStoreConnection>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "connections";
      *(v11 + 16) = &qword_1EE196B58;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1969D0 = v11;
      __cxa_guard_release(&qword_1EE1967E8);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1969C8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDataNodeConnection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDataNodeConnection>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDataNodeConnection>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDataNodeConnection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::internal::defaultConstruct<re::RenderGraphDataNodeConnection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 48) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::RenderGraphDataNodeConnection>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a3 + 16);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphDataNodeConnection>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphDataNodeConnection>(re::StringID *a1)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a1 + 16);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphDataStoreConnection(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1967F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1967F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197120, "RenderGraphDataStoreConnection");
    __cxa_guard_release(&qword_1EE1967F8);
  }

  return &unk_1EE197120;
}

void re::initInfo_RenderGraphDataStoreConnection(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0xB1F8E4E1F120EA7ALL;
  v19[1] = "RenderGraphDataStoreConnection";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE196800, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE196800);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "toMember";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE196A20 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "fromType";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE196A28 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "fromMember";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE196A30 = v17;
      __cxa_guard_release(&qword_1EE196800);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE196A20;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphDataStoreConnection>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphDataStoreConnection>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphDataStoreConnection>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphDataStoreConnection>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::RenderGraphDataStoreConnection>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  v3 += 40;
  re::DynamicString::setCapacity(v3, 0);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 56) = 0;
  *(v3 + 48) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RenderGraphDataStoreConnection>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicString>::deinit(a3 + 72);
  re::DynamicString::deinit((a3 + 40));

  return re::DynamicArray<re::DynamicString>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RenderGraphDataStoreConnection>(uint64_t a1)
{
  v1 = a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v1 += 40;
  re::DynamicString::setCapacity(v1, 0);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RenderGraphDataStoreConnection>(uint64_t a1)
{
  re::DynamicArray<re::DynamicString>::deinit(a1 + 72);
  re::DynamicString::deinit((a1 + 40));

  return re::DynamicArray<re::DynamicString>::deinit(a1);
}

void re::introspect_RenderGraphSpecifyOperationBaseType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE196818, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE196820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196820))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE196E98, "RenderGraphSpecifyOperationBaseType", 4, 4, 1, 1);
      qword_1EE196E98 = &unk_1F5D0C658;
      qword_1EE196ED8 = &re::introspect_RenderGraphSpecifyOperationBaseType(BOOL)::enumTable;
      dword_1EE196EA8 = 9;
      __cxa_guard_release(&qword_1EE196820);
    }

    if (_MergedGlobals_79)
    {
      break;
    }

    _MergedGlobals_79 = 1;
    re::IntrospectionRegistry::add(&qword_1EE196E98, a2);
    v31 = 0x2209C4ED1E795452;
    v32 = "RenderGraphSpecifyOperationBaseType";
    v36 = 208862;
    v37 = "int";
    v4 = v35[0];
    v5 = v35[1];
    if (v36)
    {
      if (v36)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE196ED8;
      v36 = v4;
      v37 = v5;
      re::TypeBuilder::beginEnumType(v35, &v31, 1, 1, &v36);
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
            *&v34.var0 = 2 * v11;
            v34.var1 = v10;
            re::TypeBuilder::addEnumConstant(v35, v15, &v34);
            if (*&v34.var0)
            {
              if (*&v34.var0)
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
              *&v34.var0 = 2 * v20;
              v34.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v35, v24, &v34);
              if (*&v34.var0)
              {
                if (*&v34.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v35, v26);
      xmmword_1EE196EB8 = v33;
      if (v31)
      {
        if (v31)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v32);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE196818);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 8) = 1;
      *(v30 + 16) = "SpecifyLane";
      qword_1EE196810 = v30;
      __cxa_guard_release(&qword_1EE196818);
    }
  }
}

void re::introspectionTable_RenderGraphSpecifyOperationBase(re *this)
{
  if ((byte_1EE196791 & 1) == 0)
  {
    byte_1EE196791 = 1;
    if ((atomic_load_explicit(&qword_1EE196828, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE196828);
      if (v1)
      {
        qword_1EE196AB0 = "RenderGraphSpecifyLaneOperation";
        v2 = qword_1EE196840;
        if (!qword_1EE196840)
        {
          v2 = re::allocInfo_RenderGraphSpecifyLaneOperation(v1);
          qword_1EE196840 = v2;
          re::initInfo_RenderGraphSpecifyLaneOperation(v2, v3);
        }

        qword_1EE196AB8 = v2;
        qword_1EE196AC0 = 0;
        qword_1EE196AC8 = 1;
        dword_1EE196AD0 = 0;
        __cxa_guard_release(&qword_1EE196828);
      }
    }

    dword_1EE1969D8 = 1;
    qword_1EE1969E0 = &qword_1EE196AB0;
  }
}

void *re::allocInfo_RenderGraphSpecifyLaneOperation(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196830))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1971B0, "RenderGraphSpecifyLaneOperation");
    __cxa_guard_release(&qword_1EE196830);
  }

  return &unk_1EE1971B0;
}

void re::initInfo_RenderGraphSpecifyLaneOperation(re *this, re::IntrospectionBase *a2)
{
  v24[0] = 0xEEB686440C99DCA4;
  v24[1] = "RenderGraphSpecifyLaneOperation";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE196838, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE196838);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE196858;
      if (!qword_1EE196858)
      {
        v8 = re::allocInfo_RenderGraphSpecifyOperationBase(v6);
        qword_1EE196858 = v8;
        re::initInfo_RenderGraphSpecifyOperationBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "RenderGraphSpecifyOperationBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE196AD8 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "lane";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE196AE0 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "graphScopeOverride";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0xB800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE196AE8 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::Optional<re::RenderGraphTargetDescriptionData>>::get(v19);
      v20 = (*(*v19 + 32))(v19, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "targetDescription";
      *(v20 + 16) = &qword_1EE196B98;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE196AF0 = v20;
      v21 = re::introspectionAllocator(v20);
      re::IntrospectionInfo<re::Optional<re::RenderGraphBufferDescriptionData>>::get(v21);
      v22 = (*(*v21 + 32))(v21, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "bufferDescription";
      *(v22 + 16) = &qword_1EE196BD8;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x9000000005;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE196AF8 = v22;
      __cxa_guard_release(&qword_1EE196838);
    }
  }

  *(this + 2) = 0xC800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE196AD8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSpecifyLaneOperation>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSpecifyLaneOperation>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSpecifyLaneOperation>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSpecifyLaneOperation>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v23 = v25;
}

void re::IntrospectionInfo<re::Optional<re::RenderGraphTargetDescriptionData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196968, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196968);
    if (a1)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE196B98);
      qword_1EE196B98 = &unk_1F5CC5120;
      __cxa_guard_release(&qword_1EE196968);
    }
  }

  if ((byte_1EE196794 & 1) == 0)
  {
    v1 = qword_1EE196880;
    if (qword_1EE196880 || (v1 = re::allocInfo_RenderGraphTargetDescriptionData(a1), qword_1EE196880 = v1, re::initInfo_RenderGraphTargetDescriptionData(v1, v2), (byte_1EE196794 & 1) == 0))
    {
      byte_1EE196794 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196B98, 0);
      qword_1EE196BA8 = 0x700000000DLL;
      dword_1EE196BB0 = v3;
      word_1EE196BB4 = 0;
      *&xmmword_1EE196BB8 = 0;
      *(&xmmword_1EE196BB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196BC8 = v1;
      qword_1EE196BD0 = 0;
      qword_1EE196B98 = &unk_1F5CC5120;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196B98, &v13);
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
        re::TypeBuilder::beginOptionalType(&v13, &v11, 0x70uLL, 8uLL, &v12);
        re::TypeBuilder::setOptionalAccessors(&v13, re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196BB8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::RenderGraphBufferDescriptionData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196970, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196970);
    if (a1)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE196BD8);
      qword_1EE196BD8 = &unk_1F5CC51A0;
      __cxa_guard_release(&qword_1EE196970);
    }
  }

  if ((byte_1EE196795 & 1) == 0)
  {
    v1 = qword_1EE1967C0;
    if (qword_1EE1967C0 || (v1 = re::allocInfo_RenderGraphBufferDescriptionData(a1), qword_1EE1967C0 = v1, re::initInfo_RenderGraphBufferDescriptionData(v1, v2), (byte_1EE196795 & 1) == 0))
    {
      byte_1EE196795 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196BD8, 0);
      qword_1EE196BE8 = 0x280000000DLL;
      dword_1EE196BF0 = v3;
      word_1EE196BF4 = 0;
      *&xmmword_1EE196BF8 = 0;
      *(&xmmword_1EE196BF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196C08 = v1;
      qword_1EE196C10 = 0;
      qword_1EE196BD8 = &unk_1F5CC51A0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196BD8, &v13);
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
        re::TypeBuilder::beginOptionalType(&v13, &v11, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setOptionalAccessors(&v13, re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196BF8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::RenderGraphSpecifyLaneOperation>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC4EF0;
  *(a3 + 16) = 0;
  *(a3 + 24) = &str_67;
  *(a3 + 32) = 0;
  *(a3 + 144) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = &str_67;
}

void re::internal::defaultDestruct<re::RenderGraphSpecifyLaneOperation>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  re::StringID::destroyString((a3 + 184));
  if (a3[32] == 1)
  {
    re::AssetHandle::~AssetHandle((a3 + 112));
  }

  re::StringID::destroyString((a3 + 16));
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphSpecifyLaneOperation>(uint64_t result)
{
  *result = &unk_1F5CC4EF0;
  *(result + 16) = 0;
  *(result + 24) = &str_67;
  *(result + 32) = 0;
  *(result + 144) = 0;
  *(result + 184) = 0;
  *(result + 192) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphSpecifyLaneOperation>(_BYTE *a1)
{
  re::StringID::destroyString((a1 + 184));
  if (a1[32] == 1)
  {
    re::AssetHandle::~AssetHandle((a1 + 112));
  }

  re::StringID::destroyString((a1 + 16));
}

void *re::allocInfo_RenderGraphSpecifyOperationBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196848))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197240, "RenderGraphSpecifyOperationBase");
    __cxa_guard_release(&qword_1EE196848);
  }

  return &unk_1EE197240;
}

void re::initInfo_RenderGraphSpecifyOperationBase(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x3AAEC69498BCCC9ELL;
  v12[1] = "RenderGraphSpecifyOperationBase";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE196850, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE196850);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RenderGraphSpecifyOperationBaseType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 32, 8);
      *v8 = 3;
      *(v8 + 8) = &qword_1EE196E98;
      *(v8 + 16) = 0;
      *(v8 + 24) = 8;
      qword_1EE1969E8 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspectionTable_RenderGraphSpecifyOperationBase(v9);
      v10 = (*(*v9 + 32))(v9, 16, 8);
      *v10 = 2;
      *(v10 + 8) = &dword_1EE1969D8;
      qword_1EE1969F0 = v10;
      __cxa_guard_release(&qword_1EE196850);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1969E8;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::introspect_RenderGraphResourceDescriptionType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE196860, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE196868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196868))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE196EE0, "RenderGraphResourceDescriptionType", 4, 4, 1, 1);
      qword_1EE196EE0 = &unk_1F5D0C658;
      qword_1EE196F20 = &re::introspect_RenderGraphResourceDescriptionType(BOOL)::enumTable;
      dword_1EE196EF0 = 9;
      __cxa_guard_release(&qword_1EE196868);
    }

    if (byte_1EE196792)
    {
      break;
    }

    byte_1EE196792 = 1;
    re::IntrospectionRegistry::add(&qword_1EE196EE0, a2);
    v35 = 0x56001466E58CE620;
    v36 = "RenderGraphResourceDescriptionType";
    v40 = 208862;
    v41 = "int";
    v4 = v39[0];
    v5 = v39[1];
    if (v40)
    {
      if (v40)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE196F20;
      v40 = v4;
      v41 = v5;
      re::TypeBuilder::beginEnumType(v39, &v35, 1, 1, &v40);
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
            *&v38.var0 = 2 * v11;
            v38.var1 = v10;
            re::TypeBuilder::addEnumConstant(v39, v15, &v38);
            if (*&v38.var0)
            {
              if (*&v38.var0)
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
              *&v38.var0 = 2 * v20;
              v38.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v39, v24, &v38);
              if (*&v38.var0)
              {
                if (*&v38.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v39, v26);
      xmmword_1EE196F00 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE196860);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "MemoryManaged";
      qword_1EE196A38 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "External";
      qword_1EE196A40 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Unspecified";
      qword_1EE196A48 = v34;
      __cxa_guard_release(&qword_1EE196860);
    }
  }
}

void *re::allocInfo_RenderGraphTargetDescriptionData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196870))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1972D0, "RenderGraphTargetDescriptionData");
    __cxa_guard_release(&qword_1EE196870);
  }

  return &unk_1EE1972D0;
}

void re::initInfo_RenderGraphTargetDescriptionData(re *this, re::IntrospectionBase *a2)
{
  v78[0] = 0xBE1FA06AD453B33ALL;
  v78[1] = "RenderGraphTargetDescriptionData";
  if (v78[0])
  {
    if (v78[0])
    {
    }
  }

  *(this + 2) = v79;
  if ((atomic_load_explicit(&qword_1EE196878, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE196878);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_RenderGraphResourceDescriptionType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE196EE0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE197360 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::mtl::introspect_PixelFormat(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "format";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x400000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE197368 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "width";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xC00000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE197370 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint32_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "height";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE197378 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_uint32_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "sampleCount";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1800000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE197380 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_float(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "widthMultiplier";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x3000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE197388 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_float(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "heightMultiplier";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x3400000007;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE197390 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_RenderGraphTargetDimensionRoundingMode(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "widthRoundingMode";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x3800000008;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE197398 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_RenderGraphTargetDimensionRoundingMode(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "heightRoundingMode";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x3C00000009;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1973A0 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_uint32_t(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "mipLevelCount";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x1C0000000ALL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1973A8 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_BOOL(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "exposeToMaterial";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x600000000BLL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1973B0 = v48;
      v49 = re::introspectionAllocator(v48);
      Action = re::mtl::introspect_LoadAction(1, v50);
      v52 = (*(*v49 + 32))(v49, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "initialLoadAction";
      *(v52 + 16) = Action;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0x400000000CLL;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE1973B8 = v52;
      v53 = re::introspectionAllocator(v52);
      v55 = re::mtl::introspect_TextureUsage(1, v54);
      v56 = (*(*v53 + 32))(v53, 72, 8);
      *v56 = 1;
      *(v56 + 8) = "initialUsageFlags";
      *(v56 + 16) = v55;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0x440000000DLL;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 0;
      qword_1EE1973C0 = v56;
      v57 = re::introspectionAllocator(v56);
      v59 = re::introspect_uint32_t(1, v58);
      v60 = (*(*v57 + 32))(v57, 72, 8);
      *v60 = 1;
      *(v60 + 8) = "tonemapInPlace";
      *(v60 + 16) = v59;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0x200000000ELL;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      qword_1EE1973C8 = v60;
      v61 = re::introspectionAllocator(v60);
      v63 = re::introspect_AssetHandle(1, v62);
      v64 = (*(*v61 + 32))(v61, 72, 8);
      *v64 = 1;
      *(v64 + 8) = "externalTarget";
      *(v64 + 16) = v63;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0x480000000FLL;
      *(v64 + 40) = 0;
      *(v64 + 48) = 0;
      *(v64 + 56) = 0;
      *(v64 + 64) = 0;
      qword_1EE1973D0 = v64;
      v65 = re::introspectionAllocator(v64);
      v67 = re::introspect_uint32_t(1, v66);
      v68 = (*(*v65 + 32))(v65, 72, 8);
      *v68 = 1;
      *(v68 + 8) = "arrayLength";
      *(v68 + 16) = v67;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0x1400000010;
      *(v68 + 40) = 0;
      *(v68 + 48) = 0;
      *(v68 + 56) = 0;
      *(v68 + 64) = 0;
      qword_1EE1973D8 = v68;
      v69 = re::introspectionAllocator(v68);
      v71 = re::introspect_uint64_t(1, v70);
      v72 = (*(*v69 + 32))(v69, 72, 8);
      *v72 = 1;
      *(v72 + 8) = "protectionOptions";
      *(v72 + 16) = v71;
      *(v72 + 24) = 0;
      *(v72 + 32) = 0x2800000011;
      *(v72 + 40) = 0;
      *(v72 + 48) = 0;
      *(v72 + 56) = 0;
      *(v72 + 64) = 0;
      qword_1EE1973E0 = v72;
      v73 = re::introspectionAllocator(v72);
      v75 = re::mtl::introspect_TextureType(1, v74);
      v76 = (*(*v73 + 32))(v73, 72, 8);
      *v76 = 1;
      *(v76 + 8) = "textureType";
      *(v76 + 16) = v75;
      *(v76 + 24) = 0;
      *(v76 + 32) = 18;
      *(v76 + 36) = 8;
      *(v76 + 48) = 0;
      *(v76 + 56) = 0;
      *(v76 + 64) = 0;
      qword_1EE1973E8 = v76;
      __cxa_guard_release(&qword_1EE196878);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 18;
  *(this + 8) = &qword_1EE197360;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTargetDescriptionData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTargetDescriptionData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTargetDescriptionData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTargetDescriptionData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v77 = v79;
}

double re::internal::defaultConstruct<re::RenderGraphTargetDescriptionData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 2;
  *(a3 + 8) = 2;
  *(a3 + 40) = -1;
  *(a3 + 12) = -1;
  *(a3 + 20) = -1;
  *(a3 + 28) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *(a3 + 64) = 2;
  *(a3 + 68) = 0;
  *(a3 + 84) = 0;
  *(a3 + 76) = 0;
  *(a3 + 89) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphTargetDescriptionData>(uint64_t a1)
{
  *a1 = 2;
  *(a1 + 8) = 2;
  *(a1 + 40) = -1;
  *(a1 + 12) = -1;
  *(a1 + 20) = -1;
  *(a1 + 28) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 2;
  *(a1 + 68) = 0;
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 89) = 0;
  return result;
}

void *re::allocInfo_RenderGraphTargetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196888))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1973F0, "RenderGraphTargetData");
    __cxa_guard_release(&qword_1EE196888);
  }

  return &unk_1EE1973F0;
}

void re::initInfo_RenderGraphTargetData(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x2F112D0051684066;
  v18[1] = "RenderGraphTargetData";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE196890, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE196890);
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
      qword_1EE196A50 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = v10;
      v12 = qword_1EE196880;
      if (!qword_1EE196880)
      {
        v12 = re::allocInfo_RenderGraphTargetDescriptionData(v10);
        qword_1EE196880 = v12;
        re::initInfo_RenderGraphTargetDescriptionData(v12, v13);
      }

      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "description";
      *(v14 + 16) = v12;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE196A58 = v14;
      v15 = re::introspectionAllocator(v14);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataStoreConnection>>::get(v15);
      v16 = (*(*v15 + 32))(v15, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "connections";
      *(v16 + 16) = &qword_1EE196B58;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x7800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE196A60 = v16;
      __cxa_guard_release(&qword_1EE196890);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE196A50;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTargetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTargetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTargetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTargetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::RenderGraphTargetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 2;
  *(a3 + 24) = 2;
  *(a3 + 56) = -1;
  *(a3 + 28) = -1;
  *(a3 + 36) = -1;
  *(a3 + 44) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 64) = result;
  *(a3 + 72) = 0;
  *(a3 + 80) = 2;
  *(a3 + 152) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = 0;
  *(a3 + 144) = 0;
  *(a3 + 84) = 0;
  *(a3 + 100) = 0;
  *(a3 + 92) = 0;
  *(a3 + 105) = 0;
  return result;
}

void re::internal::defaultDestruct<re::RenderGraphTargetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a3 + 120);
  re::AssetHandle::~AssetHandle((a3 + 88));

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::RenderGraphTargetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 2;
  *(a1 + 24) = 2;
  *(a1 + 56) = -1;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  *(a1 + 44) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 64) = result;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 152) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 84) = 0;
  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  *(a1 + 105) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphTargetData>(uint64_t a1)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a1 + 120);
  re::AssetHandle::~AssetHandle((a1 + 88));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphNodeDataPointer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1968A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197480, "RenderGraphNodeDataPointer");
    __cxa_guard_release(&qword_1EE1968A0);
  }

  return &unk_1EE197480;
}

void re::initInfo_RenderGraphNodeDataPointer(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0xD192579ECB7666F2;
  v13[1] = "RenderGraphNodeDataPointer";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1968A8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1968A8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::RenderGraphNode *>::get();
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "data";
      *(v9 + 16) = &qword_1EE196C18;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 2;
      *(v9 + 48) = v8;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1969F8 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 8, 4);
      *v11 = 0x100000004;
      qword_1EE196A00 = v11;
      __cxa_guard_release(&qword_1EE1968A8);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1969F8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphNodeDataPointer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphNodeDataPointer>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphNodeDataPointer>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphNodeDataPointer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::IntrospectionInfo<re::RenderGraphNode *>::get()
{
  if ((atomic_load_explicit(&qword_1EE196978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196978))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE196C18);
    __cxa_guard_release(&qword_1EE196978);
  }

  if ((byte_1EE196796 & 1) == 0)
  {
    byte_1EE196796 = 1;
    v0 = re::introspect_RenderGraphNode(1);
    ArcSharedObject::ArcSharedObject(&qword_1EE196C18, 0);
    qword_1EE196C28 = 0x800000001;
    dword_1EE196C30 = 8;
    word_1EE196C34 = 0;
    *&xmmword_1EE196C38 = 0;
    *(&xmmword_1EE196C38 + 1) = 0xFFFFFFFFLL;
    qword_1EE196C18 = &unk_1F5CBD2C0;
    qword_1EE196C48 = v0;
    qword_1EE196C50 = 0;
    re::IntrospectionRegistry::add(v1, v2);
    re::getPrettyTypeName(&qword_1EE196C18, &v7);
    if (BYTE8(v7))
    {
      v3 = v8;
    }

    else
    {
      v3 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    if (v9 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v5 = v7;
    }

    else
    {
      v7 = *(v0 + 32);
      v5 = v6;
    }

    xmmword_1EE196C38 = v5;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::internal::defaultConstructV2<re::RenderGraphNodeDataPointer>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *re::allocInfo_RenderGraphInputData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1968B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197510, "RenderGraphInputData");
    __cxa_guard_release(&qword_1EE1968B8);
  }

  return &unk_1EE197510;
}

void re::initInfo_RenderGraphInputData(re *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x228CE084AB270078;
  v31[1] = "RenderGraphInputData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1968C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1968C0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "lane";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE196B28 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "resource";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE196B30 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "Target";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE196B38 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::StringID>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "Buffer";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE196B40 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "inputOnly";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x2000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE196B48 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::IntrospectionInfo<re::StringID>::get(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "graphScopeOverride";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x2800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE196B50 = v29;
      __cxa_guard_release(&qword_1EE1968C0);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE196B28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphInputData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphInputData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphInputData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphInputData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

void re::internal::defaultConstruct<re::RenderGraphInputData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = &str_67;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
}

void re::internal::defaultDestruct<re::RenderGraphInputData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 40));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::RenderGraphInputData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 24) = &str_67;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphInputData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 40));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphOutputData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1968D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968D0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1975A0, "RenderGraphOutputData");
    __cxa_guard_release(&qword_1EE1968D0);
  }

  return &unk_1EE1975A0;
}

void re::initInfo_RenderGraphOutputData(re *this, re::IntrospectionBase *a2)
{
  v27[0] = 0x2F105BAD7F8B1F46;
  v27[1] = "RenderGraphOutputData";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1968D8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1968D8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "lane";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE196B00 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "graphScopeOverride";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000003;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE196B08 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "resource";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE196B10 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::StringID>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "Target";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1000000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE196B18 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::IntrospectionInfo<re::StringID>::get(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "Buffer";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1000000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE196B20 = v25;
      __cxa_guard_release(&qword_1EE1968D8);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE196B00;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphOutputData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphOutputData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphOutputData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphOutputData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void re::internal::defaultConstruct<re::RenderGraphOutputData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = &str_67;
}

void re::internal::defaultDestruct<re::RenderGraphOutputData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::RenderGraphOutputData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphOutputData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphInheritanceData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1968E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1968E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197630, "RenderGraphInheritanceData");
    __cxa_guard_release(&qword_1EE1968E8);
  }

  return &unk_1EE197630;
}

void re::initInfo_RenderGraphInheritanceData(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x2D46A26BFC724E78;
  v23[1] = "RenderGraphInheritanceData";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1968F0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1968F0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "lane";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE196A68 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "Target";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE196A70 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "Buffer";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE196A78 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::StringID>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "graphScopeOverride";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE196A80 = v21;
      __cxa_guard_release(&qword_1EE1968F0);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE196A68;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphInheritanceData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphInheritanceData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphInheritanceData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphInheritanceData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

void re::internal::defaultConstruct<re::RenderGraphInheritanceData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = &str_67;
}

void re::internal::defaultDestruct<re::RenderGraphInheritanceData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::RenderGraphInheritanceData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphInheritanceData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RenderGraphFile(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196900))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1976C0, "RenderGraphFile");
    __cxa_guard_release(&qword_1EE196900);
  }

  return &unk_1EE1976C0;
}

void re::initInfo_RenderGraphFile(re *this, re::IntrospectionBase *a2)
{
  v27[0] = 0xA3C1F00635BFA5A8;
  v27[1] = "RenderGraphFile";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE196908, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE196908);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE196F28 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphTargetData>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "targets";
      *(v11 + 16) = &qword_1EE196C58;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE196F30 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphBufferData>>::get(v12);
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "buffers";
      *(v13 + 16) = &qword_1EE196C98;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x5000000003;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE196F38 = v13;
      v14 = re::introspectionAllocator(v13);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphNodeDataPointer>>::get(v14);
      v15 = (*(*v14 + 32))(v14, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "nodes";
      *(v15 + 16) = &qword_1EE196CD8;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x7800000004;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE196F40 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphInputData>>::get(v16);
      v17 = (*(*v16 + 32))(v16, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "inputs";
      *(v17 + 16) = &qword_1EE196D18;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0xA000000005;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE196F48 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphOutputData>>::get(v18);
      v19 = (*(*v18 + 32))(v18, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "outputs";
      *(v19 + 16) = &qword_1EE196D58;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0xF000000006;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE196F50 = v19;
      v20 = re::introspectionAllocator(v19);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphSpecifyOperationBase *>>::get(v20);
      v21 = (*(*v20 + 32))(v20, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "operations";
      *(v21 + 16) = &qword_1EE196D98;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x11800000007;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE196F58 = v21;
      v22 = re::introspectionAllocator(v21);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataNodeConnection>>::get(v22);
      v23 = (*(*v22 + 32))(v22, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "connections";
      *(v23 + 16) = &qword_1EE196E18;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x14000000008;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE196F60 = v23;
      v24 = re::introspectionAllocator(v23);
      re::IntrospectionInfo<re::DynamicArray<re::RenderGraphInheritanceData>>::get(v24);
      v25 = (*(*v24 + 32))(v24, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "propertyInheritance";
      *(v25 + 16) = &qword_1EE196E58;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xC800000009;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE196F68 = v25;
      __cxa_guard_release(&qword_1EE196908);
    }
  }

  *(this + 2) = 0x36000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE196F28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphTargetData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196980, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196980);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196C58);
      qword_1EE196C58 = &unk_1F5CC5220;
      __cxa_guard_release(&qword_1EE196980);
    }
  }

  if ((byte_1EE196797 & 1) == 0)
  {
    v1 = qword_1EE196898;
    if (qword_1EE196898 || (v1 = re::allocInfo_RenderGraphTargetData(a1), qword_1EE196898 = v1, re::initInfo_RenderGraphTargetData(v1, v2), (byte_1EE196797 & 1) == 0))
    {
      byte_1EE196797 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196C58, 0);
      qword_1EE196C68 = 0x2800000003;
      dword_1EE196C70 = v3;
      word_1EE196C74 = 0;
      *&xmmword_1EE196C78 = 0;
      *(&xmmword_1EE196C78 + 1) = 0xFFFFFFFFLL;
      qword_1EE196C88 = v1;
      qword_1EE196C90 = 0;
      qword_1EE196C58 = &unk_1F5CC5220;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196C58, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196C78 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphBufferData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196988, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196988);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196C98);
      qword_1EE196C98 = &unk_1F5CC52B8;
      __cxa_guard_release(&qword_1EE196988);
    }
  }

  if ((byte_1EE196798 & 1) == 0)
  {
    v1 = qword_1EE1967D8;
    if (qword_1EE1967D8 || (v1 = re::allocInfo_RenderGraphBufferData(a1), qword_1EE1967D8 = v1, re::initInfo_RenderGraphBufferData(v1, v2), (byte_1EE196798 & 1) == 0))
    {
      byte_1EE196798 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196C98, 0);
      qword_1EE196CA8 = 0x2800000003;
      dword_1EE196CB0 = v3;
      word_1EE196CB4 = 0;
      *&xmmword_1EE196CB8 = 0;
      *(&xmmword_1EE196CB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196CC8 = v1;
      qword_1EE196CD0 = 0;
      qword_1EE196C98 = &unk_1F5CC52B8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196C98, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196CB8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphNodeDataPointer>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196990, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196990);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196CD8);
      qword_1EE196CD8 = &unk_1F5CC5350;
      __cxa_guard_release(&qword_1EE196990);
    }
  }

  if ((byte_1EE196799 & 1) == 0)
  {
    v1 = qword_1EE1968B0;
    if (qword_1EE1968B0 || (v1 = re::allocInfo_RenderGraphNodeDataPointer(a1), qword_1EE1968B0 = v1, re::initInfo_RenderGraphNodeDataPointer(v1, v2), (byte_1EE196799 & 1) == 0))
    {
      byte_1EE196799 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196CD8, 0);
      qword_1EE196CE8 = 0x2800000003;
      dword_1EE196CF0 = v3;
      word_1EE196CF4 = 0;
      *&xmmword_1EE196CF8 = 0;
      *(&xmmword_1EE196CF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196D08 = v1;
      qword_1EE196D10 = 0;
      qword_1EE196CD8 = &unk_1F5CC5350;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196CD8, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196CF8 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphInputData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE196998, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE196998);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196D18);
      qword_1EE196D18 = &unk_1F5CC53E8;
      __cxa_guard_release(&qword_1EE196998);
    }
  }

  if ((byte_1EE19679A & 1) == 0)
  {
    v1 = qword_1EE1968C8;
    if (qword_1EE1968C8 || (v1 = re::allocInfo_RenderGraphInputData(a1), qword_1EE1968C8 = v1, re::initInfo_RenderGraphInputData(v1, v2), (byte_1EE19679A & 1) == 0))
    {
      byte_1EE19679A = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196D18, 0);
      qword_1EE196D28 = 0x2800000003;
      dword_1EE196D30 = v3;
      word_1EE196D34 = 0;
      *&xmmword_1EE196D38 = 0;
      *(&xmmword_1EE196D38 + 1) = 0xFFFFFFFFLL;
      qword_1EE196D48 = v1;
      qword_1EE196D50 = 0;
      qword_1EE196D18 = &unk_1F5CC53E8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196D18, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196D38 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphOutputData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1969A0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1969A0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196D58);
      qword_1EE196D58 = &unk_1F5CC5480;
      __cxa_guard_release(&qword_1EE1969A0);
    }
  }

  if ((byte_1EE19679B & 1) == 0)
  {
    v1 = qword_1EE1968E0;
    if (qword_1EE1968E0 || (v1 = re::allocInfo_RenderGraphOutputData(a1), qword_1EE1968E0 = v1, re::initInfo_RenderGraphOutputData(v1, v2), (byte_1EE19679B & 1) == 0))
    {
      byte_1EE19679B = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196D58, 0);
      qword_1EE196D68 = 0x2800000003;
      dword_1EE196D70 = v3;
      word_1EE196D74 = 0;
      *&xmmword_1EE196D78 = 0;
      *(&xmmword_1EE196D78 + 1) = 0xFFFFFFFFLL;
      qword_1EE196D88 = v1;
      qword_1EE196D90 = 0;
      qword_1EE196D58 = &unk_1F5CC5480;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196D58, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196D78 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphSpecifyOperationBase *>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1969A8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1969A8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196D98);
      qword_1EE196D98 = &unk_1F5CC5518;
      __cxa_guard_release(&qword_1EE1969A8);
    }
  }

  if ((byte_1EE19679C & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1969B0, memory_order_acquire) & 1) == 0)
    {
      a1 = __cxa_guard_acquire(&qword_1EE1969B0);
      if (a1)
      {
        re::IntrospectionPointer::IntrospectionPointer(&qword_1EE196DD8);
        __cxa_guard_release(&qword_1EE1969B0);
      }
    }

    if ((byte_1EE19679D & 1) == 0)
    {
      byte_1EE19679D = 1;
      v1 = qword_1EE196858;
      if (!qword_1EE196858)
      {
        v1 = re::allocInfo_RenderGraphSpecifyOperationBase(a1);
        qword_1EE196858 = v1;
        re::initInfo_RenderGraphSpecifyOperationBase(v1, v2);
      }

      ArcSharedObject::ArcSharedObject(&qword_1EE196DD8, 0);
      qword_1EE196DE8 = 0x800000001;
      dword_1EE196DF0 = 8;
      word_1EE196DF4 = 0;
      *&xmmword_1EE196DF8 = 0;
      *(&xmmword_1EE196DF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196DD8 = &unk_1F5CBD2C0;
      qword_1EE196E08 = v1;
      unk_1EE196E10 = 0;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE196DD8, &v18);
      if (BYTE8(v18))
      {
        v5 = v19;
      }

      else
      {
        v5 = &v18 + 9;
      }

      if (v18 && (BYTE8(v18) & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      if (v20 >> 1 == 94623636 && (v21 == "char*" || !strcmp(v21, "char*")))
      {
        v7 = v18;
      }

      else
      {
        v18 = *(v1 + 2);
        v7 = v22;
      }

      xmmword_1EE196DF8 = v7;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }

    if ((byte_1EE19679C & 1) == 0)
    {
      byte_1EE19679C = 1;
      v8 = dword_1EE196DF0;
      ArcSharedObject::ArcSharedObject(&qword_1EE196D98, 0);
      qword_1EE196DA8 = 0x2800000003;
      dword_1EE196DB0 = v8;
      word_1EE196DB4 = 0;
      *&xmmword_1EE196DB8 = 0;
      *(&xmmword_1EE196DB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE196DC8 = &qword_1EE196DD8;
      qword_1EE196DD0 = 0;
      qword_1EE196D98 = &unk_1F5CC5518;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&qword_1EE196D98, &v18);
      if (BYTE8(v18))
      {
        v11 = v19;
      }

      else
      {
        v11 = &v18 + 9;
      }

      if (v18 && (BYTE8(v18) & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = xmmword_1EE196DF8;
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(&v20);
        re::TypeBuilder::TypeBuilder(&v18, &v20);
        v17 = v15;
        re::TypeBuilder::beginListType(&v18, &v16, 1, 0x28uLL, 8uLL, &v17);
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(&v20);
      }

      xmmword_1EE196DB8 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphDataNodeConnection>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1969B8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1969B8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196E18);
      qword_1EE196E18 = &unk_1F5CC55B0;
      __cxa_guard_release(&qword_1EE1969B8);
    }
  }

  if ((byte_1EE19679E & 1) == 0)
  {
    v1 = qword_1EE1967F0;
    if (qword_1EE1967F0 || (v1 = re::allocInfo_RenderGraphDataNodeConnection(a1), qword_1EE1967F0 = v1, re::initInfo_RenderGraphDataNodeConnection(v1, v2), (byte_1EE19679E & 1) == 0))
    {
      byte_1EE19679E = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196E18, 0);
      qword_1EE196E28 = 0x2800000003;
      dword_1EE196E30 = v3;
      word_1EE196E34 = 0;
      *&xmmword_1EE196E38 = 0;
      *(&xmmword_1EE196E38 + 1) = 0xFFFFFFFFLL;
      qword_1EE196E48 = v1;
      qword_1EE196E50 = 0;
      qword_1EE196E18 = &unk_1F5CC55B0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196E18, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196E38 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphInheritanceData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1969C0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1969C0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196E58);
      qword_1EE196E58 = &unk_1F5CC5648;
      __cxa_guard_release(&qword_1EE1969C0);
    }
  }

  if ((byte_1EE19679F & 1) == 0)
  {
    v1 = qword_1EE1968F8;
    if (qword_1EE1968F8 || (v1 = re::allocInfo_RenderGraphInheritanceData(a1), qword_1EE1968F8 = v1, re::initInfo_RenderGraphInheritanceData(v1, v2), (byte_1EE19679F & 1) == 0))
    {
      byte_1EE19679F = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196E58, 0);
      qword_1EE196E68 = 0x2800000003;
      dword_1EE196E70 = v3;
      word_1EE196E74 = 0;
      *&xmmword_1EE196E78 = 0;
      *(&xmmword_1EE196E78 + 1) = 0xFFFFFFFFLL;
      qword_1EE196E88 = v1;
      qword_1EE196E90 = 0;
      qword_1EE196E58 = &unk_1F5CC5648;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE196E58, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE196E78 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RenderGraphFile>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC5700;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *a3 = &unk_1F5CC4EA8;
  *(a3 + 40) = 0;
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
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 304) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  re::DynamicString::setCapacity((a3 + 368), 0);
  result = 0.0;
  *(a3 + 428) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 444) = 0x7FFFFFFFLL;
  *(a3 + 456) = 0u;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0;
  *(a3 + 492) = 0x7FFFFFFFLL;
  *(a3 + 504) = 0u;
  *(a3 + 520) = 0u;
  *(a3 + 536) = 0;
  *(a3 + 540) = 0x7FFFFFFFLL;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0;
  *(a3 + 588) = 0x7FFFFFFFLL;
  *(a3 + 632) = 0;
  *(a3 + 600) = 0u;
  *(a3 + 616) = 0u;
  *(a3 + 636) = 0x7FFFFFFFLL;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0u;
  *(a3 + 680) = 0;
  *(a3 + 684) = 0x7FFFFFFFLL;
  *(a3 + 696) = 0;
  *(a3 + 704) = 1;
  *(a3 + 712) = 0u;
  *(a3 + 728) = 0u;
  *(a3 + 744) = 0u;
  *(a3 + 756) = 0u;
  *(a3 + 772) = 0x7FFFFFFFLL;
  *(a3 + 800) = 0;
  *(a3 + 808) = 0;
  *(a3 + 784) = 0u;
  *(a3 + 856) = 0;
  *(a3 + 848) = 0;
  *(a3 + 816) = 0u;
  *(a3 + 832) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphFile>(uint64_t a1)
{
  *a1 = &unk_1F5CC5700;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *a1 = &unk_1F5CC4EA8;
  *(a1 + 40) = 0;
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
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  re::DynamicString::setCapacity((a1 + 368), 0);
  result = 0.0;
  *(a1 + 428) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 444) = 0x7FFFFFFFLL;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 492) = 0x7FFFFFFFLL;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 540) = 0x7FFFFFFFLL;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 588) = 0x7FFFFFFFLL;
  *(a1 + 632) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 636) = 0x7FFFFFFFLL;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0;
  *(a1 + 684) = 0x7FFFFFFFLL;
  *(a1 + 696) = 0;
  *(a1 + 704) = 1;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 756) = 0u;
  *(a1 + 772) = 0x7FFFFFFFLL;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  return result;
}

void re::RenderGraphSpecifyLaneOperation::~RenderGraphSpecifyLaneOperation(re::RenderGraphSpecifyLaneOperation *this)
{
  re::StringID::destroyString((this + 184));
  if (*(this + 32) == 1)
  {
    re::AssetHandle::~AssetHandle((this + 112));
  }

  re::StringID::destroyString((this + 16));
}

{
  re::StringID::destroyString((this + 184));
  if (*(this + 32) == 1)
  {
    re::AssetHandle::~AssetHandle((this + 112));
  }

  re::StringID::destroyString((this + 16));

  JUMPOUT(0x1E6906520);
}

unint64_t re::hashStringWithLength(re *this, const char *a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("UpdateMaterialTextureSource", 0x1BuLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128(this, a2, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128(this, 5uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("DynamicFunctionConstants", 0x18uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

double re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 16 * v3;
      do
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
        }

        v4 += 16;
      }

      while (v5 != v4);
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

uint64_t re::RenderGraphDataStore::tryGetIntrospectionByNameHash@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(this + 176) || (v3 = *(*(this + 184) + 4 * (a2 % *(this + 200))), v3 == 0x7FFFFFFF))
  {
LABEL_6:
    *a3 = 0;
  }

  else
  {
    v4 = *(this + 192);
    while (*(v4 + 24 * v3 + 8) != a2)
    {
      v3 = *(v4 + 24 * v3) & 0x7FFFFFFF;
      if (v3 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    *a3 = 1;
    *(a3 + 8) = *(v4 + 24 * v3 + 16);
  }

  return this;
}

uint64_t re::RenderGraphDataStore::tryGetByTypeNameHash(re::RenderGraphDataStore *this, uint64_t a2, unint64_t a3)
{
  v4 = (a2 + (a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9) ^ a3;
  v10 = v4;
  if (*(this + 2))
  {
    v5 = *(*(this + 3) + 4 * (v4 % *(this + 10)));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(this + 4);
      while (*(v6 + 24 * v5 + 8) != v4)
      {
        v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_13;
    }
  }

LABEL_6:
  if (*(this + 8))
  {
    v5 = *(*(this + 9) + 4 * (v4 % *(this + 22)));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(this + 10);
      while (*(v6 + 24 * v5 + 8) != v4)
      {
        v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

LABEL_13:
      v8 = v6 + 24 * v5 + 16;
      return *v8;
    }
  }

LABEL_11:
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 14, &v10);
  if (v7 != -1)
  {
    v8 = *(this + 15) + 16 * v7 + 8;
    return *v8;
  }

  return 0;
}

uint64_t re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 24 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
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

double re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<re::NodePatchData>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
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

__n128 re::DynamicArray<re::DetailedError>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DetailedError>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = result;
  *(v5 + 40) = a2[2].n128_u64[1];
  v7 = a2[1].n128_u64[1];
  *(v5 + 16) = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  v8 = a2[2].n128_u64[0];
  a2[2].n128_u64[1] = 0;
  v10 = *(v5 + 24);
  v9 = *(v5 + 32);
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  a2[1].n128_u64[1] = v10;
  a2[2].n128_u64[0] = v9;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::DetailedError>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DetailedError>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DetailedError>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DetailedError>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DetailedError>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 2) = 0u;
          *v11 = v12;
          v14 = v8[2];
          v13 = (v8 + 2);
          v11[2] = v14;
          *v13 = 0;
          v11[5] = *(v13 + 3);
          *(v13 + 3) = 0;
          v16 = v11[3];
          v15 = v11[4];
          v17 = *(v13 + 2);
          v11[3] = *(v13 + 1);
          v11[4] = v17;
          *(v13 + 1) = v16;
          *(v13 + 2) = v15;
          re::DynamicString::deinit(v13);
          v11 += 6;
          v8 = (v13 + 32);
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

void re::RenderGraphTargetData::~RenderGraphTargetData(re::RenderGraphTargetData *this)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(this + 120);
  re::AssetHandle::~AssetHandle((this + 88));
  re::StringID::destroyString(this);
}

void re::RenderGraphInputData::~RenderGraphInputData(re::RenderGraphInputData *this)
{
  re::StringID::destroyString((this + 40));
  re::StringID::destroyString((this + 16));
  re::StringID::destroyString(this);
}

void re::RenderGraphOutputData::~RenderGraphOutputData(re::RenderGraphOutputData *this)
{
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));
  re::StringID::destroyString(this);
}

uint64_t re::DynamicArray<re::BindPointAndPath>::deinit(uint64_t a1)
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
        v5 = (v3 + 48);
        v6 = v4 << 6;
        do
        {
          re::StringID::destroyString(v5);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 - 40);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 - 40);
          v5 = (v5 + 64);
          v6 -= 64;
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

uint64_t re::DynamicArray<re::RenderGraphBufferData>::deinit(uint64_t a1)
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
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v3 + 48);
          re::StringID::destroyString(v3);
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

uint64_t re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit(uint64_t a1)
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
        v5 = 56 * v4;
        do
        {
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v3 + 16);
          re::StringID::destroyString(v3);
          v3 = (v3 + 56);
          v5 -= 56;
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

double re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 24);
          re::FixedArray<CoreIKTransform>::deinit((v8 + 48));
          re::FixedArray<CoreIKTransform>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 88;
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

uint64_t re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(uint64_t a1)
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
        v5 = 136 * v4;
        do
        {
          re::DynamicArray<re::DynamicString>::deinit(v3 + 72);
          re::DynamicString::deinit((v3 + 40));
          re::DynamicArray<re::DynamicString>::deinit(v3);
          v3 += 136;
          v5 -= 136;
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

void re::RenderGraphDataStoreConnection::~RenderGraphDataStoreConnection(re::RenderGraphDataStoreConnection *this)
{
  re::DynamicArray<re::DynamicString>::deinit(this + 72);
  re::DynamicString::deinit((this + 40));
  re::DynamicArray<re::DynamicString>::deinit(this);
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
{
  v6 = *(a1 + 36);
  if (v6 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 32);
    v7 = v6;
    if (v6 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v6 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v26, v11, v10);
          v13 = *v26;
          *v26 = *a1;
          *a1 = v13;
          v14 = *&v26[16];
          v15 = *(a1 + 16);
          *&v26[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v16 = *&v26[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = (v15 + 8);
            do
            {
              if ((*(v19 - 1) & 0x80000000) != 0)
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addAsMove(a1, *v19 % *(a1 + 24), *v19, v19);
              }

              v19 += 2;
              --v18;
            }

            while (v18);
          }

          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v26);
        }
      }

      else
      {
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v7 = *(a1 + 32);
    }

    *(a1 + 32) = v7 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 16 * v6);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 16 * v6);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 16 * v6;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(*(a1 + 16) + v23) = *(*(a1 + 16) + 16 * v6) & 0x80000000 | *(v24 + 4 * a2);
  *(*(a1 + 16) + 16 * v6 + 8) = *a4;
  *(v24 + 4 * a2) = v6;
  ++*(a1 + 28);
  return v6;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 16 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

__n128 std::__function::__func<re::RenderGraphFile::calculateValidity(void)::$_0,std::allocator<re::RenderGraphFile::calculateValidity(void)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC4F88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::RenderGraphFile::calculateValidity(void)::$_0,std::allocator<re::RenderGraphFile::calculateValidity(void)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t result, uint64_t a2, unint64_t **a3)
{
  if (*(a2 + 16) == 11)
  {
    v4 = result;
    v5 = *a3;
    v6 = *(a2 + 48);
    if (!strcmp(v6, "RenderGraphTargetHandle"))
    {
      v7 = *v5;
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(*(v4 + 8), *v5))
      {
        v8 = *(v4 + 16);
        v9 = *v8;
        if ((**v8 & 1) == 0)
        {
          re::DynamicString::append(*(v8 + 8), "\n", 1uLL);
          v9 = *v8;
          v7 = *v5;
        }

        *v9 = 0;
        re::DynamicString::appendf(*(v4 + 24), "Node (%s) references target named (%llu) which is undefined.", *(*(*(v4 + 32) + 8) + 16), v7);
        v6 = *(a2 + 48);
      }
    }

    result = strcmp(v6, "RenderGraphBufferHandle");
    if (!result)
    {
      v10 = *v5;
      result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(*(v4 + 40), *v5);
      if ((result & 1) == 0)
      {
        v11 = *(v4 + 16);
        v12 = *v11;
        if ((**v11 & 1) == 0)
        {
          re::DynamicString::append(*(v11 + 8), "\n", 1uLL);
          v12 = *v11;
          v10 = *v5;
        }

        *v12 = 0;
        return re::DynamicString::appendf(*(v4 + 24), "Node (%s) references buffer named (%llu) which is undefined.", *(*(*(v4 + 32) + 8) + 16), v10);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<re::RenderGraphFile::calculateValidity(void)::$_0,std::allocator<re::RenderGraphFile::calculateValidity(void)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 16);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 24);
            v16 = v14 % v15;
            v17 = *(a1 + 36);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 32);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 24);
                v18 = *(a1 + 32);
                v12 = *(a1 + 8);
              }

              *(a1 + 32) = v18 + 1;
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 36) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 16) + 24 * v17 + 8) = *(*(a1 + 16) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 16) + 24 * v17) = v14;
            *(*(a1 + 16) + 24 * v17 + 16) = *v13;
            v12 = *(a1 + 8);
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 28) + 1;
            *(a1 + 28) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

void re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

void re::HashSetBase<re::RenderGraphSpecifyOperationBase *,re::RenderGraphSpecifyOperationBase *,re::internal::ValueAsKey<re::RenderGraphSpecifyOperationBase *>,re::Hash<re::RenderGraphSpecifyOperationBase *>,re::EqualTo<re::RenderGraphSpecifyOperationBase *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 16);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 24);
            v16 = v14 % v15;
            v17 = *(a1 + 36);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 32);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::RenderGraphSpecifyOperationBase *,re::RenderGraphSpecifyOperationBase *,re::internal::ValueAsKey<re::RenderGraphSpecifyOperationBase *>,re::Hash<re::RenderGraphSpecifyOperationBase *>,re::EqualTo<re::RenderGraphSpecifyOperationBase *>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 24);
                v18 = *(a1 + 32);
                v12 = *(a1 + 8);
              }

              *(a1 + 32) = v18 + 1;
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 36) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 16) + 24 * v17 + 8) = *(*(a1 + 16) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 16) + 24 * v17) = v14;
            *(*(a1 + 16) + 24 * v17 + 16) = *v13;
            v12 = *(a1 + 8);
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 28) + 1;
            *(a1 + 28) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

void *re::DynamicArray<re::RenderGraphDataStoreConnection>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
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
        v10 = 0;
        v11 = v8 + 136 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 5) = 0u;
          *(v13 + 7) = 0u;
          v13[5] = *(v8 + v10 + 40);
          *(v8 + v10 + 40) = 0;
          v13[8] = *(v8 + v10 + 64);
          *(v12 + 64) = 0;
          v18 = v7[v10 / 8 + 6];
          v17 = v7[v10 / 8 + 7];
          v19 = *(v8 + v10 + 56);
          v13[6] = *(v8 + v10 + 48);
          v13[7] = v19;
          LODWORD(v19) = LODWORD(v7[v10 / 8 + 3]) + 1;
          *(v12 + 48) = v18;
          *(v12 + 56) = v17;
          v13[13] = 0;
          *(v13 + 24) = 0;
          v13[10] = 0;
          v13[11] = 0;
          v13[9] = 0;
          v20 = (v8 + v10 + 72);
          v21 = *v20;
          *(v13 + 6) = v19;
          v22 = *(v8 + v10 + 80);
          v13[9] = v21;
          *v20 = 0;
          v13[10] = v22;
          *(v12 + 80) = 0;
          v23 = v7[v10 / 8 + 11];
          v13[11] = *(v8 + v10 + 88);
          *(v12 + 88) = v23;
          v24 = v7[v10 / 8 + 13];
          v13[13] = *(v8 + v10 + 104);
          *(v12 + 104) = v24;
          *(v12 + 96) = *(v8 + v10 + 96) + 1;
          *(v13 + 24) = LODWORD(v7[v10 / 8 + 12]) + 1;
          v25 = *(v8 + v10 + 112);
          v13[16] = *(v8 + v10 + 128);
          *(v13 + 7) = v25;
          re::DynamicArray<re::DynamicString>::deinit(v20);
          re::DynamicString::deinit((v8 + v10 + 40));
          re::DynamicArray<re::DynamicString>::deinit(v8 + v10);
          v10 += 136;
        }

        while (v12 + 136 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v12[0] = a1;
      v4 = *(a1 + 16);
      if (v4 >= 0x10)
      {
        v5 = 0;
        v6 = *a1;
        v7 = v4 >> 4;
        while (1)
        {
          v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v12[1] = v8 ^ 0xFFFFLL;
          if (v8 != 0xFFFFLL)
          {
            break;
          }

          v5 -= 16;
          ++v6;
          if (!--v7)
          {
            goto LABEL_10;
          }
        }

        v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
        v10 = v9 - v5;
        v13 = v9 - v5;
        if (v9 + 1 != v5)
        {
          do
          {
            *(v3 + 16 * v10) = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
            v10 = v13;
          }

          while (v13 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(*v1 + 40))(v1);
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

int64x2_t re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::resize(a1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 16 * (v13 + 16 * v11);
  v17 = (*(a1 + 8) + v16);
  v18 = *a3;
  *v17 = *a2;
  v17[1] = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  result = vaddq_s64(*(a1 + 24), v20);
  *(a1 + 24) = result;
  v22 = *(*(a1 + 8) + v16) ^ (*(*(a1 + 8) + v16) >> 30);
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v22) ^ ((0xBF58476D1CE4E5B9 * v22) >> 27));
  *(a1 + 40) ^= (v23 >> 31) ^ v23;
  return result;
}

double re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
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

  v8 = *(a1 + 56);
  memset(v27, 0, sizeof(v27));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v27, v8, v3);
  v25[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    v14 = xmmword_1E304FAD0;
    v9.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v25[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v11;
    v26 = v16 - v11;
    if (v16 + 1 != v11)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(v27, *(v25[0] + 8) + 16 * v17, *(v25[0] + 8) + 16 * v17 + 8, v14, v9);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v25);
        v17 = v26;
      }

      while (v26 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_13:
  v18 = *(&v27[3] + 1);
  *(&v27[3] + 1) = *(a1 + 56);
  v19 = v27[0];
  v20 = v27[1];
  v27[0] = *a1;
  *&v27[1] = v10;
  v21 = v27[2];
  v22 = *(a1 + 40);
  *(a1 + 48) = *&v27[3];
  *(a1 + 56) = v18;
  *(&v27[2] + 8) = v22;
  v23 = *(a1 + 24);
  *a1 = v19;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  *(&v27[1] + 8) = v23;
  return re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(v27);
}

void sub_1E205B54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(va);
  _Unwind_Resume(a1);
}

uint64_t re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 88 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 88 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 88 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 88 * v8) & 0x7FFFFFFF;
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 40;
            do
            {
              if ((*(v17 - 40) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *(v17 + 40) % *(a1 + 24));
                v19 = *(v17 - 24);
                *(v18 + 8) = *(v17 - 32);
                *(v18 + 16) = v19;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                v20 = *(v17 - 8);
                *(v18 + 24) = *(v17 - 16);
                *(v18 + 32) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 40);
                *(v18 + 40) = *v17;
                *v17 = v21;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                *(v18 + 64) = 0;
                v22 = *(v17 + 16);
                *(v18 + 48) = *(v17 + 8);
                *(v18 + 56) = v22;
                *(v17 + 8) = 0;
                *(v17 + 16) = 0;
                v23 = *(v18 + 64);
                *(v18 + 64) = *(v17 + 24);
                *(v17 + 24) = v23;
                *(v18 + 72) = *(v17 + 32);
              }

              v17 += 88;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 88 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 88 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 88 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 80) = a3;
  ++*(a1 + 28);
  return v24 + 88 * v5;
}

void re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

uint64_t re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v6 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
  v7 = *a2;
  *(v6 + 16) = *a3;
  result = v6 + 16;
  *(result - 8) = v7;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 8) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

void re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

uint64_t re::DynamicArray<re::NodePatchData>::deinit(uint64_t a1)
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
        v5 = 56 * v4;
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v3 + 3);
          re::FixedArray<CoreIKTransform>::deinit(v3);
          v3 += 7;
          v5 -= 56;
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

void *re::DynamicArray<re::NodePatchData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::NodePatchData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v12 = v8[1];
          *v11 = *v8;
          v11[1] = v12;
          *v8 = 0;
          v8[1] = 0;
          v13 = v11[2];
          v11[2] = v8[2];
          v8[2] = v13;
          v11[3] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = v8[3];
          v8[3] = 0;
          v14 = v11[5];
          v15 = v8[5];
          v11[4] = v8[4];
          v11[5] = v15;
          v8[4] = 0;
          v8[5] = v14;
          v11[6] = v8[6];
          re::FixedArray<CoreIKTransform>::deinit(v8 + 3);
          re::FixedArray<CoreIKTransform>::deinit(v8);
          v11 += 7;
          v8 += 7;
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
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
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

void re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

__n128 std::__function::__func<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0,std::allocator<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC5008;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0,std::allocator<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(void *a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) != 11)
  {
    return result;
  }

  v3 = *a3;
  v4 = a1[3];
  if (a1[1] == a2)
  {
    if (!*(v4 + 552) || (v10 = *(*(v4 + 560) + 4 * (*v3 % *(v4 + 576))), v10 == 0x7FFFFFFF))
    {
LABEL_16:
      v8 = a1[4];
      if (*(v4 + 16))
      {
        v9 = *(v4 + 24);
      }

      else
      {
        v9 = v4 + 17;
      }

LABEL_20:
      re::DynamicString::format("Invalid RenderGraphFile detected (%s). Call calculateValidity before using.", &v14, v9);
      re::RenderFrame::addError(v8, &v14);
      if (v14)
      {
        if (v15)
        {
          (*(*v14 + 40))();
        }
      }

      return result;
    }

    v11 = *(v4 + 568);
    while (1)
    {
      v12 = v11 + 32 * v10;
      if (*(v12 + 8) == *v3)
      {
        break;
      }

      v10 = *(v11 + 32 * v10) & 0x7FFFFFFF;
      if (v10 == 0x7FFFFFFF)
      {
        goto LABEL_16;
      }
    }

    result = *(v12 + 24);
    *(v3 + 8) = result;
  }

  if (a1[2] != a2)
  {
    return result;
  }

  if (!*(v4 + 600) || (v5 = *(*(v4 + 608) + 4 * (*v3 % *(v4 + 624))), v5 == 0x7FFFFFFF))
  {
LABEL_9:
    v8 = a1[4];
    if (*(v4 + 16))
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = v4 + 17;
    }

    goto LABEL_20;
  }

  v6 = *(v4 + 616);
  while (1)
  {
    v7 = v6 + 32 * v5;
    if (*(v7 + 8) == *v3)
    {
      break;
    }

    v5 = *(v6 + 32 * v5) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

  result = *(v7 + 24);
  *(v3 + 8) = result;
  return result;
}

void sub_1E205CABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a11)
  {
    if (a12)
    {
      (*(*a11 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0,std::allocator<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 32 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 32 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 32 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        LODWORD(v8) = v12;
        v13 = *(v10 + 32 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 32 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 1) >> 31) ^ (*(v17 - 1) >> 1));
                v19 = re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = *(v17 - 1);
                v19[1] = v19[1] & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[1] = *(v17 - 1) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[2] = *v17;
                *(v17 - 1) = 0;
                *v17 = &str_67;
                v19[3] = v17[1];
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 32 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 32 * v4;
}

void *re::DynamicArray<re::BindPointAndPath>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::BindPointAndPath>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BindPointAndPath>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::BindPointAndPath>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BindPointAndPath>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *(v11 + 8) = 0;
          v13 = (v8 + 1);
          v14 = v8[2];
          v11[1] = v8[1];
          v8[1] = 0;
          v11[2] = v14;
          v8[2] = 0;
          v15 = v11[3];
          v11[3] = v8[3];
          v8[3] = v15;
          v16 = v11[5];
          v11[5] = v8[5];
          v8[5] = v16;
          ++*(v8 + 8);
          ++*(v11 + 8);
          v18 = v8[6];
          v17 = (v8 + 6);
          v11[6] = v11[6] & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
          v11[6] = *v17 & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
          v11[7] = *(v17 + 1);
          *v17 = 0;
          *(v17 + 1) = &str_67;
          re::StringID::destroyString(v17);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
          v11 += 8;
          v8 = (v17 + 16);
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

void *re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

_anonymous_namespace_ *re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RenderGraphDataStoreConnection>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  memset(v31, 0, 40);
  v30 = 0u;
  v28 = 0;
  memset(&v29[8], 0, 32);
  v26 = 0u;
  v27 = 0u;
  re::DynamicString::setCapacity(v29, 0);
  *&v29[32] = 0;
  v30 = 0uLL;
  LODWORD(v31[0]) = 0;
  memset(v31 + 8, 0, 32);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::RenderGraphDataStoreConnection>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 136 * v8;
  *(v9 + 32) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 0;
  v10 = *(&v26 + 1);
  *v9 = v26;
  *(v9 + 8) = v10;
  v26 = 0uLL;
  v11 = *(v9 + 16);
  *(v9 + 16) = v27;
  *&v27 = v11;
  v12 = *(v9 + 32);
  *(v9 + 32) = v28;
  v28 = v12;
  ++DWORD2(v27);
  ++*(v9 + 24);
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 64) = *&v29[24];
  v13 = *&v29[8];
  *(v9 + 40) = *v29;
  v14 = *&v29[16];
  *v29 = 0;
  *&v29[24] = 0;
  v16 = *(v9 + 48);
  v15 = *(v9 + 56);
  *(v9 + 48) = v13;
  *(v9 + 56) = v14;
  *&v29[8] = v16;
  *&v29[16] = v15;
  *(v9 + 104) = 0;
  *(v9 + 96) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 72) = 0;
  v17 = v30;
  *(v9 + 72) = *&v29[32];
  *(v9 + 80) = v17;
  *&v29[32] = 0;
  *&v30 = 0;
  v18 = *(v9 + 88);
  *(v9 + 88) = *(&v30 + 1);
  *(&v30 + 1) = v18;
  v19 = *(v9 + 104);
  *(v9 + 104) = *(&v31[0] + 1);
  *(&v31[0] + 1) = v19;
  ++LODWORD(v31[0]);
  ++*(v9 + 96);
  v20 = v31[1];
  *(v9 + 128) = *&v31[2];
  *(v9 + 112) = v20;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::DynamicString>::deinit(&v29[32]);
  if (*v29)
  {
    if (v29[8])
    {
      (*(**v29 + 40))(*v29, *&v29[16], v21, v22, v23);
    }

    memset(v29, 0, 32);
  }

  re::DynamicArray<re::DynamicString>::deinit(&v26);
  v24 = (*(a4 + 32) + 136 * *(a4 + 16) - 136);
  re::introspectionInitElement(a2, a3, a1[6], v24);
  return v24;
}

uint64_t re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 136 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 136 * a3;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphDataStoreConnection>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 136 * a2;
    v9 = a2;
    do
    {
      v10 = *(v3 + 4) + v8;
      re::DynamicArray<re::DynamicString>::deinit(v10 + 72);
      re::DynamicString::deinit((v10 + 40));
      result = re::DynamicArray<re::DynamicString>::deinit(v10);
      ++v9;
      v8 += 136;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      result = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(result, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 136 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *(v7 + 128) = 0;
        *(v7 + 96) = 0u;
        *(v7 + 112) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        result = re::DynamicString::setCapacity((v7 + 40), 0);
        *(v7 + 80) = 0;
        *(v7 + 72) = 0;
        *(v7 + 96) = 0;
        *(v7 + 88) = 0;
        v6 += 136;
        *(v7 + 104) = 0u;
        *(v7 + 120) = 0u;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 136 * v8;
      do
      {
        re::DynamicArray<re::DynamicString>::deinit(v9 + 72);
        re::DynamicString::deinit((v9 + 40));
        re::DynamicArray<re::DynamicString>::deinit(v9);
        v9 += 136;
        v10 -= 136;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::RenderGraphDataStoreConnection>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 136 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 136;
        v14 -= 136;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 136 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 136 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionOptional<re::RenderGraphTargetDescriptionData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::RenderGraphTargetDescriptionData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::RenderGraphTargetDescriptionData>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *v9 = 2;
    *&v9[8] = 2;
    *&v9[40] = -1;
    memset(&v9[12], 255, 24);
    __asm { FMOV            V0.2S, #1.0 }

    v10 = 0;
    v12[0] = 0;
    v11 = 0;
    *(v12 + 5) = 0;
    v13[0] = 1;
    v14 = *v9;
    v17 = _D0;
    v16 = *&v9[32];
    v15 = *&v9[16];
    v18 = 2;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    re::Optional<re::RenderGraphTargetDescriptionData>::operator=(a2, v13);
    if (v13[0] == 1)
    {
      re::AssetHandle::~AssetHandle(v19);
    }

    v8 = &v10;
  }

  else
  {
    v13[0] = 0;
    re::Optional<re::RenderGraphTargetDescriptionData>::operator=(a2, v13);
    if (v13[0] != 1)
    {
      return;
    }

    v8 = v19;
  }

  re::AssetHandle::~AssetHandle(v8);
}

uint64_t re::IntrospectionOptional<re::RenderGraphTargetDescriptionData>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

uint64_t re::Optional<re::RenderGraphTargetDescriptionData>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::AssetHandle::~AssetHandle((a1 + 80));
      *a1 = 0;
      return a1;
    }

    *(a1 + 8) = *(a2 + 8);
    v3 = *(a2 + 24);
    v4 = *(a2 + 40);
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
    *(a1 + 40) = v4;
    *(a1 + 24) = v3;
    v6 = *(a1 + 88);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 88) = v6;
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    v9 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v8;
    *(a1 + 24) = v7;
    *(a1 + 72) = v9;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 88) = 0;
LABEL_6:
    v10 = *(a1 + 80);
    *(a1 + 80) = 0;
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 80) = v10;
    v11 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 96) = v11;
    *(a1 + 104) = *(a2 + 104);
  }

  return a1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

void re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v6[0] = 1;
    v4 = *a2;
    v8 = a2[1];
    v5 = a2[3];
    v9 = a2[2];
    v10 = v5;
    v11 = *(a2 + 8);
    v7 = v4;
    re::AssetHandle::AssetHandle(v12, (a2 + 72));
    v12[24] = *(a2 + 96);
    re::Optional<re::RenderGraphTargetDescriptionData>::operator=(a1, v6);
    if (v6[0] != 1)
    {
      return;
    }
  }

  else
  {
    v6[0] = 0;
    re::Optional<re::RenderGraphTargetDescriptionData>::operator=(a1, v6);
    if (v6[0] != 1)
    {
      return;
    }
  }

  re::AssetHandle::~AssetHandle(v12);
}

void *re::IntrospectionOptional<re::RenderGraphBufferDescriptionData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::RenderGraphBufferDescriptionData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::RenderGraphBufferDescriptionData>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 2;
    *(a2 + 16) = -1;
    *(a2 + 24) = -1;
    *(a2 + 32) = 1065353216;
    *(a2 + 36) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::RenderGraphBufferDescriptionData>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    if (*a1)
    {
      result = *a2;
      v3 = *(a2 + 16);
      v4 = *(a2 + 24);
      *(a1 + 36) = *(a2 + 28);
      *(a1 + 32) = v4;
      *(a1 + 24) = v3;
      *(a1 + 8) = result;
    }

    else
    {
      *a1 = 1;
      result = v5;
      *(a1 + 8) = v5;
      *(a1 + 24) = v6;
    }
  }

  else if (*a1 == 1)
  {
    *a1 = 0;
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphTargetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphTargetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphTargetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphTargetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphTargetData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphTargetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphTargetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphTargetData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  *&v26[36] = 0;
  *&v27[8] = 0;
  v29 = 0;
  v30 = 0;
  *v26 = 2;
  *&v26[8] = 2;
  *&v26[40] = -1;
  memset(&v26[12], 255, 24);
  __asm { FMOV            V0.2S, #1.0 }

  *v27 = _D0;
  *&v27[12] = 0x200000000;
  v28 = 0uLL;
  memset(&v27[20], 0, 44);
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  if (v13 >= v14)
  {
    v15 = v13 + 1;
    if (v14 < v13 + 1)
    {
      if (*a4)
      {
        v16 = 2 * v14;
        if (!v14)
        {
          v16 = 8;
        }

        if (v16 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a4, v17);
      }

      else
      {
        re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a4, v15);
        ++*(a4 + 24);
      }
    }

    v13 = *(a4 + 16);
  }

  v18 = *(a4 + 32) + 160 * v13;
  *v18 &= ~1uLL;
  *v18 = 0;
  *(v18 + 8) = &str_67;
  *(v18 + 32) = *&v26[16];
  *(v18 + 48) = *&v26[32];
  *(v18 + 64) = *v27;
  *(v18 + 80) = *&v27[16];
  *(v18 + 16) = *v26;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  *(v18 + 88) = 0;
  *(v18 + 96) = *&v27[32];
  *&v27[32] = 0;
  v19 = *(v18 + 88);
  *(v18 + 88) = 0;
  *(v18 + 88) = *&v27[24];
  *&v27[24] = v19;
  v20 = *(v18 + 104);
  *(v18 + 104) = *&v27[40];
  *&v27[40] = v20;
  *(v18 + 112) = v27[48];
  *(v18 + 152) = 0;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 144) = 0;
  v21 = v28;
  *(v18 + 120) = *&v27[56];
  *(v18 + 128) = v21;
  *&v27[56] = 0;
  *&v28 = 0;
  v22 = *(v18 + 136);
  *(v18 + 136) = *(&v28 + 1);
  *(&v28 + 1) = v22;
  v23 = *(v18 + 152);
  *(v18 + 152) = v30;
  v30 = v23;
  LODWORD(v29) = v29 + 1;
  ++*(v18 + 144);
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(&v27[56]);
  re::AssetHandle::~AssetHandle(&v27[24]);
  v24 = (*(a4 + 32) + 160 * *(a4 + 16) - 160);
  re::introspectionInitElement(a2, a3, a1[6], v24);
  return v24;
}

uint64_t re::IntrospectionDynamicArray<re::RenderGraphTargetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 160 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 160 * a3;
}

void *re::DynamicArray<re::RenderGraphTargetData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphTargetData>::setCapacity(v5, a2);
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
        v11 = v8 + 88;
        v12 = v7;
        do
        {
          v13 = *(v11 - 88);
          *v12 = *v12 & 0xFFFFFFFFFFFFFFFELL | *(v11 - 88) & 1;
          *v12 = *(v11 - 88) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v12[1] = *(v11 - 80);
          *(v11 - 80) = &str_67;
          *(v11 - 88) = 0;
          v14 = *(v11 - 8);
          v15 = *(v11 - 24);
          v16 = *(v11 - 40);
          *(v12 + 2) = *(v11 - 56);
          *(v12 + 3) = v16;
          *(v12 + 4) = v15;
          v12[10] = v14;
          *(v12 + 1) = *(v11 - 72);
          v12[12] = 0;
          v12[13] = 0;
          v12[11] = 0;
          v12[12] = *(v11 + 8);
          *(v11 + 8) = 0;
          v17 = v12[11];
          v12[11] = 0;
          v12[11] = *v11;
          *v11 = v17;
          v18 = v12[13];
          v12[13] = *(v11 + 16);
          *(v11 + 16) = v18;
          *(v12 + 112) = *(v11 + 24);
          v12[19] = 0;
          v12[16] = 0;
          v12[17] = 0;
          v12[15] = 0;
          *(v12 + 36) = 0;
          v19 = *(v11 + 40);
          v12[15] = *(v11 + 32);
          *(v11 + 32) = 0;
          v12[16] = v19;
          *(v11 + 40) = 0;
          v20 = v12[17];
          v12[17] = *(v11 + 48);
          *(v11 + 48) = v20;
          v21 = v12[19];
          v12[19] = *(v11 + 64);
          *(v11 + 64) = v21;
          ++*(v11 + 56);
          ++*(v12 + 36);
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v11 + 32);
          re::AssetHandle::~AssetHandle(v11);
          re::StringID::destroyString((v11 - 88));
          v12 += 20;
          v22 = v11 + 72;
          v11 += 160;
        }

        while (v22 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::RenderGraphTargetData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v13 = 160 * a2;
    v14 = a2;
    do
    {
      v15 = *(a1 + 32) + v13;
      re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v15 + 120);
      re::AssetHandle::~AssetHandle((v15 + 88));
      re::StringID::destroyString(v15);
      ++v14;
      v13 += 160;
    }

    while (v14 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 160 * v4;
      __asm { FMOV            V1.2S, #1.0 }

      do
      {
        v12 = *(a1 + 32) + v6;
        *v12 = 0;
        *(v12 + 8) = &str_67;
        *(v12 + 16) = 2;
        *(v12 + 24) = 2;
        *(v12 + 56) = -1;
        *(v12 + 28) = -1;
        *(v12 + 36) = -1;
        *(v12 + 44) = -1;
        *(v12 + 64) = _D1;
        *(v12 + 72) = 0;
        *(v12 + 80) = 2;
        *(v12 + 152) = 0;
        *(v12 + 128) = 0;
        *(v12 + 136) = 0;
        *(v12 + 120) = 0;
        *(v12 + 144) = 0;
        *(v12 + 84) = 0;
        *(v12 + 100) = 0;
        *(v12 + 92) = 0;
        v6 += 160;
        *(v12 + 105) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 160 * v8;
      do
      {
        re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 120);
        re::AssetHandle::~AssetHandle((v9 + 88));
        re::StringID::destroyString(v9);
        v9 += 160;
        v10 -= 160;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphTargetData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphTargetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 160 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 160;
        v14 -= 160;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 160 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 160 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphBufferData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphBufferData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphBufferData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphBufferData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphBufferData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphBufferData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphBufferData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphBufferData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = 0uLL;
  *&v19 = 2;
  *(&v19 + 1) = -1;
  *&v20 = -1;
  *(&v20 + 1) = 1065353216;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
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

        re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a4, v15);
        v8 = 0uLL;
      }

      else
      {
        re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a4, v11);
        v8 = 0uLL;
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 88 * v10;
  *v16 = 0;
  *(v16 + 8) = &str_67;
  *(v16 + 16) = v19;
  *(v16 + 32) = v20;
  *&v21[0] = 0;
  *(v16 + 48) = v8;
  *(v16 + 64) = 0;
  *(v21 + 8) = v8;
  *(v16 + 80) = 0;
  v22 = 0;
  DWORD2(v21[1]) = 1;
  *(v16 + 72) = 1;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v21);
  v17 = (*(a4 + 32) + 88 * *(a4 + 16) - 88);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

void sub_1E205F5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 48);
  re::StringID::destroyString(&a9);
  _Unwind_Resume(a1);
}

uint64_t re::IntrospectionDynamicArray<re::RenderGraphBufferData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

void *re::DynamicArray<re::RenderGraphBufferData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphBufferData>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[11 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = *(v8 + 2);
          *(v11 + 1) = *(v8 + 1);
          *(v11 + 2) = v13;
          v11[10] = 0;
          *(v11 + 18) = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          v14 = v8[7];
          v11[6] = v8[6];
          v8[6] = 0;
          v11[7] = v14;
          v8[7] = 0;
          v15 = v11[8];
          v11[8] = v8[8];
          v8[8] = v15;
          v16 = v11[10];
          v11[10] = v8[10];
          v8[10] = v16;
          ++*(v8 + 18);
          ++*(v11 + 18);
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit((v8 + 6));
          re::StringID::destroyString(v8);
          v11 += 11;
          v8 += 11;
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

void re::DynamicArray<re::RenderGraphBufferData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 88 * a2;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v10 + 48);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 88;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 2;
        *(v7 + 24) = -1;
        *(v7 + 32) = -1;
        *(v7 + 40) = 1065353216;
        *(v7 + 44) = 0;
        *(v7 + 80) = 0;
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        *(v7 + 48) = 0;
        v6 += 88;
        *(v7 + 72) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 88 * v8;
      do
      {
        re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 48);
        re::StringID::destroyString(v9);
        v9 = (v9 + 88);
        v10 -= 88;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphBufferData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphBufferData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 88 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 88;
        v14 -= 88;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 88 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphNodeDataPointer>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
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

uint64_t re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::RenderGraphNodeDataPointer>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 16 * v4), 16 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphNodeDataPointer>::resize(a1, a4);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphInputData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphInputData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphInputData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphInputData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphInputData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphInputData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphInputData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphInputData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphInputData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RenderGraphInputData>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RenderGraphInputData>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 56 * v9;
  *v15 = 0;
  *(v15 + 8) = &str_67;
  *(v15 + 16) = 0;
  *(v15 + 24) = &str_67;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = &str_67;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 56 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RenderGraphInputData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

void *re::DynamicArray<re::RenderGraphInputData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphInputData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          *(v11 + 32) = *(v8 + 32);
          LOBYTE(v12) = v8[5];
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v8[5] & 1;
          v11[5] = v8[5] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[6] = v8[6];
          v8[6] = &str_67;
          v8[5] = 0;
          re::StringID::destroyString((v8 + 5));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 7;
          v8 += 7;
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

void re::DynamicArray<re::RenderGraphInputData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 56 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 40));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 56;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RenderGraphInputData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4 + 48;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *(v7 - 6) = 0;
        *(v7 - 5) = &str_67;
        *(v7 - 4) = 0;
        *(v7 - 3) = &str_67;
        *(v7 - 16) = 0;
        *(v7 - 1) = 0;
        *v7 = &str_67;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphInputData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 56 * v8;
      do
      {
        re::StringID::destroyString((v9 + 40));
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 56;
        v10 -= 56;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphInputData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphInputData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 56 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 56;
        v14 -= 56;
      }

      while (v14);
    }
  }
}