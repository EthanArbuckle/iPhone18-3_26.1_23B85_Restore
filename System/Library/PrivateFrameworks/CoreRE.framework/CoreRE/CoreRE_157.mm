uint64_t re::computeTangentsAndBitangents(unsigned int *a1, const char *a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v81 = *MEMORY[0x1E69E9840];
  v66 = a2;
  v65 = a5;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v64, 4522, a1[4]);
  if (a2 && a3 && !strcmp(a2, a3) || a2 && a4 && !strcmp(a2, a4) || a2 && a5 && !strcmp(a2, a5) || a3 && a4 && !strcmp(a3, a4) || a3 && a5 && !strcmp(a3, a5) || a4 && a5 && !strcmp(a4, a5) || re::internal::GeomAttributeManager::attributeByName((a1 + 16), a3) || re::internal::GeomAttributeManager::attributeByName((a1 + 16), a4))
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (v66)
  {
    v14 = re::internal::GeomAttributeManager::attributeByName((a1 + 16), v66);
  }

  else
  {
    v14 = 0;
  }

  if (v65)
  {
    v15 = re::internal::GeomAttributeManager::attributeByName((a1 + 16), v65);
  }

  else
  {
    v15 = 0;
  }

  v63 = 0;
  v61 = 0;
  v60[0] = 0;
  v60[1] = 0;
  v62 = 0;
  if (v14 && *(v14 + 16) == 3)
  {
    re::DynamicArray<re::TransitionCondition *>::add(v60, &v66);
  }

  if (v15)
  {
    if (*(v15 + 16) == 3)
    {
      re::DynamicArray<re::TransitionCondition *>::add(v60, &v65);
    }
  }

  else
  {
    v12 = 0;
    if (!v14 || (*(a6 + 4) & 1) != 0)
    {
      goto LABEL_62;
    }
  }

  if (v61)
  {
    re::GeomMesh::GeomMesh(v55, 0);
    re::internal::buildMeshByConvertingFaceVaryingToVertexHelper(a1, v60, 0, v55);
    if (v15)
    {
      v16 = re::internal::GeomAttributeManager::attributeByName(v59, v65);
    }

    else
    {
      v16 = 0;
    }

    v19 = re::GeomMesh::addAttribute(v55, a3, 1, 7);
    v20 = re::GeomMesh::addAttribute(v55, a4, 1, 7);
    v21 = re::internal::GeomAttributeManager::attributeByName(v59, v66);
    re::computeVertexTangentsAndBitangentsInternal(v55, v21, v16, v19, v20, a6);
    v22 = a1[10];
    v54 = 0;
    v51[1] = 0;
    v52 = 0;
    v50 = 0;
    v51[0] = 0;
    v53 = 0;
    v47[1] = 0;
    v48 = 0;
    v47[0] = 0;
    v49 = 0;
    re::DynamicArray<re::GeomCell4>::resize(v51, v22);
    re::DynamicArray<float>::resize(v47, v22);
    if (v22)
    {
      v23 = 0;
      v24 = v48;
      v25 = v50;
      v26 = v57;
      v27 = v58;
      v28 = v52;
      v29 = v54;
      while (v24 != v23)
      {
        *(v25 + 4 * v23) = v23;
        if (v26 == v23)
        {
          goto LABEL_66;
        }

        if (v28 == v23)
        {
          goto LABEL_67;
        }

        *(v29 + 16 * v23) = *(v27 + 16 * v23);
        if (v22 == ++v23)
        {
          goto LABEL_48;
        }
      }

      v67 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 789;
      v72 = 2048;
      v73 = v24;
      v74 = 2048;
      v75 = v24;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_66:
      v67 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 797;
      v72 = 2048;
      v73 = v26;
      v74 = 2048;
      v75 = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_67:
      v67 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 789;
      v72 = 2048;
      v73 = v28;
      v74 = 2048;
      v75 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v67 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 613;
      v72 = 2048;
      v73 = v19;
      v74 = 2048;
      v75 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_69:
      v67 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 621;
      v72 = 2048;
      v73 = v20;
      v74 = 2048;
      v75 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_70:
      v67 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 613;
      v72 = 2048;
      v73 = v24;
      v74 = 2048;
      v75 = v24;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_71:
      v67 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 621;
      v72 = 2048;
      v73 = v26;
      v74 = 2048;
      v75 = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_48:
    v30 = v56;
    v31 = re::GeomMesh::addFaceVaryingAttribute(a1, a3, 7, v56, v51, v47);
    v32 = re::GeomMesh::addFaceVaryingAttribute(a1, a4, 7, v30, v51, v47);
    v33 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v31);
    v35 = v34;
    v36 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v32);
    LODWORD(v26) = v37;
    v38 = re::GeomAttribute::accessValues<int>(v19);
    LODWORD(v19) = v39;
    v40 = re::GeomAttribute::accessValues<int>(v20);
    if (v30)
    {
      v19 = v19;
      v20 = v35;
      v24 = v41;
      v26 = v26;
      v42 = v19;
      v43 = v20;
      v44 = v41;
      v45 = v26;
      while (v42)
      {
        if (!v43)
        {
          goto LABEL_69;
        }

        *v33 = *v38;
        if (!v44)
        {
          goto LABEL_70;
        }

        if (!v45)
        {
          goto LABEL_71;
        }

        v46 = *v40++;
        *v36++ = v46;
        --v45;
        ++v38;
        ++v33;
        --v44;
        --v43;
        --v42;
        if (!--v30)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_68;
    }

LABEL_55:
    if (v47[0] && v50)
    {
      (*(*v47[0] + 40))();
    }

    if (v51[0] && v54)
    {
      (*(*v51[0] + 40))();
    }

    re::GeomMesh::~GeomMesh(v55);
    v12 = 1;
  }

  else
  {
    v17 = re::GeomMesh::addAttribute(a1, a3, 1, 7);
    v18 = re::GeomMesh::addAttribute(a1, a4, 1, 7);
    v12 = re::computeVertexTangentsAndBitangentsInternal(a1, v14, v15, v17, v18, a6);
  }

LABEL_62:
  if (v60[0] && v63)
  {
    (*(*v60[0] + 40))();
  }

LABEL_22:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v64);
  return v12;
}

unint64_t re::anonymous namespace::evalAreaWeightedTriangleNormal(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 >= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_6;
  }

  v4 = a3[1];
  if (v4 >= a2)
  {
LABEL_6:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3[2];
  if (v5 >= a2)
  {
    goto LABEL_7;
  }

  v6 = *(a1 + 16 * v3);
  v7 = vsubq_f32(*(a1 + 16 * v4), v6);
  v8 = vsubq_f32(*(a1 + 16 * v5), v6);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v7)), v8, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v10 = vmulq_f32(v9, v8);
  return v10.u32[2] | (v10.u32[0] << 32);
}

unint64_t re::anonymous namespace::evalAreaWeightedQuadrilateralNormal(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 >= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_7;
  }

  v4 = a3[1];
  if (v4 >= a2)
  {
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3[2];
  if (v5 >= a2)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a3[3];
  if (v6 >= a2)
  {
    goto LABEL_9;
  }

  v7 = vsubq_f32(*(a1 + 16 * v5), *(a1 + 16 * v3));
  v8 = vsubq_f32(*(a1 + 16 * v6), *(a1 + 16 * v4));
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v7)), v8, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v10 = vmulq_f32(v9, v8);
  return v10.u32[2] | (v10.u32[0] << 32);
}

int32x4_t *re::anonymous namespace::makeOrthonormalFrame(int32x4_t *result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *result;
  v4 = vmulq_f32(v3, v3);
  v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  v6 = *a2;
  v7 = *a2;
  if (v5 > 0.0)
  {
    v8 = vmulq_f32(v3, v6);
    v7 = vmulq_n_f32(v3, (v8.f32[2] + vaddv_f32(*v8.f32)) / v5);
  }

  v9 = vsubq_f32(v6, v7);
  *a2 = v9;
  v10 = vmulq_f32(v9, v9);
  v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  if (v11 <= 0.0)
  {
    v17 = *result;
    v18 = vmulq_f32(v17, v17);
    v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    v20 = *a3;
    v21 = *a3;
    if (v19 > 0.0)
    {
      v22 = vmulq_f32(v17, v20);
      v21 = vmulq_n_f32(v17, (v22.f32[2] + vaddv_f32(*v22.f32)) / v19);
    }

    v23 = vsubq_f32(v20, v21);
    v24 = vmulq_f32(v23, v23);
    v25 = v24.f32[2] + vaddv_f32(*v24.f32);
    if (v25 <= 0.0)
    {
      a3->i64[0] = 0;
      a3->i64[1] = 0;
      v31 = *a3;
    }

    else
    {
      v26 = v25;
      v27 = vrsqrte_f32(LODWORD(v25));
      v28 = vmul_f32(v27, vrsqrts_f32(LODWORD(v26), vmul_f32(v27, v27)));
      v29 = vmulq_n_f32(v23, vmul_f32(v28, vrsqrts_f32(LODWORD(v26), vmul_f32(v28, v28))).f32[0]);
      *a3 = v29;
      v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*result, *result), *result, 0xCuLL), vnegq_f32(v29)), *result, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
      v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
    }

    *a2 = v31;
  }

  else
  {
    v12 = v11;
    v13 = vrsqrte_f32(LODWORD(v11));
    v14 = vmul_f32(v13, vrsqrts_f32(LODWORD(v12), vmul_f32(v13, v13)));
    v15 = vmulq_n_f32(v9, vmul_f32(v14, vrsqrts_f32(LODWORD(v12), vmul_f32(v14, v14))).f32[0]);
    *a2 = v15;
    v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(*result)), v15, vextq_s8(vuzp1q_s32(*result, *result), *result, 0xCuLL));
    *a3 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  }

  return result;
}

void re::anonymous namespace::triangulateHelper(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v121 = *MEMORY[0x1E69E9840];
  v6 = a1 + 16;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v86, 4524, *(a1 + 16));
  v7 = *(v6 + 24);
  if (*(v6 - 8) != v7)
  {
    v85 = 0;
    v11 = v7;
    v82 = 0;
    memset(v83, 0, sizeof(v83));
    v84 = 0;
    v79[1] = 0;
    v80 = 0;
    v79[0] = 0;
    v81 = 0;
    LODWORD(v92) = 0;
    re::DynamicArray<unsigned int>::resize(v79, v7, &v92);
    LOBYTE(v92) = 0;
    v12 = re::DynamicArray<unsigned char>::resize(v83, v7, &v92);
    if (v7)
    {
      v13 = 0;
      v14 = 0;
      v15 = v80;
      v16 = v82;
      v17 = *(a1 + 40);
      v18 = (*(a1 + 56) + 12);
      while (1)
      {
        if (v15 == v13)
        {
          goto LABEL_112;
        }

        *(v16 + 4 * v13) = v14;
        if (v17 == v13)
        {
          break;
        }

        v19 = *v18;
        v18 += 4;
        if (v19 == -1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        v14 += v20;
        if (v7 == ++v13)
        {
          goto LABEL_19;
        }
      }

LABEL_113:
      *v103 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v118[0]) = 136315906;
      *(v118 + 4) = "operator[]";
      WORD6(v118[0]) = 1024;
      *(v118 + 14) = 797;
      WORD1(v118[1]) = 2048;
      *(&v118[1] + 4) = v17;
      WORD6(v118[1]) = 2048;
      *(&v118[1] + 14) = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v87[0] = 0;
      v119 = 0u;
      v120 = 0u;
      memset(v118, 0, sizeof(v118));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 789;
      *&v105[18] = 2048;
      *&v105[20] = a2;
      v106 = 2048;
      *v107 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v87[0] = 0;
      v119 = 0u;
      v120 = 0u;
      memset(v118, 0, sizeof(v118));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      *&v105[18] = 2048;
      *&v105[20] = v17;
      v106 = 2048;
      *v107 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v87[0] = 0;
      v119 = 0u;
      v120 = 0u;
      memset(v118, 0, sizeof(v118));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 789;
      *&v105[18] = 2048;
      *&v105[20] = v6;
      v106 = 2048;
      *v107 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_117:
      re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
      _os_crash();
      __break(1u);
    }

LABEL_19:
    v63 = v7;
    v75 = 0;
    v78 = 0;
    v76[1] = 0;
    v76[2] = 0;
    v77 = 0;
    re::DynamicArray<re::BlendNode>::setCapacity(v76, 1uLL);
    ++v77;
    v69 = v75;
    re::DynamicArray<re::GeomCell4>::DynamicArray(&v70, v76);
    v21 = v71;
    if (!v71)
    {
      re::DynamicArray<re::BlendNode>::setCapacity(&v70, 1uLL);
      v21 = v71;
    }

    v22 = *(a1 + 40);
    LODWORD(v92) = v69;
    v23 = v72;
    *(&v92 + 1) = v70;
    *&v93 = v21;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    *(&v93 + 1) = v23;
    *(&v94 + 1) = v74;
    v74 = 0;
    LODWORD(v94) = 1;
    v73 += 2;
    re::internal::GeomAttributeManager::GeomAttributeManager(&v95);
    v97 = v92;
    if (v98)
    {
      v24 = v99;
      v25 = 8 * v98;
      do
      {
        v26 = *v24++;
        (*(*v26 + 80))(v26, v97);
        v25 -= 8;
      }

      while (v25);
    }

    v64 = v11;
    v65 = a3;
    v66 = a2;
    v100 = DWORD2(v93);
    if (v101)
    {
      v27 = v102;
      v28 = 8 * v101;
      do
      {
        v29 = *v27++;
        (*(*v29 + 80))(v29, v100);
        v28 -= 8;
      }

      while (v28);
    }

    re::internal::addAndCopyAttributeValues(v6, &v92, 0);
    re::internal::addAndCopyAttributeValues(v6, &v92, 1);
    re::internal::addAndCopyAttributeValues(v6, &v92, 4);
    v30 = *(a1 + 312);
    if (v30)
    {
      v31 = 0;
      while (1)
      {
        a2 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 288), v31);
        v32 = re::internal::GeomAttributeManager::addAttribute(&v95, *(a2 + 8), 2, *(a2 + 17));
        if (v22)
        {
          break;
        }

LABEL_36:
        if (++v31 == v30)
        {
          goto LABEL_37;
        }
      }

      v33 = v32;
      v34 = 0;
      v35 = 0;
      v36 = 12;
      while (1)
      {
        v37 = *(a1 + 40);
        if (v37 <= v34)
        {
          break;
        }

        if (*(*(a1 + 56) + v36) == -1)
        {
          v38 = v35 + 1;
          v39 = 1;
        }

        else
        {
          v109[1] = v34;
          v38 = v35 + 2;
          v108[1] = v35 + 1;
          v39 = 2;
        }

        v109[0] = v34;
        v108[0] = v35;
        (*(*a2 + 40))(a2, v33, v39, v109, v108);
        ++v34;
        v36 += 16;
        v35 = v38;
        if (v22 == v34)
        {
          goto LABEL_36;
        }
      }

      *v105 = 0;
      v119 = 0u;
      v120 = 0u;
      memset(v118, 0, sizeof(v118));
      v55 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v103 = 136315906;
      *&v103[4] = "operator[]";
      *&v103[12] = 1024;
      *&v103[14] = 797;
      *&v103[18] = 2048;
      *&v103[20] = v34;
      *&v103[28] = 2048;
      *&v103[30] = v37;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_91;
    }

LABEL_37:
    v67 = *(a1 + 424);
    if (!v67)
    {
LABEL_70:
      v55 = v66;
      if (v70)
      {
        if (v74)
        {
          (*(*v70 + 40))();
        }

        v74 = 0;
        v71 = 0;
        v72 = 0;
        v70 = 0;
        ++v73;
      }

      if (!v65)
      {
LABEL_95:
        v62 = re::GeomMesh::operator=(v55, &v92);
        re::GeomMesh::setName(v62, *a1);
        re::internal::GeomAttributeManager::~GeomAttributeManager(&v95);
        if (*(&v92 + 1) && *(&v94 + 1))
        {
          (*(**(&v92 + 1) + 40))(*(&v92 + 1), *(&v94 + 1));
        }

        if (v76[0] && v78)
        {
          (*(*v76[0] + 40))(v76[0], v78);
        }

        if (v79[0] && v82)
        {
          (*(*v79[0] + 40))(v79[0], v82);
        }

        v10 = v83[0];
        if (!v83[0] || !v85)
        {
          goto LABEL_107;
        }

LABEL_106:
        (*(*v10 + 40))(v10);
        goto LABEL_107;
      }

      v56 = (*(a1 + 8) + 2 * (*(a1 + 40) - *(a1 + 8)));
      *&v103[32] = 0;
      memset(v103, 0, 28);
      re::DynamicArray<unsigned int>::resize(v103, v56, &re::kInvalidMeshIndex);
      if (v63)
      {
        v57 = 0;
        v6 = 0;
        v15 = *&v103[16];
        v58 = *&v103[32];
        v17 = *(a1 + 40);
        v59 = (*(a1 + 56) + 12);
        do
        {
          a2 = v6;
          if (v15 <= v6)
          {
            goto LABEL_114;
          }

          *(v58 + 4 * v6) = v57;
          if (v17 == v57)
          {
            goto LABEL_115;
          }

          if (*v59 != -1)
          {
            v6 = (v6 + 1);
            if (v15 <= v6)
            {
              goto LABEL_116;
            }

            *(v58 + 4 * v6) = v57;
          }

          ++v57;
          v6 = (v6 + 1);
          v59 += 4;
        }

        while (v64 != v57);
      }

      re::GeomIndexMap::GeomIndexMap(v118, v103);
      re::GeomIndexMap::operator=(v65, v118);
      if (!BYTE12(v118[0]))
      {
LABEL_92:
        if (*v103 && *&v103[32])
        {
          (*(**v103 + 40))(v61);
        }

        goto LABEL_95;
      }

      if (BYTE12(v118[0]) != 2)
      {
        if (BYTE12(v118[0]) != 1)
        {
          goto LABEL_119;
        }

        if (*&v118[1] && v119)
        {
          (*(**&v118[1] + 40))(*&v118[1]);
        }

        goto LABEL_92;
      }

LABEL_91:
      v61.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v118[1]);
      goto LABEL_92;
    }

    v6 = 0;
    while (1)
    {
      v68 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 400), v6);
      v41 = re::internal::accessFaceVaryingAttributeSubmesh(v68, v40);
      v42 = *(v41 + 24);
      *&v107[2] = 0;
      memset(v105, 0, sizeof(v105));
      v90 = 0;
      v87[1] = 0;
      v88 = 0;
      v87[0] = 0;
      v89 = 0;
      LOBYTE(v118[0]) = 0;
      v43 = re::DynamicArray<unsigned char>::resize(v105, v42, v118);
      *v103 = 0;
      v104 = 0;
      memset(&v103[8], 0, 28);
      re::DynamicArray<re::BlendNode>::setCapacity(&v103[8], 1uLL);
      ++*&v103[32];
      re::DynamicArray<float>::resize(v87, *&v103[24]);
      if (v42)
      {
        break;
      }

LABEL_60:
      v54 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v92, *(v68 + 8), *(v68 + 17), v103, v87);
      re::GeomAttribute::copyValues(v68, v54);
      if (*&v103[8] && v104)
      {
        (*(**&v103[8] + 40))();
      }

      if (v87[0] && v90)
      {
        (*(*v87[0] + 40))();
      }

      if (*v105 && *&v107[2])
      {
        (*(**v105 + 40))();
      }

      v6 = (v6 + 1);
      if (v6 == v67)
      {
        goto LABEL_70;
      }
    }

    v45 = 0;
    v46 = 0;
    v15 = 12;
    while (1)
    {
      LODWORD(v118[0]) = v45;
      v47 = *(v41 + 60);
      if (v47 == 2)
      {
        break;
      }

      if (v47 == 1)
      {
        if (*(v41 + 80) > v45)
        {
          v48 = *(*(v41 + 96) + 4 * v45);
          goto LABEL_52;
        }

LABEL_51:
        v48 = -1;
        goto LABEL_52;
      }

      if (*(v41 + 60))
      {
        goto LABEL_117;
      }

      if (v45 >= *(v41 + 64))
      {
        v48 = -1;
      }

      else
      {
        v48 = v45;
      }

LABEL_52:
      v50 = v48;
      v17 = v80;
      if (v80 <= v48)
      {
        v91 = 0;
        v119 = 0u;
        v120 = 0u;
        memset(v118, 0, sizeof(v118));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v110 = 136315906;
        v111 = "operator[]";
        v112 = 1024;
        v113 = 797;
        v114 = 2048;
        v115 = v50;
        v116 = 2048;
        v117 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_109:
        v91 = 0;
        v119 = 0u;
        v120 = 0u;
        memset(v118, 0, sizeof(v118));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v110 = 136315906;
        v111 = "operator[]";
        v112 = 1024;
        v113 = 789;
        v114 = 2048;
        v115 = a2;
        v116 = 2048;
        v117 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_110:
        v91 = 0;
        v119 = 0u;
        v120 = 0u;
        memset(v118, 0, sizeof(v118));
        v53 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v110 = 136315906;
        v111 = "operator[]";
        v112 = 1024;
        v113 = 797;
        v114 = 2048;
        v115 = v45;
        v116 = 2048;
        v117 = a2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_111:
        v91 = 0;
        v119 = 0u;
        v120 = 0u;
        memset(v118, 0, sizeof(v118));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v110 = 136315906;
        v111 = "operator[]";
        v112 = 1024;
        v113 = 789;
        v114 = 2048;
        v115 = v53;
        v116 = 2048;
        v117 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_112:
        *v103 = 0;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v118[0]) = 136315906;
        *(v118 + 4) = "operator[]";
        WORD6(v118[0]) = 1024;
        *(v118 + 14) = 789;
        WORD1(v118[1]) = 2048;
        *(&v118[1] + 4) = v15;
        WORD6(v118[1]) = 2048;
        *(&v118[1] + 14) = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_113;
      }

      a2 = v46;
      v17 = v88;
      if (v88 <= v46)
      {
        goto LABEL_109;
      }

      v51 = *(v82 + 4 * v48);
      v52 = v90;
      *(v90 + 4 * v46) = v51;
      a2 = *(v41 + 24);
      if (a2 <= v45)
      {
        goto LABEL_110;
      }

      v53 = v46 + 1;
      if (*(*(v41 + 40) + v15) == -1)
      {
        ++v46;
      }

      else
      {
        if (v17 <= v53)
        {
          goto LABEL_111;
        }

        *(v52 + 4 * v53) = v51 + 1;
        v46 += 2;
      }

      ++v45;
      v15 += 16;
      if (v42 == v45)
      {
        goto LABEL_60;
      }
    }

    v49 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v41 + 64), v118);
    if (v49 != -1)
    {
      v48 = *(*(v41 + 72) + 8 * v49 + 4);
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  re::GeomMesh::copy(a1, a2);
  if (!a3)
  {
    goto LABEL_107;
  }

  v8 = 0;
  *&v92 = 0xFFFFFFFF00000000;
  DWORD2(v92) = -1;
  BYTE12(v92) = 0;
  if ((v7 - 1) <= 0xFFFFFFFD)
  {
    DWORD2(v92) = v7 - 1;
    v8 = v7;
    *&v92 = v7;
  }

  LODWORD(v93) = v8;
  re::GeomIndexMap::operator=(a3, &v92);
  if (!BYTE12(v92))
  {
    goto LABEL_107;
  }

  if (BYTE12(v92) == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v93);
LABEL_107:
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v86);
    return;
  }

  if (BYTE12(v92) == 1)
  {
    v10 = v93;
    if (!v93 || !v95)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
LABEL_119:
  re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
}

uint64_t re::anonymous namespace::triangluateTopologyHelper(_anonymous_namespace_ *a1, uint64_t a2, _DWORD *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v32[1] = 0;
  v33 = 0;
  v34 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v32, 1uLL);
  ++v34;
  v7 = *(a1 + 3);
  v8 = 0;
  v9 = v7;
  if (v7)
  {
    v10 = (*(a1 + 5) + 8);
    v11 = v7;
    do
    {
      if (*(v10 - 2) != -1 && *(v10 - 1) != -1 && *v10 != -1 && v10[1] == -1)
      {
        ++v8;
      }

      v10 += 4;
      --v11;
    }

    while (v11);
  }

  v31 = *a1;
  re::DynamicArray<re::GeomCell4>::resize(v32, (v8 + 2 * (v7 - v8)));
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = &v45;
    v15 = *(a1 + 3);
    v16 = *(a1 + 5);
    v17 = *(a2 + 16);
    v18 = *(a2 + 32);
    v19 = v33;
    v20 = v35;
    v21 = (v16 + 8);
    while (v15 != v12)
    {
      v22 = *(v21 - 2);
      v23 = *(v21 - 1);
      v24 = *v21;
      v25 = v21[1];
      if (v25 == -1)
      {
        v3 = v13;
        if (v19 <= v13)
        {
          goto LABEL_32;
        }

        v27 = 1;
      }

      else
      {
        if (v17 <= v12)
        {
          goto LABEL_29;
        }

        v3 = v13;
        if (*(v18 + v12))
        {
          if (v19 <= v13)
          {
            goto LABEL_30;
          }

          v26 = (v20 + 16 * v13);
          *v26 = v22;
          v26[1] = v23;
          v3 = v13 + 1;
          v26[2] = v25;
          v26[3] = -1;
          v27 = 2;
          if (v19 <= v3)
          {
            goto LABEL_31;
          }

          v22 = v23;
        }

        else
        {
          if (v19 <= v13)
          {
            goto LABEL_33;
          }

          v28 = (v20 + 16 * v13);
          *v28 = v22;
          v28[1] = v23;
          v3 = v13 + 1;
          v28[2] = v24;
          v28[3] = -1;
          v27 = 2;
          if (v19 <= v3)
          {
            goto LABEL_34;
          }
        }

        v23 = v24;
        v24 = v25;
      }

      v13 += v27;
      v29 = (v20 + 16 * v3);
      *v29 = v22;
      v29[1] = v23;
      v29[2] = v24;
      v29[3] = -1;
      ++v12;
      v21 += 4;
      if (v9 == v12)
      {
        goto LABEL_24;
      }
    }

    v36 = 0;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 797;
    v41 = 2048;
    v42 = v15;
    v43 = 2048;
    v44 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v36 = 0;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[2] = 0u;
    v45 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 797;
    v41 = 2048;
    v42 = v12;
    v43 = 2048;
    v44 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v36 = 0;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[2] = 0u;
    v45 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = v3;
    v43 = 2048;
    v44 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v36 = 0;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[2] = 0u;
    v45 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = v3;
    v43 = 2048;
    v44 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v36 = 0;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[2] = 0u;
    v45 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = v3;
    v43 = 2048;
    v44 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_33:
    v36 = 0;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[2] = 0u;
    v45 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = v3;
    v43 = 2048;
    v44 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v36 = 0;
    v14[3] = 0u;
    v14[4] = 0u;
    v14[2] = 0u;
    v45 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = v3;
    v43 = 2048;
    v44 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_24:
  *a3 = v31;
  re::DynamicArray<re::GeomCell4>::operator=((a3 + 2), v32);
  result = v32[0];
  if (v32[0])
  {
    if (v35)
    {
      return (*(*v32[0] + 40))();
    }
  }

  return result;
}

uint64_t re::findBoundaryLoops(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v5 = a1[56];
  v19 = 0;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v18 = 0;
  LOBYTE(v32) = 0;
  re::DynamicArray<unsigned char>::resize(v16, v5, &v32);
  if (!v5)
  {
    goto LABEL_16;
  }

  for (i = 0; i != v5; ++i)
  {
    if (!re::GeomConnectivityManifold::isBoundaryEdge(a1, i))
    {
      continue;
    }

    v7 = v17;
    if (v17 <= i)
    {
      goto LABEL_23;
    }

    if (*(v19 + i))
    {
      continue;
    }

    re::GeomConnectivityManifold::edgeVertices(a1, i, v24);
    v8 = v24[0];
    v9 = *(a3 + 16);
    v15 = v24[0];
    *&v23[2] = 0;
    memset(v21, 0, sizeof(v21));
    v10 = v24[0];
    do
    {
      re::GeomConnectivityManifold::fetchVertexIncidentEdges(a1, v10, v21);
      if (!*&v21[16])
      {
        v20 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v25 = 136315906;
        *&v25[4] = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = 0;
        v30 = 2048;
        v31 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_21:
        v20 = 0;
        v11 = v25;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v25 = 136315906;
        *&v25[4] = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = 0;
        v30 = 2048;
        v31 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_22:
        v20 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        i = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v25 = 136315906;
        *&v25[4] = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = v7;
        v30 = 2048;
        v31 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_23:
        *v25 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v21 = 136315906;
        *&v21[4] = "operator[]";
        *&v21[12] = 1024;
        *&v21[14] = 789;
        *&v21[18] = 2048;
        *&v21[20] = i;
        v22 = 2048;
        *v23 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::GeomConnectivityManifold::edgeVertices(a1, **&v23[2], v24);
      v15 = v24[v24[0] == v15];
      re::DynamicArray<int>::add(a3, &v15);
      if (!*&v21[16])
      {
        goto LABEL_21;
      }

      v7 = **&v23[2];
      v11 = v17;
      if (v17 <= v7)
      {
        goto LABEL_22;
      }

      *(v19 + v7) = 1;
      v10 = v15;
      ++v9;
    }

    while (v15 != v8);
    LODWORD(v32) = v9;
    re::DynamicArray<int>::add(a2, &v32);
    if (*v21 && *&v23[2])
    {
      (*(**v21 + 40))();
    }
  }

LABEL_16:
  v12 = *(a2 + 16);
  if (v16[0] && v19)
  {
    (*(*v16[0] + 40))();
  }

  return v12;
}

uint64_t re::internal::addGrid(uint64_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, unsigned int a6, unsigned int a7)
{
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_56;
  }

  v11 = a6 + 1 + (a6 + 1) * a7;
  v12 = *v7;
  v89 = *(v7 + 24);
  v13 = v89 + a7 * a6;
  re::DynamicArray<re::GeomCell4>::resize((v7 + 8), v13);
  *(v7 + 272) = v13;
  v14 = *(v7 + 296);
  if (v14)
  {
    v15 = *(v7 + 312);
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      (*(*v17 + 80))(v17, *(v7 + 272));
      v16 -= 8;
    }

    while (v16);
  }

  *v7 = v12 + v11;
  *(v7 + 160) = v12 + v11;
  v18 = *(v7 + 184);
  if (v18)
  {
    v19 = *(v7 + 200);
    v20 = 8 * v18;
    do
    {
      v21 = *v19++;
      (*(*v21 + 80))(v21, *(v7 + 160));
      v20 -= 8;
    }

    while (v20);
  }

  v22 = re::internal::GeomAttributeManager::attributeByName((v7 + 48), "vertexPosition");
  v91 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v22);
  v24 = v23;
  v25 = a1[2];
  if (v25)
  {
    v26 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v25);
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xFFFFFFFFLL;
  }

  v29 = a1[1];
  v93 = 0u;
  if (v29)
  {
    v30 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v29);
    v32 = a2;
    v31 = a3;
    v33 = a5;
    v34 = vsubq_f32(*a3, *a5);
    v35 = a4;
    v36 = vsubq_f32(*a4, *a2);
    v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v34)), v36, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
    v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
    v39 = vmulq_f32(v37, v37);
    *&v40 = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
    *v39.f32 = vrsqrte_f32(v40);
    *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
    v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
    v43 = v42;
  }

  else
  {
    v30 = 0;
    v43 = 0xFFFFFFFFLL;
    v41 = 0uLL;
    v33 = a5;
    v35 = a4;
    v32 = a2;
    v31 = a3;
  }

  v90 = v7;
  v44 = a1[3];
  if (v44)
  {
    v45 = a1[4] == 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = !v45;
  if (v45)
  {
    v97 = 0;
    result = 0;
    v58 = 0xFFFFFFFFLL;
    v55 = 0uLL;
    v57 = 0xFFFFFFFFLL;
  }

  else
  {
    v47 = vsubq_f32(*v31, *v32);
    v48 = vmulq_f32(v47, v47);
    v49 = vaddv_f32(*v48.f32);
    *v48.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v49));
    *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v49), vmul_f32(*v48.f32, *v48.f32)));
    v93 = vmulq_n_f32(v47, vmul_f32(*v48.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v49), vmul_f32(*v48.f32, *v48.f32))).f32[0]);
    v50 = vsubq_f32(*v33, *v32);
    v51 = vmulq_f32(v50, v50);
    *&v52 = v51.f32[2] + vaddv_f32(*v51.f32);
    *v51.f32 = vrsqrte_f32(v52);
    *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32)));
    v86 = vmulq_n_f32(v50, vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))).f32[0]);
    v88 = v41;
    v97 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v44);
    v87 = v53;
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[4]);
    v55 = v86;
    v41 = v88;
    v32 = a2;
    v31 = a3;
    v35 = a4;
    v33 = a5;
    v57 = v56;
    v58 = v87;
  }

  v59 = v24;
  v60 = v26;
  v61 = 0;
  v63 = v12;
  v64 = 1.0 / a7;
  do
  {
    v65 = 0;
    v66 = v64 * v61;
    v67 = 1.0 - v66;
    v68 = v63;
    v69 = v59 - v63;
    if (v59 < v63)
    {
      v69 = 0;
    }

    v70 = vaddq_f32(vmulq_n_f32(*v31, v67), vmulq_n_f32(*v35, v66));
    v71 = result + 16 * v63;
    v72 = v97 + 16 * v63;
    v73 = vaddq_f32(vmulq_n_f32(*v33, v66), vmulq_n_f32(*v32, v67));
    v74 = v30 + 16 * v63;
    v75 = v60 + 8 * v63;
    v76 = v91 + 16 * v63;
    do
    {
      v77 = v68 + v65;
      v62 = 1.0 / a6;
      if (a1[2])
      {
        if (v28 <= v77)
        {
          goto LABEL_51;
        }

        *&v78 = v62 * v65;
        *(&v78 + 1) = v64 * v61;
        *(v75 + 8 * v65) = v78;
      }

      if (a1[1])
      {
        if (v43 <= v77)
        {
          goto LABEL_52;
        }

        *(v74 + 16 * v65) = v41;
      }

      if (v46)
      {
        if (v58 <= v77)
        {
          goto LABEL_53;
        }

        *(v72 + 16 * v65) = v93;
        if (v57 <= v77)
        {
          goto LABEL_54;
        }

        *(v71 + 16 * v65) = v55;
      }

      if (v69 == v65)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_51:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_52:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_53:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_54:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_55:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_56:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "meshData.baseMesh != nullptr", "addGrid", 79);
        _os_crash();
        __break(1u);
      }

      *(v76 + 16 * v65) = vaddq_f32(vmulq_n_f32(v70, v62 * v65), vmulq_n_f32(v73, 1.0 - (v62 * v65)));
      ++v65;
    }

    while (v65 <= a6);
    v63 = v68 + v65;
    ++v61;
  }

  while (v61 <= a7);
  v79 = v89;
  if (a7)
  {
    v80 = 0;
    do
    {
      if (a6)
      {
        v81 = 0;
        v82 = *(v90 + 24);
        do
        {
          v83 = (v79 + v81);
          if (v82 <= v83)
          {
            goto LABEL_55;
          }

          v84 = v12 + 1;
          v85 = (*(v90 + 40) + 16 * v83);
          v85->i32[0] = v12;
          v85->i32[1] = v12 + 1;
          v85[1] = vadd_s32(vdup_n_s32(a6 + v12), 0x100000002);
          ++v81;
          ++v12;
        }

        while (a6 != v81);
        v79 += v81;
      }

      else
      {
        v84 = v12;
      }

      v12 = v84 + 1;
      ++v80;
    }

    while (v80 != a7);
  }

  return result;
}

uint64_t re::internal::setCornerVertexValues(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    goto LABEL_31;
  }

  v4 = re::internal::GeomAttributeManager::attributeByName((*a1 + 48), "vertexPosition");
  v5 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v4);
  v7 = v6;
  v8 = a1[1];
  if (v8)
  {
    v9 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v8);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = -1;
  }

  v12 = a1[3];
  if (v12)
  {
    v13 = a1[4] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v15 = 0;
    result = 0;
    v21 = -1;
    v20 = -1;
  }

  else
  {
    v15 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v12);
    v17 = v16;
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[4]);
    v20 = v19;
    v21 = v17;
  }

  v22 = 0;
  v23 = *(a2 + 88);
  v24 = 1.0 / *(a2 + 84);
  do
  {
    v25 = 0;
    v26 = v23;
    do
    {
      if (v26 >= v7)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_28:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_29:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_30:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_31:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "meshData.baseMesh != nullptr", "setCornerVertexValues", 160);
        _os_crash();
        __break(1u);
      }

      v27 = vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(*a2, 1.0 - (v24 * v22)), vmulq_n_f32(*(a2 + 48), v24 * v22)), 1.0 - (v24 * v25)), vmulq_n_f32(vaddq_f32(vmulq_n_f32(*(a2 + 16), 1.0 - (v24 * v22)), vmulq_n_f32(*(a2 + 32), v24 * v22)), v24 * v25));
      v28 = vmulq_f32(v27, v27);
      *&v29 = v28.f32[2] + vaddv_f32(*v28.f32);
      *v28.f32 = vrsqrte_f32(v29);
      *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
      v30 = vmulq_n_f32(v27, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
      *(v5 + 16 * v26) = vaddq_f32(*(a2 + 64), vmulq_n_f32(v30, COERCE_FLOAT(*(a2 + 80))));
      if (a1[1])
      {
        if (v11 <= v26)
        {
          goto LABEL_28;
        }

        *(v9 + 16 * v26) = v30;
      }

      if (v14)
      {
        if (v21 <= v26)
        {
          goto LABEL_29;
        }

        v31 = vmulq_f32(v30, xmmword_1E3047670);
        v32 = vsubq_f32(xmmword_1E3047670, vmulq_n_f32(v30, v31.f32[2] + vaddv_f32(*v31.f32)));
        v33 = vmulq_f32(v32, v32);
        *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
        *v33.f32 = vrsqrte_f32(v34);
        *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
        v35 = vmulq_n_f32(v32, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
        *(v15 + 16 * v26) = v35;
        if (v20 <= v26)
        {
          goto LABEL_30;
        }

        v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v30)), v35, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
        v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
        v38 = vmulq_f32(v36, v36);
        *&v39 = v38.f32[1] + (v38.f32[2] + v38.f32[0]);
        *v38.f32 = vrsqrte_f32(v39);
        *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
        *(result + 16 * v26) = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
      }

      v26 += *(a2 + 92);
      ++v25;
      v40 = *(a2 + 84);
    }

    while (v25 <= v40);
    v23 += *(a2 + 96);
    ++v22;
  }

  while (v22 <= v40);
  return result;
}

uint64_t re::internal::addFace(unint64_t *a1, float32x4_t *a2)
{
  v148 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (!*a1)
  {
LABEL_149:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "meshData.baseMesh != nullptr", "addFace", 222);
    _os_crash();
    __break(1u);
    goto LABEL_150;
  }

  v8 = *(v7 + 24);
  v10 = a2->u32[3];
  v9 = a2[1].u32[0];
  v105 = 2 * a2[1].i32[1];
  v111 = v10 - 1;
  v119 = v9 - 1;
  v114 = *v7;
  v115 = v105 + 2 + v9 - 1;
  v117 = v105 + 2 + v10 - 1;
  v11 = v114 + v117 * v115;
  *v7 = v11;
  *(v7 + 160) = v11;
  v12 = *(v7 + 184);
  if (v12)
  {
    v13 = *(v7 + 200);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      (*(*v15 + 80))(v15, *(v7 + 160));
      v14 -= 8;
    }

    while (v14);
  }

  re::DynamicArray<re::GeomCell4>::resize((v7 + 8), v8 + (v117 - 1) * (v115 - 1));
  *(v7 + 272) = v8 + (v117 - 1) * (v115 - 1);
  v16 = *(v7 + 296);
  if (v16)
  {
    v17 = *(v7 + 312);
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      (*(*v19 + 80))(v19, *(v7 + 272));
      v18 -= 8;
    }

    while (v18);
  }

  v103 = (v117 - 1);
  v20 = a2->f32[1];
  v134 = a2->f32[0];
  v21 = a2[1].i32[1];
  v137 = 1;
  v138 = v105 + 2 + v10 - 1;
  *&v108 = (v20 + (v134 * -2.0)) * 0.5;
  v112 = (a2->f32[2] + (v134 * -2.0)) * 0.5;
  v129 = xmmword_1E30A0D90;
  v130 = xmmword_1E30A0DA0;
  v131 = xmmword_1E30476A0;
  v132 = xmmword_1E30A0DB0;
  v135 = v21;
  v136 = v114;
  *&v22 = -*&v108;
  *(&v22 + 1) = -v112;
  v133 = v22;
  re::internal::setCornerVertexValues(a1, &v129);
  v129 = xmmword_1E30A0DA0;
  v130 = xmmword_1E30A0DC0;
  v131 = xmmword_1E30A0DD0;
  v132 = xmmword_1E30476A0;
  v104 = v10 + v114;
  v136 = a2[1].i32[1] + v10 + v114;
  LODWORD(v23) = v108;
  *(&v23 + 1) = -v112;
  v133 = v23;
  re::internal::setCornerVertexValues(a1, &v129);
  v129 = xmmword_1E30A0DB0;
  v130 = xmmword_1E30476A0;
  v131 = xmmword_1E30A0DE0;
  v132 = xmmword_1E30A0DF0;
  v107 = v9;
  v136 = v114 + (a2[1].i32[1] + v9) * v117;
  v24 = v136;
  v25 = COERCE_UNSIGNED_INT(-*&v108);
  *(&v25 + 1) = v112;
  v133 = v25;
  re::internal::setCornerVertexValues(a1, &v129);
  v129 = xmmword_1E30476A0;
  v130 = xmmword_1E30A0DD0;
  v131 = vdupq_n_s32(0x3F13CD3Au);
  v132 = xmmword_1E30A0DE0;
  v136 = v24 + v10 + a2[1].i32[1];
  v26 = v108;
  *(&v26 + 1) = v112;
  v133 = v26;
  re::internal::setCornerVertexValues(a1, &v129);
  v27 = re::internal::GeomAttributeManager::attributeByName((v7 + 48), "vertexPosition");
  v28 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
  v4 = v29;
  v30 = a1[1];
  v106 = v7;
  v102 = v8;
  if (v30)
  {
    v31 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v30);
    v5 = v32;
  }

  else
  {
    v31 = 0;
    v5 = 0xFFFFFFFFLL;
  }

  v33 = a1[3];
  if (v33)
  {
    v34 = a1[4] == 0;
  }

  else
  {
    v34 = 1;
  }

  v3 = !v34;
  if (v34)
  {
    v37 = 0;
    v39 = 0;
    v41 = 0xFFFFFFFFLL;
    v38 = 0xFFFFFFFFLL;
  }

  else
  {
    v35 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v33);
    v7 = v36;
    v37 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[4]);
    v38 = v7;
    v39 = v35;
    v41 = v40;
  }

  v42 = v114;
  v116 = v10;
  v113 = (v115 - 1);
  v43 = a2->f32[0];
  if (v10 != 1)
  {
    v44 = 0;
    v45 = (a2->f32[1] + (v43 * -2.0)) / (v111 + 1.0);
    while (1)
    {
      v46 = v44 + 1;
      if (v115)
      {
        break;
      }

LABEL_37:
      v44 = (v44 + 1);
      if (v46 == v111)
      {
        v110 = v41;
        v109 = v38;
        v50 = v39;
        v43 = a2->f32[0];
        goto LABEL_40;
      }
    }

    v47.i32[1] = 0;
    v47.i64[1] = 0;
    v6 = (a2[1].i32[1] + v114);
    v48 = v115;
    while (1)
    {
      v49 = v6;
      if (v6 >= v4)
      {
        break;
      }

      v7 = (v44 + v6 + 1);
      if (v7 >= v4)
      {
        goto LABEL_120;
      }

      v47.f32[0] = v45 * v46;
      *(v28 + 16 * v7) = vaddq_f32(v47, *(v28 + 16 * v6));
      if (a1[1])
      {
        if (v5 <= v6)
        {
          goto LABEL_121;
        }

        if (v5 <= v7)
        {
          goto LABEL_122;
        }

        *(v31 + 16 * v7) = *(v31 + 16 * v6);
      }

      if (v3)
      {
        if (v38 <= v6)
        {
          goto LABEL_126;
        }

        if (v38 <= v7)
        {
          goto LABEL_127;
        }

        *(v39 + 16 * v7) = *(v39 + 16 * v6);
        if (v41 <= v6)
        {
          goto LABEL_128;
        }

        if (v41 <= v7)
        {
          goto LABEL_129;
        }

        *(v37 + 16 * v7) = *(v37 + 16 * v6);
      }

      v6 = (v6 + v117);
      if (!--v48)
      {
        goto LABEL_37;
      }
    }

    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v6;
    v127 = 2048;
    *v128 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *v126 = 136315906;
    *&v126[18] = 2048;
    *&v126[20] = (v44 + v6 + 1);
    v127 = 2048;
    *v128 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v6;
    v127 = 2048;
    *v128 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v7;
    v127 = 2048;
    *v128 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_123;
  }

  v110 = v41;
  v109 = v38;
  v50 = v39;
LABEL_40:
  if (v119)
  {
    v51 = 0;
    v52 = v110;
    v53 = (a2->f32[2] + (v43 * -2.0)) / (v119 + 1.0);
    v54 = v109;
    v55 = v5;
    v7 = v4;
    v56 = v104 + v105 + 1;
    while (1)
    {
      ++v51;
      if (v117)
      {
        break;
      }

LABEL_60:
      v56 += v117;
      if (v51 == v119)
      {
        goto LABEL_61;
      }
    }

    v57 = 0;
    v58 = a2[1].i32[1] * v117;
    v59 = (v58 + v56);
    v60 = v37 + 16 * v59;
    v61.i32[0] = 0;
    v61.i64[1] = 0;
    v62 = v50 + 16 * v59;
    v44 = (v58 + v114);
    v63 = v31 + 16 * v59;
    if (v44 <= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v44;
    }

    v64 = v28 + 16 * v59;
    v65 = v37 + 16 * v44;
    v66 = v50 + 16 * v44;
    v67 = v31 + 16 * v44;
    v68 = v28 + 16 * v44;
    v69 = v117;
    while (v6 != v44)
    {
      if (v59 >= v4)
      {
        goto LABEL_124;
      }

      v61.f32[1] = v53 * v51;
      *(v64 + v57) = vaddq_f32(v61, *(v68 + v57));
      if (a1[1])
      {
        if (v44 >= v5)
        {
          goto LABEL_130;
        }

        if (v59 >= v5)
        {
          goto LABEL_131;
        }

        *(v63 + v57) = *(v67 + v57);
      }

      if (v3)
      {
        if (v44 >= v109)
        {
          goto LABEL_132;
        }

        if (v59 >= v109)
        {
          goto LABEL_133;
        }

        *(v62 + v57) = *(v66 + v57);
        if (v44 >= v110)
        {
          goto LABEL_134;
        }

        if (v59 >= v110)
        {
          goto LABEL_135;
        }

        *(v60 + v57) = *(v65 + v57);
      }

      ++v44;
      ++v59;
      v57 += 16;
      if (!--v69)
      {
        goto LABEL_60;
      }
    }

LABEL_123:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    LODWORD(v59) = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v6;
    v127 = 2048;
    *v128 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v59;
    v127 = 2048;
    *v128 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 789;
    *&v126[18] = 2048;
    *&v126[20] = v7;
    v127 = 2048;
    *v128 = v49;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v7 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v49;
    v127 = 2048;
    *v128 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v49 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v7;
    v127 = 2048;
    *v128 = v49;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v7 = v41;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v49;
    v127 = 2048;
    *v128 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v55 = v41;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v7;
    v127 = 2048;
    *v128 = v55;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v44;
    v127 = 2048;
    *v128 = v55;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v59;
    v127 = 2048;
    *v128 = v55;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_132:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v99 = v54;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v44;
    v127 = 2048;
    *v128 = v99;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v100 = v54;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v59;
    v127 = 2048;
    *v128 = v100;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v101 = v52;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v44;
    v127 = 2048;
    *v128 = v101;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v73 = v52;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v59;
    v127 = 2048;
    *v128 = v73;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_136:
    v125 = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v139 = 136315906;
    *(v4 + 1) = "operator[]";
    v140 = 1024;
    *(v4 + 14) = 789;
    v141 = 2048;
    *(v4 + 5) = v73;
    v142 = 2048;
    *(v4 + 30) = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v125 = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v139 = 136315906;
    *(v4 + 1) = "operator[]";
    v140 = 1024;
    *(v4 + 14) = 789;
    v141 = 2048;
    *(v4 + 5) = v3;
    v142 = 2048;
    *(v4 + 30) = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_138:
    v125 = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v4 + 1) = "operator[]";
    v140 = 1024;
    *(v4 + 14) = 621;
    v139 = 136315906;
    v141 = 2048;
    *(v4 + 5) = (v28 + v73);
    v142 = 2048;
    *(v4 + 30) = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v125 = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v139 = 136315906;
    *(v4 + 1) = "operator[]";
    v140 = 1024;
    *(v4 + 14) = 789;
    v141 = 2048;
    *(v4 + 5) = v73;
    v142 = 2048;
    *(v4 + 30) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_140:
    v125 = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v139 = 136315906;
    *(v4 + 1) = "operator[]";
    v140 = 1024;
    *(v4 + 14) = 789;
    v141 = 2048;
    *(v4 + 5) = v28;
    v142 = 2048;
    *(v4 + 30) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v125 = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v139 = 136315906;
    *(v4 + 1) = "operator[]";
    v140 = 1024;
    *(v4 + 14) = 789;
    v141 = 2048;
    *(v4 + 5) = v73;
    v142 = 2048;
    *(v4 + 30) = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_142:
    v125 = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v139 = 136315906;
    *(v4 + 1) = "operator[]";
    v140 = 1024;
    *(v4 + 14) = 789;
    v141 = 2048;
    *(v4 + 5) = v28;
    v142 = 2048;
    *(v4 + 30) = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_143;
  }

LABEL_61:
  v70 = *v106 - v114;
  if (*v106 > v114)
  {
    v72 = a2[3];
    v71 = a2[4];
    v73 = v110;
    v74 = a2[2];
    v6 = v109;
    if (v114 <= v4)
    {
      v44 = v4;
    }

    else
    {
      v44 = v114;
    }

    v2 = v114;
    v5 = v5;
    while (v44 != v2)
    {
      v75 = vaddq_f32(a2[5], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[2], COERCE_FLOAT(*(v28 + 16 * v2))), a2[3], *(v28 + 16 * v2), 1), a2[4], *(v28 + 16 * v2), 2));
      *(v28 + 16 * v2) = vdivq_f32(v75, vdupq_laneq_s32(v75, 3));
      if (a1[1])
      {
        if (v2 >= v5)
        {
          goto LABEL_146;
        }

        *(v31 + 16 * v2) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(v31 + 16 * v2))), v72, *(v31 + 16 * v2), 1), v71, *(v31 + 16 * v2), 2);
      }

      if (v3)
      {
        if (v2 >= v109)
        {
          goto LABEL_147;
        }

        *(v50 + 16 * v2) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(v50 + 16 * v2))), v72, *(v50 + 16 * v2), 1), v71, *(v50 + 16 * v2), 2);
        if (v2 >= v110)
        {
          goto LABEL_148;
        }

        *(v37 + 16 * v2) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(v37 + 16 * v2))), v72, *(v37 + 16 * v2), 1), v71, *(v37 + 16 * v2), 2);
      }

      ++v2;
      if (!--v70)
      {
        goto LABEL_75;
      }
    }

LABEL_143:
    v121[0] = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v126 = 136315906;
    *&v126[4] = "operator[]";
    *&v126[12] = 1024;
    *&v126[14] = 621;
    *&v126[18] = 2048;
    *&v126[20] = v44;
    v127 = 2048;
    *v128 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_144:
    v125 = 0;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v139 = 136315906;
    *(v4 + 1) = "operator[]";
    v140 = 1024;
    *(v4 + 14) = 789;
    v141 = 2048;
    *(v4 + 5) = v73;
    v142 = 2048;
    *(v4 + 30) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_145;
  }

LABEL_75:
  v5 = (v117 - 1);
  v6 = (v115 - 1);
  v44 = v116;
  if (a1[2])
  {
    v4 = &v139;
    *&v128[2] = 0;
    memset(v126, 0, sizeof(v126));
    v124 = 0;
    v121[1] = 0;
    v122 = 0;
    v121[0] = 0;
    v123 = 0;
    v76 = a2[1].u32[1];
    v77 = a2->f32[0] / a2->f32[1];
    v78 = (v77 * -2.0) + 1.0;
    v79 = a2->f32[0] / a2->f32[2];
    v80 = (v79 * -2.0) + 1.0;
    re::DynamicArray<float>::resize(v126, v117);
    re::DynamicArray<float>::resize(v121, v115);
    v81 = 0;
    v3 = *&v126[16];
    v82 = *&v128[2];
    v2 = v122;
    v83 = v124;
    do
    {
      v73 = v81;
      if (v3 <= v81)
      {
        goto LABEL_139;
      }

      v84 = (v77 / v76) * v81;
      *(v82 + 4 * v81) = v84;
      v28 = v76 + v116 + v81;
      if (v3 <= v28)
      {
        goto LABEL_140;
      }

      *(v82 + 4 * v28) = v77 + (v78 + v84);
      if (v2 <= v81)
      {
        goto LABEL_141;
      }

      v85 = (v79 / v76) * v81;
      *(v83 + 4 * v81) = v85;
      v28 = v76 + v107 + v81;
      if (v2 <= v28)
      {
        goto LABEL_142;
      }

      *(v83 + 4 * v28) = v79 + (v80 + v85);
      ++v81;
    }

    while (v73 + 1 <= v76);
    if (v111)
    {
      v86 = 1;
      v87 = *&v128[2];
      do
      {
        v73 = v76 + v86;
        if (v3 <= v73)
        {
          goto LABEL_144;
        }

        *(v87 + 4 * v73) = v77 + ((v78 / v116) * v86++);
      }

      while (v86 <= v111);
    }

    if (v3 <= v103)
    {
LABEL_150:
      v125 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v139 = 136315906;
      *(v4 + 1) = "operator[]";
      v140 = 1024;
      *(v4 + 14) = 789;
      v141 = 2048;
      *(v4 + 5) = v5;
      v142 = 2048;
      *(v4 + 30) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_151:
      v125 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v139 = 136315906;
      *(v4 + 1) = "operator[]";
      v140 = 1024;
      *(v4 + 14) = 789;
      v141 = 2048;
      *(v4 + 5) = v6;
      v142 = 2048;
      *(v4 + 30) = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(v82 + 4 * v103) = 1065353216;
    if (v119)
    {
      v88 = 1;
      v89 = v124;
      while (1)
      {
        v73 = v76 + v88;
        if (v2 <= v73)
        {
          break;
        }

        *(v89 + 4 * v73) = v79 + ((v80 / v107) * v88++);
        if (v88 > v119)
        {
          goto LABEL_91;
        }
      }

LABEL_145:
      v125 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v139 = 136315906;
      *(v4 + 1) = "operator[]";
      v140 = 1024;
      *(v4 + 14) = 789;
      v141 = 2048;
      *(v4 + 5) = v73;
      v142 = 2048;
      *(v4 + 30) = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_146:
      v121[0] = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v126 = 136315906;
      *&v126[4] = "operator[]";
      *&v126[12] = 1024;
      *&v126[14] = 621;
      *&v126[18] = 2048;
      *&v126[20] = v2;
      v127 = 2048;
      *v128 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_147:
      v121[0] = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v126 = 136315906;
      *&v126[4] = "operator[]";
      *&v126[12] = 1024;
      *&v126[14] = 621;
      *&v126[18] = 2048;
      *&v126[20] = v2;
      v127 = 2048;
      *v128 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_148:
      v121[0] = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v126 = 136315906;
      *&v126[4] = "operator[]";
      *&v126[12] = 1024;
      *&v126[14] = 621;
      *&v126[18] = 2048;
      *&v126[20] = v2;
      v127 = 2048;
      *v128 = v73;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_149;
    }

LABEL_91:
    if (v2 <= v113)
    {
      goto LABEL_151;
    }

    *(v83 + 4 * v113) = 1065353216;
    v90 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[2]);
    v42 = v114;
    if (v115)
    {
      v2 = v91;
      v3 = 0;
      v28 = v114;
      do
      {
        if (v117)
        {
          v73 = 0;
          LODWORD(v92) = v91 - v28;
          if (v91 >= v28)
          {
            v92 = v92;
          }

          else
          {
            v92 = 0;
          }

          do
          {
            v31 = *&v126[16];
            if (*&v126[16] <= v73)
            {
              goto LABEL_136;
            }

            v31 = v122;
            if (v122 <= v3)
            {
              goto LABEL_137;
            }

            if (v92 == v73)
            {
              goto LABEL_138;
            }

            LODWORD(v93) = *(*&v128[2] + 4 * v73);
            HIDWORD(v93) = *(v124 + 4 * v3);
            *(v90 + 8 * v28 + 8 * v73++) = v93;
          }

          while (v117 != v73);
          v28 = (v28 + v73);
        }

        ++v3;
      }

      while (v3 != v115);
    }

    if (v121[0] && v124)
    {
      (*(*v121[0] + 40))();
      v42 = v114;
    }

    if (*v126)
    {
      if (*&v128[2])
      {
        (*(**v126 + 40))();
        v42 = v114;
      }
    }
  }

  result = v102;
  if (v115 != 1)
  {
    v95 = 0;
    do
    {
      if (v117 != 1)
      {
        v96 = 0;
        v49 = *(v106 + 24);
        v97 = v116 + v105 + v42;
        do
        {
          v7 = (result + v96);
          if (v49 <= v7)
          {
            goto LABEL_125;
          }

          v98 = (*(v106 + 40) + 16 * v7);
          *v98 = v42 + v96;
          v98[1] = v42 + v96 + 1;
          v98[2] = v97 + v96 + 2;
          v98[3] = v97 + v96++ + 1;
        }

        while (v103 != v96);
        result = (result + v96);
        v42 += v96;
      }

      ++v42;
      ++v95;
    }

    while (v95 != v113);
  }

  return result;
}

uint64_t re::internal::buildBoxHelper(_anonymous_namespace_ *a1, _DWORD *a2, unsigned __int16 *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v68 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(&v69, 1uLL);
  ++v72;
  re::internal::GeomAttributeManager::GeomAttributeManager(v74);
  if (a3[2] && *a3 && a3[1])
  {
    v67 = 0u;
    v66 = 0u;
    re::internal::GeomAttributeManager::addAttribute(v74, "vertexPosition", 1, 7);
    v65 = &v68;
    if (*(a3 + 25) == 1)
    {
      *&v66 = re::internal::GeomAttributeManager::addAttribute(v74, "vertexNormal", 1, 7);
    }

    if (*(a3 + 24) == 1)
    {
      *(&v66 + 1) = re::internal::GeomAttributeManager::addAttribute(v74, "vertexUV", 1, 6);
      if (*(a3 + 25) == 1 && (a3[12] & 1) != 0)
      {
        *&v67 = re::internal::GeomAttributeManager::addAttribute(v74, "vertexTangent", 1, 7);
        *(&v67 + 1) = re::internal::GeomAttributeManager::addAttribute(v74, "vertexBitangent", 1, 7);
      }
    }

    if (*(a3 + 2) > 0.0 && a3[3])
    {
      v6 = ((2 * a3[3] + 2) | 2) - 1;
      v7 = v6 + *a3;
      v8 = v6 + a3[1];
      v9 = v6 + a3[2];
      v10 = (2 * ((v9 - 1) * (v8 - 1) + (v9 - 1 + v8 - 1) * (v7 - 1)));
      if (v75)
      {
        v11 = (2 * (v9 * v8 + (v9 + v8) * v7));
        v12 = v76;
        v13 = 8 * v75;
        do
        {
          v14 = *v12++;
          (*(*v14 + 88))(v14, v11);
          v13 -= 8;
        }

        while (v13);
      }

      if (v70 < v10)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v69, v10);
      }

      if (v77)
      {
        v15 = v78;
        v16 = 8 * v77;
        do
        {
          v17 = *v15++;
          (*(*v17 + 88))(v17, v10);
          v16 -= 8;
        }

        while (v16);
      }

      v18 = *(a3 + 2);
      v19 = *(a3 + 3);
      v64 = (v19 - (v18 + v18)) * 0.5;
      v20 = *(a3 + 4);
      v21 = v20 - (v18 + v18);
      v22 = *(a3 + 5) - (v18 + v18);
      v80.i32[1] = (a3[3] + 1) & 0x1FFFE;
      v79.i64[0] = __PAIR64__(LODWORD(v19), LODWORD(v18));
      v79.f32[2] = v20;
      v23 = a3[1];
      v79.i32[3] = *a3;
      v80.i32[0] = v23;
      v24 = xmmword_1E30474D0;
      *(&v24 + 2) = v22 * 0.5;
      v81 = xmmword_1E3047670;
      v82 = xmmword_1E3047680;
      v83 = xmmword_1E30476A0;
      v84 = v24;
      re::internal::addFace(&v65, &v79);
      v25 = v71;
      *a2 = v71;
      v26 = *(a3 + 5);
      v79.i32[1] = *(a3 + 3);
      v79.i32[2] = v26;
      v27 = a3[2];
      v79.i32[3] = *a3;
      v80.i32[0] = v27;
      v28 = xmmword_1E30474D0;
      *(&v28 + 1) = v21 * 0.5;
      v81 = xmmword_1E3047670;
      v82 = xmmword_1E306DD20;
      v83 = xmmword_1E3047680;
      v84 = v28;
      re::internal::addFace(&v65, &v79);
      v29 = v71;
      a2[1] = v71 - v25;
      *(v79.i64 + 4) = *(a3 + 6);
      v30 = a3[1];
      v79.i32[3] = *a3;
      v80.i32[0] = v30;
      v31 = xmmword_1E30474D0;
      *(&v31 + 2) = -(v22 * 0.5);
      v81 = xmmword_1E3047690;
      v82 = xmmword_1E3047680;
      v83 = xmmword_1E306DD20;
      v84 = v31;
      re::internal::addFace(&v65, &v79);
      v32 = v71;
      a2[2] = v71 - v29;
      v33 = *(a3 + 5);
      v79.i32[1] = *(a3 + 3);
      v79.i32[2] = v33;
      v34 = a3[2];
      v79.i32[3] = *a3;
      v80.i32[0] = v34;
      v35 = xmmword_1E30474D0;
      *(&v35 + 1) = -(v21 * 0.5);
      v81 = xmmword_1E3047670;
      v82 = xmmword_1E30476A0;
      v83 = xmmword_1E30476B0;
      v84 = v35;
      re::internal::addFace(&v65, &v79);
      v36 = v71;
      a2[3] = v71 - v32;
      *&v79.i32[1] = vrev64_s32(*(a3 + 8));
      v37 = a3[1];
      v79.i32[3] = a3[2];
      v80.i32[0] = v37;
      v38 = xmmword_1E30474D0;
      *&v38 = v64;
      v81 = xmmword_1E306DD20;
      v82 = xmmword_1E3047680;
      v83 = xmmword_1E3047670;
      v84 = v38;
      re::internal::addFace(&v65, &v79);
      v39 = v71;
      a2[4] = v71 - v36;
      *&v79.i32[1] = vrev64_s32(*(a3 + 8));
      v40 = a3[1];
      v79.i32[3] = a3[2];
      v80.i32[0] = v40;
      v41 = xmmword_1E30474D0;
      *&v41 = -v64;
      v81 = xmmword_1E30476A0;
      v82 = xmmword_1E3047680;
      v83 = xmmword_1E3047690;
      v84 = v41;
      re::internal::addFace(&v65, &v79);
      a2[5] = v71 - v39;
    }

    else
    {
      v43 = *a3;
      v44 = a3[1];
      v45 = a3[2];
      v46 = (2 * (v45 * v44 + (v45 + v44) * v43));
      if (v75)
      {
        v47 = (2 * (v45 + 1 + v44 + 1 + (v45 + 1 + v44 + 1) * v43 + (v45 + 1) * (v44 + 1)));
        v48 = v76;
        v49 = 8 * v75;
        do
        {
          v50 = *v48++;
          (*(*v50 + 88))(v50, v47);
          v49 -= 8;
        }

        while (v49);
      }

      if (v70 < v46)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v69, v46);
      }

      if (v77)
      {
        v51 = v78;
        v52 = 8 * v77;
        do
        {
          v53 = *v51++;
          (*(*v53 + 88))(v53, v46);
          v52 -= 8;
        }

        while (v52);
      }

      v54 = 0;
      v55 = *a3;
      v56 = a3[1];
      v57 = a3[2];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v58 = vmul_f32(*(a3 + 6), 0x3F0000003F000000);
      v59 = *(a3 + 5) * 0.5;
      v79 = 0u;
      v80 = 0u;
      v60 = vneg_f32(v58);
      v61 = &v79.f32[2];
      do
      {
        *(v61 - 1) = vbsl_s8(vceqz_s32(vand_s8(vdup_n_s32(v54), 0x200000001)), v60, v58);
        if (v54 >= 4)
        {
          v62 = v59;
        }

        else
        {
          v62 = -v59;
        }

        *v61 = v62;
        v61 += 4;
        ++v54;
      }

      while (v54 != 8);
      re::internal::addGrid(&v65, &v83, &v84, &v86, &v85, v55, v56);
      *a2 = v56 * v55;
      re::internal::addGrid(&v65, &v85, &v86, &v82, &v81, v55, v57);
      a2[1] = v57 * v55;
      re::internal::addGrid(&v65, &v80, &v79, &v81, &v82, v55, v56);
      a2[2] = v56 * v55;
      re::internal::addGrid(&v65, &v79, &v80, &v84, &v83, v55, v57);
      a2[3] = v57 * v55;
      re::internal::addGrid(&v65, &v84, &v80, &v82, &v86, v57, v56);
      a2[4] = v57 * v56;
      re::internal::addGrid(&v65, &v79, &v83, &v85, &v81, v57, v56);
      a2[5] = v57 * v56;
    }

    re::GeomMesh::operator=(a1, &v68);
    if (*(a3 + 26) == 1)
    {
      re::internal::mergeVertexPositions(a1, v63);
    }
  }

  else
  {
    re::internal::GeomAttributeManager::addAttribute(v74, "vertexPosition", 1, 7);
    if (*(a3 + 24) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v74, "vertexUV", 1, 6);
    }

    if (*(a3 + 25) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v74, "vertexNormal", 1, 7);
    }

    if (*(a3 + 24) == 1 && *(a3 + 25) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v74, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v74, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v68);
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(v74);
  result = v69;
  if (v69)
  {
    if (v73)
    {
      return (*(*v69 + 40))();
    }
  }

  return result;
}

void re::buildBox(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a2 + 26) == 1)
  {
    *&v23[12] = *(a2 + 12);
    *v23 = *a2;
    v23[26] = 0;
    re::buildBox(a1, v23);
  }

  else
  {
    re::GeomMesh::GeomMesh(v23, 0);
    re::internal::buildBoxHelper(v23, v26, a2);
    re::DynamicArray<re::GeomMesh>::clear(a1);
    if (*a2 && *(a2 + 2) && *(a2 + 4))
    {
      re::DynamicArray<re::GeomMesh>::resize(a1, 6uLL);
      v4 = 0;
      v5 = 0;
      v22 = 0;
      v19 = 0;
      memset(v20, 0, sizeof(v20));
      v21 = 0;
      v16 = 0;
      memset(v17, 0, sizeof(v17));
      v18 = 0;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
      v15 = 0;
      do
      {
        v6 = v26[v4];
        re::DynamicArray<float>::resize(v13, v6);
        v7 = v14;
        if (v6)
        {
          v8 = v16;
          v9 = v14;
          v10 = v5;
          while (v9)
          {
            v5 = v10 + 1;
            *v8++ = v10;
            --v9;
            ++v10;
            if (!--v6)
            {
              goto LABEL_11;
            }
          }

          *v27 = 0;
          memset(v25, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v34[0] = 136315906;
          *&v34[1] = "operator[]";
          LOWORD(v34[3]) = 1024;
          *(&v34[3] + 2) = 789;
          HIWORD(v34[4]) = 2048;
          *&v34[5] = v7;
          LOWORD(v34[7]) = 2048;
          *(&v34[7] + 2) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_26:
          v24 = 0;
          v35 = 0u;
          v36 = 0u;
          memset(v34, 0, sizeof(v34));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v27 = 136315906;
          *&v27[4] = "operator[]";
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

LABEL_11:
        v12[0] = v16;
        v12[1] = v7;
        v11[0] = 0;
        v11[1] = 0;
        re::makeMeshFromFaces(v23, v12, v11, v20, v17, v25);
        v6 = *(a1 + 16);
        if (v6 <= v4)
        {
          goto LABEL_26;
        }

        re::GeomMesh::operator=((*(a1 + 32) + 736 * v4), v25);
        re::GeomMesh::~GeomMesh(v25);
        ++v4;
      }

      while (v4 != 6);
      if (v13[0] && v16)
      {
        (*(*v13[0] + 40))();
      }

      if (v17[0] && v19)
      {
        (*(*v17[0] + 40))();
      }

      if (v20[0])
      {
        if (v22)
        {
          (*(*v20[0] + 40))();
        }
      }
    }

    else
    {
      re::DynamicArray<re::GeomMesh>::resize(a1, 6uLL, v23);
    }

    re::GeomMesh::~GeomMesh(v23);
  }
}

float32x4_t *re::AABB::transform@<X0>(float32x4_t *result@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = vcgtq_f32(*result, v4);
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    *a3 = vnegq_f32(v18);
    a3[1] = v18;
  }

  else
  {
    v6.i64[0] = v3.i64[0] & 0x7FFFFFFF7FFFFFFFLL;
    v6.i32[2] = v3.i32[2] & 0x7FFFFFFF;
    v6.i32[3] = v4.i32[0] & 0x7FFFFFFF;
    v7.i64[0] = 0x7F0000007FLL;
    v7.i64[1] = 0x7F0000007FLL;
    v8 = vnegq_f32(v7);
    if (vmaxv_u16(vmovn_s32(vcgeq_s32(v6, v8))) & 1) == 0 && (v9 = vcgt_s32(vneg_f32(0x7F0000007FLL), (vextq_s8(v4, v4, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL)), (v9.i8[0]) && (v9.i8[4])
    {
      v10 = 0;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v11 = vnegq_f32(v8);
      do
      {
        if (v10)
        {
          LODWORD(v12) = result[1];
        }

        else
        {
          LODWORD(v12) = *result->f32;
        }

        if ((v10 & 2) != 0)
        {
          v13 = 5;
        }

        else
        {
          v13 = 1;
        }

        v14 = result->f32[v13];
        if (v10 >= 4)
        {
          v15 = 6;
        }

        else
        {
          v15 = 2;
        }

        v16 = vaddq_f32(a2[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a2, v12), a2[1], v14), a2[2], result->f32[v15]));
        v17 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
        v11.i32[3] = 0;
        v17.i32[3] = 0;
        v11 = vminnmq_f32(v11, v17);
        v8.i32[3] = 0;
        v8 = vmaxnmq_f32(v8, v17);
        ++v10;
      }

      while (v10 != 8);
      *a3 = v11;
    }

    else
    {
      *a3 = v7;
    }

    a3[1] = v8;
  }

  return result;
}

uint64_t re::AABB::intersects(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  v6.i32[3] = v5.i32[0];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v6, v6)))) & 1) == 0)
  {
    v7 = vcgtq_f32(v4, v5);
    v7.i32[3] = v7.i32[2];
    if ((vmaxvq_u32(v7) & 0x80000000) == 0)
    {
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      result = 3;
      if ((vmaxv_u16(vmovn_s32(vcgeq_s32((*&v6 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), vnegq_f32(v8)))) & 1) == 0 && (v5.i32[1] & 0x7FFFFFFFu) < 0x7F800000 && (v5.i32[2] & 0x7FFFFFFFu) < 0x7F800000)
      {
        v10.i64[0] = 0x3F0000003F000000;
        v10.i64[1] = 0x3F0000003F000000;
        v11 = vmulq_f32(vaddq_f32(v4, v5), v10);
        v12 = vsubq_f32(v5, v4);
        v12.i32[3] = 0;
        v13 = vmulq_f32(vmaxnmq_f32(v12, 0), v10);
        v14 = vmulq_f32(*a2, *a2);
        v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
        v15 = vrsqrte_f32(v14.u32[0]);
        v16 = vmul_f32(v15, vrsqrts_f32(v14.u32[0], vmul_f32(v15, v15)));
        v17 = vmulq_f32(v13, vabsq_f32(vmulq_n_f32(*a2, vmul_f32(v16, vrsqrts_f32(v14.u32[0], vmul_f32(v16, v16))).f32[0])));
        v18 = vmulq_f32(v11, *a2);
        v19 = (COERCE_FLOAT(HIDWORD(*a2)) + (v18.f32[2] + vaddv_f32(*v18.f32))) / sqrtf(v14.f32[0]);
        v20 = fabsf(v19);
        v21 = (v17.f32[2] + vaddv_f32(*v17.f32)) + 0.0001;
        if (v19 > 0.0)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v20 >= v21)
        {
          return v22;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return result;
}

uint64_t re::projectPointOntoBilinearPatch3F(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v145[3] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *a5;
  v7 = vsubq_f32(*a3, *a5);
  v8 = *a4;
  v9 = *a2;
  v10 = vsubq_f32(*a4, *a2);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v7)), v10, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v12 = vmulq_f32(v11, v11);
  v13 = v12.f32[1] + (v12.f32[2] + v12.f32[0]);
  if (fabsf(v13) >= 1.0e-10)
  {
    v57 = v13;
    v58 = vrsqrte_f32(LODWORD(v13));
    v59 = vmul_f32(v58, vrsqrts_f32(LODWORD(v57), vmul_f32(v58, v58)));
    v60 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vmul_f32(v59, vrsqrts_f32(LODWORD(v57), vmul_f32(v59, v59))).f32[0]);
    v61 = vsubq_f32(v5, v9);
    v62 = vsubq_f32(v6, v9);
    v63 = vsubq_f32(*a1, v9);
    v64 = vmulq_f32(v61, v60);
    v65 = vsubq_f32(v61, vmulq_n_f32(v60, v64.f32[2] + vaddv_f32(*v64.f32)));
    v66 = vmulq_f32(v65, v65);
    if (fabsf(v66.f32[2] + vaddv_f32(*v66.f32)) < 1.0e-10)
    {
      v67 = vmulq_f32(v10, v60);
      v65 = vsubq_f32(v10, vmulq_n_f32(v60, v67.f32[2] + vaddv_f32(*v67.f32)));
    }

    v68 = vmulq_f32(v65, v65);
    *&v69 = v68.f32[2] + vaddv_f32(*v68.f32);
    *v68.f32 = vrsqrte_f32(v69);
    *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32)));
    v70 = vmulq_n_f32(v65, vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32))).f32[0]);
    v71 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vnegq_f32(v60)), v70, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
    v72 = vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL);
    v73 = vmulq_f32(v63, v70);
    v74 = vmulq_f32(v63, v72);
    v75 = vadd_f32(vzip1_s32(*&vextq_s8(v73, v73, 8uLL), *&vextq_s8(v74, v74, 8uLL)), vadd_f32(vzip1_s32(*v73.i8, *v74.i8), vzip2_s32(*v73.i8, *v74.i8)));
    v76 = vmulq_f32(v61, v70);
    v77 = vmulq_f32(v61, v72);
    v78 = vadd_f32(vzip1_s32(*&vextq_s8(v76, v76, 8uLL), *&vextq_s8(v77, v77, 8uLL)), vadd_f32(vzip1_s32(*v76.i8, *v77.i8), vzip2_s32(*v76.i8, *v77.i8)));
    v79 = vmulq_f32(v10, v70);
    v80 = vmulq_f32(v10, v72);
    v81 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *&vextq_s8(v80, v80, 8uLL)), vadd_f32(vzip1_s32(*v79.i8, *v80.i8), vzip2_s32(*v79.i8, *v80.i8)));
    v82 = vmulq_f32(v62, v70);
    v83 = vmulq_f32(v62, v72);
    *v70.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v82, v82, 8uLL), *&vextq_s8(v83, v83, 8uLL)), vadd_f32(vzip1_s32(*v82.i8, *v83.i8), vzip2_s32(*v82.i8, *v83.i8)));
    v141 = v78;
    v142 = vsub_f32(0, v75);
    v84 = vsub_f32(v81, v78);
    *v77.i8 = vadd_f32(vsub_f32(v84, *v70.f32), 0);
    v85 = v70.f32[1];
    v138 = *v77.i32;
    v139 = *v70.f32;
    v86 = *&v77.i32[1];
    v137 = v142;
    v145[0] = ((-v142.f32[1] * v70.f32[0]) + (v142.f32[0] * v70.f32[1]));
    v145[1] = (((vmuls_lane_f32(v142.f32[0], *v77.i8, 1) + (v78.f32[0] * v70.f32[1])) - (v70.f32[0] * v78.f32[1])) - (*v77.i32 * v142.f32[1]));
    v140 = v78;
    v145[2] = ((-v78.f32[1] * *v77.i32) + (v78.f32[0] * *&v77.i32[1]));
    memset(v144, 0, sizeof(v144));
    v87 = re::solveQuadraticRootsD(v145, v143, a3->i64);
    __asm { FMOV            V0.2S, #1.0 }

    if (!v87)
    {
      goto LABEL_31;
    }

    v89 = 0;
    LOBYTE(v90) = 0;
    do
    {
      v91 = &v142;
      v92 = v143[v89];
      v93 = &v141;
      v94 = 1;
      v95 = v138;
      v96 = v139.f32[0];
      do
      {
        v97 = v94;
        v98 = v96 + (v92 * v95);
        if (v98 != 0.0)
        {
          v99.f32[0] = v92;
          v99.f32[1] = -(v91->f32[0] + (v92 * *v93)) / v98;
          *(v144 + v90) = vminnm_f32(vmaxnm_f32(v99, 0), _D0);
          LOBYTE(v90) = v90 + 1;
        }

        v94 = 0;
        v95 = v86;
        v96 = v85;
        v93 = &v141 + 1;
        v91 = (&v142 + 4);
      }

      while ((v97 & 1) != 0);
      ++v89;
    }

    while (v89 != v87);
    if (v90)
    {
      if (v90 != 1)
      {
        v90 = v90;
        v100 = v144;
        v101 = INFINITY;
        do
        {
          v102 = vsub_f32(vadd_f32(vadd_f32(vmul_n_f32(v139, (1.0 - *v100) * v100[1]), vmul_n_f32(v81, *v100 * v100[1])), vmul_n_f32(v140, *v100 * (1.0 - v100[1]))), v75);
          v103 = vaddv_f32(vmul_f32(v102, v102));
          if (v103 < v101)
          {
            *&v144[0] = *v100;
            v101 = v103;
          }

          v100 += 2;
          --v90;
        }

        while (v90);
      }
    }

    else
    {
LABEL_31:
      v104 = v140;
      v105 = vmul_f32(v104, v104);
      v106 = 0;
      v107 = 0.0;
      v108 = 0.0;
      if (vaddv_f32(v105) > 0.0)
      {
        v109 = vmul_f32(v75, v140);
        LODWORD(v108) = vdiv_f32(vadd_f32(v109, vdup_lane_s32(v109, 1)), vadd_f32(v105, vdup_lane_s32(v105, 1))).u32[0];
        v106 = vadd_f32(vmul_n_f32(v140, v108), 0);
      }

      v110 = vmul_f32(v84, v84);
      if (vaddv_f32(v110) > 0.0)
      {
        v111 = vadd_f32(v110, vdup_lane_s32(v110, 1));
        v112 = vmul_f32(vsub_f32(v75, v140), v84);
        LODWORD(v107) = vdiv_f32(vadd_f32(v112, vdup_lane_s32(v112, 1)), v111).u32[0];
        v104 = vadd_f32(v140, vmul_n_f32(v84, v107));
      }

      v113 = v137;
      v114 = vsub_f32(v81, v139);
      v115 = vmul_f32(v114, v114);
      v116 = 0.0;
      v117 = 0.0;
      v118 = v139;
      if (vaddv_f32(v115) > 0.0)
      {
        v119 = vmul_f32(v114, vsub_f32(v75, v139));
        LODWORD(v117) = vdiv_f32(vadd_f32(v119, vdup_lane_s32(v119, 1)), vadd_f32(v115, vdup_lane_s32(v115, 1))).u32[0];
        v118 = vadd_f32(v139, vmul_n_f32(v114, v117));
      }

      v120 = vmul_f32(v139, v139);
      if (vaddv_f32(v120) > 0.0)
      {
        v121 = vadd_f32(v120, vdup_lane_s32(v120, 1));
        v122 = vmul_f32(v75, v139);
        LODWORD(v116) = vdiv_f32(vadd_f32(v122, vdup_lane_s32(v122, 1)), v121).u32[0];
        v113 = vsub_f32(vadd_f32(vmul_n_f32(v139, v116), 0), v75);
      }

      v123 = vsub_f32(v118, v75);
      v124 = vmul_f32(v123, v123);
      v125 = vadd_f32(v124, vdup_lane_s32(v124, 1));
      v126 = vaddv_f32(v124);
      v127 = vsub_f32(v104, v75);
      v128 = vmul_f32(v127, v127);
      v129 = vsub_f32(v106, v75);
      v130 = vmul_f32(v129, v129);
      v131 = vadd_f32(vzip1_s32(v128, v130), vzip2_s32(v128, v130));
      v132 = __PAIR64__(LODWORD(v107), _D0.u32[0]);
      v133.i32[0] = 0;
      v134 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v131, 1), v131), 0), v132, LODWORD(v108));
      if (v131.f32[0] >= v131.f32[1])
      {
        v131.f32[0] = v131.f32[1];
      }

      _D0.f32[0] = v117;
      v135 = vbsl_s8(vdup_lane_s32(vcgt_f32(v131, v125), 0), _D0, v134);
      if (v126 >= v131.f32[0])
      {
        v134.f32[0] = v131.f32[0];
      }

      else
      {
        v134.f32[0] = v126;
      }

      v136 = vmul_f32(v113, v113);
      *&v133.i32[1] = v116;
      *&v144[0] = vbsl_s8(vdup_lane_s32(vcgt_f32(v134, vadd_f32(v136, vdup_lane_s32(v136, 1))), 0), v133, v135);
    }

    return *&v144[0];
  }

  else
  {
    v14 = vsubq_f32(v5, v9);
    v15 = vmulq_f32(v14, v14);
    v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    v17 = *a1;
    v18 = 0.0;
    v19 = 0.0;
    v20 = *a2;
    if (v16 > 0.0)
    {
      v21 = vmulq_f32(v14, vsubq_f32(v17, v9));
      v19 = (v21.f32[2] + vaddv_f32(*v21.f32)) / v16;
      v20 = vaddq_f32(v9, vmulq_n_f32(v14, v19));
    }

    v22 = vsubq_f32(v8, v5);
    v23 = vmulq_f32(v22, v22);
    v24 = v23.f32[2] + vaddv_f32(*v23.f32);
    if (v24 > 0.0)
    {
      v25 = vmulq_f32(v22, vsubq_f32(v17, v5));
      v18 = (v25.f32[2] + vaddv_f32(*v25.f32)) / v24;
      v5 = vaddq_f32(v5, vmulq_n_f32(v22, v18));
    }

    v26 = vsubq_f32(v8, v6);
    v27 = vmulq_f32(v26, v26);
    v28 = v27.f32[2] + vaddv_f32(*v27.f32);
    v29 = 0.0;
    v30 = 0.0;
    v31 = *a5;
    if (v28 > 0.0)
    {
      v32 = vmulq_f32(v26, vsubq_f32(v17, v6));
      v30 = (v32.f32[2] + vaddv_f32(*v32.f32)) / v28;
      v31 = vaddq_f32(v6, vmulq_n_f32(v26, v30));
    }

    v33 = vsubq_f32(v6, v9);
    v34 = vmulq_f32(v33, v33);
    v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    if (v35 > 0.0)
    {
      v36 = vmulq_f32(v33, vsubq_f32(v17, v9));
      v29 = (v36.f32[2] + vaddv_f32(*v36.f32)) / v35;
      v9 = vaddq_f32(v9, vmulq_n_f32(v33, v29));
    }

    v37 = vsubq_f32(v31, v17);
    v38 = vmulq_f32(v37, v37);
    v38.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
    v39 = vsubq_f32(v5, v17);
    v40 = vmulq_f32(v39, v39);
    v41 = vsubq_f32(v20, v17);
    v42 = vmulq_f32(v41, v41);
    v43 = vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v42, v42, 8uLL)), vadd_f32(vzip1_s32(*v40.i8, *v42.i8), vzip2_s32(*v40.i8, *v42.i8)));
    v44 = vdup_lane_s32(vcgt_f32(vdup_lane_s32(v43, 1), v43), 0);
    __asm { FMOV            V18.2S, #1.0 }

    v50 = __PAIR64__(LODWORD(v18), _D18.u32[0]);
    v51 = LODWORD(v19);
    v52.i32[0] = 0;
    if (v43.f32[0] >= v43.f32[1])
    {
      v43.f32[0] = v43.f32[1];
    }

    *_D18.i32 = v30;
    v53 = vbsl_s8(vdup_lane_s32(vcgt_f32(v43, *v38.f32), 0), _D18, vbsl_s8(v44, v50, v51));
    if (v38.f32[0] < v43.f32[0])
    {
      v43.f32[0] = v38.f32[0];
    }

    v54 = vsubq_f32(v9, v17);
    v55 = vmulq_f32(v54, v54);
    v55.f32[0] = v55.f32[2] + vaddv_f32(*v55.f32);
    *&v52.i32[1] = v29;
    return vbsl_s8(vdup_lane_s32(vcgt_f32(v43, *v55.f32), 0), v52, v53);
  }
}

float re::computeDistanceSquaredFromPointToQuad(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t *a7)
{
  geom_closest_point_to_triangle_3f();
  v25 = v14;
  v15 = vsubq_f32(v14, *a1);
  v24 = vmulq_f32(v15, v15);
  geom_closest_point_to_triangle_3f();
  v17 = vsubq_f32(v16, *a1);
  v18 = vmulq_f32(v17, v17);
  v19 = vadd_f32(vzip1_s32(*v24.i8, *v18.i8), vzip2_s32(*v24.i8, *v18.i8));
  v20 = vextq_s8(v18, v18, 8uLL);
  *v20.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *v20.f32), v19);
  v21 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v20.f32, 1), v20), 0), v25, v16);
  if (v20.f32[0] >= v20.f32[1])
  {
    v22 = v20.f32[1];
  }

  else
  {
    v22 = v20.f32[0];
  }

  *a6 = v21;
  *a7 = re::projectPointOntoBilinearPatch3F(a6, a2, a3, a4, a5);
  return v22;
}

uint64_t (***re::buildParametricPlane(re *this, re::GeomMesh *a2, float a3, float a4, int a5))(void)
{
  v6 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v10 = re::globalAllocators(this)[2];
  v16 = &unk_1F5D02FB0;
  v17 = a3;
  v18 = a4;
  v19 = v10;
  v20 = &v16;
  v12 = 16843008;
  v13 = 0;
  v14 = v6;
  v15 = a5;
  re::buildParametricSurface(this, &v16, &v12);
  return re::FunctionBase<24ul,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::destroyCallable(&v16);
}

uint64_t re::buildParametricSurface(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  v159 = *MEMORY[0x1E69E9840];
  re::GeomMesh::clear(a1);
  v5 = *(a3 + 8);
  v6 = *(a3 + 12);
  v127 = v5 + (*(a3 + 4) ^ 1);
  v7 = (v6 + (*(a3 + 5) ^ 1u)) * v127;
  v8 = *a3;
  v121 = a1;
  re::GeomMeshBuilder::GeomMeshBuilder(v135, a1);
  if (LODWORD(v135[1]) > v7 && v137 && (v137 - 1) > v137)
  {
      ;
    }
  }

  v9 = ((v6 * v5) << v8);
  LODWORD(v135[1]) = v7;
  v140 = v7;
  if (v141)
  {
    v10 = v142;
    v11 = 8 * v141;
    do
    {
      v12 = *v10++;
      (*(*v12 + 80))(v12, v140);
      v11 -= 8;
    }

    while (v11);
  }

  if (v9 < v137)
  {
    v13 = v147;
    if (v147)
    {
      v14 = 0;
      do
      {
        v15 = re::internal::GeomAttributeContainer::attributeByIndex(v146, v14);
        re::internal::accessFaceVaryingAttributeSubmesh(v15, v16);
        ++v14;
      }

      while (v13 != v14);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v136, v9);
  v143 = v9;
  if (v144)
  {
    v17 = v145;
    v18 = 8 * v144;
    do
    {
      v19 = *v17++;
      (*(*v19 + 80))(v19, v143);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = v148;
  v21 = *(a3 + 12);
  v134 = a3;
  if (!v21)
  {
LABEL_41:
    v41 = re::GeomMesh::operator=(v121, &v135[1]);
    re::GeomMesh::setName(v41, v135[0]);
    re::GeomMesh::freeName(v135);
    re::GeomMesh::freeName(v135);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v138 + 8));
    if (v136)
    {
      v42 = v138;
      if (v138)
      {
        (*(*v136 + 40))();
      }
    }

    v129 = *(a3 + 2);
    if (v129 == 1)
    {
      v9 = "vertexNormal";
      v43 = re::internal::GeomAttributeManager::attributeByName((v121 + 16), "vertexNormal");
      v116 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v43);
      v125 = v42;
    }

    else
    {
      v125 = 0;
    }

    v130 = *(a3 + 3);
    if (v130 == 1)
    {
      v44 = re::internal::GeomAttributeManager::attributeByName((v121 + 16), "vertexTangent");
      v115 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v44);
      v126 = v45;
      v46 = re::internal::GeomAttributeManager::attributeByName((v121 + 16), "vertexBitangent");
      v114 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v46);
      v124 = v42;
    }

    else
    {
      v124 = 0;
      v126 = 0;
    }

    if (*(a3 + 1) != 1)
    {
      goto LABEL_98;
    }

    if ((*(a3 + 4) & 1) == 0 && (*(a3 + 5) & 1) == 0)
    {
      re::addVertexUVs(v121, v42);
      v118 = re::modifyVertexUVs(v121, v47);
      v123 = v48;
      v49 = 1;
      goto LABEL_99;
    }

    v50 = v121[10];
    v148[4] = 0;
    memset(v148, 0, 28);
    *&v153[2] = 0;
    memset(v151, 0, sizeof(v151));
    re::DynamicArray<float>::resize(v148, v50);
    re::DynamicArray<re::GeomCell4>::resize(v151, v50);
    if (v50)
    {
      v51 = 0;
      v52 = v148[2];
      v53 = v148[4];
      while (v52 != v51)
      {
        *(v53 + 4 * v51) = v51;
        v51 = (v51 + 1);
        if (v50 == v51)
        {
          goto LABEL_58;
        }
      }

LABEL_136:
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      *v135 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v154 = 136315906;
      *&v154[4] = "operator[]";
      *&v154[12] = 1024;
      *&v154[14] = 789;
      v155 = 2048;
      v156 = v52;
      v157 = 2048;
      v158 = v52;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_58:
      v54 = *(a3 + 12);
      if (v54)
      {
        v55 = 0;
        v56 = 0;
        v57 = *a3;
        v58 = *(a3 + 8);
        v59 = 1;
        v60 = v58;
        do
        {
          v61 = v56 + 1;
          if (v60)
          {
            v62 = 0;
            v63 = v60 + 1;
            v64 = v56 * (v60 + 1);
            v65 = v61 * v63;
            v7 = *&v151[16];
            v66 = *&v153[2];
            v67 = v59 * v63;
            do
            {
              v68 = v64 + v62;
              v69 = v62 + v64 + 1;
              v70 = v67 + v62;
              v52 = v55;
              if (v57)
              {
                if (v7 <= v55)
                {
                  goto LABEL_133;
                }

                v9 = v55 + 1;
                v71 = (v66 + 16 * v55);
                *v71 = v68;
                v71[1] = v68 + 1;
                v71[2] = v70;
                v71[3] = -1;
                v72 = 2;
                if (v7 <= v9)
                {
                  goto LABEL_135;
                }

                v68 = v62 + v64 + 1;
                v69 = v70 + 1;
                v73 = v67 + v62;
                v70 = -1;
              }

              else
              {
                if (v7 <= v55)
                {
                  goto LABEL_134;
                }

                v73 = v62 + v65 + 1;
                v72 = 1;
                v9 = v55;
              }

              v55 += v72;
              v74 = (v66 + 16 * v9);
              *v74 = v68;
              v74[1] = v69;
              v74[2] = v73;
              v74[3] = v70;
              ++v62;
              v58 = *(a3 + 8);
            }

            while (v62 < v58);
            v54 = *(a3 + 12);
            v60 = *(a3 + 8);
          }

          ++v59;
          v56 = v61;
        }

        while (v61 < v54);
        v75 = v54 + 1;
      }

      else
      {
        v58 = *(a3 + 8);
        v75 = 1;
      }

      v76 = re::GeomMesh::addFaceVaryingAttribute(v121, "vertexUV", 6, v75 + v75 * v58, v151, v148);
      if (!(*(*v76 + 16))(v76))
      {
        goto LABEL_78;
      }

      if (v76[5])
      {
        v77 = v76[7];
        v78 = (*(*v76 + 16))(v76);
        goto LABEL_79;
      }
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v154 = 136315906;
    *&v154[4] = "operator[]";
    *&v154[12] = 1024;
    *&v154[14] = 789;
    v155 = 2048;
    v156 = 0;
    v157 = 2048;
    v158 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = 0;
  v22 = 0;
  v23 = *(a3 + 8);
  while (1)
  {
    v7 = (v22 * v127);
    v24 = ((v22 == v21 - 1) & *(a3 + 5)) != 0 ? 0 : v7 + v127;
    if (v23)
    {
      break;
    }

LABEL_40:
    if (++v22 >= v21)
    {
      goto LABEL_41;
    }
  }

  v129 = v22;
  v130 = v22 * v127;
  v25 = 0;
  v132 = v24;
  while (1)
  {
    v26 = ((v25 == v23 - 1) & *(a3 + 4)) != 0 ? 0 : v25 + 1;
    v27 = v25 + v7;
    v28 = v26 + v7;
    v29 = v26 + v24;
    v30 = v25 + v24;
    if (*a3 != 1)
    {
      break;
    }

    re::GeomMeshBuilder::setFaceVertices(v135, v9, v25 + v7, v28, v25 + v24);
    re::GeomMeshBuilder::setFaceVertices(v135, v9 + 1, v28, v29, v25 + v24);
    v20 = v148;
    v31 = 2;
LABEL_38:
    ++v25;
    v9 = (v31 + v9);
    v23 = *(a3 + 8);
    if (v25 >= v23)
    {
      v21 = *(a3 + 12);
      v22 = v129;
      goto LABEL_40;
    }
  }

  a3 = v137;
  if (v137 > v9)
  {
    v32 = (v138 + 16 * v9);
    v33 = *v32;
    v34 = v32[3];
    if (v33 != -1 && v34 != -1)
    {
      v36 = v147;
      if (v147)
      {
        v37 = 0;
        do
        {
          v38 = re::internal::GeomAttributeContainer::attributeByIndex(v146, v37);
          re::internal::accessFaceVaryingAttributeSubmesh(v38, v39);
          ++v37;
        }

        while (v36 != v37);
        a3 = v137;
        v20 = v148;
        v7 = v130;
      }
    }

    v24 = v132;
    if (a3 <= v9)
    {
      goto LABEL_77;
    }

    v40 = (v138 + 16 * v9);
    *v40 = v27;
    v40[1] = v28;
    v40[2] = v29;
    v40[3] = v30;
    v31 = 1;
    a3 = v134;
    goto LABEL_38;
  }

  *v154 = 0;
  v149 = 0u;
  v150 = 0u;
  memset(v148, 0, sizeof(v148));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v151 = 136315906;
  *&v151[4] = "operator[]";
  *&v151[12] = 1024;
  *&v151[14] = 797;
  *&v151[18] = 2048;
  *&v151[20] = v9;
  v152 = 2048;
  *v153 = a3;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_77:
  *v154 = 0;
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *v20 = 0u;
  v7 = v148;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v151 = 136315906;
  *&v151[4] = "operator[]";
  *&v151[12] = 1024;
  *&v151[14] = 789;
  *&v151[18] = 2048;
  *&v151[20] = v9;
  v152 = 2048;
  *v153 = a3;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_78:
  v78 = 0;
  v77 = 0;
LABEL_79:
  v79 = 0;
  v80 = 0;
  v81 = *(a3 + 8);
  v82 = *(a3 + 12);
  v83 = 1.0 / v81;
  v84 = 1.0 / v82;
  do
  {
    v85 = 0;
    v86 = v84 * v79;
    if (v79 == v82)
    {
      v86 = 1.0;
    }

    v87 = v80;
    v88 = v78 >= v80;
    v89 = v78 - v80;
    if (v88)
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    do
    {
      if (v90 == v85)
      {
        goto LABEL_128;
      }

      *&v91 = v83 * v85;
      if (v85 == v81)
      {
        *&v91 = 1.0;
      }

      *(&v91 + 1) = v86;
      *(v77 + 8 * v87) = v91;
      v80 = v87 + 1;
      v81 = *(a3 + 8);
      ++v87;
      v88 = v85++ >= v81;
    }

    while (!v88);
    v82 = *(a3 + 12);
    v88 = v79++ >= v82;
  }

  while (!v88);
  if (*v151 && *&v153[2])
  {
    (*(**v151 + 40))(*v151);
  }

  if (v148[0] && v148[4])
  {
    (*(*v148[0] + 40))(v148[0], v148[4]);
  }

LABEL_98:
  v49 = 0;
  v118 = 0;
  v123 = 0xFFFFFFFFLL;
LABEL_99:
  result = re::GeomMesh::modifyVertexPositions(v121);
  v117 = result;
  v119 = v93;
  v94 = *(a3 + 12);
  v120 = v94 + (*(a3 + 5) ^ 1);
  if (v120)
  {
    v95 = 0;
    v96 = 0;
    v97 = *(a3 + 8);
    v78 = v97 + (*(a3 + 4) ^ 1);
    v98 = 1.0 / v97;
    v99 = 1.0 / v94;
    while (1)
    {
      v100 = v99 * v96;
      if (v96 == *(a3 + 12))
      {
        v100 = 1.0;
      }

      v133 = v100;
      if (v78)
      {
        break;
      }

LABEL_125:
      if (++v96 == v120)
      {
        return result;
      }
    }

    v122 = v96;
    v7 = 0;
    v101 = v95;
    if (v119 >= v95)
    {
      v102 = v119 - v95;
    }

    else
    {
      v102 = 0;
    }

    v128 = v116 + 16 * v95;
    v103 = (v114 + 16 * v95);
    v104 = (v115 + 16 * v95);
    v105 = v118 + 8 * v95;
    v113 = v95;
    v9 = v117 + 16 * v95;
    while (1)
    {
      v106 = v101 + v7;
      v107 = v98 * v7;
      if (v7 == *(v134 + 8))
      {
        v107 = 1.0;
      }

      if (v49)
      {
        if (v123 <= v106)
        {
          goto LABEL_129;
        }

        *(v105 + 8 * v7) = __PAIR64__(LODWORD(v133), LODWORD(v107));
      }

      *v151 = 0u;
      *v154 = 0u;
      *v135 = v107;
      *v148 = v133;
      result = (*(**(a2 + 32) + 16))(*(a2 + 32), v135, v148, v151, v154);
      if (v102 == v7)
      {
        break;
      }

      v109 = (v9 + 16 * v7);
      *v109 = result;
      v109[1] = v108;
      if (v130)
      {
        if (v106 >= v126)
        {
          goto LABEL_130;
        }

        *v104 = *v151;
        if (v106 >= v124)
        {
          goto LABEL_132;
        }

        *v103 = *v154;
      }

      if (v129)
      {
        v110 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v154, *v154), *v154, 0xCuLL), vnegq_f32(*v151)), *v154, vextq_s8(vuzp1q_s32(*v151, *v151), *v151, 0xCuLL));
        v111 = vextq_s8(vuzp1q_s32(v110, v110), v110, 0xCuLL);
        v112 = vmulq_f32(v110, v110);
        v112.f32[0] = v112.f32[1] + (v112.f32[2] + v112.f32[0]);
        if (v112.f32[0] > 1.0e-10)
        {
          v112.f32[0] = sqrtf(v112.f32[0]);
          v111 = vdivq_f32(v111, vdupq_lane_s32(*v112.f32, 0));
        }

        if (v106 >= v125)
        {
          goto LABEL_131;
        }

        *(v128 + 16 * v7) = v111;
      }

      ++v7;
      ++v103;
      ++v104;
      if (v78 == v7)
      {
        v95 = v101 + v7;
        a3 = v134;
        v96 = v122;
        goto LABEL_125;
      }
    }

    LODWORD(v87) = v119;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v148 + 4) = "operator[]";
    WORD2(v148[1]) = 1024;
    *(&v148[1] + 6) = 621;
    LODWORD(v148[0]) = 136315906;
    WORD1(v148[2]) = 2048;
    *(&v148[2] + 4) = v113 + v7;
    WORD2(v148[3]) = 2048;
    *(&v148[3] + 6) = v119;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v154 = 136315906;
    *&v154[4] = "operator[]";
    *&v154[12] = 1024;
    *&v154[14] = 621;
    v155 = 2048;
    v156 = v87;
    v157 = 2048;
    v158 = v78;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_129:
    *v151 = 0;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v148 + 4) = "operator[]";
    WORD2(v148[1]) = 1024;
    *(&v148[1] + 6) = 621;
    LODWORD(v148[0]) = 136315906;
    WORD1(v148[2]) = 2048;
    *(&v148[2] + 4) = v113 + v7;
    WORD2(v148[3]) = 2048;
    *(&v148[3] + 6) = v123;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v148[0]) = 136315906;
    *(v148 + 4) = "operator[]";
    WORD2(v148[1]) = 1024;
    *(&v148[1] + 6) = 621;
    WORD1(v148[2]) = 2048;
    *(&v148[2] + 4) = v7 + v113;
    WORD2(v148[3]) = 2048;
    *(&v148[3] + 6) = v126;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v148[0]) = 136315906;
    *(v148 + 4) = "operator[]";
    WORD2(v148[1]) = 1024;
    *(&v148[1] + 6) = 621;
    WORD1(v148[2]) = 2048;
    *(&v148[2] + 4) = v7 + v113;
    WORD2(v148[3]) = 2048;
    *(&v148[3] + 6) = v125;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_132:
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    v52 = v148;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v148[0]) = 136315906;
    *(v148 + 4) = "operator[]";
    WORD2(v148[1]) = 1024;
    *(&v148[1] + 6) = 621;
    WORD1(v148[2]) = 2048;
    *(&v148[2] + 4) = v7 + v113;
    WORD2(v148[3]) = 2048;
    *(&v148[3] + 6) = v124;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v154 = 136315906;
    *&v154[4] = "operator[]";
    *&v154[12] = 1024;
    *&v154[14] = 789;
    v155 = 2048;
    v156 = v52;
    v157 = 2048;
    v158 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v154 = 136315906;
    *&v154[4] = "operator[]";
    *&v154[12] = 1024;
    *&v154[14] = 789;
    v155 = 2048;
    v156 = v52;
    v157 = 2048;
    v158 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *v135 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v154 = 136315906;
    *&v154[4] = "operator[]";
    *&v154[12] = 1024;
    *&v154[14] = 789;
    v155 = 2048;
    v156 = v9;
    v157 = 2048;
    v158 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_136;
  }

  return result;
}

uint64_t re::buildCube(re *this, re::GeomMesh *a2, float a3, unsigned int a4)
{
  v96 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = v5;
  }

  v74 = v5;
  v7 = v5 + 1;
  v8 = v6 + 1;
  v9 = (v6 + 1) * (v5 + 1);
  re::GeomMeshBuilder::GeomMeshBuilder(v75, this);
  v71 = v9;
  if (LODWORD(v75[1]) > 6 * v9 && v77 && (v77 - 1) > v77)
  {
      ;
    }
  }

  v68 = this;
  LODWORD(v75[1]) = 6 * v9;
  v80 = 6 * v9;
  if (v81)
  {
    v10 = v82;
    v11 = 8 * v81;
    do
    {
      v12 = *v10++;
      (*(*v12 + 80))(v12, v80);
      v11 -= 8;
    }

    while (v11);
  }

  v13 = 12 * v74 * v6;
  if (v13 < v77)
  {
    v14 = v87;
    if (v87)
    {
      v15 = 0;
      do
      {
        v16 = re::internal::GeomAttributeContainer::attributeByIndex(&v86, v15);
        re::internal::accessFaceVaryingAttributeSubmesh(v16, v17);
        ++v15;
      }

      while (v14 != v15);
    }
  }

  v69 = v7;
  re::DynamicArray<re::GeomCell4>::resize(&v76, v13);
  v83 = 12 * v74 * v6;
  if (v84)
  {
    v18 = v85;
    v19 = 8 * v84;
    do
    {
      v20 = *v18++;
      (*(*v20 + 80))(v20, v83);
      v19 -= 8;
    }

    while (v19);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v6 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v6;
  }

  do
  {
    v25 = 0;
    v72 = v21;
    do
    {
      ++v25;
      v26 = v24;
      v27 = v21;
      do
      {
        v28 = v27 + 1;
        v29 = v6 + v27;
        re::GeomMeshBuilder::setFaceVertices(v75, v22, v27, v27 + 1, v6 + v27 + 1);
        re::GeomMeshBuilder::setFaceVertices(v75, v22 + 1, v28, v29 + 2, v29 + 1);
        v22 += 2;
        v27 = v28;
        --v26;
      }

      while (v26);
      v21 += v8;
    }

    while (v25 != v74);
    ++v23;
    v21 = v72 + v71;
  }

  while (v23 != 6);
  v30 = re::GeomMesh::operator=(v68, &v75[1]);
  re::GeomMesh::setName(v30, v75[0]);
  re::GeomMesh::freeName(v75);
  re::GeomMesh::freeName(v75);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v78 + 8));
  if (v76)
  {
    v31 = v78;
    if (v78)
    {
      (*(*v76 + 40))();
    }
  }

  re::addVertexUVs(v68, v31);
  v32 = re::GeomMesh::modifyVertexPositions(v68);
  v73 = v33;
  v34 = re::modifyVertexUVs(v68, v33);
  v36 = v35;
  v37 = re::internal::GeomAttributeManager::attributeByName((v68 + 64), "vertexNormal");
  v38 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v37);
  v40 = v39;
  v41 = re::internal::GeomAttributeManager::attributeByName((v68 + 64), "vertexTangent");
  v42 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v41);
  v44 = v43;
  v45 = re::internal::GeomAttributeManager::attributeByName((v68 + 64), "vertexBitangent");
  result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v45);
  v48 = v36;
  v49 = 0;
  v50 = 0;
  v51 = 2.0 / v6;
  v52 = 1.0 / v6;
  do
  {
    if (v50 > 2)
    {
      if (v50 == 3)
      {
        v53 = xmmword_1E30661E0;
        v54 = xmmword_1E3047670;
        v55 = xmmword_1E30661D0;
        if (!v69)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v53 = xmmword_1E30661D0;
        if (v50 == 4)
        {
          v54 = xmmword_1E3047670;
          v55 = xmmword_1E30476A0;
          if (!v69)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v54 = xmmword_1E30661F0;
          v55 = xmmword_1E30661E0;
          if (!v69)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      v53 = xmmword_1E30661D0;
      v54 = xmmword_1E30661E0;
      v55 = xmmword_1E3047670;
      if (v50)
      {
        if (v50 == 1)
        {
          v53 = xmmword_1E30661D0;
          v54 = xmmword_1E30476A0;
          v55 = xmmword_1E30661F0;
          if (!v69)
          {
            goto LABEL_69;
          }

          goto LABEL_46;
        }

        v53 = xmmword_1E30476A0;
        v54 = xmmword_1E3047670;
        v55 = xmmword_1E3047680;
      }

      if (!v69)
      {
        goto LABEL_69;
      }
    }

LABEL_46:
    v56 = 0;
    do
    {
      if (v8)
      {
        v57 = 0;
        v58 = vaddq_f32(v55, vmulq_n_f32(v54, (v56 * (2.0 / v74)) + -1.0));
        v59 = v73 - v49;
        if (v73 < v49)
        {
          v59 = 0;
        }

        v60 = v36 - v49;
        if (v36 < v49)
        {
          v60 = 0;
        }

        v61 = v40 - v49;
        if (v40 < v49)
        {
          v61 = 0;
        }

        v62 = v44 - v49;
        if (v44 < v49)
        {
          v62 = 0;
        }

        v63 = v47 - v49;
        if (v47 < v49)
        {
          v63 = 0;
        }

        do
        {
          if (v59 == v57)
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            *v75 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v89 = "operator[]";
            v90 = 1024;
            v91 = 621;
            v88 = 136315906;
            v92 = 2048;
            v93 = v49 + v57;
            v94 = 2048;
            v95 = v73;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_72:
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            *v75 = 0u;
            v66 = v48;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v88 = 136315906;
            v89 = "operator[]";
            v90 = 1024;
            v91 = 621;
            v92 = 2048;
            v93 = v57 + v49;
            v94 = 2048;
            v95 = v66;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            *v75 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v88 = 136315906;
            v89 = "operator[]";
            v90 = 1024;
            v91 = 621;
            v92 = 2048;
            v93 = v57 + v49;
            v94 = 2048;
            v95 = v40;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_74:
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            *v75 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v88 = 136315906;
            v89 = "operator[]";
            v90 = 1024;
            v91 = 621;
            v92 = 2048;
            v93 = v57 + v49;
            v94 = 2048;
            v95 = v44;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_75:
            v67 = v47;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            *v75 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v88 = 136315906;
            v89 = "operator[]";
            v90 = 1024;
            v91 = 621;
            v92 = 2048;
            v93 = v57 + v49;
            v94 = 2048;
            v95 = v67;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(v32 + 16 * v49 + 16 * v57) = vmulq_n_f32(vaddq_f32(v58, vmulq_n_f32(v53, (v57 * v51) + -1.0)), a3);
          if (v60 == v57)
          {
            goto LABEL_72;
          }

          *&v64 = (1.0 / v74) * v56;
          *(&v64 + 1) = v52 * v57;
          *(v34 + 8 * v49 + 8 * v57) = v64;
          if (v61 == v57)
          {
            goto LABEL_73;
          }

          *(v38 + 16 * v49 + 16 * v57) = v55;
          if (v62 == v57)
          {
            goto LABEL_74;
          }

          *(v42 + 16 * v49 + 16 * v57) = v54;
          if (v63 == v57)
          {
            goto LABEL_75;
          }

          *(result + 16 * v49 + 16 * v57++) = v53;
        }

        while (v8 != v57);
        v49 += v57;
      }
    }

    while (v56++ != v74);
LABEL_69:
    ++v50;
  }

  while (v50 != 6);
  return result;
}

float re::internal::Callable<re::buildParametricPlane(re::GeomMesh &,float,float,unsigned int,unsigned int)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::operator()(uint64_t a1, float *a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  result = (*a2 + -0.5) * *(a1 + 8);
  *a4 = xmmword_1E30476A0;
  *a5 = xmmword_1E3047670;
  return result;
}

void *re::internal::Callable<re::buildParametricPlane(re::GeomMesh &,float,float,unsigned int,unsigned int)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D02FB0;
  a2[1] = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::buildParametricPlane(re::GeomMesh &,float,float,unsigned int,unsigned int)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D02FB0;
  a2[1] = *(a1 + 8);
  return a2;
}

void re::makeManifold(unint64_t a1, uint64_t **a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  re::GeomMesh::GeomMesh(v33, 0);
  v32 = 0;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v7 = *(a1 + 16);
  v31 = 1;
  re::DynamicArray<unsigned int>::resize(v29, v7, re::kInvalidMeshIndex);
  v8 = *(a1 + 40);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = 0;
  v10 = *(a1 + 56);
  v11 = v30;
  do
  {
    if (v9 == v8)
    {
      goto LABEL_46;
    }

    v12 = 0;
    v34 = *(v10 + 16 * v9);
    if (HIDWORD(v34) == -1)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }

    v14 = v32;
    do
    {
      v3 = *(&v34 + v12);
      if (v11 <= v3)
      {
        *v43 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v50[0]) = 136315906;
        *(v50 + 4) = "operator[]";
        WORD6(v50[0]) = 1024;
        *(v50 + 14) = 789;
        WORD1(v50[1]) = 2048;
        *(&v50[1] + 4) = v3;
        WORD6(v50[1]) = 2048;
        *(&v50[1] + 14) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_46:
        *&v34 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v50[0]) = 136315906;
        *(v50 + 4) = "operator[]";
        WORD6(v50[0]) = 1024;
        *(v50 + 14) = 797;
        WORD1(v50[1]) = 2048;
        *(&v50[1] + 4) = v8;
        WORD6(v50[1]) = 2048;
        *(&v50[1] + 14) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_47;
      }

      *(v14 + 4 * v3) = v3;
      ++v12;
    }

    while (v13 != v12);
    ++v9;
  }

  while (v9 != v8);
  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_11:
  v15 = 0;
  v16 = 1;
  v8 = v30;
  v17 = v32;
  while (1)
  {
    if (v30 == v15)
    {
      goto LABEL_48;
    }

    if (*(v32 + 4 * v15) == -1)
    {
      break;
    }

    v15 = (v15 + 1);
    v16 = v15 < v7;
    if (v7 == v15)
    {
      goto LABEL_34;
    }
  }

  v18 = 0;
  v19 = 0;
  do
  {
    if (v8 == v18)
    {
      goto LABEL_49;
    }

    if (*(v17 + 4 * v18) != -1)
    {
      v3 = v19;
      if (v8 <= v19)
      {
        goto LABEL_50;
      }

      *(v17 + 4 * v19++) = v18;
    }

    ++v18;
  }

  while (v7 != v18);
  re::DynamicArray<float>::resize(v29, v19);
  re::internal::buildMeshFromNewVertices(a1, v29, v33);
  if (v16)
  {
    re::GeomMesh::GeomMesh(&v38, 0);
    v37 = 0;
    v35 = 0;
    v34 = 0uLL;
    v36 = 0;
    {
      re::GeomMesh::operator=(v33, &v38);
      v20 = v35;
      if (v35)
      {
        v21 = v37;
        a1 = v30;
        v22 = v32;
        do
        {
          v7 = *v21;
          if (a1 <= v7)
          {
            goto LABEL_51;
          }

          *v21++ = *(v22 + 4 * v7);
        }

        while (--v20);
      }

      re::DynamicArray<re::RigComponentConstraint>::operator=(v29, &v34);
    }

    if (v34 && v37)
    {
      (*(*v34 + 40))();
    }

    re::GeomMesh::~GeomMesh(&v38);
LABEL_35:
    v23 = *(a3 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = *(a3 + 32);
      v26 = 1;
      a2 = v30;
      v27 = v32;
      while (1)
      {
        a1 = *(v25 + 4 * v24);
        if (a2 <= a1)
        {
          break;
        }

        *(v25 + 4 * v24) = *(v27 + 4 * a1);
        v24 = v26;
        if (v23 <= v26++)
        {
          goto LABEL_41;
        }
      }

LABEL_47:
      *&v34 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v50[0]) = 136315906;
      *(v50 + 4) = "operator[]";
      WORD6(v50[0]) = 1024;
      *(v50 + 14) = 789;
      WORD1(v50[1]) = 2048;
      *(&v50[1] + 4) = a1;
      WORD6(v50[1]) = 2048;
      *(&v50[1] + 14) = a2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_48:
      *&v34 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v50[0]) = 136315906;
      *(v50 + 4) = "operator[]";
      WORD6(v50[0]) = 1024;
      *(v50 + 14) = 789;
      WORD1(v50[1]) = 2048;
      *(&v50[1] + 4) = v8;
      WORD6(v50[1]) = 2048;
      *(&v50[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_49:
      *&v34 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v50[0]) = 136315906;
      *(v50 + 4) = "operator[]";
      WORD6(v50[0]) = 1024;
      *(v50 + 14) = 789;
      WORD1(v50[1]) = 2048;
      *(&v50[1] + 4) = v8;
      WORD6(v50[1]) = 2048;
      *(&v50[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_50:
      *&v34 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v50[0]) = 136315906;
      *(v50 + 4) = "operator[]";
      WORD6(v50[0]) = 1024;
      *(v50 + 14) = 789;
      WORD1(v50[1]) = 2048;
      *(&v50[1] + 4) = v3;
      WORD6(v50[1]) = 2048;
      *(&v50[1] + 14) = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v33[92] = 0;
      memset(v50, 0, sizeof(v50));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v43 = 136315906;
      *&v43[4] = "operator[]";
      v44 = 1024;
      v45 = 789;
      v46 = 2048;
      v47 = v7;
      v48 = 2048;
      v49 = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
LABEL_34:
    {
      goto LABEL_35;
    }
  }

LABEL_41:
  if (v29[0] && v32)
  {
    (*(*v29[0] + 40))();
  }

  re::GeomMesh::~GeomMesh(v33);
}

uint64_t re::anonymous namespace::makeManifoldByVertexSplitting(unint64_t a1, uint64_t **a2, uint64_t a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v48 = 0;
  v46[1] = 0;
  v46[2] = 0;
  v47 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v46, 1uLL);
  ++v47;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v52 = 0;
  v80 = 0;
  v53 = 0u;
  v54 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v58 = 0;
  v59 = 0u;
  v60 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0;
  v64 = 0;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  re::internal::GeomConnectivityNonManifold::build(a1 + 16, &v45);
  v44 = 0;
  v41[1] = 0;
  v42 = 0;
  v41[0] = 0;
  v43 = 0;
  re::DynamicArray<unsigned int>::resize(v41, 4 * (*(a1 + 40) & 0x3FFFFFFFLL), re::kInvalidMeshIndex);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 56);
    v11 = v42;
    do
    {
      if (v9 == v7)
      {
LABEL_113:
        *v83 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v100[0]) = 136315906;
        *(v100 + 4) = "operator[]";
        WORD6(v100[0]) = 1024;
        *(v100 + 14) = 797;
        WORD1(v100[1]) = 2048;
        *(&v100[1] + 4) = v7;
        WORD6(v100[1]) = 2048;
        *(&v100[1] + 14) = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_114:
        *v83 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v100[0]) = 136315906;
        *(v100 + 4) = "operator[]";
        WORD6(v100[0]) = 1024;
        *(v100 + 14) = 797;
        WORD1(v100[1]) = 2048;
        *(&v100[1] + 4) = v7;
        WORD6(v100[1]) = 2048;
        *(&v100[1] + 14) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_115:
        *v93 = 0;
        v101 = v20;
        v102 = v20;
        v100[1] = v20;
        v100[2] = v20;
        v100[0] = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 797;
        *&v83[18] = 2048;
        *&v83[20] = v7;
        v84 = 2048;
        v85[0] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_116:
        *v93 = 0;
        v101 = v20;
        v102 = v20;
        v100[1] = v20;
        v100[2] = v20;
        v100[0] = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 797;
        *&v83[18] = 2048;
        *&v83[20] = v3;
        v84 = 2048;
        v85[0] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *v83 = *(v10 + 16 * v9);
      v12 = v44;
      if (*&v83[12] == -1)
      {
        v13 = 3;
      }

      else
      {
        v13 = 4;
      }

      v14 = v83;
      v15 = v8;
      do
      {
        v16 = v15;
        if (v11 <= v15)
        {
          goto LABEL_61;
        }

        v17 = *v14++;
        *(v12 + 4 * v15++) = v17;
        --v13;
      }

      while (v13);
      ++v9;
      v8 += 4;
    }

    while (v9 != v7);
  }

  v39 = a2;
  re::DynamicArray<re::RigComponentConstraint>::operator=(a3, &v86);
  if (v86 && v88)
  {
    (*(*v86 + 40))(v86);
  }

  v40 = 0;
  v18 = DWORD2(v54);
  if (DWORD2(v54))
  {
    v19 = 0;
    v16 = &v86;
    do
    {
      v7 = v19;
      v11 = v51;
      if (v51 <= v19)
      {
        goto LABEL_114;
      }

      if ((*(v53 + v19) & 2) != 0)
      {
        *&v86 = &v45;
        DWORD2(v86) = v19;
        *&v88 = 0;
        v87 = 0uLL;
        DWORD2(v88) = 0;
        v92 = 0;
        v20 = 0uLL;
        v89 = 0u;
        v90 = 0u;
        v91 = 0;
        if (v19)
        {
          v3 = v19 - 1;
          v11 = *(&v57 + 1);
          if (*(&v57 + 1) <= v3)
          {
            goto LABEL_116;
          }

          v3 = *(v59 + 4 * v3);
        }

        else
        {
          v3 = 0;
          v11 = *(&v57 + 1);
        }

        if (v11 <= v19)
        {
          goto LABEL_115;
        }

        v21 = *(v59 + 4 * v19);
        v11 = v21 - v3;
        re::DynamicArray<float>::resize(&v87, v11);
        if (v21 > v3)
        {
          v22 = 0;
          v23 = v3;
          v24 = *(&v63 + 1);
          v25 = v65;
          v26 = *(&v63 + 1) - v3;
          if (*(&v63 + 1) < v3)
          {
            v26 = 0;
          }

          v7 = v88;
          v27 = v89;
          while (1)
          {
            if (v26 == v22)
            {
              goto LABEL_111;
            }

            if (v7 == v22)
            {
              break;
            }

            *(v27 + 4 * v22) = *(v25 + 4 * v23++);
            if (v11 == ++v22)
            {
              goto LABEL_32;
            }
          }

LABEL_112:
          *v93 = 0;
          v101 = 0u;
          v102 = 0u;
          memset(v100, 0, sizeof(v100));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v83 = 136315906;
          *&v83[4] = "operator[]";
          *&v83[12] = 1024;
          *&v83[14] = 789;
          *&v83[18] = 2048;
          *&v83[20] = v7;
          v84 = 2048;
          v85[0] = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_113;
        }

        v7 = v88;
LABEL_32:
        LOBYTE(v100[0]) = 0;
        re::DynamicArray<unsigned char>::resize(&v89 + 1, v7, v100);
        *(v85 + 2) = 0;
        memset(v83, 0, sizeof(v83));
        {
          do
          {
            if (!*&v83[16])
            {
              goto LABEL_45;
            }

            v28 = *(v85 + 2);
            v29 = *(v85 + 2) + 4 * *&v83[16];
            v7 = *(a1 + 40);
            v30 = *(a1 + 56);
            do
            {
              v11 = *v28;
              if (v7 <= v11)
              {
                *&v82 = 0;
                v101 = 0u;
                v102 = 0u;
                memset(v100, 0, sizeof(v100));
                v23 = MEMORY[0x1E69E9C10];
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v93 = 136315906;
                *&v93[4] = "operator[]";
                v94 = 1024;
                v95 = 797;
                v96 = 2048;
                v97 = v11;
                v98 = 2048;
                v99 = v7;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_111:
                *v93 = 0;
                v101 = 0u;
                v102 = 0u;
                memset(v100, 0, sizeof(v100));
                v38 = v24;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v83 = 136315906;
                *&v83[4] = "operator[]";
                *&v83[12] = 1024;
                *&v83[14] = 797;
                *&v83[18] = 2048;
                *&v83[20] = v23;
                v84 = 2048;
                v85[0] = v38;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_112;
              }

              v82 = *(v30 + 16 * v11);
              v31 = 4 * v11;
              v32 = *(a3 + 16);
              v11 = v42;
              v33 = v44;
              if (HIDWORD(v82) == -1)
              {
                v34 = 3;
              }

              else
              {
                v34 = 4;
              }

              v35 = &v82;
              do
              {
                v36 = *v35++;
                if (v36 == v40)
                {
                  v3 = v31;
                  if (v11 <= v31)
                  {
                    v81 = 0;
                    v101 = 0u;
                    v102 = 0u;
                    memset(v100, 0, sizeof(v100));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v93 = 136315906;
                    *&v93[4] = "operator[]";
                    v94 = 1024;
                    v95 = 789;
                    v96 = 2048;
                    v97 = v3;
                    v98 = 2048;
                    v99 = v11;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_61:
                    *v93 = 0;
                    v89 = 0u;
                    v90 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v86 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v100[0]) = 136315906;
                    *(v100 + 4) = "operator[]";
                    WORD6(v100[0]) = 1024;
                    *(v100 + 14) = 789;
                    WORD1(v100[1]) = 2048;
                    *(&v100[1] + 4) = v16;
                    WORD6(v100[1]) = 2048;
                    *(&v100[1] + 14) = v11;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_62:
                    re::internal::buildMeshFromNewFaceVertices(a1, v41, v39);
                    goto LABEL_63;
                  }

                  *(v33 + 4 * v31) = v32;
                }

                ++v31;
                --v34;
              }

              while (v34);
              ++v28;
            }

            while (v28 != v29);
LABEL_45:
            re::DynamicArray<int>::add(a3, &v40);
          }
        }

        if (*v83 && *(v85 + 2))
        {
          (*(**v83 + 40))(*v83);
        }

        if (*(&v89 + 1))
        {
          if (v92)
          {
            (*(**(&v89 + 1) + 40))(*(&v89 + 1));
          }

          v92 = 0;
          v90 = 0uLL;
          *(&v89 + 1) = 0;
          ++v91;
        }

        if (v87 && v89)
        {
          (*(*v87 + 40))(v87);
        }

        v19 = v40;
        v18 = DWORD2(v54);
      }

      v40 = ++v19;
    }

    while (v19 < v18);
  }

  if (*(a3 + 16) != *(a1 + 16))
  {
    goto LABEL_62;
  }

  re::GeomMesh::copy(a1, v39);
LABEL_63:
  if (v41[0] && v44)
  {
    (*(*v41[0] + 40))(v41[0], v44);
  }

  if (*(&v77 + 1))
  {
    if (v80)
    {
      (*(**(&v77 + 1) + 40))(*(&v77 + 1));
    }

    v80 = 0;
    v78 = 0uLL;
    *(&v77 + 1) = 0;
    ++v79;
  }

  if (*(&v74 + 1))
  {
    if (v77)
    {
      (*(**(&v74 + 1) + 40))(*(&v74 + 1));
    }

    *&v77 = 0;
    v75 = 0uLL;
    *(&v74 + 1) = 0;
    ++v76;
  }

  if (*(&v71 + 1))
  {
    if (v74)
    {
      (*(**(&v71 + 1) + 40))(*(&v71 + 1));
    }

    *&v74 = 0;
    v72 = 0uLL;
    *(&v71 + 1) = 0;
    ++v73;
  }

  if (*(&v68 + 1))
  {
    if (v71)
    {
      (*(**(&v68 + 1) + 40))(*(&v68 + 1));
    }

    *&v71 = 0;
    v69 = 0uLL;
    *(&v68 + 1) = 0;
    ++v70;
  }

  if (*(&v65 + 1))
  {
    if (v68)
    {
      (*(**(&v65 + 1) + 40))(*(&v65 + 1));
    }

    *&v68 = 0;
    v66 = 0uLL;
    *(&v65 + 1) = 0;
    ++v67;
  }

  if (*(&v62 + 1))
  {
    if (v65)
    {
      (*(**(&v62 + 1) + 40))(*(&v62 + 1));
    }

    *&v65 = 0;
    v63 = 0uLL;
    *(&v62 + 1) = 0;
    ++v64;
  }

  if (*(&v59 + 1))
  {
    if (v62)
    {
      (*(**(&v59 + 1) + 40))(*(&v59 + 1));
    }

    *&v62 = 0;
    v60 = 0uLL;
    *(&v59 + 1) = 0;
    ++v61;
  }

  if (*(&v56 + 1))
  {
    if (v59)
    {
      (*(**(&v56 + 1) + 40))(*(&v56 + 1));
    }

    *&v59 = 0;
    v57 = 0uLL;
    *(&v56 + 1) = 0;
    ++v58;
  }

  if (*(&v53 + 1))
  {
    if (v56)
    {
      (*(**(&v53 + 1) + 40))(*(&v53 + 1));
    }

    *&v56 = 0;
    v54 = 0uLL;
    *(&v53 + 1) = 0;
    ++v55;
  }

  if (v49)
  {
    if (v53)
    {
      (*(*v49 + 40))(v49, v53);
    }

    *&v53 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    ++v52;
  }

  result = v46[0];
  if (v46[0])
  {
    if (v48)
    {
      return (*(*v46[0] + 40))(v46[0], v48);
    }
  }

  return result;
}

uint64_t re::anonymous namespace::makeMeshWithNoDuplicatedFaceVertices(unint64_t a1, uint64_t a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::RigComponentConstraint>::operator=(a3, &v34);
  if (v34 && v36)
  {
    (*(*v34 + 40))();
  }

  v23 = 0;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  v22 = 0;
  re::DynamicArray<unsigned int>::resize(v20, 4 * (*(a1 + 40) & 0x3FFFFFFFLL), re::kInvalidMeshIndex);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_21;
  }

  v18 = a2;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v6 <= v7)
    {
      goto LABEL_27;
    }

    v6 = 0;
    v25 = *(*(a1 + 56) + 16 * v7);
    v9 = 4 * v7;
    if (HIDWORD(v25) == -1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    do
    {
      v11 = *(&v25 + v6);
      v19 = v11;
      v12 = (v9 + v6);
      v13 = v21;
      if (v21 <= v12)
      {
        v24 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        v29 = 789;
        v30 = 2048;
        v31 = (v9 + v6);
        v32 = 2048;
        v33 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_27:
        *&v25 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        v29 = 797;
        v30 = 2048;
        v31 = v7;
        v32 = 2048;
        v33 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = v23;
      *(v23 + 4 * v12) = v11;
      if (v6)
      {
        v15 = 0;
        while (*(&v25 + v15) != v19)
        {
          if (v6 == ++v15)
          {
            goto LABEL_17;
          }
        }

        *(v14 + 4 * v12) = a3[2];
        re::DynamicArray<int>::add(a3, &v19);
        v8 = 1;
      }

LABEL_17:
      ++v6;
    }

    while (v6 != v10);
    ++v7;
    v6 = *(a1 + 40);
  }

  while (v7 < v6);
  if ((v8 & 1) == 0)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  re::internal::buildMeshFromNewFaceVertices(a1, v20, v18);
  v16 = 1;
LABEL_22:
  if (v20[0] && v23)
  {
    (*(*v20[0] + 40))();
  }

  return v16;
}

void re::anonymous namespace::makeIdentityMap(re::_anonymous_namespace_ *this, unsigned int a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  v4 = a2;
  re::DynamicArray<float>::resize(this, a2);
  if (a2)
  {
    v5 = 0;
    v6 = *(this + 2);
    v7 = *(this + 4);
    do
    {
      if (v6 == v5)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v7 + 4 * v5) = v5;
      ++v5;
    }

    while (v4 != v5);
  }
}

uint64_t re::anonymous namespace::VertexFaceNeighborhood::findNextManifoldNeighborhood(void *a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  v2 = a1[9];
  if (v2)
  {
    v3 = 0;
    v4 = 1;
    while (*(a1[11] + v3))
    {
      v3 = v4;
      if (v2 <= v4++)
      {
        LODWORD(v2) = 0;
        return v2 & a1;
      }
    }

    if (a1[4] <= v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    LODWORD(v2) = 1;
  }

  return v2 & a1;
}

uint64_t re::anonymous namespace::VertexFaceNeighborhood::findReachableFaces(uint64_t a1, int a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v31 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = v44;
  v9 = 1;
  while (*(*(a1 + 48) + 4 * v7) != a2)
  {
    v7 = v9;
    if (v4 <= v9++)
    {
      return 0;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v11 = v9 - 1;
  v12 = *(a1 + 72);
  if (v12 <= v11)
  {
    goto LABEL_44;
  }

  v13 = *(a1 + 88);
  if (*(v13 + v11))
  {
    return 0;
  }

  *(v13 + v11) = 1;
  re::DynamicArray<int>::add(a3, &v31);
  v12 = *(a1 + 32);
  if (v12 <= v11)
  {
    goto LABEL_45;
  }

  v15 = re::internal::GeomConnectivityNonManifold::faceIncidentEdges(*a1, *(*(a1 + 48) + 4 * v11), v36);
  if (v15)
  {
    v16 = 0;
    v17 = v15;
    do
    {
      v11 = v36[v16];
      v18 = *a1;
      v12 = *(*a1 + 64);
      if (v12 <= v11)
      {
        goto LABEL_41;
      }

      if ((*(*(v18 + 10) + v11) & 8) == 0)
      {
        re::internal::GeomConnectivityNonManifold::edgeVertices(v18, v36[v16], v44);
        v19 = *(a1 + 8);
        if (v44[0] == v19 || v44[1] == v19)
        {
          *&v35[2] = 0;
          memset(v33, 0, sizeof(v33));
          v21 = *a1;
          if (v11)
          {
            v12 = (v11 - 1);
            v3 = *(v21 + 38);
            if (v3 <= v12)
            {
              goto LABEL_43;
            }

            v22 = *(*(v21 + 40) + 4 * v12);
          }

          else
          {
            v22 = 0;
            v3 = *(v21 + 38);
          }

          if (v3 <= v11)
          {
            goto LABEL_42;
          }

          v23 = *(*(v21 + 40) + 4 * v11);
          v11 = v23 - v22;
          re::DynamicArray<float>::resize(v33, v11);
          if (v23 > v22)
          {
            v24 = 0;
            v25 = v22;
            v3 = *(v21 + 43);
            v12 = *&v33[16];
            v26 = *&v35[2];
            v27 = v3 - v22;
            if (v3 < v22)
            {
              v27 = 0;
            }

            while (v27 != v24)
            {
              if (v12 == v24)
              {
                goto LABEL_40;
              }

              *(v26 + 4 * v24) = *(*(v21 + 45) + 4 * v25++);
              if (v11 == ++v24)
              {
                goto LABEL_31;
              }
            }

            v32 = 0;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            *v44 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v37 = 136315906;
            *&v37[4] = "operator[]";
            v38 = 1024;
            v39 = 797;
            v40 = 2048;
            v41 = v25;
            v42 = 2048;
            v43 = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_40:
            v32 = 0;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            *v44 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v37 = 136315906;
            *&v37[4] = "operator[]";
            v38 = 1024;
            v39 = 789;
            v40 = 2048;
            v41 = v12;
            v42 = 2048;
            v43 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_41:
            *v37 = 0;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            *v44 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v33 = 136315906;
            *&v33[4] = "operator[]";
            *&v33[12] = 1024;
            *&v33[14] = 797;
            *&v33[18] = 2048;
            *&v33[20] = v11;
            v34 = 2048;
            *v35 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_42:
            v32 = 0;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            *v44 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v37 = 136315906;
            *&v37[4] = "operator[]";
            v38 = 1024;
            v39 = 797;
            v40 = 2048;
            v41 = v11;
            v42 = 2048;
            v43 = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_43:
            v32 = 0;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            *v44 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v37 = 136315906;
            *&v37[4] = "operator[]";
            v38 = 1024;
            v39 = 797;
            v40 = 2048;
            v41 = v12;
            v42 = 2048;
            v43 = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_44:
            *v37 = 0;
            *(v8 + 3) = 0u;
            *(v8 + 4) = 0u;
            *(v8 + 1) = 0u;
            *(v8 + 2) = 0u;
            *v44 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v33 = 136315906;
            *&v33[4] = "operator[]";
            *&v33[12] = 1024;
            *&v33[14] = 789;
            *&v33[18] = 2048;
            *&v33[20] = v11;
            v34 = 2048;
            *v35 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            *v37 = 0;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            *v44 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v33 = 136315906;
            *&v33[4] = "operator[]";
            *&v33[12] = 1024;
            *&v33[14] = 789;
            *&v33[18] = 2048;
            *&v33[20] = v11;
            v34 = 2048;
            *v35 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_31:
          if (*&v33[16])
          {
            v28 = *&v35[2];
            v29 = 4 * *&v33[16];
            do
            {
              v30 = *v28++;
              v29 -= 4;
            }

            while (v29);
          }

          if (*v33)
          {
            if (*&v35[2])
            {
              (*(**v33 + 40))();
            }
          }
        }
      }

      ++v16;
    }

    while (v16 != v17);
  }

  return 1;
}

uint64_t re::internal::GeomConnectivityNonManifold::faceIncidentEdges(re::internal::GeomConnectivityNonManifold *this, int a2, unsigned int *a3)
{
  v3 = (4 * a2);
  v4 = *(this + 53);
  if (v4 <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(this + 55);
  *a3 = *(v5 + 4 * v3);
  v6 = v3 | 1;
  if (v4 <= v6)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  a3[1] = *(v5 + 4 * v6);
  v7 = v3 | 2;
  if (v4 <= v7)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  a3[2] = *(v5 + 4 * v7);
  v8 = v3 | 3;
  if (v4 <= v8)
  {
    goto LABEL_12;
  }

  v9 = *(v5 + 4 * v8);
  a3[3] = v9;
  if (v9 == -1)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t re::internal::GeomConnectivityNonManifold::edgeVertices(uint64_t this, int a2, unsigned int *a3)
{
  v3 = (2 * a2);
  v4 = *(this + 264);
  if (v4 <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 280);
  *a3 = *(v5 + 4 * v3);
  v6 = v3 | 1;
  if (v4 <= v6)
  {
    goto LABEL_5;
  }

  a3[1] = *(v5 + 4 * v6);
  return this;
}

uint64_t re::internal::writeGeomMeshToStream(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v65 = *MEMORY[0x1E69E9840];
  LODWORD(v60) = 538446081;
  while (v4 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v60 + v4, 4 - v4);
    v4 += result;
    if (!result)
    {
      return result;
    }
  }

  v6 = 0;
  LODWORD(v60) = 1;
  while (v6 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v60 + v6, 4 - v6);
    v6 += result;
    if (!result)
    {
      return result;
    }
  }

  v7 = 0;
  LODWORD(v60) = 1213416781;
  while (v7 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v60 + v7, 4 - v7);
    v7 += result;
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  LODWORD(v60) = *(a1 + 16);
  while (v8 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v60 + v8, 4 - v8);
    v8 += result;
    if (!result)
    {
      return result;
    }
  }

  v9 = 0;
  LODWORD(v60) = 1280066883;
  while (v9 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v60 + v9, 4 - v9);
    v9 += result;
    if (!result)
    {
      return result;
    }
  }

  v10 = 0;
  v11 = *(a1 + 40);
  v12 = v11;
  LODWORD(v60) = v11;
  while (v10 <= 3)
  {
    result = (*(*a2 + 16))(a2, &v60 + v10, 4 - v10);
    v10 += result;
    if (!result)
    {
      return result;
    }
  }

  if (!v11)
  {
LABEL_35:
    if (!result)
    {
      return result;
    }

    if (!result)
    {
      return result;
    }

    v19 = *(a1 + 640);
    if (!result)
    {
      return result;
    }

    if (!v19)
    {
LABEL_136:
      if (result)
      {
      }

      return result;
    }

    v20 = 0;
    while (1)
    {
      v50 = v20;
      v21 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 64), v20);
      v22 = 0;
      LODWORD(v60) = 1381258305;
      while (v22 <= 3)
      {
        result = (*(*a2 + 16))(a2, &v60 + v22, 4 - v22);
        v22 += result;
        if (!result)
        {
          return result;
        }
      }

      v23 = *(v21 + 17);
      if (v23 < 0xB)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 0;
      }

      LOBYTE(v60) = v24;
      result = (*(*a2 + 16))(a2, &v60, 1);
      if (!result)
      {
        return result;
      }

      v25 = *(v21 + 16);
      v26 = v25 < 5 ? v25 + 1 : 0;
      LOBYTE(v60) = v26;
      result = (*(*a2 + 16))(a2, &v60, 1);
      if (!result)
      {
        return result;
      }

      v28 = 0;
      LODWORD(v60) = 1280066883;
      while (v28 <= 3)
      {
        result = (*(*a2 + 16))(a2, &v60 + v28, 4 - v28);
        v28 += result;
        if (!result)
        {
          return result;
        }
      }

      if (*(v21 + 16) == 3)
      {
        v29 = 0;
        v49 = re::internal::accessFaceVaryingAttributeSubmesh(v21, v27);
        v31 = *(v49 + 24);
        v47 = v31;
        LODWORD(v60) = v31;
        while (v29 <= 3)
        {
          result = (*(*a2 + 16))(a2, &v60 + v29, 4 - v29);
          v29 += result;
          if (!result)
          {
            return result;
          }
        }

        if (v31)
        {
          v33 = 0;
          v48 = 0;
          do
          {
            v34 = *(v49 + 24);
            if (v34 <= v48)
            {
              v64 = 0u;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v52 = 136315906;
              v53 = "operator[]";
              v54 = 1024;
              v55 = 797;
              v56 = 2048;
              v57 = v48;
              v58 = 2048;
              v59 = v34;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_141:
              re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) Attempt to write out malformed GeomAttribute", "!Unreachable code", "writeGeomAttrbuteToStream", 372);
              _os_crash();
              __break(1u);
LABEL_142:
              re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
              result = _os_crash();
              __break(1u);
              return result;
            }

            v35 = 0;
            v36 = *(v49 + 40) + v33;
            do
            {
              *&v51[v35] = *(v36 + v35);
              v35 += 4;
            }

            while (v35 != 16);
            v37 = 0;
            while (v37 <= 0xF)
            {
              result = (*(*a2 + 16))(a2, &v51[v37], 16 - v37);
              v37 += result;
              if (!result)
              {
                return result;
              }
            }

            v33 += 16;
            ++v48;
          }

          while (v48 != v47);
          v38 = 0;
          while (2)
          {
            LODWORD(v60) = v38;
            v39 = *(v49 + 60);
            if (v39 == 2)
            {
              v41 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v49 + 64), &v60);
              if (v41 != -1)
              {
                v40 = *(*(v49 + 72) + 8 * v41 + 4);
                goto LABEL_87;
              }
            }

            else
            {
              if (v39 != 1)
              {
                if (*(v49 + 60))
                {
                  goto LABEL_142;
                }

                if (v38 >= *(v49 + 64))
                {
                  v40 = -1;
                }

                else
                {
                  v40 = v38;
                }

LABEL_87:
                v42 = 0;
                LODWORD(v60) = v40;
                while (v42 <= 3)
                {
                  result = (*(*a2 + 16))(a2, &v60 + v42, 4 - v42);
                  v42 += result;
                  if (!result)
                  {
                    return result;
                  }
                }

                if (++v38 == v47)
                {
                  goto LABEL_92;
                }

                continue;
              }

              if (*(v49 + 80) > v38)
              {
                v40 = *(*(v49 + 96) + 4 * v38);
                goto LABEL_87;
              }
            }

            break;
          }

          v40 = -1;
          goto LABEL_87;
        }
      }

      else
      {
        v32 = 0;
        LODWORD(v60) = 0;
        while (v32 < 4)
        {
          result = (*(*a2 + 16))(a2, &v60 + v32, 4 - v32);
          v32 += result;
          if (!result)
          {
            return result;
          }
        }
      }

LABEL_92:
      v43 = 0;
      LODWORD(v60) = 1279607621;
      while (v43 <= 3)
      {
        result = (*(*a2 + 16))(a2, &v60 + v43, 4 - v43);
        v43 += result;
        if (!result)
        {
          return result;
        }
      }

      if (!result)
      {
        return result;
      }

      if (!result)
      {
        return result;
      }

      v44 = (*(*v21 + 16))(v21);
      if (!result)
      {
        return result;
      }

      v46 = *(v21 + 17);
      if (v46 <= 4)
      {
        if (*(v21 + 17) <= 1u)
        {
          if (*(v21 + 17))
          {
            {
              return 0;
            }
          }

          {
            return 0;
          }
        }

        else
        {
          switch(v46)
          {
            case 2u:
              {
                return 0;
              }

              break;
            case 3u:
              {
                return 0;
              }

              break;
            case 4u:
              {
                return 0;
              }

              break;
            default:
              goto LABEL_141;
          }
        }
      }

      else if (*(v21 + 17) > 7u)
      {
        switch(v46)
        {
          case 8u:
            {
              return 0;
            }

            break;
          case 9u:
            {
              return 0;
            }

            break;
          case 0xAu:
            {
              return 0;
            }

            break;
          default:
            goto LABEL_141;
        }
      }

      else
      {
        switch(v46)
        {
          case 5u:
            {
              return 0;
            }

            break;
          case 6u:
            {
              return 0;
            }

            break;
          case 7u:
            {
              return 0;
            }

            break;
          default:
            goto LABEL_141;
        }
      }

      if (!result)
      {
        return result;
      }

      {
        return 0;
      }

      v20 = v50 + 1;
      if (v50 + 1 == v19)
      {
        goto LABEL_136;
      }
    }
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(a1 + 40);
    if (v15 <= v14)
    {
      break;
    }

    v16 = 0;
    v17 = *(a1 + 56) + v13;
    do
    {
      *&v51[v16] = *(v17 + v16);
      v16 += 4;
    }

    while (v16 != 16);
    v18 = 0;
    while (v18 <= 0xF)
    {
      result = (*(*a2 + 16))(a2, &v51[v18], 16 - v18);
      v18 += result;
      if (!result)
      {
        return result;
      }
    }

    ++v14;
    v13 += 16;
    if (v14 == v12)
    {
      goto LABEL_35;
    }
  }

  v64 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v52 = 136315906;
  v53 = "operator[]";
  v54 = 1024;
  v55 = 797;
  v56 = 2048;
  v57 = v14;
  v58 = 2048;
  v59 = v15;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
  return 0;
}

BOOL re::internal::anonymous namespace::writeToStreamHelper<unsigned int>(int a1, uint64_t a2)
{
  v3 = 0;
  v7 = a1;
  do
  {
    v4 = v3;
    if (v3 > 3)
    {
      break;
    }

    v5 = (*(*a2 + 16))(a2, &v7 + v3, 4 - v3);
    v3 = v5 + v4;
  }

  while (v5);
  return v4 > 3;
}

BOOL re::internal::anonymous namespace::writeCStringHelper(char *__s, uint64_t a2)
{
  v4 = 0;
  v15 = 1162690894;
  while (v4 <= 3)
  {
    v5 = (*(*a2 + 16))(a2, &v15 + v4, 4 - v4);
    v4 += v5;
    if (!v5)
    {
      return 0;
    }
  }

  if (__s)
  {
    v6 = strlen(__s) + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  v16 = v6;
  while (v7 <= 3)
  {
    v8 = (*(*a2 + 16))(a2, &v16 + v7, 4 - v7);
    v7 += v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    v9 = 0;
    while (v6 > v9)
    {
      v10 = (*(*a2 + 16))(a2, &__s[v9], v6 - v9);
      v9 += v10;
      if (!v10)
      {
        return 0;
      }
    }
  }

  v13 = 0;
  v17 = 1296125509;
  do
  {
    v11 = v13 > 3;
    if (v13 > 3)
    {
      break;
    }

    v14 = (*(*a2 + 16))(a2, &v17 + v13, 4 - v13);
    v13 += v14;
  }

  while (v14);
  return v11;
}

uint64_t re::internal::readGeomMeshFromStream(re::internal *this, re::GeomMesh *a2, re::StreamReader *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v59 = 0;
  v56[1] = 0;
  v57 = 0;
  v58 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v56, 1uLL);
  ++v58;
  re::internal::GeomAttributeManager::GeomAttributeManager(v60);
  v54 = 0;
  v5 = 0;
  if ((*(*a2 + 16))(a2, &v54, 4) == 4 && v54 == 538446081)
  {
    v53 = 0;
    v5 = 0;
    if ((*(*a2 + 16))(a2, &v53, 4) == 4 && v53 == 1)
    {
      LODWORD(v81) = 0;
      v5 = 0;
      if ((*(*a2 + 16))(a2, &v81, 4) == 4 && v81 == 1213416781)
      {
        v52 = 0;
        if ((*(*a2 + 16))(a2, &v52, 4) != 4)
        {
          goto LABEL_38;
        }

        v55 = v52;
        v61 = v52;
        if (v62)
        {
          v8 = v63;
          v9 = 8 * v62;
          do
          {
            v10 = *v8++;
            (*(*v10 + 80))(v10, v61);
            v9 -= 8;
          }

          while (v9);
        }

        LODWORD(v81) = 0;
        if ((*(*a2 + 16))(a2, &v81, 4) != 4 || v81 != 1280066883)
        {
          goto LABEL_38;
        }

        v51 = 0;
        if ((*(*a2 + 16))(a2, &v51, 4) != 4)
        {
          goto LABEL_38;
        }

        v12 = v51;
        re::DynamicArray<re::GeomCell4>::resize(v56, v51);
        v64 = v12;
        if (v65)
        {
          v13 = v66;
          v14 = 8 * v65;
          do
          {
            v15 = *v13++;
            (*(*v15 + 80))(v15, v64);
            v14 -= 8;
          }

          while (v14);
        }

        if (v51)
        {
          for (i = 0; i < v51; *(v59 + 16 * i++) = v74)
          {
            v17 = 0;
            while (v17 <= 0xF)
            {
              v18 = (*(*a2 + 16))(a2, &v74 + v17, 16 - v17);
              v17 += v18;
              if (!v18)
              {
                goto LABEL_38;
              }
            }

            v19 = v57;
            if (v57 <= i)
            {
              *v71 = 0;
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v81 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v78 = 136315906;
              *&v78[4] = "operator[]";
              *&v78[12] = 1024;
              *&v78[14] = 789;
              *&v78[18] = 2048;
              *&v78[20] = i;
              v79 = 2048;
              v80[0] = v19;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }
          }
        }

        LODWORD(v81) = 0;
        if ((*(*a2 + 16))(a2, &v81, 4) != 4 || v81 != 1279607621)
        {
LABEL_38:
          v5 = 0;
          goto LABEL_39;
        }

        v50 = 0;
        memset(v48, 0, sizeof(v48));
        v49 = 0;
        v5 = 0;
        {
          v47 = 0;
          if ((*(*a2 + 16))(a2, &v47, 4) != 4)
          {
            goto LABEL_159;
          }

          if (v47)
          {
            v22 = 0;
            while (1)
            {
              LODWORD(v81) = 0;
              if ((*(*a2 + 16))(a2, &v81, 4) != 4 || v81 != 1381258305)
              {
                goto LABEL_159;
              }

              v69 = 0;
              if ((*(*a2 + 16))(a2, &v69, 1) != 1)
              {
                goto LABEL_159;
              }

              v24 = v69 - 1;
              if (v24 > 0xA)
              {
                goto LABEL_159;
              }

              v68 = 0;
              if ((*(*a2 + 16))(a2, &v68, 1) != 1)
              {
                goto LABEL_159;
              }

              v25 = v68 - 1;
              if (v25 > 4)
              {
                goto LABEL_159;
              }

              LODWORD(v81) = 0;
              if ((*(*a2 + 16))(a2, &v81, 4) != 4 || v81 != 1280066883)
              {
                goto LABEL_159;
              }

              v46 = v24;
              v67 = 0;
              if ((*(*a2 + 16))(a2, &v67, 4) != 4)
              {
                goto LABEL_159;
              }

              *(v80 + 2) = 0;
              memset(v78, 0, sizeof(v78));
              v77 = 0;
              v75 = 0;
              v74 = 0uLL;
              v76 = 0;
              if (v67)
              {
                re::DynamicArray<float>::resize(v78, v67);
                re::DynamicArray<re::GeomCell4>::resize(&v74, v67);
                if (v67)
                {
                  v27 = 0;
                  while (1)
                  {
                    v28 = v75;
                    if (v75 <= v27)
                    {
                      break;
                    }

                    v29 = 0;
                    v30 = v77 + 16 * v27;
                    while (v29 <= 0xF)
                    {
                      v31 = (*(*a2 + 16))(a2, v30 + v29, 16 - v29);
                      v29 += v31;
                      if (!v31)
                      {
                        goto LABEL_81;
                      }
                    }

                    if (++v27 >= v67)
                    {
                      v32 = 4 * v67;
                      goto LABEL_73;
                    }
                  }

                  v70 = 0;
                  v84 = 0u;
                  v85 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v81 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v71 = 136315906;
                  *&v71[4] = "operator[]";
                  *&v71[12] = 1024;
                  *&v71[14] = 789;
                  *&v71[18] = 2048;
                  *&v71[20] = v27;
                  v72 = 2048;
                  v73[0] = v28;
                  _os_log_send_and_compose_impl();
                  result = _os_crash_msg();
                  __break(1u);
                  return result;
                }

                v32 = 0;
LABEL_73:
                v33 = 0;
                v34 = *(v80 + 2);
                while (v32 > v33)
                {
                  v35 = (*(*a2 + 16))(a2, v34 + v33, v32 - v33);
                  v33 += v35;
                  if (!v35)
                  {
                    goto LABEL_81;
                  }
                }
              }

              LODWORD(v81) = 0;
              if ((*(*a2 + 16))(a2, &v81, 4) != 4 || v81 != 1279607621)
              {
LABEL_81:
                v37 = 0;
                goto LABEL_82;
              }

              *(v73 + 2) = 0;
              memset(v71, 0, sizeof(v71));
              {
                LODWORD(v81) = 0;
                if ((*(*a2 + 16))(a2, &v81, 4) == 4 && v81 == 1279350337)
                {
                  break;
                }
              }

              v37 = 0;
LABEL_127:
              if (*v71 && *(v73 + 2))
              {
                (*(**v71 + 40))(*v71);
              }

LABEL_82:
              if (v74 && v77)
              {
                (*(*v74 + 40))(v74);
              }

              if (*v78 && *(v80 + 2))
              {
                (*(**v78 + 40))(*v78);
              }

              if (!v37)
              {
                goto LABEL_159;
              }

              if (++v22 >= v47)
              {
                goto LABEL_151;
              }
            }

            v39 = v22;
            LODWORD(v70) = 0;
            if ((*(*a2 + 16))(a2, &v70, 4) != 4)
            {
              goto LABEL_125;
            }

            if ((8u >> v25))
            {
              re::internal::GeomBaseTopology::GeomBaseTopology(&v81, v70, &v74);
              v40 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v55, *(v73 + 2), v46, &v81, v78);
              if (*(&v81 + 1) && *(&v83 + 1))
              {
                (*(**(&v81 + 1) + 40))(*(&v81 + 1));
              }
            }

            else
            {
              v41 = re::internal::GeomAttributeManager::addAttribute(v60, *(v73 + 2), v25, v46);
              v40 = v41;
              if ((0x10u >> v25))
              {
                (*(*v41 + 24))(v41, v70);
LABEL_105:
                v37 = 0;
                v42 = *(v40 + 17);
                if (v42 <= 4)
                {
                  if (*(v40 + 17) <= 1u)
                  {
                    if (*(v40 + 17))
                    {
                      {
                        goto LABEL_125;
                      }
                    }

                    {
                      goto LABEL_125;
                    }

LABEL_131:
                    LODWORD(v81) = 0;
                    v37 = 0;
                    if ((*(*a2 + 16))(a2, &v81, 4) == 4 && v81 == 1096171845)
                    {
                      LODWORD(v81) = 0;
                      v37 = (*(*a2 + 16))(a2, &v81, 4) == 4 && v81 == 1414807877;
                    }

                    goto LABEL_126;
                  }

                  switch(v42)
                  {
                    case 2u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 3u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 4u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    default:
                      goto LABEL_126;
                  }
                }

                else if (*(v40 + 17) > 7u)
                {
                  switch(v42)
                  {
                    case 8u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 9u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 0xAu:
                      {
                        goto LABEL_131;
                      }

                      break;
                    default:
                      goto LABEL_126;
                  }
                }

                else
                {
                  switch(v42)
                  {
                    case 5u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 6u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    case 7u:
                      {
                        goto LABEL_131;
                      }

                      break;
                    default:
LABEL_126:
                      v22 = v39;
                      goto LABEL_127;
                  }
                }

LABEL_125:
                v37 = 0;
                goto LABEL_126;
              }
            }

            if (!v40)
            {
              goto LABEL_125;
            }

            goto LABEL_105;
          }

LABEL_151:
          *v78 = 0;
          if ((*(*a2 + 16))(a2, v78, 4) == 4 && ((LODWORD(v81) = 0, (*(*a2 + 16))(a2, &v81, 4) == 4) ? (v44 = v81 == 1397050693) : (v44 = 0), v44 && re::internal::GeomBaseMesh::areAllFacesValid(&v55)))
          {
            v45 = re::GeomMesh::operator=(this, &v55);
            re::GeomMesh::setName(v45, v50);
            v5 = 1;
          }

          else
          {
LABEL_159:
            v5 = 0;
          }
        }

        if (v48[0] && v50)
        {
          (*(*v48[0] + 40))();
        }
      }
    }
  }

LABEL_39:
  re::internal::GeomAttributeManager::~GeomAttributeManager(v60);
  if (v56[0])
  {
    if (v59)
    {
      (*(*v56[0] + 40))();
    }
  }

  return v5;
}

uint64_t re::internal::anonymous namespace::readCStringHelper(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  LODWORD(v24[0]) = 0;
  v4 = (*(*a2 + 16))(a2, v24, 4);
  result = 0;
  if (v4 == 4 && LODWORD(v24[0]) == 1162690894)
  {
    v14 = 0;
    if ((*(*a2 + 16))(a2, &v14, 4) != 4)
    {
      return 0;
    }

    v7 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    re::DynamicArray<BOOL>::resize(a1, v14);
    v8 = 0;
    v9 = *(a1 + 32);
    while (v7 > v8)
    {
      result = (*(*a2 + 16))(a2, v9 + v8, v7 - v8);
      v8 += result;
      if (!result)
      {
        return result;
      }
    }

    v10 = v14 - 1;
    v11 = *(a1 + 16);
    if (v11 <= v10)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v13 = v11;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      v19 = 789;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(a1 + 32) + v10))
    {
      return 0;
    }

    else
    {
LABEL_15:
      LODWORD(v24[0]) = 0;
      return (*(*a2 + 16))(a2, v24, 4) == 4 && LODWORD(v24[0]) == 1296125509;
    }
  }

  return result;
}

uint64_t re::internal::GeomBaseMesh::areAllFacesValid(re::internal::GeomBaseMesh *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = v3 + 16 * v2;
    v5 = *this;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        if (*(v3 + i) < v5)
        {
          v7 = *(v3 + 12);
          if (v7 < v5 || v7 == -1)
          {
            continue;
          }
        }

        return 0;
      }

      v3 += 16;
    }

    while (v3 != v4);
  }

  v9 = *(this + 102);
  if (!v9)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = re::internal::GeomAttributeContainer::attributeByIndex((this + 384), v10);
    v13 = re::internal::accessFaceVaryingAttributeSubmesh(v11, v12);
    v15 = *(v13 + 24);
    v16 = v15 <= v2;
    if (v15 > v2)
    {
      return v16;
    }

    v17 = v13;
    if (v15)
    {
      break;
    }

    if (v15)
    {
      v26 = *(v13 + 40);
      v27 = v26 + 16 * v15;
LABEL_36:
      v28 = *v17;
      do
      {
        for (j = 0; j != 12; j += 4)
        {
          if (*(v26 + j) >= v28)
          {
            return 0;
          }

          v30 = *(v26 + 12);
          if (v30 >= v28 && v30 != -1)
          {
            return 0;
          }
        }

        v26 += 16;
      }

      while (v26 != v27);
    }

    if (++v10 == v9)
    {
      return v16;
    }
  }

  v18 = 0;
  v19 = v15;
  v20 = 12;
  while (1)
  {
    LODWORD(v33) = v18;
    v21 = *(v17 + 60);
    if (v21 != 2)
    {
      break;
    }

    v23 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v17 + 64), &v33);
    if (v23 == -1)
    {
LABEL_27:
      v22 = -1;
      goto LABEL_28;
    }

    v22 = *(*(v17 + 72) + 8 * v23 + 4);
LABEL_28:
    if (v22 > v2)
    {
      return 0;
    }

    if (*(this + 3) <= v22)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v24 = *(v17 + 24);
    if (v24 <= v18)
    {
      goto LABEL_52;
    }

    v25 = *(*(this + 5) + 16 * v22 + 12) != -1;
    v26 = *(v17 + 40);
    if (((v25 ^ (*(v26 + v20) == -1)) & 1) == 0)
    {
      return 0;
    }

    ++v18;
    v20 += 16;
    if (v19 == v18)
    {
      v27 = v26 + 16 * v24;
      goto LABEL_36;
    }
  }

  if (v21 == 1)
  {
    if (*(v17 + 80) <= v18)
    {
      goto LABEL_27;
    }

    v22 = *(*(v17 + 96) + 4 * v18);
    goto LABEL_28;
  }

  if (!*(v17 + 60))
  {
    if (v18 >= *(v17 + 64))
    {
      v22 = -1;
    }

    else
    {
      v22 = v18;
    }

    goto LABEL_28;
  }

  re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<signed char>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  do
  {
    v7 = v4 <= v6;
    if (v4 <= v6)
    {
      break;
    }

    v8 = (*(*a2 + 16))(a2, v5 + v6, v4 - v6);
    v6 += v8;
  }

  while (v8);
  return v7;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<short>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 2 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<int>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 4 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<double>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 8 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<re::Vector2<float>>(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_21;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:
    v14 = 1;
    return v14 & 1;
  }

  v6 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  v7 = 0;
  v8 = 0;
  do
  {
    if (v7 == v6)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_21:
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = 0;
    v10 = (v5 + 8 * v7);
    LODWORD(v16) = *v10;
    while (v9 <= 3)
    {
      v11 = (*(*a2 + 16))(a2, &v16 + v9, 4 - v9);
      v9 += v11;
      if (!v11)
      {
LABEL_16:
        v14 = v8;
        return v14 & 1;
      }
    }

    v12 = 0;
    LODWORD(v16) = v10[1];
    while (v12 <= 3)
    {
      v13 = (*(*a2 + 16))(a2, &v16 + v12, 4 - v12);
      v12 += v13;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    ++v7;
    v14 = 1;
    v8 = v7 >= v4;
  }

  while (v7 != v4);
  return v14 & 1;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<re::Vector3<float>>(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_25;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:
    v16 = 1;
    return v16 & 1;
  }

  v6 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v7 = 0;
  v8 = 0;
  do
  {
    if (v7 == v6)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_25:
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = 0;
    v10 = (v5 + 16 * v7);
    LODWORD(v18) = *v10;
    while (v9 <= 3)
    {
      v11 = (*(*a2 + 16))(a2, &v18 + v9, 4 - v9);
      v9 += v11;
      if (!v11)
      {
LABEL_20:
        v16 = v8;
        return v16 & 1;
      }
    }

    v12 = 0;
    LODWORD(v18) = v10[1];
    while (v12 <= 3)
    {
      v13 = (*(*a2 + 16))(a2, &v18 + v12, 4 - v12);
      v12 += v13;
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    v14 = 0;
    LODWORD(v18) = v10[2];
    while (v14 <= 3)
    {
      v15 = (*(*a2 + 16))(a2, &v18 + v14, 4 - v14);
      v14 += v15;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    ++v7;
    v16 = 1;
    v8 = v7 >= v4;
  }

  while (v7 != v4);
  return v16 & 1;
}

uint64_t re::internal::anonymous namespace::writeAttributeValues<re::Vector4<float>>(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_29;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_26:
    v18 = 1;
    return v18 & 1;
  }

  v6 = 0;
  v5 = 0;
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_4:
  v7 = 0;
  v8 = 0;
  do
  {
    if (v7 == v6)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = 0;
    v10 = (v5 + 16 * v7);
    LODWORD(v20) = *v10;
    while (v9 <= 3)
    {
      v11 = (*(*a2 + 16))(a2, &v20 + v9, 4 - v9);
      v9 += v11;
      if (!v11)
      {
LABEL_24:
        v18 = v8;
        return v18 & 1;
      }
    }

    v12 = 0;
    LODWORD(v20) = v10[1];
    while (v12 <= 3)
    {
      v13 = (*(*a2 + 16))(a2, &v20 + v12, 4 - v12);
      v12 += v13;
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    v14 = 0;
    LODWORD(v20) = v10[2];
    while (v14 <= 3)
    {
      v15 = (*(*a2 + 16))(a2, &v20 + v14, 4 - v14);
      v14 += v15;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    v16 = 0;
    LODWORD(v20) = v10[3];
    while (v16 <= 3)
    {
      v17 = (*(*a2 + 16))(a2, &v20 + v16, 4 - v16);
      v16 += v17;
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    ++v7;
    v18 = 1;
    v8 = v7 >= v4;
  }

  while (v7 != v4);
  return v18 & 1;
}

uint64_t re::internal::anonymous namespace::readAttributeValues<signed char>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  do
  {
    v7 = v4 <= v6;
    if (v4 <= v6)
    {
      break;
    }

    v8 = (*(*a2 + 16))(a2, v5 + v6, v4 - v6);
    v6 += v8;
  }

  while (v8);
  return v7;
}

uint64_t re::internal::anonymous namespace::readAttributeValues<short>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 2 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

uint64_t re::internal::anonymous namespace::readAttributeValues<int>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 4 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

uint64_t re::internal::anonymous namespace::readAttributeValues<double>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a1[7];
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  v6 = 0;
  v7 = 8 * v4;
  do
  {
    v8 = v7 <= v6;
    if (v7 <= v6)
    {
      break;
    }

    v9 = (*(*a2 + 16))(a2, v5 + v6, v7 - v6);
    v6 += v9;
  }

  while (v9);
  return v8;
}

BOOL re::internal::anonymous namespace::readAttributeValues<re::Vector2<float>>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_14;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      while (v6 != v7)
      {
        if ((*(*a2 + 16))(a2, v5, 4) == 4 && (*(*a2 + 16))(a2, v5 + 4, 4) == 4)
        {
          v8 = ++v7 >= v4;
          v5 += 8;
          if (v4 != v7)
          {
            continue;
          }
        }

        return v8;
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_14:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

BOOL re::internal::anonymous namespace::readAttributeValues<re::Vector3<float>>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_15;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      while (v6 != v7)
      {
        if ((*(*a2 + 16))(a2, v5, 4) == 4 && (*(*a2 + 16))(a2, v5 + 4, 4) == 4 && (*(*a2 + 16))(a2, v5 + 8, 4) == 4)
        {
          v8 = ++v7 >= v4;
          v5 += 16;
          if (v4 != v7)
          {
            continue;
          }
        }

        return v8;
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_15:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

BOOL re::internal::anonymous namespace::readAttributeValues<re::Vector4<float>>(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1);
  if ((*(*a1 + 16))(a1))
  {
    if (!a1[5])
    {
      goto LABEL_16;
    }

    v5 = a1[7];
    v6 = (*(*a1 + 16))(a1);
    if (v4)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      while (v6 != v7)
      {
        if ((*(*a2 + 16))(a2, v5, 4) == 4 && (*(*a2 + 16))(a2, v5 + 4, 4) == 4 && (*(*a2 + 16))(a2, v5 + 8, 4) == 4 && (*(*a2 + 16))(a2, v5 + 12, 4) == 4)
        {
          v8 = ++v7 >= v4;
          v5 += 16;
          if (v4 != v7)
          {
            continue;
          }
        }

        return v8;
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

uint64_t re::internal::GeomBaseTopology::GeomBaseTopology(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = *(a3 + 8);
  *v4 = *a3;
  *(a1 + 16) = v5;
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(a3 + 16);
  *(a3 + 16) = v6;
  v7 = *(a1 + 40);
  *(a1 + 40) = *(a3 + 32);
  *(a3 + 32) = v7;
  ++*(a3 + 24);
  ++*(a1 + 32);
  if (!*(a1 + 16))
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v4, 1uLL);
  }

  return a1;
}

uint64_t *re::internal::build3dGlyph(uint64_t a1, CTFontRef font, CGGlyph glyph, uint64_t a4)
{
  v353 = *MEMORY[0x1E69E9840];
  v281 = 0;
  info[1] = 0;
  v279 = 0;
  info[0] = 0;
  v280 = 0;
  if (font && (PathForGlyph = CTFontCreatePathForGlyph(font, glyph, 0)) != 0)
  {
    v12 = PathForGlyph;
    CGPathRelease(v12);
    v13 = v281;
    v14 = (v281 + 176 * v279);
    if (v279)
    {
      v15 = 126 - 2 * __clz(v279);
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = 0;
LABEL_7:
  if (!v279)
  {
    v19 = 0;
    goto LABEL_46;
  }

  v17 = *(v281 + 144);
  *v289 = *(v281 + 160);
  *&v289[8] = v17;
  re::computeSignedAreaOf2DPolygon(v289, v16);
  if (v18 >= 0.0)
  {
    goto LABEL_44;
  }

  v19 = v279;
  if (v279)
  {
    v20 = 0;
    v21 = &v303;
    v4 = v289;
    v5 = 176;
    do
    {
      v6 = v279;
      if (v279 <= v20)
      {
        goto LABEL_573;
      }

      v6 = v281 + 176 * v20;
      memset(&v289[48], 0, 28);
      v293 = 0;
      memset(&v289[80], 0, 36);
      v290 = 0u;
      v291 = 0u;
      LODWORD(v292) = 0;
      v289[0] = *v6;
      v22 = *(v6 + 32);
      *&v289[16] = *(v6 + 16);
      *&v289[32] = v22;
      v323 = 0;
      v320 = 0;
      v318 = 0;
      v319 = 0;
      v321 = 0;
      re::DynamicArray<unsigned long>::resize(&v318, *(v6 + 144));
      v23 = *(v6 + 144);
      if (v23)
      {
        v24 = 0;
        v7 = v23 - 1;
        do
        {
          v8 = v320;
          if (v320 <= v7)
          {
            goto LABEL_529;
          }

          *(v323 + 8 * v7--) = *(*(v6 + 160) + 8 * v24++);
        }

        while (v24 < *(v6 + 144));
      }

      re::DynamicArray<re::RigComponentConstraint>::operator=(&v290 + 8, &v318);
      if (v318 && v323)
      {
        (*(*v318 + 40))();
      }

      v323 = 0;
      v320 = 0;
      v318 = 0;
      v319 = 0;
      v321 = 0;
      re::DynamicArray<BOOL>::resize(&v318, *(v6 + 64));
      v25 = *(v6 + 64);
      if (v25)
      {
        v26 = 0;
        v7 = v25 - 1;
        do
        {
          v8 = v320;
          if (v320 <= v7)
          {
            goto LABEL_530;
          }

          *(v323 + v7--) = *(*(v6 + 80) + v26++);
        }

        while (v26 < *(v6 + 64));
      }

      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v289[48], &v318);
      if (v318 && v323)
      {
        (*(*v318 + 40))();
      }

      v27 = *(v6 + 104);
      v7 = v27;
      if (v27)
      {
        re::DynamicArray<unsigned long>::resize(&v289[88], v27);
        v6 = 0;
        v28 = 0;
        v29 = v290;
        v30 = *&v289[80];
        do
        {
          v8 = *&v289[104];
          if (*&v289[104] <= v6)
          {
            goto LABEL_531;
          }

          *(v29 + 8 * v6) = v28;
          v8 = *&v289[64];
          if (*&v289[64] <= v6)
          {
LABEL_532:
            v303.i64[0] = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v318) = 136315906;
            *(v21 + 196) = "operator[]";
            WORD2(v319) = 1024;
            *(v21 + 206) = 789;
            WORD1(v320) = 2048;
            *(v21 + 212) = v6;
            v322 = 2048;
            *(v21 + 222) = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_533:
            *v350 = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v344 = 136315906;
            *&v344[4] = "operator[]";
            *&v344[12] = 1024;
            *&v344[14] = 797;
            *&v344[18] = 2048;
            *&v344[20] = v6;
            v345 = 2048;
            *v346 = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_534:
            *v350 = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v344 = 136315906;
            *&v344[4] = "operator[]";
            *&v344[12] = 1024;
            *&v344[14] = 621;
            *&v344[18] = 2048;
            *&v344[20] = v7;
            v345 = 2048;
            *v346 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_535;
          }

          v28 += *(v30 + v6++);
        }

        while (v7 != v6);
      }

      v6 = v279;
      if (v279 <= v20)
      {
        goto LABEL_577;
      }

      v6 = v281 + 176 * v20;
      v31 = *v289;
      v32 = *&v289[32];
      *(v6 + 16) = *&v289[16];
      *(v6 + 32) = v32;
      *v6 = v31;
      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v6 + 48, &v289[48]);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6 + 88, &v289[88]);
      re::DynamicArray<re::RigComponentConstraint>::operator=(v6 + 128, &v290 + 8);
      if (*(&v290 + 1))
      {
        v16 = v293;
        if (v293)
        {
          (*(**(&v290 + 1) + 40))();
        }

        v293 = 0;
        v291 = 0uLL;
        *(&v290 + 1) = 0;
        LODWORD(v292) = v292 + 1;
      }

      if (*&v289[88])
      {
        v16 = v290;
        if (v290)
        {
          (*(**&v289[88] + 40))();
        }

        *&v290 = 0;
        memset(&v289[88], 0, 24);
        ++*&v289[112];
      }

      if (*&v289[48])
      {
        v16 = *&v289[80];
        if (*&v289[80])
        {
          (*(**&v289[48] + 40))();
        }
      }

      ++v20;
    }

    while (v20 != v19);
LABEL_44:
    v19 = v279;
  }

LABEL_46:
  v323 = 0;
  v320 = 0;
  v318 = 0;
  v319 = 0;
  v321 = 0;
  v305[0] = 0;
  v304.i64[0] = 0;
  v303 = 0uLL;
  v304.i32[2] = 0;
  if (v19)
  {
    v21 = 0;
    v4 = 1;
    v5 = 176;
    do
    {
      v20 = v279;
      if (v279 <= v21)
      {
        goto LABEL_538;
      }

      v33 = v281 + 176 * v21;
      v34 = *(v33 + 160);
      v35 = *(v33 + 144);
      *v289 = v34;
      *&v289[8] = v35;
      re::computeSignedAreaOf2DPolygon(v289, v16);
      if (v36 != 0.0)
      {
        v20 = v279;
        if (v36 <= 0.0)
        {
          if (v279 <= v21)
          {
            goto LABEL_559;
          }

          v37 = &v303;
        }

        else
        {
          if (v279 <= v21)
          {
            goto LABEL_560;
          }

          v37 = &v318;
        }
      }

      v21 = v4;
      v38 = v19 > v4;
      v4 = (v4 + 1);
    }

    while (v38);
    v39 = v304.i64[0];
    v40 = v320;
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  *&buf[32] = 0;
  memset(buf, 0, 28);
  v277 = 0;
  v274 = 0;
  v275 = 0;
  v273 = 0;
  v276 = 0;
  v289[0] = 0;
  re::DynamicArray<BOOL>::resize(buf, v39, v289);
  if (v40)
  {
  }

  v265 = v320;
  if (v320)
  {
    v21 = 0;
    v4 = v289;
    v41.i64[0] = 0x7F0000007FLL;
    v41.i64[1] = 0x7F0000007FLL;
    v268 = vnegq_f32(v41);
    v5 = 176;
    do
    {
      v289[0] = 1;
      *&v42 = 0x7F0000007FLL;
      *(&v42 + 1) = 0x7F0000007FLL;
      *&v289[16] = v268;
      *&v289[32] = v42;
      memset(&v289[48], 0, 28);
      v43 = 0uLL;
      memset(&v289[80], 0, 36);
      v290 = 0u;
      v291 = 0u;
      LODWORD(v292) = 0;
      v293 = 0;
      *(&v296 + 1) = 0;
      v295 = 0uLL;
      *(&v294 + 1) = 0;
      LODWORD(v296) = 0;
      v20 = v320;
      if (v320 <= v21)
      {
        goto LABEL_555;
      }

      v44 = (v323 + 176 * v21);
      v46 = v44[1];
      v45 = v44[2];
      *v289 = *v44;
      *&v289[16] = v46;
      *&v289[32] = v45;
      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v289[48], (v44 + 3));
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v289[88], v44 + 88);
      isPointInsidePolygon = re::DynamicArray<re::RigComponentConstraint>::operator=(&v290 + 8, (v44 + 8));
      v10 = v304.i64[0];
      if (!v304.i64[0])
      {
        goto LABEL_79;
      }

      v9 = 0;
      do
      {
        v20 = *&buf[16];
        if (*&buf[16] <= v9)
        {
          goto LABEL_526;
        }

        if (*(*&buf[32] + v9))
        {
          goto LABEL_78;
        }

        v7 = v305[0];
        v48 = v305[0] + 176 * v9;
        if (!*(v48 + 144))
        {
          goto LABEL_528;
        }

        v20 = *(v48 + 160);
        v327[0] = v293;
        v327[1] = *(&v291 + 1);
        isPointInsidePolygon = re::internal::isPointInsidePolygon(v20, v327);
        if (!isPointInsidePolygon)
        {
          goto LABEL_78;
        }

        v49 = *(&v295 + 1);
        if (!*(&v295 + 1))
        {
          goto LABEL_76;
        }

        v6 = 0;
        v8 = 0;
        do
        {
          v5 = *(&v295 + 1);
          if (*(&v295 + 1) <= v8)
          {
            *v344 = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v347 = 136315906;
            *&v347[4] = "operator[]";
            *&v347[12] = 1024;
            *&v347[14] = 789;
            *&v347[18] = 2048;
            *&v347[20] = v8;
            v348 = 2048;
            *v349 = v5;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_525:
            *v347 = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            *&buf[4] = "operator[]";
            *&buf[12] = 1024;
            *&buf[14] = 797;
            *&buf[18] = 2048;
            *&buf[20] = v20;
            *&buf[28] = 2048;
            *&buf[30] = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_526:
            *v344 = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v347 = 136315906;
            *&v347[4] = "operator[]";
            *&v347[12] = 1024;
            *&v347[14] = 789;
            *&v347[18] = 2048;
            *&v347[20] = v9;
            v348 = 2048;
            *v349 = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_527:
            v288 = 0;
            v343 = 0u;
            v342 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v347 = 136315906;
            *&v347[4] = "operator[]";
            *&v347[12] = 1024;
            *&v347[14] = 797;
            *&v347[18] = 2048;
            *&v347[20] = v20;
            v348 = 2048;
            *v349 = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_528:
            *v344 = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v347 = 136315906;
            *&v347[4] = "operator[]";
            *&v347[12] = 1024;
            *&v347[14] = 789;
            *&v347[18] = 2048;
            *&v347[20] = 0;
            v348 = 2048;
            *v349 = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_529:
            *buf = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v303.i32[0] = 136315906;
            *(v21 + 4) = "operator[]";
            v303.i16[6] = 1024;
            *(v21 + 14) = 789;
            v304.i16[1] = 2048;
            *(v21 + 20) = v7;
            v304.i16[6] = 2048;
            *(v21 + 30) = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_530:
            *buf = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v303.i32[0] = 136315906;
            *(v21 + 4) = "operator[]";
            v303.i16[6] = 1024;
            *(v21 + 14) = 789;
            v304.i16[1] = 2048;
            *(v21 + 20) = v7;
            v304.i16[6] = 2048;
            *(v21 + 30) = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_531:
            v303.i64[0] = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v318) = 136315906;
            *(v21 + 196) = "operator[]";
            WORD2(v319) = 1024;
            *(v21 + 206) = 789;
            WORD1(v320) = 2048;
            *(v21 + 212) = v6;
            v322 = 2048;
            *(v21 + 222) = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_532;
          }

          v50 = *(*(&v296 + 1) + v6 + 144);
          v327[0] = *(*(&v296 + 1) + v6 + 160);
          v327[1] = v50;
          isPointInsidePolygon = re::internal::isPointInsidePolygon(v20, v327);
          if (++v8 >= v49)
          {
            break;
          }

          v6 += 176;
        }

        while ((isPointInsidePolygon & 1) == 0);
        v5 = 176;
        if ((isPointInsidePolygon & 1) == 0)
        {
LABEL_76:
          v20 = *&buf[16];
          if (*&buf[16] <= v9)
          {
            goto LABEL_537;
          }

          *(*&buf[32] + v9) = 1;
        }

LABEL_78:
        ++v9;
      }

      while (v9 != v10);
LABEL_79:
      v51 = v275 + 1;
      _CF = v275 < v274 || v274 >= v51;
      if (!_CF)
      {
        if (v273)
        {
          v65 = 8;
          if (v274)
          {
            v65 = 2 * v274;
          }

          if (v65 <= v51)
          {
            v66 = v275 + 1;
          }

          else
          {
            v66 = v65;
          }
        }

        else
        {
          ++v276;
        }
      }

      v53 = v275;
      v54 = v277 + 224 * v275;
      v55 = *v289;
      v56 = *&v289[32];
      *(v54 + 16) = *&v289[16];
      *(v54 + 32) = v56;
      *v54 = v55;
      *(v54 + 80) = 0;
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      *(v54 + 48) = 0;
      *(v54 + 72) = 0;
      *(v54 + 48) = *&v289[48];
      *&v289[48] = 0;
      *(v54 + 56) = *&v289[56];
      *&v289[56] = 0;
      v57 = *(v54 + 64);
      *(v54 + 64) = *&v289[64];
      *&v289[64] = v57;
      v58 = *(v54 + 80);
      *(v54 + 80) = *&v289[80];
      *&v289[80] = v58;
      ++*&v289[72];
      ++*(v54 + 72);
      *(v54 + 120) = 0;
      *(v54 + 96) = 0;
      *(v54 + 104) = 0;
      *(v54 + 88) = 0;
      *(v54 + 112) = 0;
      *(v54 + 88) = *&v289[88];
      *&v289[88] = 0;
      *(v54 + 96) = *&v289[96];
      *&v289[96] = 0;
      v59 = *(v54 + 104);
      *(v54 + 104) = *&v289[104];
      *&v289[104] = v59;
      v60 = *(v54 + 120);
      *(v54 + 120) = v290;
      *&v290 = v60;
      ++*&v289[112];
      ++*(v54 + 112);
      *(v54 + 160) = 0;
      *(v54 + 136) = 0;
      *(v54 + 144) = 0;
      *(v54 + 128) = 0;
      *(v54 + 152) = 0;
      *(v54 + 128) = *(&v290 + 1);
      *(&v290 + 1) = 0;
      *(v54 + 136) = v291;
      *&v291 = 0;
      v61 = *(v54 + 144);
      *(v54 + 144) = *(&v291 + 1);
      *(&v291 + 1) = v61;
      v62 = *(v54 + 160);
      *(v54 + 160) = v293;
      v293 = v62;
      LODWORD(v292) = v292 + 1;
      ++*(v54 + 152);
      *(v54 + 208) = 0;
      *(v54 + 184) = 0;
      *(v54 + 192) = 0;
      *(v54 + 176) = 0;
      *(v54 + 200) = 0;
      *(v54 + 176) = *(&v294 + 1);
      *(&v294 + 1) = 0;
      *(v54 + 184) = v295;
      *&v295 = 0;
      v63 = *(v54 + 192);
      *(v54 + 192) = *(&v295 + 1);
      *(&v295 + 1) = v63;
      v64 = *(v54 + 208);
      *(v54 + 208) = *(&v296 + 1);
      *(&v296 + 1) = v64;
      LODWORD(v296) = v296 + 1;
      ++*(v54 + 200);
      v275 = v53 + 1;
      ++v276;
      if (*(&v290 + 1))
      {
        if (v293)
        {
          (*(**(&v290 + 1) + 40))();
        }

        v293 = 0;
        v291 = 0uLL;
        *(&v290 + 1) = 0;
        LODWORD(v292) = v292 + 1;
      }

      if (*&v289[88])
      {
        if (v290)
        {
          (*(**&v289[88] + 40))();
        }

        *&v290 = 0;
        memset(&v289[88], 0, 24);
        ++*&v289[112];
      }

      if (*&v289[48] && *&v289[80])
      {
        (*(**&v289[48] + 40))();
      }

      ++v21;
    }

    while (v21 != v265);
  }

  if (*buf && *&buf[32])
  {
    (*(**buf + 40))();
  }

  v8 = &v303;
  v67 = *(a4 + 8);
  v68 = *(a4 + 9);
  bzero(&v318, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v320, 1uLL);
  ++v324;
  re::internal::GeomAttributeManager::GeomAttributeManager(v326);
  re::internal::GeomAttributeManager::addAttribute(v326, "vertexPosition", 1, 7);
  if (!v275)
  {
    goto LABEL_513;
  }

  v70 = 0;
  v258 = v67 & v68;
  v9 = v289;
  v71.i64[0] = 0x7F0000007FLL;
  v71.i64[1] = 0x7F0000007FLL;
  v261 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v262 = vnegq_f32(v71);
  v260 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  __asm { FMOV            V8.2S, #3.0 }

  v255 = v275;
  do
  {
    v21 = v275;
    if (v275 <= v70)
    {
      goto LABEL_599;
    }

    v76 = *a4;
    v259 = v70;
    v10 = v277 + 224 * v70;
    v303 = v262;
    v77.i64[0] = 0x7F0000007FLL;
    v77.i64[1] = 0x7F0000007FLL;
    v304 = v77;
    v305[1] = 0;
    v306 = 0;
    v305[0] = 0;
    v307 = 0;
    v317 = 0;
    v308 = 0u;
    v309 = 0u;
    v310 = 0;
    v311 = 0u;
    v312 = 0u;
    v313 = 0;
    v314 = 0u;
    v315 = 0u;
    if (v76 >= 2)
    {
      v6 = v76 - 2;
    }

    else
    {
      v6 = 0;
    }

    v316 = 0;
    re::DynamicArray<re::RigComponentConstraint>::operator=(v305, &v289[32]);
    re::DynamicArray<re::RigComponentConstraint>::operator=(&v308 + 8, &v289[72]);
    re::DynamicArray<re::RigComponentConstraint>::operator=(&v314 + 8, &v289[112]);
    v304 = *&v289[16];
    v303 = *v289;
    v78 = *(v10 + 192) + 1;
    if (v312 < v78)
    {
      re::DynamicArray<int>::setCapacity(&v311 + 1, v78);
    }

    LODWORD(v327[0]) = v306;
    re::DynamicArray<int>::add(&v311 + 1, v327);
    if (*&v289[112])
    {
      if (*(&v291 + 1))
      {
        (*(**&v289[112] + 40))();
      }

      *(&v291 + 1) = 0;
      v290 = 0uLL;
      *&v289[112] = 0;
      LODWORD(v291) = v291 + 1;
    }

    if (*&v289[72])
    {
      if (*&v289[104])
      {
        (*(**&v289[72] + 40))();
      }

      *&v289[104] = 0;
      memset(&v289[72], 0, 24);
      ++*&v289[96];
    }

    if (*&v289[32] && *&v289[64])
    {
      (*(**&v289[32] + 40))();
    }

    v79 = *(v10 + 192);
    if (v79)
    {
      v21 = 0;
      while (1)
      {
        v20 = *(v10 + 192);
        if (v20 <= v21)
        {
          goto LABEL_554;
        }

        LODWORD(v327[0]) = *(v314 + 4 * *(&v312 + 1) - 4) + *&v289[48];
        re::DynamicArray<int>::add(&v311 + 1, v327);
        v4 = *(v317 + 4 * *(&v315 + 1) - 4);
        v5 = DWORD2(v290);
        if (v315 < *(&v315 + 1) + v5)
        {
          re::DynamicArray<int>::setCapacity(&v314 + 1, *(&v315 + 1) + v5);
        }

        if (v5)
        {
          break;
        }

LABEL_136:
        if (*&v289[112])
        {
          if (*(&v291 + 1))
          {
            (*(**&v289[112] + 40))();
          }

          *(&v291 + 1) = 0;
          v290 = 0uLL;
          *&v289[112] = 0;
          LODWORD(v291) = v291 + 1;
        }

        if (*&v289[72])
        {
          if (*&v289[104])
          {
            (*(**&v289[72] + 40))();
          }

          *&v289[104] = 0;
          memset(&v289[72], 0, 24);
          ++*&v289[96];
        }

        if (*&v289[32] && *&v289[64])
        {
          (*(**&v289[32] + 40))();
        }

        if (++v21 == v79)
        {
          goto LABEL_148;
        }
      }

      v20 = 0;
      while (1)
      {
        v7 = *(&v290 + 1);
        if (*(&v290 + 1) <= v20)
        {
          goto LABEL_525;
        }

        LODWORD(v327[0]) = *(*(&v291 + 1) + 4 * v20) + v4;
        re::DynamicArray<int>::add(&v314 + 1, v327);
        if (v5 == ++v20)
        {
          goto LABEL_136;
        }
      }
    }

LABEL_148:
    v80 = v306;
    v6 = *(&v312 + 1);
    memset(v344, 0, 24);
    __p[1] = 0;
    v272 = 0;
    __p[0] = 0;
    memset(v350, 0, 24);
    v284 = 0;
    v285 = 0;
    v286 = 0;
    memset(v327, 0, 25);
    *&v327[4] = v261;
    v328 = xmmword_1E30A0CA0;
    v329 = v260;
    v330 = 0u;
    v331 = 0u;
    v332 = 0u;
    v289[0] = 0;
    memset(&v289[8], 0, 112);
    v290 = 0u;
    v291 = 0u;
    v292 = 0;
    v294 = 0u;
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    LODWORD(v293) = 1065353216;
    v299 = 1065353216;
    v300 = 0u;
    memset(v301, 0, sizeof(v301));
    v302 = 1065353216;
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(v289, &v331 + 1);
    std::vector<geo::math::Matrix<double,3,1>>::resize(v350, v80);
    std::vector<std::vector<unsigned long>>::reserve(&v284, v6);
    v10 = 0x7FFFFFFFFFFFFFF8;
    if (v6)
    {
      v5 = 0;
      v21 = 0;
      while (1)
      {
        v20 = *(&v312 + 1);
        if (v21)
        {
          v4 = (v21 - 1);
          if (*(&v312 + 1) <= v4)
          {
            goto LABEL_571;
          }

          v4 = *(v314 + 4 * v4);
        }

        else
        {
          v4 = 0;
        }

        if (*(&v312 + 1) <= v5)
        {
          goto LABEL_556;
        }

        v81 = *(v314 + 4 * v5);
        __src[0] = 0;
        __src[1] = 0;
        v283 = 0;
        std::vector<unsigned long>::reserve(__src, (v81 - v4));
        if (v81 > v4)
        {
          break;
        }

LABEL_170:
        std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](&v284, __src);
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v5 = (v21 + 1);
        v21 = v5;
        if (v6 <= v5)
        {
          goto LABEL_173;
        }
      }

      v20 = v4;
      v7 = 24 * v4;
      while (1)
      {
        v4 = v306;
        if (v306 <= v20)
        {
          goto LABEL_527;
        }

        v82 = *v350 + v7;
        *v82 = vcvtq_f64_f32(*(v308 + 8 * v20));
        *(v82 + 16) = 0;
        v83 = __src[1];
        if (__src[1] >= v283)
        {
          v84 = __src[0];
          v85 = __src[1] - __src[0];
          v86 = (__src[1] - __src[0]) >> 3;
          v87 = v86 + 1;
          if ((v86 + 1) >> 61)
          {
            goto LABEL_609;
          }

          v88 = v283 - __src[0];
          if ((v283 - __src[0]) >> 2 > v87)
          {
            v87 = v88 >> 2;
          }

          _CF = v88 >= 0x7FFFFFFFFFFFFFF8;
          v89 = 0x1FFFFFFFFFFFFFFFLL;
          if (!_CF)
          {
            v89 = v87;
          }

          if (v89)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(__src, v89);
          }

          v90 = (8 * v86);
          v8 = 0;
          v5 = 0;
          *v90 = v20;
          v4 = (v90 + 1);
          memcpy(0, v84, v85);
          v91 = __src[0];
          __src[0] = 0;
          __src[1] = v4;
          v283 = 0;
          if (v91)
          {
            operator delete(v91);
          }
        }

        else
        {
          *__src[1] = v20;
          v4 = v83 + 8;
        }

        __src[1] = v4;
        ++v20;
        v7 += 24;
        if (v81 == v20)
        {
          goto LABEL_170;
        }
      }
    }

LABEL_173:
    v289[0] = 0;
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(v289, v350);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(v289);
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(&v301[1], v284, v285, 0xAAAAAAAAAAAAAAABLL * (v285 - v284));
    Constraints = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(v289);
    if ((Constraints & 1) == 0 || (Constraints = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(v289), !Constraints) || (Constraints = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(v289, 0), (Constraints & 1) == 0))
    {
      v93 = *re::geometryLogObjects(Constraints);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v93, OS_LOG_TYPE_DEFAULT, "Failed to perfectly triangulate glyph outline.", buf, 2u);
      }
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(v289, v344, __p);
    v95 = __p[0];
    v94 = __p[1];
    v96 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
    __src[1] = 0;
    v283 = 0;
    __src[0] = 0;
    std::vector<geo::math::Matrix<unsigned int,3,1>>::reserve(__src, v96);
    if (v94 != v95)
    {
      v97 = *(&v312 + 1);
      if (*(&v312 + 1))
      {
        v98 = 0;
        if (v96 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v96;
        }

        v7 = *(&v312 + 1) - 1;
        while (1)
        {
          v6 = __p[0] + 12 * v98;
          v9 = *v6;
          v5 = v306;
          if (v306 <= v9)
          {
            break;
          }

          v10 = *(v6 + 4);
          if (v306 <= v10)
          {
            goto LABEL_563;
          }

          v4 = *(v6 + 8);
          if (v306 <= v4)
          {
            goto LABEL_564;
          }

          v287 = vdiv_f32(vadd_f32(vadd_f32(*(v308 + 8 * v9), *(v308 + 8 * v10)), *(v308 + 8 * v4)), _D8);
          if (!*(&v312 + 1))
          {
            goto LABEL_565;
          }

          v99 = *v314;
          *buf = v308;
          *&buf[8] = v99;
          if (re::internal::isPointInsidePolygon(&v287, buf))
          {
            if (v97 < 2)
            {
LABEL_196:
              std::vector<geo::math::Matrix<unsigned int,3,1>>::push_back[abi:nn200100](__src, v6);
            }

            else
            {
              v5 = 0;
              while (1)
              {
                v9 = *(&v312 + 1);
                if (*(&v312 + 1) <= v5)
                {
                  goto LABEL_541;
                }

                if (*(&v312 + 1) <= v5 + 1)
                {
LABEL_542:
                  v288 = 0;
                  v343 = 0u;
                  v342 = 0u;
                  memset(buf, 0, sizeof(buf));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v347 = 136315906;
                  *&v347[4] = "operator[]";
                  *&v347[12] = 1024;
                  *&v347[14] = 797;
                  *&v347[18] = 2048;
                  *&v347[20] = v5 + 1;
                  v348 = 2048;
                  *v349 = v9;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_543:
                  v288 = 0;
                  v343 = 0u;
                  v342 = 0u;
                  memset(buf, 0, sizeof(buf));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v347 = 136315906;
                  *&v347[4] = "operator[]";
                  *&v347[12] = 1024;
                  *&v347[14] = 797;
                  *&v347[18] = 2048;
                  *&v347[20] = v4;
                  v348 = 2048;
                  *v349 = v8;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_544;
                }

                v8 = v306;
                v4 = *(v314 + 4 * v5);
                if (v306 <= v4)
                {
                  goto LABEL_543;
                }

                v100 = (*(v314 + 4 * v5 + 4) - v4);
                *buf = v308 + 8 * v4;
                *&buf[8] = v100;
                if (re::internal::isPointInsidePolygon(&v287, buf))
                {
                  break;
                }

                if (v7 == ++v5)
                {
                  goto LABEL_196;
                }
              }
            }
          }

          if (++v98 == v20)
          {
            goto LABEL_198;
          }
        }

LABEL_562:
        v288 = 0;
        v343 = 0u;
        v342 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v347 = 136315906;
        *&v347[4] = "operator[]";
        *&v347[12] = 1024;
        *&v347[14] = 797;
        *&v347[18] = 2048;
        *&v347[20] = v9;
        v348 = 2048;
        *v349 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_563:
        v288 = 0;
        v343 = 0u;
        v342 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v347 = 136315906;
        *&v347[4] = "operator[]";
        *&v347[12] = 1024;
        *&v347[14] = 797;
        *&v347[18] = 2048;
        *&v347[20] = v10;
        v348 = 2048;
        *v349 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_564:
        v288 = 0;
        v343 = 0u;
        v342 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v347 = 136315906;
        *&v347[4] = "operator[]";
        *&v347[12] = 1024;
        *&v347[14] = 797;
        *&v347[18] = 2048;
        *&v347[20] = v4;
        v348 = 2048;
        *v349 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_565:
        v288 = 0;
        v343 = 0u;
        v342 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v347 = 136315906;
        *&v347[4] = "operator[]";
        *&v347[12] = 1024;
        *&v347[14] = 797;
        *&v347[18] = 2048;
        *&v347[20] = 0;
        v348 = 2048;
        *v349 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_566:
        *v350 = 0;
        v329 = 0u;
        v328 = 0u;
        memset(v327, 0, sizeof(v327));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v344 = 136315906;
        *&v344[4] = "operator[]";
        *&v344[12] = 1024;
        *&v344[14] = 797;
        *&v344[18] = 2048;
        *&v344[20] = v9 + v20;
        v345 = 2048;
        *v346 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_567:
        *v350 = 0;
        v329 = 0u;
        v328 = 0u;
        memset(v327, 0, sizeof(v327));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v344[4] = "operator[]";
        *&v344[12] = 1024;
        *&v344[14] = 621;
        *v344 = 136315906;
        *&v344[18] = 2048;
        *&v344[20] = (v20 + v8 + v9);
        v345 = 2048;
        *v346 = v6;
        _os_log_send_and_compose_impl();
        v171 = _os_crash_msg();
        __break(1u);
LABEL_568:
        *v350 = 0;
        v329 = 0u;
        v328 = 0u;
        memset(v327, 0, sizeof(v327));
        v252 = v171;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v344[4] = "operator[]";
        *&v344[12] = 1024;
        *&v344[14] = 621;
        *v344 = 136315906;
        *&v344[18] = 2048;
        *&v344[20] = (v20 + v252) + v9;
        v345 = 2048;
        *v346 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_569;
      }
    }

LABEL_198:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *__src;
    v272 = v283;
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::~ConstrainedDelaunayTriangulationMesherDetails(v289);
    if (*(&v331 + 1))
    {
      *&v332 = *(&v331 + 1);
      operator delete(*(&v331 + 1));
    }

    if (v330)
    {
      *(&v330 + 1) = v330;
      operator delete(v330);
    }

    if (v327[0])
    {
      v327[1] = v327[0];
      operator delete(v327[0]);
    }

    *v289 = &v284;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v289);
    if (*v350)
    {
      *&v350[8] = *v350;
      operator delete(*v350);
    }

    if (*v344)
    {
      *&v344[8] = *v344;
      operator delete(*v344);
    }

    v101 = *(a4 + 4);
    LODWORD(v8) = *(a4 + 10);
    v102 = *(a4 + 11);
    bzero(v327, 0x2D0uLL);
    v20 = v327;
    re::DynamicArray<re::BlendNode>::setCapacity(&v327[2], 1uLL);
    ++LODWORD(v327[5]);
    re::internal::GeomAttributeManager::GeomAttributeManager((&v328 + 8));
    re::internal::GeomAttributeManager::addAttribute((&v328 + 8), "vertexPosition", 1, 7);
    v4 = DWORD2(v312);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
    if (v102)
    {
      v104 = -1431655765 * ((__p[1] - __p[0]) >> 2);
    }

    else
    {
      v104 = 0;
    }

    v6 = v104 - 1431655765 * ((__p[1] - __p[0]) >> 2);
    v105 = 2 * v306;
    if (!v8)
    {
      v105 = 0;
    }

    v106 = (v6 + v105);
    v256 = v8 | v102;
    v269 = v306;
    if (v8 | v102)
    {
      v107 = v306;
    }

    else
    {
      v107 = 0;
    }

    if (v106 < LODWORD(v327[4]))
    {
      v108 = v340;
      if (v340)
      {
        LODWORD(v5) = 0;
        do
        {
          v109 = re::internal::GeomAttributeContainer::attributeByIndex(&v339, v5);
          re::internal::accessFaceVaryingAttributeSubmesh(v109, v110);
          v5 = (v5 + 1);
        }

        while (v108 != v5);
      }
    }

    re::DynamicArray<re::GeomCell4>::resize(&v327[2], v106);
    v336 = v106;
    if (v337)
    {
      v111 = v338;
      v20 = 8 * v337;
      do
      {
        v112 = *v111++;
        (*(*v112 + 80))(v112, v336);
        v20 -= 8;
      }

      while (v20);
    }

    v7 = v269;
    LODWORD(v327[1]) = v107 + v269;
    v333 = v107 + v269;
    if (v334)
    {
      v113 = v335;
      v114 = 8 * v334;
      do
      {
        v115 = *v113++;
        (*(*v115 + 80))(v115, v333);
        v114 -= 8;
      }

      while (v114);
    }

    if (v10)
    {
      v116 = 0;
      v117 = 0;
      do
      {
        re::GeomMeshBuilder::setFaceVertices(v327, v117++, *(__p[0] + v116), *(__p[0] + v116 + 4), *(__p[0] + v116 + 8));
        v116 += 12;
      }

      while (v10 != v117);
      v7 = v269;
      if (v102)
      {
        v118 = 0;
        v119 = 12 * v10;
        do
        {
          re::GeomMeshBuilder::setFaceVertices(v327, v10, *(__p[0] + v118 + 8) + v269, *(__p[0] + v118 + 4) + v269, *(__p[0] + v118) + v269);
          v10 = (v10 + 1);
          v118 += 12;
        }

        while (v119 != v118);
      }
    }

    if (v8 && v4)
    {
      v9 = 0;
      v266 = v4;
      while (1)
      {
        v5 = *(&v312 + 1);
        if (v9)
        {
          v21 = v9 - 1;
          if (*(&v312 + 1) <= v9 - 1)
          {
            goto LABEL_572;
          }

          v120 = *(v314 + 4 * v21);
        }

        else
        {
          v120 = 0;
        }

        if (*(&v312 + 1) <= v9)
        {
          break;
        }

        v121 = *(v314 + 4 * v9);
        if (v120 < v121)
        {
          v122 = 0;
          v20 = v120 + v7;
          LODWORD(v8) = -v121;
          v123 = v7;
          do
          {
            v5 = v120 + v122;
            v124 = v120 + v123;
            if (v120 + v8 == -1)
            {
              v125 = v20;
            }

            else
            {
              v125 = v124 + 1;
            }

            if (v120 + v8 == -1)
            {
              v10 = v120;
            }

            else
            {
              v10 = (v5 + 1);
            }

            re::GeomMeshBuilder::setFaceVertices(v327, v6, v120 + v122, v124, v125);
            re::GeomMeshBuilder::setFaceVertices(v327, v6 + 1, v120 + v122, v125, v10);
            v6 = (v6 + 2);
            ++v122;
            LODWORD(v8) = v8 + 1;
            ++v123;
          }

          while (v120 + v8);
          v4 = v266;
          v7 = v269;
        }

        if (++v9 == v4)
        {
          goto LABEL_253;
        }
      }

LABEL_561:
      *v347 = 0;
      memset(v289, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      *&buf[18] = 2048;
      *&buf[20] = v9;
      *&buf[28] = 2048;
      *&buf[30] = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_562;
    }

LABEL_253:
    re::GeomMesh::GeomMesh(v289, 0);
    re::GeomMesh::operator=(v289, &v327[1]);
    re::GeomMesh::setName(v289, v327[0]);
    re::GeomMesh::freeName(v327);
    v126 = re::GeomMesh::modifyVertexPositions(v289);
    v8 = &v303;
    v9 = v289;
    if (!v7)
    {
      goto LABEL_265;
    }

    v6 = 0;
    v5 = v7;
    v20 = v127;
    do
    {
      v21 = v306;
      if (v306 <= v6)
      {
        goto LABEL_557;
      }

      if (v127 == v6)
      {
LABEL_558:
        *v344 = 0;
        v343 = 0u;
        v342 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v347 = 136315906;
        *&v347[4] = "operator[]";
        *&v347[12] = 1024;
        *&v347[14] = 621;
        *&v347[18] = 2048;
        *&v347[20] = v20;
        v348 = 2048;
        *v349 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_559:
        *buf = 0;
        memset(v289, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v327[0]) = 136315906;
        *(v327 + 4) = "operator[]";
        WORD2(v327[1]) = 1024;
        *(&v327[1] + 6) = 789;
        WORD1(v327[2]) = 2048;
        *(&v327[2] + 4) = v21;
        WORD2(v327[3]) = 2048;
        *(&v327[3] + 6) = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_560:
        *buf = 0;
        memset(v289, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v327[0]) = 136315906;
        *(v327 + 4) = "operator[]";
        WORD2(v327[1]) = 1024;
        *(&v327[1] + 6) = 789;
        WORD1(v327[2]) = 2048;
        *(&v327[2] + 4) = v21;
        WORD2(v327[3]) = 2048;
        *(&v327[3] + 6) = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_561;
      }

      *&v128 = *(v308 + 8 * v6);
      *(&v128 + 2) = v101 * 0.5;
      *(v126 + 16 * v6++) = v128;
    }

    while (v7 != v6);
    if (v256)
    {
      v6 = 0;
      LODWORD(v129) = v127 - v7;
      if (v127 >= v7)
      {
        v129 = v129;
      }

      else
      {
        v129 = 0;
      }

      while (1)
      {
        v21 = v306;
        if (v306 <= v6)
        {
          goto LABEL_575;
        }

        if (v129 == v6)
        {
          break;
        }

        *&v128 = *(v308 + 8 * v6);
        *(&v128 + 2) = -(v101 * 0.5);
        *(v126 + 16 * v7 + 16 * v6++) = v128;
        if (v7 == v6)
        {
          goto LABEL_265;
        }
      }

LABEL_576:
      *v344 = 0;
      v343 = 0u;
      v342 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *&v347[4] = "operator[]";
      *&v347[12] = 1024;
      *&v347[14] = 621;
      *v347 = 136315906;
      *&v347[18] = 2048;
      *&v347[20] = (v5 + v6);
      v348 = 2048;
      *v349 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_577:
      v303.i64[0] = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v318) = 136315906;
      *(v21 + 196) = "operator[]";
      WORD2(v319) = 1024;
      *(v21 + 206) = 789;
      WORD1(v320) = 2048;
      *(v21 + 212) = v20;
      v322 = 2048;
      *(v21 + 222) = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_578:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v20;
      v345 = 2048;
      *v346 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_579:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v9;
      v345 = 2048;
      *v346 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_580:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v20;
      v351 = 2048;
      v352 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_581:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v9;
      v351 = 2048;
      v352 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_582;
    }

LABEL_265:
    re::GeomMesh::freeName(v327);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v328 + 8));
    if (v327[2] && v328)
    {
      (*(*v327[2] + 40))();
    }

    v130 = a4;
    if (*(a4 + 8) != 1)
    {
      goto LABEL_367;
    }

    v257 = *(a4 + 4);
    v4 = *(a4 + 10);
    v5 = *(a4 + 11);
    v9 = v306;
    v10 = *(&v312 + 1);
    v131 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
    v6 = *&v289[40];
    *&buf[32] = 0;
    memset(buf, 0, 28);
    *&v349[2] = 0;
    memset(v347, 0, sizeof(v347));
    re::DynamicArray<re::GeomCell4>::resize(buf, *&v289[40]);
    re::DynamicArray<float>::resize(v347, v6);
    if (v131)
    {
      v132 = v131;
      v21 = *&buf[16];
      v133 = __p[0] + 8;
      v134 = (*&buf[32] + 12);
      v135 = *&buf[16];
      v136 = v131;
      do
      {
        if (!v135)
        {
          goto LABEL_574;
        }

        v137 = *v133;
        *(v134 - 3) = *(v133 - 1);
        *(v134 - 1) = v137;
        *v134 = -1;
        v133 += 3;
        v134 += 4;
        --v135;
        --v136;
      }

      while (v136);
      if (v5)
      {
        v138 = *&buf[32];
        v139 = vdup_n_s32(v9);
        v140 = __p[0] + 4;
        v141 = v131;
        do
        {
          v20 = v141;
          if (v21 <= v141)
          {
            goto LABEL_585;
          }

          v142 = (v138 + 16 * v141);
          v143 = *(v140 - 1) + v9;
          v144 = *v140;
          v140 = (v140 + 12);
          *v142 = vrev64_s32(vadd_s32(v144, v139));
          v142[1].i32[0] = v143;
          v142[1].i32[1] = -1;
          v141 = v20 + 1;
          --v132;
        }

        while (v132);
      }
    }

    v21 = (v10 + v9);
    v267 = v5;
    if (v5)
    {
      v145 = v9;
    }

    else
    {
      v145 = 0;
    }

    v253 = v145;
    v8 = (v145 + v9);
    v270 = v4;
    if (v4 && v10)
    {
      v146 = 0;
      if (v5)
      {
        v147 = v131;
      }

      else
      {
        v147 = 0;
      }

      v148 = v147 + v131;
      v20 = *(&v312 + 1);
      v149 = v314;
      v5 = *&buf[16];
      v150 = v8;
      while (1)
      {
        v151 = v150;
        if (v146)
        {
          v4 = v146 - 1;
          if (v20 <= v146 - 1)
          {
            goto LABEL_590;
          }

          v151 = *(v149 + 4 * v4) + v150;
        }

        if (v146 == v20)
        {
          goto LABEL_584;
        }

        v152 = *(v149 + 4 * v146) + v150;
        if (v151 < v152)
        {
          break;
        }

LABEL_295:
        ++v150;
        if (++v146 == v10)
        {
          goto LABEL_296;
        }
      }

      v153 = *&buf[32];
      while (1)
      {
        v7 = v148;
        if (v5 <= v148)
        {
          break;
        }

        v154 = (v153 + 16 * v148);
        v155 = v21 + v151 + 1;
        *v154 = v151;
        v154[1] = v21 + v151;
        v154[2] = v155;
        v154[3] = -1;
        v4 = (v7 + 1);
        if (v5 <= v4)
        {
          goto LABEL_536;
        }

        v156 = (v153 + 16 * v4);
        *v156 = v151;
        v156[1] = v155;
        v156[2] = v151 + 1;
        v156[3] = -1;
        v148 = v7 + 2;
        if (++v151 >= v152)
        {
          goto LABEL_295;
        }
      }

LABEL_535:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v7;
      v345 = 2048;
      *v346 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_536:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_537:
      *v344 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v347 = 136315906;
      *&v347[4] = "operator[]";
      *&v347[12] = 1024;
      *&v347[14] = 789;
      *&v347[18] = 2048;
      *&v347[20] = v9;
      v348 = 2048;
      *v349 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_538:
      *buf = 0;
      memset(v289, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v327[0]) = 136315906;
      *(v327 + 4) = "operator[]";
      WORD2(v327[1]) = 1024;
      *(&v327[1] + 6) = 789;
      WORD1(v327[2]) = 2048;
      *(&v327[2] + 4) = v21;
      WORD2(v327[3]) = 2048;
      *(&v327[3] + 6) = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_539;
    }

LABEL_296:
    v157 = 2 * v21;
    if (!v270)
    {
      v157 = 0;
    }

    if (v6)
    {
      v158 = 0;
      v20 = *&v347[16];
      v159 = *&v349[2];
      while (v20 != v158)
      {
        *(v159 + 4 * v158) = v158;
        if (v6 == ++v158)
        {
          goto LABEL_302;
        }
      }

      goto LABEL_578;
    }

LABEL_302:
    v160 = v10;
    v6 = re::GeomMesh::addFaceVaryingAttribute(v289, "vertexUV", 6, v157 + v8, buf, v347);
    v254 = v10;
    if ((*(*v6 + 16))(v6))
    {
      if (*(v6 + 40))
      {
        v5 = *(v6 + 56);
        v10 = (*(*v6 + 16))(v6);
        goto LABEL_306;
      }

LABEL_611:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = 0;
      v345 = 2048;
      *v346 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_612;
    }

    v10 = 0;
    v5 = 0;
LABEL_306:
    v161 = v160;
    if (!v254)
    {
      goto LABEL_360;
    }

    v20 = 0;
    v162 = *v303.f32;
    v163 = vsubq_f32(v304, v303);
    v163.i32[3] = 0;
    v164 = vmaxnmq_f32(v163, 0);
    v165 = 1.0 / fmaxf(fmaxf(v164.f32[0], v164.f32[2]), v164.f32[1]);
    while (2)
    {
      v6 = *(&v312 + 1);
      if (v20)
      {
        v4 = v20 - 1;
        if (*(&v312 + 1) <= v20 - 1)
        {
          goto LABEL_589;
        }

        v166 = *(v314 + 4 * v4);
      }

      else
      {
        v166 = 0;
      }

      if (*(&v312 + 1) <= v20)
      {
        goto LABEL_583;
      }

      v167 = *(v314 + 4 * v20);
      if (v166 < v167)
      {
        v6 = v166;
        if (v166 <= v10)
        {
          v7 = v10;
        }

        else
        {
          v7 = v166;
        }

        do
        {
          v4 = v306;
          if (v306 <= v6)
          {
            goto LABEL_533;
          }

          if (v7 == v6)
          {
            goto LABEL_534;
          }

          *(v5 + 8 * v6) = vmul_n_f32(vsub_f32(*(v308 + 8 * v6), v162), v165);
        }

        while (v167 != ++v6);
      }

      if (++v20 != v160)
      {
        continue;
      }

      break;
    }

    if (v267)
    {
      v20 = 0;
      while (1)
      {
        v6 = *(&v312 + 1);
        if (v20)
        {
          v4 = v20 - 1;
          if (*(&v312 + 1) <= v20 - 1)
          {
            goto LABEL_602;
          }

          v168 = *(v314 + 4 * v4);
        }

        else
        {
          v168 = 0;
        }

        if (*(&v312 + 1) <= v20)
        {
          goto LABEL_598;
        }

        v169 = *(v314 + 4 * v20);
        if (v168 < v169)
        {
          break;
        }

LABEL_333:
        if (++v20 == v160)
        {
          goto LABEL_334;
        }
      }

      v7 = v168;
      v6 = v9 + v168;
      while (1)
      {
        v4 = v306;
        if (v306 <= v7)
        {
          break;
        }

        if (v10 <= v6)
        {
          goto LABEL_553;
        }

        v170 = vmul_n_f32(vsub_f32(*(v308 + 8 * v7), v162), v165);
        v170.f32[0] = 1.0 - v170.f32[0];
        *(v5 + 8 * v6) = v170;
        ++v7;
        ++v6;
        if (v169 == v7)
        {
          goto LABEL_333;
        }
      }

LABEL_552:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v7;
      v345 = 2048;
      *v346 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_553:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 621;
      *&v344[18] = 2048;
      *&v344[20] = v6;
      v345 = 2048;
      *v346 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_554:
      *v347 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      *&buf[18] = 2048;
      *&buf[20] = v21;
      *&buf[28] = 2048;
      *&buf[30] = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_555:
      *v344 = 0;
      v329 = v43;
      v328 = v43;
      *&v327[4] = v43;
      *&v327[2] = v43;
      *v327 = v43;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v347 = 136315906;
      *&v347[4] = "operator[]";
      *&v347[12] = 1024;
      *&v347[14] = 789;
      *&v347[18] = 2048;
      *&v347[20] = v21;
      v348 = 2048;
      *v349 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_556:
      __src[0] = 0;
      v343 = 0u;
      v342 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v347 = 136315906;
      *&v347[4] = "operator[]";
      *&v347[12] = 1024;
      *&v347[14] = 797;
      *&v347[18] = 2048;
      *&v347[20] = v5;
      v348 = 2048;
      *v349 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_557:
      *v344 = 0;
      v343 = 0u;
      v342 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v347 = 136315906;
      *&v347[4] = "operator[]";
      *&v347[12] = 1024;
      *&v347[14] = 797;
      *&v347[18] = 2048;
      *&v347[20] = v6;
      v348 = 2048;
      *v349 = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_558;
    }

LABEL_334:
    if (v270)
    {
      v7 = 0;
      v6 = v10;
      v171 = v253 + 2 * v9 + v254;
      while (1)
      {
        v9 = *(&v312 + 1);
        if (v7)
        {
          v20 = v7 - 1;
          if (*(&v312 + 1) <= v7 - 1)
          {
            goto LABEL_608;
          }

          v20 = *(v314 + 4 * v20);
        }

        else
        {
          v20 = 0;
        }

        if (*(&v312 + 1) <= v7)
        {
          goto LABEL_603;
        }

        v172 = v20;
        v9 = v306;
        if (v306 <= v20)
        {
          goto LABEL_604;
        }

        v173 = *(v314 + 4 * v7);
        v174 = *(v308 + 8 * v20);
        v175 = 0.0;
        if (v20 < v173)
        {
          v9 = 0;
          v176 = (v20 + v8);
          v177 = 8 * v20;
          v178 = v20 + v171;
          v175 = 0.0;
          do
          {
            v4 = v306;
            if (v306 <= v20 + v9)
            {
              goto LABEL_566;
            }

            if (v176 + v9 >= v10)
            {
              goto LABEL_567;
            }

            v179 = v308 + v177;
            v180 = vsub_f32(*(v308 + v177 + 8 * v9), v174);
            v175 = v175 + sqrtf(vaddv_f32(vmul_f32(v180, v180)));
            v180.i32[0] = 0;
            v180.f32[1] = v175;
            *(v5 + 8 * v176 + 8 * v9) = v180;
            if (v10 <= v178 + v9)
            {
              goto LABEL_568;
            }

            *(v5 + 8 * v178 + 8 * v9) = __PAIR64__(LODWORD(v175), LODWORD(v257));
            v174 = *(v179 + 8 * v9++);
          }

          while (v20 - v173 + v9);
          v9 = v306;
        }

        if (v9 <= v20)
        {
          goto LABEL_605;
        }

        v9 = (v173 + v8);
        if (v10 <= v9)
        {
          goto LABEL_606;
        }

        v181 = vsub_f32(*(v308 + 8 * v20), v174);
        v182 = v175 + sqrtf(vaddv_f32(vmul_f32(v181, v181)));
        v181.i32[0] = 0;
        v181.f32[1] = v182;
        *(v5 + 8 * v9) = v181;
        v4 = (v9 + v21);
        if (v10 <= v4)
        {
          goto LABEL_607;
        }

        *(v5 + 8 * v4) = __PAIR64__(LODWORD(v182), LODWORD(v257));
        if (v20 <= v173)
        {
          break;
        }

LABEL_359:
        ++v7;
        LODWORD(v8) = v8 + 1;
        ++v171;
        if (v7 == v161)
        {
          goto LABEL_360;
        }
      }

      if (v182 <= v257)
      {
        v182 = v257;
      }

      v9 = (v20 + v8);
      v183 = (v20 + v171);
      v184 = 1.0 / v182;
      while (v9 < v10)
      {
        *(v5 + 8 * v9) = vmul_n_f32(*(v5 + 8 * v9), v184);
        if (v10 <= v183)
        {
          goto LABEL_570;
        }

        *(v5 + 8 * v183) = vmul_n_f32(*(v5 + 8 * v183), v184);
        v20 = (v20 + 1);
        ++v9;
        ++v183;
        if (v20 > v173)
        {
          goto LABEL_359;
        }
      }

LABEL_569:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      v183 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 621;
      *&v344[18] = 2048;
      *&v344[20] = v9;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_570:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      v21 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 621;
      *&v344[18] = 2048;
      *&v344[20] = v183;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_571:
      __src[0] = 0;
      v343 = 0u;
      v342 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v347 = 136315906;
      *&v347[4] = "operator[]";
      *&v347[12] = 1024;
      *&v347[14] = 797;
      *&v347[18] = 2048;
      *&v347[20] = v4;
      v348 = 2048;
      *v349 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_572:
      *v347 = 0;
      memset(v289, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      *&buf[18] = 2048;
      *&buf[20] = v21;
      *&buf[28] = 2048;
      *&buf[30] = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_573:
      v303.i64[0] = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v318) = 136315906;
      *(v21 + 196) = "operator[]";
      WORD2(v319) = 1024;
      *(v21 + 206) = 789;
      WORD1(v320) = 2048;
      *(v21 + 212) = v20;
      v322 = 2048;
      *(v21 + 222) = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_574:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v21;
      v345 = 2048;
      *v346 = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_575:
      *v344 = 0;
      v343 = 0u;
      v342 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v347 = 136315906;
      *&v347[4] = "operator[]";
      *&v347[12] = 1024;
      *&v347[14] = 797;
      *&v347[18] = 2048;
      *&v347[20] = v6;
      v348 = 2048;
      *v349 = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_576;
    }

LABEL_360:
    if (*v347 && *&v349[2])
    {
      (*(**v347 + 40))();
    }

    v8 = &v303;
    v9 = v289;
    if (*buf && *&buf[32])
    {
      (*(**buf + 40))();
    }

    v130 = a4;
LABEL_367:
    if (v130[9] != 1)
    {
      goto LABEL_431;
    }

    v185 = v130[10];
    v7 = v130[11];
    v21 = DWORD2(v315);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
    v6 = *&v289[40];
    if (v130[11])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    if (v130[10])
    {
      v20 = DWORD2(v309);
    }

    else
    {
      v20 = 0;
    }

    *&buf[32] = 0;
    memset(buf, 0, 28);
    *&v349[2] = 0;
    memset(v347, 0, sizeof(v347));
    re::DynamicArray<re::GeomCell4>::resize(buf, *&v289[40]);
    re::DynamicArray<float>::resize(v347, v6);
    if (v10)
    {
      v186 = 0;
      v9 = *&buf[16];
      v187 = *&buf[32];
      v188.i64[1] = -1;
      v188.i64[0] = v20 | 0xFFFFFFFF00000000;
      v189 = vzip1q_s32(v188, v188);
      v189.i32[2] = v20;
      do
      {
        if (v9 == v186)
        {
          goto LABEL_579;
        }

        *(v187 + 16 * v186++) = v189;
      }

      while (v10 != v186);
      if (v7)
      {
        v190.i32[1] = -1;
        v190.i64[1] = -1;
        v190.i32[0] = v20 + 1;
        v191 = *&buf[32];
        v192 = vzip1q_s32(v190, v190);
        v193 = v10;
        v194 = v10;
        do
        {
          v4 = v194;
          if (v9 <= v194)
          {
            goto LABEL_588;
          }

          v192.i32[2] = v20 + 1;
          *(v191 + 16 * v194++) = v192;
        }

        while (--v193);
      }
    }

    if (!v21)
    {
      v185 = 0;
    }

    if (v185 == 1)
    {
      v195 = 0;
      if (v7)
      {
        v196 = v10;
      }

      else
      {
        v196 = 0;
      }

      v197 = v196 + v10;
      v9 = *(&v315 + 1);
      v198 = v317;
      v10 = *&buf[16];
      while (1)
      {
        if (v195)
        {
          v4 = v195 - 1;
          if (v9 <= v195 - 1)
          {
            goto LABEL_595;
          }

          v199 = *(v198 + 4 * v4);
        }

        else
        {
          v199 = 0;
        }

        if (v195 == v9)
        {
          goto LABEL_587;
        }

        v200 = *(v198 + 4 * v195) - 1;
        if (v199 < v200)
        {
          break;
        }

LABEL_399:
        if (++v195 == v21)
        {
          goto LABEL_400;
        }
      }

      v201 = *&buf[32];
      while (1)
      {
        v5 = v197;
        if (v10 <= v197)
        {
          break;
        }

        v202 = (v201 + 16 * v197);
        *v202 = v199;
        v202[1] = v199++;
        v202[2] = v199;
        v202[3] = -1;
        v4 = (v5 + 1);
        if (v10 <= v4)
        {
          goto LABEL_540;
        }

        v203 = (v201 + 16 * v4);
        *v203 = v199 - 1;
        v203[1] = v199;
        v203[2] = v199;
        v203[3] = -1;
        v197 = v5 + 2;
        if (v199 == v200)
        {
          goto LABEL_399;
        }
      }

LABEL_539:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v5;
      v345 = 2048;
      *v346 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_540:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_541:
      v288 = 0;
      v343 = 0u;
      v342 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v347 = 136315906;
      *&v347[4] = "operator[]";
      *&v347[12] = 1024;
      *&v347[14] = 797;
      *&v347[18] = 2048;
      *&v347[20] = v5;
      v348 = 2048;
      *v349 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_542;
    }

LABEL_400:
    if (v6)
    {
      v204 = 0;
      v5 = *&v347[16];
      v205 = *&v349[2];
      while (v5 != v204)
      {
        *(v205 + 4 * v204) = v204;
        if (v6 == ++v204)
        {
          goto LABEL_404;
        }
      }

LABEL_582:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v5;
      v345 = 2048;
      *v346 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_583:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v20;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_584:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v20;
      v345 = 2048;
      *v346 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_585:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v20;
      v345 = 2048;
      *v346 = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_586:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v5;
      v351 = 2048;
      v352 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_587:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v9;
      v345 = 2048;
      *v346 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_588:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 789;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_589:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_590:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_591:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v20;
      v345 = 2048;
      *v346 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_592:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v9;
      v351 = 2048;
      v352 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_593:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v9;
      v351 = 2048;
      v352 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_594:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 797;
      *&v350[18] = 2048;
      *&v350[20] = v5;
      v351 = 2048;
      v352 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_595:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_596:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 797;
      *&v350[18] = 2048;
      *&v350[20] = v20;
      v351 = 2048;
      v352 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_597:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_598:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v20;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_599:
      *buf = 0;
      memset(v289, 0, 80);
      v20 = v70;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v327[0]) = 136315906;
      *(v327 + 4) = "operator[]";
      WORD2(v327[1]) = 1024;
      *(&v327[1] + 6) = 789;
      WORD1(v327[2]) = 2048;
      *(&v327[2] + 4) = v20;
      WORD2(v327[3]) = 2048;
      *(&v327[3] + 6) = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_600:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 797;
      *&v350[18] = 2048;
      *&v350[20] = v4;
      v351 = 2048;
      v352 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_601:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 797;
      *&v350[18] = 2048;
      *&v350[20] = v4;
      v351 = 2048;
      v352 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_602:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_603:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      v172 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v7;
      v345 = 2048;
      *v346 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_604:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v172;
      v345 = 2048;
      *v346 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_605:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v172;
      v345 = 2048;
      *v346 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_606:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 621;
      *&v344[18] = 2048;
      *&v344[20] = v9;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_607:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 621;
      *&v344[18] = 2048;
      *&v344[20] = v4;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_608:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v20;
      v345 = 2048;
      *v346 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_609:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_404:
    v4 = (v20 + 1);
    v206 = re::GeomMesh::addFaceVaryingAttribute(v289, "vertexNormal", 7, v20 + v8, buf, v347);
    v207 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v206);
    v6 = v208;
    if (v20 >= v208)
    {
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 621;
      *&v344[18] = 2048;
      *&v344[20] = v20;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_611;
    }

    *(v207 + 16 * v20) = xmmword_1E30476A0;
    v8 = &v303;
    v9 = v289;
    if ((v7 & 1) == 0)
    {
      goto LABEL_408;
    }

    if (v4 >= v208)
    {
      goto LABEL_616;
    }

    *(v207 + 16 * v4) = xmmword_1E306DD20;
LABEL_408:
    if (v185)
    {
      v20 = 0;
      while (1)
      {
        v5 = *(&v315 + 1);
        if (v20)
        {
          v4 = v20 - 1;
          if (*(&v315 + 1) <= v20 - 1)
          {
            goto LABEL_597;
          }

          v210 = *(v317 + 4 * v4);
        }

        else
        {
          v210 = 0;
        }

        if (*(&v315 + 1) <= v20)
        {
          goto LABEL_591;
        }

        v211 = *(v317 + 4 * v20);
        if (v210 < v211)
        {
          break;
        }

LABEL_423:
        if (++v20 == v21)
        {
          goto LABEL_424;
        }
      }

      v7 = v210;
      if (v210 <= v208)
      {
        v5 = v208;
      }

      else
      {
        v5 = v210;
      }

      v212 = 8 * v210;
      while (1)
      {
        v4 = *(&v309 + 1);
        if (*(&v309 + 1) <= v7)
        {
          break;
        }

        if (v5 == v7)
        {
          goto LABEL_545;
        }

        v209.i32[0] = *(v311 + v212 + 4);
        v209.f32[1] = -*(v311 + v212);
        v213 = vmulq_f32(v209, v209);
        *&v214 = v213.f32[2] + vaddv_f32(*v213.f32);
        *v213.f32 = vrsqrte_f32(v214);
        *v213.f32 = vmul_f32(*v213.f32, vrsqrts_f32(v214, vmul_f32(*v213.f32, *v213.f32)));
        *(v207 + 16 * v7++) = vmulq_n_f32(v209, vmul_f32(*v213.f32, vrsqrts_f32(v214, vmul_f32(*v213.f32, *v213.f32))).f32[0]);
        v212 += 8;
        if (v211 == v7)
        {
          goto LABEL_423;
        }
      }

LABEL_544:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 797;
      *&v344[18] = 2048;
      *&v344[20] = v7;
      v345 = 2048;
      *v346 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_545:
      *v350 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v344 = 136315906;
      *&v344[4] = "operator[]";
      *&v344[12] = 1024;
      *&v344[14] = 621;
      *&v344[18] = 2048;
      *&v344[20] = v5;
      v345 = 2048;
      *v346 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_546:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      v233 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v10;
      v351 = 2048;
      v352 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_547:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v233;
      v351 = 2048;
      v352 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_548:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      v233 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v10;
      v351 = 2048;
      v352 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_549:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      v21 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 789;
      *&v350[18] = 2048;
      *&v350[20] = v233;
      v351 = 2048;
      v352 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_550:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 797;
      *&v350[18] = 2048;
      *&v350[20] = v7;
      v351 = 2048;
      v352 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_551:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 621;
      *&v350[18] = 2048;
      *&v350[20] = v5;
      v351 = 2048;
      v352 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_552;
    }

LABEL_424:
    if (*v347 && *&v349[2])
    {
      (*(**v347 + 40))();
    }

    if (*buf && *&buf[32])
    {
      (*(**buf + 40))();
    }

    v130 = a4;
LABEL_431:
    if (v258)
    {
      v5 = v130[10];
      v215 = v130[11];
      LODWORD(v8) = DWORD2(v309);
      v21 = DWORD2(v315);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2);
      v6 = *&v289[40];
      *&buf[32] = 0;
      memset(buf, 0, 28);
      *&v349[2] = 0;
      memset(v347, 0, sizeof(v347));
      *&v346[2] = 0;
      memset(v344, 0, sizeof(v344));
      re::DynamicArray<re::GeomCell4>::resize(buf, *&v289[40]);
      re::DynamicArray<re::GeomCell4>::resize(v347, v6);
      re::DynamicArray<float>::resize(v344, v6);
      if (v7)
      {
        v216 = 0;
        v20 = *&buf[16];
        v217 = *&buf[32];
        v9 = *&v347[16];
        v218 = *&v349[2];
        v219.i64[1] = -1;
        v219.i64[0] = v8 | 0xFFFFFFFF00000000;
        v220 = vzip1q_s32(v219, v219);
        v220.i32[2] = v8;
        do
        {
          if (v20 == v216)
          {
            goto LABEL_580;
          }

          *(v217 + 16 * v216) = xmmword_1E30A0E80;
          if (v9 == v216)
          {
            goto LABEL_581;
          }

          *(v218 + 16 * v216++) = v220;
        }

        while (v7 != v216);
        if (v215)
        {
          v221 = *&buf[32];
          v222 = v7;
          v223 = v7;
          v10 = *&v347[16];
          v224 = *&v349[2];
          do
          {
            v9 = v223;
            if (v20 <= v223)
            {
              goto LABEL_592;
            }

            *(v221 + 16 * v223) = xmmword_1E30A0E90;
            if (v10 <= v223)
            {
              goto LABEL_593;
            }

            *(v224 + 16 * v223++) = v220;
          }

          while (--v222);
        }
      }

      if (v21)
      {
        v20 = v5;
      }

      else
      {
        v20 = 0;
      }

      if (v20 == 1)
      {
        v225 = 0;
        if (v215)
        {
          v226 = v7;
        }

        else
        {
          v226 = 0;
        }

        v227 = v226 + v7;
        v5 = *(&v315 + 1);
        v228 = v317;
        v7 = *&buf[16];
        while (1)
        {
          if (v225)
          {
            v4 = v225 - 1;
            if (v5 <= v225 - 1)
            {
              goto LABEL_600;
            }

            v229 = *(v228 + 4 * v4);
          }

          else
          {
            v229 = 0;
          }

          if (v225 == v5)
          {
            goto LABEL_594;
          }

          v230 = *(v228 + 4 * v225) - 1;
          if (v229 < v230)
          {
            break;
          }

LABEL_462:
          if (++v225 == v21)
          {
            goto LABEL_463;
          }
        }

        v231 = *&buf[32];
        v9 = *&v347[16];
        v232 = *&v349[2];
        while (1)
        {
          v10 = v227;
          if (v7 <= v227)
          {
            goto LABEL_546;
          }

          *(v231 + 16 * v227) = xmmword_1E30A0EA0;
          v233 = v227 + 1;
          if (v7 <= v233)
          {
            goto LABEL_547;
          }

          *(v231 + 16 * v233) = xmmword_1E30A0EA0;
          if (v9 <= v227)
          {
            goto LABEL_548;
          }

          v234 = (v232 + 16 * v227);
          *v234 = v229;
          v234[1] = v229++;
          v234[2] = v229;
          v234[3] = -1;
          if (v9 <= v233)
          {
            goto LABEL_549;
          }

          v235 = (v232 + 16 * v233);
          *v235 = v229 - 1;
          v235[1] = v229;
          v235[2] = v229;
          v235[3] = -1;
          v227 = v10 + 2;
          if (v229 == v230)
          {
            goto LABEL_462;
          }
        }
      }

LABEL_463:
      if (v6)
      {
        v236 = 0;
        v5 = *&v344[16];
        v237 = *&v346[2];
        while (v5 != v236)
        {
          *(v237 + 4 * v236) = v236;
          if (v6 == ++v236)
          {
            goto LABEL_467;
          }
        }

        goto LABEL_586;
      }

LABEL_467:
      v5 = re::GeomMesh::addFaceVaryingAttribute(v289, "vertexTangent", 7, 3, buf, v344);
      v238 = v8;
      v6 = re::GeomMesh::addFaceVaryingAttribute(v289, "vertexBitangent", 7, v8 + 3, v347, v344);
      v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v5);
      v10 = v239;
      v240 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v6);
      if (v10)
      {
        *v7 = xmmword_1E3047670;
        v8 = &v303;
        v9 = v289;
        if (v10 != 1)
        {
          *(v7 + 16) = xmmword_1E3047690;
          if (v10 > 2)
          {
            v6 = v241;
            v4 = v238;
            *(v7 + 32) = xmmword_1E306DD20;
            if (v241 > v238)
            {
              v242.i32[3] = 0;
              *(v240 + 16 * v238) = xmmword_1E3047680;
              if (v20)
              {
                v20 = 0;
                while (1)
                {
                  v5 = *(&v315 + 1);
                  if (v20)
                  {
                    v4 = v20 - 1;
                    if (*(&v315 + 1) <= v20 - 1)
                    {
                      goto LABEL_601;
                    }

                    v243 = *(v317 + 4 * v4);
                  }

                  else
                  {
                    v243 = 0;
                  }

                  if (*(&v315 + 1) <= v20)
                  {
                    goto LABEL_596;
                  }

                  v244 = *(v317 + 4 * v20);
                  if (v243 < v244)
                  {
                    break;
                  }

LABEL_485:
                  if (++v20 == v21)
                  {
                    goto LABEL_486;
                  }
                }

                v7 = v243;
                if (v243 <= v241)
                {
                  v5 = v241;
                }

                else
                {
                  v5 = v243;
                }

                while (1)
                {
                  v4 = *(&v309 + 1);
                  if (*(&v309 + 1) <= v7)
                  {
                    goto LABEL_550;
                  }

                  if (v5 == v7)
                  {
                    goto LABEL_551;
                  }

                  v242.i64[0] = *(v311 + 8 * v7);
                  v242.i32[2] = 0;
                  v245 = vmulq_f32(v242, v242);
                  *&v246 = v245.f32[2] + vaddv_f32(*v245.f32);
                  *v245.f32 = vrsqrte_f32(v246);
                  *v245.f32 = vmul_f32(*v245.f32, vrsqrts_f32(v246, vmul_f32(*v245.f32, *v245.f32)));
                  v242 = vmulq_n_f32(v242, vmul_f32(*v245.f32, vrsqrts_f32(v246, vmul_f32(*v245.f32, *v245.f32))).f32[0]);
                  *(v240 + 16 * v7++) = v242;
                  if (v244 == v7)
                  {
                    goto LABEL_485;
                  }
                }
              }

LABEL_486:
              if (*v344 && *&v346[2])
              {
                (*(**v344 + 40))();
              }

              if (*v347 && *&v349[2])
              {
                (*(**v347 + 40))();
              }

              if (*buf && *&buf[32])
              {
                (*(**buf + 40))();
              }

              goto LABEL_495;
            }

LABEL_615:
            v284 = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v350 = 136315906;
            *&v350[4] = "operator[]";
            *&v350[12] = 1024;
            *&v350[14] = 621;
            *&v350[18] = 2048;
            *&v350[20] = v4;
            v351 = 2048;
            v352 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_616:
            *v350 = 0;
            v329 = 0u;
            v328 = 0u;
            memset(v327, 0, sizeof(v327));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v344 = 136315906;
            *&v344[4] = "operator[]";
            *&v344[12] = 1024;
            *&v344[14] = 621;
            *&v344[18] = 2048;
            *&v344[20] = v4;
            v345 = 2048;
            *v346 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_614:
          v284 = 0;
          v329 = 0u;
          v328 = 0u;
          memset(v327, 0, sizeof(v327));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v350 = 136315906;
          *&v350[4] = "operator[]";
          *&v350[12] = 1024;
          *&v350[14] = 621;
          *&v350[18] = 2048;
          *&v350[20] = 2;
          v351 = 2048;
          v352 = v10 & 3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_615;
        }

LABEL_613:
        v284 = 0;
        v329 = 0u;
        v328 = 0u;
        memset(v327, 0, sizeof(v327));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v350 = 136315906;
        *&v350[4] = "operator[]";
        *&v350[12] = 1024;
        *&v350[14] = 621;
        *&v350[18] = 2048;
        *&v350[20] = 1;
        v351 = 2048;
        v352 = 1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_614;
      }

LABEL_612:
      v284 = 0;
      v329 = 0u;
      v328 = 0u;
      memset(v327, 0, sizeof(v327));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v350 = 136315906;
      *&v350[4] = "operator[]";
      *&v350[12] = 1024;
      *&v350[14] = 621;
      *&v350[18] = 2048;
      *&v350[20] = 0;
      v351 = 2048;
      v352 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_613;
    }

LABEL_495:
    re::GeomMeshBuilder::appendMesh(&v318, v289);
    re::GeomMesh::~GeomMesh(v289);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v314 + 1))
    {
      if (v317)
      {
        (*(**(&v314 + 1) + 40))();
      }

      v317 = 0;
      v315 = 0uLL;
      *(&v314 + 1) = 0;
      ++v316;
    }

    if (*(&v311 + 1))
    {
      if (v314)
      {
        (*(**(&v311 + 1) + 40))();
      }

      *&v314 = 0;
      v312 = 0uLL;
      *(&v311 + 1) = 0;
      ++v313;
    }

    if (*(&v308 + 1))
    {
      if (v311)
      {
        (*(**(&v308 + 1) + 40))();
      }

      *&v311 = 0;
      v309 = 0uLL;
      *(&v308 + 1) = 0;
      ++v310;
    }

    if (v305[0] && v308)
    {
      (*(*v305[0] + 40))();
    }

    v70 = v259 + 1;
  }

  while (v259 + 1 != v255);
LABEL_513:
  v247 = re::GeomMesh::operator=(a1, &v319);
  re::GeomMesh::setName(v247, v318);
  re::GeomMesh::freeName(&v318);
  re::GeomMesh::freeName(&v318);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v326);
  if (v320 && v325)
  {
    (*(*v320 + 40))();
  }

  v248 = v273;
  if (v273 && v277)
  {
    if (v275)
    {
      v249 = 224 * v275;
      v250 = (v277 + 176);
      do
      {
        re::DynamicArray<unsigned long>::deinit((v250 - 6));
        re::DynamicArray<unsigned long>::deinit((v250 - 11));
        re::DynamicArray<unsigned long>::deinit((v250 - 16));
        v250 += 28;
        v249 -= 224;
      }

      while (v249);
      v248 = v273;
    }

    (*(*v248 + 40))(v248);
  }
}