uint64_t *re::DynamicArray<re::MeshAssetPart>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetPart>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 8);
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  v9 = *(a2 + 40);
  *(v5 + 52) = *(a2 + 52);
  *(v5 + 40) = v9;
  v10 = *(a2 + 72);
  *(v5 + 72) = *(v5 + 72) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 72) = *(a2 + 72) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a2 + 80) = &str_67;
  v11 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v11;
  v12 = *(a2 + 128);
  v13 = *(a2 + 144);
  v14 = *(a2 + 176);
  *(v5 + 160) = *(a2 + 160);
  *(v5 + 176) = v14;
  *(v5 + 128) = v12;
  *(v5 + 144) = v13;
  LODWORD(v10) = *(a2 + 192);
  *(v5 + 192) = v10;
  if (v10 == 1)
  {
    *(v5 + 193) = *(a2 + 193);
  }

  v15 = *(a2 + 194);
  *(v5 + 194) = v15;
  if (v15 == 1)
  {
    *(v5 + 195) = *(a2 + 195);
  }

  v16 = *(a2 + 196);
  *(v5 + 196) = v16;
  if (v16 == 1)
  {
    *(v5 + 197) = *(a2 + 197);
  }

  *(v5 + 200) = 0u;
  v17 = v5 + 200;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v17, (a2 + 200));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t anonymous namespace::makeMeshAssetJiggleDeformerDataFromModel(_anonymous_namespace_ *this, const re::MeshModel *a2)
{
  v2 = this;
  v49 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v33 = 0uLL;
  v32 = 0;
  v34 = 0;
  v3 = *(a2 + 98);
  if (!v3)
  {
    v35 = 0;
    v32 = 0;
    v33 = 0u;
    v34 = 1;
    *this = 1;
    *&v45[0] = 0;
    *(this + 8) = 0u;
    *(this + 3) = 0;
    *(v45 + 8) = 0u;
    *(this + 5) = 0;
    *&v46 = 0;
    DWORD2(v45[1]) = 2;
    *(this + 8) = 1;
LABEL_38:
    re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v45);
    return re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(&v32);
  }

  v4 = a2;
  v5 = *(v3 + 104);
  if (*(a2 + 7) == v5)
  {
    v6 = *(v3 + 56);
    if (*(v3 + 56))
    {
      re::DynamicArray<re::MeshAssetJiggleDeformerData>::setCapacity(&v32, *(v3 + 56));
      v7 = v6 - *(&v33 + 1);
      if (v6 > *(&v33 + 1))
      {
        v8 = 48 * *(&v33 + 1);
        do
        {
          v9 = v35 + v8;
          *v9 = 0;
          *(v9 + 8) = &str_67;
          *(v9 + 16) = 0;
          *(v9 + 24) = &str_67;
          *(v9 + 32) = 0;
          *(v9 + 40) = 0;
          v8 += 48;
          --v7;
        }

        while (v7);
      }

      *(&v33 + 1) = v6;
      ++v34;
    }

    if (v6)
    {
      v31 = v2;
      v10 = 0;
      v11 = 32;
      do
      {
        v13 = *(&v33 + 1);
        if (*(&v33 + 1) <= v10)
        {
          v36 = 0;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          memset(v45, 0, sizeof(v45));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v37 = 136315906;
          v38 = "operator[]";
          v39 = 1024;
          v40 = 789;
          v41 = 2048;
          v42 = v10;
          v43 = 2048;
          v44 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_41:
          v36 = 0;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          memset(v45, 0, sizeof(v45));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v37 = 136315906;
          v38 = "operator[]";
          v39 = 1024;
          v40 = 789;
          v41 = 2048;
          v42 = v4;
          v43 = 2048;
          v44 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v14 = v35;
        v15 = v35 + v11;
        v16 = (v35 + v11 - 32);
        re::JiggleDeformerModelUtil::massBufferNameForJiggleDataIndex((v4 + 144), v10, v45);
        v17 = re::StringID::operator=(v16, v45);
        if (v45[0])
        {
          if (v45[0])
          {
          }
        }

        re::JiggleDeformerModelUtil::envelopeBufferNameForJiggleDataIndex((v4 + 144), v10, v45);
        v18 = re::StringID::operator=((v15 - 16), v45);
        if (v45[0])
        {
          if (v45[0])
          {
          }
        }

        v19 = *(v4 + 98);
        if (v19)
        {
          v20 = 0;
          v21 = 0;
          if (v19[7] > v10)
          {
            v21 = *(v19[8] + 4 * v10);
          }

          *(v14 + v11) = v21;
          if (v19[10] > v10)
          {
            v20 = *(v19[11] + 4 * v10);
          }
        }

        else
        {
          *(v14 + v11) = 0;
          v20 = 0;
        }

        v22 = v14 + v11;
        *(v22 + 4) = v20;
        *(v22 + 8) = -1;
        v10 = (v10 + 1);
        v11 += 48;
      }

      while (v6 != v10);
      v12 = *(&v33 + 1);
      v2 = v31;
    }

    else
    {
      v12 = v6;
    }

    v25 = v35;
    if (v5)
    {
      v26 = 0;
      v27 = *(v4 + 98);
      do
      {
        if (v27)
        {
          if (*(v27 + 104) > v26)
          {
            v4 = *(*(v27 + 112) + 2 * v26);
            if (v4 < v6)
            {
              if (v12 <= v4)
              {
                goto LABEL_41;
              }

              *(v25 + 48 * *(*(v27 + 112) + 2 * v26) + 40) = v26;
            }
          }
        }

        ++v26;
      }

      while (v5 != v26);
      v25 = v35;
    }

    v28 = v32;
    v29 = v33;
    v35 = 0;
    v33 = 0uLL;
    v32 = 0;
    ++v34;
    *v2 = 1;
    *(v2 + 1) = v28;
    *(v2 + 2) = v29;
    *(v2 + 3) = v12;
    memset(v45, 0, 24);
    *(v2 + 5) = v25;
    *&v46 = 0;
    DWORD2(v45[1]) = 2;
    *(v2 + 8) = 1;
    goto LABEL_38;
  }

  v23 = v45[0];
  v24 = v45[1];
  *v2 = 0;
  *(v2 + 1) = 100;
  *(v2 + 2) = re::AssetErrorCategory(void)::instance;
  *(v2 + 24) = v23;
  *(v2 + 40) = v24;
  return re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(&v32);
}

_BYTE *re::Result<re::DynamicArray<re::MeshAssetJiggleDeformerData>,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 8));
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

uint64_t anonymous namespace::computeOrientedBoundingBox(__int128 *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a2[26];
  if (v4)
  {
    LODWORD(v5) = 0;
    v6 = v4 << 8;
    v7 = (a2[28] + 48);
    do
    {
      v5 = (*v7 + v5);
      v7 += 64;
      v6 -= 256;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v8 = a2[26];
  v9 = a2[21];
  if (!v8)
  {
LABEL_30:
    MEMORY[0x1E69070C0](v37, v38);
    goto LABEL_31;
  }

  v11 = 0;
  v12 = 0;
  v13 = xmmword_1E30474D0;
  v14 = xmmword_1E30476A0;
  v15 = xmmword_1E3047680;
  v16 = xmmword_1E3047670;
  while (1)
  {
    if (v12 >= v9)
    {
      v18 = 0;
    }

    else
    {
      v17 = a2[21];
      if (v17 <= v12)
      {
        goto LABEL_41;
      }

      v18 = *(a2[23] + 144 * v12) != -1;
    }

    v17 = a2[26];
    if (v17 <= v12)
    {
      goto LABEL_40;
    }

    v19 = a2[28] + (v12 << 8);
    v20 = *(v19 + 16);
    if (!v20)
    {
      break;
    }

    v21 = *(v19 + 48);
    v22 = *(v19 + 32);
    while (re::DynamicString::operator!=(v22, &v34))
    {
      v22 += 80;
      if (!--v20)
      {
        v14 = xmmword_1E30476A0;
        v13 = xmmword_1E30474D0;
        v16 = xmmword_1E3047670;
        v15 = xmmword_1E3047680;
        goto LABEL_31;
      }
    }

    v24 = *(v22 + 64);
    if (v18)
    {
      v17 = a2[21];
      v14 = xmmword_1E30476A0;
      v13 = xmmword_1E30474D0;
      v16 = xmmword_1E3047670;
      v15 = xmmword_1E3047680;
      if (v17 <= v12)
      {
        goto LABEL_42;
      }

      if (v21)
      {
        v25 = (a2[23] + 144 * v12);
        v26 = (v24 + 8);
        while (1)
        {
          v17 = v11;
          v27 = v37;
          if (v37 <= v11)
          {
            break;
          }

          ++v11;
          v29 = *(v26 - 2);
          v28 = *(v26 - 1);
          v30 = *v26;
          v26 += 3;
          v31 = vaddq_f32(v25[8], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v25[5], v29), v25[6], v28), v25[7], v30));
          *(v38 + 16 * v17) = vdivq_f32(v31, vdupq_laneq_s32(v31, 3));
          if (!--v21)
          {
            goto LABEL_29;
          }
        }

LABEL_39:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 468;
        v44 = 2048;
        v45 = v17;
        v46 = 2048;
        v47 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_40:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 797;
        v44 = 2048;
        v45 = v12;
        v46 = 2048;
        v47 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 797;
        v44 = 2048;
        v45 = v12;
        v46 = 2048;
        v47 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 797;
        v44 = 2048;
        v45 = v12;
        v46 = 2048;
        v47 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      v14 = xmmword_1E30476A0;
      v13 = xmmword_1E30474D0;
      v16 = xmmword_1E3047670;
      v15 = xmmword_1E3047680;
      if (v21)
      {
        v32 = (v24 + 8);
        while (1)
        {
          v17 = v11;
          v27 = v37;
          if (v37 <= v11)
          {
            break;
          }

          *&v23 = *(v32 - 1);
          DWORD2(v23) = *v32;
          ++v11;
          *(v38 + 16 * v17) = v23;
          v32 += 3;
          if (!--v21)
          {
            goto LABEL_29;
          }
        }

        v39 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 468;
        v44 = 2048;
        v45 = v11;
        v46 = 2048;
        v47 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_39;
      }
    }

LABEL_29:
    if (++v12 == v8)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v14;
  a1[3] = v13;
  if (v34 && (v35 & 1) != 0)
  {
    (*(*v34 + 40))();
  }

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshLodLevelInfo>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 48 * v2;
    v4 = *(result + 32) + 8;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 48;
      v3 -= 48;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

void *re::DynamicArray<re::MeshLodLevelInfo>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = (48 * a2) | 8;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 48;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 40) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::MeshLodLevelInfo>::copy(void *this, void *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = this;
    v4 = this[2];
    if (v4 == -1)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v6 = a2;
    if (v4 >= a3)
    {
      v14 = &a2[6 * a3];
      v15 = this[4];
      v16 = a2;
      v17 = v15;
      do
      {
        v18 = *v16;
        v16 += 6;
        *v17 = v18;
        v17 += 6;
        this = re::DynamicArray<unsigned long long>::operator=((v15 + 1), v6 + 1);
        v15 = v17;
        v6 = v16;
      }

      while (v16 != v14);
    }

    else
    {
      this = re::DynamicArray<re::MeshLodLevelInfo>::growCapacity(this, a3);
      v7 = v3[2];
      v8 = v3[4];
      if (v7)
      {
        v9 = v6;
        v10 = v6;
        v11 = v3[4];
        do
        {
          v12 = *v10;
          v10 += 6;
          *v11 = v12;
          v11 += 6;
          this = re::DynamicArray<unsigned long long>::operator=((v8 + 1), v9 + 1);
          v8 = v11;
          v9 = v10;
        }

        while (v10 != &v6[6 * v7]);
        v8 = v3[4];
        v13 = v3[2];
      }

      else
      {
        v13 = 0;
      }

      if (v7 != a3)
      {
        v19 = 3 * v7;
        v20 = 48 * a3 - 48 * v7;
        v21 = &v6[2 * v19 + 1];
        this = &v8[6 * v13 + 1];
        do
        {
          *(this - 1) = *(v21 - 1);
          v22 = re::DynamicArray<char const*>::DynamicArray(this, v21);
          v21 += 6;
          this = (v22 + 48);
          v20 -= 48;
        }

        while (v20);
      }

      v3[2] = a3;
    }

    ++*(v3 + 6);
  }

  return this;
}

void *re::DynamicArray<re::MeshLodLevelInfo>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::DynamicArray<re::ReadOnlyCPUAccessibleBufferSliceContent>::resize(uint64_t a1, unint64_t a2)
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
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((*(a1 + 32) + v8));
      ++v9;
      v8 += 96;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ReadOnlyCPUAccessibleBufferSliceContent>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        v7[4] = 0uLL;
        v7[5] = 0uLL;
        v7[2] = 0uLL;
        v7[3] = 0uLL;
        *v7 = 0uLL;
        v7[1] = 0uLL;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t *re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    *a1 = *a2;
    *a2 = v4;
    v5 = a1[1];
    a1[1] = a2[1];
    a2[1] = v5;
    v9[0] = a1[2];
    a1[2] = 0;
    NS::SharedPtr<MTL::Texture>::operator=(a1 + 2, a2 + 2);
    NS::SharedPtr<MTL::Texture>::operator=(a2 + 2, v9);
    if (v9[0])
    {
    }

    v6 = a1[3];
    a1[3] = a2[3];
    a2[3] = v6;
    *v9 = *(a1 + 2);
    a1[4] = 0;
    a1[5] = 0;
    v7 = a1[6];
    a1[6] = 0;
    v10 = v7;
    re::FixedArray<float>::operator=(a1 + 4, a2 + 4);
    re::FixedArray<float>::operator=(a2 + 4, v9);
    if (v9[0] && v9[1])
    {
      (*(*v9[0] + 40))();
    }
  }

  return a1;
}

int64x2_t re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
{
  if (re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(a1, *a2) == -1)
  {
    if (!*(a1 + 56))
    {
    }

    v8 = *(a1 + 32);
    if (!v8 || (v9 = *(a1 + 16), v9 > 8 * v8))
    {
      re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::resize(a1);
      v9 = *(a1 + 16);
    }

    v10 = 0xBF58476D1CE4E5B9;
    v11 = 0x94D049BB133111EBLL;
    v12 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
    v13 = (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31);
    v14 = v9 >> 4;
    v15 = *a1;
    v16 = v13 % v14;
    while (1)
    {
      v17 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v15 + 16 * v16)), xmmword_1E304FAD0)))), 0x3830282018100800)));
      if (v17 < 0x40)
      {
        break;
      }

      if (v16 + 1 == v14)
      {
        v16 = 0;
      }

      else
      {
        ++v16;
      }

      if (v16 == v13 % v14)
      {
        re::internal::assertLog(4, v6, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
        _os_crash();
        __break(1u);
        break;
      }
    }

    v18 = v15 + 16 * v16;
    v19 = *(v18 + v17);
    *(v18 + v17) = v13 & 0x7F;
    v20 = 16 * (v17 + 16 * v16);
    *(*(a1 + 8) + v20) = *a2;
    v21 = *(a1 + 8);
    *(v21 + v20 + 8) = *a3;
    if (v19 == 255)
    {
      v22 = -1;
    }

    else
    {
      v22 = 0;
    }

    v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v23.i64[1] = v22;
    result = vaddq_s64(*(a1 + 24), v23);
    *(a1 + 24) = result;
    v24 = *(v21 + v20) ^ (*(v21 + v20) >> 30);
    v25 = ((v24 * v10) ^ ((v24 * v10) >> 27)) * v11;
    *(a1 + 40) ^= (v25 >> 31) ^ v25;
  }

  return result;
}

uint64_t useGPUFormatConversionForAttributeSerialization(void)
{
  if ((atomic_load_explicit(&qword_1EE193FD8, memory_order_acquire) & 1) == 0)
  {
    v6 = v0;
    v7 = v1;
    if (__cxa_guard_acquire(&qword_1EE193FD8))
    {
      re::Defaults::BOOLValue("MeshAsset.GPUFormatConversion", v3, v5);
      if (v5[0])
      {
        v4 = v5[1];
      }

      else
      {
        v4 = 1;
      }

      byte_1EE193FB9 = v4;
      __cxa_guard_release(&qword_1EE193FD8);
    }
  }

  return byte_1EE193FB9;
}

uint64_t re::sizeFromVertexFormat(uint64_t a1, uint64_t a2)
{
  if (a1 - 1) < 0x35 && ((0x1FF27FFFFFFFFFuLL >> (a1 - 1)))
  {
    return byte_1E305CAA0[(a1 - 1)];
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Wrong VertexFormat (%02hhx)", "!Unreachable code", "sizeFromVertexFormat", 267, a1);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::DynamicArray<re::ReadOnlyCPUAccessibleBufferSliceContent>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ReadOnlyCPUAccessibleBufferSliceContent>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
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
        v10 = 96 * v9;
        v11 = v7;
        do
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v11, v8);
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v8);
          v8 = (v8 + 96);
          v11 += 96;
          v10 -= 96;
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

uint64_t re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = (a2 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v5;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = 0;
  NS::SharedPtr<MTL::Texture>::operator=((a2 + 16), &v7);
  if (v7)
  {
  }

  *(a2 + 24) = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::FixedArray<float>::operator=(v4, &v7);
  if (v7 && v8)
  {
    (*(*v7 + 40))();
  }

  return a1;
}

void re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(re::ReadOnlyCPUAccessibleBufferSliceContent *this)
{
  v5 = 0;
  NS::SharedPtr<MTL::Texture>::operator=(this + 2, &v5);
  if (v5)
  {
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 4);
  v2 = *(this + 3);
  if (v2)
  {
    IOSurfaceUnlock(v2, 1u, 0);
    CFRelease(*(this + 3));
    *(this + 3) = 0;
  }

  *this = 0;
  *(this + 1) = 0;
  v3 = *(this + 20);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v3])(&v6, this + 56);
  }

  *(this + 20) = -1;
  re::FixedArray<CoreIKTransform>::deinit(this + 4);
  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }
}

uint64_t re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(void *a1, unint64_t a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*(a1[1] + 16 * (v12 + v13)) == a2)
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::resize(uint64_t a1)
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
  memset(v46, 0, sizeof(v46));
  v9 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v46, v8, v3);
  v44[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v44[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_29;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v45 = v15 - v11;
    if (v15 + 1 != v11)
    {
      v43 = vdupq_n_s64(1uLL).u64[0];
      do
      {
        v17 = *(v44[0] + 8);
        if (*(&v46[3] + 1))
        {
          v18 = *&v46[2];
        }

        else
        {
          *&v46[1] = 16;
          *&v36 = -1;
          *(&v36 + 1) = -1;
          **&v46[0] = v36;
          v18 = *&v46[1];
          *(&v46[0] + 1) = *&v46[0] + 16;
          *(&v46[1] + 1) = 0;
          v46[2] = *&v46[1];
          *&v46[3] = 0;
        }

        v19 = xmmword_1E304FAD0;
        if (!v18 || (v20 = *&v46[1], *&v46[1] > (8 * v18)))
        {
          re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::resize(v46);
          v19 = xmmword_1E304FAD0;
          v20 = *&v46[1];
        }

        v21 = (v17 + 16 * v16);
        v22 = 0xBF58476D1CE4E5B9 * (*v21 ^ (*v21 >> 30));
        v23 = (0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) ^ ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) >> 31);
        v24 = v20 >> 4;
        v25 = v23 % (v20 >> 4);
        v26 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v46[0] + 16 * v25)), v19)))), 0x3830282018100800)));
        if (v26 >= 0x40)
        {
          do
          {
            if (v25 + 1 == v24)
            {
              v25 = 0;
            }

            else
            {
              ++v25;
            }

            v26 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v46[0] + 16 * v25)), v19)))), 0x3830282018100800)));
          }

          while (v26 > 0x3F);
        }

        v27 = *&v46[0] + 16 * v25;
        v28 = *(v27 + v26);
        *(v27 + v26) = v23 & 0x7F;
        v29 = 16 * (v26 + 16 * v25);
        v31 = *v21;
        v30 = v21[1];
        *(*(&v46[0] + 1) + v29) = v31;
        v32 = (*(&v46[0] + 1) + v29);
        *(*(&v46[0] + 1) + v29 + 8) = v30;
        if (v28 == 255)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v34.i64[0] = v43;
        v34.i64[1] = v33;
        *(&v46[1] + 8) = vaddq_s64(*(&v46[1] + 8), v34);
        v35 = 0xBF58476D1CE4E5B9 * (*v32 ^ (*v32 >> 30));
        *(&v46[2] + 1) ^= ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v35 ^ (v35 >> 27)));
        v9 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v44);
        v16 = v45;
      }

      while (v45 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_29:
  v37 = *(&v46[3] + 1);
  *(&v46[3] + 1) = *(a1 + 56);
  v38 = v46[0];
  v39 = v46[1];
  v46[0] = *a1;
  *&v46[1] = v10;
  v40 = v46[2];
  v41 = *(a1 + 40);
  *(a1 + 48) = *&v46[3];
  *(a1 + 56) = v37;
  *(&v46[2] + 8) = v41;
  v42 = *(a1 + 24);
  *a1 = v38;
  *(a1 + 16) = v39;
  *(a1 + 32) = v40;
  *(&v46[1] + 8) = v42;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v46);
}

uint64_t anonymous namespace::getVectorSizeForVertexFormat(int a1)
{
  if ((a1 - 1) > 0x34)
  {
    return 0;
  }

  else
  {
    return qword_1E305CAD8[(a1 - 1)];
  }
}

double re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v3 = *(a1 + 16);
      if (v3 >= 0x10)
      {
        v4 = 0;
        v5 = *a1;
        v6 = v3 >> 4;
        while (1)
        {
          v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v7 ^ 0xFFFFLL;
          if (v7 != 0xFFFFLL)
          {
            break;
          }

          v4 -= 16;
          ++v5;
          if (!--v6)
          {
            goto LABEL_10;
          }
        }

        v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
        v11 = v8 - v4;
        if (v8 + 1 != v4)
        {
          do
          {
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
          }

          while (v11 != -1);
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

void *re::DynamicArray<re::MeshAssetPart>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetPart>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetPart>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::FixedArray<re::SkinningInfluence>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::SkinningInfluence>::copy(a1, a2);
  }

  return a1;
}

__n128 re::DynamicArray<re::MeshAssetSkinningData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetSkinningData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 144 * v4;
  *v5 = *a2;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  v6 = *(a2 + 16);
  *(v5 + 8) = *(a2 + 8);
  *(v5 + 16) = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = *(v5 + 24);
  *(v5 + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v8 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *(v5 + 48);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = v9;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v10 = *(a2 + 64);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 64) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v11 = *(v5 + 72);
  *(v5 + 72) = *(a2 + 72);
  *(a2 + 72) = v11;
  result = *(a2 + 80);
  v13 = *(a2 + 96);
  v14 = *(a2 + 128);
  *(v5 + 112) = *(a2 + 112);
  *(v5 + 128) = v14;
  *(v5 + 80) = result;
  *(v5 + 96) = v13;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::FixedArray<re::SkinningInfluence>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::MeshAssetSkinningData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::DynamicArray<re::MeshAssetBlendShapeData>::resize(uint64_t a1, unint64_t a2)
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
      v10 = (*(a1 + 32) + v8);
      re::FixedArray<re::BlendShapeDefinition>::deinit(v10 + 2);
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
      re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 44) = 0;
        *(v7 + 48) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 16) = 0;
        *(v7 + 40) = 0;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

unsigned __int8 *re::Result<re::BlendShapeGroupDefinition,re::DetailedError>::~Result(unsigned __int8 *a1)
{
  v3 = *a1;
  v2 = (a1 + 24);
  if (v3 == 1)
  {
    re::FixedArray<re::BlendShapeDefinition>::deinit(v2);
    re::StringID::destroyString((a1 + 8));
  }

  else
  {
    re::DynamicString::deinit(v2);
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetContactDeformerData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 48 * a2;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(v10 + 2);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 48;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 16) = 0;
        *(v7 + 40) = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::DynamicArray<re::MeshAssetWrapDeformerData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::FixedArray<CoreIKTransform>::deinit(v10 + 10);
      re::FixedArray<CoreIKTransform>::deinit(v10 + 7);
      re::FixedArray<CoreIKTransform>::deinit(v10 + 4);
      re::StringID::destroyString((v10 + 2));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 112;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0;
        *(v7 + 24) = &str_67;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 90) = 0uLL;
        v6 += 112;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

re::StringID *re::types::Ok<re::MeshAssetModel>::~Ok(re::StringID *a1)
{
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1 + 472);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 432);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a1 + 392);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 352);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a1 + 312);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(a1 + 272);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a1 + 232);
  re::DynamicArray<re::MeshAssetPart>::deinit(a1 + 192);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(a1 + 152);
  re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a1 + 112);
  re::StringID::destroyString(a1);
  return a1;
}

uint64_t re::MeshPartFlags::flattenToRenderFlags(re::MeshPartFlags *this)
{
  result = 25172350;
  if (*this == 1)
  {
    result = *(this + 1) | 0x180197Eu;
  }

  if (*(this + 2) == 1)
  {
    result = result & 0xFFFFFFFD | (2 * (*(this + 3) == 1));
  }

  if (*(this + 4) == 1)
  {
    return result & 0xFFF9FFFF | ((*(this + 5) & 3) << 17);
  }

  return result;
}

BOOL re::anonymous namespace::isNonCombinableConstantBuffer(uint64_t a1)
{
  if (*(a1 + 73))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  return strcmp(v2, "indexTriangles") != 0;
}

uint64_t re::DynamicArray<re::MeshAssetBlendShapeData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetBlendShapeData>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshAssetBlendShapeData>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetBlendShapeData>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetSkinningData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetSkinningData>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = 144 * v6;
          v8 = (*(a1 + 32) + 56);
          do
          {
            re::FixedArray<CoreIKTransform>::deinit(v8);
            re::FixedArray<CoreIKTransform>::deinit(v8 - 3);
            re::FixedArray<CoreIKTransform>::deinit(v8 - 6);
            v8 += 18;
            v7 -= 144;
          }

          while (v7);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetSkinningData>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetPart>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetPart>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = v6 << 8;
          do
          {
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v7 + 200));
            re::StringID::destroyString((v7 + 72));
            re::DynamicArray<re::MeshAssetBuffer>::deinit(v7);
            v7 += 256;
            v8 -= 256;
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
      re::DynamicArray<re::MeshAssetPart>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetPart>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshLodLevelInfo>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshLodLevelInfo>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshLodLevelInfo>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshLodLevelInfo>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetContactDeformerData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetContactDeformerData>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshAssetContactDeformerData>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetContactDeformerData>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetSmoothDeformerData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetSmoothDeformerData>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetSmoothDeformerData>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetWrapDeformerData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetWrapDeformerData>::copy(a1, a2);
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
            re::FixedArray<CoreIKTransform>::deinit(v7 + 10);
            re::FixedArray<CoreIKTransform>::deinit(v7 + 7);
            re::FixedArray<CoreIKTransform>::deinit(v7 + 4);
            re::StringID::destroyString((v7 + 2));
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
      re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetWrapDeformerData>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetJiggleDeformerData>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetJiggleDeformerData>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetJiggleDeformerData>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetJiggleDeformerData>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::MeshAssetContactDeformerData>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 48 * v2;
    do
    {
      re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(v3 + 2);
      re::StringID::destroyString(v3);
      v3 = (v3 + 48);
      v4 -= 48;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 24 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 24);
      v4 -= 24;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::combineParts(re::MeshAssetModel &,re::MeshAssetData const&,re::DynamicOverflowArray<re::DynamicOverflowArray<re::anonymous namespace::PartInstance,64ul>,64ul> &,re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul> const&,unsigned int)::$_0 &,re::anonymous namespace::PartInstance*,false>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v9 = a2 - 80;
    v262 = (a2 - 240);
    v263 = (a2 - 160);
    v10 = a1;
    v269 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = a2 - v10;
          v12 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 4);
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v180 = (v10 + 80);
                v182 = (a2 - 80);
                if (v181)
                {
                  if (v183)
                  {
                    v317 = *v10;
                    v434 = *(v10 + 48);
                    v473 = *(v10 + 64);
                    v356 = *(v10 + 16);
                    v395 = *(v10 + 32);
                    v184 = *(a2 - 16);
                    v186 = *(a2 - 64);
                    v185 = *(a2 - 48);
                    *(v10 + 48) = *(a2 - 32);
                    *(v10 + 64) = v184;
                    *(v10 + 16) = v186;
                    *(v10 + 32) = v185;
                    *v10 = *v182;
                    *(a2 - 32) = v434;
                    *(a2 - 16) = v473;
                    *(a2 - 64) = v356;
                    *(a2 - 48) = v395;
                    result = v317;
                    *v182 = v317;
                  }

                  else
                  {
                    v324 = *v10;
                    v441 = *(v10 + 48);
                    v480 = *(v10 + 64);
                    v363 = *(v10 + 16);
                    v402 = *(v10 + 32);
                    v257 = *(v10 + 144);
                    *(v10 + 48) = *(v10 + 128);
                    *(v10 + 64) = v257;
                    v258 = *(v10 + 112);
                    *(v10 + 16) = *(v10 + 96);
                    *(v10 + 32) = v258;
                    *v10 = *v180;
                    *(v10 + 128) = v441;
                    *(v10 + 144) = v480;
                    *(v10 + 96) = v363;
                    *(v10 + 112) = v402;
                    *v180 = v324;
                    {
                      v403 = *(v10 + 112);
                      v442 = *(v10 + 128);
                      v481 = *(v10 + 144);
                      v325 = *v180;
                      v364 = *(v10 + 96);
                      v260 = *(a2 - 64);
                      v259 = *(a2 - 48);
                      v261 = *(a2 - 16);
                      *(v10 + 128) = *(a2 - 32);
                      *(v10 + 144) = v261;
                      *(v10 + 96) = v260;
                      *(v10 + 112) = v259;
                      *v180 = *v182;
                      *v182 = v325;
                      result = v364;
                      *(a2 - 32) = v442;
                      *(a2 - 16) = v481;
                      *(a2 - 64) = v364;
                      *(a2 - 48) = v403;
                    }
                  }
                }

                else if (v183)
                {
                  v399 = *(v10 + 112);
                  v438 = *(v10 + 128);
                  v477 = *(v10 + 144);
                  v321 = *v180;
                  v360 = *(v10 + 96);
                  v243 = *(a2 - 64);
                  v242 = *(a2 - 48);
                  v244 = *(a2 - 16);
                  *(v10 + 128) = *(a2 - 32);
                  *(v10 + 144) = v244;
                  *(v10 + 96) = v243;
                  *(v10 + 112) = v242;
                  *v180 = *v182;
                  *v182 = v321;
                  *(a2 - 32) = v438;
                  *(a2 - 16) = v477;
                  *(a2 - 64) = v360;
                  *(a2 - 48) = v399;
                  {
                    v322 = *v10;
                    v439 = *(v10 + 48);
                    v478 = *(v10 + 64);
                    v361 = *(v10 + 16);
                    v400 = *(v10 + 32);
                    v245 = *(v10 + 144);
                    *(v10 + 48) = *(v10 + 128);
                    *(v10 + 64) = v245;
                    v246 = *(v10 + 112);
                    *(v10 + 16) = *(v10 + 96);
                    *(v10 + 32) = v246;
                    *v10 = *v180;
                    result = v322;
                    *(v10 + 128) = v439;
                    *(v10 + 144) = v478;
                    *(v10 + 96) = v361;
                    *(v10 + 112) = v400;
                    *v180 = v322;
                  }
                }

                return result;
              case 4:

                return result;
              case 5:
                v156 = *(a2 - 80);
                v157 = *(a2 - 76);
                v158 = (a2 - 80);
                {
                  v390 = *(v10 + 272);
                  v429 = *(v10 + 288);
                  v468 = *(v10 + 304);
                  v312 = *(v10 + 240);
                  v351 = *(v10 + 256);
                  v160 = v158[1];
                  v159 = v158[2];
                  v161 = v158[4];
                  *(v10 + 288) = v158[3];
                  *(v10 + 304) = v161;
                  *(v10 + 256) = v160;
                  *(v10 + 272) = v159;
                  *(v10 + 240) = *v158;
                  *v158 = v312;
                  v158[3] = v429;
                  v158[4] = v468;
                  v158[1] = v351;
                  v158[2] = v390;
                  {
                    v391 = *(v10 + 192);
                    v430 = *(v10 + 208);
                    v162 = *(v10 + 240);
                    v469 = *(v10 + 224);
                    v313 = *(v10 + 160);
                    v352 = *(v10 + 176);
                    v163 = *(v10 + 256);
                    v164 = *(v10 + 288);
                    v165 = *(v10 + 304);
                    *(v10 + 192) = *(v10 + 272);
                    *(v10 + 208) = v164;
                    *(v10 + 160) = v162;
                    *(v10 + 176) = v163;
                    *(v10 + 224) = v165;
                    *(v10 + 240) = v313;
                    *(v10 + 288) = v430;
                    *(v10 + 304) = v469;
                    *(v10 + 256) = v352;
                    *(v10 + 272) = v391;
                    {
                      v392 = *(v10 + 112);
                      v431 = *(v10 + 128);
                      v166 = *(v10 + 160);
                      v470 = *(v10 + 144);
                      v314 = *(v10 + 80);
                      v353 = *(v10 + 96);
                      v167 = *(v10 + 176);
                      v168 = *(v10 + 208);
                      v169 = *(v10 + 224);
                      *(v10 + 112) = *(v10 + 192);
                      *(v10 + 128) = v168;
                      *(v10 + 80) = v166;
                      *(v10 + 96) = v167;
                      *(v10 + 144) = v169;
                      *(v10 + 160) = v314;
                      *(v10 + 208) = v431;
                      *(v10 + 224) = v470;
                      *(v10 + 176) = v353;
                      *(v10 + 192) = v392;
                      {
                        v315 = *v10;
                        v432 = *(v10 + 48);
                        v471 = *(v10 + 64);
                        v354 = *(v10 + 16);
                        v393 = *(v10 + 32);
                        v170 = *(v10 + 144);
                        *(v10 + 48) = *(v10 + 128);
                        *(v10 + 64) = v170;
                        v171 = *(v10 + 112);
                        *(v10 + 16) = *(v10 + 96);
                        *(v10 + 32) = v171;
                        *v10 = *(v10 + 80);
                        result = v315;
                        *(v10 + 128) = v432;
                        *(v10 + 144) = v471;
                        *(v10 + 96) = v354;
                        *(v10 + 112) = v393;
                        *(v10 + 80) = v315;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              v172 = *(a2 - 80);
              v173 = *(a2 - 76);
              v174 = (a2 - 80);
              {
                v316 = *v10;
                v433 = *(v10 + 48);
                v472 = *(v10 + 64);
                v355 = *(v10 + 16);
                v394 = *(v10 + 32);
                v177 = v174[4];
                v179 = v174[1];
                v178 = v174[2];
                *(v10 + 48) = v174[3];
                *(v10 + 64) = v177;
                *(v10 + 16) = v179;
                *(v10 + 32) = v178;
                *v10 = *v174;
                v174[3] = v433;
                v174[4] = v472;
                v174[1] = v355;
                v174[2] = v394;
                result = v316;
                *v174 = v316;
              }

              return result;
            }
          }

          if (v11 <= 1919)
          {
            v187 = v10 + 80;
            v188 = v10 == a2 || v187 == a2;
            v189 = v188;
            if (a5)
            {
              if ((v189 & 1) == 0)
              {
                v190 = 0;
                v191 = v10;
                do
                {
                  v192 = *(v191 + 80);
                  v193 = *v191;
                  v194 = *(v191 + 4);
                  v191 = v187;
                  {
                    v195 = *v191;
                    v196 = *(v191 + 4);
                    v474 = *(v191 + 72);
                    v396 = *(v191 + 40);
                    v435 = *(v191 + 56);
                    v357 = *(v191 + 24);
                    v318 = *(v191 + 8);
                    v197 = v190;
                    while (1)
                    {
                      v198 = (a1 + v197);
                      v199 = *(a1 + v197 + 48);
                      v198[7] = *(a1 + v197 + 32);
                      v198[8] = v199;
                      v198[9] = *(a1 + v197 + 64);
                      v200 = *(a1 + v197 + 16);
                      v198[5] = *(a1 + v197);
                      v198[6] = v200;
                      if (!v197)
                      {
                        break;
                      }

                      v197 -= 80;
                      {
                        v201 = a1 + v197 + 80;
                        goto LABEL_129;
                      }
                    }

                    v201 = a1;
LABEL_129:
                    *v201 = v195;
                    *(v201 + 4) = v196;
                    result = v357;
                    *(v201 + 72) = v474;
                    *(v201 + 8) = v318;
                    *(v201 + 56) = v435;
                    *(v201 + 40) = v396;
                    *(v201 + 24) = v357;
                  }

                  v187 = v191 + 80;
                  v190 += 80;
                }

                while (v191 + 80 != a2);
              }
            }

            else if ((v189 & 1) == 0)
            {
              do
              {
                v247 = *(a1 + 80);
                v248 = *a1;
                v249 = *(a1 + 4);
                a1 = v187;
                {
                  v250 = *a1;
                  v251 = *(a1 + 4);
                  v479 = *(a1 + 72);
                  v401 = *(a1 + 40);
                  v440 = *(a1 + 56);
                  v362 = *(a1 + 24);
                  v323 = *(a1 + 8);
                  v252 = a1;
                  do
                  {
                    v253 = v252 - 5;
                    v254 = *(v252 - 2);
                    v252[2] = *(v252 - 3);
                    v252[3] = v254;
                    v252[4] = *(v252 - 1);
                    v255 = *(v252 - 4);
                    *v252 = *(v252 - 5);
                    v252[1] = v255;
                    v252 = v253;
                  }

                  while (v256);
                  *v253 = v250;
                  *(v253 + 1) = v251;
                  *(v253 + 8) = v323;
                  result = v362;
                  *(v253 + 9) = v479;
                  *(v253 + 56) = v440;
                  *(v253 + 40) = v401;
                  *(v253 + 24) = v362;
                }

                v187 = a1 + 80;
              }

              while (a1 + 80 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v264 = a2 - v10;
              v202 = (v12 - 2) >> 1;
              v268 = v202;
              do
              {
                v203 = v202;
                if (v268 >= v202)
                {
                  v204 = (2 * v202) | 1;
                  v205 = a1 + 80 * v204;
                  {
                    v205 += 80;
                    v204 = 2 * v203 + 2;
                  }

                  v206 = a1 + 80 * v203;
                  {
                    v266 = v203;
                    v207 = *v206;
                    v208 = *(v206 + 4);
                    v475 = *(v206 + 72);
                    v397 = *(v206 + 40);
                    v436 = *(v206 + 56);
                    v358 = *(v206 + 24);
                    v319 = *(v206 + 8);
                    do
                    {
                      v209 = v205;
                      *v206 = *v205;
                      v210 = *(v205 + 16);
                      v211 = *(v205 + 32);
                      v212 = *(v205 + 64);
                      *(v206 + 48) = *(v205 + 48);
                      *(v206 + 64) = v212;
                      *(v206 + 16) = v210;
                      *(v206 + 32) = v211;
                      if (v268 < v204)
                      {
                        break;
                      }

                      v213 = (2 * v204) | 1;
                      v205 = a1 + 80 * v213;
                      v214 = 2 * v204 + 2;
                      {
                        v205 += 80;
                        v213 = v214;
                      }

                      v206 = v209;
                      v204 = v213;
                    }

                    *v209 = v207;
                    *(v209 + 4) = v208;
                    *(v209 + 72) = v475;
                    *(v209 + 8) = v319;
                    *(v209 + 56) = v436;
                    *(v209 + 40) = v397;
                    *(v209 + 24) = v358;
                    v203 = v266;
                  }
                }

                v202 = v203 - 1;
              }

              while (v203);
              v215 = 0xCCCCCCCCCCCCCCCDLL * (v264 >> 4);
              v216 = v269;
              do
              {
                v270 = v216;
                v217 = 0;
                v320 = *a1;
                v437 = *(a1 + 48);
                v476 = *(a1 + 64);
                v359 = *(a1 + 16);
                v398 = *(a1 + 32);
                v218 = a1;
                do
                {
                  v219 = &v218[5 * v217];
                  v220 = v219 + 5;
                  v221 = (2 * v217) | 1;
                  v222 = 2 * v217 + 2;
                  if (v222 >= v215)
                  {
                    v217 = (2 * v217) | 1;
                  }

                  else
                  {
                    v224 = *(v219 + 40);
                    v223 = v219 + 10;
                    {
                      v220 = v223;
                      v217 = v222;
                    }

                    else
                    {
                      v217 = v221;
                    }
                  }

                  *v218 = *v220;
                  v225 = v220[1];
                  v226 = v220[2];
                  v227 = v220[4];
                  v218[3] = v220[3];
                  v218[4] = v227;
                  v218[1] = v225;
                  v218[2] = v226;
                  v218 = v220;
                }

                while (v217 <= ((v215 - 2) >> 1));
                v228 = (v270 - 80);
                v188 = v220 == (v270 - 80);
                v271 = v270 - 80;
                if (v188)
                {
                  *v220 = v320;
                  result = v359;
                  v220[3] = v437;
                  v220[4] = v476;
                  v220[1] = v359;
                  v220[2] = v398;
                }

                else
                {
                  *v220 = *v228;
                  v229 = v228[1];
                  v230 = v228[2];
                  v231 = v228[4];
                  v220[3] = v228[3];
                  v220[4] = v231;
                  v220[1] = v229;
                  v220[2] = v230;
                  v228[3] = v437;
                  v228[4] = v476;
                  v228[1] = v359;
                  v228[2] = v398;
                  result = v320;
                  *v228 = v320;
                  v232 = v220 - a1 + 80;
                  if (v232 >= 81)
                  {
                    v233 = (-2 - 0x3333333333333333 * (v232 >> 4)) >> 1;
                    v234 = a1 + 80 * v233;
                    {
                      v235 = *v220;
                      v236 = *(v220 + 1);
                      v286 = *(v220 + 9);
                      v280 = *(v220 + 40);
                      v283 = *(v220 + 56);
                      v277 = *(v220 + 24);
                      v274 = *(v220 + 8);
                      do
                      {
                        v237 = v234;
                        *v220 = *v234;
                        v238 = *(v234 + 16);
                        v239 = *(v234 + 32);
                        v240 = *(v234 + 64);
                        v220[3] = *(v234 + 48);
                        v220[4] = v240;
                        v220[1] = v238;
                        v220[2] = v239;
                        if (!v233)
                        {
                          break;
                        }

                        v233 = (v233 - 1) >> 1;
                        v234 = a1 + 80 * v233;
                        v220 = v237;
                      }

                      *v237 = v235;
                      *(v237 + 4) = v236;
                      result = v277;
                      *(v237 + 72) = v286;
                      *(v237 + 8) = v274;
                      *(v237 + 56) = v283;
                      *(v237 + 40) = v280;
                      *(v237 + 24) = v277;
                    }
                  }
                }

                v241 = v215-- <= 2;
                v216 = v271;
              }

              while (!v241);
            }

            return result;
          }

          v13 = v12 >> 1;
          v14 = v10 + 80 * (v12 >> 1);
          v15 = *a3;
          if (v11 >= 0x2801)
          {
            v265 = a4;
            if (v16)
            {
              if (v17)
              {
                v287 = *a1;
                v404 = *(a1 + 48);
                v443 = *(a1 + 64);
                v326 = *(a1 + 16);
                v365 = *(a1 + 32);
                v18 = *(v9 + 64);
                v20 = *(v9 + 16);
                v19 = *(v9 + 32);
                *(a1 + 48) = *(v9 + 48);
                *(a1 + 64) = v18;
                *(a1 + 16) = v20;
                *(a1 + 32) = v19;
                *a1 = *v9;
              }

              else
              {
                v293 = *a1;
                v410 = *(a1 + 48);
                v449 = *(a1 + 64);
                v332 = *(a1 + 16);
                v371 = *(a1 + 32);
                v38 = *(v14 + 64);
                v40 = *(v14 + 16);
                v39 = *(v14 + 32);
                *(a1 + 48) = *(v14 + 48);
                *(a1 + 64) = v38;
                *(a1 + 16) = v40;
                *(a1 + 32) = v39;
                *a1 = *v14;
                *(v14 + 48) = v410;
                *(v14 + 64) = v449;
                *(v14 + 16) = v332;
                *(v14 + 32) = v371;
                *v14 = v293;
                {
                  goto LABEL_27;
                }

                v287 = *v14;
                v404 = *(v14 + 48);
                v443 = *(v14 + 64);
                v326 = *(v14 + 16);
                v365 = *(v14 + 32);
                v41 = *(v9 + 64);
                v43 = *(v9 + 16);
                v42 = *(v9 + 32);
                *(v14 + 48) = *(v9 + 48);
                *(v14 + 64) = v41;
                *(v14 + 16) = v43;
                *(v14 + 32) = v42;
                *v14 = *v9;
              }

              *(v9 + 48) = v404;
              *(v9 + 64) = v443;
              *(v9 + 16) = v326;
              *(v9 + 32) = v365;
              *v9 = v287;
            }

            else if (v17)
            {
              v289 = *v14;
              v406 = *(v14 + 48);
              v445 = *(v14 + 64);
              v328 = *(v14 + 16);
              v367 = *(v14 + 32);
              v26 = *(v9 + 64);
              v28 = *(v9 + 16);
              v27 = *(v9 + 32);
              *(v14 + 48) = *(v9 + 48);
              *(v14 + 64) = v26;
              *(v14 + 16) = v28;
              *(v14 + 32) = v27;
              *v14 = *v9;
              *(v9 + 48) = v406;
              *(v9 + 64) = v445;
              *(v9 + 16) = v328;
              *(v9 + 32) = v367;
              *v9 = v289;
              {
                v290 = *a1;
                v407 = *(a1 + 48);
                v446 = *(a1 + 64);
                v329 = *(a1 + 16);
                v368 = *(a1 + 32);
                v29 = *(v14 + 64);
                v31 = *(v14 + 16);
                v30 = *(v14 + 32);
                *(a1 + 48) = *(v14 + 48);
                *(a1 + 64) = v29;
                *(a1 + 16) = v31;
                *(a1 + 32) = v30;
                *a1 = *v14;
                *(v14 + 48) = v407;
                *(v14 + 64) = v446;
                *(v14 + 16) = v329;
                *(v14 + 32) = v368;
                *v14 = v290;
              }
            }

LABEL_27:
            v44 = (a1 + 80);
            v45 = a1 + 80 * v13;
            v46 = *(v45 - 80);
            v47 = *(v45 - 76);
            v48 = v45 - 80;
            if (v49)
            {
              if (v50)
              {
                v372 = *(a1 + 112);
                v411 = *(a1 + 128);
                v450 = *(a1 + 144);
                v294 = *v44;
                v333 = *(a1 + 96);
                v52 = v263[1];
                v51 = v263[2];
                v53 = v263[4];
                *(a1 + 128) = v263[3];
                *(a1 + 144) = v53;
                *(a1 + 96) = v52;
                *(a1 + 112) = v51;
                *v44 = *v263;
                *v263 = v294;
                v263[3] = v411;
                v263[4] = v450;
                v263[1] = v333;
                v263[2] = v372;
              }

              else
              {
                v376 = *(a1 + 112);
                v415 = *(a1 + 128);
                v454 = *(a1 + 144);
                v298 = *v44;
                v337 = *(a1 + 96);
                v67 = *(v48 + 16);
                v66 = *(v48 + 32);
                v68 = *(v48 + 64);
                *(a1 + 128) = *(v48 + 48);
                *(a1 + 144) = v68;
                *(a1 + 96) = v67;
                *(a1 + 112) = v66;
                *v44 = *v48;
                *v48 = v298;
                *(v48 + 48) = v415;
                *(v48 + 64) = v454;
                *(v48 + 16) = v337;
                *(v48 + 32) = v376;
                {
                  v299 = *v48;
                  v416 = *(v48 + 48);
                  v455 = *(v48 + 64);
                  v338 = *(v48 + 16);
                  v377 = *(v48 + 32);
                  v69 = v263[4];
                  v71 = v263[1];
                  v70 = v263[2];
                  *(v48 + 48) = v263[3];
                  *(v48 + 64) = v69;
                  *(v48 + 16) = v71;
                  *(v48 + 32) = v70;
                  *v48 = *v263;
                  v263[3] = v416;
                  v263[4] = v455;
                  v263[1] = v338;
                  v263[2] = v377;
                  *v263 = v299;
                }
              }
            }

            else if (v50)
            {
              v295 = *v48;
              v412 = *(v48 + 48);
              v451 = *(v48 + 64);
              v334 = *(v48 + 16);
              v373 = *(v48 + 32);
              v54 = v263[4];
              v56 = v263[1];
              v55 = v263[2];
              *(v48 + 48) = v263[3];
              *(v48 + 64) = v54;
              *(v48 + 16) = v56;
              *(v48 + 32) = v55;
              *v48 = *v263;
              v263[3] = v412;
              v263[4] = v451;
              v263[1] = v334;
              v263[2] = v373;
              *v263 = v295;
              {
                v374 = *(a1 + 112);
                v413 = *(a1 + 128);
                v452 = *(a1 + 144);
                v296 = *v44;
                v335 = *(a1 + 96);
                v58 = *(v48 + 16);
                v57 = *(v48 + 32);
                v59 = *(v48 + 64);
                *(a1 + 128) = *(v48 + 48);
                *(a1 + 144) = v59;
                *(a1 + 96) = v58;
                *(a1 + 112) = v57;
                *v44 = *v48;
                *v48 = v296;
                *(v48 + 48) = v413;
                *(v48 + 64) = v452;
                *(v48 + 16) = v335;
                *(v48 + 32) = v374;
              }
            }

            v72 = (a1 + 160);
            v73 = a1 + 80 * v13;
            v74 = *(v73 + 80);
            v75 = *(v73 + 84);
            v76 = v73 + 80;
            if (v77)
            {
              if (v78)
              {
                v378 = *(a1 + 192);
                v417 = *(a1 + 208);
                v456 = *(a1 + 224);
                v300 = *v72;
                v339 = *(a1 + 176);
                v80 = v262[1];
                v79 = v262[2];
                v81 = v262[4];
                *(a1 + 208) = v262[3];
                *(a1 + 224) = v81;
                *(a1 + 176) = v80;
                *(a1 + 192) = v79;
                *v72 = *v262;
                *v262 = v300;
                v262[3] = v417;
                v262[4] = v456;
                v262[1] = v339;
                v262[2] = v378;
              }

              else
              {
                v381 = *(a1 + 192);
                v420 = *(a1 + 208);
                v459 = *(a1 + 224);
                v303 = *v72;
                v342 = *(a1 + 176);
                v89 = *(v76 + 16);
                v88 = *(v76 + 32);
                v90 = *(v76 + 64);
                *(a1 + 208) = *(v76 + 48);
                *(a1 + 224) = v90;
                *(a1 + 176) = v89;
                *(a1 + 192) = v88;
                *v72 = *v76;
                *v76 = v303;
                *(v76 + 48) = v420;
                *(v76 + 64) = v459;
                *(v76 + 16) = v342;
                *(v76 + 32) = v381;
                {
                  v304 = *v76;
                  v421 = *(v76 + 48);
                  v460 = *(v76 + 64);
                  v343 = *(v76 + 16);
                  v382 = *(v76 + 32);
                  v91 = v262[4];
                  v93 = v262[1];
                  v92 = v262[2];
                  *(v76 + 48) = v262[3];
                  *(v76 + 64) = v91;
                  *(v76 + 16) = v93;
                  *(v76 + 32) = v92;
                  *v76 = *v262;
                  v262[3] = v421;
                  v262[4] = v460;
                  v262[1] = v343;
                  v262[2] = v382;
                  *v262 = v304;
                }
              }
            }

            else if (v78)
            {
              v301 = *v76;
              v418 = *(v76 + 48);
              v457 = *(v76 + 64);
              v340 = *(v76 + 16);
              v379 = *(v76 + 32);
              v82 = v262[4];
              v84 = v262[1];
              v83 = v262[2];
              *(v76 + 48) = v262[3];
              *(v76 + 64) = v82;
              *(v76 + 16) = v84;
              *(v76 + 32) = v83;
              *v76 = *v262;
              v262[3] = v418;
              v262[4] = v457;
              v262[1] = v340;
              v262[2] = v379;
              *v262 = v301;
              {
                v380 = *(a1 + 192);
                v419 = *(a1 + 208);
                v458 = *(a1 + 224);
                v302 = *v72;
                v341 = *(a1 + 176);
                v86 = *(v76 + 16);
                v85 = *(v76 + 32);
                v87 = *(v76 + 64);
                *(a1 + 208) = *(v76 + 48);
                *(a1 + 224) = v87;
                *(a1 + 176) = v86;
                *(a1 + 192) = v85;
                *v72 = *v76;
                *v76 = v302;
                *(v76 + 48) = v419;
                *(v76 + 64) = v458;
                *(v76 + 16) = v341;
                *(v76 + 32) = v380;
              }
            }

            if (!v94)
            {
              a4 = v265;
              if (v95)
              {
                v306 = *v14;
                v423 = *(v14 + 48);
                v462 = *(v14 + 64);
                v345 = *(v14 + 16);
                v384 = *(v14 + 32);
                v98 = *(v76 + 64);
                *(v14 + 48) = *(v76 + 48);
                *(v14 + 64) = v98;
                v99 = *(v76 + 32);
                *(v14 + 16) = *(v76 + 16);
                *(v14 + 32) = v99;
                *v14 = *v76;
                *v76 = v306;
                *(v76 + 48) = v423;
                *(v76 + 64) = v462;
                *(v76 + 16) = v345;
                *(v76 + 32) = v384;
                {
                  v307 = *v48;
                  v424 = *(v48 + 48);
                  v463 = *(v48 + 64);
                  v346 = *(v48 + 16);
                  v385 = *(v48 + 32);
                  v100 = *(v14 + 64);
                  *(v48 + 48) = *(v14 + 48);
                  *(v48 + 64) = v100;
                  v101 = *(v14 + 32);
                  *(v48 + 16) = *(v14 + 16);
                  *(v48 + 32) = v101;
                  *v48 = *v14;
                  *v14 = v307;
                  *(v14 + 48) = v424;
                  *(v14 + 64) = v463;
                  *(v14 + 16) = v346;
                  *(v14 + 32) = v385;
                }
              }

              goto LABEL_55;
            }

            a4 = v265;
            if (v95)
            {
              v305 = *v48;
              v422 = *(v48 + 48);
              v461 = *(v48 + 64);
              v344 = *(v48 + 16);
              v383 = *(v48 + 32);
              v96 = *(v76 + 64);
              *(v48 + 48) = *(v76 + 48);
              *(v48 + 64) = v96;
              v97 = *(v76 + 32);
              *(v48 + 16) = *(v76 + 16);
              *(v48 + 32) = v97;
              *v48 = *v76;
            }

            else
            {
              v308 = *v48;
              v425 = *(v48 + 48);
              v464 = *(v48 + 64);
              v347 = *(v48 + 16);
              v386 = *(v48 + 32);
              v102 = *(v14 + 64);
              *(v48 + 48) = *(v14 + 48);
              *(v48 + 64) = v102;
              v103 = *(v14 + 32);
              *(v48 + 16) = *(v14 + 16);
              *(v48 + 32) = v103;
              *v48 = *v14;
              *v14 = v308;
              *(v14 + 48) = v425;
              *(v14 + 64) = v464;
              *(v14 + 16) = v347;
              *(v14 + 32) = v386;
              {
LABEL_55:
                v309 = *a1;
                v426 = *(a1 + 48);
                v465 = *(a1 + 64);
                v348 = *(a1 + 16);
                v387 = *(a1 + 32);
                v106 = *(v14 + 64);
                v108 = *(v14 + 16);
                v107 = *(v14 + 32);
                *(a1 + 48) = *(v14 + 48);
                *(a1 + 64) = v106;
                *(a1 + 16) = v108;
                *(a1 + 32) = v107;
                *a1 = *v14;
                *(v14 + 48) = v426;
                *(v14 + 64) = v465;
                *(v14 + 16) = v348;
                *(v14 + 32) = v387;
                *v14 = v309;
                goto LABEL_56;
              }

              v305 = *v14;
              v422 = *(v14 + 48);
              v461 = *(v14 + 64);
              v344 = *(v14 + 16);
              v383 = *(v14 + 32);
              v104 = *(v76 + 64);
              *(v14 + 48) = *(v76 + 48);
              *(v14 + 64) = v104;
              v105 = *(v76 + 32);
              *(v14 + 16) = *(v76 + 16);
              *(v14 + 32) = v105;
              *v14 = *v76;
            }

            *v76 = v305;
            *(v76 + 48) = v422;
            *(v76 + 64) = v461;
            *(v76 + 16) = v344;
            *(v76 + 32) = v383;
            goto LABEL_55;
          }

          if (v21)
          {
            if (v22)
            {
              v288 = *v14;
              v405 = *(v14 + 48);
              v444 = *(v14 + 64);
              v327 = *(v14 + 16);
              v366 = *(v14 + 32);
              v23 = *(v9 + 64);
              v25 = *(v9 + 16);
              v24 = *(v9 + 32);
              *(v14 + 48) = *(v9 + 48);
              *(v14 + 64) = v23;
              *(v14 + 16) = v25;
              *(v14 + 32) = v24;
              *v14 = *v9;
LABEL_35:
              *(v9 + 48) = v405;
              *(v9 + 64) = v444;
              *(v9 + 16) = v327;
              *(v9 + 32) = v366;
              *v9 = v288;
              goto LABEL_56;
            }

            v297 = *v14;
            v414 = *(v14 + 48);
            v453 = *(v14 + 64);
            v336 = *(v14 + 16);
            v375 = *(v14 + 32);
            v60 = *(a1 + 64);
            v62 = *(a1 + 16);
            v61 = *(a1 + 32);
            *(v14 + 48) = *(a1 + 48);
            *(v14 + 64) = v60;
            *(v14 + 16) = v62;
            *(v14 + 32) = v61;
            *v14 = *a1;
            *(a1 + 48) = v414;
            *(a1 + 64) = v453;
            *(a1 + 16) = v336;
            *(a1 + 32) = v375;
            *a1 = v297;
            {
              v288 = *a1;
              v405 = *(a1 + 48);
              v444 = *(a1 + 64);
              v327 = *(a1 + 16);
              v366 = *(a1 + 32);
              v63 = *(v9 + 64);
              v65 = *(v9 + 16);
              v64 = *(v9 + 32);
              *(a1 + 48) = *(v9 + 48);
              *(a1 + 64) = v63;
              *(a1 + 16) = v65;
              *(a1 + 32) = v64;
              *a1 = *v9;
              goto LABEL_35;
            }
          }

          else if (v22)
          {
            v291 = *a1;
            v408 = *(a1 + 48);
            v447 = *(a1 + 64);
            v330 = *(a1 + 16);
            v369 = *(a1 + 32);
            v32 = *(v9 + 64);
            v34 = *(v9 + 16);
            v33 = *(v9 + 32);
            *(a1 + 48) = *(v9 + 48);
            *(a1 + 64) = v32;
            *(a1 + 16) = v34;
            *(a1 + 32) = v33;
            *a1 = *v9;
            *(v9 + 48) = v408;
            *(v9 + 64) = v447;
            *(v9 + 16) = v330;
            *(v9 + 32) = v369;
            *v9 = v291;
            {
              v292 = *v14;
              v409 = *(v14 + 48);
              v448 = *(v14 + 64);
              v331 = *(v14 + 16);
              v370 = *(v14 + 32);
              v35 = *(a1 + 64);
              v37 = *(a1 + 16);
              v36 = *(a1 + 32);
              *(v14 + 48) = *(a1 + 48);
              *(v14 + 64) = v35;
              *(v14 + 16) = v37;
              *(v14 + 32) = v36;
              *v14 = *a1;
              *(a1 + 48) = v409;
              *(a1 + 64) = v448;
              *(a1 + 16) = v331;
              *(a1 + 32) = v370;
              *a1 = v292;
            }
          }

LABEL_56:
          v109 = a4 - 1;
          {
            break;
          }

          v136 = *a1;
          v137 = *(a1 + 4);
          v285 = *(a1 + 72);
          v279 = *(a1 + 40);
          v282 = *(a1 + 56);
          v276 = *(a1 + 24);
          v273 = *(a1 + 8);
          {
            v10 = a1;
            do
            {
              v138 = *(v10 + 80);
              v139 = *(v10 + 84);
              v10 += 80;
            }
          }

          else
          {
            v140 = (a1 + 80);
            do
            {
              v10 = v140;
              if (v140 >= a2)
              {
                break;
              }

              v140 = (v10 + 80);
            }

            while (!v141);
          }

          v142 = v109;
          v143 = a2;
          if (v10 < a2)
          {
            v143 = a2;
            do
            {
              v144 = *(v143 - 20);
              v145 = *(v143 - 19);
              v143 -= 5;
            }
          }

          while (v10 < v143)
          {
            v311 = *v10;
            v428 = *(v10 + 48);
            v467 = *(v10 + 64);
            v350 = *(v10 + 16);
            v389 = *(v10 + 32);
            v146 = v143[4];
            v148 = v143[1];
            v147 = v143[2];
            *(v10 + 48) = v143[3];
            *(v10 + 64) = v146;
            *(v10 + 16) = v148;
            *(v10 + 32) = v147;
            *v10 = *v143;
            v143[3] = v428;
            v143[4] = v467;
            v143[1] = v350;
            v143[2] = v389;
            *v143 = v311;
            do
            {
              v149 = *(v10 + 80);
              v150 = *(v10 + 84);
              v10 += 80;
            }

            do
            {
              v151 = *(v143 - 20);
              v152 = *(v143 - 19);
              v143 -= 5;
            }
          }

          if (v10 - 80 != a1)
          {
            *a1 = *(v10 - 80);
            v153 = *(v10 - 64);
            v154 = *(v10 - 48);
            v155 = *(v10 - 16);
            *(a1 + 48) = *(v10 - 32);
            *(a1 + 64) = v155;
            *(a1 + 16) = v153;
            *(a1 + 32) = v154;
          }

          a5 = 0;
          *(v10 - 80) = v136;
          *(v10 - 76) = v137;
          *(v10 - 72) = v273;
          result = v276;
          *(v10 - 8) = v285;
          *(v10 - 24) = v282;
          *(v10 - 40) = v279;
          *(v10 - 56) = v276;
          a4 = v142;
        }

        v110 = v109;
        v111 = 0;
        v112 = *a1;
        v113 = *(a1 + 4);
        v284 = *(a1 + 72);
        v278 = *(a1 + 40);
        v281 = *(a1 + 56);
        v275 = *(a1 + 24);
        v272 = *(a1 + 8);
        do
        {
          v111 += 80;
        }

        while (v114);
        v115 = a1 + v111;
        v116 = a2;
        if (v111 == 80)
        {
          v116 = a2;
          do
          {
            if (v115 >= v116)
            {
              break;
            }

            v119 = *(v116 - 20);
            v120 = *(v116 - 19);
            v116 -= 5;
          }
        }

        else
        {
          do
          {
            v117 = *(v116 - 20);
            v118 = *(v116 - 19);
            v116 -= 5;
          }
        }

        if (v115 >= v116)
        {
          v130 = v115 - 80;
        }

        else
        {
          v121 = a1 + v111;
          v122 = v116;
          do
          {
            v310 = *v121;
            v427 = *(v121 + 48);
            v466 = *(v121 + 64);
            v349 = *(v121 + 16);
            v388 = *(v121 + 32);
            v123 = v122[4];
            v125 = v122[1];
            v124 = v122[2];
            *(v121 + 48) = v122[3];
            *(v121 + 64) = v123;
            *(v121 + 16) = v125;
            *(v121 + 32) = v124;
            *v121 = *v122;
            v122[3] = v427;
            v122[4] = v466;
            v122[1] = v349;
            v122[2] = v388;
            *v122 = v310;
            do
            {
              v126 = *(v121 + 80);
              v127 = *(v121 + 84);
              v121 += 80;
            }

            do
            {
              v128 = *(v122 - 20);
              v129 = *(v122 - 19);
              v122 -= 5;
            }
          }

          while (v121 < v122);
          v130 = v121 - 80;
          a2 = v269;
        }

        if (v130 != a1)
        {
          *a1 = *v130;
          v131 = *(v130 + 16);
          v132 = *(v130 + 32);
          v133 = *(v130 + 64);
          *(a1 + 48) = *(v130 + 48);
          *(a1 + 64) = v133;
          *(a1 + 16) = v131;
          *(a1 + 32) = v132;
        }

        *v130 = v112;
        *(v130 + 4) = v113;
        *(v130 + 72) = v284;
        *(v130 + 8) = v272;
        *(v130 + 56) = v281;
        *(v130 + 40) = v278;
        *(v130 + 24) = v275;
        v134 = v115 >= v116;
        a4 = v110;
        if (v134)
        {
          break;
        }

LABEL_80:
        a5 = 0;
        v10 = v130 + 80;
      }

      v10 = v130 + 80;
      {
        break;
      }

      if (!v135)
      {
        goto LABEL_80;
      }
    }

    a2 = v130;
    if (!v135)
    {
      continue;
    }

    return result;
  }
}

BOOL re::anonymous namespace::combineParts(re::MeshAssetModel &,re::MeshAssetData const&,re::DynamicOverflowArray<re::DynamicOverflowArray<re::anonymous namespace::PartInstance,64ul>,64ul> &,re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul> const&,unsigned int)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 8);
  if (v5 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 24;
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = v7 + 536 * a2;
  if (*(v8 + 8) <= a3)
  {
    goto LABEL_19;
  }

  if (*(v8 + 16))
  {
    v9 = v8 + 24;
  }

  else
  {
    v9 = *(v8 + 32);
  }

  if (v5 <= a4)
  {
    goto LABEL_20;
  }

  if (v6)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 32);
  }

  v11 = v10 + 536 * a4;
  if (*(v11 + 8) <= a5)
  {
LABEL_21:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(v9 + 8 * a3);
  if (*(v11 + 16))
  {
    v13 = v11 + 24;
  }

  else
  {
    v13 = *(v11 + 32);
  }

  return v12 < *(v13 + 8 * a5);
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::combineParts(re::MeshAssetModel &,re::MeshAssetData const&,re::DynamicOverflowArray<re::DynamicOverflowArray<re::anonymous namespace::PartInstance,64ul>,64ul> &,re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul> const&,unsigned int)::$_0 &,re::anonymous namespace::PartInstance*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t *a5)
{
  if (v10)
  {
    if (v11)
    {
      v51 = a1[2];
      v58 = a1[3];
      v65 = a1[4];
      v37 = *a1;
      v44 = a1[1];
      *a1 = *a3;
      v12 = a3[4];
      v14 = a3[1];
      v13 = a3[2];
      a1[3] = a3[3];
      a1[4] = v12;
      a1[1] = v14;
      a1[2] = v13;
LABEL_9:
      a3[3] = v58;
      a3[4] = v65;
      a3[1] = v44;
      a3[2] = v51;
      *a3 = v37;
      goto LABEL_10;
    }

    v54 = a1[2];
    v61 = a1[3];
    v68 = a1[4];
    v40 = *a1;
    v47 = a1[1];
    *a1 = *a2;
    v21 = a2[4];
    v23 = a2[1];
    v22 = a2[2];
    a1[3] = a2[3];
    a1[4] = v21;
    a1[1] = v23;
    a1[2] = v22;
    a2[3] = v61;
    a2[4] = v68;
    a2[1] = v47;
    a2[2] = v54;
    *a2 = v40;
    {
      v51 = a2[2];
      v58 = a2[3];
      v65 = a2[4];
      v37 = *a2;
      v44 = a2[1];
      *a2 = *a3;
      v24 = a3[4];
      v26 = a3[1];
      v25 = a3[2];
      a2[3] = a3[3];
      a2[4] = v24;
      a2[1] = v26;
      a2[2] = v25;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v52 = a2[2];
    v59 = a2[3];
    v66 = a2[4];
    v38 = *a2;
    v45 = a2[1];
    *a2 = *a3;
    v15 = a3[4];
    v17 = a3[1];
    v16 = a3[2];
    a2[3] = a3[3];
    a2[4] = v15;
    a2[1] = v17;
    a2[2] = v16;
    a3[3] = v59;
    a3[4] = v66;
    a3[1] = v45;
    a3[2] = v52;
    *a3 = v38;
    {
      v53 = a1[2];
      v60 = a1[3];
      v67 = a1[4];
      v39 = *a1;
      v46 = a1[1];
      *a1 = *a2;
      v18 = a2[4];
      v20 = a2[1];
      v19 = a2[2];
      a1[3] = a2[3];
      a1[4] = v18;
      a1[1] = v20;
      a1[2] = v19;
      a2[3] = v60;
      a2[4] = v67;
      a2[1] = v46;
      a2[2] = v53;
      *a2 = v39;
    }
  }

LABEL_10:
  {
    v55 = a3[2];
    v62 = a3[3];
    v69 = a3[4];
    v41 = *a3;
    v48 = a3[1];
    *a3 = *a4;
    v28 = a4[4];
    v30 = a4[1];
    v29 = a4[2];
    a3[3] = a4[3];
    a3[4] = v28;
    a3[1] = v30;
    a3[2] = v29;
    a4[3] = v62;
    a4[4] = v69;
    a4[1] = v48;
    a4[2] = v55;
    *a4 = v41;
    {
      v56 = a2[2];
      v63 = a2[3];
      v70 = a2[4];
      v42 = *a2;
      v49 = a2[1];
      *a2 = *a3;
      v31 = a3[4];
      v33 = a3[1];
      v32 = a3[2];
      a2[3] = a3[3];
      a2[4] = v31;
      a2[1] = v33;
      a2[2] = v32;
      a3[3] = v63;
      a3[4] = v70;
      a3[1] = v49;
      a3[2] = v56;
      *a3 = v42;
      {
        v57 = a1[2];
        v64 = a1[3];
        v71 = a1[4];
        v43 = *a1;
        v50 = a1[1];
        *a1 = *a2;
        v34 = a2[4];
        v36 = a2[1];
        v35 = a2[2];
        a1[3] = a2[3];
        a1[4] = v34;
        a1[1] = v36;
        a1[2] = v35;
        a2[3] = v64;
        a2[4] = v71;
        a2[1] = v50;
        a2[2] = v57;
        result = v43;
        *a2 = v43;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::combineParts(re::MeshAssetModel &,re::MeshAssetData const&,re::DynamicOverflowArray<re::DynamicOverflowArray<re::anonymous namespace::PartInstance,64ul>,64ul> &,re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul> const&,unsigned int)::$_0 &,re::anonymous namespace::PartInstance*>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = (a2 - 80);
        {
          v99 = *(a1 + 32);
          v113 = *(a1 + 48);
          v127 = *(a1 + 64);
          v71 = *a1;
          v85 = *(a1 + 16);
          *a1 = *v7;
          v8 = v7[4];
          v10 = v7[1];
          v9 = v7[2];
          *(a1 + 48) = v7[3];
          *(a1 + 64) = v8;
          *(a1 + 16) = v10;
          *(a1 + 32) = v9;
          v7[3] = v113;
          v7[4] = v127;
          v7[1] = v85;
          v7[2] = v99;
          result = 1;
          *v7 = v71;
          return result;
        }

        return 1;
      }

      goto LABEL_17;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      v30 = (a1 + 80);
      v32 = (a2 - 80);
      if (!v31)
      {
        if (v33)
        {
          v106 = *(a1 + 112);
          v120 = *(a1 + 128);
          v134 = *(a1 + 144);
          v78 = *v30;
          v92 = *(a1 + 96);
          *v30 = *v32;
          v43 = *(a2 - 16);
          v45 = *(a2 - 64);
          v44 = *(a2 - 48);
          *(a1 + 128) = *(a2 - 32);
          *(a1 + 144) = v43;
          *(a1 + 96) = v45;
          *(a1 + 112) = v44;
          *(a2 - 32) = v120;
          *(a2 - 16) = v134;
          *(a2 - 64) = v92;
          *(a2 - 48) = v106;
          *v32 = v78;
          {
            v107 = *(a1 + 32);
            v121 = *(a1 + 48);
            v135 = *(a1 + 64);
            v79 = *a1;
            v93 = *(a1 + 16);
            v46 = *(a1 + 128);
            *(a1 + 32) = *(a1 + 112);
            *(a1 + 48) = v46;
            *(a1 + 64) = *(a1 + 144);
            v47 = *(a1 + 96);
            *a1 = *v30;
            *(a1 + 16) = v47;
            *(a1 + 128) = v121;
            *(a1 + 144) = v135;
            *(a1 + 96) = v93;
            *(a1 + 112) = v107;
            result = 1;
            *v30 = v79;
            return result;
          }
        }

        return 1;
      }

      if (v33)
      {
        v104 = *(a1 + 32);
        v118 = *(a1 + 48);
        v132 = *(a1 + 64);
        v76 = *a1;
        v90 = *(a1 + 16);
        *a1 = *v32;
        v34 = *(a2 - 16);
        v36 = *(a2 - 64);
        v35 = *(a2 - 48);
        *(a1 + 48) = *(a2 - 32);
        *(a1 + 64) = v34;
        *(a1 + 16) = v36;
        *(a1 + 32) = v35;
      }

      else
      {
        v110 = *(a1 + 32);
        v124 = *(a1 + 48);
        v138 = *(a1 + 64);
        v82 = *a1;
        v96 = *(a1 + 16);
        v52 = *(a1 + 128);
        *(a1 + 32) = *(a1 + 112);
        *(a1 + 48) = v52;
        *(a1 + 64) = *(a1 + 144);
        v53 = *(a1 + 96);
        *a1 = *v30;
        *(a1 + 16) = v53;
        *(a1 + 128) = v124;
        *(a1 + 144) = v138;
        *(a1 + 96) = v96;
        *(a1 + 112) = v110;
        *v30 = v82;
        {
          return 1;
        }

        v104 = *(a1 + 112);
        v118 = *(a1 + 128);
        v132 = *(a1 + 144);
        v76 = *v30;
        v90 = *(a1 + 96);
        *v30 = *v32;
        v54 = *(a2 - 16);
        v56 = *(a2 - 64);
        v55 = *(a2 - 48);
        *(a1 + 128) = *(a2 - 32);
        *(a1 + 144) = v54;
        *(a1 + 96) = v56;
        *(a1 + 112) = v55;
      }

      *(a2 - 32) = v118;
      *(a2 - 16) = v132;
      *(a2 - 64) = v90;
      *(a2 - 48) = v104;
      result = 1;
      *v32 = v76;
      return result;
    case 4:
      return 1;
    case 5:
      v12 = *(a2 - 80);
      v13 = *(a2 - 76);
      v14 = (a2 - 80);
      {
        v100 = *(a1 + 272);
        v114 = *(a1 + 288);
        v128 = *(a1 + 304);
        v72 = *(a1 + 240);
        v86 = *(a1 + 256);
        *(a1 + 240) = *v14;
        v15 = v14[4];
        v17 = v14[1];
        v16 = v14[2];
        *(a1 + 288) = v14[3];
        *(a1 + 304) = v15;
        *(a1 + 256) = v17;
        *(a1 + 272) = v16;
        v14[3] = v114;
        v14[4] = v128;
        v14[1] = v86;
        v14[2] = v100;
        *v14 = v72;
        {
          v101 = *(a1 + 192);
          v115 = *(a1 + 208);
          v18 = *(a1 + 240);
          v129 = *(a1 + 224);
          v73 = *(a1 + 160);
          v87 = *(a1 + 176);
          v19 = *(a1 + 256);
          v20 = *(a1 + 288);
          v21 = *(a1 + 304);
          *(a1 + 192) = *(a1 + 272);
          *(a1 + 208) = v20;
          *(a1 + 160) = v18;
          *(a1 + 176) = v19;
          *(a1 + 224) = v21;
          *(a1 + 240) = v73;
          *(a1 + 288) = v115;
          *(a1 + 304) = v129;
          *(a1 + 256) = v87;
          *(a1 + 272) = v101;
          {
            v102 = *(a1 + 112);
            v116 = *(a1 + 128);
            v22 = *(a1 + 160);
            v130 = *(a1 + 144);
            v74 = *(a1 + 80);
            v88 = *(a1 + 96);
            v23 = *(a1 + 176);
            v24 = *(a1 + 208);
            v25 = *(a1 + 224);
            *(a1 + 112) = *(a1 + 192);
            *(a1 + 128) = v24;
            *(a1 + 80) = v22;
            *(a1 + 96) = v23;
            *(a1 + 144) = v25;
            *(a1 + 160) = v74;
            *(a1 + 208) = v116;
            *(a1 + 224) = v130;
            *(a1 + 176) = v88;
            *(a1 + 192) = v102;
            {
              v103 = *(a1 + 32);
              v117 = *(a1 + 48);
              v26 = *(a1 + 80);
              v131 = *(a1 + 64);
              v75 = *a1;
              v89 = *(a1 + 16);
              v27 = *(a1 + 96);
              v28 = *(a1 + 128);
              v29 = *(a1 + 144);
              *(a1 + 32) = *(a1 + 112);
              *(a1 + 48) = v28;
              *a1 = v26;
              *(a1 + 16) = v27;
              *(a1 + 64) = v29;
              *(a1 + 80) = v75;
              *(a1 + 128) = v117;
              *(a1 + 144) = v131;
              *(a1 + 96) = v89;
              *(a1 + 112) = v103;
            }
          }
        }
      }

      return 1;
  }

LABEL_17:
  v37 = (a1 + 80);
  v39 = (a1 + 160);
  if (v38)
  {
    if (v40)
    {
      v105 = *(a1 + 32);
      v119 = *(a1 + 48);
      v133 = *(a1 + 64);
      v77 = *a1;
      v91 = *(a1 + 16);
      v41 = *(a1 + 208);
      *(a1 + 32) = *(a1 + 192);
      *(a1 + 48) = v41;
      *(a1 + 64) = *(a1 + 224);
      v42 = *(a1 + 176);
      *a1 = *v39;
      *(a1 + 16) = v42;
    }

    else
    {
      v111 = *(a1 + 32);
      v125 = *(a1 + 48);
      v139 = *(a1 + 64);
      v83 = *a1;
      v97 = *(a1 + 16);
      v57 = *(a1 + 128);
      *(a1 + 32) = *(a1 + 112);
      *(a1 + 48) = v57;
      *(a1 + 64) = *(a1 + 144);
      v58 = *(a1 + 96);
      *a1 = *v37;
      *(a1 + 16) = v58;
      *(a1 + 128) = v125;
      *(a1 + 144) = v139;
      *(a1 + 96) = v97;
      *(a1 + 112) = v111;
      *v37 = v83;
      {
        goto LABEL_33;
      }

      v105 = *(a1 + 112);
      v119 = *(a1 + 128);
      v133 = *(a1 + 144);
      v77 = *v37;
      v91 = *(a1 + 96);
      v59 = *(a1 + 208);
      *(a1 + 112) = *(a1 + 192);
      *(a1 + 128) = v59;
      *(a1 + 144) = *(a1 + 224);
      v60 = *(a1 + 176);
      *v37 = *v39;
      *(a1 + 96) = v60;
    }

    *(a1 + 208) = v119;
    *(a1 + 224) = v133;
    *(a1 + 176) = v91;
    *(a1 + 192) = v105;
    *v39 = v77;
  }

  else if (v40)
  {
    v108 = *(a1 + 112);
    v122 = *(a1 + 128);
    v136 = *(a1 + 144);
    v80 = *v37;
    v94 = *(a1 + 96);
    v48 = *(a1 + 208);
    *(a1 + 112) = *(a1 + 192);
    *(a1 + 128) = v48;
    *(a1 + 144) = *(a1 + 224);
    v49 = *(a1 + 176);
    *v37 = *v39;
    *(a1 + 96) = v49;
    *(a1 + 208) = v122;
    *(a1 + 224) = v136;
    *(a1 + 176) = v94;
    *(a1 + 192) = v108;
    *v39 = v80;
    {
      v109 = *(a1 + 32);
      v123 = *(a1 + 48);
      v137 = *(a1 + 64);
      v81 = *a1;
      v95 = *(a1 + 16);
      v50 = *(a1 + 128);
      *(a1 + 32) = *(a1 + 112);
      *(a1 + 48) = v50;
      *(a1 + 64) = *(a1 + 144);
      v51 = *(a1 + 96);
      *a1 = *v37;
      *(a1 + 16) = v51;
      *(a1 + 128) = v123;
      *(a1 + 144) = v137;
      *(a1 + 96) = v95;
      *(a1 + 112) = v109;
      *v37 = v81;
    }
  }

LABEL_33:
  v61 = a1 + 240;
  if (a1 + 240 == a2)
  {
    return 1;
  }

  v62 = 0;
  v63 = 0;
  while (1)
  {
    {
      v64 = *v61;
      v65 = *(v61 + 4);
      v112 = *(v61 + 40);
      v126 = *(v61 + 56);
      v140 = *(v61 + 72);
      v66 = v62;
      v84 = *(v61 + 8);
      v98 = *(v61 + 24);
      while (1)
      {
        v67 = a1 + v66;
        v68 = *(a1 + v66 + 208);
        *(v67 + 272) = *(a1 + v66 + 192);
        *(v67 + 288) = v68;
        *(v67 + 304) = *(a1 + v66 + 224);
        v69 = *(a1 + v66 + 176);
        *(v67 + 240) = *(a1 + v66 + 160);
        *(v67 + 256) = v69;
        if (v66 == -160)
        {
          break;
        }

        v66 -= 80;
        {
          v70 = a1 + v66 + 240;
          goto LABEL_41;
        }
      }

      v70 = a1;
LABEL_41:
      *v70 = v64;
      *(v70 + 4) = v65;
      *(v70 + 24) = v98;
      *(v70 + 40) = v112;
      *(v70 + 56) = v126;
      *(v70 + 72) = v140;
      ++v63;
      *(v70 + 8) = v84;
      if (v63 == 8)
      {
        return v61 + 80 == a2;
      }
    }

    v39 = v61;
    v62 += 80;
    v61 += 80;
    if (v61 == a2)
    {
      return 1;
    }
  }
}

void *re::DynamicOverflowArray<unsigned long,256ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<unsigned long,256ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 256;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 0x100 || (v7 & 1) == 0))
    {
      if (a2 < 0x101)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

__n128 std::__function::__func<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_0,std::allocator<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CBD7B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_0,std::allocator<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  re::makeMeshPayloadWithMeshAsset((v1 + 16), *(a1 + 16), *(a1 + 24), &v5);
  v2 = (v1 + 344);
  if ((v1 + 344) != &v5)
  {
    v3 = v5;
    v5 = 0;
    v4 = *v2;
    *v2 = v3;
  }
}

uint64_t std::__function::__func<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_0,std::allocator<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_1,std::allocator<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CBD830;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_1,std::allocator<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  re::makeMeshCollectionWithMeshPayload((v1 + 344), (v1 + 352), v3);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v1 + 304, v3);
  return re::DynamicArray<re::MeshModel>::deinit(v3);
}

uint64_t std::__function::__func<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_1,std::allocator<re::MeshAsset::createRuntimeData(re::MeshManager *,re::mtl::Device const&,re::MeshPayloadStorageMode)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::HashSetBase<re::DataArrayHandle<re::MeshModel>,re::DataArrayHandle<re::MeshModel>,re::internal::ValueAsKey<re::DataArrayHandle<re::MeshModel>>,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::DataArrayHandle<re::MeshModel>,re::DataArrayHandle<re::MeshModel>,re::internal::ValueAsKey<re::DataArrayHandle<re::MeshModel>>,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(v22, v4, a2);
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
                re::HashSetBase<re::DataArrayHandle<re::MeshModel>,re::DataArrayHandle<re::MeshModel>,re::internal::ValueAsKey<re::DataArrayHandle<re::MeshModel>>,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(a1, (2 * v11));
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

void re::FixedArray<re::MeshPart const*>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t re::FixedArray<re::MeshRangeGroup>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 96 * a3, 16);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = xmmword_1E3047670;
      *(result + 32) = xmmword_1E3047680;
      *(result + 48) = xmmword_1E30476A0;
      *(result + 64) = xmmword_1E30474D0;
      *(result + 80) = 0;
      *(result + 88) = 0;
      result += 96;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = xmmword_1E3047670;
  *(result + 32) = xmmword_1E3047680;
  *(result + 48) = xmmword_1E30476A0;
  *(result + 64) = xmmword_1E30474D0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

uint64_t re::FixedArray<re::AABB>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 32 * a3, 16);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    v7.i64[0] = 0x7F0000007FLL;
    v7.i64[1] = 0x7F0000007FLL;
    v8 = vnegq_f32(v7);
    do
    {
      *result = v8;
      *(result + 16) = v7;
      result += 32;
      --v6;
    }

    while (v6);
  }

  v9.i64[0] = 0x7F0000007FLL;
  v9.i64[1] = 0x7F0000007FLL;
  *result = vnegq_f32(v9);
  *(result + 16) = v9;
  return result;
}

void re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_263, 4 * v10);
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

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 40 * v6;
      v11 = *(v10 + 8);
      result = v10 + 8;
      if (v11 == *a2 && *(result + 2) == HIWORD(*a2))
      {
        result = (*(result + 4) ^ a2[1]);
        if ((result & 0xFFFFFF) == 0)
        {
          break;
        }
      }

      v6 = *(v8 + 40 * v6) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::AssetHandle::loadedAsset<re::MeshAsset>(re::MeshAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::MeshAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::MeshAsset::assetType(void)::type, 1);
}

uint64_t re::DynamicArray<re::AssetHandle>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::AssetHandle>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AssetHandle>::copy(a1, a2);
  }

  return a1;
}

re::AssetHandle *re::DynamicArray<re::AssetHandle>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::AssetHandle>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    result = a1[4];
    if (v13)
    {
      v14 = 24 * v13;
      do
      {
        v15 = re::AssetHandle::operator=(result, v12);
        v12 += 3;
        result = (v15 + 24);
        v14 -= 24;
      }

      while (v14);
      result = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v16 = 3 * v13;
      v17 = &v12[v16];
      result = (result + 8 * v16);
      v18 = 24 * v4 - 8 * v16;
      do
      {
        v19 = re::AssetHandle::AssetHandle(result, v17);
        v17 = (v17 + 24);
        result = (v19 + 24);
        v18 -= 24;
      }

      while (v18);
    }
  }

  else
  {
    result = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        v9 = re::AssetHandle::operator=(result, v7);
        v7 += 3;
        result = (v9 + 24);
        v8 -= 24;
      }

      while (v8);
      result = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      result = (result + 24 * v4);
      v10 = 24 * v5 - 24 * v4;
      do
      {
        re::AssetHandle::~AssetHandle(result);
        result = (v11 + 24);
        v10 -= 24;
      }

      while (v10);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(void *result, unint64_t a2)
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
          result = (*(*result + 32))(result, 8 * a2, 4);
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
        result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshAssetBuffer>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetBuffer>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetBuffer>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::FixedArray<re::VertexBufferFormat>::copy(void *result, uint64_t a2, const void *a3, uint64_t a4)
{
  if (__CFADD__(a2, a4))
  {
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 362, result[1], a2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 + a4) > result[1])
  {
LABEL_9:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (a4)
  {
    v4 = (result[2] + 16 * a2);

    return memmove(v4, a3, 16 * a4 - 3);
  }

  return result;
}

uint64_t std::__function::__func<re::MeshAssetLoader::serializableAsset(void *)::$_0,std::allocator<re::MeshAssetLoader::serializableAsset(void *)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_263, 4 * v10);
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

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2 && (v4 = a4 % *(a2 + 24), v6 = *(*(a2 + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(a2 + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 32 * v6;
      v12 = *(v10 + 8);
      v11 = v10 + 8;
      if (__PAIR64__(*(v11 + 2), v12) == __PAIR64__(WORD1(a3), a3) && ((*(v11 + 4) ^ HIDWORD(a3)) & 0xFFFFFF) == 0)
      {
        break;
      }

      v6 = *(v8 + 32 * v9) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_10;
      }
    }

    v5 = v9;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_10:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(v25, v9, v8);
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
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
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
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void *re::DynamicOverflowArray<unsigned int,128ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<unsigned int,128ul>::setCapacity(v4, a2);
    v8 = *(v4 + 4) + 2;
    goto LABEL_5;
  }

  v6 = *(result + 4);
  if (v6)
  {
    v7 = 128;
  }

  else
  {
    v7 = result[3];
  }

  if (v7 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 0x80 || (v6 & 1) == 0))
    {
      if (a2 >= 0x81)
      {
        if (a2 >> 62)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 4, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 4 * a2;
          v10 = (*(*v5 + 32))(*result, 4 * a2, 4);
          if (v10)
          {
            v12 = v10;
            if (v4[2])
            {
              v13 = v4 + 3;
            }

            else
            {
              v13 = v4[4];
            }

            result = memcpy(v10, v13, 4 * v4[1]);
            v17 = *(v4 + 4);
            if ((v17 & 1) == 0)
            {
              result = (*(**v4 + 40))(*v4, v4[4]);
              v17 = *(v4 + 4);
            }

            *(v4 + 4) = v17 & 0xFFFFFFFE;
            v4[3] = a2;
            v4[4] = v12;
            return result;
          }
        }

        re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v14 = result + 3;
      v15 = v4[4];
      if (v6)
      {
        v16 = v4 + 3;
      }

      else
      {
        v16 = v4[4];
      }

      memcpy(v14, v16, 4 * v9);
      result = (*(*v5 + 40))(v5, v15);
      v8 = *(v4 + 4) | 1;
LABEL_5:
      *(v4 + 4) = v8;
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 128;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 0x80 || (v7 & 1) == 0))
    {
      if (a2 < 0x81)
      {
        v14 = (a1 + 3);
        v15 = a1[4];
        if (v7)
        {
          v16 = (a1 + 3);
        }

        else
        {
          v16 = a1[4];
        }

        if (v9)
        {
          v17 = 536 * v9;
          do
          {
            re::DynamicOverflowArray<unsigned long long,64ul>::DynamicOverflowArray(v14, v16);
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v16);
            v16 += 536;
            v14 += 536;
            v17 -= 536;
          }

          while (v17);
          result = *a1;
        }

        result = (*(*result + 40))(result, v15);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x218uLL))
      {
        v2 = 536 * a2;
        result = (*(*result + 32))(result, 536 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = (a1 + 3);
          }

          else
          {
            v13 = a1[4];
          }

          v18 = a1[1];
          if (v18)
          {
            v19 = 536 * v18;
            v20 = result;
            do
            {
              re::DynamicOverflowArray<unsigned long long,64ul>::DynamicOverflowArray(v20, v13);
              result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v13);
              v13 += 536;
              v20 += 536;
              v19 -= 536;
            }

            while (v19);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 536, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<unsigned long long,64ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  if ((*(a2 + 16) & 1) == 0)
  {
    *(a1 + 16) = 3;
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = v6;
    *(a2 + 16) = *(a2 + 16) & 0xFFFFFFFE | *(a1 + 16) & 1;
    *(a1 + 16) &= ~1u;
    v7 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v7;
LABEL_18:
    v14 = 2;
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
    *a1 = *a2;
    goto LABEL_18;
  }

  *a1 = *a2;
  re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(a1, v8);
  if (*(a2 + 16))
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = v4;
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
  }

  if (v10)
  {
    memmove(v12, v9, 8 * v10);
    v11 = *(a1 + 16);
  }

  if ((v11 & 1) == 0)
  {
    v4 = *(a1 + 32);
  }

  if (*(a2 + 16))
  {
    v13 = a2 + 24;
  }

  else
  {
    v13 = *(a2 + 32);
  }

  memcpy(&v4[8 * *(a1 + 8)], (v13 + 8 * *(a1 + 8)), 8 * (v8 - *(a1 + 8)));
  *(a1 + 8) = v8;
  *(a2 + 8) = 0;
  v14 = 4;
LABEL_19:
  *(a2 + 16) = ((*(a2 + 16) & 0xFFFFFFFE) + v14) | *(a2 + 16) & 1;
  *(a1 + 16) += 2;
  return a1;
}

void *re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 64;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 0x40 || (v7 & 1) == 0))
    {
      if (a2 < 0x41)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::anonymous namespace::PartInstance,64ul>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 1) == 0)
    {
      result = (*(*result + 40))(result, *(a1 + 40));
      v3 = *(a1 + 16);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = (v3 | 1) + 2;
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::DynamicOverflowArray<re::anonymous namespace::PartInstance,64ul>,64ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v7 = *(a1 + 4) + 2;
    goto LABEL_5;
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    v6 = 64;
  }

  else
  {
    v6 = a1[4];
  }

  if (v6 != a2)
  {
    v8 = a1[1];
    if (v8 <= a2 && (a2 > 0x40 || (v5 & 1) == 0))
    {
      if (a2 >= 0x41)
      {
        v9 = (*(*result + 32))(result, 5152 * a2, 16);
        if (v9)
        {
          v11 = v9;
          if (a1[2])
          {
            v12 = (a1 + 4);
          }

          else
          {
            v12 = a1[5];
          }

          v15 = *(a1 + 4);
          if ((v15 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[5]);
            v15 = *(a1 + 4);
          }

          *(a1 + 4) = v15 & 0xFFFFFFFE;
          a1[4] = a2;
          a1[5] = v11;
        }

        else
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, 5152 * a2, *(*a1 + 8));
          result = _os_crash();
          __break(1u);
        }

        return result;
      }

      v13 = a1[5];
      if (v5)
      {
        v14 = (a1 + 4);
      }

      else
      {
        v14 = a1[5];
      }

      result = (*(**a1 + 40))(*a1, v13);
      v7 = *(a1 + 4) | 1;
LABEL_5:
      *(a1 + 4) = v7;
    }
  }

  return result;
}

uint64_t re::ObjectHelper::move<re::DynamicOverflowArray<re::anonymous namespace::PartInstance,64ul>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    for (i = 0; v5 + i != a2; i += 5152)
    {
      _X22 = a3 + i;
      _X23 = v5 + i;
      *_X22 = 0;
      *(_X22 + 8) = 0;
      *(_X22 + 16) = 1;
      *(a3 + i + 32) = 0;
      v9 = (a3 + i + 32);
      *(_X22 + 40) = 0;
      __asm
      {
        PRFM            #0, [X23,#0x2850]
        PRFM            #0, [X22,#0x2848]
      }

      if (*(v5 + i + 16))
      {
        v19 = *(_X23 + 8);
        if (v19)
        {
          v20 = v5 + i;
          *_X22 = *(v5 + i);
          if (*(_X23 + 16))
          {
            v21 = (v20 + 32);
          }

          else
          {
            v21 = *(v20 + 40);
          }

          v22 = *(_X22 + 16);
          v23 = (a3 + i + 32);
          if ((v22 & 1) == 0)
          {
            v23 = *(_X22 + 40);
          }

          v24 = *(_X22 + 8);
          if (v24)
          {
            memmove(v23, v21, 80 * v24);
            v22 = *(_X22 + 16);
          }

          if ((v22 & 1) == 0)
          {
            v9 = *(_X22 + 40);
          }

          if (*(_X23 + 16))
          {
            v25 = v20 + 32;
          }

          else
          {
            v25 = *(v20 + 40);
          }

          memcpy(&v9[10 * *(_X22 + 8)], (v25 + 80 * *(_X22 + 8)), 80 * (v19 - *(_X22 + 8)));
          *(_X22 + 8) = v19;
          *(_X23 + 8) = 0;
          v26 = 4;
          goto LABEL_21;
        }

        *_X22 = *_X23;
      }

      else
      {
        *(_X22 + 16) = 3;
        v16 = *(_X23 + 8);
        *_X22 = *_X23;
        *(_X22 + 8) = v16;
        *_X23 = 0;
        *(_X23 + 8) = 0;
        v17 = *(_X22 + 40);
        *(_X22 + 40) = *(_X23 + 40);
        *(_X23 + 40) = v17;
        *(_X23 + 16) = *(_X23 + 16) & 0xFFFFFFFE | *(_X22 + 16) & 1;
        *(_X22 + 16) &= ~1u;
        v18 = *v9;
        *v9 = *(_X23 + 32);
        *(_X23 + 32) = v18;
      }

      v26 = 2;
LABEL_21:
      *(_X23 + 16) = ((*(_X23 + 16) & 0xFFFFFFFE) + v26) | *(_X23 + 16) & 1;
      *(_X22 + 16) += 2;
    }
  }

  return result;
}

void *re::DynamicOverflowArray<re::anonymous namespace::PartInstance,64ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 64;
  }

  else
  {
    v8 = result[4];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 0x40 || (v7 & 1) == 0))
    {
      if (a2 < 0x41)
      {
        v14 = result + 4;
        v15 = v4[5];
        if (v7)
        {
          v16 = v4 + 4;
        }

        else
        {
          v16 = v4[5];
        }

        memcpy(v14, v16, 80 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x50uLL))
      {
        v2 = 80 * a2;
        v10 = (*(*v5 + 32))(*result, 80 * a2, 16);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 4;
          }

          else
          {
            v13 = v4[5];
          }

          result = memcpy(v10, v13, 80 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[5]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[4] = a2;
          v4[5] = v12;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 80, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshAssetInstance>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetInstance>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetInstance>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionDynamicArray<re::AssetHandle>::IntrospectionDynamicArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CADA48;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CBD930;
  return a1;
}

void *re::IntrospectionDynamicArray<re::AssetHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AssetHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AssetHandle>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AssetHandle>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AssetHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AssetHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AssetHandle>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AssetHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AssetHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AssetHandle>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::AssetHandle>::add(this, v10);
  re::AssetHandle::~AssetHandle(v10);
  v8 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::AssetHandle>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::AssetHandle>::resize(uint64_t a1, unint64_t a2)
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
      re::AssetHandle::~AssetHandle((*(a1 + 32) + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::AssetHandle>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AssetHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::AssetHandle>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::AssetHandle>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::AssetHandle>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  re::DynamicArray<re::AssetHandle>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(*(a3 + 16) + 80), v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = 24 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a4, 0);
        re::TypeInfo::construct(v13, v11, a4, 0);
        v11 += 24;
        v12 -= 24;
      }

      while (v12);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::DrawableQueueManager::~DrawableQueueManager(re::DrawableQueueManager *this)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 2);
  *(this + 1) = 0;

  v2 = *(this + 8);
  if (v2)
  {

    *(this + 8) = 0;
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 2);
}

void re::DrawableQueueManager::setActiveScene(re::DrawableQueueManager *this, re::ecs2::Scene *a2)
{
  if (!*(this + 10))
  {
    v2 = *(this + 8);
    *(this + 10) = a2;
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *(v2 + 32);
      }

      while (v2);
      if (!*(v3 + 24))
      {
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(a2 + 13) + 320), this + 8);
      }
    }
  }
}

void re::DrawableQueueManager::removeActiveScene(re::DrawableQueueManager *this, re::ecs2::Scene *a2)
{
  if (*(this + 10) == a2)
  {
    v3 = *(this + 8);
    if (v3)
    {
      re::ecs2::Entity::removeFromSceneOrParent(v3);
    }

    *(this + 10) = 0;
  }
}

void re::DrawableQueueManager::registerDrawableQueueBackedTexture(re::DrawableQueueManager *this, re::TextureAsset *a2)
{
  v5 = this;
  v6 = *(this + 10);
  v7 = a2 ^ (a2 >> 30);
  if (v6)
  {
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v7) ^ ((0xBF58476D1CE4E5B9 * v7) >> 27));
    v9 = *(*(this + 3) + 4 * ((v8 ^ (v8 >> 31)) % v6));
    if (v9 != 0x7FFFFFFF)
    {
      v32 = *(this + 4);
      if (*(v32 + 24 * v9 + 16) == a2)
      {
        return;
      }

      while (1)
      {
        LODWORD(v9) = *(v32 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v32 + 24 * v9 + 16) == a2)
        {
          return;
        }
      }
    }
  }

  v10 = *(a2 + 7);
  if (*(v10 + 295))
  {
    v11 = *(this + 10);
    if (v11)
    {
      v12 = *(v11 + 104);
      v13 = *(v12 + 344);
      if (v13)
      {
        v14 = *(v12 + 360);
        v15 = 8 * v13;
        while (1)
        {
          v16 = *v14;
          *&v58.var0 = 0;
          v58.var1 = &str_67;
          this = re::ecs2::Entity::findInHierarchyByName(v16, &v58);
          v17 = this;
          if (*&v58.var0)
          {
            if (*&v58.var0)
            {
            }
          }

          *&v58.var0 = 0;
          v58.var1 = &str_67;
          if (v17)
          {
            break;
          }

          ++v14;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_21;
          }
        }

        v52 = re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v52)
        {
          v53 = (v52 + 8);
        }

        else
        {
          v53 = 0;
        }

        objc_initWeak(&location, v53);
        v54 = *(a2 + 7);
        to = 0;
        objc_moveWeak(&to, &location);
        v55 = (v54 + 48);
        if (&to != v55)
        {
          objc_destroyWeak(v55);
          *v55 = 0;
          objc_moveWeak(v55, &to);
        }

        objc_destroyWeak(&to);
        to = 0;
        objc_destroyWeak(&location);
      }
    }

    goto LABEL_21;
  }

  if (!*(v10 + 400))
  {
    v37 = (this + 64);
    if (!*(this + 8))
    {
      v38 = re::ecs2::EntityFactory::instance(this);
      re::ecs2::EntityFactory::make(v38, 4uLL, &location);
      v39 = *v37;
      v40 = location;
      *v37 = location;
      if (v39)
      {

        v40 = *v37;
      }

      *(v40 + 76) |= 0x1400u;
      location = 0x2676308E13D52C60;
      v63 = "DrawableQueueSyncRoot";
      v41 = re::StringID::operator=(v40 + 36, &location);
      if (location)
      {
      }

      this = re::ecs2::EntityComponentCollection::add((*(v5 + 8) + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v42 = *(v5 + 10);
      if (v42)
      {
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(v42 + 104) + 320), v5 + 8);
      }
    }

    v44 = re::ecs2::EntityFactory::instance(v43);
    re::ecs2::EntityFactory::make(v44, 4uLL, &v61);
    v2 = v61;
    *(v61 + 76) |= 0x1400u;
    v60[0] = 0x214F808969F915E6;
    v60[1] = "DrawableQueue";
    re::StringID::operator=(v2 + 36, v60);
    re::ecs2::Entity::setParentInternal(v2, *v37, 0xFFFFFFFFFFFFFFFFLL);
    v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 56, 0);
    *v3 = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    *(v3 + 6) = 0;
    ArcSharedObject::ArcSharedObject(v3, 0);
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *v45 = &unk_1F5CBDA20;
    *(v45 + 28) = 0;
    *(v45 + 44) = 0;
    *(v45 + 36) = 0;
    *(v45 + 52) = 0;
    v60[0] = v45;
    v46 = (v45 + 8);
    re::ecs2::EntityComponentCollection::add((v2 + 6), v60, 1);
    if (v60[0])
    {

      v60[0] = 0;
    }

    v47 = re::ecs2::EntityComponentCollection::add((v2 + 6), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v48 = *(a2 + 7);
    *(v48 + 400) = v3;
    v49 = *(v48 + 408);
    if (v49 != v47)
    {
      v50 = v47;
      if (v47)
      {
        v51 = (v47 + 8);
        v49 = *(v48 + 408);
      }

      if (v49)
      {

        v2 = v61;
        *(v48 + 408) = v50;

        if (!v2)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      *(v48 + 408) = v50;
    }

LABEL_62:
LABEL_63:
    if (location && (v63 & 1) != 0)
    {
      (*(*location + 40))();
    }
  }

  v18 = *(v5 + 12);
  if (!v18)
  {
    v19 = *(*(v5 + 1) + 208);
    if (v19)
    {
      v2 = v19;
      v3 = [objc_msgSend(MEMORY[0x1E6974018] alloc)];
      [v3 setCommitSynchronously_];
      v21 = [v2 newCommandQueueWithDescriptor_];

      [v21 setBackgroundGPUPriority:2];
      v22 = *(v5 + 12);
      *(v5 + 12) = v21;

      if (atomic_load_explicit(&qword_1EE194090, memory_order_acquire))
      {
LABEL_17:
        v23 = _MergedGlobals_62;
        [*(v5 + 12) setLabel:v23];

        if (v3)
        {
        }

        v18 = *(v5 + 12);
        goto LABEL_20;
      }
    }

    else
    {
      re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) A device is required to create a command queue", "false", "registerDrawableQueueBackedTexture", 81);
      _os_crash();
      __break(1u);
    }

    if (__cxa_guard_acquire(&qword_1EE194090))
    {
      v56 = re::ns::String::String(&_MergedGlobals_62, "DrawableQueueMipMapGenQueue");
      __cxa_guard_release(v56 + 1);
    }

    goto LABEL_17;
  }

LABEL_20:
  v24 = *(a2 + 7);
  v25 = v18;
  v59 = v25;
  re::ObjCObject::operator=((v24 + 56), &v59);

LABEL_21:
  v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v7) ^ ((0xBF58476D1CE4E5B9 * v7) >> 27));
  v27 = v26 ^ (v26 >> 31);
  v28 = *(v5 + 10);
  if (v28)
  {
    v29 = v27 % v28;
    v30 = *(*(v5 + 3) + 4 * (v27 % v28));
    if (v30 != 0x7FFFFFFF)
    {
      v31 = *(v5 + 4);
      if (*(v31 + 24 * v30 + 16) == a2)
      {
        return;
      }

      while (1)
      {
        LODWORD(v30) = *(v31 + 24 * v30 + 8) & 0x7FFFFFFF;
        if (v30 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v31 + 24 * v30 + 16) == a2)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v29) = 0;
  }

  v33 = *(v5 + 13);
  if (v33 == 0x7FFFFFFF)
  {
    v33 = *(v5 + 12);
    v34 = v33;
    if (v33 == v28)
    {
      re::HashSetBase<re::TextureAsset *,re::TextureAsset *,re::internal::ValueAsKey<re::TextureAsset *>,re::Hash<re::TextureAsset *>,re::EqualTo<re::TextureAsset *>,true,false>::setCapacity(v5 + 16, 2 * *(v5 + 11));
      LODWORD(v29) = v27 % *(v5 + 10);
      v34 = *(v5 + 12);
    }

    *(v5 + 12) = v34 + 1;
    v35 = *(v5 + 4);
    v36 = *(v35 + 24 * v33 + 8);
  }

  else
  {
    v35 = *(v5 + 4);
    v36 = *(v35 + 24 * v33 + 8);
    *(v5 + 13) = v36 & 0x7FFFFFFF;
  }

  *(v35 + 24 * v33 + 8) = v36 | 0x80000000;
  *(*(v5 + 4) + 24 * v33 + 8) = *(*(v5 + 4) + 24 * v33 + 8) & 0x80000000 | *(*(v5 + 3) + 4 * v29);
  *(*(v5 + 4) + 24 * v33) = v27;
  *(*(v5 + 4) + 24 * v33 + 16) = a2;
  *(*(v5 + 3) + 4 * v29) = v33;
  ++*(v5 + 11);
  ++*(v5 + 14);
}

void re::DrawableQueueManager::unregisterDrawableQueueBackedTexture(re::DrawableQueueManager *this, unint64_t a2)
{
  v4 = *(a2 + 56);
  if ((*(v4 + 295) & 1) == 0)
  {
    v5 = *(v4 + 400);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        re::ecs2::Entity::removeFromSceneOrParent(v6);
        v4 = *(a2 + 56);
      }

      *(v4 + 400) = 0;
    }
  }

  v7 = *(this + 10);
  if (v7)
  {
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v9 = (v8 ^ (v8 >> 31)) % v7;
    v10 = *(this + 3);
    v11 = *(v10 + 4 * v9);
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(this + 4);
      if (*(v12 + 24 * v11 + 16) == a2)
      {
        *(v10 + 4 * v9) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
LABEL_13:
        v14 = *(this + 4);
        v15 = v14 + 24 * v11;
        v18 = *(v15 + 8);
        v17 = (v15 + 8);
        v16 = v18;
        if (v18 < 0)
        {
          *v17 = v16 & 0x7FFFFFFF;
          v14 = *(this + 4);
          v16 = *(v14 + 24 * v11 + 8);
        }

        v19 = *(this + 14);
        *(v14 + 24 * v11 + 8) = *(this + 13) | v16 & 0x80000000;
        --*(this + 11);
        *(this + 13) = v11;
        *(this + 14) = v19 + 1;
      }

      else
      {
        while (1)
        {
          v13 = v11;
          LODWORD(v11) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
          if (v11 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v12 + 24 * v11 + 16) == a2)
          {
            *(v12 + 24 * v13 + 8) = *(v12 + 24 * v13 + 8) & 0x80000000 | *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
            goto LABEL_13;
          }
        }
      }
    }
  }
}

void re::DrawableQueueManager::afterFrameUpdate(re::DrawableQueueManager *this)
{
  if (*(this + 11))
  {
    v2 = *(this + 12);
    if (v2)
    {
      v3 = 0;
      v4 = (*(this + 4) + 8);
      while (1)
      {
        v5 = *v4;
        v4 += 6;
        if (v5 < 0)
        {
          break;
        }

        if (v2 == ++v3)
        {
          LODWORD(v3) = *(this + 12);
          break;
        }
      }
    }

    else
    {
      LODWORD(v3) = 0;
    }

    if (v3 == v2)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = *(*(this + 4) + 24 * v3 + 16);
        v8 = *(*(this + 1) + 112);
        if (v8)
        {
          v9 = re::RenderFrameBox::get((v8 + 328), 0xFFFFFFFFFFFFFFFuLL);
        }

        else
        {
          v9 = 0;
        }

        v10 = *(this + 11);
        if (v10)
        {
          if (v10[22] <= WORD1(v10[49]))
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v11 = *(v7 + 56);
          if (re::DrawableQueue::shouldPerformUpdate(v11, v10[49], *(*(v10[24] + 16 * WORD1(v10[49])) + 240 * v10[49] + 8) == 2))
          {
            v12 = re::DrawableQueue::latestPresentableDrawable(v11, v9);
            if (v12)
            {
              re::TextureAsset::setMetalTexture_fromDrawableQueue(v7, *(this + 1), (v12 + 16), *(*(v7 + 56) + 296));
            }

            v13 = *(v7 + 56);
            if (v6)
            {
              v6 = 1;
            }

            else
            {
              v6 = *(v13 + 292);
            }

            re::DrawableQueue::afterFrameUpdate(v13);
          }
        }

        v14 = *(this + 12);
        if (v14 <= v3 + 1)
        {
          v14 = v3 + 1;
        }

        while (v14 - 1 != v3)
        {
          LODWORD(v3) = v3 + 1;
          if ((*(*(this + 4) + 24 * v3 + 8) & 0x80000000) != 0)
          {
            goto LABEL_30;
          }
        }

        LODWORD(v3) = v14;
LABEL_30:
        ;
      }

      while (v3 != v2);
    }

    *(this + 72) = v6 & 1;
  }

  else
  {
    *(this + 72) = 0;
  }
}

void re::HashSetBase<re::TextureAsset *,re::TextureAsset *,re::internal::ValueAsKey<re::TextureAsset *>,re::Hash<re::TextureAsset *>,re::EqualTo<re::TextureAsset *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v23, 0, 36);
      *&v23[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v23, v4, a2);
      v5 = *a1;
      *a1 = *v23;
      v6 = *(a1 + 16);
      v7 = *&v23[8];
      *v23 = v5;
      *&v23[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v23[24];
      *&v23[24] = *(a1 + 24);
      v8 = *&v23[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = DWORD1(v9);
        v13 = v7;
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 1) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 24);
            v17 = v15 % v16;
            v18 = *(a1 + 36);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 32);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<re::TextureAsset *,re::TextureAsset *,re::internal::ValueAsKey<re::TextureAsset *>,re::Hash<re::TextureAsset *>,re::EqualTo<re::TextureAsset *>,true,false>::setCapacity(a1, (2 * v12));
                v17 = v15 % *(a1 + 24);
                v19 = *(a1 + 32);
                v13 = *(a1 + 8);
              }

              *(a1 + 32) = v19 + 1;
              v20 = *(a1 + 16);
              v21 = *(v20 + 24 * v18 + 8);
            }

            else
            {
              v20 = *(a1 + 16);
              v21 = *(v20 + 24 * v18 + 8);
              *(a1 + 36) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 24 * v18 + 8) = v21 | 0x80000000;
            *(*(a1 + 16) + 24 * v18 + 8) = *(*(a1 + 16) + 24 * v18 + 8) & 0x80000000 | *(v13 + 4 * v17);
            *(*(a1 + 16) + 24 * v18) = v15;
            *(*(a1 + 16) + 24 * v18 + 16) = *v14;
            v13 = *(a1 + 8);
            *(v13 + 4 * v17) = v18;
            v12 = *(a1 + 28) + 1;
            *(a1 + 28) = v12;
          }

          ++v11;
          v14 += 3;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v23);
    }
  }

  else
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 3;
    }
  }
}

void re::ecs2::DrawableQueueSyncComponent::~DrawableQueueSyncComponent(re::ecs2::DrawableQueueSyncComponent *this)
{
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_FontFile(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_63, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_63))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194138, "FontFile");
    __cxa_guard_release(&_MergedGlobals_63);
  }

  return &unk_1EE194138;
}

void re::initInfo_FontFile(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x3B0333E3516;
  v19[1] = "FontFile";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1940A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1940A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "fontName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1940F8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_AssetHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "sdfTexture";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE194100 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_AssetHandle(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "layout";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE194108 = v17;
      __cxa_guard_release(&qword_1EE1940A0);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1940F8;
  *(this + 9) = re::internal::defaultConstruct<re::FontFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FontFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::FontFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::FontFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::FontFile>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 32) = 0u;
  return result;
}

double re::internal::defaultDestruct<re::FontFile>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 56));
  re::AssetHandle::~AssetHandle((a3 + 32));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::FontFile>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  result = 0.0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 2) = 0u;
  return result;
}

double re::internal::defaultDestructV2<re::FontFile>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 56));
  re::AssetHandle::~AssetHandle((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_FontAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1940B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1940B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1941C8, "FontAsset");
    __cxa_guard_release(&qword_1EE1940B0);
  }

  return &unk_1EE1941C8;
}

void re::initInfo_FontAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x72563404CF82;
  v12[1] = "FontAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1940C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1940C0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1940A8;
      if (!qword_1EE1940A8)
      {
        v8 = re::allocInfo_FontFile(v6);
        qword_1EE1940A8 = v8;
        re::initInfo_FontFile(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "fontFile";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1940B8 = v10;
      __cxa_guard_release(&qword_1EE1940C0);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1940B8;
  *(this + 9) = re::internal::defaultConstruct<re::FontAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FontAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::FontAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::FontAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::FontAsset>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 32) = 0u;
  return result;
}

double re::internal::defaultDestruct<re::FontAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 56));
  re::AssetHandle::~AssetHandle((a3 + 32));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::FontAsset>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  result = 0.0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 2) = 0u;
  return result;
}

double re::internal::defaultDestructV2<re::FontAsset>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 56));
  re::AssetHandle::~AssetHandle((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_FontLayout(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1940C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1940C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194258, "FontLayout");
    __cxa_guard_release(&qword_1EE1940C8);
  }

  return &unk_1EE194258;
}

void re::initInfo_FontLayout(re *this, re::IntrospectionBase *a2)
{
  v24[0] = 0xDD870702A30F2;
  v24[1] = "FontLayout";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1940D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1940D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "lineHeight";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE194110 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "glyphBounds";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE194118 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "glyphOffsetMatrix";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE194120 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(1);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "glyphTexcoordBounds";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5800000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE194128 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::introspect_float(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "belowBaselineHeight";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x400000005;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE194130 = v22;
      __cxa_guard_release(&qword_1EE1940D0);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE194110;
  *(this + 9) = re::internal::defaultConstruct<re::FontLayout>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FontLayout>;
  *(this + 13) = re::internal::defaultConstructV2<re::FontLayout>;
  *(this + 14) = re::internal::defaultDestructV2<re::FontLayout>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v23 = v25;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(int a1)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::info) = &unk_1F5CBDD98;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_Vector4F(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::info, 0);
    qword_1EE1869E0 = 0x2800000003;
    dword_1EE1869E8 = v7;
    word_1EE1869EC = 0;
    *&xmmword_1EE1869F0 = 0;
    *(&xmmword_1EE1869F0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186A00 = v6;
    unk_1EE186A08 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::info = &unk_1F5CBDD98;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::info, &v14);
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
    xmmword_1EE1869F0 = v13;
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

  return &re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::FontLayout>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 120) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::FontLayout>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 88);
  re::DynamicArray<unsigned long>::deinit(a3 + 48);

  return re::DynamicArray<unsigned long>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::FontLayout>(uint64_t a1)
{
  *(a1 + 120) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::FontLayout>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 88);
  re::DynamicArray<unsigned long>::deinit(a1 + 48);

  return re::DynamicArray<unsigned long>::deinit(a1 + 8);
}

void *re::allocInfo_FontLayoutAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1940E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1940E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1942E8, "FontLayoutAsset");
    __cxa_guard_release(&qword_1EE1940E0);
  }

  return &unk_1EE1942E8;
}

void re::initInfo_FontLayoutAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x56B75454A73C8BEELL;
  v12[1] = "FontLayoutAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1940F0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1940F0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1940D8;
      if (!qword_1EE1940D8)
      {
        v8 = re::allocInfo_FontLayout(v6);
        qword_1EE1940D8 = v8;
        re::initInfo_FontLayout(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "fontLayout";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1940E8 = v10;
      __cxa_guard_release(&qword_1EE1940F0);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1940E8;
  *(this + 9) = re::internal::defaultConstruct<re::FontLayoutAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FontLayoutAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::FontLayoutAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::FontLayoutAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::FontLayoutAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 120) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::FontLayoutAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 88);
  re::DynamicArray<unsigned long>::deinit(a3 + 48);

  return re::DynamicArray<unsigned long>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::FontLayoutAsset>(uint64_t a1)
{
  *(a1 + 120) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::FontLayoutAsset>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 88);
  re::DynamicArray<unsigned long>::deinit(a1 + 48);

  return re::DynamicArray<unsigned long>::deinit(a1 + 8);
}

void re::makeFontID(re *this@<X0>, re::StringID *a2@<X8>)
{
  v4 = re::AssetHandle::assetInfo(this);
  if (*(v4 + 13))
  {
    v5 = *(v4 + 14);
  }

  else
  {
    v5 = v4 + 105;
  }

  *a2 = 0;
  *(a2 + 1) = &str_67;
}

uint64_t *re::FontAsset::assetType(re::FontAsset *this)
{
  {
    re::FontAsset::assetType(void)::type = "Font";
    qword_1EE1C5758 = 0;
    re::AssetType::generateCompiledExtension(&re::FontAsset::assetType(void)::type);
  }

  return &re::FontAsset::assetType(void)::type;
}

uint64_t re::FontAssetLoader::introspectionType(re::FontAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::FontAsset>(BOOL)::info = re::internal::getOrCreateInfo("FontAsset", re::allocInfo_FontAsset, re::initInfo_FontAsset, &re::internal::introspectionInfoStorage<re::FontAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 260);
}

uint64_t re::FontAssetLoader::registerAsset(re::FontAssetLoader *this, char *a2, const re::ExistingAssetInformation *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = re::AssetLoader::registerAsset(this, a2, a3);
  if (v6 || !re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 1)) || !*(re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 1)) + 26))
  {
    return v6;
  }

  v8 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((a2 + 32));
  re::FontLayoutAsset::assetType(v8);
  v9 = re::AssetHandle::assetWithType((a2 + 56), &re::FontLayoutAsset::assetType(void)::type, 0);
  if (!v9)
  {
    v10 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = re::AssetHandle::assetInfo((a2 + 56));
      if (v15[17])
      {
        v16 = v15[18];
      }

      else
      {
        v16 = v15 + 137;
      }

      v18.var0 = 136315138;
      *(&v18.var0 + 1) = v16;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v18, 0xCu);
    }
  }

  v11 = re::ServiceLocator::service<re::RenderManager>(*(this + 1));
  v12 = *(v11 + 8);
  if (*(a3 + 13))
  {
    v13 = *(a3 + 14);
  }

  else
  {
    v13 = a3 + 105;
  }

  *&v18.var0 = 0;
  v18.var1 = &str_67;
  if (!*(v8 + 120))
  {
    re::TextManager::addFont(v12, &v18, (v8 + 112), v9);
    if (*&v18.var0)
    {
      if (*&v18.var0)
      {
      }
    }

    return v6;
  }

  v17 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v17);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::TextureAsset>(re::TextureAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::TextureAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

void re::FontAssetLoader::unregisterAsset(re::FontAssetLoader *this, void *a2, const re::ExistingAssetInformation *a3)
{
  if (re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 1)) && *(re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 1)) + 26))
  {
    v5 = re::ServiceLocator::service<re::RenderManager>(*(this + 1));
    v6 = *(v5 + 8);
    if (*(a3 + 13))
    {
      v7 = *(a3 + 14);
    }

    else
    {
      v7 = a3 + 105;
    }

    v9 = 0;
    v10 = &str_67;
    v8 = re::TextManager::removeFont(v6, &v9);
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

re *re::internal::destroyPersistent<re::FontAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::AssetHandle::~AssetHandle((a3 + 56));
    re::AssetHandle::~AssetHandle((a3 + 32));
    v5.n128_f64[0] = re::DynamicString::deinit(a3);
    v6 = *(*v4 + 40);

    return v6(v4, a3, v5);
  }

  return result;
}

re::AssetHandle *re::FontAssetLoader::findDependencies@<X0>(re::FontAssetLoader *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  re::DynamicArray<re::AssetHandle>::setCapacity(a3, 2uLL);
  ++*(a3 + 24);
  re::DynamicArray<re::AssetHandle>::add(a3, (a2 + 32));

  return re::DynamicArray<re::AssetHandle>::add(a3, (a2 + 56));
}

uint64_t *re::FontLayoutAsset::assetType(re::FontLayoutAsset *this)
{
  {
    re::FontLayoutAsset::assetType(void)::type = "FontLayout";
    qword_1EE1C7060 = 0;
    re::AssetType::generateCompiledExtension(&re::FontLayoutAsset::assetType(void)::type);
  }

  return &re::FontLayoutAsset::assetType(void)::type;
}

uint64_t re::FontLayoutAssetLoader::introspectionType(re::FontLayoutAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::FontLayoutAsset>(BOOL)::info = re::internal::getOrCreateInfo("FontLayoutAsset", re::allocInfo_FontLayoutAsset, re::initInfo_FontLayoutAsset, &re::internal::introspectionInfoStorage<re::FontLayoutAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 262);
}

re *re::internal::destroyPersistent<re::FontLayoutAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit(a3 + 88);
    re::DynamicArray<unsigned long>::deinit(a3 + 48);
    re::DynamicArray<unsigned long>::deinit(a3 + 8);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Vector4<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Vector4<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Vector4<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Vector4<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Vector4<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Vector4<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Vector4<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Vector4<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Vector4<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0uLL;
  re::DynamicArray<re::Vector4<float>>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::Vector4<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::Vector4<float>>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<re::Vector4<float>>::setCapacity(a1, a2);
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

void *re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Vector4<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Vector4<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Vector4<float>>::resize(a1, a4);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::StateParameterBlackboardAsset::assetType(re::StateParameterBlackboardAsset *this)
{
  {
    re::StateParameterBlackboardAsset::assetType(void)::type = "StateParameterBlackboard";
    qword_1EE1C6550 = 0;
    re::AssetType::generateCompiledExtension(&re::StateParameterBlackboardAsset::assetType(void)::type);
  }

  return &re::StateParameterBlackboardAsset::assetType(void)::type;
}

_anonymous_namespace_ *re::StateParameterBlackboardAsset::initWithInitData(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  if (a2)
  {
    v10 = *(a2 + 8);
    result = re::FixedArray<re::StateParameterData>::operator=(v8 + 1, a2);
  }

  if (a3)
  {
    v11 = *(a3 + 8);
    result = re::FixedArray<re::StateParameterData>::operator=(v8 + 4, a3);
  }

  if (a4)
  {
    v12 = *(a4 + 8);
    result = re::FixedArray<re::StateParameterData>::operator=(v8 + 7, a4);
  }

  if (a5)
  {
    v13 = *(a5 + 8);

    return re::FixedArray<re::StateParameterData>::operator=(v8 + 10, a5);
  }

  return result;
}

void *re::FixedArray<re::StateParameterData>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::StateParameterData>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::StateParameterData>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::StateParameterBlackboardAsset::deinit(re::StateParameterBlackboardAsset *this)
{
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(this + 1);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(this + 4);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(this + 7);

  return re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(this + 10);
}

re *re::StateParameterBlackboardAssetLoader::unloadAsset(re *this, void (***a2)(void))
{
  if (a2)
  {
    v3 = re::globalAllocators(this)[2];
    (**a2)(a2);
    v4 = *(*v3 + 40);

    return v4(v3, a2);
  }

  return this;
}

uint64_t re::StateParameterBlackboardAssetLoader::introspectionType(re::StateParameterBlackboardAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1943B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1943B8))
  {
    qword_1EE1943B0 = re::internal::getOrCreateInfo("StateParameterBlackboardAsset", re::allocInfo_StateParameterBlackboardAsset, re::initInfo_StateParameterBlackboardAsset, &unk_1EE1943A8, 0);
    __cxa_guard_release(&qword_1EE1943B8);
  }

  return qword_1EE1943B0;
}

void *re::allocInfo_StateParameterData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194380))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194438, "StateParameterData");
    __cxa_guard_release(&qword_1EE194380);
  }

  return &unk_1EE194438;
}

void re::initInfo_StateParameterData(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xA476DA435AE1EC04;
  v15[1] = "StateParameterData";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE194388, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194388);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "parameterName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1943C8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "bindPath";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1943D0 = v13;
      __cxa_guard_release(&qword_1EE194388);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1943C8;
  *(this + 9) = re::internal::defaultConstruct<re::StateParameterData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StateParameterData>;
  *(this + 13) = re::internal::defaultConstructV2<re::StateParameterData>;
  *(this + 14) = re::internal::defaultDestructV2<re::StateParameterData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::internal::defaultConstruct<re::StateParameterData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
}

void re::internal::defaultDestruct<re::StateParameterData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::StateParameterData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::StateParameterData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_StateParameterBlackboardAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194398))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1944C8, "StateParameterBlackboardAsset");
    __cxa_guard_release(&qword_1EE194398);
  }

  return &unk_1EE1944C8;
}

void re::initInfo_StateParameterBlackboardAsset(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x454837C49FFCB722;
  v15[1] = "StateParameterBlackboardAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1943A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1943A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::FixedArray<re::StateParameterData>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "stateParameterIntData";
      *(v7 + 16) = &qword_1EE1943F8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0x800000001;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1943D8 = v7;
      v8 = re::introspectionAllocator(v7);
      re::IntrospectionInfo<re::FixedArray<re::StateParameterData>>::get(v8);
      v9 = (*(*v8 + 32))(v8, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "stateParameterFloatData";
      *(v9 + 16) = &qword_1EE1943F8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2000000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1943E0 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::FixedArray<re::StateParameterData>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "stateParameterBoolData";
      *(v11 + 16) = &qword_1EE1943F8;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x3800000003;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1943E8 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::FixedArray<re::StateParameterData>>::get(v12);
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "stateParameterTriggerData";
      *(v13 + 16) = &qword_1EE1943F8;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x5000000004;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1943F0 = v13;
      __cxa_guard_release(&qword_1EE1943A0);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1943D8;
  *(this + 9) = re::internal::defaultConstruct<re::StateParameterBlackboardAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StateParameterBlackboardAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::StateParameterBlackboardAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::StateParameterBlackboardAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::IntrospectionInfo<re::FixedArray<re::StateParameterData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1943C0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1943C0);
    if (a1)
    {
      re::IntrospectionFixedArray<re::StateParameterData>::IntrospectionFixedArray();
      __cxa_guard_release(&qword_1EE1943C0);
    }
  }

  if ((_MergedGlobals_64 & 1) == 0)
  {
    v1 = qword_1EE194390;
    if (qword_1EE194390 || (v1 = re::allocInfo_StateParameterData(a1), qword_1EE194390 = v1, re::initInfo_StateParameterData(v1, v2), (_MergedGlobals_64 & 1) == 0))
    {
      _MergedGlobals_64 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1943F8, 0);
      qword_1EE194408 = 0x1800000004;
      dword_1EE194410 = v3;
      word_1EE194414 = 0;
      *&xmmword_1EE194418 = 0;
      *(&xmmword_1EE194418 + 1) = 0xFFFFFFFFLL;
      qword_1EE194428 = v1;
      qword_1EE194430 = 0;
      qword_1EE1943F8 = &unk_1F5CBDFA8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1943F8, &v13);
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
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x18uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE194418 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::StateParameterBlackboardAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CBE040;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::StateParameterBlackboardAsset>(uint64_t a1)
{
  *a1 = &unk_1F5CBE040;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void *re::FixedArray<re::StateParameterData>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 32 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      result[1] = &str_67;
      result[2] = 0;
      result[3] = &str_67;
      result += 4;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  return result;
}

uint64_t *re::FixedArray<re::StateParameterData>::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *,re::RigDataTypeClass::RigDataTypeAttribute *>(&v4, *(a2 + 16), (*(a2 + 16) + 32 * v2), *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::IntrospectionFixedArray<re::StateParameterData>::IntrospectionFixedArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1943F8, 0);
  *(&qword_1EE194408 + 6) = 0;
  qword_1EE194408 = 0;
  *&xmmword_1EE194418 = 0;
  *(&xmmword_1EE194418 + 1) = 0xFFFFFFFFLL;
  qword_1EE1943F8 = &unk_1F5CAE268;
  qword_1EE194430 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE194428);
  qword_1EE1943F8 = &unk_1F5CBDFA8;
  return result;
}

void *re::IntrospectionFixedArray<re::StateParameterData>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::StateParameterData>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::StateParameterData>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void *re::IntrospectionFixedArray<re::StateParameterData>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  result = re::FixedArray<re::StateParameterData>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2[1] <= v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v11));
      ++v12;
      v11 += 32;
    }

    while (a5 != v12);
  }

  return result;
}

uint64_t re::IntrospectionFixedArray<re::StateParameterData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 32 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 32 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(a1);

  return re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(a1);
  v8 = re::FixedArray<re::StateParameterData>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 32 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::StateParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::StateParameterBlackboardAsset::~StateParameterBlackboardAsset(re::StateParameterBlackboardAsset *this)
{
  re::StateParameterBlackboardAsset::~StateParameterBlackboardAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CBE040;
  v2 = (this + 8);
  re::StateParameterBlackboardAsset::deinit(this);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(this + 10);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(this + 7);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(this + 4);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v2);
}

void *re::allocInfo_MeshDeformationIndex(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194560))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194650, "MeshDeformationIndex");
    __cxa_guard_release(&qword_1EE194560);
  }

  return &unk_1EE194650;
}

void re::initInfo_MeshDeformationIndex(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xC334BB550CBA431ELL;
  v14[1] = "MeshDeformationIndex";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE194568, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194568);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_MeshIdentifierAsset(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "meshIdentifier";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1945B0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "deformationIndex";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1945B8 = v12;
      __cxa_guard_release(&qword_1EE194568);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1945B0;
  *(this + 9) = re::internal::defaultConstruct<re::MeshDeformationIndex>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshDeformationIndex>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshDeformationIndex>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshDeformationIndex>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::MeshDeformationIndex>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::MeshDeformationIndex>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

uint64_t re::internal::defaultConstructV2<re::MeshDeformationIndex>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshDeformationIndex>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void *re::allocInfo_MeshDeformationAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194578))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1946E0, "MeshDeformationAsset");
    __cxa_guard_release(&qword_1EE194578);
  }

  return &unk_1EE1946E0;
}

void re::initInfo_MeshDeformationAsset(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xC334BB550BDDC75ALL;
  v11[1] = "MeshDeformationAsset";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE194580, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194580);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::DeformationStackDefinition>>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "stackDefinitions";
      *(v7 + 16) = &qword_1EE1945D0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1945C0 = v7;
      v8 = re::introspectionAllocator(v7);
      re::IntrospectionInfo<re::DynamicArray<re::MeshDeformationIndex>>::get(v8);
      v9 = (*(*v8 + 32))(v8, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "meshDeformations";
      *(v9 + 16) = qword_1EE194610;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2800000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1945C8 = v9;
      __cxa_guard_release(&qword_1EE194580);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1945C0;
  *(this + 9) = re::internal::defaultConstruct<re::MeshDeformationAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshDeformationAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshDeformationAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshDeformationAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<re::DynamicArray<re::DeformationStackDefinition>>::get()
{
  if ((atomic_load_explicit(&qword_1EE194590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194590))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1945D0);
    qword_1EE1945D0 = &unk_1F5CBE1E8;
    __cxa_guard_release(&qword_1EE194590);
  }

  if ((_MergedGlobals_65 & 1) == 0)
  {
    v0 = re::introspect_DeformationStackDefinition(1);
    if ((_MergedGlobals_65 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_65 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1945D0, 0);
      qword_1EE1945E0 = 0x2800000003;
      dword_1EE1945E8 = v2;
      word_1EE1945EC = 0;
      *&xmmword_1EE1945F0 = 0;
      *(&xmmword_1EE1945F0 + 1) = 0xFFFFFFFFLL;
      qword_1EE194600 = v1;
      unk_1EE194608 = 0;
      qword_1EE1945D0 = &unk_1F5CBE1E8;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1945D0, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1945F0 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshDeformationIndex>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE194598, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE194598);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE194610);
      qword_1EE194610[0] = &unk_1F5CBE280;
      __cxa_guard_release(&qword_1EE194598);
    }
  }

  if ((byte_1EE194559 & 1) == 0)
  {
    v1 = qword_1EE194570;
    if (qword_1EE194570 || (v1 = re::allocInfo_MeshDeformationIndex(a1), qword_1EE194570 = v1, re::initInfo_MeshDeformationIndex(v1, v2), (byte_1EE194559 & 1) == 0))
    {
      byte_1EE194559 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(qword_1EE194610, 0);
      unk_1EE194620 = 0x2800000003;
      unk_1EE194628 = v3;
      unk_1EE19462C = 0;
      *&xmmword_1EE194630 = 0;
      *(&xmmword_1EE194630 + 1) = 0xFFFFFFFFLL;
      unk_1EE194640 = v1;
      unk_1EE194648 = 0;
      qword_1EE194610[0] = &unk_1F5CBE280;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(qword_1EE194610, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE194630 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshDeformationAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 72) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshDeformationAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a3 + 40);

  return re::DynamicArray<re::DeformationStackDefinition>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MeshDeformationAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshDeformationAsset>(uint64_t a1)
{
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a1 + 40);

  return re::DynamicArray<re::DeformationStackDefinition>::deinit(a1);
}

uint64_t *re::MeshDeformationAsset::assetType(re::MeshDeformationAsset *this)
{
  {
    re::MeshDeformationAsset::assetType(void)::type = "MeshDeformation";
    qword_1EE1C69E0 = 0;
    re::AssetType::generateCompiledExtension(&re::MeshDeformationAsset::assetType(void)::type);
  }

  return &re::MeshDeformationAsset::assetType(void)::type;
}

void *re::MeshDeformationAsset::init(re::MeshDeformationAsset *this, re::Allocator *a2)
{
  v2 = a2;
  if (!a2)
  {
  }

  *this = v2;
  re::DynamicArray<re::DeformationStackDefinition>::setCapacity(this, 0);
  *(this + 5) = v2;
  v4 = this + 40;
  ++*(v4 - 4);
  result = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(v4, 0);
  ++*(v4 + 6);
  return result;
}

void re::MeshDeformationAsset::init(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a2 + 632))
  {
    v4 = a4;
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = &re::MeshDeformationAsset::init(re::MeshAsset const&,re::DefaultDeformationOptions const*,re::Allocator *)::kDefaultDeformationOptions;
    }

    if (!a4)
    {
    }

    *a1 = v4;
    re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a1, 0);
    *(a1 + 40) = v4;
    ++*(a1 + 24);
    re::DynamicArray<re::MeshDeformationIndex>::setCapacity((a1 + 40), 0);
    ++*(a1 + 64);
    v8 = 32;
    if (*(a2 + 1264))
    {
      v8 = 608;
    }

    v9 = *(a2 + v8);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = *(a2 + 608);
        if (v11 <= i)
        {
          v15 = 0;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v24 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          v19 = 797;
          v20 = 2048;
          v21 = i;
          v22 = 2048;
          v23 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v12 = re::DataArray<re::MeshModel>::tryGet(*(a2 + 632) + 8, *(*(a2 + 624) + 8 * i));
        re::StringID::StringID(&v14, v12);
        re::MeshDeformationAsset::addDefaultModelStackDefinitions(a1, v12, 2, &v14, v7);
        if (*&v14.var0)
        {
          if (*&v14.var0)
          {
          }
        }

        *&v14.var0 = 0;
        v14.var1 = &str_67;
      }
    }
  }
}

{
  v4 = a4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &re::MeshDeformationAsset::init(re::MeshAssetData const&,re::DefaultDeformationOptions const*,re::Allocator *)::kDefaultDeformationOptions;
  }

  if (!a4)
  {
  }

  *a1 = v4;
  re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a1, 0);
  *(a1 + 40) = v4;
  ++*(a1 + 24);
  re::DynamicArray<re::MeshDeformationIndex>::setCapacity((a1 + 40), 0);
  ++*(a1 + 64);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(a2 + 32);
    v10 = v8 << 9;
    do
    {
      re::StringID::StringID(&v12, v9);
      v11 = re::MeshDeformationAsset::addDefaultModelStackDefinitionsImpl<re::MeshAssetModel>(a1, v9, 2, &v12, v7);
      if (*&v12.var0)
      {
        if (*&v12.var0)
        {
        }
      }

      *&v12.var0 = 0;
      v12.var1 = &str_67;
      v9 += 32;
      v10 -= 512;
    }

    while (v10);
  }
}

void re::MeshDeformationAsset::addDefaultModelStackDefinitions(_anonymous_namespace_ *a1, void *a2, char a3, StringID *a4, uint64_t a5)
{
  re::StringID::StringID(&v10, a4);
  v9 = re::MeshDeformationAsset::addDefaultModelStackDefinitionsImpl<re::MeshModel>(a1, a2, a3, &v10, a5);
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }
}

_anonymous_namespace_ *re::MeshDeformationAsset::addDefaultModelStackDefinitionsImpl<re::MeshAssetModel>(_anonymous_namespace_ *result, void *a2, char a3, const StringID *a4, uint64_t a5)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a2[26];
  if (v6)
  {
    v8 = a2;
    v61 = result;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v11 = 0;
    v64 = v6;
    v62 = v8;
    do
    {
      v12 = v8[26];
      if (v12 <= v11)
      {
        *v71 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v69 = 136315906;
        *&v69[4] = "operator[]";
        *&v69[12] = 1024;
        *&v69[14] = 797;
        *&v69[18] = 2048;
        *&v69[20] = v11;
        *&v69[28] = 2048;
        *&v69[30] = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_167:
        v68 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v71 = 136315906;
        *&v71[4] = "operator[]";
        *&v71[12] = 1024;
        *&v71[14] = 468;
        *&v71[18] = 2048;
        *&v71[20] = v11;
        v72 = 2048;
        v73 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_168:
        *v71 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v69 = 136315906;
        *&v69[4] = "operator[]";
        *&v69[12] = 1024;
        *&v69[14] = 468;
        *&v69[18] = 2048;
        *&v69[20] = v5;
        *&v69[28] = 2048;
        *&v69[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_169:
        *v71 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v69 = 136315906;
        *&v69[4] = "operator[]";
        *&v69[12] = 1024;
        *&v69[14] = 468;
        *&v69[18] = 2048;
        *&v69[20] = v5;
        *&v69[28] = 2048;
        *&v69[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_170:
        v68 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v71 = 136315906;
        *&v71[4] = "operator[]";
        *&v71[12] = 1024;
        *&v71[14] = 797;
        *&v71[18] = 2048;
        *&v71[20] = v12;
        v72 = 2048;
        v73 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_171:
        v68 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v71 = 136315906;
        *&v71[4] = "operator[]";
        *&v71[12] = 1024;
        *&v71[14] = 797;
        *&v71[18] = 2048;
        *&v71[20] = v12;
        v72 = 2048;
        v73 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v13 = v8[28];
      *&v69[32] = 0;
      memset(v69, 0, 28);
      if (*a5 == 1 && (v14 = v8[16]) != 0)
      {
        v15 = (v8[18] + 48);
        v16 = 56 * v14;
        while (1)
        {
          v17 = *v15;
          v15 += 28;
          if (v11 == v17)
          {
            break;
          }

          v16 -= 56;
          if (!v16)
          {
            goto LABEL_9;
          }
        }

        memset(v71, 0, 24);
        v31 = *&v71[16];
        v32 = *(a5 + 8);
        *(*&v71[16] + 4) = *(a5 + 12);
        *v31 = v32;
        *&v74 = 0x1954B86F1FEF5A4;
        *(&v74 + 1) = "Blend Shape";
        v75 = *v71;
        memset(v71, 0, 24);
        *&v76 = *&v71[16];
        re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
        v33 = v75;
        if (v75)
        {
          if (*(&v75 + 1))
          {
            v33 = (*(*v75 + 40))(v75, v76);
            *(&v75 + 1) = 0;
            *&v76 = 0;
          }

          *&v75 = 0;
        }

        if (v74)
        {
          if (v74)
          {
          }
        }

        v10 = *v71;
        if (*v71 && *&v71[8])
        {
          v10 = (*(**v71 + 40))();
        }

        v18 = 1;
      }

      else
      {
LABEL_9:
        v18 = 0;
      }

      if (*(a5 + 6) == 1)
      {
        memset(v71, 0, 24);
        **&v71[16] = *(a5 + 18);
        *&v74 = 0x70EBDC9CD6B5D4E4;
        *(&v74 + 1) = "OffsetsDeformer";
        v75 = *v71;
        v19 = *&v71[16];
        memset(v71, 0, 24);
        *&v76 = v19;
        re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
        v20 = v75;
        if (v75)
        {
          if (*(&v75 + 1))
          {
            v20 = (*(*v75 + 40))(v75, v76);
            *(&v75 + 1) = 0;
            *&v76 = 0;
          }

          *&v75 = 0;
        }

        if (v74)
        {
          if (v74)
          {
          }
        }

        v10 = *v71;
        if (*v71 && *&v71[8])
        {
          v10 = (*(**v71 + 40))();
        }

        v18 = 1;
      }

      v21 = 0;
      v22 = v13 + (v11 << 8);
      if (*(a5 + 1) == 1 && v8[21] > v11)
      {
        if (*(v8[23] + 144 * v11) == -1)
        {
          v21 = 0;
        }

        else
        {
          v23 = *(a5 + 13);
          v24 = *(v22 + 16);
          if (v24)
          {
            v25 = 0;
            v26 = 0;
            v63 = *(a5 + 14);
            v27 = 80 * v24;
            v28 = (*(v22 + 32) + 16);
            do
            {
              if (*(v28 - 1))
              {
                v29 = *v28;
              }

              else
              {
                v29 = v28 - 7;
              }

              v10 = strcmp(v29, "vertexAdjacencies");
              if (v10)
              {
                v10 = strcmp(v29, "accumulatedVertexValence");
                v25 |= v10 == 0;
              }

              else
              {
                v26 = 1;
              }

              v28 += 10;
              v27 -= 80;
            }

            while (v27);
            v30 = v26 & v25;
            if (v26 & v25)
            {
              v12 = v63;
            }

            else
            {
              v12 = 1;
            }

            v8 = v62;
            v6 = v64;
          }

          else
          {
            v30 = 0;
            v12 = 1;
          }

          memset(v71, 0, 24);
          v34 = *&v71[16];
          **&v71[16] = v23;
          *(v34 + 1) = v12;
          *&v74 = 0x4550755B7A2;
          *(&v74 + 1) = "Skinning";
          v75 = *v71;
          v35 = *&v71[16];
          memset(v71, 0, 24);
          *&v76 = v35;
          re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
          v36 = v75;
          if (v75)
          {
            if (*(&v75 + 1))
            {
              v36 = (*(*v75 + 40))();
              *(&v75 + 1) = 0;
              *&v76 = 0;
            }

            *&v75 = 0;
          }

          if (v74)
          {
            if (v74)
            {
            }
          }

          v10 = *v71;
          if (*v71 && *&v71[8])
          {
            v10 = (*(**v71 + 40))();
          }

          v18 |= v30;
          v21 = 1;
        }
      }

      if (*(a5 + 5) == 1)
      {
        *&v74 = a5 + 17;
        *(&v74 + 1) = 1;
        memset(v71, 0, 24);
        re::FixedArray<unsigned char>::copy(v71, &v74);
        *&v74 = 0x5ADE39698BF7F040;
        *(&v74 + 1) = "SmoothDeformer";
        v75 = *v71;
        v37 = *&v71[16];
        memset(v71, 0, 24);
        *&v76 = v37;
        re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
        v38 = v75;
        if (v75)
        {
          if (*(&v75 + 1))
          {
            v38 = (*(*v75 + 40))();
            *(&v75 + 1) = 0;
            *&v76 = 0;
          }

          *&v75 = 0;
        }

        if (v74)
        {
          if (v74)
          {
          }
        }

        v10 = *v71;
        if (*v71 && *&v71[8])
        {
          v10 = (*(**v71 + 40))();
        }

        v21 = 1;
        v18 = 1;
      }

      if (v18 & 1) != 0 && (*(a5 + 2))
      {
        memset(v71, 0, 24);
        **&v71[16] = *(a5 + 15);
        *&v74 = 0xABCEC87F22A13454;
        *(&v74 + 1) = "Renormalization";
        v75 = *v71;
        v39 = *&v71[16];
        memset(v71, 0, 24);
        *&v76 = v39;
        re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
        v40 = v75;
        if (v75)
        {
          if (*(&v75 + 1))
          {
            v40 = (*(*v75 + 40))();
            *(&v75 + 1) = 0;
            *&v76 = 0;
          }

          *&v75 = 0;
        }

        if (v74)
        {
          if (v74)
          {
          }
        }

        v10 = *v71;
        if (*v71 && *&v71[8])
        {
          v10 = (*(**v71 + 40))();
        }
      }

      if (*(a5 + 3) == 1 && *(v22 + 64))
      {
        *&v74 = 0xA6B838C1BF1BB512;
        *(&v74 + 1) = "OpenSubdivViewIndependentComputeStep";
        *&v76 = 0;
        v75 = 0uLL;
        re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
        v41 = v75;
        if (v75)
        {
          if (*(&v75 + 1))
          {
            v41 = (*(*v75 + 40))();
            *(&v75 + 1) = 0;
            *&v76 = 0;
          }

          *&v75 = 0;
        }

        if (v74)
        {
          if (v74)
          {
          }
        }

        *&v74 = 0xC6F7B7A81D0D03C8;
        *(&v74 + 1) = "OpenSubdivViewDependentComputeStep";
        *&v76 = 0;
        v75 = 0uLL;
        re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
        v10 = v75;
        if (v75)
        {
          if (*(&v75 + 1))
          {
            v10 = (*(*v75 + 40))();
            *(&v75 + 1) = 0;
            *&v76 = 0;
          }

          *&v75 = 0;
        }

        if (v74)
        {
          if (v74)
          {
          }
        }
      }

      if ((v21 & *(a5 + 4)) == 1)
      {
        memset(v71, 0, 24);
        **&v71[16] = *(a5 + 16);
        *&v74 = 0x32458CCC0A585AB0;
        *(&v74 + 1) = "Bounding Box Calculation";
        v75 = *v71;
        v42 = *&v71[16];
        memset(v71, 0, 24);
        *&v76 = v42;
        re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
        v43 = v75;
        if (v75)
        {
          if (*(&v75 + 1))
          {
            v43 = (*(*v75 + 40))();
            *(&v75 + 1) = 0;
            *&v76 = 0;
          }

          *&v75 = 0;
        }

        if (v74)
        {
          if (v74)
          {
          }
        }

        if (*v71 && *&v71[8])
        {
          (*(**v71 + 40))();
        }
      }

      if (*(a5 + 7) == 1)
      {
        v44 = *(v22 + 16);
        if (v44)
        {
          v45 = (*(v22 + 32) + 16);
          v12 = 80 * v44;
          while (1)
          {
            v46 = (*(v45 - 1) & 1) != 0 ? *v45 : v45 - 7;
            v47 = strcmp(v46, "tension");
            if (!v47)
            {
              break;
            }

            v45 += 10;
            v12 -= 80;
            if (!v12)
            {
              goto LABEL_132;
            }
          }

          *&v74 = a5 + 19;
          *(&v74 + 1) = 1;
          memset(v71, 0, 24);
          re::FixedArray<unsigned char>::copy(v71, &v74);
          *&v74 = 0x241C51C064;
          *(&v74 + 1) = "Tension";
          v75 = *v71;
          v48 = *&v71[16];
          memset(v71, 0, 24);
          *&v76 = v48;
          re::DynamicArray<re::DeformationDefinition>::add(v69, &v74);
          v49 = v75;
          if (v75)
          {
            if (*(&v75 + 1))
            {
              v49 = (*(*v75 + 40))();
              *(&v75 + 1) = 0;
              *&v76 = 0;
            }

            *&v75 = 0;
          }

          if (v74)
          {
            if (v74)
            {
            }
          }

          if (*v71 && *&v71[8])
          {
            (*(**v71 + 40))();
          }
        }
      }

LABEL_132:
      v5 = v66;
      if (v66 <= v11)
      {
        goto LABEL_167;
      }

      v50 = v67;
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v67 + 40 * v11, v69);
      v10 = re::DynamicArray<re::DeformationDefinition>::deinit(v69);
      ++v11;
    }

    while (v11 != v6);
    v9 = v61;
    if (v6 != 1)
    {
      v51 = (v50 + 72);
      v12 = 1;
      while (1)
      {
        if (v5 == v12)
        {
          goto LABEL_168;
        }

        if (!re::DynamicArray<re::DeformationDefinition>::operator==(v50, *(v51 - 2), *v51))
        {
          break;
        }

        ++v12;
        v51 += 5;
        if (v6 == v12)
        {
          goto LABEL_139;
        }
      }

      v12 = 0;
      while (1)
      {
        if (v12 == v5)
        {
          goto LABEL_169;
        }

        v53 = *(v50 + 40 * v12 + 16);
        if (v53)
        {
          break;
        }

LABEL_163:
        if (++v12 == v64)
        {
          return re::FixedArray<re::DeformationStackDefinition>::deinit(&v65);
        }
      }

      v54 = v9[2];
      if (v54)
      {
        v55 = 0;
        v56 = *(v61 + 4);
        v57 = *(v50 + 40 * v12 + 32);
        while (!re::DynamicArray<re::DeformationDefinition>::operator==(v56, v53, v57))
        {
          ++v55;
          v56 += 40;
          if (v54 == v55)
          {
            goto LABEL_153;
          }
        }

        v69[0] = a3;
        re::StringID::StringID(&v69[8], a4);
        v9 = v62[26];
        if (v9 <= v12)
        {
          goto LABEL_171;
        }

        re::StringID::StringID(&v69[24], (v62[28] + (v12 << 8) + 72));
        v70 = v55;
        v9 = v61;
        v58 = re::DynamicArray<re::MeshDeformationIndex>::add(v61 + 5, v69);
        if ((v69[24] & 1) == 0)
        {
          goto LABEL_160;
        }
      }

      else
      {
LABEL_153:
        re::DynamicArray<re::DeformationStackDefinition>::add(v61, v50 + 40 * v12);
        v69[0] = a3;
        re::StringID::StringID(&v69[8], a4);
        v9 = v62[26];
        if (v9 <= v12)
        {
          goto LABEL_170;
        }

        re::StringID::StringID(&v69[24], (v62[28] + (v12 << 8) + 72));
        v70 = *(v61 + 2) - 1;
        v58 = re::DynamicArray<re::MeshDeformationIndex>::add(v61 + 5, v69);
        v9 = v61;
        if ((v69[24] & 1) == 0)
        {
          goto LABEL_160;
        }
      }

      if (v69[24])
      {
      }

LABEL_160:
      *&v69[24] = 0;
      *&v69[32] = &str_67;
      if (v69[8])
      {
        if (v69[8])
        {
        }
      }

      goto LABEL_163;
    }

LABEL_139:
    if (*(v50 + 16))
    {
      re::DynamicArray<re::DeformationStackDefinition>::add(v61, v50);
      LOBYTE(v74) = a3;
      re::StringID::StringID((&v74 + 8), a4);
      *(&v75 + 1) = 0;
      *&v76 = &str_67;
      *(&v76 + 1) = *(v61 + 2) - 1;
      v52 = re::DynamicArray<re::MeshDeformationIndex>::add(v61 + 5, &v74);
      if (BYTE8(v75))
      {
        if (BYTE8(v75))
        {
        }
      }

      *(&v75 + 1) = 0;
      *&v76 = &str_67;
      if (BYTE8(v74))
      {
        if (BYTE8(v74))
        {
        }
      }
    }

    return re::FixedArray<re::DeformationStackDefinition>::deinit(&v65);
  }

  return result;
}