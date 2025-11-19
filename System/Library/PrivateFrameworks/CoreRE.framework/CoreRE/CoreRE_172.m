_anonymous_namespace_ *re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(_anonymous_namespace_ *result, uint64_t *a2)
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

        result = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 12 * v5;
  v12 = *a2;
  *(v11 + 8) = *(a2 + 2);
  *v11 = v12;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

char *re::RenderGraphResourceAllocationManager::makeBuffer@<X0>(re::RenderGraphResourceAllocationManager *this@<X0>, const re::RenderGraphBufferDescription *a2@<X2>, const re::StringID *a3@<X3>, unint64_t a4@<X1>, void *a5@<X8>)
{
  v6 = a3;
  v8 = a4;
  v74 = *MEMORY[0x1E69E9840];
  if (*(this + 1136) != 1)
  {
    goto LABEL_8;
  }

  v11 = a4;
  v12 = *(this + 150);
  if (v12 <= a4)
  {
LABEL_49:
    *v66 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *v53 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v73[0]) = 136315906;
    *(v73 + 4) = "operator[]";
    WORD6(v73[0]) = 1024;
    *(v73 + 14) = 789;
    WORD1(v73[1]) = 2048;
    *(&v73[1] + 4) = v11;
    WORD6(v73[1]) = 2048;
    *(&v73[1] + 14) = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v52[1] = 0;
    memset(v73, 0, sizeof(v73));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v66 = 136315906;
    *&v66[4] = "operator[]";
    v67 = 1024;
    v68 = 789;
    v69 = 2048;
    v70 = v11;
    v71 = 2048;
    v72 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_51:
    *v66 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *v53 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v73[0]) = 136315906;
    *(v73 + 4) = "operator[]";
    WORD6(v73[0]) = 1024;
    *(v73 + 14) = 789;
    WORD1(v73[1]) = 2048;
    *(&v73[1] + 4) = v11;
    WORD6(v73[1]) = 2048;
    *(&v73[1] + 14) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_52;
  }

  v13 = *(this + 152);
  if (*(v13 + 184 * a4 + 168))
  {
    if (*(v13 + 184 * a4 + 152) == *a3 >> 1)
    {
      v6 = *(this + 139);
      if (v6 <= a4)
      {
LABEL_54:
        *v66 = 0;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        *v53 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v73[0]) = 136315906;
        *(v73 + 4) = "operator[]";
        WORD6(v73[0]) = 1024;
        *(v73 + 14) = 789;
        WORD1(v73[1]) = 2048;
        *(&v73[1] + 4) = v11;
        WORD6(v73[1]) = 2048;
        *(&v73[1] + 14) = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_55;
      }

      v14 = v13 + 184 * a4;
      v15 = *(this + 141) + 184 * a4;
      *v15 = *v14;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v15 + 8, (v14 + 8));
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v15 + 80, (v14 + 80));
      *(v15 + 152) = *(v14 + 152);
      v16 = *(v14 + 160);
      *(v15 + 176) = *(v14 + 176);
      *(v15 + 160) = v16;
      v6 = *(this + 139);
      if (v6 <= v8)
      {
LABEL_55:
        *v66 = 0;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        *v53 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v73[0]) = 136315906;
        *(v73 + 4) = "operator[]";
        WORD6(v73[0]) = 1024;
        *(v73 + 14) = 789;
        WORD1(v73[1]) = 2048;
        *(&v73[1] + 4) = v11;
        WORD6(v73[1]) = 2048;
        *(&v73[1] + 14) = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_56;
      }

      *(*(*(this + 141) + 184 * v11 + 168) + 48) = 1;
      goto LABEL_38;
    }

    v17 = a5;
    v18 = 1;
  }

  else
  {
LABEL_8:
    v17 = a5;
    v18 = 0;
  }

  v19 = *(a2 + 6) & 0x70;
  v21 = [*(this + 6) heapBufferSizeAndAlignWithLength:*(a2 + 1) options:?];
  v22 = v20;
  v51 = v19 == 48;
  if (v19 == 48)
  {
    v23 = this + 208;
  }

  else
  {
    result = re::RenderGraphResourceAllocationManager::findHeapFor(this, v21, v20, *(a2 + 4));
    v23 = result;
    if (!result)
    {
      goto LABEL_41;
    }
  }

  v50 = v18;
  v25 = v19 == 48;
  v12 = *v23;
  v26 = *(a2 + 1);
  v27 = *(a2 + 6);
  v52[0] = *v6 >> 1;
  result = (*(*v12 + 48))(v12, v26, v27, v25, v52);
  v52[0] = 0;
  if (result == -1)
  {
LABEL_41:
    *v17 = 0;
    return result;
  }

  v28 = result;
  v23[48] = 1;
  v29 = v22 + v21;
  *(this + 220) += v29;
  v30 = *(this + 213) + v29;
  *(this + 213) = v30;
  if (v30 > *(this + 214))
  {
    *(this + 214) = v30;
  }

  ++*(this + 221);
  v31 = *v6 >> 1;
  v53[1] = 0;
  *&v54 = 0;
  v53[0] = result;
  DWORD2(v54) = 1;
  v55 = 0uLL;
  v58 = 0;
  v59 = 0;
  v60 = 1;
  v61 = 0;
  v62 = 0;
  v63 = v31;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = v23;
  v65 = 0;
  v11 = v8;
  v5 = *(this + 139);
  if (v5 <= v8)
  {
    goto LABEL_50;
  }

  v5 = *(this + 141) + 184 * v8;
  *v5 = result;
  re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v5 + 8, &v53[1]);
  re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v5 + 80, &v58);
  *(v5 + 152) = v63;
  v32 = v64;
  *(v5 + 176) = v65;
  *(v5 + 160) = v32;
  v63 = 0;
  if (v58)
  {
    v33 = v60;
    if ((v60 & 1) == 0)
    {
      (*(*v58 + 40))();
      v33 = v60;
    }

    v58 = 0;
    v59 = 0;
    v60 = (v33 | 1) + 2;
  }

  if (v53[1] && (BYTE8(v54) & 1) == 0)
  {
    (*(*v53[1] + 40))();
  }

  v8 = *(this + 139);
  if (v8 <= v11)
  {
    goto LABEL_51;
  }

  v34 = *(this + 141) + 184 * v11;
  *(v34 + 160) = v51;
  *(v34 + 176) = v29;
  if (v50)
  {
    v8 = *(this + 150);
    if (v8 <= v11)
    {
LABEL_52:
      *v66 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *v53 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = v11;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_53;
    }

    v35 = *(this + 152) + 184 * v11;
    *(this + 213) -= *(v35 + 176);
    (*(***(v35 + 168) + 56))(**(v35 + 168), *v35);
    v8 = *(this + 160);
    if (v8 <= v11)
    {
LABEL_53:
      *v66 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *v53 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = v11;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_54;
    }

    v36 = *(this + 162) + 48 * v11;
    *v36 = 0;
    *(v36 + 8) = -1;
    *(v36 + 16) = 0;
    *(v36 + 20) = 1065353216;
    *(v36 + 24) = 0xFFFFFFFF00000020;
    *(v36 + 32) = xmmword_1E3062D70;
  }

  if (*(this + 1136) == 1 && *(v12 + 8) == 2)
  {
    v8 = *(this + 139);
    if (v8 <= v11)
    {
LABEL_56:
      *v66 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *v53 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = v11;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_57;
    }

    v8 = *(this + 150);
    if (v8 <= v11)
    {
LABEL_57:
      *v66 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *v53 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = v11;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_58:
      *v66 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *v53 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v73[0]) = 136315906;
      *(v73 + 4) = "operator[]";
      WORD6(v73[0]) = 1024;
      *(v73 + 14) = 789;
      WORD1(v73[1]) = 2048;
      *(&v73[1] + 4) = v11;
      WORD6(v73[1]) = 2048;
      *(&v73[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v37 = *(this + 141) + 184 * v11;
    v38 = *(this + 152) + 184 * v11;
    *v38 = *v37;
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v38 + 8, (v37 + 8));
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v38 + 80, (v37 + 80));
    *(v38 + 152) = *(v37 + 152);
    v39 = *(v37 + 160);
    *(v38 + 176) = *(v37 + 176);
    *(v38 + 160) = v39;
    v8 = *(this + 160);
    if (v8 <= v11)
    {
      goto LABEL_58;
    }

    v40 = (*(this + 162) + 48 * v11);
    v41 = *a2;
    v42 = *(a2 + 2);
    v40[1] = *(a2 + 1);
    v40[2] = v42;
    *v40 = v41;
  }

  (*(*v12 + 104))(v53, v12, v28);
  [v53[0] setLabel_];
  if (v53[0])
  {
  }

  v6 = *(this + 139);
LABEL_38:
  if (v6 <= v11)
  {
    *v66 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *v53 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v73[0]) = 136315906;
    *(v73 + 4) = "operator[]";
    WORD6(v73[0]) = 1024;
    *(v73 + 14) = 789;
    WORD1(v73[1]) = 2048;
    *(&v73[1] + 4) = v11;
    WORD6(v73[1]) = 2048;
    *(&v73[1] + 14) = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

  v43 = *(this + 141) + 184 * v11;
  v44 = *(v43 + 168);
  v45 = *v44;
  v46 = *v43;
  if (*(v43 + 160))
  {
    ++*(this + 218);
  }

  else if (v44[3])
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = v44[5] + v47;
      v12 = v12 & 0xFFFFFFFF00000000 | *(v49 + 8);
      re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence((this + 1328), *v49, v12);
      ++v48;
      v47 += 12;
    }

    while (v44[3] > v48);
  }

  return (*(*v45 + 104))(v45, v46);
}

_anonymous_namespace_ *re::RenderGraphResourceAllocationManager::releaseBuffer(_anonymous_namespace_ *this, unsigned int a2, const char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(this + 139) <= a2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v4 = this;
  v5 = (*(this + 141) + 184 * a2);
  if (*v5 == -1)
  {
    return this;
  }

  v6 = v5[21];
  v7 = *v6;
  if (*(v4 + 1136) == 1)
  {
    this = (*(*v7 + 64))(v7);
  }

  else
  {
    *(v4 + 213) -= v5[22];
    this = (*(*v7 + 56))(v7);
  }

  if (*(v4 + 139) <= v3)
  {
LABEL_12:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(v4 + 141) + 184 * v3;
  *v8 = -1;
  *(v8 + 16) = 0;
  *(v8 + 24) += 2;
  *(v8 + 88) = 0;
  *(v8 + 96) += 2;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  v9 = *(v4 + 203);
  if (v9)
  {
    v10 = *(v4 + 205);
    v11 = 12 * v9;
    do
    {
      *&v12 = *v10;
      DWORD2(v12) = *(v10 + 8);
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v6 + 1), &v12);
      v10 += 12;
      v11 -= 12;
    }

    while (v11);
  }

  return this;
}

uint64_t re::RenderGraphResourceAllocationManager::onFrameStart(re::RenderGraphResourceAllocationManager *this, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = a2;
  v9 = this;
  v138 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(this + 132, a2);
  if (*(v9 + 134))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(v9 + 136) + v10;
      *v12 = -1;
      *(v12 + 16) = 0;
      *(v12 + 24) += 2;
      *(v12 + 88) = 0;
      *(v12 + 96) += 2;
      *(v12 + 152) = 0;
      *(v12 + 160) = 0;
      *(v12 + 168) = 0;
      ++v11;
      v10 += 184;
    }

    while (*(v9 + 134) > v11);
  }

  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(v9 + 137, a3);
  if (*(v9 + 139))
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(v9 + 141) + v13;
      *v15 = -1;
      *(v15 + 16) = 0;
      *(v15 + 24) += 2;
      *(v15 + 88) = 0;
      *(v15 + 96) += 2;
      *(v15 + 152) = 0;
      *(v15 + 160) = 0;
      *(v15 + 168) = 0;
      ++v14;
      v13 += 184;
    }

    while (*(v9 + 139) > v14);
  }

  if ((atomic_load_explicit(&qword_1EE1B8918, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_163;
  }

  while (1)
  {
    v16 = byte_1EE1B88FB;
    if (*(v9 + 1136) == 1 && (byte_1EE1B88FB & 1) == 0)
    {
      v128 = a5;
      v130 = a4;
      v17 = *(v9 + 145);
      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        a5 = 2;
        __asm { FMOV            V9.2S, #1.0 }

        do
        {
          v26 = (*(v9 + 147) + v18);
          v27 = v26[21];
          if (v27)
          {
            (*(**v27 + 32))(*v27, *v26);
            a4 = *(v9 + 155);
            if (a4 <= v20)
            {
              goto LABEL_161;
            }

            v28 = *(v9 + 157) + v19;
            *v28 = 3;
            *(v28 + 8) = 2;
            *(v28 + 28) = -1;
            *(v28 + 20) = -1;
            *(v28 + 12) = -1;
            *(v28 + 36) = 0;
            *(v28 + 40) = 0;
            *(v28 + 44) = _D9;
            *(v28 + 52) = xmmword_1E30A3B60;
            *(v28 + 68) = 0x2000000000;
            *(v28 + 76) = -1;
            *(v28 + 84) = -1;
            *(v28 + 92) = -1;
            *(v28 + 96) = 0;
            *(v28 + 104) = 0;
            v17 = *(v9 + 145);
          }

          ++v20;
          v19 += 112;
          v18 += 184;
        }

        while (v17 > v20);
        *(v9 + 145) = 0;
        if (v17)
        {
          v29 = 184 * v17;
          v30 = *(v9 + 147) + 80;
          do
          {
            *(v30 + 72) = 0;
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v30);
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v30 - 72);
            v30 += 184;
            v29 -= 184;
          }

          while (v29);
        }
      }

      ++*(v9 + 292);
      *(v9 + 155) = 0;
      ++*(v9 + 312);
      v31 = *(v9 + 150);
      if (v31)
      {
        a5 = 0;
        a4 = 0;
        for (i = 0; i < v31; ++i)
        {
          v33 = (*(v9 + 152) + a5);
          v34 = v33[21];
          if (v34)
          {
            (*(**v34 + 56))(*v34, *v33);
            if (*(v9 + 160) <= i)
            {
              goto LABEL_162;
            }

            v35 = *(v9 + 162) + a4;
            *v35 = 0;
            *(v35 + 8) = -1;
            *(v35 + 16) = 0;
            *(v35 + 20) = 0x203F800000;
            *(v35 + 28) = -1;
            *(v35 + 32) = xmmword_1E3062D70;
            v31 = *(v9 + 150);
          }

          a4 += 48;
          a5 += 184;
        }

        *(v9 + 150) = 0;
        if (v31)
        {
          v36 = 184 * v31;
          v37 = *(v9 + 152) + 80;
          do
          {
            *(v37 + 72) = 0;
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v37);
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v37 - 72);
            v37 += 184;
            v36 -= 184;
          }

          while (v36);
        }
      }

      ++*(v9 + 302);
      *(v9 + 160) = 0;
      ++*(v9 + 322);
      *(v9 + 221) = 0;
      *(v9 + 1704) = 0u;
      *(v9 + 1720) = 0u;
      *(v9 + 1736) = 0u;
      *(v9 + 1752) = 0u;
      v16 = byte_1EE1B88FB;
      a5 = v128;
      a4 = v130;
    }

    *(v9 + 1136) = v16;
    if ((v16 & 1) == 0)
    {
      break;
    }

    v38 = *(v9 + 145);
    if (v38 == *(v9 + 134) && *(v9 + 150) == *(v9 + 139) && *(v9 + 163) == a4 && *(v9 + 164) == a5)
    {
      break;
    }

    v129 = a5;
    v131 = a4;
    __asm { FMOV            V8.2S, #1.0 }

    if (v38)
    {
      v40 = 0;
      a5 = 0;
      v41 = 0;
      a4 = 2;
      do
      {
        v42 = (*(v9 + 147) + v40);
        v43 = v42[21];
        if (v43)
        {
          (*(**v43 + 32))(*v43, *v42);
          if (*(v9 + 155) <= v41)
          {
            goto LABEL_159;
          }

          v44 = *(v9 + 157) + a5;
          *v44 = 3;
          *(v44 + 8) = 2;
          *(v44 + 28) = -1;
          *(v44 + 20) = -1;
          *(v44 + 12) = -1;
          *(v44 + 36) = 0;
          *(v44 + 40) = 0;
          *(v44 + 44) = _D8;
          *(v44 + 52) = xmmword_1E30A3B60;
          *(v44 + 68) = 0x2000000000;
          *(v44 + 76) = -1;
          *(v44 + 84) = -1;
          *(v44 + 92) = -1;
          *(v44 + 96) = 0;
          *(v44 + 104) = 0;
          v38 = *(v9 + 145);
        }

        ++v41;
        a5 += 112;
        v40 += 184;
      }

      while (v38 > v41);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(v9 + 143, v8);
    v45 = *(v9 + 155);
    if (v45 >= v8)
    {
      if (v45 <= v8)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*(v9 + 154) < v8)
      {
        re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(v9 + 153, v8);
        v45 = *(v9 + 155);
      }

      if (v8 > v45)
      {
        v46 = 112 * &v8[-v45];
        if (v46 >= 1)
        {
          v47 = *(v9 + 157) + 112 * v45;
          v48 = (((v46 >> 4) * 0x2492492492492493uLL) >> 64) + 1;
          do
          {
            *v47 = 3;
            *(v47 + 8) = 2;
            *(v47 + 12) = -1;
            *(v47 + 20) = -1;
            *(v47 + 28) = -1;
            *(v47 + 36) = 0;
            *(v47 + 40) = 0;
            *(v47 + 44) = _D8;
            *(v47 + 52) = xmmword_1E30A3B60;
            *(v47 + 68) = 0x2000000000;
            *(v47 + 76) = -1;
            *(v47 + 84) = -1;
            *(v47 + 92) = -1;
            *(v47 + 96) = 0;
            *(v47 + 104) = 0;
            v47 += 112;
            --v48;
          }

          while (v48 > 1);
        }
      }
    }

    *(v9 + 155) = v8;
    ++*(v9 + 312);
LABEL_50:
    if (*(v9 + 145))
    {
      v49 = 0;
      v50 = 0;
      v8 = 0;
      while (1)
      {
        v51 = *(v9 + 147) + v49;
        *v51 = -1;
        *(v51 + 16) = 0;
        *(v51 + 24) += 2;
        *(v51 + 88) = 0;
        *(v51 + 96) += 2;
        *(v51 + 152) = 0;
        *(v51 + 160) = 0;
        *(v51 + 168) = 0;
        a5 = *(v9 + 155);
        if (a5 <= v8)
        {
          break;
        }

        v52 = *(v9 + 157) + v50;
        *v52 = 3;
        *(v52 + 8) = 2;
        *(v52 + 28) = -1;
        *(v52 + 20) = -1;
        *(v52 + 12) = -1;
        *(v52 + 36) = 0;
        *(v52 + 40) = 0;
        *(v52 + 44) = _D8;
        *(v52 + 52) = xmmword_1E30A3B60;
        *(v52 + 68) = 0x2000000000;
        *(v52 + 76) = -1;
        *(v52 + 84) = -1;
        *(v52 + 92) = -1;
        *(v52 + 96) = 0;
        *(v52 + 104) = 0;
        ++v8;
        v50 += 112;
        v49 += 184;
        if (*(v9 + 145) <= v8)
        {
          goto LABEL_54;
        }
      }

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_158;
    }

LABEL_54:
    v53 = *(v9 + 150);
    v8 = "S_4ecs215EntityAssetDataEEE";
    if (v53)
    {
      a5 = 0;
      a4 = 0;
      for (j = 0; j < v53; ++j)
      {
        v55 = (*(v9 + 152) + a5);
        v56 = v55[21];
        if (v56)
        {
          (*(**v56 + 56))(*v56, *v55);
          if (*(v9 + 160) <= j)
          {
            goto LABEL_160;
          }

          v57 = *(v9 + 162) + a4;
          *v57 = 0;
          *(v57 + 8) = -1;
          *(v57 + 16) = 0;
          *(v57 + 20) = 0x203F800000;
          *(v57 + 28) = -1;
          *(v57 + 32) = xmmword_1E3062D70;
          v53 = *(v9 + 150);
        }

        a4 += 48;
        a5 += 184;
      }
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(v9 + 148, a3);
    v58 = *(v9 + 160);
    if (v58 < a3)
    {
      a4 = v131;
      if (*(v9 + 159) < a3)
      {
        re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v9 + 158, a3);
        v58 = *(v9 + 160);
      }

      if (a3 > v58)
      {
        v59 = 48 * (a3 - v58);
        if (v59 >= 1)
        {
          v60 = *(v9 + 162) + 48 * v58;
          v61 = v59 / 0x30uLL + 1;
          do
          {
            *v60 = 0;
            *(v60 + 8) = -1;
            *(v60 + 16) = 0;
            *(v60 + 20) = 1065353216;
            *(v60 + 24) = 0xFFFFFFFF00000020;
            *(v60 + 32) = xmmword_1E3062D70;
            v60 += 48;
            --v61;
          }

          while (v61 > 1);
        }
      }

LABEL_69:
      *(v9 + 160) = a3;
      ++*(v9 + 322);
      goto LABEL_70;
    }

    a4 = v131;
    if (v58 > a3)
    {
      goto LABEL_69;
    }

LABEL_70:
    if (!*(v9 + 150))
    {
LABEL_74:
      *(v9 + 163) = a4;
      *(v9 + 164) = v129;
      break;
    }

    v62 = 0;
    a3 = 0;
    v63 = 168;
    while (1)
    {
      v64 = (*(v9 + 152) + v63);
      *(v64 - 21) = -1;
      *(v64 - 19) = 0;
      *(v64 - 36) += 2;
      *(v64 - 10) = 0;
      *(v64 - 18) += 2;
      *(v64 - 2) = 0;
      *(v64 - 8) = 0;
      *v64 = 0;
      a5 = *(v9 + 160);
      if (a5 <= a3)
      {
        break;
      }

      v65 = *(v9 + 162) + v62;
      *v65 = 0;
      *(v65 + 8) = -1;
      *(v65 + 16) = 0;
      *(v65 + 20) = 1065353216;
      *(v65 + 24) = 0xFFFFFFFF00000020;
      *(v65 + 32) = xmmword_1E3062D70;
      ++a3;
      v62 += 48;
      v63 += 184;
      if (*(v9 + 150) <= a3)
      {
        goto LABEL_74;
      }
    }

LABEL_158:
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v133 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v133 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_160:
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v133 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v133 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_162:
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v133 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_163:
    if (__cxa_guard_acquire(&qword_1EE1B8918))
    {
      re::Defaults::BOOLValue("enableRenderGraphResourceCaching", v126, &v133);
      if (v133)
      {
        v127 = BYTE1(v133);
      }

      else
      {
        v127 = 1;
      }

      byte_1EE1B88FB = v127;
      __cxa_guard_release(&qword_1EE1B8918);
    }
  }

  *(v9 + 1036) = 0;
  *(v9 + 261) = *(v9 + 258);
  *(v9 + 262) = 2;
  v66 = *(v9 + 11);
  if (v66)
  {
    v67 = *(v9 + 13);
    do
    {
      *v67 += 1000;
      v67 += 3;
      --v66;
    }

    while (v66);
  }

  v68 = *(v9 + 29);
  if (v68)
  {
    v69 = *(v9 + 31);
    do
    {
      *v69 += 1000;
      v69 += 3;
      --v68;
    }

    while (v68);
  }

  v70 = *(v9 + 17);
  if (v70)
  {
    v71 = 0;
    v72 = *(v9 + 19);
    do
    {
      v73 = v72 + 48 * v71;
      v74 = *(v73 + 24);
      if (v74)
      {
        v75 = 0;
        v76 = *(v73 + 40);
        do
        {
          v77 = v76 + 56 * v75;
          v78 = *(v77 + 24);
          if (v78)
          {
            v79 = *(v77 + 40);
            do
            {
              *v79 += 1000;
              v79 += 3;
              --v78;
            }

            while (v78);
          }

          ++v75;
        }

        while (v75 != v74);
      }

      ++v71;
    }

    while (v71 != v70);
  }

  v80 = *(v9 + 48);
  if (v80)
  {
    v81 = 0;
    v82 = *(v9 + 22);
    while (1)
    {
      v83 = *v82;
      v82 += 30;
      if (v83 < 0)
      {
        break;
      }

      if (v80 == ++v81)
      {
        LODWORD(v81) = *(v9 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v81) = 0;
  }

  if (v81 != v80)
  {
    v84 = *(v9 + 22);
    do
    {
      v85 = (v84 + 120 * v81);
      v86 = v85[5];
      if (v86)
      {
        v87 = v85[7];
        do
        {
          *v87 += 1000;
          v87 += 3;
          --v86;
        }

        while (v86);
      }

      v88 = v85[11];
      if (v88)
      {
        v89 = 0;
        v90 = v85[13];
        do
        {
          v91 = v90 + 48 * v89;
          v92 = *(v91 + 24);
          if (v92)
          {
            v93 = 0;
            v94 = *(v91 + 40);
            do
            {
              v95 = v94 + 56 * v93;
              v96 = *(v95 + 24);
              if (v96)
              {
                v97 = *(v95 + 40);
                do
                {
                  *v97 += 1000;
                  v97 += 3;
                  --v96;
                }

                while (v96);
              }

              ++v93;
            }

            while (v93 != v92);
          }

          ++v89;
        }

        while (v89 != v88);
      }

      if (v80 <= v81 + 1)
      {
        v98 = v81 + 1;
      }

      else
      {
        v98 = v80;
      }

      while (v98 - 1 != v81)
      {
        LODWORD(v81) = v81 + 1;
        if ((*(v84 + 120 * v81) & 0x80000000) != 0)
        {
          goto LABEL_117;
        }
      }

      LODWORD(v81) = v98;
LABEL_117:
      ;
    }

    while (v81 != v80);
  }

  v99 = (v9 + 776);
  v100 = 64;
  v101.i64[0] = -1;
  v101.i64[1] = -1;
  do
  {
    v102 = *v99;
    v103 = vmovn_s32(vmvnq_s8(vceqq_s32(*v99, v101)));
    if (v103.i8[0])
    {
      v99->i32[0] = v102.i32[0] + 1000;
    }

    if (v103.i8[2])
    {
      v99->i32[1] = v102.i32[1] + 1000;
    }

    if (v103.i8[4])
    {
      v99->i32[2] = v102.i32[2] + 1000;
    }

    if (v103.i8[6])
    {
      v99->i32[3] = v102.i32[3] + 1000;
    }

    ++v99;
    v100 -= 4;
  }

  while (v100);
  (*(**(v9 + 8) + 72))(*(v9 + 8));
  *(v9 + 112) = 0;
  result = (*(**(v9 + 26) + 72))(*(v9 + 26));
  *(v9 + 256) = 0;
  v106 = *(v9 + 17);
  if (v106)
  {
    for (k = 0; k < v106; ++k)
    {
      v108 = *(v9 + 19) + 48 * k;
      if (*(v108 + 24))
      {
        v109 = 0;
        v110 = 0;
        do
        {
          v111 = (*(v108 + 40) + v109);
          result = (*(**v111 + 72))(*v111, v105);
          v111[48] = 0;
          ++v110;
          v109 += 56;
        }

        while (*(v108 + 24) > v110);
        v106 = *(v9 + 17);
      }
    }
  }

  v132 = *(v9 + 48);
  if (v132)
  {
    v112 = 0;
    v113 = *(v9 + 22);
    while (1)
    {
      v114 = *v113;
      v113 += 30;
      if (v114 < 0)
      {
        break;
      }

      if (v132 == ++v112)
      {
        LODWORD(v112) = *(v9 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v112) = 0;
  }

  while (v112 != v132)
  {
    v115 = *(v9 + 22) + 120 * v112;
    v117 = *(v115 + 16);
    v116 = v115 + 16;
    result = (*(*v117 + 72))(v117);
    *(v116 + 48) = 0;
    v119 = *(v116 + 72);
    if (v119)
    {
      for (m = 0; m < v119; ++m)
      {
        v121 = *(v116 + 88) + 48 * m;
        if (*(v121 + 24))
        {
          v122 = 0;
          v123 = 0;
          do
          {
            v124 = (*(v121 + 40) + v122);
            result = (*(**v124 + 72))(*v124, v118);
            v124[48] = 0;
            ++v123;
            v122 += 56;
          }

          while (*(v121 + 24) > v123);
          v119 = *(v116 + 72);
        }
      }
    }

    v125 = *(v9 + 48);
    if (v125 <= v112 + 1)
    {
      v125 = v112 + 1;
    }

    while (v125 - 1 != v112)
    {
      LODWORD(v112) = v112 + 1;
      if ((*(*(v9 + 22) + 120 * v112) & 0x80000000) != 0)
      {
        goto LABEL_155;
      }
    }

    LODWORD(v112) = v125;
LABEL_155:
    ;
  }

  return result;
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 184 * a2 + 152;
    v9 = a2;
    do
    {
      v10 = v3[4];
      *(v10 + v8) = 0;
      v11 = v10 + v8 - 144;
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v10 + v8 - 72);
      result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v11);
      ++v9;
      v8 += 184;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 184 * v4 + 168;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 9) = 0uLL;
        *(v7 - 8) = 0uLL;
        *(v7 - 5) = 0uLL;
        *(v7 - 4) = 0uLL;
        *(v7 - 2) = 0uLL;
        *(v7 - 1) = 0uLL;
        *(v7 - 3) = 0uLL;
        *(v7 - 7) = 0uLL;
        *(v7 - 6) = 0uLL;
        *(v7 - 20) = 0;
        *(v7 - 19) = 0;
        *(v7 - 21) = -1;
        *(v7 - 36) = 1;
        *(v7 - 17) = 0;
        *(v7 - 16) = 0;
        *(v7 - 11) = 0;
        *(v7 - 10) = 0;
        *(v7 - 18) = 1;
        *(v7 - 8) = 0;
        *(v7 - 7) = 0;
        v6 += 184;
        *v7 = 0;
        v7[1] = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::RenderGraphResourceAllocationManager::onFrameFinish(re::RenderGraphResourceAllocationManager *this)
{
  v1 = this;
  v2 = *(*(this + 7) + 112);
  if (!v2)
  {
    re::ProfilerConfig::isStatisticCollectionEnabled(this);
    goto LABEL_113;
  }

  v3 = *(v2 + 1648);
  if (v3 && v3[204] == 1 && (v3[17] & 1) == 0)
  {
    goto LABEL_183;
  }

  for (i = 0; ; i = v3[177] & 1)
  {
    v5 = *(v2 + 1664);
    if (v5)
    {
      v5 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v5);
      i |= v5;
    }

    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
    if (isStatisticCollectionEnabled && (i & 1) != 0)
    {
      v7 = *(v1 + 17);
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(v1 + 19);
        v11 = 48 * v7;
        do
        {
          v12 = v10[3];
          v8 += v12;
          v13 = *v10;
          v10 += 6;
          v9 += v13 * v12;
          v11 -= 48;
        }

        while (v11);
        v14 = v9 + 0x800000;
        v15 = v8 + 1;
      }

      else
      {
        v15 = 1;
        v14 = 0x800000;
      }

      v16 = *(v1 + 48);
      if (v16)
      {
        v17 = 0;
        v18 = *(v1 + 22);
        while (1)
        {
          v19 = *v18;
          v18 += 30;
          if (v19 < 0)
          {
            break;
          }

          if (v16 == ++v17)
          {
            LODWORD(v17) = *(v1 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v17) = 0;
      }

      if (v17 == v16)
      {
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v21 = 0;
        v20 = 0;
        v22 = *(v1 + 22);
        do
        {
          ++v21;
          v20 += 0x800000;
          v23 = v22 + 120 * v17;
          v24 = *(v23 + 88);
          if (v24)
          {
            v25 = *(v23 + 104);
            v26 = 48 * v24;
            do
            {
              v27 = v25[3];
              v21 += v27;
              v28 = *v25;
              v25 += 6;
              v20 += v28 * v27;
              v26 -= 48;
            }

            while (v26);
          }

          if (v16 <= v17 + 1)
          {
            v29 = v17 + 1;
          }

          else
          {
            v29 = *(v1 + 48);
          }

          while (v29 - 1 != v17)
          {
            LODWORD(v17) = v17 + 1;
            if ((*(v22 + 120 * v17) & 0x80000000) != 0)
            {
              goto LABEL_35;
            }
          }

          LODWORD(v17) = v29;
LABEL_35:
          ;
        }

        while (v17 != v16);
      }

      v30 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
      if (v30)
      {
        v30 = re::profilerThreadContext(v30);
        v31 = *(v30 + 152);
        if (v31)
        {
          v32 = v31[648].u64[0];
          if (v32 >= v21 + v15)
          {
            v32 = v21 + v15;
          }

          v31[648].i64[0] = v32;
          v33 = v31[648].u64[1];
          if (v33 <= v21 + v15)
          {
            v33 = v21 + v15;
          }

          v31[648].i64[1] = v33;
          v34 = vdupq_n_s64(1uLL);
          v34.i64[0] = v21 + v15;
          v31[649] = vaddq_s64(v31[649], v34);
          *(v30 + 184) = 0;
        }
      }

      v35 = re::ProfilerConfig::isStatisticCollectionEnabled(v30);
      if (v35)
      {
        v35 = re::profilerThreadContext(v35);
        v36 = *(v35 + 152);
        if (v36)
        {
          v37 = v36[656].u64[0];
          if (v37 >= v20 + v14)
          {
            v37 = v20 + v14;
          }

          v36[656].i64[0] = v37;
          v38 = v36[656].u64[1];
          if (v38 <= v20 + v14)
          {
            v38 = v20 + v14;
          }

          v36[656].i64[1] = v38;
          v39 = vdupq_n_s64(1uLL);
          v39.i64[0] = v20 + v14;
          v36[657] = vaddq_s64(v36[657], v39);
          *(v35 + 184) = 0;
        }
      }

      v40 = re::ProfilerConfig::isStatisticCollectionEnabled(v35);
      if (v40)
      {
        v40 = re::profilerThreadContext(v40);
        v41 = *(v40 + 152);
        if (v41)
        {
          v42 = v41[664].u64[0];
          if (v42 >= v21)
          {
            v42 = v21;
          }

          v41[664].i64[0] = v42;
          v43 = v41[664].u64[1];
          if (v43 <= v21)
          {
            v43 = v21;
          }

          v41[664].i64[1] = v43;
          v44 = vdupq_n_s64(1uLL);
          v44.i64[0] = v21;
          v41[665] = vaddq_s64(v41[665], v44);
          *(v40 + 184) = 0;
        }
      }

      v45 = re::ProfilerConfig::isStatisticCollectionEnabled(v40);
      if (v45)
      {
        v45 = re::profilerThreadContext(v45);
        v46 = *(v45 + 152);
        if (v46)
        {
          v47 = v46[672].u64[0];
          if (v47 >= v20)
          {
            v47 = v20;
          }

          v46[672].i64[0] = v47;
          v48 = v46[672].u64[1];
          if (v48 <= v20)
          {
            v48 = v20;
          }

          v46[672].i64[1] = v48;
          v49 = vdupq_n_s64(1uLL);
          v49.i64[0] = v20;
          v46[673] = vaddq_s64(v46[673], v49);
          *(v45 + 184) = 0;
        }
      }

      v50 = re::ProfilerConfig::isStatisticCollectionEnabled(v45);
      if (v50)
      {
        v50 = re::profilerThreadContext(v50);
        v51 = *(v50 + 152);
        if (v51)
        {
          v52 = *(v1 + 219);
          v53 = v51[680].u64[0];
          if (v53 >= v52)
          {
            v53 = *(v1 + 219);
          }

          v51[680].i64[0] = v53;
          v54 = v51[680].u64[1];
          if (v54 <= v52)
          {
            v54 = v52;
          }

          v51[680].i64[1] = v54;
          v55 = vdupq_n_s64(1uLL);
          v55.i64[0] = v52;
          v51[681] = vaddq_s64(v51[681], v55);
          *(v50 + 184) = 0;
        }
      }

      v56 = re::ProfilerConfig::isStatisticCollectionEnabled(v50);
      if (v56)
      {
        v56 = re::profilerThreadContext(v56);
        v57 = *(v56 + 152);
        if (v57)
        {
          v58 = *(v1 + 221);
          v59 = v57[696].u64[0];
          if (v59 >= v58)
          {
            v59 = *(v1 + 221);
          }

          v57[696].i64[0] = v59;
          v60 = v57[696].u64[1];
          if (v60 <= v58)
          {
            v60 = v58;
          }

          v57[696].i64[1] = v60;
          v61 = vdupq_n_s64(1uLL);
          v61.i64[0] = v58;
          v57[697] = vaddq_s64(v57[697], v61);
          *(v56 + 184) = 0;
        }
      }

      v62 = re::ProfilerConfig::isStatisticCollectionEnabled(v56);
      if (v62)
      {
        v62 = re::profilerThreadContext(v62);
        v63 = *(v62 + 152);
        if (v63)
        {
          v64 = *(v1 + 215);
          v65 = v63[704].u64[0];
          if (v65 >= v64)
          {
            v65 = *(v1 + 215);
          }

          v63[704].i64[0] = v65;
          v66 = v63[704].u64[1];
          if (v66 <= v64)
          {
            v66 = v64;
          }

          v63[704].i64[1] = v66;
          v67 = vdupq_n_s64(1uLL);
          v67.i64[0] = v64;
          v63[705] = vaddq_s64(v63[705], v67);
          *(v62 + 184) = 0;
        }
      }

      v68 = re::ProfilerConfig::isStatisticCollectionEnabled(v62);
      if (v68)
      {
        v68 = re::profilerThreadContext(v68);
        v69 = *(v68 + 152);
        if (v69)
        {
          v70 = *(v1 + 220);
          v71 = v69[720].u64[0];
          if (v71 >= v70)
          {
            v71 = *(v1 + 220);
          }

          v69[720].i64[0] = v71;
          v72 = v69[720].u64[1];
          if (v72 <= v70)
          {
            v72 = v70;
          }

          v69[720].i64[1] = v72;
          v73 = vdupq_n_s64(1uLL);
          v73.i64[0] = v70;
          v69[721] = vaddq_s64(v69[721], v73);
          *(v68 + 184) = 0;
        }
      }

      v74 = re::ProfilerConfig::isStatisticCollectionEnabled(v68);
      if (v74)
      {
        v74 = re::profilerThreadContext(v74);
        v75 = *(v74 + 152);
        if (v75)
        {
          v76 = *(v1 + 216);
          v77 = v75[712].u64[0];
          if (v77 >= v76)
          {
            v77 = *(v1 + 216);
          }

          v75[712].i64[0] = v77;
          v78 = v75[712].u64[1];
          if (v78 <= v76)
          {
            v78 = v76;
          }

          v75[712].i64[1] = v78;
          v79 = vdupq_n_s64(1uLL);
          v79.i64[0] = v76;
          v75[713] = vaddq_s64(v75[713], v79);
          *(v74 + 184) = 0;
        }
      }

      v80 = re::ProfilerConfig::isStatisticCollectionEnabled(v74);
      if (v80)
      {
        v80 = re::profilerThreadContext(v80);
        v81 = *(v80 + 152);
        if (v81)
        {
          v82 = *(v1 + 217);
          v83 = v81[688].u64[0];
          if (v83 >= v82)
          {
            v83 = *(v1 + 217);
          }

          v81[688].i64[0] = v83;
          v84 = v81[688].u64[1];
          if (v84 <= v82)
          {
            v84 = v82;
          }

          v81[688].i64[1] = v84;
          v85 = vdupq_n_s64(1uLL);
          v85.i64[0] = v82;
          v81[689] = vaddq_s64(v81[689], v85);
          *(v80 + 184) = 0;
        }
      }

      v86 = re::ProfilerConfig::isStatisticCollectionEnabled(v80);
      if (v86)
      {
        v87 = re::profilerThreadContext(v86);
        v88 = *(v87 + 152);
        if (v88)
        {
          v89 = *(v1 + 214);
          v90 = v88[728].u64[0];
          if (v90 >= v89)
          {
            v90 = *(v1 + 214);
          }

          v88[728].i64[0] = v90;
          v91 = v88[728].u64[1];
          if (v91 <= v89)
          {
            v91 = v89;
          }

          v88[728].i64[1] = v91;
          v92 = vdupq_n_s64(1uLL);
          v92.i64[0] = v89;
          v88[729] = vaddq_s64(v88[729], v92);
          *(v87 + 184) = 0;
        }
      }
    }

LABEL_113:
    re::RenderGraphResourceAllocationManager::startSetup(v1);
    v94 = *(v1 + 17);
    if (!v94)
    {
      break;
    }

    v95 = 0;
    v96 = 0;
    v97 = 0;
    while (1)
    {
      v98 = *(v1 + 19) + 48 * v95;
      if (*(v98 + 24) >= 1)
      {
        break;
      }

LABEL_131:
      if (v94 <= ++v95)
      {
        if (v94 && v96 && !v97)
        {
          do
          {
            v106 = *(v1 + 19) + 48 * v97;
            if (*(v106 + 24) >= 1)
            {
              v107 = (*(v106 + 24) & 0x7FFFFFFFLL) + 1;
              v108 = 56 * (*(v106 + 24) & 0x7FFFFFFFLL) - 56;
              do
              {
                if (*(v106 + 24) <= v107 - 2)
                {
                  goto LABEL_186;
                }

                v109 = *(v106 + 40) + v108;
                if (*(v109 + 49) == 1)
                {
                  re::internal::destroyPersistent<re::Heap>(*v109);
                  if (*(v106 + 24) <= v107 - 2)
                  {
                    goto LABEL_189;
                  }

                  *(*(v106 + 40) + v108) = 0;
                  re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::removeAt(v106 + 8, v107 - 2);
                }

                --v107;
                v108 -= 56;
              }

              while (v107 > 1);
              v94 = *(v1 + 17);
            }

            ++v97;
          }

          while (v94 > v97);
        }

        goto LABEL_144;
      }
    }

    v99 = (*(v98 + 24) & 0x7FFFFFFFLL) + 1;
    v100 = 56 * (*(v98 + 24) & 0x7FFFFFFFLL) - 56;
    while (1)
    {
      v101 = v99 - 2;
      if (*(v98 + 24) <= v99 - 2)
      {
        break;
      }

      v102 = *(v98 + 40);
      v103 = *(v102 + v100);
      v104 = *v103;
      if (*(v1 + 1136) == 1)
      {
        (*(v104 + 88))(v103, v93);
      }

      else
      {
        (*(v104 + 80))(v103, v93);
      }

      v105 = v102 + v100;
      *(v105 + 24) = 0;
      *(v105 + 32) = *(v102 + v100 + 32) + 1;
      if (*(v102 + v100 + 48) == 1)
      {
        if (*(v102 + v100 + 49))
        {
          ++v97;
        }

        else
        {
          ++v96;
        }
      }

      else if ((*(v102 + v100 + 49) & 1) == 0)
      {
        if (*(v98 + 24) <= v101)
        {
          goto LABEL_187;
        }

        re::internal::destroyPersistent<re::Heap>(*(*(v98 + 40) + v100));
        if (*(v98 + 24) <= v101)
        {
          goto LABEL_188;
        }

        *(*(v98 + 40) + v100) = 0;
        re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::removeAt(v98 + 8, v99 - 2);
      }

      --v99;
      v100 -= 56;
      if (v99 <= 1)
      {
        v94 = *(v1 + 17);
        goto LABEL_131;
      }
    }

LABEL_182:
    v1 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_183:
    ;
  }

LABEL_144:
  v110 = *(v1 + 8);
  v111 = *v110;
  if (*(v1 + 1136) == 1)
  {
    (*(v111 + 88))(v110, v93);
  }

  else
  {
    (*(v111 + 80))(v110, v93);
  }

  *(v1 + 11) = 0;
  ++*(v1 + 24);
  result = (*(**(v1 + 26) + 80))(*(v1 + 26));
  *(v1 + 29) = 0;
  ++*(v1 + 60);
  v114 = *(v1 + 48);
  if (v114)
  {
    v115 = 0;
    v116 = *(v1 + 22);
    while (1)
    {
      v117 = *v116;
      v116 += 30;
      if (v117 < 0)
      {
        break;
      }

      if (v114 == ++v115)
      {
        LODWORD(v115) = *(v1 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v115) = 0;
  }

  if (v115 == v114)
  {
    return result;
  }

  v134 = *(v1 + 48);
  do
  {
    v118 = *(v1 + 22) + 120 * v115;
    v121 = *(v118 + 16);
    v120 = v118 + 16;
    v119 = v121;
    v122 = *v121;
    if (*(v1 + 1136) == 1)
    {
      result = (*(v122 + 88))(v119, v113);
    }

    else
    {
      result = (*(v122 + 80))(v119, v113);
    }

    *(v120 + 24) = 0;
    ++*(v120 + 32);
    v123 = *(v120 + 72);
    if (!v123)
    {
      goto LABEL_173;
    }

    for (j = 0; j < v123; ++j)
    {
      v125 = *(v120 + 88) + 48 * j;
      if (*(v125 + 24) < 1)
      {
        continue;
      }

      v126 = (*(v125 + 24) & 0x7FFFFFFFLL) + 1;
      v127 = 56 * (*(v125 + 24) & 0x7FFFFFFFLL) - 56;
      do
      {
        v128 = v126 - 2;
        if (*(v125 + 24) <= v126 - 2)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_182;
        }

        v129 = *(v125 + 40);
        v130 = *(v129 + v127);
        v131 = *v130;
        if (*(v1 + 1136) == 1)
        {
          result = (*(v131 + 88))(v130, v113);
        }

        else
        {
          result = (*(v131 + 80))(v130, v113);
        }

        v132 = v129 + v127;
        *(v132 + 24) = 0;
        *(v132 + 32) = *(v129 + v127 + 32) + 1;
        if ((*(v129 + v127 + 48) & 1) == 0)
        {
          if (*(v125 + 24) <= v128)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_185:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_186:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_187:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_188:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_189:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          re::internal::destroyPersistent<re::Heap>(*(*(v125 + 40) + v127));
          if (*(v125 + 24) <= v128)
          {
            goto LABEL_185;
          }

          *(*(v125 + 40) + v127) = 0;
          result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::removeAt(v125 + 8, v126 - 2);
        }

        --v126;
        v127 -= 56;
      }

      while (v126 > 1);
      v123 = *(v120 + 72);
    }

LABEL_173:
    v133 = *(v1 + 48);
    if (v133 <= v115 + 1)
    {
      v133 = v115 + 1;
    }

    while (v133 - 1 != v115)
    {
      LODWORD(v115) = v115 + 1;
      if ((*(*(v1 + 22) + 120 * v115) & 0x80000000) != 0)
      {
        goto LABEL_179;
      }
    }

    LODWORD(v115) = v133;
LABEL_179:
    ;
  }

  while (v115 != v134);
  return result;
}

uint64_t re::RenderGraphResourceAllocationManager::startSetup(uint64_t this)
{
  *(this + 1344) = 0;
  ++*(this + 1352);
  *(this + 1384) = 0;
  ++*(this + 1392);
  *(this + 1424) = 0;
  ++*(this + 1432);
  *(this + 1464) = 0;
  ++*(this + 1472);
  *(this + 1504) = 0;
  ++*(this + 1512);
  *(this + 1544) = 0;
  ++*(this + 1552);
  *(this + 1584) = 0;
  ++*(this + 1592);
  *(this + 1624) = 0;
  ++*(this + 1632);
  *(this + 1648) = 1;
  return this;
}

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::removeAt(uint64_t a1, unint64_t a2)
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
    v5 = v4 + 56 * v2;
    v6 = v4 + 56 * a2;
    *v6 = *(v5 - 56);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6 + 8, v5 - 48);
    *(v6 + 48) = *(v5 - 8);
    v2 = *(a1 + 16);
  }

  result = re::DynamicArray<unsigned long>::deinit(*(a1 + 32) + 56 * v2 - 48);
  --*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::RenderCommandEncoder>(void *a1, id *a2)
{
  v2 = a1[209];
  if (v2)
  {
    v5 = (a1[211] + 40);
    while (*(v5 - 4) != *a2)
    {
      v5 += 12;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    re::RenderGraphResourceAllocationManager::markLastAccess(a1, *(v5 - 1), *v5);
    v7 = *(v5 - 1);
    if (*(a1 + v7 + 194) != -1)
    {
      [*a2 waitForFence:a1[v7 + 33] beforeStages:*v5];
    }

    if (a1[198])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        [*a2 waitForFence:a1[*(a1[200] + v8 + 4) + 33] beforeStages:*(a1[200] + v8 + 8)];
        ++v9;
        v8 += 12;
      }

      while (a1[198] > v9);
    }
  }

  else
  {
LABEL_5:
    v6 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", v10, 2u);
    }
  }
}

uint64_t re::RenderGraphResourceAllocationManager::markLastAccess(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v36 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = a3;
  if (*(result + 1648) == 1)
  {
    *(result + 1648) = 0;
    if (*(result + 1344))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(*(result + 1360) + v6);
        v9 = *(result + 1072);
        if (v9 <= v8)
        {
          goto LABEL_61;
        }

        v10 = *(result + 1088) + 184 * v8;
        *(v10 + 16) = 0;
        *(v10 + 24) += 2;
        ++v7;
        v6 += 8;
      }

      while (*(result + 1344) > v7);
    }

    if (*(result + 1424))
    {
      v11 = 0;
      do
      {
        v8 = *(*(result + 1440) + 4 * v11);
        v9 = *(result + 1072);
        if (v9 <= v8)
        {
          goto LABEL_62;
        }

        v12 = *(result + 1088) + 184 * v8;
        *(v12 + 88) = 0;
        *(v12 + 96) += 2;
      }

      while (*(result + 1424) > ++v11);
    }

    if (*(result + 1384))
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v8 = *(*(result + 1400) + v13);
        v9 = *(result + 1112);
        if (v9 <= v8)
        {
          goto LABEL_63;
        }

        v15 = *(result + 1128) + 184 * v8;
        *(v15 + 16) = 0;
        *(v15 + 24) += 2;
        ++v14;
        v13 += 8;
      }

      while (*(result + 1384) > v14);
    }

    if (*(result + 1464))
    {
      v16 = 0;
      while (1)
      {
        v8 = *(*(result + 1480) + 4 * v16);
        v9 = *(result + 1112);
        if (v9 <= v8)
        {
          break;
        }

        v17 = *(result + 1128) + 184 * v8;
        *(v17 + 88) = 0;
        *(v17 + 96) += 2;
        if (*(result + 1464) <= ++v16)
        {
          goto LABEL_18;
        }
      }

LABEL_65:
      v22 = 0;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 789;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_66:
      v22 = 0;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 789;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_67:
      v22 = 0;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 789;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v22 = 0;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 789;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_69:
      v22 = 0;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 789;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_70:
      v22 = 0;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 789;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_18:
  if (*(result + 1344))
  {
    v9 = 0;
    v18 = 0;
    v3 = 184;
    while (1)
    {
      v8 = *(v5[170] + v9);
      v4 = v5[134];
      if (v4 <= v8)
      {
        break;
      }

      result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v31, v5[136] + 184 * v8 + 8, &v20);
      if ((v31 & 1) == 0)
      {
        v4 = v5[134];
        if (v4 <= v8)
        {
          goto LABEL_64;
        }

        result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[136] + 184 * v8 + 8), &v20);
      }

      ++v18;
      v9 += 8;
      if (v5[168] <= v18)
      {
        goto LABEL_25;
      }
    }

    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_56;
  }

LABEL_25:
  if (v5[178])
  {
    v9 = 0;
    while (1)
    {
      v8 = *(v5[180] + 4 * v9);
      v3 = v5[134];
      if (v3 <= v8)
      {
        break;
      }

      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v31, v5[136] + 184 * v8 + 80, &v20);
      if ((v31 & 1) == 0)
      {
        v3 = v5[134];
        if (v3 <= v8)
        {
          goto LABEL_66;
        }

        re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[136] + 184 * v8 + 80), &v20);
      }

      v3 = v5[134];
      if (v3 <= v8)
      {
        goto LABEL_57;
      }

      result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v31, v5[136] + 184 * v8 + 8, &v20);
      if ((v31 & 1) == 0)
      {
        v3 = v5[134];
        if (v3 <= v8)
        {
          goto LABEL_67;
        }

        result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[136] + 184 * v8 + 8), &v20);
      }

      if (v5[178] <= ++v9)
      {
        goto LABEL_36;
      }
    }

LABEL_56:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

LABEL_36:
  if (v5[173])
  {
    v9 = 0;
    v19 = 0;
    v3 = 184;
    while (1)
    {
      v8 = *(v5[175] + v9);
      v4 = v5[139];
      if (v4 <= v8)
      {
        break;
      }

      result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v31, v5[141] + 184 * v8 + 8, &v20);
      if ((v31 & 1) == 0)
      {
        v4 = v5[139];
        if (v4 <= v8)
        {
          goto LABEL_68;
        }

        result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[141] + 184 * v8 + 8), &v20);
      }

      ++v19;
      v9 += 8;
      if (v5[173] <= v19)
      {
        goto LABEL_43;
      }
    }

LABEL_58:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_60:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_63:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    v22 = 0;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

LABEL_43:
  if (v5[183])
  {
    v9 = 0;
    while (1)
    {
      v8 = *(v5[185] + 4 * v9);
      v3 = v5[139];
      if (v3 <= v8)
      {
        goto LABEL_59;
      }

      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v31, v5[141] + 184 * v8 + 80, &v20);
      if ((v31 & 1) == 0)
      {
        v3 = v5[139];
        if (v3 <= v8)
        {
          goto LABEL_69;
        }

        re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[141] + 184 * v8 + 80), &v20);
      }

      v3 = v5[139];
      if (v3 <= v8)
      {
        goto LABEL_60;
      }

      result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v31, v5[141] + 184 * v8 + 8, &v20);
      if ((v31 & 1) == 0)
      {
        v3 = v5[139];
        if (v3 <= v8)
        {
          goto LABEL_70;
        }

        result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[141] + 184 * v8 + 8), &v20);
      }

      if (v5[183] <= ++v9)
      {
        return result;
      }
    }
  }

  return result;
}

void re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::BlitCommandEncoder>(uint64_t a1, id *a2)
{
  v11 = 0;
  v12[0] = 0;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v12[1] = v5;
  v13 = 0;
  v14 = -1;
  v15 = 2;
  re::ObjCObject::operator=(&v11, a2);
  v14 = *(a1 + 1040);
  v15 = *(a1 + 1048);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::add((a1 + 1656), &v11);
  re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::BlitCommandEncoder>(a1, a2);
  *(a1 + 4 * *(a1 + 1044) + 776) = *(a1 + 1040);
  v6 = *(a1 + 1036) + 1;
  *(a1 + 1036) = v6;
  v7 = *(a1 + 1032) + 1;
  v8 = -v7 < 0;
  v9 = -v7 & 0x3F;
  v10 = v7 & 0x3F;
  if (!v8)
  {
    v10 = -v9;
  }

  *(a1 + 1032) = v10;
  *(a1 + 1040) = v6;
  *(a1 + 1044) = v10;
  *(a1 + 1048) = 2;
  *(a1 + 1649) = 1;

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v12);
}

id re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  *v5 = *a2;
  re::mtl::RenderCommandEncoder::RenderCommandEncoder((v5 + 8), (a2 + 8));
  result = *(a2 + 24);
  *(v5 + 24) = result;
  v7 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::BlitCommandEncoder>(void *a1, id *a2)
{
  v2 = a1[209];
  if (v2)
  {
    v5 = (a1[211] + 40);
    while (*(v5 - 5) != *a2)
    {
      v5 += 12;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    re::RenderGraphResourceAllocationManager::markLastAccess(a1, *(v5 - 1), *v5);
    v7 = *(v5 - 1);
    if (*(a1 + v7 + 194) != -1)
    {
      [*a2 waitForFence:a1[v7 + 33]];
    }

    v8 = a1[198];
    if (v8)
    {
      v9 = 0;
      for (i = 0; i < v8; ++i)
      {
        v11 = (a1[200] + v9);
        if (*v11 != *(v5 - 2) || *(v11 + 1) != *(v5 - 1))
        {
          [*a2 waitForFence:a1[v11[1] + 33]];
          v8 = a1[198];
        }

        v9 += 12;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", v12, 2u);
    }
  }
}

void re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::ComputeCommandEncoder>(uint64_t a1, id *a2)
{
  v11 = 0;
  v12[0] = 0;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v12[1] = v5;
  v13 = 0;
  v14 = -1;
  v15 = 2;
  re::ObjCObject::operator=(&v13, a2);
  v14 = *(a1 + 1040);
  v15 = *(a1 + 1048);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::add((a1 + 1656), &v11);
  re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::ComputeCommandEncoder>(a1, a2);
  *(a1 + 4 * *(a1 + 1044) + 776) = *(a1 + 1040);
  v6 = *(a1 + 1036) + 1;
  *(a1 + 1036) = v6;
  v7 = *(a1 + 1032) + 1;
  v8 = -v7 < 0;
  v9 = -v7 & 0x3F;
  v10 = v7 & 0x3F;
  if (!v8)
  {
    v10 = -v9;
  }

  *(a1 + 1032) = v10;
  *(a1 + 1040) = v6;
  *(a1 + 1044) = v10;
  *(a1 + 1048) = 2;
  *(a1 + 1649) = 1;

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v12);
}

void re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::ComputeCommandEncoder>(void *a1, id *a2)
{
  v2 = a1[209];
  if (v2)
  {
    v5 = (a1[211] + 40);
    while (*(v5 - 2) != *a2)
    {
      v5 += 12;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    re::RenderGraphResourceAllocationManager::markLastAccess(a1, *(v5 - 1), *v5);
    v7 = *(v5 - 1);
    if (*(a1 + v7 + 194) != -1)
    {
      [*a2 waitForFence:a1[v7 + 33]];
    }

    v8 = a1[198];
    if (v8)
    {
      v9 = 0;
      for (i = 0; i < v8; ++i)
      {
        v11 = (a1[200] + v9);
        if (*v11 != *(v5 - 2) || *(v11 + 1) != *(v5 - 1))
        {
          [*a2 waitForFence:a1[v11[1] + 33]];
          v8 = a1[198];
        }

        v9 += 12;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", v12, 2u);
    }
  }
}

void re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::RenderCommandEncoder>(uint64_t a1, id *a2)
{
  v11 = 0;
  v12[0] = 0;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v12[1] = v5;
  v13 = 0;
  v14 = -1;
  v15 = 2;
  re::mtl::RenderCommandEncoder::operator=(v12, a2);
  v14 = *(a1 + 1040);
  v15 = *(a1 + 1048);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::add((a1 + 1656), &v11);
  re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::RenderCommandEncoder>(a1, a2);
  *(a1 + 4 * *(a1 + 1044) + 776) = *(a1 + 1040);
  v6 = *(a1 + 1036) + 1;
  *(a1 + 1036) = v6;
  v7 = *(a1 + 1032) + 1;
  v8 = -v7 < 0;
  v9 = -v7 & 0x3F;
  v10 = v7 & 0x3F;
  if (!v8)
  {
    v10 = -v9;
  }

  *(a1 + 1032) = v10;
  *(a1 + 1040) = v6;
  *(a1 + 1044) = v10;
  *(a1 + 1048) = 2;
  *(a1 + 1649) = 1;

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v12);
}

void re::RenderGraphResourceAllocationManager::addCompleteFence(re::RenderGraphResourceAllocationManager *this, re::mtl::ComputeCommandEncoder *a2)
{
  v2 = *(this + 209);
  if (v2)
  {
    v3 = *a2;
    v4 = (*(this + 211) + 32);
    while (*(v4 - 1) != v3)
    {
      v4 += 6;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v6 = (this + 1608);

    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(v6, v4);
  }

  else
  {
LABEL_5:
    v5 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", v7, 2u);
    }
  }
}

void re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::RenderCommandEncoder>(void *a1, void **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[209];
  if (v2)
  {
    v3 = a1;
    v4 = 0;
    v5 = a1[211];
    a1 = *a2;
    v6 = -32;
    while (*(v5 + 8) != a1)
    {
      ++v4;
      v6 -= 48;
      v5 += 48;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    [a1 updateFence:v3[*(v5 + 36) + 33] afterStages:2];
    if (v3[209] <= v4)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v3 + 201), (v3[211] - v6));

    re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::removeAt((v3 + 207), v4);
  }

  else
  {
LABEL_5:
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", buf, 2u);
    }
  }
}

void re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::removeAt(uint64_t a1, unint64_t a2)
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
    v5 = v4 + 48 * v2;
    v6 = (v5 - 48);
    v7 = v4 + 48 * a2;
    if (v7 != v5 - 48)
    {
      v8 = *v6;
      *v6 = 0;
      v9 = *v7;
      *v7 = v8;
    }

    re::mtl::RenderCommandEncoder::operator=((v7 + 8), (v5 - 40));
    v10 = (v7 + 24);
    v11 = (v5 - 24);
    if (v7 + 24 != v5 - 24)
    {
      v12 = *v11;
      *v11 = 0;
      v13 = *v10;
      *v10 = v12;
    }

    v14 = *(v5 - 16);
    *(v7 + 40) = *(v5 - 8);
    *(v7 + 32) = v14;
    v2 = *(a1 + 16);
  }

  v15 = *(a1 + 32) + 48 * v2;

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder((v15 - 40));
  --*(a1 + 16);
  ++*(a1 + 24);
}

void re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::BlitCommandEncoder>(void *a1, void **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[209];
  if (v2)
  {
    v3 = a1;
    v4 = 0;
    v5 = a1[211];
    a1 = *a2;
    v6 = -32;
    while (*v5 != a1)
    {
      ++v4;
      v6 -= 48;
      v5 += 48;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    [a1 updateFence:v3[*(v5 + 36) + 33]];
    if (v3[209] <= v4)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v3 + 201), (v3[211] - v6));

    re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::removeAt((v3 + 207), v4);
  }

  else
  {
LABEL_5:
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", buf, 2u);
    }
  }
}

void re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::ComputeCommandEncoder>(void *a1, void **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[209];
  if (v2)
  {
    v3 = a1;
    v4 = 0;
    v5 = a1[211];
    a1 = *a2;
    v6 = -32;
    while (*(v5 + 24) != a1)
    {
      ++v4;
      v6 -= 48;
      v5 += 48;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    [a1 updateFence:v3[*(v5 + 36) + 33]];
    if (v3[209] <= v4)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v3 + 201), (v3[211] - v6));

    re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::removeAt((v3 + 207), v4);
  }

  else
  {
LABEL_5:
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", buf, 2u);
    }
  }
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::RenderGraphResourceAllocationManager::processResourceHazards(_anonymous_namespace_ *this)
{
  v2 = this;
  v42 = *MEMORY[0x1E69E9840];
  v3 = *(this + 168);
  if (v3)
  {
    v1 = *(this + 170);
    v4 = v1 + 8 * v3;
    do
    {
      v5 = *v1;
      v6 = *(v1 + 4);
      v1 += 8;
      LODWORD(v37) = v5;
      BYTE4(v37) = 0;
      DWORD2(v37) = v6;
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v2 + 1488), &v37);
    }

    while (v1 != v4);
  }

  v7 = *(v2 + 178);
  if (v7)
  {
    v1 = *(v2 + 180);
    v8 = 4 * v7;
    do
    {
      v9 = *v1;
      v1 += 4;
      LODWORD(v37) = v9;
      BYTE4(v37) = 1;
      DWORD2(v37) = 2;
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v2 + 1488), &v37);
      v8 -= 4;
    }

    while (v8);
  }

  v10 = *(v2 + 173);
  if (v10)
  {
    v1 = *(v2 + 175);
    v11 = v1 + 8 * v10;
    do
    {
      v12 = *v1;
      v13 = *(v1 + 4);
      v1 += 8;
      LODWORD(v37) = v12;
      BYTE4(v37) = 0;
      DWORD2(v37) = v13;
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v2 + 1528), &v37);
    }

    while (v1 != v11);
  }

  v14 = *(v2 + 183);
  if (v14)
  {
    v1 = *(v2 + 185);
    v15 = 4 * v14;
    do
    {
      v16 = *v1;
      v1 += 4;
      LODWORD(v37) = v16;
      BYTE4(v37) = 1;
      DWORD2(v37) = 2;
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v2 + 1528), &v37);
      v15 -= 4;
    }

    while (v15);
  }

  v17 = *(v2 + 188);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = (*(v2 + 190) + 12 * v18);
      v20 = *v19;
      if (*(v2 + 134) <= v20)
      {
        break;
      }

      v21 = *(v2 + 136) + 184 * v20;
      if (*(v19 + 4))
      {
        v22 = 8;
      }

      else
      {
        v22 = 80;
      }

      v23 = v21 + v22;
      if (*(v21 + v22 + 8))
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = v23 + 24;
          if ((*(v23 + 16) & 1) == 0)
          {
            v26 = *(v23 + 32);
          }

          v1 = v1 & 0xFFFFFFFF00000000 | v19[2];
          this = re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence((v2 + 1328), *(v26 + v24), v1);
          ++v25;
          v24 += 12;
        }

        while (*(v23 + 8) > v25);
        v17 = *(v2 + 188);
      }

      if (v17 <= ++v18)
      {
        goto LABEL_26;
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_41:
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_26:
  v27 = *(v2 + 193);
  if (v27)
  {
    v28 = 0;
    while (1)
    {
      v29 = (*(v2 + 195) + 12 * v28);
      v30 = *v29;
      if (*(v2 + 139) <= v30)
      {
        break;
      }

      v31 = *(v2 + 141) + 184 * v30;
      if (*(v29 + 4))
      {
        v32 = 8;
      }

      else
      {
        v32 = 80;
      }

      v33 = v31 + v32;
      if (*(v31 + v32 + 8))
      {
        v34 = 0;
        v35 = 0;
        do
        {
          v36 = v33 + 24;
          if ((*(v33 + 16) & 1) == 0)
          {
            v36 = *(v33 + 32);
          }

          v1 = v1 & 0xFFFFFFFF00000000 | v29[2];
          this = re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence((v2 + 1328), *(v36 + v34), v1);
          ++v35;
          v34 += 12;
        }

        while (*(v33 + 8) > v35);
        v27 = *(v2 + 193);
      }

      if (v27 <= ++v28)
      {
        return this;
      }
    }

    goto LABEL_41;
  }

  return this;
}

uint64_t re::RenderGraphResourceAllocationManager::heapGroupHierarchyFor(re::RenderGraphResourceAllocationManager *this, unint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return this + 64;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v17, this + 160, a2, v5);
  if (HIDWORD(v17) != 0x7FFFFFFF)
  {
    return *(this + 22) + 120 * HIDWORD(v17) + 16;
  }

  v23 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  memset(v24, 0, 24);
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, this + 160, a2, v5);
  if (*&v24[12] == 0x7FFFFFFF)
  {
    v6 = re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 160, *&v24[8], *v24);
    *(v6 + 16) = 0u;
    v7 = v6 + 16;
    *(v6 + 8) = a2;
    *(&v17 + 1) = 0;
    *(v6 + 32) = 0u;
    v18 = 0u;
    *(v6 + 56) = 0;
    LODWORD(v19) = 1;
    *(v6 + 48) = 1;
    *(v6 + 64) = 0;
    *(&v19 + 1) = 0;
    *(&v20 + 1) = 0;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0;
    v21 = 0u;
    *(v6 + 104) = 0;
    v23 = 0;
    v22 = 1;
    *(v6 + 96) = 1;
    ++*(this + 50);
  }

  else
  {
    v7 = *(this + 22) + 120 * *&v24[12] + 16;
  }

  re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::deinit(&v20 + 8);
  if (*(&v17 + 1) && *(&v19 + 1))
  {
    (*(**(&v17 + 1) + 40))();
  }

  re::RenderGraphResourceAllocationManager::allocateSmallBlockHeap(&v17, this, a2);
  *v7 = v17;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v7 + 8, &v17 + 8);
  *(v7 + 48) = v20;
  if (*(&v17 + 1) && *(&v19 + 1))
  {
    (*(**(&v17 + 1) + 40))();
  }

  v8 = *(this + 2);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(this + 4) + 8 * v9++);
      if (v10 >> 30)
      {
        break;
      }

      if (v8 == v9)
      {
        goto LABEL_20;
      }
    }

    v8 = v9;
  }

LABEL_20:
  re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::resize((v7 + 56), v8);
  if (*(v7 + 72))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = re::RenderGraphResourceAllocationManager::indexToSize(this, v12);
      v14 = *(v7 + 72);
      if (v14 <= v12)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v24 = 136315906;
        *&v24[4] = "operator[]";
        *&v24[12] = 1024;
        *&v24[14] = 789;
        *&v24[18] = 2048;
        *&v24[20] = v12;
        v25 = 2048;
        v26 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = (*(v7 + 88) + v11);
      *v15 = v13;
      if (v15[2] <= 0x7F)
      {
        re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity(v15 + 1, 0x80uLL);
        v14 = *(v7 + 72);
      }

      ++v12;
      v11 += 48;
    }

    while (v14 > v12);
  }

  return v7;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(v3, v10 + 1);
    v11 = *(v3 + 4) + 2;
    *(v3 + 4) = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = (v3 + 24);
    goto LABEL_19;
  }

  v4 = *(result + 1);
  v5 = *(result + 4);
  if ((v5 & 1) == 0)
  {
    v6 = *(result + 3);
    v8 = v4 >= v6;
    v7 = v4 + 1;
    v8 = !v8 || v6 >= v7;
    if (!v8)
    {
      v9 = 2 * v6;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = v4 + 1;
  if (v7 < 5)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v9 = 8;
LABEL_14:
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(result, v13);
  if (*(v3 + 4))
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(v3 + 4);
LABEL_19:
  v14 = v12 + 12 * *(v3 + 1);
  v15 = *a2;
  *(v14 + 8) = *(a2 + 2);
  *v14 = v15;
  ++*(v3 + 1);
  *(v3 + 4) += 2;
  return result;
}

uint64_t DeviceHeap::name(DeviceHeap *this)
{
  if (*(this + 32))
  {
    return *(this + 5);
  }

  else
  {
    return this + 33;
  }
}

id DeviceHeap::texture@<X0>(DeviceHeap *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(this + 9) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 11) + 8 * a2);
  *a3 = result;
  return result;
}

id DeviceHeap::buffer@<X0>(DeviceHeap *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(this + 14) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 16) + 8 * a2);
  *a3 = result;
  return result;
}

uint64_t MetalHeap::name(MetalHeap *this)
{
  if (*(this + 40))
  {
    return *(this + 6);
  }

  else
  {
    return this + 41;
  }
}

id *MetalHeap::texture@<X0>(MetalHeap *this@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  result = re::DataArray<re::TextureAtlasTile>::tryGet(this + 64, a2);
  if (result)
  {
    result = *result;
  }

  *a3 = result;
  return result;
}

id *MetalHeap::buffer@<X0>(MetalHeap *this@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  result = re::DataArray<re::TextureAtlasTile>::tryGet(this + 128, a2);
  if (result)
  {
    result = *result;
  }

  *a3 = result;
  return result;
}

uint64_t MetalPlacementHeap::name(MetalPlacementHeap *this)
{
  if (*(this + 40))
  {
    return *(this + 6);
  }

  else
  {
    return this + 41;
  }
}

id *MetalPlacementHeap::texture@<X0>(MetalPlacementHeap *this@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  result = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(this + 64, a2);
  if (result)
  {
    result = *result;
  }

  *a3 = result;
  return result;
}

id *MetalPlacementHeap::buffer@<X0>(MetalPlacementHeap *this@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  result = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(this + 128, a2);
  if (result)
  {
    result = *result;
  }

  *a3 = result;
  return result;
}

uint64_t CachingHeap::name(CachingHeap *this)
{
  if (*(this + 32))
  {
    return *(this + 5);
  }

  else
  {
    return this + 33;
  }
}

id CachingHeap::texture@<X0>(CachingHeap *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(this + 9) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 11) + 8 * a2);
  *a3 = result;
  return result;
}

id CachingHeap::buffer@<X0>(CachingHeap *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(this + 14) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 16) + 8 * a2);
  *a3 = result;
  return result;
}

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::deinit(uint64_t a1)
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
        v5 = 48 * v4;
        v6 = v3 + 8;
        do
        {
          re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::deinit(v6);
          v6 += 48;
          v5 -= 48;
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

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::deinit(uint64_t a1)
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
        v6 = v3 + 8;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          v6 += 56;
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

uint64_t re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(a1, v4);
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 12 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 12 * v12), 12 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 12 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 12 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

void *re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
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

        memcpy(v14, v16, 12 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0xCuLL))
      {
        v2 = 12 * a2;
        v10 = (*(*v5 + 32))(*result, 12 * a2, 4);
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

          result = memcpy(v10, v13, 12 * v4[1]);
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

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 12, a2);
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

uint64_t re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::copy(a1, a2);
      }

      else
      {
        *(a1 + 8) = 0;
      }

      *(a1 + 16) += 2;
    }

    else if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(a1, v5);
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(a1, *(a2 + 8));
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 12 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 12 * v12), 12 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 12 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 12 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

_anonymous_namespace_ *re::DataArray<MetalHeap::TextureEntry>::allocBlock(void *a1)
{
  v3 = 24 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

_anonymous_namespace_ *re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock(void *a1)
{
  v3 = 40 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

uint64_t re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::EntryBase::free(uint64_t result)
{
  if ((*result & 0x80000000) != 0)
  {
    v2 = result;
    *result &= ~0x80000000;
    v3 = *(result + 8);
    if (v3)
    {

      *(v2 + 8) = 0;
    }

    return re::DynamicArray<CachingHeap::TextureEntry>::deinit(v2 + 24);
  }

  return result;
}

double re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::EntryBase::free(a1[2] + v3);
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

id re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::findEntry<CachingHeap::TextureCacheKey>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a3 + 8)) ^ ((0xBF58476D1CE4E5B9 * *(a3 + 8)) >> 27));
  v7 = v6 ^ (v6 >> 31);
  result = [*a3 hash];
  v9 = (result + 64 * v7 + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
  v10 = 0x7FFFFFFF;
  if (*a2)
  {
    v11 = v9 % *(a2 + 24);
    v12 = *(*(a2 + 8) + 4 * v11);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(a2 + 16);
      v10 = 0x7FFFFFFF;
      v14 = 0x7FFFFFFF;
      while (1)
      {
        v15 = v12;
        v16 = v13 + 72 * v12;
        if (*(v16 + 16) == *(a3 + 8))
        {
          result = [*(v16 + 8) isEqual_];
          if (result)
          {
            v10 = v15;
            goto LABEL_11;
          }

          v13 = *(a2 + 16);
        }

        v12 = *(v13 + 72 * v15) & 0x7FFFFFFF;
        v14 = v15;
        if (v12 == 0x7FFFFFFF)
        {
          v14 = v15;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v14 = 0x7FFFFFFF;
LABEL_11:
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 12) = v10;
  *(a1 + 16) = v14;
  return result;
}

void *re::DynamicArray<CachingHeap::TextureEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<CachingHeap::TextureEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          *(v11 + 8) = *(v8 + 8);
          v11[2] = *(v8 + 16);
          *(v11 + 3) = *(v8 + 24);
          *(v8 + 16) = 0;
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 40;
          v11 += 5;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::DynamicArray<CachingHeap::TextureEntry>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        do
        {
          *(v3 + 16) = 0;
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 40;
          v5 -= 40;
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

uint64_t re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::allocEntry(a1, v17[4] % *(a1 + 24));
                *(v18 + 8) = *(v17 - 3);
                *(v17 - 3) = 0;
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 56) = 0;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 48) = 0;
                v19 = *v17;
                *(v18 + 24) = *(v17 - 1);
                *(v18 + 32) = v19;
                *(v17 - 1) = 0;
                *v17 = 0;
                v20 = *(v18 + 40);
                *(v18 + 40) = v17[1];
                v17[1] = v20;
                v21 = *(v18 + 56);
                *(v18 + 56) = v17[3];
                v17[3] = v21;
                ++*(v17 + 4);
                ++*(v18 + 48);
              }

              v17 += 9;
              --v16;
            }

            while (v16);
          }

          re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 72 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 72 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 72 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 64) = a3;
  ++*(a1 + 28);
  return v22 + 72 * v5;
}

__n128 std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      NS::SharedPtr<MTL::Buffer>::operator=(a3, v5);
      *(a3 + 8) = *(v5 + 8);
      *(a3 + 16) = *(v5 + 16);
      result = *(v5 + 24);
      *(a3 + 24) = result;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return result;
}

double re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          v8 = (v6 + v4);
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 6);
          re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::deinit((v8 + 18));
          re::DynamicArray<unsigned long>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 120;
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

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit(uint64_t a1)
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
        v5 = 184 * v4;
        v6 = v3 + 80;
        do
        {
          *(v6 + 72) = 0;
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v6);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v6 - 72);
          v6 += 184;
          v5 -= 184;
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

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::deinit(uint64_t a1)
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
        v5 = 48 * v4;
        do
        {

          re::mtl::RenderCommandEncoder::~RenderCommandEncoder((v3 + 1));
          v6 = *v3;
          v3 += 6;

          v5 -= 48;
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

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::setCapacity(v5, a2);
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
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v11[2] = 0;
          v11[3] = 0;
          v13 = v8[1];
          v14 = v8[2];
          v15 = (v8 + 1);
          v11[1] = v13;
          v11[2] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[3];
          v11[3] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[5];
          v11[5] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 8);
          re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::deinit(v15);
          v11 += 6;
          v8 = (v15 + 40);
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

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity(v5, a2);
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
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *(v11 + 8) = 0;
          v13 = v8[1];
          v14 = v8[2];
          v15 = (v8 + 1);
          v11[1] = v13;
          v11[2] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[3];
          v11[3] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[5];
          v11[5] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 8);
          *(v11 + 24) = *(v15 + 40);
          re::DynamicArray<unsigned long>::deinit(v15);
          v11 += 7;
          v8 = (v15 + 48);
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

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB8uLL))
        {
          v2 = 184 * a2;
          result = (*(*result + 32))(result, 184 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 184, a2);
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
        v10 = v8 + 184 * v9;
        v11 = (v7 + 10);
        v12 = v8 + 80;
        do
        {
          *(v11 - 80) = *(v12 - 80);
          re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::DynamicOverflowArray(v11 - 72, v12 - 72);
          re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::DynamicOverflowArray(v11, v12);
          *(v11 + 72) = *(v12 + 72);
          v13 = *(v12 + 80);
          *(v11 + 96) = *(v12 + 96);
          *(v11 + 80) = v13;
          *(v12 + 72) = 0;
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v12);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v12 - 72);
          v11 += 184;
          v14 = v12 + 104;
          v12 += 184;
        }

        while (v14 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 16))
  {
    if (*(a2 + 8))
    {
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::move(a1, a2);
    }

    else
    {
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
      *a1 = *a2;
      *(a2 + 16) += 2;
      *(a1 + 16) += 2;
    }
  }

  else
  {
    *(a1 + 16) = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::setCapacity(v5, a2);
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
        v10 = v8 + 48 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        do
        {
          v13 = *(v11 - 1);
          *(v11 - 1) = 0;
          *v12 = v13;
          v14 = *v11;
          *v11 = 0;
          *(v12 + 1) = v14;
          v15 = *(v11 + 2);
          *(v11 + 1) = 0;
          *(v11 + 2) = 0;
          v12[3] = v15;
          v16 = *(v11 + 3);
          *(v12 + 10) = *(v11 + 8);
          v12[4] = v16;

          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v11);
          v12 += 6;
          v17 = v11 + 40;
          v11 += 3;
        }

        while (v17 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 32);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = &v4[3 * v5];
    v7 = 12 * v5;
    while (*v4 != *a3 || v4[1] != a3[1] || v4[2] != a3[2])
    {
      v4 += 3;
      v7 -= 12;
      if (!v7)
      {
        v4 = v6;
        break;
      }
    }
  }

  if (v3)
  {
    v8 = a2 + 24;
  }

  else
  {
    v8 = *(a2 + 32);
  }

  if (v4 == (v8 + 12 * v5))
  {
    *result = 0;
  }

  else
  {
    *result = 1;
    *(result + 8) = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 56;
            do
            {
              if ((*(v18 - 56) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 56) % *(a1 + 24));
                v20 = *(v18 - 40);
                *(v19 + 8) = *(v18 - 48);
                *(v19 + 16) = v20;
                *(v19 + 56) = 0;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 48) = 0;
                v21 = *(v18 - 24);
                *(v19 + 24) = *(v18 - 32);
                *(v19 + 32) = v21;
                *(v18 - 32) = 0;
                *(v18 - 24) = 0;
                v22 = *(v19 + 40);
                *(v19 + 40) = *(v18 - 16);
                *(v18 - 16) = v22;
                v23 = *(v19 + 56);
                *(v19 + 56) = *v18;
                *v18 = v23;
                ++*(v18 - 8);
                ++*(v19 + 48);
                *(v19 + 64) = *(v18 + 8);
                *(v19 + 104) = 0;
                *(v19 + 96) = 0;
                *(v19 + 80) = 0;
                *(v19 + 88) = 0;
                *(v19 + 72) = 0;
                v24 = *(v18 + 24);
                *(v19 + 72) = *(v18 + 16);
                *(v19 + 80) = v24;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                v25 = *(v19 + 88);
                *(v19 + 88) = *(v18 + 32);
                *(v18 + 32) = v25;
                v26 = *(v19 + 104);
                *(v19 + 104) = *(v18 + 48);
                *(v18 + 48) = v26;
                ++*(v18 + 40);
                ++*(v19 + 96);
              }

              v18 += 120;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 120 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 120 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 120 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 112) = a3;
  ++*(a1 + 28);
  return v27 + 120 * v5;
}

uint64_t re::FixedOccupancyGrid::settingOccupied(uint64_t this, int a2, int a3, unsigned int a4)
{
  v4 = (a2 + *(this + 64) * a3);
  if (64 - ((a2 + *(this + 64) * a3) & 0x3F) >= (a4 & 0x3F))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = v5 + (a4 >> 6);
  do
  {
    v7 = 64 - (v4 & 0x3F);
    if (v7 >= a4)
    {
      v7 = a4;
    }

    v8 = 0xFFFFFFFFFFFFFFFFLL >> -v7 << v4;
    v9 = v4 >> 3;
    v4 += v7;
    a4 -= v7;
    *(this + (v9 & 0x1FFFFFFFFFFFFFF8)) |= v8;
    --v6;
  }

  while (v6);
  return this;
}

uint64_t re::FixedOccupancyGrid::clearingOccupied(uint64_t this, int a2, int a3, unsigned int a4)
{
  v4 = (a2 + *(this + 64) * a3);
  if (64 - ((a2 + *(this + 64) * a3) & 0x3F) >= (a4 & 0x3F))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = v5 + (a4 >> 6);
  do
  {
    v7 = 64 - (v4 & 0x3F);
    if (v7 >= a4)
    {
      v7 = a4;
    }

    v8 = 0xFFFFFFFFFFFFFFFFLL >> -v7 << v4;
    v9 = v4 >> 3;
    v4 += v7;
    a4 -= v7;
    *(this + (v9 & 0x1FFFFFFFFFFFFFF8)) &= ~v8;
    --v6;
  }

  while (v6);
  return this;
}

uint64_t re::FixedOccupancyGrid::setOccupied(uint64_t this, float32x4_t *a2, int a3)
{
  v3 = a2[1];
  v3.i64[1] = a2->i64[0];
  v4.i32[0] = vmovn_s32(vcgeq_f32(xmmword_1E3063230, v3)).u32[0];
  v4.i32[1] = vmovn_s32(vcgeq_f32(v3, xmmword_1E3063230)).i32[1];
  if ((vmaxv_u16(v4) & 1) == 0)
  {
    v5 = this;
    v6 = *a2;
    v7 = a2[1];
    v6.i32[3] = 0;
    v8 = vmaxnmq_f32(v6, 0);
    v8.i32[3] = 0;
    v7.i32[3] = 0;
    v8.i64[0] = vminnmq_f32(v8, xmmword_1E304F3C0).u64[0];
    v9 = vmaxnmq_f32(v7, 0);
    v9.i32[3] = 0;
    v9.i64[0] = vminnmq_f32(v9, xmmword_1E304F3C0).u64[0];
    v10 = *(this + 64);
    v11 = (v10 * v8.f32[0]);
    v12 = *(this + 68);
    v13 = vmuls_lane_f32(v12, *v8.f32, 1);
    v14 = vcvtps_u32_f32(v10 * v9.f32[0]);
    v15 = vcvtps_u32_f32(vmuls_lane_f32(v12, *v9.f32, 1));
    v16 = *(this + 72) == 0;
    if (a3)
    {
      v16 = a3 == 2;
    }

    if (v16)
    {
      if (v13 < v15)
      {
        v17 = v14 - v11;
        do
        {
          this = re::FixedOccupancyGrid::settingOccupied(v5, v11, v13++, v17);
        }

        while (v15 != v13);
      }
    }

    else if (*(this + 73) == 1 && v13 < v15)
    {
      v18 = v14 - v11;
      do
      {
        this = re::FixedOccupancyGrid::clearingOccupied(v5, v11, v13++, v18);
      }

      while (v15 != v13);
    }
  }

  return this;
}

_anonymous_namespace_ *re::RenderGraphNoClearProcessor::process(_anonymous_namespace_ *this, re::RenderGraphCompiled *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 44);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = *(a2 + 46) + 200 * i;
      v6 = *(v5 + 56);
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v36 = 0;
        v33 = 0;
        v34 = 0;
        v32 = 0;
        v35 = 0;
        do
        {
          v12 = *(v5 + 72) + v7;
          v13 = *(a2 + 37);
          v14 = *(v12 + 52);
          v15 = *(v13 + 16);
          if (v15 <= v14)
          {
            v37 = 0;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v38 = 136315906;
            v39 = "operator[]";
            v40 = 1024;
            v41 = 789;
            v42 = 2048;
            v43 = v14;
            v44 = 2048;
            v45 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            v37 = 0;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v38 = 136315906;
            v39 = "operator[]";
            v40 = 1024;
            v41 = 789;
            v42 = 2048;
            v43 = v11;
            v44 = 2048;
            v45 = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            v37 = 0;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v38 = 136315906;
            v39 = "operator[]";
            v40 = 1024;
            v41 = 789;
            v42 = 2048;
            v43 = v14;
            v44 = 2048;
            v45 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            v37 = 0;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v38 = 136315906;
            v39 = "operator[]";
            v40 = 1024;
            v41 = 789;
            v42 = 2048;
            v43 = v11;
            v44 = 2048;
            v45 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v16 = (*(v13 + 32) + 48 * v14);
          if (!*v16)
          {
            v14 = v16[7];
            v17 = *(a2 + 38);
            v15 = *(v17 + 16);
            if (v15 <= v14)
            {
              goto LABEL_48;
            }

            v18 = *(v12 + 4);
            v19 = v18 > 8 || ((1 << v18) & 0x1EE) == 0;
            if (!v19 && v18 != 5 && *(*(v17 + 32) + 112 * v14 + 60) == 2)
            {
              if (v10 >= v33)
              {
                v20 = v10 + 1;
                if (v33 < v10 + 1)
                {
                  if (v32)
                  {
                    v21 = 2 * v33;
                    if (!v33)
                    {
                      v21 = 8;
                    }

                    if (v21 <= v20)
                    {
                      v22 = v10 + 1;
                    }

                    else
                    {
                      v22 = v21;
                    }

                    this = re::DynamicArray<float *>::setCapacity(&v32, v22);
                    v8 = v35;
                  }

                  else
                  {
                    this = re::DynamicArray<float *>::setCapacity(&v32, v20);
                    v8 = v35 + 1;
                  }
                }

                v10 = v34;
                v9 = v36;
                v6 = *(v5 + 56);
              }

              *(v9 + 8 * v10++) = v12;
              v34 = v10;
              v35 = ++v8;
            }
          }

          ++v11;
          v7 += 64;
        }

        while (v6 > v11);
        if (v6)
        {
          v23 = *(a2 + 37);
          v24 = *(a2 + 38);
          v14 = *(v23 + 16);
          v25 = (*(v5 + 72) + 52);
          do
          {
            v11 = *v25;
            if (v14 <= v11)
            {
              goto LABEL_47;
            }

            v26 = (*(v23 + 32) + 48 * v11);
            if (!*v26)
            {
              v11 = v26[7];
              v15 = *(v24 + 16);
              if (v15 <= v11)
              {
                goto LABEL_49;
              }

              v27 = *(v25 - 12);
              if (v27 <= 8 && ((1 << v27) & 0x1EE) != 0)
              {
                v29 = *(v24 + 32) + 112 * v11;
                v31 = *(v29 + 60);
                v30 = (v29 + 60);
                if (v31 == 2)
                {
                  *v30 = 0;
                  if (v27 != 5)
                  {
                    *(v25 - 4) = 1;
                  }
                }
              }
            }

            v25 += 16;
          }

          while (--v6);
        }

        this = v32;
        *(v5 + 194) = v10 != 0;
        if (this)
        {
          if (v36)
          {
            this = (*(*this + 40))(this);
          }
        }

        v2 = *(a2 + 44);
      }
    }
  }

  return this;
}

uint64_t re::DeformationBufferAllocator::init(re::DeformationBufferAllocator *this, unint64_t a2)
{
}

BOOL re::DeformationBufferAllocator::updateAllocationDataFrameForInputHash(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  if (*(a1 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(a1 + 16) + 72 * a3);
  v5 = v4[1];
  if (v5 == a4)
  {
    *v4 = *a2;
  }

  return v5 == a4;
}

uint64_t re::DeformationBufferAllocator::resetAllocationData(uint64_t result, void *a2, unsigned int a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(result + 8) <= a3)
  {
LABEL_33:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  v4 = a4;
  v6 = *(result + 16) + 72 * a3;
  if (!*(v6 + 56))
  {
    *v6 = *a2;
    *(v6 + 8) = a4;
    goto LABEL_31;
  }

  if (*(result + 32) <= a3)
  {
    goto LABEL_34;
  }

  v7 = *(result + 40) + 56 * a3;
  v8 = *(v7 + 40);
  v9 = *(v7 + 8);
  if (v8 + 1 > 4 * v9)
  {
    result = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::setBucketsCapacity(v7, (v8 + 4) >> 2);
    v9 = *(v7 + 8);
  }

  if (v9 <= v8 >> 2)
  {
LABEL_35:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(v7 + 16))
  {
    v10 = v7 + 24;
  }

  else
  {
    v10 = *(v7 + 32);
  }

  v11 = *(v10 + 8 * (v8 >> 2));
  ++*(v7 + 40);
  ++*(v7 + 48);
  v12 = v11 + 72 * (v8 & 3);
  *v12 = *v6;
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  *(v12 + 24) = 0;
  *(v12 + 32) = 1;
  *(v12 + 40) = 0;
  *(v12 + 64) = 0;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  v14 = *(v6 + 16);
  if (v14)
  {
    v31 = v4;
    re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::init(v13, v14, *(v6 + 24));
    v15 = *(v6 + 56);
    if (v15 < *(v12 + 56))
    {
      result = std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>&,true>>(&v32, v6 + 16, 0, v6 + 16, *(v6 + 56), v13, 0);
      if (v15 != *(v12 + 56))
      {
        v16 = v15;
        do
        {
          result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](v13, v16);
          v17 = result;
          v18 = *(result + 48);
          if (v18 != -1)
          {
            result = (off_1F5D051B0[v18])(&v32, result + 24);
          }

          *(v17 + 48) = -1;
          ++v16;
        }

        while (v16 != *(v12 + 56));
      }

      goto LABEL_25;
    }

    re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::setBucketsCapacity(v13, (v15 + 3) >> 2);
    result = std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>&,true>>(&v32, v6 + 16, 0, v6 + 16, *(v12 + 56), v13, 0);
    v19 = *(v12 + 56);
    v20 = v15 - v19;
    if (v15 == v19)
    {
LABEL_25:
      *(v12 + 56) = v15;
      v4 = v31;
      goto LABEL_26;
    }

    v21 = 0;
    while (1)
    {
      v22 = v21 + *(v12 + 56);
      if (*(v12 + 24) <= v22 >> 2)
      {
        break;
      }

      v23 = v12 + 40;
      if ((*(v12 + 32) & 1) == 0)
      {
        v23 = *(v12 + 48);
      }

      v24 = *(v23 + 8 * (v22 >> 2)) + ((v22 & 3) << 6);
      v25 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](v6 + 16, v22);
      v26 = *(v25 + 16);
      *v24 = *v25;
      *(v24 + 16) = v26;
      *(v24 + 24) = 0;
      *(v24 + 48) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v24 + 24, v25 + 24);
      *(v24 + 56) = *(v25 + 56);
      if (v20 == ++v21)
      {
        goto LABEL_25;
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

LABEL_26:
  v27 = *(v6 + 56);
  *v6 = *a2;
  *(v6 + 8) = v4;
  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](v6 + 16, i);
      v29 = result;
      v30 = *(result + 48);
      if (v30 != -1)
      {
        result = (off_1F5D051B0[v30])(&v32, result + 24);
      }

      *(v29 + 48) = -1;
    }
  }

LABEL_31:
  *(v6 + 56) = 0;
  ++*(v6 + 64);
  return result;
}

unint64_t re::DeformationBufferAllocator::alloc(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = v51;
  v52 = *MEMORY[0x1E69E9840];
  *&v41 = a4;
  *(&v41 + 1) = a5;
  v8 = a6;
  v9 = a1[1];
  if (v9 <= a6)
  {
LABEL_41:
    v42 = 0;
    v7[4] = 0u;
    memset(v51, 0, 64);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v43 = 136315906;
    v44 = "operator[]";
    v45 = 1024;
    v46 = 468;
    v47 = 2048;
    v48 = v8;
    v49 = 2048;
    v50 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  v9 = a1[4];
  if (v9 <= a6)
  {
LABEL_42:
    v42 = 0;
    v7[4] = 0u;
    memset(v51, 0, 64);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v43 = 136315906;
    v44 = "operator[]";
    v45 = 1024;
    v46 = 468;
    v47 = 2048;
    v48 = v8;
    v49 = 2048;
    v50 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
    _os_crash();
    __break(1u);
  }

  v13 = a1[2] + 72 * a6;
  v14 = *(v13 + 56);
  v9 = a1[5] + 56 * a6;
  if (*(v9 + 40))
  {
    v8 = 0;
    do
    {
      v15 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](v9, v8);
      if ((*v15 & 0xFFFFFFFFFFFFFFFuLL) <= (*(a2 + 8) & 0xFFFFFFFFFFFFFFFuLL))
      {
        v18 = v15;
        if (v14 < v15[7] && *re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v15 + 2), v14) == a3)
        {
          v19 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v18 + 2), v14);
          if (re::VertexBufferFormat::operator==((v19 + 4), &v41) && *(re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v18 + 2), v14) + 60) == a7)
          {
            v37 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v18 + 2), v14);
            v38 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(v13 + 16);
            v39 = *(v37 + 16);
            *v38 = *v37;
            *(v38 + 16) = v39;
            *(v38 + 24) = 0;
            *(v38 + 48) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v38 + 24, v37 + 24);
            *(v38 + 56) = *(v37 + 56);
            v40 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v18 + 2), v14);
            *v40 = 0;
            *(v40 + 4) = 0x10000;
            *(v40 + 8) = 256;
            re::BufferSlice::deinit((v40 + 24));
            return v14;
          }
        }

        v20 = *(v9 + 40);
        if (v20 <= v8)
        {
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 848, v8, v20);
          _os_crash();
          __break(1u);
          goto LABEL_41;
        }

        if (v20 - 1 > v8)
        {
          v21 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](v9, v20 - 1);
          v22 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](v9, v8);
          *v22 = *v21;
          if (v22 != v21)
          {
            v24 = v22;
            v25 = *(v22 + 16);
            if (v25)
            {
              v26 = *(v21 + 16);
              if (v26 && v25 != v26)
              {
                goto LABEL_43;
              }
            }

            v51[0] = 0uLL;
            LODWORD(v51[1]) = 1;
            *(&v51[1] + 1) = 0;
            *&v51[2] = 0;
            v28 = *(v22 + 32);
            if (v28)
            {
              if (*(v22 + 24))
              {
                re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::move(v51, v22 + 16);
              }

              else
              {
                *&v51[0] = v25;
                *(v22 + 32) = v28 + 2;
                LODWORD(v51[1]) = 3;
              }
            }

            else
            {
              LODWORD(v51[1]) = 3;
              re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(v51, (v22 + 16));
            }

            re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::operator=(v24 + 16, v21 + 16);
            re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::operator=(v21 + 16, v51);
            if (*&v51[0] && (v51[1] & 1) == 0)
            {
              (*(**&v51[0] + 40))();
            }

            v29 = *(v24 + 56);
            *(v24 + 56) = *(v21 + 56);
            *(v21 + 56) = v29;
            ++*(v24 + 64);
            ++*(v21 + 64);
          }
        }

        v30 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](v9, *(v9 + 40) - 1);
        re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::deinit(v30 + 16);
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v30 + 16);
        v17 = *(v9 + 40) - 1;
        *(v9 + 40) = v17;
        ++*(v9 + 48);
      }

      else
      {
        ++v8;
        v17 = *(v9 + 40);
      }
    }

    while (v8 < v17);
  }

  if (a7)
  {
    LOBYTE(v51[0]) = a3;
    *(v51 + 4) = v41;
    *(v51 + 9) = *(&v41 + 5);
    v31 = [**(a2 + 16) newBufferWithLength:a7 options:0];
    *(&v51[1] + 1) = v31;
    LODWORD(v51[3]) = 0;
    DWORD2(v51[3]) = 0;
    HIDWORD(v51[3]) = a7;
    v32 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(v13 + 16);
    v33 = v51[1];
    *v32 = v51[0];
    *(v32 + 16) = v33;
    *(v32 + 24) = 0;
    *(v32 + 48) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v32 + 24, &v51[1] + 8);
    *(v32 + 56) = *(&v51[3] + 1);
    if (LODWORD(v51[3]) != -1)
    {
      (off_1F5D051B0[LODWORD(v51[3])])(&v43, &v51[1] + 8);
    }

    LODWORD(v51[3]) = -1;
    if (v31)
    {
    }
  }

  else
  {
    LOBYTE(v51[0]) = a3;
    *(v51 + 4) = v41;
    *(v51 + 9) = *(&v41 + 5);
    memset(&v51[1] + 8, 0, 40);
    v34 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(v13 + 16);
    v35 = v51[1];
    *v34 = v51[0];
    *(v34 + 16) = v35;
    *(v34 + 24) = 0;
    *(v34 + 48) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v34 + 24, &v51[1] + 8);
    *(v34 + 56) = *(&v51[3] + 1);
    if (LODWORD(v51[3]) != -1)
    {
      (off_1F5D051B0[LODWORD(v51[3])])(&v43, &v51[1] + 8);
    }
  }

  return v14;
}

uint64_t re::DeformationBufferAllocator::allocWithExistingBuffer(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = *(a1 + 8);
  if (v7 <= a5)
  {
    v24 = 0u;
    v25 = 0u;
    memset(v23, 0, sizeof(v23));
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 468;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(a1 + 16) + 72 * a5;
  v10 = *(v9 + 56);
  LOBYTE(v22) = a2;
  *(&v22 + 4) = a3;
  LOBYTE(v23[0]) = BYTE4(a4);
  HIDWORD(v22) = a4;
  BYTE8(v23[0]) = 0;
  LODWORD(v24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v23 + 8, a6);
  *(&v24 + 1) = *(a6 + 32);
  v11 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(v9 + 16);
  v12 = v23[0];
  *v11 = v22;
  *(v11 + 16) = v12;
  *(v11 + 24) = 0;
  *(v11 + 48) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11 + 24, v23 + 8);
  *(v11 + 56) = *(&v24 + 1);
  if (v24 != -1)
  {
    (off_1F5D051B0[v24])(&v14, v23 + 8);
  }

  return v10;
}

uint64_t re::FixedArray<re::DeformationBufferAllocator::DeformationStackAllocation>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x38E38E38E38E38FLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 72, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 72 * a3, 8);
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
      *result = 0xFFFFFFFFFFFFFFFLL;
      *(result + 24) = 0uLL;
      *(result + 40) = 0uLL;
      *(result + 56) = 0uLL;
      *(result + 8) = 0uLL;
      *(result + 32) = 1;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 64) = 0;
      *(result + 56) = 0;
      result += 72;
      --v6;
    }

    while (v6);
  }

  *result = 0xFFFFFFFFFFFFFFFLL;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 8) = 0u;
  *(result + 32) = 1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 64) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t re::FixedArray<re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x492492492492493)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 56 * a3, 8);
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
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *result = 0uLL;
      *(result + 16) = 1;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 48) = 0;
      result += 56;
      --v6;
    }

    while (v6);
  }

  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *result = 0u;
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

void *re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 288, 0);
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

              result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, v13 + 1);
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
    re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
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

uint64_t re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 256, 0);
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

              result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(v3, v13 + 1);
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>&,true>>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = result;
  if (a2 != a4 || a3 != a5)
  {
    v13 = a5 - 1;
    do
    {
      do
      {
        v14 = a3;
        v15 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a2, a3);
        v16 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a6, a7);
        v17 = *(v15 + 16);
        *v16 = *v15;
        *(v16 + 16) = v17;
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v16 + 24, v15 + 24);
        *(v16 + 56) = *(v15 + 56);
        a3 = v14 + 1;
        ++a7;
      }

      while (a2 != a4);
    }

    while (v13 != v14);
    a3 = a5;
  }

  *v12 = a2;
  v12[1] = a3;
  v12[2] = a6;
  v12[3] = a7;
  return result;
}

uint64_t re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<re::DeformationBufferAllocator::DeformationStackAllocation *,2ul>::setCapacity(a1, v4);
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + ((v2 & 3) << 6);
}

void *re::ProbeManager::init(re::ProbeManager *this, const re::RenderManager *a2)
{
  *(this + 1) = a2;
  v4 = 7;
  re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::setCapacity(this + 17, 7uLL);
  ++*(this + 40);
  do
  {
    LOBYTE(v8[0]) = 0;
    v5 = re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::add(this + 17, v8);
    --v4;
  }

  while (v4);
  v6 = re::DynamicArray<re::ProbeSpecularWorkload>::setCapacity(this + 43, 0x25uLL);
  ++*(this + 92);
  result = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(this + 56, 2uLL);
  ++*(this + 118);
  *(this + 808) = *(a2 + 369);
  return result;
}

void *re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::add(void *this, _OWORD *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Optional<re::ProbeManager::ProbeSlice>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 160 * v4;
  v6 = *a2;
  *v5 = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = a2[1];
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    *(v5 + 64) = a2[4];
    *(v5 + 80) = v9;
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    v10 = a2[6];
    v11 = a2[7];
    v12 = a2[9];
    *(v5 + 128) = a2[8];
    *(v5 + 144) = v12;
    *(v5 + 96) = v10;
    *(v5 + 112) = v11;
    v4 = v3[2];
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void re::ProbeManager::ensureAllocations(re::ProbeManager *this)
{
  v1 = (this + 128);
  if (!*(this + 16))
  {
    v14 = *(*(this + 1) + 208);
    v3 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v3 setStorageMode_];
    [v3 setTextureType_];
    [v3 setWidth_];
    [v3 setHeight_];
    [v3 setPixelFormat_];
    [v3 setMipmapLevelCount_];
    [v3 setProtectionOptions_];
    re::mtl::Device::makeTexture(v3, &v14, v42);
    NS::SharedPtr<MTL::Texture>::operator=(this + 13, v42);
    if (v42[0])
    {
    }

    re::mtl::Device::makeTexture(v3, &v14, v42);
    NS::SharedPtr<MTL::Texture>::operator=(this + 14, v42);
    if (v42[0])
    {
    }

    if (v3)
    {
    }

    v4 = *(this + 808);
    v5 = *(*(this + 1) + 208);
    v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v6 setStorageMode_];
    if (v4 == 1)
    {
      [v6 setTextureType_];
      [v6 setWidth_];
      [v6 setHeight_];
    }

    else
    {
      [v6 setTextureType_];
      [v6 setWidth_];
      [v6 setHeight_];
    }

    [v6 setArrayLength_];
    [v6 &selRef:115 stringByAppendingString:? :?0];
    [v6 setMipmapLevelCount_];
    [v6 setProtectionOptions_];
    re::mtl::Device::makeTexture(v6, (*(this + 1) + 208), &v14);
    NS::SharedPtr<MTL::Texture>::operator=(this + 10, &v14);
    if (v14)
    {
    }

    if (v6)
    {
    }

    if (*(this + 808) == 1)
    {
      v7 = *(*(this + 1) + 208);
      v8 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
      [v8 setStorageMode_];
      [v8 setTextureType_];
      [v8 off_1E8723878];
      [v8 &selRef_array];
      [v8 setArrayLength_];
      [v8 &selRef:115 stringByAppendingString:? :?0];
      [v8 setMipmapLevelCount_];
      [v8 setUsage_];
      re::mtl::Device::makeTexture(v8, (*(this + 1) + 208), &v14);
      NS::SharedPtr<MTL::Texture>::operator=(this + 11, &v14);
      if (v14)
      {
      }

      if (v8)
      {
      }

      if (*(this + 808))
      {
        v9 = *(*(this + 1) + 208);
        v10 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
        [v10 setStorageMode_];
        [v10 setTextureType_];
        [v10 off_1E8723878];
        [v10 &selRef_array];
        [v10 &selRef:115 stringByAppendingString:? :?0];
        [v10 setMipmapLevelCount_];
        [v10 setUsage_];
        re::mtl::Device::makeTexture(v10, (*(this + 1) + 208), &v14);
        NS::SharedPtr<MTL::Texture>::operator=(this + 15, &v14);
        if (v14)
        {
        }

        if (v10)
        {
        }
      }
    }

    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = 1;
    v16 = 1065353216;
    v14 = 0;
    v11 = *MEMORY[0x1E69E9B10];
    v12 = *(MEMORY[0x1E69E9B10] + 16);
    v37 = 0u;
    v38 = v11;
    v39 = v12;
    v40 = *(MEMORY[0x1E69E9B10] + 32);
    v41 = 0;
    *(this + 824) = 0;
    v13 = *(*(this + 1) + 208);
    v42[0] = [v13 newBufferWithBytes:&v14 length:864 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(v1, v42);
    if (v42[0])
    {
    }

    *(this + 184) = 0;
  }
}

void re::ProbeManager::addProbe(uint64_t a1, id a2, id *a3, char a4, __int128 *a5, float a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = [*a3 hash];
  re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew((a1 + 16), &v12, &v13);
  v13 = v12;
  v14 = *a3;
  v11 = a5[1];
  v15 = *a5;
  v16 = v11;
  v17 = a5[2];
  v18 = a6;
  v19 = a4;
  re::DynamicArray<re::ProbeManager::ProbeAdd>::add((a1 + 600), &v13);
  if (v14)
  {
  }
}

double re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew(void *a1, unint64_t *a2, unint64_t *a3)
{
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

__n128 re::DynamicArray<re::ProbeManager::ProbeAdd>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ProbeManager::ProbeAdd>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *(a2 + 8) = 0;
  result = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 61) = *(a2 + 61);
  *(v5 + 32) = v8;
  *(v5 + 48) = v9;
  *(v5 + 16) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::ProbeManager::updateProbe(uint64_t a1, uint64_t a2, id *a3, float a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v30[0] = a2;
  v7 = [*a3 hash];
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 16), v30);
  if (v8 != -1)
  {
    *(*(a1 + 24) + 16 * v8 + 8) = v7;
  }

  v9 = *(a1 + 616);
  if (v9)
  {
    v10 = (*(a1 + 632) + 8);
    while (*(v10 - 1) != v30[0])
    {
      v10 += 10;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }

    NS::SharedPtr<MTL::Buffer>::operator=(v10, a3);
  }

  else
  {
LABEL_7:
    v11 = *(a1 + 576);
    if (v11)
    {
      v12 = 0;
      for (i = 0; i < v11; ++i)
      {
        if (*(*(a1 + 592) + v12) == v30[0])
        {
          re::DynamicArray<re::ProbeManager::ProbeUpdate>::removeAt(a1 + 560, i);
          v11 = *(a1 + 576);
        }

        v12 += 24;
      }
    }

    v14 = *(a1 + 152);
    if (v14)
    {
      v15 = 0;
      v16 = v30[0];
      for (j = (*(a1 + 168) + 32); *(j - 32) != 1 || *(j - 1) != v30[0]; j += 160)
      {
        if (v14 == ++v15)
        {
          return;
        }
      }

      if (v14 <= v15)
      {
        v30[1] = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v29 = v15;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        v34 = 789;
        v35 = 2048;
        v36 = v29;
        v37 = 2048;
        v38 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v18 = *a3;
      v19 = v18;
      v20 = *j;
      v21 = *(a1 + 576);
      v22 = *(a1 + 568);
      if (v21 >= v22)
      {
        v23 = v21 + 1;
        if (v22 < v21 + 1)
        {
          if (*(a1 + 560))
          {
            v24 = 2 * v22;
            v25 = v22 == 0;
            v26 = 8;
            if (!v25)
            {
              v26 = v24;
            }

            if (v26 <= v23)
            {
              v27 = v23;
            }

            else
            {
              v27 = v26;
            }

            re::DynamicArray<re::ProbeManager::ProbeUpdate>::setCapacity((a1 + 560), v27);
          }

          else
          {
            re::DynamicArray<re::ProbeManager::ProbeUpdate>::setCapacity((a1 + 560), v23);
            ++*(a1 + 584);
          }
        }

        v21 = *(a1 + 576);
      }

      v28 = *(a1 + 592) + 24 * v21;
      *v28 = v16;
      *(v28 + 8) = v19;
      *(v28 + 16) = a4;
      *(v28 + 20) = v20;
      ++*(a1 + 576);
      ++*(a1 + 584);
    }
  }
}

void re::DynamicArray<re::ProbeManager::ProbeUpdate>::removeAt(uint64_t a1, unint64_t a2)
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
    v5 = v4 + 24 * v2;
    v6 = v4 + 24 * a2;
    *v6 = *(v5 - 24);
    NS::SharedPtr<MTL::Texture>::operator=((v6 + 8), (v5 - 16));
    v7 = *(v5 - 8);
    *(v6 + 20) = *(v5 - 4);
    *(v6 + 16) = v7;
    v2 = *(a1 + 16);
  }

  v8 = *(a1 + 32) + 24 * v2;
  v9 = *(v8 - 16);
  if (v9)
  {

    *(v8 - 16) = 0;
    v2 = *(a1 + 16);
  }

  *(a1 + 16) = v2 - 1;
  ++*(a1 + 24);
}

double re::ProbeManager::removeProbe(re::ProbeManager *this, unint64_t a2)
{
  v11 = a2;
  re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove(this + 16, &v11);
  v3 = *(this + 77);
  if (v3)
  {
    v4 = 0;
    for (i = 0; i < v3; ++i)
    {
      if (*(*(this + 79) + v4) == v11)
      {
        re::DynamicArray<re::ProbeManager::ProbeAdd>::removeAt(this + 600, i);
        v3 = *(this + 77);
      }

      v4 += 80;
    }
  }

  v6 = *(this + 72);
  if (v6)
  {
    v7 = 0;
    for (j = 0; j < v6; ++j)
    {
      if (*(*(this + 74) + v7) == v11)
      {
        re::DynamicArray<re::ProbeManager::ProbeUpdate>::removeAt(this + 560, j);
        v6 = *(this + 72);
      }

      v7 += 24;
    }
  }

  if ((*(this + 232) & 1) != 0 && *(this + 36) == v11)
  {
    re::ProbeManager::cancelSliceOperation(this);
    if (*(this + 768) == 1 && *(this + 98) == v11)
    {
      *(this + 768) = 0;
    }
  }

  v10 = 0;
  return re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew(this + 88, &v11, &v10);
}

BOOL re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 16 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v12 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v12;
    if (v9 >= 0x11 && v12.i64[0] < v9 >> 2)
    {
      re::HashBrown<long long,unsigned long,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

void re::DynamicArray<re::ProbeManager::ProbeAdd>::removeAt(uint64_t a1, unint64_t a2)
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
    v6 = v4 + 80 * a2;
    *v6 = *(v5 - 80);
    NS::SharedPtr<MTL::Texture>::operator=((v6 + 8), (v5 - 72));
    v7 = *(v5 - 64);
    v8 = *(v5 - 48);
    v9 = *(v5 - 32);
    *(v6 + 61) = *(v5 - 19);
    *(v6 + 32) = v8;
    *(v6 + 48) = v9;
    *(v6 + 16) = v7;
    v2 = *(a1 + 16);
  }

  v10 = *(a1 + 32) + 80 * v2;
  v11 = *(v10 - 72);
  if (v11)
  {

    *(v10 - 72) = 0;
    v2 = *(a1 + 16);
  }

  *(a1 + 16) = v2 - 1;
  ++*(a1 + 24);
}

uint64_t re::ProbeManager::cancelSliceOperation(re::ProbeManager *this)
{
  v9 = *MEMORY[0x1E69E9840];
  re::ProbeManager::freeSlice(this, *(this + 31));
  v3[0] = 0;
  re::Optional<re::ProbeManager::SliceOperation>::operator=(this + 232, v3);
  re::Optional<re::ProbeManager::SliceOperation>::~Optional(v3);
  if (*(this + 304) == 1)
  {
    *(this + 304) = 0;
  }

  if (*(this + 336) == 1)
  {
    *(this + 336) = 0;
  }

  *(this + 45) = 0;
  ++*(this + 92);
  if (*(this + 384) == 1)
  {
    *(this + 384) = 0;
  }

  *(this + 58) = 0;
  ++*(this + 118);
  v3[0] = 0;
  result = re::Optional<re::ProbeLatLongComputeWorkload>::operator=(this + 488, v3);
  if (v3[0] == 1)
  {
    if (v6)
    {
      if (v7)
      {
        (*(*v6 + 40))();
        v7 = 0;
        v8 = 0;
      }

      v6 = 0;
    }

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

double re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew(void *a1, unint64_t *a2, _DWORD *a3)
{
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

double re::ProbeManager::addProbeCallBack(re::ProbeManager *this, unint64_t a2)
{
  v4 = a2;
  v3 = 0;
  return re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::addNew(this + 80, &v4, &v3);
}

void re::ProbeManager::update(re::ProbeManager *this, float a2)
{
  re::ProbeManager::freeStaleTextureSlices(this);
  if ((*(this + 44) + *(this + 45)) <= 6)
  {
    re::ProbeManager::assignTextureSlices(this);
  }

  re::ProbeManager::updateWeights(this, a2);

  re::ProbeManager::regenerateBuffer(this);
}

uint64_t re::ProbeManager::freeStaleTextureSlices(uint64_t this)
{
  v1 = this;
  if (*(this + 768) == 1 && *(this + 800) >= 1.0)
  {
    v2 = *(this + 796);
    if (*(this + 152) <= v2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = *(this + 168) + 160 * v2;
    v4 = *(v3 + 144);
    if (*(v3 + 32) == 1)
    {
      *(v3 + 148) = v4;
    }

    else
    {
      *(v3 + 152) = v4;
    }

    this = re::ProbeManager::freeSlice(this, *(this + 792));
    if (*(v1 + 768) == 1)
    {
      *(v1 + 768) = 0;
    }
  }

  v5 = *(v1 + 152);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(v1 + 168);
      if (*(v8 + v6) == 1)
      {
        v9 = v8 + v6;
        if (*(v9 + 32))
        {
          v10 = 116;
        }

        else
        {
          v10 = 120;
        }

        if (*(v9 + v10 + 16) <= 0.0)
        {
          this = re::ProbeManager::freeSlice(v1, i);
          v5 = *(v1 + 152);
        }
      }

      v6 += 160;
    }
  }

  return this;
}

void re::ProbeManager::assignTextureSlices(re::ProbeManager *this)
{
  v85 = *MEMORY[0x1E69E9840];
  if ((*(this + 768) & 1) == 0)
  {
    while (1)
    {
      v41 = *(this + 72);
      if (!v41)
      {
        goto LABEL_2;
      }

      v42 = 0;
      v43 = *(this + 74) + 16;
      while (1)
      {
        v44 = *(this + 45) > 3u;
        if (*(v43 + 4))
        {
          v44 = *(this + 44) > 2u;
        }

        if (!v44)
        {
          break;
        }

        ++v42;
        v43 += 24;
        if (v41 == v42)
        {
          goto LABEL_2;
        }
      }

      v45 = *(v43 - 16);
      v46 = *(v43 - 8);
      v67 = *v43;
      v68 = *(v43 + 4);
      re::DynamicArray<re::ProbeManager::ProbeUpdate>::removeAt(this + 560, v42);
      v47 = v46;
      v48 = v47;
      v66 = v47;
      v2 = *(this + 19);
      if (v2)
      {
        break;
      }

LABEL_36:
      if (v47)
      {
        goto LABEL_37;
      }

LABEL_38:
      if (v46)
      {
      }

      if (*(this + 768) == 1)
      {
        goto LABEL_2;
      }
    }

    v49 = 0;
    v50 = *(this + 21);
    v51 = v50 + 136;
    while (*(v51 - 136) != 1 || *(v51 - 14) != v45)
    {
      ++v49;
      v51 += 40;
      if (v2 == v49)
      {
        goto LABEL_36;
      }
    }

    v52 = 0;
    while (1)
    {
      v53 = *v50;
      v50 += 160;
      if ((v53 & 1) == 0)
      {
        break;
      }

      if (v2 == ++v52)
      {
        goto LABEL_47;
      }
    }

    v1 = v52;
LABEL_47:
    if ((*(this + 768) & 1) == 0)
    {
      *(this + 768) = 1;
    }

    *(this + 776) = 0;
    *(this + 98) = v45;
    *(this + 198) = v49;
    *(this + 199) = v1;
    *(this + 200) = 0;
    if (v2 <= v49)
    {
      v69 = 0;
      memset(__src, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v71 = 136315906;
      v72 = "operator[]";
      v73 = 1024;
      *v74 = 789;
      *&v74[4] = 2048;
      *&v74[6] = v49;
      *&v74[14] = 2048;
      *&v74[16] = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v54 = v67;
    v55 = *(v51 - 104);
    if (v55)
    {
      v56 = v51 + 5;
      v57 = v51 + 1;
      v58 = v51[2];
      v59 = 0;
      v60 = v1;
    }

    else
    {
      v56 = v51 + 2;
      v57 = v51 + 3;
      v59 = *v51;
      v60 = v67;
      v58 = v1;
      v54 = 0;
    }

    v61 = v51 - 103;
    v62 = *v57;
    v63 = *v56;
    __src[0] = v55;
    *&__src[49] = *(v61 + 3);
    *&__src[65] = *(v61 + 4);
    *&__src[81] = *(v61 + 5);
    *&__src[96] = *(v61 + 95);
    *&__src[1] = *v61;
    *&__src[17] = *(v61 + 1);
    *&__src[33] = *(v61 + 2);
    v79 = v59;
    v80 = v54;
    v81 = v60;
    v82 = v58;
    v83 = v62;
    v84 = v63;
    v77[0] = &unk_1F5D05210;
    v77[1] = re::ProbeManager::updateProbeCallBack;
    v77[2] = 0;
    v77[3] = v77;
    re::ProbeManager::assignSliceToProbe(this, v1, v45, &v66, __src, v77);
    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v77);
    if (!v48)
    {
      goto LABEL_38;
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_2:
  v4 = *(this + 77);
  if (v4)
  {
    __asm { FMOV            V0.2S, #1.0 }

    v65 = HIDWORD(_D0);
    v10 = &dword_1E304E510;
    v11 = vld1_dup_f32(v10);
    v64 = v11.i32[1];
    do
    {
      v12 = 0;
      for (i = *(this + 79); ; i += 10)
      {
        v14 = *(this + 45) > 3u;
        if (*(i + 68))
        {
          v14 = *(this + 44) > 2u;
        }

        if (!v14)
        {
          break;
        }

        if (v4 == ++v12)
        {
          return;
        }
      }

      v15 = *i;
      v16 = i[1];
      *&v74[18] = *(i + 1);
      v75 = *(i + 2);
      *v76 = *(i + 3);
      *&v76[13] = *(i + 61);
      re::DynamicArray<re::ProbeManager::ProbeAdd>::removeAt(this + 600, v12);
      LOBYTE(v71) = 1;
      *&v74[2] = v15;
      *&v74[10] = v16;
      v17 = *(this + 19);
      if (v17)
      {
        v18 = 0;
        v19 = *(this + 21);
        while (1)
        {
          v20 = *v19;
          v19 += 160;
          if ((v20 & 1) == 0)
          {
            break;
          }

          if (v17 == ++v18)
          {
            goto LABEL_17;
          }
        }

        v1 = v18;
      }

LABEL_17:
      v21 = *&v76[16];
      if (v76[20] == 1)
      {
        v22.i64[0] = 0x3F0000003F000000;
        v22.i64[1] = 0x3F0000003F000000;
        v23 = vmulq_f32(*&v74[18], v22);
        v24 = vmulq_f32(v23, v23);
        v25 = __PAIR64__(v65, COERCE_UNSIGNED_INT(sqrtf(v24.f32[2] + vaddv_f32(*v24.f32))));
        v26 = 1;
        v27 = v1;
        v28 = *&v76[16];
      }

      else
      {
        v26 = 0;
        v25 = __PAIR64__(v64, COERCE_UNSIGNED_INT(fminf(*&v74[18], fminf(*&v74[22], *&v74[26]))));
        LODWORD(v2) = *&v76[16];
        v27 = *&v76[16];
        v21 = 1065353216;
        v28 = v1;
      }

      v29 = *&v75 * (*&v75 + *&v75);
      v30 = *(&v75 + 1) * (*(&v75 + 1) + *(&v75 + 1));
      v31 = *(&v75 + 2) * (*(&v75 + 2) + *(&v75 + 2));
      v32 = (*&v75 + *&v75) * *(&v75 + 1);
      v33 = (*&v75 + *&v75) * *(&v75 + 2);
      v34 = (*(&v75 + 1) + *(&v75 + 1)) * *(&v75 + 2);
      v35 = (*&v75 + *&v75) * *(&v75 + 3);
      v36 = (*(&v75 + 1) + *(&v75 + 1)) * *(&v75 + 3);
      v37 = (*(&v75 + 2) + *(&v75 + 2)) * *(&v75 + 3);
      *&v38 = 1.0 - (v30 + v31);
      *&v39 = v32 + v37;
      *&v40 = v33 - v36;
      *(&v38 + 1) = v32 - v37;
      *(&v39 + 1) = 1.0 - (v29 + v31);
      *(&v40 + 1) = v34 + v35;
      *&__src[24] = v33 + v36;
      __src[0] = v26;
      *&__src[16] = v38;
      *&__src[28] = 0;
      *&__src[40] = v34 - v35;
      *&__src[32] = v39;
      *&__src[44] = 0;
      *&__src[56] = 1.0 - (v29 + v30);
      *&__src[48] = v40;
      *&__src[60] = 0;
      *&__src[64] = *v76;
      *&__src[80] = *&v74[18];
      *&__src[96] = v25;
      v79 = 1065353216;
      v80 = v21;
      v81 = v27;
      v82 = v1;
      v83 = v28;
      v84 = v2;
      v70[0] = &unk_1F5D05210;
      v70[1] = re::ProbeManager::addProbeCallBack;
      v70[2] = 0;
      v70[3] = v70;
      re::ProbeManager::assignSliceToProbe(this, v1, *&v74[2], &v74[10], __src, v70);
      std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v70);
      if (*&v74[10])
      {
      }

      v4 = *(this + 77);
    }

    while (v4);
  }
}

void *re::ProbeManager::updateWeights(void *this, float a2)
{
  v3 = this;
  v61 = *MEMORY[0x1E69E9840];
  if (this[83] || this[91] || *(this + 768) == 1)
  {
    if (*(this + 768) == 1 && *(this + 776) == 1)
    {
      v4 = *(this + 200) + a2;
      if (v4 > 1.0)
      {
        v4 = 1.0;
      }

      if (v4 < 0.0)
      {
        v4 = 0.0;
      }

      *(this + 200) = v4;
      v5 = *(this + 198);
      v6 = this[19];
      if (v6 <= v5)
      {
        goto LABEL_81;
      }

      v7 = this[21];
      v8 = (v7 + 160 * v5);
      if (*v8 == 1)
      {
        v5 = *(this + 199);
        if (v6 <= v5)
        {
          goto LABEL_82;
        }

        v9 = (v7 + 160 * v5);
        if (*v9 == 1)
        {
          v10 = 1.0 - v4;
          if (v8[32])
          {
            v11 = 120;
          }

          else
          {
            v11 = 124;
          }

          *&v8[v11 + 16] = v10;
          if (v9[32])
          {
            v12 = 120;
          }

          else
          {
            v12 = 124;
          }

          *&v9[v12 + 16] = *(this + 200);
        }
      }
    }

    v6 = (this + 80);
    v13 = this[19];
    if (v13)
    {
      v14 = this[21] + 16;
      do
      {
        if (*(v14 - 16) == 1)
        {
          if (*(v14 + 16))
          {
            v15 = 116;
          }

          else
          {
            v15 = 120;
          }

          *(v14 + v15) = 1065353216;
        }

        v14 += 160;
        --v13;
      }

      while (v13);
    }

    v44 = this + 80;
    v16 = this[82];
    if (v16 >= 0x10)
    {
      v17 = 0;
      v18 = *v6;
      v19 = v16 >> 4;
      while (1)
      {
        v20 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v18), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v45 = v20 ^ 0xFFFFLL;
        if (v20 != 0xFFFFLL)
        {
          break;
        }

        v17 -= 16;
        ++v18;
        if (!--v19)
        {
          goto LABEL_53;
        }
      }

      v21 = __clz(__rbit64(v20 ^ 0xFFFFLL));
      v22 = v21 - v17;
      v46 = v21 - v17;
      if (v21 + 1 != v17)
      {
        v5 = 120;
        do
        {
          v23 = v44[1] + 16 * v22;
          v24 = *v23;
          v43 = *v23;
          v25 = *(v23 + 8) + a2;
          *(v23 + 8) = v25;
          v26 = v3[19];
          if (!v26)
          {
            goto LABEL_51;
          }

          v27 = 0;
          v28 = v3[21] + 16;
          while (*(v28 - 16) != 1 || *(v28 + 8) != v24)
          {
            ++v27;
            v28 += 160;
            if (v26 == v27)
            {
              goto LABEL_51;
            }
          }

          if (v26 <= v27)
          {
            v47 = 0;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v48 = 136315906;
            v49 = "operator[]";
            v50 = 1024;
            v51 = 789;
            v52 = 2048;
            v53 = v27;
            v54 = 2048;
            v55 = v26;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_80:
            v47 = 0;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v48 = 136315906;
            v49 = "operator[]";
            v50 = 1024;
            v51 = 789;
            v52 = 2048;
            v53 = v27;
            v54 = 2048;
            v55 = v26;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v44 = 0;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v48 = 136315906;
            v49 = "operator[]";
            v50 = 1024;
            v51 = 789;
            v52 = 2048;
            v53 = v5;
            v54 = 2048;
            v55 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_82:
            v44 = 0;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v48 = 136315906;
            v49 = "operator[]";
            v50 = 1024;
            v51 = 789;
            v52 = 2048;
            v53 = v5;
            v54 = 2048;
            v55 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          if (v25 > 1.0)
          {
            v25 = 1.0;
          }

          if (v25 < 0.0)
          {
            v25 = 0.0;
          }

          v29 = *(v28 + 16) ? 116 : 120;
          *(v28 + v29) = v25 * *(v28 + v29);
          if (*(v23 + 8) >= 1.0)
          {
LABEL_51:
            re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove((v3 + 80), &v43);
          }

          this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v44);
          v22 = v46;
        }

        while (v46 != -1);
      }
    }

LABEL_53:
    v6 = (v3 + 88);
    v44 = v3 + 88;
    v30 = v3[90];
    if (v30 >= 0x10)
    {
      v31 = 0;
      v32 = *v6;
      v33 = v30 >> 4;
      while (1)
      {
        v34 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v32), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v45 = v34 ^ 0xFFFFLL;
        if (v34 != 0xFFFFLL)
        {
          break;
        }

        v31 -= 16;
        ++v32;
        if (!--v33)
        {
          goto LABEL_77;
        }
      }

      v35 = __clz(__rbit64(v34 ^ 0xFFFFLL));
      v36 = v35 - v31;
      v46 = v35 - v31;
      if (v35 + 1 != v31)
      {
        v5 = 120;
        do
        {
          v37 = v44[1] + 16 * v36;
          v38 = *v37;
          v43 = *v37;
          v39 = *(v37 + 8) + a2;
          *(v37 + 8) = v39;
          v26 = v3[19];
          if (!v26)
          {
            goto LABEL_75;
          }

          v27 = 0;
          v40 = v3[21] + 16;
          while (*(v40 - 16) != 1 || *(v40 + 8) != v38)
          {
            ++v27;
            v40 += 160;
            if (v26 == v27)
            {
              goto LABEL_75;
            }
          }

          if (v26 <= v27)
          {
            goto LABEL_80;
          }

          v41 = 1.0 - v39;
          if (v41 > 1.0)
          {
            v41 = 1.0;
          }

          if (v41 < 0.0)
          {
            v41 = 0.0;
          }

          v42 = *(v40 + 16) ? 116 : 120;
          *(v40 + v42) = v41 * *(v40 + v42);
          if (*(v37 + 8) >= 1.0)
          {
LABEL_75:
            re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove((v3 + 88), &v43);
          }

          this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v44);
          v36 = v46;
        }

        while (v46 != -1);
      }
    }

LABEL_77:
    *(v3 + 184) = 1;
  }

  return this;
}

void re::ProbeManager::regenerateBuffer(re::ProbeManager *this)
{
  if (*(this + 184) == 1)
  {
    v34 = v1;
    v35 = v2;
    *(this + 184) = 0;
    *(this + 824) = 0;
    v4 = *(*(this + 1) + 208);
    memset(v30, 0, 48);
    memset(&v30[7], 0, 48);
    memset(&v30[14], 0, 48);
    memset(&v30[21], 0, 48);
    memset(v31, 0, 48);
    memset(&v31[7], 0, 48);
    memset(&v31[14], 0, 48);
    v5 = *(this + 19);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = (*(this + 21) + 140);
      do
      {
        if (*(v9 - 140) == 1 && *(v9 - 124) == 1 && (*(this + 768) != 1 || *(this + 776) != 1 || v6 != *(this + 198)))
        {
          v10 = (v9 - 92);
          if (*(v9 - 108) == 1)
          {
            v11 = &v31[7 * v7++];
            v12 = *v10;
            v13 = *(v9 - 60);
            v11[1] = *(v9 - 76);
            v11[2] = v13;
            *v11 = v12;
            v14 = *(v9 - 44);
            v15 = *(v9 - 28);
            v16 = *(v9 - 12);
            *(v11 + 92) = *v9;
            v11[4] = v15;
            v11[5] = v16;
            v11[3] = v14;
            v17 = *(v9 - 1);
          }

          else
          {
            v18 = &v30[7 * v8++];
            v19 = *v10;
            v20 = *(v9 - 60);
            v18[1] = *(v9 - 76);
            v18[2] = v20;
            *v18 = v19;
            v21 = *(v9 - 44);
            v22 = *(v9 - 28);
            v23 = *(v9 + 4);
            v18[5] = *(v9 - 12);
            v18[6] = v23;
            v18[3] = v21;
            v18[4] = v22;
            v17 = *v9;
          }

          if (v17 != 1.0)
          {
            *(this + 824) = 1;
          }
        }

        ++v6;
        v9 += 10;
      }

      while (v5 != v6);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *(this + 24) = v8;
    *(this + 25) = v7;
    v27[0] = v8;
    v27[1] = v7;
    v28 = *(this + 809);
    v24 = 1.0;
    if (*(this + 810))
    {
      v24 = *(this + 203);
    }

    v29 = v24;
    v32 = *(this + 828);
    v25 = *(this + 54);
    v31[21] = *(this + 53);
    v31[22] = v25;
    v31[23] = *(this + 55);
    v33 = *(this + 896);
    v26 = [v4 newBufferWithBytes:v27 length:864 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(this + 16, &v26);
    if (v26)
    {
    }
  }
}

uint64_t re::ProbeManager::freeSlice(uint64_t this, unint64_t a2)
{
  if (*(this + 152) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = (*(this + 168) + 160 * a2);
  if (v2[32] == 1)
  {
    --*(this + 176);
  }

  else
  {
    --*(this + 180);
  }

  if (*v2 == 1)
  {
    *v2 = 0;
  }

  *(this + 184) = 1;
  return this;
}

void re::ProbeManager::assignSliceToProbe(uint64_t a1, unint64_t a2, uint64_t a3, id *a4, _OWORD *__src, uint64_t a6)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = __src[5];
  v33 = __src[4];
  v34 = v7;
  v8 = __src[7];
  v35 = __src[6];
  v36 = v8;
  *v27 = *__src;
  v30 = __src[1];
  v9 = __src[3];
  v31 = __src[2];
  v32 = v9;
  v10 = *(a1 + 152);
  if (v10 <= a2)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = a2;
    v43 = 2048;
    v44 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v16 = *(a1 + 168) + 160 * a2;
  if (*v16)
  {
    memmove((v16 + 32), __src, 0x80uLL);
  }

  else
  {
    *v16 = 1;
    *(v16 + 96) = v33;
    *(v16 + 112) = v34;
    *(v16 + 128) = v35;
    *(v16 + 144) = v36;
    *(v16 + 32) = *v27;
    *(v16 + 48) = v30;
    *(v16 + 64) = v31;
    *(v16 + 80) = v32;
  }

  *(v16 + 16) = 0;
  *(v16 + 24) = a3;
  if (*__src == 1)
  {
    ++*(a1 + 176);
  }

  else
  {
    ++*(a1 + 180);
  }

  v28 = *a4;
  v29 = a2;
  v17 = std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](&v30, a6);
  *&v32 = a3;
  BYTE8(v32) = *__src;
  v18 = *(a1 + 200);
  v19 = *(a1 + 208);
  if (v19 >= v18)
  {
    v20 = v19 + 1;
    if (v18 < v19 + 1)
    {
      if (*(a1 + 192))
      {
        v21 = 2 * v18;
        v22 = v18 == 0;
        v23 = 8;
        if (!v22)
        {
          v23 = v21;
        }

        if (v23 <= v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = v23;
        }

        re::DynamicArray<re::ProbeManager::SliceOperation>::setCapacity((a1 + 192), v24);
      }

      else
      {
        re::DynamicArray<re::ProbeManager::SliceOperation>::setCapacity((a1 + 192), v20);
        ++*(a1 + 216);
      }
    }

    v19 = *(a1 + 208);
  }

  v25 = *(a1 + 224) + (v19 << 6);
  *v25 = v28;
  *(v25 + 8) = v29;
  std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](v25 + 16, &v30);
  v26 = v32;
  *(v25 + 56) = BYTE8(v32);
  *(v25 + 48) = v26;
  ++*(a1 + 208);
  ++*(a1 + 216);
  std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](&v30);
  if (v28)
  {
  }
}

double re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 ? -1 : 0x80;
    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 16 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v4 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v4;
    if (v9 >= 0x11 && v4.i64[0] < v9 >> 2)
    {

      *v4.i64 = re::HashBrown<long long,float,re::Hash<long long>,re::EqualTo<long long>,void,false>::resize(a1, 0);
    }
  }

  return *v4.i64;
}

uint64_t re::Optional<re::ProbeManager::SliceOperation>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      NS::SharedPtr<MTL::Texture>::operator=((a1 + 8), (a2 + 8));
      *(a1 + 16) = *(a2 + 16);
      std::__function::__value_func<void ()(re::ProbeManager &,long long)>::operator=[abi:nn200100](a1 + 24, a2 + 24);
LABEL_6:
      v5 = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 56) = v5;
      return a1;
    }

    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](a1 + 24);
    v6 = *(a1 + 8);
    if (v6)
    {

      *(a1 + 8) = 0;
    }

    *a1 = 0;
  }

  else if (*a2)
  {
    *a1 = 1;
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 16) = v4;
    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](a1 + 24, a2 + 24);
    goto LABEL_6;
  }

  return a1;
}

uint64_t re::Optional<re::ProbeManager::SliceOperation>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](a1 + 24);
    v2 = *(a1 + 8);
    if (v2)
    {

      *(a1 + 8) = 0;
    }
  }

  return a1;
}

uint64_t re::Optional<re::ProbeLatLongComputeWorkload>::operator=(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      *a1 = 1;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v8 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v8;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      v9 = *(a1 + 40);
      *(a1 + 40) = *(a2 + 40);
      *(a2 + 40) = v9;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v10 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v10;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      v11 = *(a1 + 64);
      *(a1 + 64) = *(a2 + 64);
      *(a2 + 64) = v11;
    }

    return a1;
  }

  if ((*a2 & 1) == 0)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 48));
    re::FixedArray<CoreIKTransform>::deinit((a1 + 24));
    *a1 = 0;
    return a1;
  }

  *(a1 + 8) = *(a2 + 8);
  if (a1 == a2)
  {
LABEL_7:
    re::FixedArray<float>::operator=((a1 + 48), (a2 + 48));
    return a1;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (!v3 || v3 == v4)
  {
    *(a1 + 24) = v4;
    *(a2 + 24) = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v7;
    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
    goto LABEL_7;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::ProbeManager::generateWorkload(re::ProbeManager *this@<X0>, uint64_t a2@<X8>)
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = (this + 420);
  if (!*(this + 26))
  {
    goto LABEL_61;
  }

  v7 = this + 232;
  if (*(this + 232))
  {
    goto LABEL_61;
  }

  v8 = *(this + 28);
  v84[0] = 1;
  *&v84[8] = *v8;
  *&v84[16] = *(v8 + 8);
  std::__function::__value_func<void ()(re::ProbeManager &,long long)>::__value_func[abi:nn200100](&v84[24], v8 + 16);
  v9 = *(v8 + 48);
  v84[64] = *(v8 + 56);
  *&v84[56] = v9;
  re::Optional<re::ProbeManager::SliceOperation>::operator=(this + 232, v84);
  re::Optional<re::ProbeManager::SliceOperation>::~Optional(v84);
  v10 = *(this + 26);
  if (v10 != 1)
  {
    if (!v10)
    {
LABEL_164:
      *v80 = 0;
      memset(v84, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v77 = 136315906;
      *&v77[4] = "removeAt";
      *&v77[12] = 1024;
      *&v77[14] = 931;
      *&v77[18] = 2048;
      *&v77[20] = 0;
      *&v77[28] = 2048;
      *&v77[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_165:
      memset(v84, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = 0;
      *&v80[28] = 2048;
      *&v80[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_166;
    }

    v7 = *(this + 28);
    v11 = &v7[64 * v10];
    NS::SharedPtr<MTL::Texture>::operator=(v7, v11 - 8);
    *(v7 + 1) = *(v11 - 7);
    std::__function::__value_func<void ()(re::ProbeManager &,long long)>::operator=[abi:nn200100]((v7 + 16), (v11 - 48));
    v12 = *(v11 - 2);
    v7[56] = *(v11 - 8);
    *(v7 + 6) = v12;
    v10 = *(this + 26);
  }

  v13 = *(this + 28) + (v10 << 6);
  std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v13 - 48);
  v14 = *(v13 - 64);
  if (v14)
  {

    *(v13 - 64) = 0;
  }

  --*(this + 26);
  ++*(this + 54);
  v15 = *(this + 31);
  if (*(this + 808) == 1)
  {
    if ((*(this + 304) & 1) == 0)
    {
      *(this + 304) = 1;
    }

    v74 = v15;
    v75 = v6;
    *(this + 39) = 0x6000000000000;
    *(this + 80) = 256;
    *(this + 41) = 0x4180000000000000;
    if ((*(this + 336) & 1) == 0)
    {
      *(this + 336) = 1;
    }

    v16 = 0;
    *(this + 85) = 393216;
    v17 = 256;
    v18 = xmmword_1E30A4080;
    v19 = xmmword_1E30A4090;
    do
    {
      if (v17 < 0x80)
      {
        *v84 = 0x600000000;
        memset(&v84[8], 0, 24);
        *&v84[32] = v17;
        *&v84[40] = v17;
        *&v84[48] = 1;
        *&v84[56] = v16;
        *&v84[60] = 9;
        *&v84[64] = v17;
        re::DynamicArray<re::ProbeSpecularWorkload>::add(this + 344, v84);
        v19 = xmmword_1E30A4090;
        v18 = xmmword_1E30A4080;
      }

      else
      {
        v20 = 0;
        v76 = (v17 + 127) >> 7;
        do
        {
          v21 = 0;
          do
          {
            v22 = 0;
            do
            {
              *v84 = v20;
              *&v84[4] = 1;
              *&v84[8] = v21 << 7;
              *&v84[16] = v22;
              *&v84[24] = v18;
              *&v84[40] = v19;
              *&v84[56] = v16;
              *&v84[60] = 9;
              *&v84[64] = v17;
              re::DynamicArray<re::ProbeSpecularWorkload>::add(this + 344, v84);
              v19 = xmmword_1E30A4090;
              v18 = xmmword_1E30A4080;
              v22 += 128;
            }

            while (v76 << 7 != v22);
            ++v21;
          }

          while (v21 != v76);
          ++v20;
        }

        while (v20 != 6);
      }

      v17 >>= 1;
      ++v16;
    }

    while (v16 != 9);
    if (*(this + 296) == 1)
    {
      v6 = v75;
      v23 = v74;
      if ((*(this + 384) & 1) == 0)
      {
        *(this + 384) = 1;
      }

      *(this + 404) = 0;
      *(this + 396) = 0;
      *(this + 412) = 0;
      *(this + 388) = 0x600000000;
      *v75 = vdupq_n_s64(8uLL);
      v75[1].i64[0] = 1;
      v24 = (this + 448);
      *v84 = v74;
      *&v84[4] = 0x100000008;
      re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((this + 448), v84);
    }

    else
    {
      v24 = (this + 448);
      v6 = v75;
      v23 = v74;
    }

    *v84 = v23;
    *&v84[4] = 256;
    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(v24, v84);
    goto LABEL_61;
  }

  v78 = 0u;
  memset(&v77[16], 0, 32);
  *v77 = v15;
  *&v77[8] = 0x5555400000000;
  if (!*&v77[24])
  {
    goto LABEL_165;
  }

  **&v77[32] = 0x20000000200;
  v7 = *&v77[24];
  if (*&v77[24] <= 1uLL)
  {
LABEL_166:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 1;
    *&v80[28] = 2048;
    *&v80[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_167;
  }

  *(*&v77[32] + 8) = 0x10000000100;
  v7 = *&v77[24];
  if (*&v77[24] <= 2uLL)
  {
LABEL_167:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 2;
    *&v80[28] = 2048;
    *&v80[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_168;
  }

  *(*&v77[32] + 16) = 0x8000000080;
  v7 = *&v77[24];
  if (*&v77[24] <= 3uLL)
  {
LABEL_168:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 3;
    *&v80[28] = 2048;
    *&v80[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_169;
  }

  *(*&v77[32] + 24) = 0x4000000040;
  v7 = *&v77[24];
  if (*&v77[24] <= 4uLL)
  {
LABEL_169:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 4;
    *&v80[28] = 2048;
    *&v80[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_170;
  }

  *(*&v77[32] + 32) = 0x2000000020;
  if (v7 == 5)
  {
LABEL_170:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 5;
    *&v80[28] = 2048;
    *&v80[30] = 5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_171;
  }

  v26 = *&v77[32];
  *(*&v77[32] + 40) = 0x1000000010;
  if (v7 <= 6)
  {
LABEL_171:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 6;
    *&v80[28] = 2048;
    *&v80[30] = 6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_172;
  }

  v26[6] = 0x800000008;
  if (v7 == 7)
  {
LABEL_172:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 7;
    *&v80[28] = 2048;
    *&v80[30] = 7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_173;
  }

  v26[7] = 0x400000004;
  if (v7 <= 8)
  {
LABEL_173:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 8;
    *&v80[28] = 2048;
    *&v80[30] = 8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_174;
  }

  v26[8] = 0x200000002;
  if (v7 == 9)
  {
LABEL_174:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 9;
    *&v80[28] = 2048;
    *&v80[30] = 9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_175;
  }

  v26[9] = 0x100000001;
  v7 = v77;
  v2 = v78;
  if (!v78)
  {
LABEL_175:
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v80 = 136315906;
    *&v80[4] = "operator[]";
    *&v80[12] = 1024;
    *&v80[14] = 468;
    *&v80[18] = 2048;
    *&v80[20] = 0;
    *&v80[28] = 2048;
    *&v80[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_176;
  }

  v27 = 0;
  v28 = 0;
  v29 = *(&v78 + 1);
  v30 = *(&v78 + 1);
  **(&v78 + 1) = 0;
  v31 = v30 + 4;
  v3 = *&v77[24];
  v32 = *&v77[32];
  do
  {
    if (v3 == v27)
    {
      memset(v84, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v27;
      *&v80[28] = 2048;
      *&v80[30] = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_163:
      memset(v84, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v80 = 136315906;
      *&v80[4] = "operator[]";
      *&v80[12] = 1024;
      *&v80[14] = 468;
      *&v80[18] = 2048;
      *&v80[20] = v2;
      *&v80[28] = 2048;
      *&v80[30] = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_164;
    }

    if (v2 - 1 == v27)
    {
      goto LABEL_163;
    }

    v28 += vmul_lane_s32(*(v32 + 8 * v27), *(v32 + 8 * v27), 1).u32[0];
    *(v31 + 4 * v27++) = v28;
  }

  while (v27 != 9);
  v84[0] = 1;
  *&v84[8] = *v77;
  *&v84[24] = *&v77[16];
  *&v84[32] = v3;
  *&v84[40] = v32;
  *&v84[48] = *&v77[40];
  memset(&v77[16], 0, 32);
  v78 = 0u;
  *&v84[56] = v2;
  *&v84[64] = v29;
  re::Optional<re::ProbeLatLongComputeWorkload>::operator=(this + 488, v84);
  if (v84[0] == 1)
  {
    if (*&v84[48])
    {
      if (*&v84[56])
      {
        (*(**&v84[48] + 40))();
        *&v84[56] = 0;
        *&v84[64] = 0;
      }

      *&v84[48] = 0;
    }

    if (*&v84[24])
    {
      if (*&v84[32])
      {
        (*(**&v84[24] + 40))();
        *&v84[32] = 0;
        *&v84[40] = 0;
      }

      *&v84[24] = 0;
    }
  }

  if (*&v77[40])
  {
    if (v78)
    {
      (*(**&v77[40] + 40))();
      v78 = 0uLL;
    }

    *&v77[40] = 0;
  }

  if (*&v77[16] && *&v77[24])
  {
    (*(**&v77[16] + 40))();
  }

LABEL_61:
  if (*(this + 232) != 1)
  {
    goto LABEL_161;
  }

  if ((*(this + 304) & 1) == 0 && (*(this + 336) & 1) == 0 && (*(this + 384) & 1) == 0 && !*(this + 45) && !*(this + 58) && (*(this + 488) & 1) == 0)
  {
    v2 = *(this + 31);
    v3 = *(this + 19);
    if (v3 > v2)
    {
      *(*(this + 21) + 160 * v2 + 16) = 1;
      std::function<void ()(re::ProbeManager &,long long)>::operator()(*(this + 35), this, *(this + 36));
      *(this + 184) = 1;
      v84[0] = 0;
      re::Optional<re::ProbeManager::SliceOperation>::operator=(this + 232, v84);
      re::Optional<re::ProbeManager::SliceOperation>::~Optional(v84);
LABEL_161:
      *a2 = 0;
      return;
    }

LABEL_176:
    *v80 = 0;
    memset(v84, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *&v77[4] = "operator[]";
    *&v77[12] = 1024;
    *&v77[14] = 789;
    *&v77[18] = 2048;
    *&v77[20] = v2;
    *&v77[28] = 2048;
    *&v77[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *v84 = &unk_1F5D051D0;
  v84[8] = 0;
  v84[40] = 0;
  v84[48] = 0;
  v87 = 0uLL;
  v86 = 0;
  v92 = 0;
  v93[0] = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v91 = 0;
  v100 = 0u;
  v102 = 0u;
  v101 = 0u;
  NS::SharedPtr<MTL::Buffer>::operator=(&v100, this + 10);
  NS::SharedPtr<MTL::Buffer>::operator=(&v100 + 1, this + 11);
  NS::SharedPtr<MTL::Buffer>::operator=(&v101, this + 13);
  NS::SharedPtr<MTL::Buffer>::operator=(&v101 + 1, this + 14);
  NS::SharedPtr<MTL::Buffer>::operator=(&v102, this + 15);
  NS::SharedPtr<MTL::Buffer>::operator=(&v102 + 1, this + 30);
  if (*(this + 808) == 1)
  {
    if (*(this + 296))
    {
      v33 = 300714;
    }

    else
    {
      v33 = 299589;
    }

    if (*(this + 304) != 1)
    {
      v36 = 0;
      v37 = 0;
      goto LABEL_110;
    }

    v34 = *(this + 78);
    v35 = *(this + 79);
    if (v33 >= v35)
    {
      v36 = *(this + 79);
    }

    else
    {
      v36 = v33;
    }

    if ((v84[8] & 1) == 0)
    {
      v84[8] = 1;
    }

    *&v84[24] = *(this + 20);
    *&v84[16] = v34;
    *&v84[20] = v36;
    *(this + 79) = v35 - v36;
    v37 = v35 > v36;
    if (v35 <= v36)
    {
      *(this + 304) = 0;
    }

    else
    {
      *(this + 78) = v36 + v34;
    }

    if (v35 < v33)
    {
LABEL_110:
      v43 = *(this + 336);
      v44 = v84[40];
      do
      {
        if ((!v37 & v43) != 1)
        {
          break;
        }

        v45 = *(this + 85);
        *(this + 336) = 0;
        if ((v44 & 1) == 0)
        {
          v84[40] = 1;
        }

        v43 = 0;
        *&v84[44] = v45;
        v36 += 2 * v45;
        v44 = 1;
      }

      while (v36 < v33);
    }

    if (v36 < v33)
    {
      if (v37)
      {
        v46 = (this + 360);
        goto LABEL_138;
      }

      v47 = v84[48];
      v48 = *(this + 336) ^ 1;
      v49 = *(this + 384);
      do
      {
        if ((v48 & v49 & 1) == 0)
        {
          break;
        }

        v50 = *(this + 97);
        v51 = *(this + 98);
        v52 = v6->i64[0];
        v53 = *(v6 + 8);
        *(this + 384) = 0;
        if ((v47 & 1) == 0)
        {
          v84[48] = 1;
        }

        v49 = 0;
        *&v84[76] = *(this + 412);
        *&v84[52] = v50;
        *&v84[56] = v51;
        *&v84[60] = *(this + 396);
        *v85 = v52;
        *&v85[8] = v53;
        v36 += 40 * v51 * v52 * v53;
        v47 = 1;
      }

      while (v36 < v33);
      v46 = (this + 360);
      do
      {
LABEL_126:
        if (*(this + 336))
        {
          break;
        }

        if (*(this + 384))
        {
          break;
        }

        v54 = *(this + 45);
        if (!v54)
        {
          break;
        }

        v55 = *(this + 47);
        if (v36)
        {
          v56 = v55 + 68 * v54;
          v57 = *(v56 - 64);
          v58 = *(v56 - 36);
          v59 = *(v56 - 12) ? 20 * v58 * v57 * *(v56 - 28) : v58 * v57 * *(v56 - 28);
          if (v59 + v36 >= v33)
          {
            break;
          }
        }

        v60 = v55 + 68 * v54;
        *&v77[16] = *(v60 - 52);
        *&v77[32] = *(v60 - 36);
        v78 = *(v60 - 20);
        LODWORD(v79) = *(v60 - 4);
        *v77 = *(v60 - 68);
        *(this + 45) = v54 - 1;
        ++*(this + 92);
        re::DynamicArray<re::ProbeSpecularWorkload>::add(&v86, v77);
        v61 = DWORD2(v78) ? 20 * *&v77[32] * *&v77[4] * *&v77[40] : *&v77[32] * *&v77[4] * *&v77[40];
        v36 += v61;
      }

      while (*(this + 304) != 1);
      goto LABEL_138;
    }

    v46 = (this + 360);
    if (!v37)
    {
      goto LABEL_126;
    }

LABEL_138:
    if ((v84[8] & 1) == 0 && (v84[40] & 1) == 0 && (v84[48] & 1) == 0 && !*(&v87 + 1) && v36 < v33)
    {
      do
      {
        if (*(this + 304))
        {
          break;
        }

        if (*(this + 336))
        {
          break;
        }

        if (*(this + 384))
        {
          break;
        }

        if (*v46)
        {
          break;
        }

        v72 = *(this + 58);
        if (!v72)
        {
          break;
        }

        v73 = *(this + 60) + 12 * v72;
        *v77 = *(v73 - 12);
        *&v77[8] = *(v73 - 4);
        *(this + 58) = v72 - 1;
        ++*(this + 118);
        re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((&v89 + 8), v77);
        v36 += 24 * *&v77[4] * *&v77[4] / 3u;
      }

      while (v36 < v33);
    }
  }

  else
  {
    *v80 = *(this + 31);
    _ZN2re10FixedArrayIDv2_jEC2ERKS2_(&v80[16], this + 512);
    re::FixedArray<unsigned int>::FixedArray(&v81, this + 536);
    v38 = *&v80[12];
    if (*&v80[12] >= 29127)
    {
      v38 = 29127;
    }

    *&v80[12] = v38;
    v77[0] = 1;
    *&v77[8] = *v80;
    _ZN2re10FixedArrayIDv2_jEC2ERKS2_(&v77[24], &v80[16]);
    re::FixedArray<unsigned int>::FixedArray(&v78, &v81);
    re::Optional<re::ProbeLatLongComputeWorkload>::operator=(v93, v77);
    if (v77[0] == 1)
    {
      if (v78)
      {
        if (*(&v78 + 1))
        {
          (*(*v78 + 40))();
          *(&v78 + 1) = 0;
          v79 = 0;
        }

        *&v78 = 0;
      }

      if (*&v77[24] && *&v77[32])
      {
        (*(**&v77[24] + 40))();
      }
    }

    v39 = *&v80[12];
    v40 = *(this + 127);
    v41 = __OFSUB__(v40, *&v80[12]);
    v42 = v40 - *&v80[12];
    *(this + 127) = v42;
    if ((v42 < 0) ^ v41 | (v42 == 0))
    {
      v77[0] = 0;
      re::Optional<re::ProbeLatLongComputeWorkload>::operator=(this + 488, v77);
      if (v77[0] == 1)
      {
        if (v78)
        {
          if (*(&v78 + 1))
          {
            (*(*v78 + 40))();
            *(&v78 + 1) = 0;
            v79 = 0;
          }

          *&v78 = 0;
        }

        if (*&v77[24] && *&v77[32])
        {
          (*(**&v77[24] + 40))();
        }
      }
    }

    else
    {
      *(this + 126) += v39;
    }

    if (v81)
    {
      if (v82)
      {
        (*(*v81 + 40))();
        v82 = 0;
        v83 = 0;
      }

      v81 = 0;
    }

    if (*&v80[16] && *&v80[24])
    {
      (*(**&v80[16] + 40))();
    }
  }

  *a2 = 1;
  *(a2 + 8) = &unk_1F5D051D0;
  v62 = v84[8];
  *(a2 + 16) = v84[8];
  if (v62 == 1)
  {
    *(a2 + 24) = *&v84[16];
    *(a2 + 40) = *&v84[32];
  }

  v63 = v84[40];
  *(a2 + 48) = v84[40];
  if (v63 == 1)
  {
    *(a2 + 52) = *&v84[44];
  }

  v64 = v84[48];
  *(a2 + 56) = v84[48];
  if (v64 == 1)
  {
    *(a2 + 60) = *&v84[52];
    *(a2 + 76) = *&v84[68];
    *(a2 + 92) = *v85;
    *(a2 + 108) = *&v85[16];
  }

  *(a2 + 120) = v86;
  v86 = 0;
  *(a2 + 128) = v87;
  v65 = v90;
  *(a2 + 152) = v89;
  v87 = 0u;
  v66 = v91;
  v67 = v88 + 1;
  *(a2 + 192) = v92;
  *(a2 + 144) = 1;
  *(a2 + 168) = v65;
  v89 = 0u;
  v90 = 0u;
  v92 = 0;
  v88 = v67;
  v91 = v66 + 1;
  *(a2 + 184) = 1;
  v68 = v93[0];
  *(a2 + 200) = v93[0];
  if (v68 == 1)
  {
    *(a2 + 208) = v94;
    v69 = v96;
    *(a2 + 224) = v95;
    *(a2 + 232) = v69;
    v95 = 0;
    v96 = 0;
    *(a2 + 240) = v97;
    v97 = 0uLL;
    v70 = v99;
    *(a2 + 256) = v98;
    *(a2 + 264) = v70;
    v98 = 0;
    v99 = 0;
  }

  v71 = v101;
  *(a2 + 272) = v100;
  *(a2 + 288) = v71;
  v100 = 0uLL;
  v101 = 0uLL;
  *(a2 + 304) = v102;
  v102 = 0uLL;
  re::ProbeWriteContext::~ProbeWriteContext(v84);
}