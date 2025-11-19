void *re::allocInfo_GeomBuildExtrudedTextOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7948, "GeomBuildExtrudedTextOptions");
    __cxa_guard_release(&qword_1EE1B6EF8);
  }

  return &unk_1EE1B7948;
}

void re::initInfo_GeomBuildExtrudedTextOptions(re *this, re::IntrospectionBase *a2)
{
  v54[0] = 0x69AC04806F0E6800;
  v54[1] = "GeomBuildExtrudedTextOptions";
  if (v54[0])
  {
    if (v54[0])
    {
    }
  }

  *(this + 2) = v55;
  if ((atomic_load_explicit(&qword_1EE1B6F00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6F00);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "textString";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B72C0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "fontName";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B72C8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "fontSize";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B72D0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "extrusionDepth";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x4400000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B72D8 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_uint8_t(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "segmentCountPerCurve";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x4800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B72E0 = v25;
      v26 = re::introspectionAllocator(v25);
      v27 = re::introspect_Vector2F(1);
      v28 = (*(*v26 + 32))(v26, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "textFrameOrigin";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x5000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1B72E8 = v28;
      v29 = re::introspectionAllocator(v28);
      v30 = re::introspect_Vector2F(1);
      v31 = (*(*v29 + 32))(v29, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "textFrameSize";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x5800000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1B72F0 = v31;
      v32 = re::introspectionAllocator(v31);
      re::introspect_GeomBuildExtrudedTextLineBreakMode(v32, v33);
      v34 = (*(*v32 + 32))(v32, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "lineBreakMode";
      *(v34 + 16) = &qword_1EE1B7228;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x6000000008;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1B72F8 = v34;
      v35 = re::introspectionAllocator(v34);
      re::introspect_GeomBuildExtrudedTextHorizontalAlignment(v35, v36);
      v37 = (*(*v35 + 32))(v35, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "horizontalAlignment";
      *(v37 + 16) = &qword_1EE1B7198;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x6100000009;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1B7300 = v37;
      v38 = re::introspectionAllocator(v37);
      re::introspect_GeomBuildExtrudedTextVerticalAlignment(v38, v39);
      v40 = (*(*v38 + 32))(v38, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "verticalAlignment";
      *(v40 + 16) = &qword_1EE1B71E0;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x620000000ALL;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1B7308 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_BOOL(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "generateSides";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x630000000BLL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1B7310 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_BOOL(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "generateBack";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x640000000CLL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1B7318 = v48;
      v49 = re::introspectionAllocator(v48);
      v51 = re::introspect_BOOL(1, v50);
      v52 = (*(*v49 + 32))(v49, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "instanceGlyphs";
      *(v52 + 16) = v51;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0x670000000DLL;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE1B7320 = v52;
      __cxa_guard_release(&qword_1EE1B6F00);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1B72C0;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildExtrudedTextOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildExtrudedTextOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildExtrudedTextOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildExtrudedTextOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v53 = v55;
}

double re::internal::defaultConstruct<re::GeomBuildExtrudedTextOptions>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[2] = 0u;
  v3[3] = 0u;
  v3 += 2;
  re::DynamicString::setCapacity(v3, 0);
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 4) = result;
  *(v3 + 40) = 5;
  *(v3 + 6) = 0;
  *(v3 + 7) = 0;
  *(v3 + 64) = 0;
  *(v3 + 65) = 4;
  *(v3 + 67) = 16843009;
  *(v3 + 71) = 0;
  return result;
}

double re::internal::defaultDestruct<re::GeomBuildExtrudedTextOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::GeomBuildExtrudedTextOptions>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  re::DynamicString::setCapacity(v1, 0);
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 4) = result;
  *(v1 + 40) = 5;
  *(v1 + 6) = 0;
  *(v1 + 7) = 0;
  *(v1 + 64) = 0;
  *(v1 + 65) = 4;
  *(v1 + 67) = 16843009;
  *(v1 + 71) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::GeomBuildExtrudedTextOptions>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

uint64_t re::computeManhattanDistanceToVertex(uint64_t a1, unsigned int a2, void *a3, void *a4, uint64_t a5, int16x4_t a6)
{
  v12 = v56;
  v74 = *MEMORY[0x1E69E9840];
  v51 = 2139095040;
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  re::DynamicArray<float>::resize(a5, *(a1 + 16), &v51, a6);
  v13 = a2;
  v14 = *(a5 + 16);
  if (v14 <= a2)
  {
    goto LABEL_122;
  }

  v49 = a5;
  *(*(a5 + 32) + 4 * a2) = 0;
  v15 = *(a1 + 16);
  memset(v56, 0, sizeof(v56));
  v61 = 0;
  *&v58[2] = 0u;
  v59 = 0u;
  v60 = 0;
  if (v15)
  {
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v56, v15);
  }

  v16 = re::DynamicArray<unsigned int>::resize(&v58[10], v15, &re::kInvalidMeshIndex);
  if (*(a1 + 16))
  {
    v14 = 0;
    i = 2139095040;
    v17 = 8;
    while (1)
    {
      v18 = *&v56[16] + 1;
      if (*&v56[16] >= *&v56[8] && *&v56[8] < v18)
      {
        if (*v56)
        {
          if (*&v56[8])
          {
            v25 = 2 * *&v56[8];
          }

          else
          {
            v25 = 8;
          }

          if (v25 <= v18)
          {
            v26 = *&v56[16] + 1;
          }

          else
          {
            v26 = v25;
          }

          v16 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v56, v26);
        }

        else
        {
          v16 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v56, v18);
          ++*&v56[24];
        }
      }

      v20 = (*&v58[2] + 8 * *&v56[16]);
      if (v14 == v13)
      {
        v21 = 0;
      }

      else
      {
        v21 = 2139095040;
      }

      *v20 = v14;
      v20[1] = v21;
      v22 = *&v56[16] + 1;
      ++*&v56[16];
      ++*&v56[24];
      v15 = *(&v59 + 1);
      if (*(&v59 + 1) <= v14)
      {
        goto LABEL_113;
      }

      v23 = v22 - 1;
      *(v61 + 4 * v14) = v22 - 1;
      if (v22 != 1)
      {
        break;
      }

LABEL_20:
      ++v14;
      v12 = v56;
      if (v14 >= *(a1 + 16))
      {
        goto LABEL_31;
      }
    }

    while (1)
    {
      v24 = v23 - 1;
      v15 = (v23 - 1) >> 1;
      v7 = *&v56[16];
      if (*&v56[16] <= v15)
      {
        goto LABEL_101;
      }

      v12 = v23;
      if (*&v56[16] <= v23)
      {
        break;
      }

      if (*(*&v58[2] + 8 * v15 + 4) > *(*&v58[2] + 8 * v23 + 4))
      {
        v23 = v24 >> 1;
        if (v24 > 1)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

LABEL_102:
    v13 = v56;
    *v62 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v53 = 136315906;
    *&v53[4] = "operator[]";
    *&v53[12] = 1024;
    *&v53[14] = 789;
    *&v53[18] = 2048;
    *&v53[20] = v12;
    v54 = 2048;
    *v55 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_103:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v35);
    _os_crash();
    __break(1u);
LABEL_104:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 797;
    v65 = 2048;
    v66 = v13;
    v67 = 2048;
    v68 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_105:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 613;
    v65 = 2048;
    v66 = i;
    v67 = 2048;
    v68 = v50;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_106:
    v52 = 0;
    v31 = v56;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = i;
    v67 = 2048;
    v68 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_107:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = v31;
    v67 = 2048;
    v68 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_108:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = v31;
    v67 = 2048;
    v68 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_109:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = v15;
    v67 = 2048;
    v68 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_110:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = v15;
    v67 = 2048;
    v68 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_111:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = i;
    v67 = 2048;
    v68 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_112:
    v52 = 0;
    v13 = v56;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = i;
    v67 = 2048;
    v68 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_113:
    *(v12 + 10) = 0;
    v12[11] = 0u;
    v12[12] = 0u;
    v12[9] = 0u;
    v12[10] = 0u;
    v12[8] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v53 = 136315906;
    *&v53[4] = "operator[]";
    *&v53[12] = 1024;
    *&v53[14] = 789;
    *&v53[18] = 2048;
    *&v53[20] = v14;
    v54 = 2048;
    *v55 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v34);
    _os_crash();
    __break(1u);
LABEL_115:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v32, v34);
    _os_crash();
    __break(1u);
LABEL_116:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = i;
    v67 = 2048;
    v68 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v7 = v29;
LABEL_118:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = v7;
    v67 = 2048;
    v68 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v52 = 0;
    v30 = v56;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = 0;
    v67 = 2048;
    v68 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v52 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = v30;
    v67 = 2048;
    v68 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_121;
  }

LABEL_31:
  v48 = re::GeomMesh::accessVertexPositions(a1);
  v50 = v27;
  *&v55[2] = 0;
  memset(v53, 0, sizeof(v53));
  v13 = *&v56[16];
  if (!*&v56[16])
  {
    goto LABEL_92;
  }

  v12 = &v69;
  do
  {
    v7 = **&v58[2];
    v28 = *(*&v58[2] + 4);
    if (v13 == 1)
    {
      v29 = **&v58[2];
      *&v56[16] = 0;
      ++*&v56[24];
      v13 = *(&v59 + 1);
      if (*(&v59 + 1) <= v29)
      {
        goto LABEL_117;
      }

      goto LABEL_58;
    }

    i = v13 - 1;
    if (v13 <= i)
    {
      goto LABEL_116;
    }

    **&v58[2] = *(*&v58[2] + 8 * i);
    v17 = *&v56[16];
    if (!*&v56[16])
    {
      goto LABEL_119;
    }

    v15 = *(&v59 + 1);
    v30 = **&v58[2];
    if (*(&v59 + 1) <= v30)
    {
      goto LABEL_120;
    }

    *(v61 + 4 * v30) = 0;
    if (v17 < i)
    {
      if (*&v56[8] < i)
      {
        re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v56, i);
      }

LABEL_43:
      *&v56[16] = i;
      ++*&v56[24];
      v17 = i;
      goto LABEL_44;
    }

    if (v17 > i)
    {
      goto LABEL_43;
    }

LABEL_44:
    v27 = 0;
    for (i = 0; ; v27 = i)
    {
      v31 = (2 * v27) | 1u;
      if (v31 < v17)
      {
        if (v17 <= v31)
        {
          goto LABEL_107;
        }

        v15 = v27;
        if (v17 <= v27)
        {
          goto LABEL_109;
        }

        i = v27;
        if (*(*&v58[2] + 8 * v31 + 4) < *(*&v58[2] + 8 * v27 + 4))
        {
          i = (2 * v27) | 1u;
        }
      }

      v31 = (2 * v27 + 2);
      if (v31 < v17)
      {
        if (v17 <= v31)
        {
          goto LABEL_108;
        }

        v15 = i;
        if (v17 <= i)
        {
          goto LABEL_110;
        }

        if (*(*&v58[2] + 8 * v31 + 4) < *(*&v58[2] + 8 * i + 4))
        {
          i = (2 * v27 + 2);
        }
      }

      if (i == v27)
      {
        break;
      }

      v17 = *&v56[16];
    }

    v13 = *(&v59 + 1);
    v29 = v7;
    if (*(&v59 + 1) <= v7)
    {
      goto LABEL_118;
    }

LABEL_58:
    *(v61 + 4 * v29) = -1;
    *&v53[16] = 0;
    ++*&v53[24];
    if (v7)
    {
      v32 = (v7 - 1);
      v33 = a4;
      v34 = a4[1];
      if (v34 <= v32)
      {
        goto LABEL_115;
      }

      i = *(*a4 + 4 * v32);
    }

    else
    {
      i = 0;
      v33 = a4;
      v34 = a4[1];
    }

    if (v34 <= v7)
    {
      goto LABEL_114;
    }

    v17 = *(*v33 + 4 * v7);
    if (i < v17)
    {
      do
      {
        v35 = a3[1];
        if (v35 <= i)
        {
          goto LABEL_103;
        }

        v13 = *(*a3 + 4 * i);
        v15 = *(a1 + 40);
        if (v15 <= v13)
        {
          goto LABEL_104;
        }

        v36 = 0;
        v37 = *(a1 + 56) + 16 * v13;
        do
        {
          *(&v69 + v36) = *(v37 + v36);
          v36 += 4;
        }

        while (v36 != 16);
        v38 = 0;
        v39 = 3;
        if (HIDWORD(v69) != -1)
        {
          v39 = 4;
        }

        while (*(&v69 + v38) != v7)
        {
          if (v39 == ++v38)
          {
            goto LABEL_74;
          }
        }

        v13 = v39;
        re::DynamicArray<int>::add(v53, &v69 + (v38 + 1) % v39);
        re::DynamicArray<int>::add(v53, &v69 + (v13 + v38 - 1) % v13);
LABEL_74:
        ++i;
      }

      while (i != v17);
      if (*&v53[16])
      {
        if (v7 < v50)
        {
          v15 = *&v55[2];
          v40 = *&v55[2] + 4 * *&v53[16];
          while (1)
          {
            i = *v15;
            if (i >= v50)
            {
              goto LABEL_105;
            }

            v17 = *(v49 + 16);
            if (v17 <= i)
            {
              goto LABEL_106;
            }

            v41 = vsubq_f32(*(v48 + 16 * v7), *(v48 + 16 * i));
            v42 = vmulq_f32(v41, v41);
            v43 = v28 + sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
            v44 = *(v49 + 32);
            if (v43 < *(v44 + 4 * i))
            {
              *(v44 + 4 * i) = v43;
              v17 = *(&v59 + 1);
              if (*(&v59 + 1) <= i)
              {
                goto LABEL_111;
              }

              i = *(v61 + 4 * i);
              v17 = *&v56[16];
              if (*&v56[16] <= i)
              {
                goto LABEL_112;
              }

              *(*&v58[2] + 8 * i + 4) = v43;
              if (i)
              {
                break;
              }
            }

LABEL_87:
            v15 += 4;
            if (v15 == v40)
            {
              goto LABEL_88;
            }
          }

          while (1)
          {
            v14 = (i - 1);
            v17 = v14 >> 1;
            v45 = *&v56[16];
            if (*&v56[16] <= v17)
            {
              break;
            }

            if (*(*&v58[2] + 8 * v17 + 4) > v43)
            {
              i = v14 >> 1;
              if (v14 > 1)
              {
                continue;
              }
            }

            goto LABEL_87;
          }

          v52 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v62 = 136315906;
          *&v62[4] = "operator[]";
          v63 = 1024;
          v64 = 789;
          v65 = 2048;
          v66 = v14 >> 1;
          v67 = 2048;
          v68 = v45;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_101:
          *v62 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v53 = 136315906;
          *&v53[4] = "operator[]";
          *&v53[12] = 1024;
          *&v53[14] = 789;
          *&v53[18] = 2048;
          *&v53[20] = v15;
          v54 = 2048;
          *v55 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_102;
        }

LABEL_121:
        v52 = 0;
        v13 = v56;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v62 = 136315906;
        *&v62[4] = "operator[]";
        v63 = 1024;
        v64 = 613;
        v65 = 2048;
        v66 = v7;
        v67 = 2048;
        v68 = v50;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_122:
        *v53 = 0;
        v12[11] = 0u;
        v12[12] = 0u;
        v12[9] = 0u;
        v12[10] = 0u;
        v12[8] = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v56 = 136315906;
        *&v56[4] = "operator[]";
        *&v56[12] = 1024;
        *&v56[14] = 789;
        *&v56[18] = 2048;
        *&v56[20] = v13;
        v57 = 2048;
        *v58 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

LABEL_88:
    v13 = *&v56[16];
  }

  while (*&v56[16]);
  if (*v53 && *&v55[2])
  {
    (*(**v53 + 40))();
  }

LABEL_92:
  if (*&v58[10])
  {
    if (v61)
    {
      (*(**&v58[10] + 40))();
    }

    v61 = 0;
    v59 = 0uLL;
    *&v58[10] = 0;
    ++v60;
  }

  result = *v56;
  if (*v56)
  {
    if (*&v58[2])
    {
      return (*(**v56 + 40))();
    }
  }

  return result;
}

void *re::anonymous namespace::PriorityQueue::swap(void *this, unsigned int a2, unsigned int a3)
{
  v3 = this[2];
  if (v3 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= a3)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v4 = this[4];
  v5 = *(v4 + 8 * a2);
  *(v4 + 8 * a2) = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = v5;
  v6 = this[2];
  if (v6 <= a2)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v7 = this[4];
  v8 = *(v7 + 8 * a2);
  v9 = this[7];
  if (v9 <= v8)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v10 = this[9];
  *(v10 + 4 * v8) = a2;
  if (v6 <= a3)
  {
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(v7 + 8 * a3);
  if (v9 <= v11)
  {
    goto LABEL_13;
  }

  *(v10 + 4 * v11) = a3;
  return this;
}

uint64_t re::mergeVertices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v160 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    return 0;
  }

  v11 = a1;
  v12 = v140;
  if (*a3 == 1)
  {
    v13 = *(a3 + 8);
    v141 = 0;
    memset(v140, 0, 44);
    v14 = re::GeomMesh::accessVertexPositions(v11);
    if (!v15)
    {
      goto LABEL_183;
    }

    re::internal::GeomKDTree<re::Vector3<float>>::build(v140, v11[4], v14);
    v3 = v11[4];
    re::DynamicArray<float>::resize(a2, v3);
    if (v3)
    {
      v16 = 0;
      v17 = *(a2 + 16);
      v18 = *(a2 + 32);
      while (v17 != v16)
      {
        *(v18 + 4 * v16) = v16;
        if (v3 == ++v16)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_173;
    }

LABEL_8:
    v19 = re::GeomMesh::accessVertexPositions(v11);
    v147 = 0;
    v144 = 0;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    if (v3)
    {
      v4 = v19;
      v17 = 0;
      v12 = 0;
      v21 = v13;
      v5 = v20;
      do
      {
        v6 = *(a2 + 16);
        if (v6 <= v17)
        {
          goto LABEL_174;
        }

        if (v17 == *(*(a2 + 32) + 4 * v17))
        {
          if (v17 >= v5)
          {
            goto LABEL_177;
          }

          v144 = 0;
          ++v145;
          if (*&v140[32])
          {
            re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(v140, v141, (v4 + 16 * v17), &v142, v21);
            v6 = v144;
            if (v144)
            {
              v7 = 0;
              v22 = 1;
              do
              {
                v23 = LODWORD(v147[v7]);
                if (v17 != v23)
                {
                  v6 = v144;
                  if (v24)
                  {
                    if (v144 <= v7)
                    {
                      goto LABEL_171;
                    }

                    v7 = LODWORD(v147[v7]);
                    v8 = *(a2 + 16);
                    if (v8 <= v7)
                    {
                      goto LABEL_172;
                    }

                    *(*(a2 + 32) + 4 * v7) = v17;
                    v12 = (v12 + 1);
                  }
                }

                v7 = v22;
                v25 = v6 > v22++;
              }

              while (v25);
            }
          }
        }

        ++v17;
      }

      while (v17 != v3);
      if (v142 && v147)
      {
        (*(*v142 + 40))();
      }
    }

    else
    {
      v12 = 0;
    }

    v66 = *&v140[16];
    if (*&v140[16] && v141)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v26 = *(a3 + 8);
  re::computeAABB(v11, &v133);
  v6 = v11[4];
  v27 = re::DynamicArray<unsigned int>::resize(a2, v6, &re::kInvalidMeshIndex);
  v28 = vsubq_f32(v134, v133);
  v29 = vmulq_f32(v28, v28);
  if ((v29.f32[2] + vaddv_f32(*v29.f32)) <= 0.0)
  {
    if (!v96 && !v114)
    {
      v65 = *(a2 + 16);
      if (v65 >= 1)
      {
        bzero(*(a2 + 32), 4 * v65);
      }

      if (v6)
      {
        v12 = (v6 - 1);
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_129;
    }

    if (!v6)
    {
      v12 = 0;
      goto LABEL_129;
    }

    v67 = 0;
    v17 = *(a2 + 16);
    v68 = *(a2 + 32);
    while (v17 != v67)
    {
      *(v68 + 4 * v67) = v67;
      if (v6 == ++v67)
      {
        v3 = 0;
        v12 = 0;
        v69 = 1;
        while (1)
        {
          v4 = *(a2 + 16);
          if (v4 <= v3)
          {
            goto LABEL_181;
          }

          v70 = v3 + 1;
          if (v3 + 1 < v6 && v3 == *(*(a2 + 32) + 4 * v3))
          {
            v4 = v69;
            do
            {
              {
                v5 = *(a2 + 16);
                if (v5 <= v4)
                {
                  goto LABEL_167;
                }

                *(*(a2 + 32) + 4 * v4) = v3;
                v12 = (v12 + 1);
              }

              ++v4;
            }

            while (v6 != v4);
          }

          ++v69;
          ++v3;
          if (v70 == v6)
          {
            goto LABEL_129;
          }
        }
      }
    }

LABEL_178:
    v142 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *(v12 + 4) = "operator[]";
    *&v140[12] = 1024;
    *(v12 + 14) = 789;
    *&v140[18] = 2048;
    *(v12 + 20) = v17;
    *&v140[28] = 2048;
    *(v12 + 30) = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_179;
  }

  v147 = 0;
  v144 = 0;
  v143 = 0;
  v145 = 0;
  re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&v142, v6);
  ++v145;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v135, 4518, v11[4]);
  v30 = 0;
  *v140 = xmmword_1E30A0F90;
  *&v140[16] = xmmword_1E3047680;
  *&v140[32] = xmmword_1E30A0FA0;
  do
  {
    *(&v155 + v30) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&v140[v30])), xmmword_1E30A0FB0, *&v140[v30], 1), xmmword_1E30A0FC0, *&v140[v30], 2);
    v30 += 16;
  }

  while (v30 != 48);
  v31 = 0;
  v32 = v155;
  v33 = v156;
  v34 = v157;
  *v140 = xmmword_1E30A0FD0;
  *&v140[16] = xmmword_1E30A0FE0;
  *&v140[32] = xmmword_1E30476A0;
  do
  {
    *(&v155 + v31) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v140[v31])), v33, *&v140[v31], 1), v34, *&v140[v31], 2);
    v31 += 16;
  }

  while (v31 != 48);
  v86 = v155;
  v88 = v156;
  v91 = v157;
  v93 = v133;
  v85 = v134;
  v4 = v11[4];
  v35 = re::GeomMesh::accessVertexPositions(v11);
  v3 = v144;
  if (v4)
  {
    v37 = 0;
    v38 = vsubq_f32(v85, v93);
    v39 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, v38.f32[0]), v88, *v38.f32, 1), v91, v38, 2);
    v40 = vmulq_f32(v39, v39);
    *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    *v40.f32 = vrsqrte_f32(v41);
    *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
    v42 = vmulq_n_f32(v39, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
    v17 = v36;
    v43 = v147 + 2;
    while (1)
    {
      if (v3 == v37)
      {
        goto LABEL_175;
      }

      *(v43 - 2) = v37;
      *(v43 - 1) = v37;
      if (v36 == v37)
      {
        break;
      }

      v44 = vmulq_f32(v42, vsubq_f32(*(v35 + v37), v93));
      *v43 = v44.f32[2] + vaddv_f32(*v44.f32);
      v43 += 3;
      if (v4 == ++v37)
      {
        goto LABEL_37;
      }
    }

LABEL_176:
    *v148 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *(v12 + 4) = "operator[]";
    *&v140[12] = 1024;
    *(v12 + 14) = 613;
    *&v140[18] = 2048;
    *(v12 + 20) = v17;
    *&v140[28] = 2048;
    *(v12 + 30) = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v133.i64[0] = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v148 = 136315906;
    *&v148[4] = "operator[]";
    v149 = 1024;
    v150 = 613;
    v151 = 2048;
    v152 = v17;
    v153 = 2048;
    v154 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_178;
  }

LABEL_37:
  v87 = v6;
  v92 = a2;
  if (v3 < 0x100)
  {
    v45 = 126 - 2 * __clz(v3);
    if (v3)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_42;
  }

  v90 = v11;
  v137 = 0;
  v136 = 0;
  v138 = 0;
  *&v140[32] = 0;
  memset(v140, 0, 28);
  v8 = 0;
  v5 = *&v140[32];
  v12 = 12;
  v4 = *&v140[16];
  v95 = *v140;
  do
  {
    v7 = v138;
    v71 = v137;
    v72 = v137 - 1;
    if (v137 >= 1)
    {
      bzero(v138, 4 * v137);
    }

    v73 = 0;
    v6 = v144;
    v74 = v147;
    v75 = 8 * v8;
    v76 = 1;
    do
    {
      if (v6 <= v73)
      {
        v139 = 0;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v155 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v148 = 136315906;
        *&v148[4] = "operator[]";
        v149 = 1024;
        v150 = 789;
        v151 = 2048;
        v152 = v73;
        v153 = 2048;
        v154 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_161:
        v139 = 0;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v155 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v148 = 136315906;
        *&v148[4] = "operator[]";
        v149 = 1024;
        v150 = 468;
        v151 = 2048;
        v152 = v73;
        v153 = 2048;
        v154 = v71;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_162:
        v139 = 0;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v155 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v148 = 136315906;
        *&v148[4] = "operator[]";
        v149 = 1024;
        v150 = 468;
        v151 = 2048;
        v152 = v71;
        v153 = 2048;
        v154 = v71;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_163:
        v139 = 0;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v155 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v148 = 136315906;
        *&v148[4] = "operator[]";
        v149 = 1024;
        v150 = 789;
        v151 = 2048;
        v152 = v73;
        v153 = 2048;
        v154 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_164:
        v139 = 0;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v155 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v148 = 136315906;
        *&v148[4] = "operator[]";
        v149 = 1024;
        v150 = 468;
        v151 = 2048;
        v152 = v73;
        v153 = 2048;
        v154 = v71;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_165:
        v139 = 0;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v155 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v148 = 136315906;
        *&v148[4] = "operator[]";
        v149 = 1024;
        v150 = 789;
        v151 = 2048;
        v152 = v7;
        v153 = 2048;
        v154 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_166:
        v139 = 0;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v155 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v148 = 136315906;
        *&v148[4] = "operator[]";
        v149 = 1024;
        v150 = 468;
        v151 = 2048;
        v152 = v73;
        v153 = 2048;
        v154 = v71;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_167:
        v142 = 0;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v155 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v140 = 136315906;
        *&v140[4] = "operator[]";
        *&v140[12] = 1024;
        *&v140[14] = 789;
        *&v140[18] = 2048;
        *&v140[20] = v4;
        *&v140[28] = 2048;
        *&v140[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_168;
      }

      v73 = (LODWORD(v74[3 * v73 + 2]) >> v75) + 1;
      if (v71 <= v73)
      {
        goto LABEL_161;
      }

      ++*(v7 + 4 * v73);
      v73 = v76;
      v25 = v3 > v76++;
    }

    while (v25);
    for (i = 0; i != 255; ++i)
    {
      if (v72 == i)
      {
        goto LABEL_162;
      }

      *(v7 + 4 * i + 4) += *(v7 + 4 * i);
    }

    v73 = 0;
    v78 = 1;
    do
    {
      if (v6 <= v73)
      {
        goto LABEL_163;
      }

      v79 = &v74[3 * v73];
      v73 = (*(v79 + 2) >> v75);
      if (v71 <= v73)
      {
        goto LABEL_164;
      }

      v7 = *(v7 + 4 * v73);
      if (v4 <= v7)
      {
        goto LABEL_165;
      }

      v80 = v5 + 12 * v7;
      v81 = *v79;
      *(v80 + 8) = v79[2];
      *v80 = v81;
      v71 = v137;
      if (v137 <= v73)
      {
        goto LABEL_166;
      }

      v7 = v138;
      ++*(v138 + v73);
      v73 = v78;
      v25 = v3 > v78++;
    }

    while (v25);
    if (v142)
    {
      a2 = v92;
      v82 = v95;
      if (v95)
      {
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(&v142, v140);
      }

      else
      {
        v144 = 0;
      }

      ++v145;
    }

    else
    {
      a2 = v92;
      v82 = v95;
      if (v95)
      {
        v142 = v95;
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&v142, v4);
        ++v145;
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(&v142, v140);
      }
    }

    v8 = (v8 + 1);
  }

  while (v8 != 4);
  if (v82)
  {
    (*(*v82 + 40))(v82, v5);
  }

  if (v136 && v137)
  {
    (*(*v136 + 40))();
  }

  v11 = v90;
LABEL_42:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v135);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v148, 4520, v11[4]);
  v7 = v11[4];
  v47 = re::GeomMesh::accessVertexPositions(v11);
  if (v7)
  {
    v3 = v47;
    v12 = v48;
    v49 = 0;
    v50 = v26 * v26;
    v51 = v144;
    v89 = v147;
    v8 = (v147 + 5);
    v6 = 1;
    while (1)
    {
      if (v49 == v51)
      {
        goto LABEL_182;
      }

      v52 = &v89[3 * v49];
      v53 = v49 + 1;
      v94 = v53;
      if (*v52 == *(v52 + 1) && v53 < v7)
      {
        break;
      }

LABEL_58:
      ++v6;
      v8 += 12;
      v49 = v94;
      a2 = v92;
      if (v94 == v7)
      {
        goto LABEL_59;
      }
    }

    v55 = v8;
    v17 = v6;
    while (v51 != v17)
    {
      if (((*v55 - v52[2]) * (*v55 - v52[2])) > v50)
      {
        goto LABEL_58;
      }

      v4 = *v52;
      if (v4 >= v12)
      {
        goto LABEL_169;
      }

      v5 = *(v55 - 2);
      if (v5 >= v12)
      {
        goto LABEL_170;
      }

      v56 = vsubq_f32(*(v3 + 16 * v4), *(v3 + 16 * v5));
      v57 = vmulq_f32(v56, v56);
      if ((v57.f32[2] + vaddv_f32(*v57.f32)) <= v50)
      {
        v5 = v51;
        v51 = v5;
        if (v58)
        {
          *(v55 - 1) = v4;
        }
      }

      ++v17;
      v55 += 3;
      if (v7 == v17)
      {
        goto LABEL_58;
      }
    }

LABEL_168:
    v136 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    v17 = v51;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 789;
    *&v140[18] = 2048;
    *&v140[20] = v17;
    *&v140[28] = 2048;
    *&v140[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v136 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 613;
    *&v140[18] = 2048;
    *&v140[20] = v4;
    *&v140[28] = 2048;
    *&v140[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_170:
    v136 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 613;
    *&v140[18] = 2048;
    *&v140[20] = v5;
    *&v140[28] = 2048;
    *&v140[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_171:
    v133.i64[0] = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v148 = 136315906;
    *&v148[4] = "operator[]";
    v149 = 1024;
    v150 = 789;
    v151 = 2048;
    v152 = v7;
    v153 = 2048;
    v154 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_172:
    v133.i64[0] = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v148 = 136315906;
    *&v148[4] = "operator[]";
    v149 = 1024;
    v150 = 789;
    v151 = 2048;
    v152 = v7;
    v153 = 2048;
    v154 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_173:
    *v148 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v142) = 136315906;
    *(v12 + 68) = "operator[]";
    WORD2(v143) = 1024;
    *(v12 + 78) = 789;
    WORD1(v144) = 2048;
    *(v12 + 84) = v17;
    v146 = 2048;
    *(v12 + 94) = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_174:
    v133.i64[0] = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v148 = 136315906;
    *&v148[4] = "operator[]";
    v149 = 1024;
    v150 = 789;
    v151 = 2048;
    v152 = v17;
    v153 = 2048;
    v154 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_175:
    *v148 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *(v12 + 4) = "operator[]";
    *&v140[12] = 1024;
    *(v12 + 14) = 789;
    *&v140[18] = 2048;
    *(v12 + 20) = v3;
    *&v140[28] = 2048;
    *(v12 + 30) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_176;
  }

LABEL_59:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v148);
  v59 = v87;
  if (v87)
  {
    v12 = 0;
    v17 = v144;
    v3 = *(a2 + 16);
    v60 = *(a2 + 32);
    v61 = v147 + 1;
    v62 = v144;
    while (v62)
    {
      v4 = *(v61 - 1);
      if (v3 <= v4)
      {
        goto LABEL_180;
      }

      v64 = *v61;
      v61 += 3;
      v63 = v64;
      if (v4 == v64)
      {
        v12 = v12;
      }

      else
      {
        v12 = (v12 + 1);
      }

      *(v60 + 4 * v4) = v63;
      --v62;
      if (!--v59)
      {
        goto LABEL_126;
      }
    }

LABEL_179:
    *v148 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 789;
    *&v140[18] = 2048;
    *&v140[20] = v17;
    *&v140[28] = 2048;
    *&v140[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_180:
    *v148 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 789;
    *&v140[18] = 2048;
    *&v140[20] = v4;
    *&v140[28] = 2048;
    *&v140[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v142 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 789;
    *&v140[18] = 2048;
    *&v140[20] = v3;
    *&v140[28] = 2048;
    *&v140[30] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_182:
    v136 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    v84 = v51;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 789;
    *&v140[18] = 2048;
    *&v140[20] = v84;
    *&v140[28] = 2048;
    *&v140[30] = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_183:
    *v148 = 0;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v142) = 136315906;
    *(v12 + 68) = "operator[]";
    WORD2(v143) = 1024;
    *(v12 + 78) = 613;
    WORD1(v144) = 2048;
    *(v12 + 84) = 0;
    v146 = 2048;
    *(v12 + 94) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = 0;
LABEL_126:
  v66 = v142;
  if (v142 && v147)
  {
LABEL_128:
    (*(*v66 + 40))(v66);
  }

LABEL_129:
  if (v109)
  {
    if (v113)
    {
      (*(*v109 + 40))();
    }

    v113 = 0;
    v110 = 0;
    v111 = 0;
    v109 = 0;
    ++v112;
  }

  if (v104)
  {
    if (v108)
    {
      (*(*v104 + 40))();
    }

    v108 = 0;
    v105 = 0;
    v106 = 0;
    v104 = 0;
    ++v107;
  }

  if (v99)
  {
    if (v103)
    {
      (*(*v99 + 40))();
    }

    v103 = 0;
    v100 = 0;
    v101 = 0;
    v99 = 0;
    ++v102;
  }

  if (v97 && v98)
  {
    (*(*v97 + 40))();
  }

  if (v128)
  {
    if (v132)
    {
      (*(*v128 + 40))();
    }

    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    ++v131;
  }

  if (v123)
  {
    if (v127)
    {
      (*(*v123 + 40))();
    }

    v127 = 0;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    ++v126;
  }

  if (v118)
  {
    if (v122)
    {
      (*(*v118 + 40))();
    }

    v122 = 0;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    ++v121;
  }

  if (v116 && v117)
  {
    (*(*v116 + 40))();
  }

  return v12;
}

uint64_t re::anonymous namespace::CompareAttributes::CompareAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *a1 = 0x101010100000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  *(a1 + 136) = 0;
  v8 = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 200) = 0;
  v9 = a1 + 200;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = -1;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = -1;
  *(a1 + 264) = 0;
  if (*(a3 + 1) != 1)
  {
    goto LABEL_45;
  }

  v10 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "vertexUV");
  if (!v10)
  {
    goto LABEL_45;
  }

  v12 = v10;
  v13 = *(v10 + 16);
  if ((v13 & 0xFFFFFFFD) != 1)
  {
    goto LABEL_45;
  }

  *(a1 + 4) = 0;
  ++*a1;
  if (v13 == 1)
  {
    *(a1 + 48) = re::accessVertexUVs(a2, v11);
    *(a1 + 56) = v14;
    *(a1 + 64) = *(a3 + 12) * *(a3 + 12);
    goto LABEL_45;
  }

  v44 = v7;
  v45 = v8;
  v15 = &v58;
  v46 = *(a2 + 16);
  v16 = v46;
  *(a1 + 24) = 0;
  ++*(a1 + 32);
  re::DynamicArray<unsigned int>::resize(v6, v16, &v46);
  if ((*(*v12 + 16))(v12))
  {
    if (!*(v12 + 40))
    {
      goto LABEL_69;
    }

    (*(*v12 + 16))(v12);
  }

  v15 = *(a2 + 40);
  if (!v15)
  {
LABEL_44:
    v7 = v44;
    v8 = v45;
LABEL_45:
    if (*(a3 + 2) == 1)
    {
      v33 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "vertexNormal");
      if (v33)
      {
        v34 = *(v33 + 16);
        if ((v34 & 0xFFFFFFFD) == 1)
        {
          *(a1 + 5) = 0;
          ++*a1;
          if (v34 == 1)
          {
            *(a1 + 120) = v35;
            *(a1 + 128) = cosf(*(a3 + 16));
          }

          else
          {
          }
        }
      }
    }

    if (*(a3 + 3) == 1)
    {
      v36 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "vertexTangent");
      if (v36)
      {
        v37 = *(v36 + 16);
        if ((v37 & 0xFFFFFFFD) == 1)
        {
          *(a1 + 6) = 0;
          ++*a1;
          if (v37 == 1)
          {
            *(a1 + 184) = v38;
            *(a1 + 192) = *(a3 + 20) * *(a3 + 20);
          }

          else
          {
          }
        }
      }
    }

    if (*(a3 + 4) == 1)
    {
      v39 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "vertexBitangent");
      if (v39)
      {
        v40 = *(v39 + 16);
        if ((v40 & 0xFFFFFFFD) == 1)
        {
          *(a1 + 7) = 0;
          ++*a1;
          if (v40 == 1)
          {
            *(a1 + 248) = v41;
            *(a1 + 256) = *(a3 + 24) * *(a3 + 24);
          }

          else
          {
          }
        }
      }
    }

    v42 = *(a3 + 32);
    if (v42)
    {
      *(a1 + 264) = v42;
    }

    return a1;
  }

  v18 = 0;
  while (1)
  {
    LODWORD(v58) = v18;
    v19 = *(v12 + 204);
    if (v19 == 2)
    {
      break;
    }

    if (v19 == 1)
    {
      if (*(v12 + 224) > v18)
      {
        v20 = (*(v12 + 240) + 4 * v18);
        goto LABEL_20;
      }
    }

    else
    {
      if (*(v12 + 204))
      {
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
        _os_crash();
        __break(1u);
        goto LABEL_71;
      }

      if (v18 < *(v12 + 208))
      {
        goto LABEL_22;
      }
    }

LABEL_43:
    ++v18;
    v15 = *(a2 + 40);
    if (v18 >= v15)
    {
      goto LABEL_44;
    }
  }

  v21 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v12 + 208), &v58);
  if (v21 == -1)
  {
    goto LABEL_43;
  }

  v20 = (*(v12 + 216) + 8 * v21 + 4);
LABEL_20:
  if (*v20 == -1)
  {
    goto LABEL_43;
  }

  v15 = *(a2 + 40);
LABEL_22:
  *&v48 = -1;
  *(&v48 + 1) = -1;
  if (v15 <= v18)
  {
    goto LABEL_67;
  }

  v15 = v18;
  v49 = *(*(a2 + 56) + 16 * v18);
  v22 = HIDWORD(v49);
  LODWORD(v58) = v18;
  v23 = *(v12 + 204);
  if (v23 == 2)
  {
    v25 = HIDWORD(v49);
    v26 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v12 + 208), &v58);
    v22 = v25;
    if (v26 == -1)
    {
      goto LABEL_35;
    }

    v24 = (*(v12 + 216) + 8 * v26 + 4);
LABEL_32:
    v15 = *v24;
    if (v15 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (v23 == 1)
  {
    if (*(v12 + 224) <= v18)
    {
      goto LABEL_35;
    }

    v24 = (*(v12 + 240) + 4 * v18);
    goto LABEL_32;
  }

  if (!*(v12 + 204))
  {
    if (v18 >= *(v12 + 208))
    {
      goto LABEL_35;
    }

LABEL_33:
    v7 = *(v12 + 88);
    if (v7 <= v15)
    {
      goto LABEL_68;
    }

    v48 = *(*(v12 + 104) + 16 * v15);
LABEL_35:
    v27 = 0;
    v15 = *(a1 + 24);
    v28 = *(a1 + 40);
    v29 = v22 == -1;
    v30 = 3;
    if (!v29)
    {
      v30 = 4;
    }

    while (2)
    {
      v7 = *(&v49 + v27);
      if (v15 <= v7)
      {
        v47 = 0;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v50 = 136315906;
        v51 = "operator[]";
        v52 = 1024;
        v53 = 789;
        v54 = 2048;
        v55 = v7;
        v56 = 2048;
        v57 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_67:
        *&v49 = 0;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v50 = 136315906;
        v51 = "operator[]";
        v52 = 1024;
        v53 = 797;
        v54 = 2048;
        v55 = v18;
        v56 = 2048;
        v57 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_68:
        v47 = 0;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v50 = 136315906;
        v51 = "operator[]";
        v52 = 1024;
        v53 = 797;
        v54 = 2048;
        v55 = v15;
        v56 = 2048;
        v57 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_69:
        *&v49 = 0;
        *(v15 + 48) = 0u;
        *(v15 + 64) = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v50 = 136315906;
        v51 = "operator[]";
        v52 = 1024;
        v53 = 797;
        v54 = 2048;
        v55 = 0;
        v56 = 2048;
        v57 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v31 = *(&v48 + v27);
      v32 = *(v28 + 4 * v7);
      if (v32 == v46)
      {
LABEL_41:
        *(v28 + 4 * v7) = v31;
      }

      else if (v32 != v31)
      {
        v31 = -1;
        goto LABEL_41;
      }

      if (v30 == ++v27)
      {
        goto LABEL_43;
      }

      continue;
    }
  }

LABEL_71:
  re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  result = _os_crash();
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::mergeVertices(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v81;
  v91 = *MEMORY[0x1E69E9840];
  v9 = (a1 + 16);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v67, 4516, *(a1 + 16));
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v10 = re::mergeVertices(a1, a3, a4);
  v11 = v10;
  if (v10)
  {
    v55 = v10;
    v53 = *a1;
    v54 = a2;
    if (*a1)
    {
      v12 = *a1;
    }

    else
    {
      v12 = "";
    }

    v8 = *(a1 + 16);
    v63 = 0;
    v60[1] = 0;
    v61 = 0;
    v59 = 0;
    v60[0] = 0;
    v62 = 0;
    v56[1] = 0;
    v57 = 0;
    v56[0] = 0;
    v58 = 0;
    re::DynamicArray<float>::resize(v60, v8);
    v13 = re::DynamicArray<unsigned int>::resize(v56, v8, &re::kInvalidMeshIndex);
    if (v8)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(a3 + 16);
      v17 = *(a3 + 32);
      v18 = v57;
      v19 = v59;
      v20 = v61;
      v21 = v63;
      while (1)
      {
        if (v16 == v14)
        {
          goto LABEL_66;
        }

        a2 = *(v17 + 4 * v14);
        if (v18 <= a2)
        {
          break;
        }

        v22 = *(v19 + 4 * a2);
        if (v22 == -1)
        {
          *(v19 + 4 * a2) = v15;
          v22 = v15++;
        }

        *(v17 + 4 * v14) = v22;
        if (v20 == v14)
        {
          goto LABEL_68;
        }

        *(v21 + 4 * v14) = v14;
        if (v8 == ++v14)
        {
          goto LABEL_20;
        }
      }

LABEL_67:
      *v81 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88[0] = 136315906;
      *&v88[1] = "operator[]";
      LOWORD(v88[3]) = 1024;
      *(&v88[3] + 2) = 789;
      HIWORD(v88[4]) = 2048;
      *&v88[5] = a2;
      LOWORD(v88[7]) = 2048;
      *(&v88[7] + 2) = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_68:
      *v81 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88[0] = 136315906;
      *&v88[1] = "operator[]";
      LOWORD(v88[3]) = 1024;
      *(&v88[3] + 2) = 789;
      HIWORD(v88[4]) = 2048;
      *&v88[5] = v20;
      LOWORD(v88[7]) = 2048;
      *(&v88[7] + 2) = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_69:
      *&v69 = 0;
      v89 = 0u;
      v90 = 0u;
      memset(v88, 0, sizeof(v88));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v81 = 136315906;
      *&v81[4] = "operator[]";
      v82 = 1024;
      v83 = 797;
      v84 = 2048;
      v85 = a2;
      v86 = 2048;
      v87 = a2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_70:
      v68 = 0;
      v25 = v81;
      v89 = 0u;
      v90 = 0u;
      memset(v88, 0, sizeof(v88));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v81 = 136315906;
      *&v81[4] = "operator[]";
      v82 = 1024;
      v83 = 789;
      v84 = 2048;
      v85 = v18;
      v86 = 2048;
      v87 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_71;
    }

    v15 = 0;
LABEL_20:
    LODWORD(v70) = 0;
    *(&v72 + 1) = 0;
    v71 = 0uLL;
    LODWORD(v72) = 0;
    re::DynamicArray<re::BlendNode>::setCapacity(&v70 + 1, 1uLL);
    LODWORD(v72) = v72 + 1;
    re::internal::GeomAttributeManager::GeomAttributeManager(&v73);
    LODWORD(v70) = v15;
    v75 = v15;
    if (v76)
    {
      v27 = v77;
      v28 = 8 * v76;
      do
      {
        v29 = *v27++;
        (*(*v29 + 80))(v29, v75);
        v28 -= 8;
      }

      while (v28);
    }

    if (*(a1 + 640))
    {
      for (i = 0; i < *(a1 + 640); ++i)
      {
        v31 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 64), i);
        if (*(v31 + 16) == 1)
        {
          v32 = v31;
          v33 = re::internal::GeomAttributeManager::addAttribute(&v73, *(v31 + 8), 1, *(v31 + 17));
          if (!v61)
          {
            goto LABEL_72;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_73;
          }

          (*(*v32 + 40))(v32, v33, v8, v63, *(a3 + 32));
        }
      }
    }

    v34 = *(a1 + 40);
    v8 = v34;
    re::DynamicArray<re::GeomCell4>::resize(&v70 + 1, v34);
    v78 = v34;
    if (v79)
    {
      v35 = v80;
      v36 = 8 * v79;
      do
      {
        v37 = *v35++;
        (*(*v37 + 80))(v37, v78);
        v36 -= 8;
      }

      while (v36);
    }

    if (v34)
    {
      v38 = 0;
      a2 = *(a1 + 40);
      v39 = *(a1 + 56);
      v40 = *(a3 + 16);
      v18 = *(&v71 + 1);
      v41 = *(&v72 + 1);
      do
      {
        if (v38 == a2)
        {
          goto LABEL_69;
        }

        v42 = 0;
        v69 = *(v39 + 16 * v38);
        v43 = HIDWORD(v69);
        if (HIDWORD(v69) == -1)
        {
          v44 = 3;
        }

        else
        {
          v44 = 4;
        }

        v45 = *(a3 + 32);
        do
        {
          v20 = *(&v69 + v42);
          if (v40 <= v20)
          {
            v68 = 0;
            v16 = v81;
            v89 = 0u;
            v90 = 0u;
            memset(v88, 0, sizeof(v88));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v81 = 136315906;
            *&v81[4] = "operator[]";
            v82 = 1024;
            v83 = 789;
            v84 = 2048;
            v85 = v20;
            v86 = 2048;
            v87 = v40;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_66:
            *v81 = 0;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v70 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v88[0] = 136315906;
            *&v88[1] = "operator[]";
            LOWORD(v88[3]) = 1024;
            *(&v88[3] + 2) = 789;
            HIWORD(v88[4]) = 2048;
            *&v88[5] = v16;
            LOWORD(v88[7]) = 2048;
            *(&v88[7] + 2) = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_67;
          }

          *(&v69 + v42++) = *(v45 + 4 * v20);
        }

        while (v44 != v42);
        if (v38 == v18)
        {
          goto LABEL_70;
        }

        v46 = v43 == -1;
        v48 = DWORD2(v69);
        v47 = HIDWORD(v69);
        if (v46)
        {
          v47 = -1;
        }

        v49 = v41 + 16 * v38;
        *v49 = v69;
        *(v49 + 8) = v48;
        *(v49 + 12) = v47;
        v38 = (v38 + 1);
      }

      while (v38 != v34);
    }

    re::internal::addAndCopyAttributeValues(v9, &v70, 0);
    re::internal::addAndCopyAttributeValues(v9, &v70, 2);
    re::internal::addAndCopyAttributeValues(v9, &v70, 3);
    re::internal::addAndCopyAttributeValues(v9, &v70, 4);
    v50 = re::GeomMesh::operator=(v54, &v70);
    if (v53)
    {
      if (v65)
      {
        v51 = *&v66[7];
      }

      else
      {
        v51 = v66;
      }

      re::GeomMesh::setName(v50, v51);
    }

    re::internal::GeomAttributeManager::~GeomAttributeManager(&v73);
    v11 = v55;
    if (*(&v70 + 1) && *(&v72 + 1))
    {
      (*(**(&v70 + 1) + 40))();
    }

    if (v56[0] && v59)
    {
      (*(*v56[0] + 40))();
    }

    if (v60[0] && v63)
    {
      (*(*v60[0] + 40))();
    }

    if (v64 && (v65 & 1) != 0)
    {
      (*(*v64 + 40))();
    }
  }

  else
  {
    v23 = *v9;
    re::DynamicArray<float>::resize(a3, v23);
    if (v23)
    {
      v24 = 0;
      v25 = *(a3 + 16);
      v26 = *(a3 + 32);
      while (v25 != v24)
      {
        *(v26 + 4 * v24) = v24;
        if (v23 == ++v24)
        {
          goto LABEL_18;
        }
      }

LABEL_71:
      v60[0] = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88[0] = 136315906;
      *(v8 + 52) = "operator[]";
      LOWORD(v88[3]) = 1024;
      *(v8 + 62) = 789;
      HIWORD(v88[4]) = 2048;
      *(v8 + 68) = v25;
      LOWORD(v88[7]) = 2048;
      *(v8 + 78) = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_72:
      *&v69 = 0;
      v89 = 0u;
      v90 = 0u;
      memset(v88, 0, sizeof(v88));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v81 = 136315906;
      *&v81[4] = "operator[]";
      v82 = 1024;
      v83 = 789;
      v84 = 2048;
      v85 = 0;
      v86 = 2048;
      v87 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_73:
      *&v69 = 0;
      v89 = 0u;
      v90 = 0u;
      memset(v88, 0, sizeof(v88));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v81 = 136315906;
      *&v81[4] = "operator[]";
      v82 = 1024;
      v83 = 789;
      v84 = 2048;
      v85 = 0;
      v86 = 2048;
      v87 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_18:
    re::GeomMesh::copy(a1, a2);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v67);
  return v11;
}

uint64_t re::mergeVertices(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  v28 = 0;
  v7 = *(a1 + 16);
  v8 = re::mergeVertices(a1, a2, v26, a4);
  if (v8)
  {
    v25 = 0;
    v22[1] = 0;
    v23 = 0;
    v22[0] = 0;
    v24 = 0;
    re::DynamicArray<unsigned int>::resize(v22, *(a2 + 16), &re::kInvalidMeshIndex);
    if (v7)
    {
      v9 = 0;
      v10 = &v39;
      v11 = v27;
      v12 = v29;
      v13 = v23;
      v14 = v25;
      do
      {
        if (v11 == v9)
        {
          v30 = 0;
          v41 = 0u;
          v42 = 0u;
          memset(v40, 0, sizeof(v40));
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v31 = 136315906;
          v32 = "operator[]";
          v33 = 1024;
          v34 = 789;
          v35 = 2048;
          v36 = v11;
          v37 = 2048;
          v38 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_31:
          v30 = 0;
          v10[3] = 0u;
          v10[4] = 0u;
          v10[1] = 0u;
          v10[2] = 0u;
          *v10 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v31 = 136315906;
          v32 = "operator[]";
          v33 = 1024;
          v34 = 789;
          v35 = 2048;
          v36 = v4;
          v37 = 2048;
          v38 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v4 = *(v12 + 4 * v9);
        if (v13 <= v4)
        {
          goto LABEL_31;
        }

        *(v14 + 4 * v4) = v9++;
      }

      while (v7 != v9);
    }

    re::GeomIndexMap::GeomIndexMap(&v39, v22);
    re::GeomIndexMap::operator=(a3, &v39);
    if (!BYTE12(v39))
    {
LABEL_22:
      v20 = v22[0];
      if (!v22[0] || !v25)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (BYTE12(v39) == 2)
    {
      v16.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v40);
      goto LABEL_22;
    }

    if (BYTE12(v39) == 1)
    {
      if (v40[0] && v41)
      {
        (*(*v40[0] + 40))();
      }

      goto LABEL_22;
    }

    re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_33:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v17 = 0;
  v18 = *(a2 + 16);
  *&v39 = 0xFFFFFFFF00000000;
  DWORD2(v39) = -1;
  BYTE12(v39) = 0;
  if (v18 - 1 <= 0xFFFFFFFD)
  {
    DWORD2(v39) = v18 - 1;
    v17 = v18;
    *&v39 = v18;
  }

  LODWORD(v40[0]) = v17;
  re::GeomIndexMap::operator=(a3, &v39);
  if (!BYTE12(v39))
  {
    goto LABEL_26;
  }

  if (BYTE12(v39) == 2)
  {
    v16.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v40);
    goto LABEL_26;
  }

  if (BYTE12(v39) != 1)
  {
    goto LABEL_33;
  }

  v20 = v40[0];
  if (!v40[0] || !v41)
  {
    goto LABEL_26;
  }

LABEL_24:
  (*(*v20 + 40))(v20);
LABEL_26:
  if (v26[0])
  {
    if (v29)
    {
      (*(*v26[0] + 40))(v16);
    }
  }

  return v8;
}

uint64_t re::anonymous namespace::CompareAttributes::buildVertexToAttributeValueIndexMap<re::Vector3<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v34;
  v39 = *MEMORY[0x1E69E9840];
  v22 = *(a1 + 16);
  v7 = v22;
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  re::DynamicArray<unsigned int>::resize(a3, v7, &v22);
  result = (*(*a2 + 16))(a2);
  if (result)
  {
    if (!*(a2 + 40))
    {
      goto LABEL_44;
    }

    result = (*(*a2 + 16))(a2);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = 0;
    v12 = 3;
    while (1)
    {
      LODWORD(v34) = v11;
      v13 = *(a2 + 204);
      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        if (*(a2 + 224) > v11)
        {
          v14 = (*(a2 + 240) + 4 * v11);
          goto LABEL_15;
        }
      }

      else
      {
        if (*(a2 + 204))
        {
          goto LABEL_45;
        }

        if (v11 < *(a2 + 208))
        {
          goto LABEL_17;
        }
      }

LABEL_39:
      ++v11;
      v10 = *(a1 + 40);
      if (v11 >= v10)
      {
        return result;
      }
    }

    result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((a2 + 208), &v34);
    if (result == -1)
    {
      goto LABEL_39;
    }

    v14 = (*(a2 + 216) + 8 * result + 4);
LABEL_15:
    if (*v14 == -1)
    {
      goto LABEL_39;
    }

    v10 = *(a1 + 40);
LABEL_17:
    *&v24 = -1;
    *(&v24 + 1) = -1;
    if (v10 <= v11)
    {
      goto LABEL_42;
    }

    v10 = v11;
    v25 = *(*(a1 + 56) + 16 * v11);
    v6 = HIDWORD(v25);
    LODWORD(v34) = v11;
    v15 = *(a2 + 204);
    if (v15 == 2)
    {
      result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((a2 + 208), &v34);
      if (result == -1)
      {
        goto LABEL_30;
      }

      v16 = (*(a2 + 216) + 8 * result + 4);
    }

    else
    {
      if (v15 != 1)
      {
        if (*(a2 + 204))
        {
          goto LABEL_46;
        }

        if (v11 >= *(a2 + 208))
        {
LABEL_30:
          v17 = 0;
          v10 = *(a3 + 16);
          v18 = *(a3 + 32);
          if (v6 == -1)
          {
            v19 = 3;
          }

          else
          {
            v19 = 4;
          }

          while (1)
          {
            v6 = *(&v25 + v17);
            if (v10 <= v6)
            {
              v23 = 0;
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
              v31 = v6;
              v32 = 2048;
              v33 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_42:
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
              v31 = v11;
              v32 = 2048;
              v33 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_43:
              v23 = 0;
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
              v31 = v10;
              v32 = 2048;
              v33 = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_44:
              *&v25 = 0;
              *(v6 + 48) = 0u;
              *(v6 + 64) = 0u;
              v35 = 0u;
              v36 = 0u;
              v34 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v26 = 136315906;
              v27 = "operator[]";
              v28 = 1024;
              v29 = 797;
              v30 = 2048;
              v31 = 0;
              v32 = 2048;
              v33 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_45:
              re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
              _os_crash();
              __break(1u);
LABEL_46:
              re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
              _os_crash();
              __break(1u);
            }

            v20 = *(&v24 + v17);
            v21 = *(v18 + 4 * v6);
            if (v21 == v22)
            {
              goto LABEL_37;
            }

            if (v21 != v20)
            {
              break;
            }

LABEL_38:
            if (v19 == ++v17)
            {
              goto LABEL_39;
            }
          }

          v20 = -1;
LABEL_37:
          *(v18 + 4 * v6) = v20;
          goto LABEL_38;
        }

LABEL_28:
        v12 = *(a2 + 88);
        if (v12 <= v10)
        {
          goto LABEL_43;
        }

        v24 = *(*(a2 + 104) + 16 * v10);
        v12 = 3;
        goto LABEL_30;
      }

      if (*(a2 + 224) <= v11)
      {
        goto LABEL_30;
      }

      v16 = (*(a2 + 240) + 4 * v11);
    }

    v10 = *v16;
    if (v10 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t re::anonymous namespace::CompareAttributes::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a3;
  v5 = a2;
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4))
  {
    goto LABEL_13;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = a2;
    if (v7 <= a2)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      v28 = 797;
      v29 = 2048;
      v30 = v5;
      v31 = 2048;
      v32 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v3 = a3;
      if (v7 > a3)
      {
        v9 = *(a1 + 40);
        v10 = *(v9 + 4 * a2);
        v11 = *(v9 + 4 * a3);
        if (v10 == -1 || v10 != v11)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 797;
    v29 = 2048;
    v30 = v3;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_36;
  }

  v7 = *(a1 + 56);
  if (v7 <= a2)
  {
LABEL_38:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 613;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  if (v7 <= a3)
  {
LABEL_39:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 613;
    v29 = 2048;
    v30 = v4;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_40;
  }

  v13 = vsub_f32(*(*(a1 + 48) + 8 * a2), *(*(a1 + 48) + 8 * a3));
  if (vaddv_f32(vmul_f32(v13, v13)) > *(a1 + 64))
  {
    return 0;
  }

LABEL_13:
  if (*(a1 + 5))
  {
    goto LABEL_25;
  }

  v7 = *(a1 + 88);
  if (!v7)
  {
    v7 = *(a1 + 120);
    if (v7 <= a2)
    {
LABEL_40:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v4 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      v28 = 613;
      v29 = 2048;
      v30 = v5;
      v31 = 2048;
      v32 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      v28 = 613;
      v29 = 2048;
      v30 = v4;
      v31 = 2048;
      v32 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v7 <= a3)
    {
      goto LABEL_41;
    }

    v19 = vmulq_f32(*(*(a1 + 112) + 16 * a2), *(*(a1 + 112) + 16 * a3));
    if ((v19.f32[2] + vaddv_f32(*v19.f32)) >= *(a1 + 128))
    {
      goto LABEL_25;
    }

    return 0;
  }

  v8 = a2;
  if (v7 <= a2)
  {
LABEL_36:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 797;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_37;
  }

  v3 = a3;
  if (v7 <= a3)
  {
LABEL_37:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 797;
    v29 = 2048;
    v30 = v3;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v14 = *(a1 + 104);
  v15 = *(v14 + 4 * a2);
  v16 = *(v14 + 4 * a3);
  if (v15 == -1 || v15 != v16)
  {
    return 0;
  }

LABEL_25:
  {
    {
      v20 = *(a1 + 264);
      if (v20)
      {
        v21 = *(v20 + 24);
        LODWORD(v33) = v5;
        v25 = v4;
        if (v21)
        {
          return (*(*v21 + 48))(v21, &v33, &v25);
        }

        else
        {
          v22 = std::__throw_bad_function_call[abi:nn200100]();
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL re::anonymous namespace::CompareAttributes::TangentData::compare(re::_anonymous_namespace_::CompareAttributes::TangentData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    v9 = *(this + 12);
    if (v9 > a2)
    {
      if (v9 > a3)
      {
        v10 = vsubq_f32(*(*(this + 5) + 16 * a2), *(*(this + 5) + 16 * a3));
        v11 = vmulq_f32(v10, v10);
        return (v11.f32[2] + vaddv_f32(*v11.f32)) <= *(this + 14);
      }

LABEL_17:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  if (v3 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  if (v3 <= a3)
  {
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(this + 4);
  v5 = *(v4 + 4 * a2);
  v6 = *(v4 + 4 * a3);
  return v5 != -1 && v5 == v6;
}

void re::DynamicArray<re::anonymous namespace::PointProjection>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      v5 = 12 * (a2 - v4);
      if (v5 >= 1)
      {
        bzero((*(a1 + 32) + 12 * v4), 12 * (v5 / 0xCuLL - (v5 > 0xB)) + 12);
      }
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

float *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::PointProjection *,false>(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v11);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v139 = *(a2 - 1);
        v140 = v11[2];
        if (v139 >= v140 && (v139 > v140 || *v8 >= *v11))
        {
          return result;
        }

LABEL_221:
        v269 = *(v11 + 2);
        v246 = *v11;
        v141 = *v8;
        v11[2] = *(a2 - 1);
        *v11 = v141;
        v136 = v246;
        v137 = v269;
LABEL_222:
        *(a2 - 1) = v137;
        *v8 = v136;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
    }

    if (v13 == 5)
    {
      v142 = *(a2 - 1);
      v143 = v11[11];
      if (v142 >= v143 && (v142 > v143 || *v8 >= *(v11 + 9)))
      {
        return result;
      }

      v144 = *(v11 + 9);
      v145 = *(v11 + 11);
      v146 = *(a2 - 1);
      *(v11 + 9) = *v8;
      *(v11 + 11) = v146;
      *(a2 - 1) = v145;
      *v8 = v144;
      v147 = v11[11];
      v148 = v11[8];
      if (v147 >= v148 && (v147 > v148 || *(v11 + 9) >= *(v11 + 6)))
      {
        return result;
      }

      v149 = *(v11 + 8);
      v150 = *(v11 + 3);
      *(v11 + 3) = *(v11 + 9);
      v11[8] = v11[11];
      *(v11 + 9) = v150;
      *(v11 + 11) = v149;
      v151 = v11[8];
      v152 = v11[5];
      if (v151 >= v152 && (v151 > v152 || *(v11 + 6) >= *(v11 + 3)))
      {
        return result;
      }

      v153 = *(v11 + 5);
      v154 = *(v11 + 3);
      *(v11 + 3) = *(v11 + 3);
      v11[5] = v11[8];
      *(v11 + 3) = v154;
      *(v11 + 8) = v153;
      goto LABEL_308;
    }

LABEL_10:
    if (v12 <= 287)
    {
      v155 = v11 + 3;
      v157 = v11 == a2 || v155 == a2;
      if (a4)
      {
        if (v157)
        {
          return result;
        }

        v158 = 0;
        v159 = v11;
        while (2)
        {
          v160 = v159;
          v159 = v155;
          v161 = v160[5];
          v162 = v160[2];
          if (v161 < v162)
          {
            v163 = *v155;
            goto LABEL_238;
          }

          if (v161 <= v162)
          {
            v163 = *v155;
            if (v163 < *v160)
            {
LABEL_238:
              v164 = *(v160 + 4);
              *v159 = *v160;
              v159[2] = v160[2];
              v165 = v11;
              if (v160 != v11)
              {
                v166 = v158;
                while (1)
                {
                  v167 = (v11 + v166);
                  v168 = (v11 + v166 - 12);
                  v169 = *(v11 + v166 - 4);
                  if (v161 >= v169)
                  {
                    if (v161 > v169)
                    {
                      v165 = v160;
                      goto LABEL_250;
                    }

                    if (v163 >= *v168)
                    {
                      break;
                    }
                  }

                  v160 -= 3;
                  *v167 = *v168;
                  v167[2] = *(v11 + v166 - 4);
                  v166 -= 12;
                  if (!v166)
                  {
                    v165 = v11;
                    goto LABEL_250;
                  }
                }

                v165 = (v11 + v166);
              }

LABEL_250:
              *v165 = v163;
              *(v165 + 1) = v164;
              v165[2] = v161;
            }
          }

          v155 = v159 + 3;
          v158 += 12;
          if (v159 + 3 == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v157)
      {
        return result;
      }

      while (2)
      {
        v219 = v7;
        v7 = v155;
        v220 = v219[5];
        v221 = v219[2];
        if (v220 >= v221)
        {
          if (v220 <= v221)
          {
            v222 = *v155;
            if (*v155 < *v219)
            {
              goto LABEL_319;
            }
          }
        }

        else
        {
          v222 = *v155;
LABEL_319:
          v223 = *(v219 + 4);
          do
          {
            do
            {
              v224 = v219;
              *(v219 + 3) = *v219;
              v219[5] = v219[2];
              v219 -= 3;
              v225 = *(v224 - 1);
            }

            while (v220 < v225);
          }

          while (v220 <= v225 && v222 < *v219);
          *v224 = v222;
          *(v224 + 1) = v223;
          v224[2] = v220;
        }

        v155 = v7 + 3;
        if (v7 + 3 == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v170 = (v13 - 2) >> 1;
      v171 = v170;
      do
      {
        v172 = v171;
        if (v170 >= v171)
        {
          v173 = (2 * v171) | 1;
          v174 = &v11[3 * v173];
          if (2 * v172 + 2 < v13)
          {
            v175 = v174[2];
            v176 = v174[5];
            if (v175 < v176 || v175 <= v176 && *v174 < *(v174 + 3))
            {
              v174 += 3;
              v173 = 2 * v172 + 2;
            }
          }

          v177 = &v11[3 * v172];
          v178 = v174[2];
          v179 = v177[2];
          if (v178 >= v179)
          {
            v180 = *v177;
            if (v178 > v179 || *v174 >= v180)
            {
              v181 = *(v177 + 1);
              v182 = *v174;
              v177[2] = v174[2];
              *v177 = v182;
              if (v170 >= v173)
              {
                while (1)
                {
                  v184 = 2 * v173;
                  v173 = (2 * v173) | 1;
                  v183 = &v11[3 * v173];
                  v185 = v184 + 2;
                  if (v185 < v13)
                  {
                    v186 = v183[2];
                    v187 = v183[5];
                    if (v186 < v187 || v186 <= v187 && *v183 < *(v183 + 3))
                    {
                      v183 += 3;
                      v173 = v185;
                    }
                  }

                  v188 = v183[2];
                  if (v188 < v179 || v188 <= v179 && *v183 < v180)
                  {
                    break;
                  }

                  v189 = *v183;
                  v174[2] = v183[2];
                  *v174 = v189;
                  v174 = v183;
                  if (v170 < v173)
                  {
                    goto LABEL_266;
                  }
                }
              }

              v183 = v174;
LABEL_266:
              *v183 = v180;
              *(v183 + 1) = v181;
              v183[2] = v179;
            }
          }
        }

        v171 = v172 - 1;
      }

      while (v172);
      v190 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
      while (2)
      {
        v191 = 0;
        v270 = *(v11 + 2);
        v247 = *v11;
        v192 = v11;
        do
        {
          v193 = v192;
          result = &v192[3 * v191];
          v192 = result + 3;
          v194 = 2 * v191;
          v191 = (2 * v191) | 1;
          v195 = v194 + 2;
          if (v195 < v190)
          {
            v196 = result + 6;
            v197 = result[5];
            v198 = result[8];
            if (v197 < v198 || v197 <= v198 && (result = *v192, result < *v196))
            {
              v192 = v196;
              v191 = v195;
            }
          }

          v199 = *v192;
          v193[2] = v192[2];
          *v193 = v199;
        }

        while (v191 <= ((v190 - 2) >> 1));
        a2 -= 3;
        if (v192 == a2)
        {
          *(v192 + 2) = v270;
          *v192 = v247;
        }

        else
        {
          v200 = *a2;
          v192[2] = a2[2];
          *v192 = v200;
          *(a2 + 2) = v270;
          *a2 = v247;
          v201 = v192 - v11 + 12;
          if (v201 >= 13)
          {
            v202 = -2 - 0x5555555555555555 * (v201 >> 2);
            v203 = v202 >> 1;
            v204 = &v11[3 * (v202 >> 1)];
            v205 = v204[2];
            v206 = v192[2];
            if (v205 < v206)
            {
              v207 = *v192;
              goto LABEL_290;
            }

            if (v205 <= v206)
            {
              v207 = *v192;
              if (*v204 < *v192)
              {
LABEL_290:
                v208 = *(v192 + 1);
                result = *v204;
                v192[2] = v204[2];
                *v192 = result;
                if (v202 >= 2)
                {
                  while (1)
                  {
                    v210 = v203 - 1;
                    v203 = (v203 - 1) >> 1;
                    v209 = &v11[3 * v203];
                    v211 = v209[2];
                    if (v211 >= v206)
                    {
                      if (v211 > v206)
                      {
                        break;
                      }

                      result = *v209;
                      if (result >= v207)
                      {
                        break;
                      }
                    }

                    result = *v209;
                    v204[2] = v209[2];
                    *v204 = result;
                    v204 = &v11[3 * v203];
                    if (v210 <= 1)
                    {
                      goto LABEL_296;
                    }
                  }
                }

                v209 = v204;
LABEL_296:
                *v209 = v207;
                *(v209 + 1) = v208;
                v209[2] = v206;
              }
            }
          }
        }

        if (v190-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v14 = v13 >> 1;
    v15 = &v11[3 * (v13 >> 1)];
    if (v12 >= 0x601)
    {
      v16 = v15[2];
      v17 = v11[2];
      if (v16 < v17 || v16 <= v17 && *v15 < *v11)
      {
        v18 = *(a2 - 1);
        if (v18 < v16 || v18 <= v16 && *v8 < *v15)
        {
          v249 = *(v11 + 2);
          v226 = *v11;
          v19 = *v8;
          v11[2] = *(a2 - 1);
          *v11 = v19;
        }

        else
        {
          v255 = *(v11 + 2);
          v232 = *v11;
          v34 = *v15;
          v11[2] = v15[2];
          *v11 = v34;
          *(v15 + 2) = v255;
          *v15 = v232;
          v35 = *(a2 - 1);
          v36 = v15[2];
          if (v35 >= v36 && (v35 > v36 || *v8 >= *v15))
          {
            goto LABEL_34;
          }

          v249 = *(v15 + 2);
          v226 = *v15;
          v37 = *v8;
          v15[2] = *(a2 - 1);
          *v15 = v37;
        }

        *(a2 - 1) = v249;
        *v8 = v226;
        goto LABEL_34;
      }

      v24 = *(a2 - 1);
      if (v24 < v16 || v24 <= v16 && *v8 < *v15)
      {
        v251 = *(v15 + 2);
        v228 = *v15;
        v25 = *v8;
        v15[2] = *(a2 - 1);
        *v15 = v25;
        *(a2 - 1) = v251;
        *v8 = v228;
        v26 = v15[2];
        v27 = v11[2];
        if (v26 < v27 || v26 <= v27 && *v15 < *v11)
        {
          v252 = *(v11 + 2);
          v229 = *v11;
          v28 = *v15;
          v11[2] = v15[2];
          *v11 = v28;
          *(v15 + 2) = v252;
          *v15 = v229;
        }
      }

LABEL_34:
      v38 = &v11[3 * v14];
      v39 = v38 - 3;
      v40 = *(v38 - 1);
      v41 = v11[5];
      if (v40 < v41 || v40 <= v41 && *v39 < *(v11 + 3))
      {
        v42 = *(a2 - 4);
        if (v42 < v40 || v42 <= v40 && *v9 < *v39)
        {
          v43 = *(v11 + 3);
          v44 = *(v11 + 5);
          v45 = *(a2 - 4);
          *(v11 + 3) = *v9;
          *(v11 + 5) = v45;
        }

        else
        {
          v57 = *(v11 + 3);
          v58 = *(v11 + 5);
          v59 = *(v39 + 2);
          *(v11 + 3) = *v39;
          *(v11 + 5) = v59;
          *(v39 + 2) = v58;
          *v39 = v57;
          v60 = *(a2 - 4);
          v61 = v39[2];
          if (v60 >= v61 && (v60 > v61 || *v9 >= *v39))
          {
            goto LABEL_52;
          }

          v258 = *(v39 + 2);
          v235 = *v39;
          v62 = *v9;
          v39[2] = *(a2 - 4);
          *v39 = v62;
          v43 = v235;
          v44 = v258;
        }

        *(a2 - 4) = v44;
        *v9 = v43;
        goto LABEL_52;
      }

      v46 = *(a2 - 4);
      if (v46 < v40 || v46 <= v40 && *v9 < *v39)
      {
        v256 = *(v38 - 1);
        v233 = *v39;
        v47 = *v9;
        v39[2] = *(a2 - 4);
        *v39 = v47;
        *(a2 - 4) = v256;
        *v9 = v233;
        v48 = v39[2];
        v49 = v11[5];
        if (v48 < v49 || v48 <= v49 && *v39 < *(v11 + 3))
        {
          v50 = *(v11 + 3);
          v51 = *(v11 + 5);
          v52 = *(v39 + 2);
          *(v11 + 3) = *v39;
          *(v11 + 5) = v52;
          *(v39 + 2) = v51;
          *v39 = v50;
        }
      }

LABEL_52:
      v63 = &v11[3 * v14];
      v64 = v63 + 3;
      v65 = v63[5];
      v66 = v11[8];
      if (v65 < v66 || v65 <= v66 && *v64 < *(v11 + 6))
      {
        v67 = *(a2 - 7);
        if (v67 < v65 || v67 <= v65 && *v10 < *v64)
        {
          v68 = *(v11 + 3);
          v69 = *(v11 + 8);
          v70 = *(a2 - 7);
          *(v11 + 3) = *v10;
          *(v11 + 8) = v70;
        }

        else
        {
          v78 = *(v11 + 3);
          v79 = *(v11 + 8);
          v80 = *(v64 + 2);
          *(v11 + 3) = *v64;
          *(v11 + 8) = v80;
          *(v64 + 2) = v79;
          *v64 = v78;
          v81 = *(a2 - 7);
          v82 = v64[2];
          if (v81 >= v82 && (v81 > v82 || *v10 >= *v64))
          {
            goto LABEL_65;
          }

          v260 = *(v64 + 2);
          v237 = *v64;
          v83 = *v10;
          v64[2] = *(a2 - 7);
          *v64 = v83;
          v68 = v237;
          v69 = v260;
        }

        *(a2 - 7) = v69;
        *v10 = v68;
        goto LABEL_65;
      }

      v71 = *(a2 - 7);
      if (v71 < v65 || v71 <= v65 && *v10 < *v64)
      {
        v259 = *(v63 + 5);
        v236 = *v64;
        v72 = *v10;
        v64[2] = *(a2 - 7);
        *v64 = v72;
        *(a2 - 7) = v259;
        *v10 = v236;
        v73 = v64[2];
        v74 = v11[8];
        if (v73 < v74 || v73 <= v74 && *v64 < *(v11 + 6))
        {
          v75 = *(v11 + 3);
          v76 = *(v11 + 8);
          v77 = *(v64 + 2);
          *(v11 + 3) = *v64;
          *(v11 + 8) = v77;
          *(v64 + 2) = v76;
          *v64 = v75;
        }
      }

LABEL_65:
      v84 = v15[2];
      v85 = v39[2];
      if (v84 >= v85 && (v84 > v85 || *v15 >= *v39))
      {
        v87 = v64[2];
        if (v87 < v84 || v87 <= v84 && *v64 < *v15)
        {
          v262 = *(v15 + 2);
          v239 = *v15;
          *v15 = *v64;
          v15[2] = v64[2];
          *(v64 + 2) = v262;
          *v64 = v239;
          v88 = v15[2];
          v89 = v39[2];
          if (v88 < v89 || v88 <= v89 && *v15 < *v39)
          {
            v263 = *(v39 + 2);
            v240 = *v39;
            *v39 = *v15;
            v39[2] = v15[2];
            *(v15 + 2) = v263;
            *v15 = v240;
          }
        }

        goto LABEL_78;
      }

      v86 = v64[2];
      if (v86 < v84 || v86 <= v84 && *v64 < *v15)
      {
        v261 = *(v39 + 2);
        v238 = *v39;
        *v39 = *v64;
        v39[2] = v64[2];
      }

      else
      {
        v264 = *(v39 + 2);
        v241 = *v39;
        *v39 = *v15;
        v39[2] = v15[2];
        *(v15 + 2) = v264;
        *v15 = v241;
        v90 = v64[2];
        v91 = v15[2];
        if (v90 >= v91 && (v90 > v91 || *v64 >= *v15))
        {
          goto LABEL_78;
        }

        v261 = *(v15 + 2);
        v238 = *v15;
        *v15 = *v64;
        v15[2] = v64[2];
      }

      *(v64 + 2) = v261;
      *v64 = v238;
LABEL_78:
      v265 = *(v11 + 2);
      v242 = *v11;
      v92 = *v15;
      v11[2] = v15[2];
      *v11 = v92;
      *(v15 + 2) = v265;
      *v15 = v242;
      goto LABEL_79;
    }

    v20 = v11[2];
    v21 = v15[2];
    if (v20 >= v21 && (v20 > v21 || *v11 >= *v15))
    {
      v29 = *(a2 - 1);
      if (v29 < v20 || v29 <= v20 && *v8 < *v11)
      {
        v253 = *(v11 + 2);
        v230 = *v11;
        v30 = *v8;
        v11[2] = *(a2 - 1);
        *v11 = v30;
        *(a2 - 1) = v253;
        *v8 = v230;
        v31 = v11[2];
        v32 = v15[2];
        if (v31 < v32 || v31 <= v32 && *v11 < *v15)
        {
          v254 = *(v15 + 2);
          v231 = *v15;
          v33 = *v11;
          v15[2] = v11[2];
          *v15 = v33;
          *(v11 + 2) = v254;
          *v11 = v231;
        }
      }

      goto LABEL_79;
    }

    v22 = *(a2 - 1);
    if (v22 < v20 || v22 <= v20 && *v8 < *v11)
    {
      v250 = *(v15 + 2);
      v227 = *v15;
      v23 = *v8;
      v15[2] = *(a2 - 1);
      *v15 = v23;
    }

    else
    {
      v257 = *(v15 + 2);
      v234 = *v15;
      v53 = *v11;
      v15[2] = v11[2];
      *v15 = v53;
      *(v11 + 2) = v257;
      *v11 = v234;
      v54 = *(a2 - 1);
      v55 = v11[2];
      if (v54 >= v55 && (v54 > v55 || *v8 >= *v11))
      {
        goto LABEL_79;
      }

      v250 = *(v11 + 2);
      v227 = *v11;
      v56 = *v8;
      v11[2] = *(a2 - 1);
      *v11 = v56;
    }

    *(a2 - 1) = v250;
    *v8 = v227;
LABEL_79:
    --a3;
    if (a4)
    {
      v93 = *v11;
      v94 = v11[2];
LABEL_84:
      v96 = 0;
      v97 = *(v11 + 1);
      while (1)
      {
        v98 = v11[v96 + 5];
        if (v98 >= v94 && (v98 > v94 || LODWORD(v11[v96 + 3]) >= LODWORD(v93)))
        {
          break;
        }

        v96 += 3;
      }

      v99 = &v11[v96 + 3];
      if (v96 * 4)
      {
        v100 = *(a2 - 1);
        v101 = a2 - 4;
        v102 = (a2 - 3);
        if (v100 >= v94)
        {
          do
          {
            if (v100 <= v94 && *(v101 + 1) < LODWORD(v93))
            {
              break;
            }

            v103 = *v101;
            v101 -= 3;
            v100 = v103;
          }

          while (v103 >= v94);
LABEL_94:
          v102 = (v101 + 1);
        }
      }

      else
      {
        v102 = a2;
        if (v99 < a2)
        {
          v104 = *(a2 - 1);
          v102 = (a2 - 3);
          if (v104 >= v94)
          {
            v101 = a2 - 4;
            v102 = (a2 - 3);
            while (1)
            {
              v113 = v101 + 1;
              if (v104 <= v94)
              {
                if (*v113 < LODWORD(v93) || v99 >= v113)
                {
                  goto LABEL_94;
                }
              }

              else if (v99 >= v113)
              {
                break;
              }

              v102 -= 12;
              v115 = *v101;
              v101 -= 3;
              v104 = v115;
              if (v115 < v94)
              {
                goto LABEL_94;
              }
            }
          }
        }
      }

      v11 = v99;
      if (v99 < v102)
      {
        v105 = v102;
        do
        {
          v266 = *(v11 + 2);
          v243 = *v11;
          v106 = *v105;
          v11[2] = *(v105 + 8);
          *v11 = v106;
          *(v105 + 8) = v266;
          *v105 = v243;
          do
          {
            do
            {
              v11 += 3;
              v107 = v11[2];
            }

            while (v107 < v94);
          }

          while (v107 <= v94 && *v11 < LODWORD(v93));
          v108 = *(v105 - 4);
          if (v108 >= v94)
          {
            v109 = v105 - 16;
            do
            {
              if (v108 <= v94 && *(v109 + 4) < LODWORD(v93))
              {
                break;
              }

              v110 = *v109;
              v109 -= 12;
              v108 = v110;
            }

            while (v110 >= v94);
            v105 = v109 + 4;
          }

          else
          {
            v105 -= 12;
          }
        }

        while (v11 < v105);
      }

      if (v11 - 3 != v7)
      {
        v111 = *(v11 - 3);
        v7[2] = *(v11 - 1);
        *v7 = v111;
      }

      *(v11 - 3) = v93;
      *(v11 - 2) = v97;
      *(v11 - 1) = v94;
      if (v99 < v102)
      {
        goto LABEL_116;
      }

      if (result)
      {
        a2 = v11 - 3;
        if (v112)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v112)
      {
LABEL_116:
        a4 = 0;
      }
    }

    else
    {
      v95 = *(v11 - 1);
      v94 = v11[2];
      v93 = *v11;
      if (v95 < v94 || v95 <= v94 && *(v11 - 3) < LODWORD(v93))
      {
        goto LABEL_84;
      }

      v116 = *(a2 - 1);
      if (v94 < v116 || v94 <= v116 && LODWORD(v93) < *v8)
      {
        v117 = v11[5];
        if (v94 >= v117)
        {
          v119 = v11 + 8;
          do
          {
            if (v94 <= v117 && LODWORD(v93) < *(v119 - 5))
            {
              break;
            }

            v120 = *v119;
            v119 += 3;
            v117 = v120;
          }

          while (v94 >= v120);
          v11 = v119 - 5;
        }

        else
        {
          v11 += 3;
        }
      }

      else
      {
        for (v11 += 3; v11 < a2; v11 += 3)
        {
          v118 = v11[2];
          if (v94 < v118 || v94 <= v118 && LODWORD(v93) < *v11)
          {
            break;
          }
        }
      }

      v121 = *(v7 + 1);
      v122 = a2;
      if (v11 < a2)
      {
        for (i = a2 - 4; v94 < v116 || v94 <= v116 && LODWORD(v93) < *(i + 1); i -= 3)
        {
          v124 = *i;
          v116 = v124;
        }

        v122 = i + 1;
      }

      while (v11 < v122)
      {
        v267 = *(v11 + 2);
        v244 = *v11;
        v125 = *v122;
        v11[2] = v122[2];
        *v11 = v125;
        *(v122 + 2) = v267;
        *v122 = v244;
        v126 = v11[5];
        if (v94 >= v126)
        {
          v127 = v11 + 8;
          do
          {
            if (v94 <= v126 && LODWORD(v93) < *(v127 - 5))
            {
              break;
            }

            v128 = *v127;
            v127 += 3;
            v126 = v128;
          }

          while (v94 >= v128);
          v11 = v127 - 5;
        }

        else
        {
          v11 += 3;
        }

        do
        {
          do
          {
            v122 -= 3;
            v129 = v122[2];
          }

          while (v94 < v129);
        }

        while (v94 <= v129 && LODWORD(v93) < *v122);
      }

      if (v11 - 3 != v7)
      {
        v130 = *(v11 - 3);
        v7[2] = *(v11 - 1);
        *v7 = v130;
      }

      a4 = 0;
      *(v11 - 3) = v93;
      *(v11 - 2) = v121;
      *(v11 - 1) = v94;
    }
  }

  v131 = v11[5];
  v132 = v11[2];
  if (v131 >= v132 && (v131 > v132 || *(v11 + 3) >= *v11))
  {
    v213 = *(a2 - 1);
    if (v213 >= v131 && (v213 > v131 || *v8 >= *(v11 + 3)))
    {
      return result;
    }

    v214 = *(v11 + 3);
    v215 = *(v11 + 5);
    v216 = *(a2 - 1);
    *(v11 + 3) = *v8;
    *(v11 + 5) = v216;
    *(a2 - 1) = v215;
    *v8 = v214;
LABEL_308:
    v217 = v11[5];
    v218 = v11[2];
    if (v217 < v218 || v217 <= v218 && *(v11 + 3) < *v11)
    {
      v271 = *(v11 + 2);
      v248 = *v11;
      *v11 = *(v11 + 3);
      v11[2] = v11[5];
      *(v11 + 3) = v248;
      *(v11 + 5) = v271;
    }

    return result;
  }

  v133 = *(a2 - 1);
  if (v133 < v131 || v133 <= v131 && *v8 < *(v11 + 3))
  {
    goto LABEL_221;
  }

  v268 = *(v11 + 2);
  v245 = *v11;
  *v11 = *(v11 + 3);
  v11[2] = v11[5];
  *(v11 + 3) = v245;
  *(v11 + 5) = v268;
  v134 = *(a2 - 1);
  v135 = v11[5];
  if (v134 < v135 || v134 <= v135 && *v8 < *(v11 + 3))
  {
    v136 = *(v11 + 3);
    v137 = *(v11 + 5);
    v138 = *(a2 - 1);
    *(v11 + 3) = *v8;
    *(v11 + 5) = v138;
    goto LABEL_222;
  }

  return result;
}

float *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::PointProjection *,0>(float *result, float *a2, float *a3, float *a4)
{
  v4 = a2[2];
  v5 = result[2];
  if (v4 < v5 || v4 <= v5 && *a2 < *result)
  {
    v6 = a3[2];
    if (v6 < v4 || v6 <= v4 && *a3 < *a2)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
    }

    else
    {
      v19 = *(result + 2);
      v20 = *result;
      v21 = *(a2 + 2);
      *result = *a2;
      *(result + 2) = v21;
      *a2 = v20;
      *(a2 + 2) = v19;
      v22 = a3[2];
      v23 = a2[2];
      if (v22 >= v23 && (v22 > v23 || *a3 >= *a2))
      {
        goto LABEL_14;
      }

      v7 = *(a2 + 2);
      v8 = *a2;
      v24 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v24;
    }

    *a3 = v8;
    *(a3 + 2) = v7;
  }

  else
  {
    v10 = a3[2];
    if (v10 < v4 || v10 <= v4 && *a3 < *a2)
    {
      v11 = *(a2 + 2);
      v12 = *a2;
      v13 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v13;
      *a3 = v12;
      *(a3 + 2) = v11;
      v14 = a2[2];
      v15 = result[2];
      if (v14 < v15 || v14 <= v15 && *a2 < *result)
      {
        v16 = *(result + 2);
        v17 = *result;
        v18 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v18;
        *a2 = v17;
        *(a2 + 2) = v16;
      }
    }
  }

LABEL_14:
  v25 = a4[2];
  v26 = a3[2];
  if (v25 < v26 || v25 <= v26 && *a4 < *a3)
  {
    v27 = *(a3 + 2);
    v28 = *a3;
    v29 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v29;
    *a4 = v28;
    *(a4 + 2) = v27;
    v30 = a3[2];
    v31 = a2[2];
    if (v30 < v31 || v30 <= v31 && *a3 < *a2)
    {
      v32 = *(a2 + 2);
      v33 = *a2;
      v34 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v34;
      *a3 = v33;
      *(a3 + 2) = v32;
      v35 = a2[2];
      v36 = result[2];
      if (v35 < v36 || v35 <= v36 && *a2 < *result)
      {
        v37 = *(result + 2);
        v38 = *result;
        v39 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v39;
        *a2 = v38;
        *(a2 + 2) = v37;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::PointProjection *>(float *a1, float *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v22 = a1[5];
        v23 = a1[2];
        if (v22 < v23 || v22 <= v23 && *(a1 + 3) < *a1)
        {
          v24 = *(a2 - 1);
          if (v24 >= v22 && (v24 > v22 || *v5 >= *(a1 + 3)))
          {
            v48 = *(a1 + 2);
            v49 = *a1;
            *a1 = *(a1 + 3);
            a1[2] = a1[5];
            *(a1 + 3) = v49;
            *(a1 + 5) = v48;
            v50 = *(a2 - 1);
            v51 = a1[5];
            if (v50 >= v51 && (v50 > v51 || *v5 >= *(a1 + 3)))
            {
              return 1;
            }

            v25 = *(a1 + 5);
            v26 = *(a1 + 3);
            v52 = *(a2 - 1);
            *(a1 + 3) = *v5;
            *(a1 + 5) = v52;
            goto LABEL_18;
          }

LABEL_17:
          v25 = *(a1 + 2);
          v26 = *a1;
          v27 = *(v5 + 2);
          *a1 = *v5;
          *(a1 + 2) = v27;
LABEL_18:
          *v5 = v26;
          *(v5 + 2) = v25;
          return 1;
        }

        v34 = *(a2 - 1);
        if (v34 >= v22 && (v34 > v22 || *v5 >= *(a1 + 3)))
        {
          return 1;
        }

        v35 = *(a1 + 5);
        v36 = *(a1 + 3);
        v37 = *(a2 - 1);
        *(a1 + 3) = *v5;
        *(a1 + 5) = v37;
        *v5 = v36;
        *(a2 - 1) = v35;
        break;
      case 4:
        return 1;
      case 5:
        v8 = a2 - 3;
        v9 = *(a2 - 1);
        v10 = a1[11];
        if (v9 >= v10 && (v9 > v10 || *v8 >= *(a1 + 9)))
        {
          return 1;
        }

        v11 = *(a1 + 11);
        v12 = *(a1 + 9);
        v13 = *(a2 - 1);
        *(a1 + 9) = *v8;
        *(a1 + 11) = v13;
        *v8 = v12;
        *(a2 - 1) = v11;
        v14 = a1[11];
        v15 = a1[8];
        if (v14 >= v15 && (v14 > v15 || *(a1 + 9) >= *(a1 + 6)))
        {
          return 1;
        }

        v16 = *(a1 + 8);
        v17 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v17;
        *(a1 + 11) = v16;
        v18 = a1[8];
        v19 = a1[5];
        if (v18 >= v19 && (v18 > v19 || *(a1 + 6) >= *(a1 + 3)))
        {
          return 1;
        }

        v20 = *(a1 + 5);
        v21 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v21;
        *(a1 + 8) = v20;
        break;
      default:
        goto LABEL_19;
    }

    v38 = a1[5];
    v39 = a1[2];
    if (v38 < v39 || v38 <= v39 && *(a1 + 3) < *a1)
    {
      v40 = *(a1 + 2);
      v41 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v41;
      *(a1 + 5) = v40;
    }

    return 1;
  }

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v5 = a2 - 3;
      v6 = *(a2 - 1);
      v7 = a1[2];
      if (v6 >= v7 && (v6 > v7 || *v5 >= *a1))
      {
        return 1;
      }

      goto LABEL_17;
    }

LABEL_19:
    v28 = (a1 + 6);
    v29 = a1[5];
    v30 = a1[2];
    if (v29 >= v30 && (v29 > v30 || *(a1 + 3) >= *a1))
    {
      v42 = a1[8];
      if (v42 < v29 || v42 <= v29 && *v28 < *(a1 + 3))
      {
        v43 = *(a1 + 5);
        v44 = *(a1 + 3);
        *(a1 + 3) = *v28;
        a1[5] = a1[8];
        *v28 = v44;
        *(a1 + 8) = v43;
        v45 = a1[5];
        if (v45 < v30 || v45 <= v30 && *(a1 + 3) < *a1)
        {
          v46 = *(a1 + 2);
          v47 = *a1;
          *a1 = *(a1 + 3);
          a1[2] = a1[5];
          *(a1 + 3) = v47;
          *(a1 + 5) = v46;
        }
      }

      goto LABEL_46;
    }

    v31 = a1[8];
    if (v31 < v29 || v31 <= v29 && *v28 < *(a1 + 3))
    {
      v32 = *(a1 + 2);
      v33 = *a1;
      *a1 = *v28;
      a1[2] = a1[8];
    }

    else
    {
      v53 = *(a1 + 2);
      v54 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v54;
      *(a1 + 5) = v53;
      v55 = a1[5];
      if (v31 >= v55 && (v31 > v55 || *v28 >= *(a1 + 3)))
      {
        goto LABEL_46;
      }

      v32 = *(a1 + 5);
      v33 = *(a1 + 3);
      *(a1 + 3) = *v28;
      a1[5] = a1[8];
    }

    *v28 = v33;
    *(a1 + 8) = v32;
LABEL_46:
    v56 = a1 + 9;
    if (a1 + 9 == a2)
    {
      return 1;
    }

    v57 = 0;
    v58 = 0;
    do
    {
      v59 = v56[2];
      v60 = *(v28 + 8);
      if (v59 >= v60)
      {
        if (v59 > v60)
        {
          goto LABEL_61;
        }

        v61 = *v56;
        if (*v56 >= *v28)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v61 = *v56;
      }

      v62 = *(v56 + 1);
      *v56 = *v28;
      v56[2] = *(v28 + 8);
      v63 = v57;
      do
      {
        v64 = a1 + v63;
        v65 = *(a1 + v63 + 20);
        if (v59 >= v65)
        {
          if (v59 > v65)
          {
            v28 = a1 + v63 + 24;
            goto LABEL_60;
          }

          if (v61 >= *(v64 + 3))
          {
            goto LABEL_60;
          }
        }

        v28 -= 12;
        *(v64 + 3) = *(v64 + 12);
        *(v64 + 8) = *(v64 + 5);
        v63 -= 12;
      }

      while (v63 != -24);
      v28 = a1;
LABEL_60:
      *v28 = v61;
      *(v28 + 4) = v62;
      *(v28 + 8) = v59;
      if (++v58 == 8)
      {
        return v56 + 3 == a2;
      }

LABEL_61:
      v28 = v56;
      v57 += 12;
      v56 += 3;
    }

    while (v56 != a2);
  }

  return 1;
}

uint64_t re::internal::addAndCopyVertexAttributes(uint64_t a1, void *a2, unsigned int *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v15[1] = 0;
  v16 = 0;
  v15[0] = 0;
  v17 = 0;
  v6 = *a3;
  re::DynamicArray<float>::resize(v15, v6);
  if (v6)
  {
    v7 = 0;
    v8 = v16;
    v9 = v18;
    do
    {
      if (v8 == v7)
      {
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        v23 = 789;
        v24 = 2048;
        v25 = v8;
        v26 = 2048;
        v27 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v9 + 4 * v7) = v7;
      ++v7;
    }

    while (v6 != v7);
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 160), i);
      v13 = re::internal::GeomAttributeManager::addAttribute((a3 + 12), *(v12 + 8), 1, *(v12 + 17));
      if (v6 && v13)
      {
        (*(*v12 + 40))(v12, v13, v6, *a2, v18);
      }
    }
  }

  result = v15[0];
  if (v15[0])
  {
    if (v18)
    {
      return (*(*v15[0] + 40))();
    }
  }

  return result;
}

uint64_t re::internal::addAndCopyFaceAttributes(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v15[1] = 0;
  v16 = 0;
  v15[0] = 0;
  v17 = 0;
  v6 = *(a3 + 24);
  re::DynamicArray<float>::resize(v15, v6);
  if (v6)
  {
    v7 = 0;
    v8 = v16;
    v9 = v18;
    do
    {
      if (v8 == v7)
      {
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        v23 = 789;
        v24 = 2048;
        v25 = v8;
        v26 = 2048;
        v27 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v9 + 4 * v7) = v7;
      ++v7;
    }

    while (v6 != v7);
  }

  v10 = *(a1 + 296);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 272), i);
      v13 = re::internal::GeomAttributeManager::addAttribute((a3 + 48), *(v12 + 8), 2, *(v12 + 17));
      if (v6 && v13)
      {
        (*(*v12 + 40))(v12, v13, v6, *a2, v18);
      }
    }
  }

  result = v15[0];
  if (v15[0])
  {
    if (v18)
    {
      return (*(*v15[0] + 40))();
    }
  }

  return result;
}

uint64_t re::internal::addAndCopyFaceVaryingAttributes(uint64_t result, void *a2, _anonymous_namespace_ *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v40 = result;
  v39 = *(result + 408);
  if (!v39)
  {
    return result;
  }

  v6 = 0;
  v7 = *(a3 + 6);
  do
  {
    v42 = v6;
    v8 = re::internal::GeomAttributeContainer::attributeByIndex((v40 + 384), v6);
    v9 = (*(*v8 + 16))(v8);
    v43 = v8;
    v11 = re::internal::accessFaceVaryingAttributeSubmesh(v8, v10);
    v59 = 0;
    v56[1] = 0;
    v57 = 0;
    v56[0] = 0;
    v58 = 0;
    re::DynamicArray<unsigned int>::resize(v56, v9, &re::kInvalidMeshIndex);
    v55 = 0;
    v52 = 0;
    memset(v53, 0, sizeof(v53));
    v54 = 0;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    v51 = 0;
    LODWORD(v60) = 0;
    v13 = 0;
    if (!v7)
    {
      goto LABEL_50;
    }

    for (i = 0; i < v7; LODWORD(v60) = i)
    {
      v15 = i;
      v16 = a2[1];
      if (v16 <= i)
      {
        goto LABEL_83;
      }

      v17 = *(*a2 + 4 * i);
      LODWORD(v77) = v17;
      v18 = *(v11 + 140);
      if (v18 == 2)
      {
        v20 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v11 + 144), &v77);
        if (v20 == -1)
        {
          goto LABEL_49;
        }

        v19 = (*(v11 + 152) + 8 * v20 + 4);
        goto LABEL_15;
      }

      if (v18 == 1)
      {
        if (*(v11 + 160) <= v17)
        {
          goto LABEL_49;
        }

        v19 = (*(v11 + 176) + 4 * v17);
LABEL_15:
        if (*v19 == -1)
        {
          goto LABEL_49;
        }

        v15 = v60;
        v16 = a2[1];
        goto LABEL_17;
      }

      if (*(v11 + 140))
      {
        goto LABEL_89;
      }

      if (*(v11 + 144) <= v17)
      {
        goto LABEL_49;
      }

LABEL_17:
      if (v16 <= v15)
      {
        goto LABEL_85;
      }

      v21 = *(*a2 + 4 * v15);
      LODWORD(v77) = v21;
      v22 = *(v11 + 140);
      if (v22 == 2)
      {
        v23 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v11 + 144), &v77);
        if (v23 == -1)
        {
          goto LABEL_28;
        }

        v8 = *(*(v11 + 152) + 8 * v23 + 4);
      }

      else
      {
        if (v22 != 1)
        {
          if (*(v11 + 140))
          {
            goto LABEL_90;
          }

          if (*(v11 + 144) <= v21)
          {
            v8 = 0xFFFFFFFFLL;
          }

          else
          {
            v8 = v21;
          }

          goto LABEL_29;
        }

        if (*(v11 + 160) <= v21)
        {
LABEL_28:
          v8 = 0xFFFFFFFFLL;
          goto LABEL_29;
        }

        v8 = *(*(v11 + 176) + 4 * v21);
      }

LABEL_29:
      *&v44 = -1;
      *(&v44 + 1) = -1;
      v3 = *(v11 + 24);
      if (v3 <= v8)
      {
        goto LABEL_86;
      }

      v24 = 0;
      v61 = *(*(v11 + 40) + 16 * v8);
      v25 = 3;
      if (HIDWORD(v61) != -1)
      {
        v25 = 4;
      }

      v8 = v57;
      v26 = v59;
      do
      {
        v3 = *(&v61 + v24);
        if (v8 <= v3)
        {
          *v70 = 0;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v77 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v65 = 136315906;
          *v66 = "operator[]";
          *&v66[8] = 1024;
          *&v66[10] = 789;
          *&v66[14] = 2048;
          *&v66[16] = v3;
          v67 = 2048;
          v68 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_83:
          re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
          _os_crash();
          __break(1u);
          goto LABEL_84;
        }

        v27 = *(v26 + 4 * v3);
        if (v27 == -1)
        {
          *(v26 + 4 * v3) = v13;
          v27 = v13;
          v13 = (v13 + 1);
        }

        *(&v44 + v24++) = v27;
      }

      while (v25 != v24);
      v28 = re::DynamicArray<int>::add(v53, &v60);
      v29 = v50;
      if (v50 >= v49)
      {
        v4 = v50 + 1;
        if (v49 < v50 + 1)
        {
          if (v48)
          {
            v30 = 8;
            if (v49)
            {
              v30 = 2 * v49;
            }

            if (v30 <= v4)
            {
              v31 = v50 + 1;
            }

            else
            {
              v31 = v30;
            }

            re::DynamicArray<re::BlendNode>::setCapacity(&v48, v31);
          }

          else
          {
            re::DynamicArray<re::BlendNode>::setCapacity(&v48, v4);
            ++v51;
          }
        }

        v29 = v50;
      }

      *(v52 + 16 * v29) = v44;
      ++v50;
      ++v51;
LABEL_49:
      i = v60 + 1;
    }

LABEL_50:
    v65 = v13;
    re::DynamicArray<re::GeomCell4>::DynamicArray(&v66[4], &v48);
    if (!*&v66[12])
    {
      re::DynamicArray<re::BlendNode>::setCapacity(&v66[4], 1uLL);
    }

    v32 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(a3, *(v43 + 8), *(v43 + 17), &v65, v53);
    if (v32 && v13)
    {
      v38 = v32;
      v64 = 0;
      v62 = 0;
      v61 = 0uLL;
      v63 = 0;
      v47 = 0;
      v45 = 0;
      v44 = 0uLL;
      v4 = v13;
      v46 = 0;
      re::DynamicArray<float>::resize(&v61, v13);
      re::DynamicArray<float>::resize(&v44, v13);
      v33 = v64;
      v34 = v47;
      if (v9)
      {
        v35 = 0;
        v36 = 0;
        v4 = v57;
        v37 = v59;
        v8 = v62;
        v11 = v45;
        while (v4 != v35)
        {
          if (*(v37 + 4 * v35) != -1)
          {
            v3 = v36;
            if (v8 <= v36)
            {
              goto LABEL_87;
            }

            *(v33 + 4 * v36) = v35;
            if (v11 <= v36)
            {
              goto LABEL_88;
            }

            *(v34 + 4 * v36++) = *(v37 + 4 * v35);
          }

          if (v9 == ++v35)
          {
            goto LABEL_62;
          }
        }

LABEL_84:
        v60 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v70 = 136315906;
        *&v70[4] = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = v4;
        v75 = 2048;
        v76 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_85:
        re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
        _os_crash();
        __break(1u);
LABEL_86:
        *&v61 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v65 = 136315906;
        *v66 = "operator[]";
        *&v66[8] = 1024;
        *&v66[10] = 797;
        *&v66[14] = 2048;
        *&v66[16] = v8;
        v67 = 2048;
        v68 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v60 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v70 = 136315906;
        *&v70[4] = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = v3;
        v75 = 2048;
        v76 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_88:
        v60 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v70 = 136315906;
        *&v70[4] = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = v3;
        v75 = 2048;
        v76 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_89:
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
        _os_crash();
        __break(1u);
LABEL_90:
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
        _os_crash();
        __break(1u);
      }

LABEL_62:
      (*(*v43 + 40))(v43, v38, v13, v33, v34);
      if (v44 && v47)
      {
        (*(*v44 + 40))();
      }

      if (v61 && v64)
      {
        (*(*v61 + 40))();
      }
    }

    if (*&v66[4] && v69)
    {
      (*(**&v66[4] + 40))();
    }

    if (v48 && v52)
    {
      (*(*v48 + 40))();
    }

    if (v53[0] && v55)
    {
      (*(*v53[0] + 40))();
    }

    result = v56[0];
    if (v56[0])
    {
      if (v59)
      {
        result = (*(*v56[0] + 40))();
      }
    }

    v6 = v42 + 1;
  }

  while (v42 + 1 != v39);
  return result;
}

re::GeomAttribute *re::internal::addAndCopyAttributeValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v17 = 0;
    v14[1] = 0;
    v15 = 0;
    v14[0] = 0;
    v16 = 0;
    re::DynamicArray<float>::resize(v14, *(a1 + 24));
    v5 = *(a1 + 24);
    v6 = v15;
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = v17;
      do
      {
        if (v6 == v7)
        {
          v18 = 0;
          memset(v27, 0, sizeof(v27));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v19 = 136315906;
          v20 = "operator[]";
          v21 = 1024;
          v22 = 789;
          v23 = 2048;
          v24 = v6;
          v25 = 2048;
          v26 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(v8 + 4 * v7) = v7;
        ++v7;
      }

      while (v5 != v7);
    }

    *&v27[0] = v17;
    *(&v27[0] + 1) = v6;
    re::internal::addAndCopyFaceVaryingAttributes(a1, v27, a2);
    result = v14[0];
    if (v14[0])
    {
      if (v17)
      {
        return (*(*v14[0] + 40))();
      }
    }
  }

  else
  {
    v10 = a3;
    result = re::internal::GeomAttributeManager::attributeCount(a1 + 48, a3);
    if (result)
    {
      v11 = result;
      v12 = 0;
      do
      {
        v13 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 48), v12, v10);
        result = re::internal::GeomAttributeManager::addAttribute((a2 + 48), *(v13 + 8), v10, *(v13 + 17));
        if (result)
        {
          result = re::GeomAttribute::copyValues(v13, result);
        }

        v12 = (v12 + 1);
      }

      while (v11 != v12);
    }
  }

  return result;
}

void re::internal::computeVertexCacheCoherentFaceOrdering(re::internal *this@<X0>, uint64_t a2@<X8>)
{
  v8 = &v130;
  v151 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v128, 4514, *(this + 4));
  v9 = *(this + 10);
  v10 = *(this + 4);
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v127 = 0;
  v124[1] = 0;
  v125 = 0;
  v123 = 0;
  v124[0] = 0;
  v126 = 0;
  v120[1] = 0;
  v121 = 0;
  v119 = 0;
  v120[0] = 0;
  v122 = 0;
  v116[1] = 0;
  v117 = 0;
  v116[0] = 0;
  v118 = 0;
  re::computeVertexFaceConnectivity(this, v124, v120);
  re::DynamicArray<float>::resize(v116, v10);
  v91 = a2;
  re::DynamicArray<unsigned int>::resize(a2, v9, &re::kInvalidMeshIndex);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v117;
    v14 = v119;
    v15 = v121;
    v16 = v123;
    while (1)
    {
      if (v13 == v11)
      {
        goto LABEL_165;
      }

      *(v14 + 4 * v11) = v12;
      if (v15 == v11)
      {
        break;
      }

      v12 = *(v16 + 4 * v11);
      v11 = (v11 + 1);
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

LABEL_166:
    v112[0] = 0;
    *(v8 + 4) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 1) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v148[0]) = 136315906;
    *(v148 + 4) = "operator[]";
    WORD2(v148[1]) = 1024;
    *(&v148[1] + 6) = 789;
    WORD1(v148[2]) = 2048;
    *(&v148[2] + 4) = v15;
    WORD2(v148[3]) = 2048;
    *(&v148[3] + 6) = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_167;
  }

LABEL_6:
  v115 = 0;
  v112[1] = 0;
  v113 = 0;
  v111 = 0;
  v112[0] = 0;
  v114 = 0;
  v108[1] = 0;
  v109 = 0;
  v107 = 0;
  v108[0] = 0;
  v110 = 0;
  v104[1] = 0;
  v105 = 0;
  v103 = 0;
  v104[0] = 0;
  v106 = 0;
  v100[1] = 0;
  v101 = 0;
  v100[0] = 0;
  v17 = 8;
  v102 = 0;
  do
  {
    v18 = &v131[v17];
    *v18 = 0;
    v18[1] = 0;
    v17 += 24;
  }

  while (v17 != 896);
  v135 = v131;
  v136 = v133;
  v132 = v133;
  v133[2] = v131;
  v19 = xmmword_1E3049620;
  v20 = &v134;
  v21 = 904;
  v22 = vdupq_n_s64(0x23uLL);
  v23 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v22, v19)).u8[0])
    {
      *&v131[v21] = v20 - 3;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x23uLL), *&v19)).i32[1])
    {
      *&v131[v21 + 8] = v20;
    }

    v19 = vaddq_s64(v19, v23);
    v20 += 6;
    v21 += 16;
  }

  while (v21 != 1192);
  v138 = 0;
  v139 = 0;
  LODWORD(v148[0]) = -1082130432;
  re::DynamicArray<float>::resize(v112, v10, v148, 0);
  LOBYTE(v148[0]) = 0;
  re::DynamicArray<unsigned char>::resize(v104, v10, v148);
  LODWORD(v148[0]) = 0;
  re::DynamicArray<float>::resize(v108, v9, v148, v24);
  LOBYTE(v148[0]) = 0;
  re::DynamicArray<unsigned char>::resize(v100, v9, v148);
  if (v9)
  {
    for (i = 0; i != v9; i = (i + 1))
    {
      v15 = *(this + 5);
      if (v15 <= i)
      {
        goto LABEL_170;
      }

      v27 = 0;
      v130 = *(*(this + 7) + 16 * i);
      if (HIDWORD(v130) == -1)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }

      do
      {
        v15 = *&v131[4 * v27 - 16];
        v3 = v105;
        if (v105 <= v15)
        {
          v129 = 0;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v15;
          v146 = 2048;
          v147 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_157:
          v129 = 0;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v9;
          v146 = 2048;
          v147 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_158:
          v129 = 0;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v10;
          v146 = 2048;
          v147 = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_159:
          v129 = 0;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v8;
          v146 = 2048;
          v147 = v10;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_160:
          v129 = 0;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v15;
          v146 = 2048;
          v147 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_161:
          v129 = 0;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v15;
          v146 = 2048;
          v147 = v92;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_162:
          v129 = 0;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v5;
          v146 = 2048;
          v147 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_163:
          v129 = 0;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v9;
          v146 = 2048;
          v147 = v10;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_164:
          v129 = 0;
          v13 = &v140;
          v149 = 0u;
          v150 = 0u;
          memset(v148, 0, sizeof(v148));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v140 = 136315906;
          v141 = "operator[]";
          v142 = 1024;
          v143 = 789;
          v144 = 2048;
          v145 = v4;
          v146 = 2048;
          v147 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_165:
          v112[0] = 0;
          *(v8 + 4) = 0u;
          *(v8 + 5) = 0u;
          *(v8 + 2) = 0u;
          *(v8 + 3) = 0u;
          *(v8 + 1) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v148[0]) = 136315906;
          *(v148 + 4) = "operator[]";
          WORD2(v148[1]) = 1024;
          *(&v148[1] + 6) = 789;
          WORD1(v148[2]) = 2048;
          *(&v148[2] + 4) = v13;
          WORD2(v148[3]) = 2048;
          *(&v148[3] + 6) = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_166;
        }

        ++*(v107 + v15);
        ++v27;
      }

      while (v28 != v27);
    }
  }

  v98 = v9;
  if (v10)
  {
    v15 = 0;
    v13 = v105;
    v8 = v107;
    v3 = v113;
    v29 = v115;
    while (v13 != v15)
    {
      if (*(v8 + v15))
      {
        v30 = (powf(*(v8 + v15), -0.5) * 2.0) + 0.0;
      }

      else
      {
        v30 = -1.0;
      }

      if (v3 == v15)
      {
        goto LABEL_168;
      }

      v29[v15++] = v30;
      if (v10 == v15)
      {
        goto LABEL_31;
      }
    }

LABEL_167:
    *&v130 = 0;
    v15 = &v140;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v13;
    v146 = 2048;
    v147 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_168:
    *&v130 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v3;
    v146 = 2048;
    v147 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v129 = 0;
    i = &v140;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v15;
    v146 = 2048;
    v147 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_170:
    *&v130 = 0;
    v10 = &v140;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 797;
    v144 = 2048;
    v145 = i;
    v146 = 2048;
    v147 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_171:
    v129 = 0;
    v31 = &v140;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_172:
    *&v130 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 797;
    v144 = 2048;
    v145 = v31;
    v146 = 2048;
    v147 = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v129 = 0;
    v89 = &v140;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v8;
    v146 = 2048;
    v147 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_174:
    v129 = 0;
    v15 = &v140;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v89;
    v146 = 2048;
    v147 = v89;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_175:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_176:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_178:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_179:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v97;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_180:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v96;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v95;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_182:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v4;
    v146 = 2048;
    v147 = v93;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_183:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v10;
    v146 = 2048;
    v147 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_184:
    v129 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v10;
    v146 = 2048;
    v147 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_185:
    v129 = 0;
    v40 = &v140;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v10;
    v146 = 2048;
    v147 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_186:
    *&v130 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v10;
    v146 = 2048;
    v147 = v40;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_187:
    *&v130 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 789;
    v144 = 2048;
    v145 = v10;
    v146 = 2048;
    v147 = v40;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_188:
    *&v130 = 0;
    v149 = 0u;
    v150 = 0u;
    memset(v148, 0, sizeof(v148));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v140 = 136315906;
    v141 = "operator[]";
    v142 = 1024;
    v143 = 797;
    v144 = 2048;
    v145 = v10;
    v146 = 2048;
    v147 = v40;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_31:
  if (!v98)
  {
    goto LABEL_134;
  }

  v10 = 0;
  v31 = *(this + 5);
  v32 = *(this + 7);
  v3 = v113;
  v33 = -1;
  v34 = -INFINITY;
  v8 = v109;
  v35 = v111;
  do
  {
    if (v10 == v31)
    {
      goto LABEL_172;
    }

    v36 = 0;
    v130 = *(v32 + 16 * v10);
    v37 = v115;
    v15 = v109;
    v38 = v111;
    if (HIDWORD(v130) == -1)
    {
      v39 = 3;
    }

    else
    {
      v39 = 4;
    }

    do
    {
      v9 = *&v131[4 * v36 - 16];
      if (v3 <= v9)
      {
        goto LABEL_157;
      }

      if (v15 <= v10)
      {
        goto LABEL_158;
      }

      *(v38 + 4 * v10) = v37[v9] + *(v38 + 4 * v10);
      ++v36;
    }

    while (v39 != v36);
    if (v10 == v8)
    {
      goto LABEL_173;
    }

    if (*(v35 + 4 * v10) > v34)
    {
      v34 = *(v35 + 4 * v10);
      v33 = v10;
    }

    ++v10;
  }

  while (v10 != v98);
  v10 = 0;
  do
  {
    v40 = *(v91 + 16);
    if (v40 <= v10)
    {
      goto LABEL_186;
    }

    v90 = v10;
    *(*(v91 + 32) + 4 * v10) = v33;
    v10 = v33;
    v40 = v101;
    if (v101 <= v33)
    {
      goto LABEL_187;
    }

    *(v103 + v33) = 1;
    v40 = *(this + 5);
    if (v40 <= v33)
    {
      goto LABEL_188;
    }

    v41 = 0;
    v130 = *(*(this + 7) + 16 * v33);
    if (HIDWORD(v130) == -1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    v8 = v137;
    v9 = &v130;
    do
    {
      ++HIDWORD(v139);
      v42 = *(v135 + 1);
      v148[0] = v42;
      v43 = v136;
      if (v42 != v136)
      {
        v44 = *&v131[4 * v41 - 16];
        while (*v42 != v44)
        {
          v42 = v148[0];
          if (v148[0] == v43)
          {
            v42 = v43;
            break;
          }
        }

        v43 = v136;
      }

      if (v42 == v43)
      {
        LODWORD(v139) = v139 + 1;
        v47 = v138;
        if (v138 == 35)
        {
          v48 = *(v43 + 2);
          v50 = *(v48 + 8);
          v49 = *(v48 + 16);
          *(v49 + 8) = v50;
          *(v50 + 16) = v49;
          v137[34] = v48;
          v47 = 34;
        }
      }

      else
      {
        v46 = *(v42 + 1);
        v45 = *(v42 + 2);
        *(v45 + 8) = v46;
        *(v46 + 16) = v45;
        LOBYTE(v45) = v138 - 1;
        v137[(v138 - 1)] = v42;
        v47 = v45;
      }

      v51 = v137[v47];
      v52 = v135;
      v53 = *(v135 + 1);
      v138 = v47 + 1;
      v15 = *&v131[4 * v41 - 16];
      *v51 = v15;
      *(v51 + 8) = v53;
      *(v51 + 16) = v52;
      *(v53 + 16) = v51;
      *(v52 + 1) = v51;
      v3 = v105;
      if (v105 <= v15)
      {
        goto LABEL_169;
      }

      --*(v107 + v15);
      ++v41;
    }

    while (v41 != v10);
    v3 = *(v135 + 1);
    v99 = v3;
    v54 = v136;
    if (v3 != v136)
    {
      v55 = 0;
      while (1)
      {
        v4 = *v3;
        v15 = v113;
        if (v113 <= v4)
        {
          goto LABEL_175;
        }

        v15 = v105;
        if (v105 <= v4)
        {
          goto LABEL_176;
        }

        v56 = v115;
        v57 = v115[v4];
        v10 = *(v107 + v4);
        if (*(v107 + v4))
        {
          v58 = 0.75;
          if (v55 >= 3)
          {
            v58 = powf(((v55 - 3) * -0.034483) + 1.0, 1.5);
          }

          v59 = v58 + (powf(v10, -0.5) * 2.0);
        }

        else
        {
          v59 = -1.0;
        }

        v56[v4] = v59;
        v15 = v117;
        if (v117 <= v4)
        {
          goto LABEL_177;
        }

        v15 = v121;
        if (v121 <= v4)
        {
          goto LABEL_178;
        }

        v60 = *(v119 + 4 * v4);
        v61 = *(v123 + 4 * v4);
        if (v60 < v61)
        {
          break;
        }

LABEL_83:
        v3 = v99;
        if (v99 != v54 && v55++ < 0x1F)
        {
          continue;
        }

        goto LABEL_86;
      }

      v62 = v59 - v57;
      v10 = v125;
      v3 = v109;
      v63 = v111;
      if (v125 <= v60)
      {
        v8 = *(v119 + 4 * v4);
      }

      else
      {
        v8 = v125;
      }

      v64 = (v127 + 4 * v60);
      v65 = v61 - v60;
      v66 = v8 - v60;
      while (v66)
      {
        v15 = *v64;
        if (v3 <= v15)
        {
          goto LABEL_160;
        }

        *(v63 + 4 * v15) = v62 + *(v63 + 4 * v15);
        ++v64;
        --v66;
        if (!--v65)
        {
          goto LABEL_83;
        }
      }

      goto LABEL_159;
    }

LABEL_86:
    v68 = v138;
    if (v3 != v54)
    {
      v8 = v115;
      v96 = v105;
      v97 = v113;
      v94 = v107;
      v95 = v117;
      v10 = v119;
      v9 = v123;
      v92 = v125;
      v93 = v121;
      while (1)
      {
        v4 = *v3;
        if (v97 <= v4)
        {
          goto LABEL_179;
        }

        if (v96 <= v4)
        {
          goto LABEL_180;
        }

        v69 = v8[v4];
        if (*(v94 + v4))
        {
          v70 = (powf(*(v94 + v4), -0.5) * 2.0) + 0.0;
        }

        else
        {
          v70 = -1.0;
        }

        v8[v4] = v70;
        if (v95 <= v4)
        {
          goto LABEL_181;
        }

        if (v93 <= v4)
        {
          goto LABEL_182;
        }

        v71 = *(v10 + 4 * v4);
        v72 = *(v9 + 4 * v4);
        if (v71 < v72)
        {
          break;
        }

LABEL_103:
        v79 = *(v3 + 1);
        v78 = *(v3 + 2);
        *(v78 + 8) = v79;
        *(v79 + 2) = v78;
        v138 = --v68;
        v137[v68] = v3;
        v3 = v79;
        if (v79 == v54)
        {
          goto LABEL_104;
        }
      }

      v73 = v70 - v69;
      v4 = v109;
      v74 = v111;
      if (v92 <= v71)
      {
        v15 = v71;
      }

      else
      {
        v15 = v92;
      }

      v75 = (v127 + 4 * v71);
      v76 = v72 - v71;
      v77 = (v15 - v71);
      while (v77)
      {
        v5 = *v75;
        if (v4 <= v5)
        {
          goto LABEL_162;
        }

        *(v74 + 4 * v5) = v73 + *(v74 + 4 * v5);
        ++v75;
        --v77;
        if (!--v76)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_161;
    }

LABEL_104:
    if (!v68)
    {
      v83 = -INFINITY;
      v82 = v98;
      goto LABEL_126;
    }

    v80 = *(v135 + 1);
    v99 = v80;
    v81 = v136;
    v82 = v98;
    if (v80 == v136)
    {
      v83 = -INFINITY;
LABEL_126:
      v10 = 0;
      v89 = v101;
      v33 = -1;
      v3 = v109;
      while (v101 != v10)
      {
        if (!*(v103 + v10))
        {
          if (v109 <= v10)
          {
            goto LABEL_183;
          }

          if (*(v111 + 4 * v10) > v83)
          {
            v83 = *(v111 + 4 * v10);
            v33 = v10;
          }
        }

        if (v82 == ++v10)
        {
          goto LABEL_133;
        }
      }

      goto LABEL_174;
    }

    v33 = -1;
    v83 = -INFINITY;
    do
    {
      v10 = *v80;
      v15 = v117;
      if (v117 <= v10)
      {
        goto LABEL_184;
      }

      v15 = v121;
      if (v121 <= v10)
      {
        goto LABEL_185;
      }

      v84 = *(v119 + 4 * v10);
      v85 = *(v123 + 4 * v10);
      if (v84 < v85)
      {
        v10 = v125;
        v3 = v101;
        v8 = v109;
        if (v125 <= v84)
        {
          v9 = v84;
        }

        else
        {
          v9 = v125;
        }

        v86 = (v127 + 4 * v84);
        v87 = v85 - v84;
        v88 = v9 - v84;
        while (v88)
        {
          v4 = *v86;
          if (v101 <= v4)
          {
            goto LABEL_164;
          }

          if (!*(v103 + v4))
          {
            if (v109 <= v4)
            {
              goto LABEL_171;
            }

            if (*(v111 + 4 * v4) > v83)
            {
              v83 = *(v111 + 4 * v4);
              v33 = *v86;
            }
          }

          ++v86;
          --v88;
          if (!--v87)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_163;
      }

LABEL_121:
      v82 = v98;
      v80 = v99;
    }

    while (v99 != v81);
    if (v33 == -1)
    {
      goto LABEL_126;
    }

LABEL_133:
    v10 = v90 + 1;
  }

  while (v90 + 1 != v82);
LABEL_134:
  if (v100[0] && v103)
  {
    (*(*v100[0] + 40))();
  }

  if (v104[0] && v107)
  {
    (*(*v104[0] + 40))();
  }

  if (v108[0] && v111)
  {
    (*(*v108[0] + 40))();
  }

  if (v112[0] && v115)
  {
    (*(*v112[0] + 40))();
  }

  if (v116[0] && v119)
  {
    (*(*v116[0] + 40))();
  }

  if (v120[0] && v123)
  {
    (*(*v120[0] + 40))();
  }

  if (v124[0] && v127)
  {
    (*(*v124[0] + 40))();
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v128);
}

uint64_t re::internal::anonymous namespace::FixedPoolLinkedList<unsigned int,(unsigned char)35>::NodeIterator::operator++(uint64_t result, uint64_t a2)
{
  v4 = *(*result + 8);
  if (v4)
  {
    *result = v4;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Incrementing past the end.", "!Unreachable code", "operator++", 45, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::internal::makeVertexCacheCoherentMesh(unsigned int *a1@<X0>, uint64_t *a2@<X1>, re::GeomMesh *a3@<X8>)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v14, 4512, a1[4]);
  re::GeomMeshBuilder::GeomMeshBuilder(&v9, a1);
  re::internal::computeVertexCacheCoherentFaceOrdering(a1, v8);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2, v8);
  if (v8[0] && v8[4])
  {
    (*(*v8[0] + 40))();
  }

  re::internal::GeomBaseTopology::reorderFaces(&v10, a2);
  re::internal::GeomAttributeManager::reorderFaces(v13, a2);
  v6 = re::GeomMesh::GeomMesh(a3, 0);
  v7 = re::GeomMesh::operator=(v6, &v10);
  re::GeomMesh::setName(v7, v9);
  re::GeomMesh::freeName(&v9);
  re::GeomMesh::freeName(&v9);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v13);
  if (v11 && v12)
  {
    (*(*v11 + 40))();
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v14);
}

uint64_t re::internal::makeVertexCacheCoherentMesh@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, re::GeomMesh *a3@<X8>)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  re::internal::makeVertexCacheCoherentMesh(a1, v10, a3);
  re::GeomIndexMap::GeomIndexMap(v7, v10);
  re::GeomIndexMap::operator=(a2, v7);
  if (v8)
  {
    if (v8 == 2)
    {
      v5.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v9);
    }

    else
    {
      if (v8 != 1)
      {
        re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        result = _os_crash();
        __break(1u);
        return result;
      }

      if (v9[0] && v9[4])
      {
        (*(*v9[0] + 40))();
      }
    }
  }

  result = v10[0];
  if (v10[0])
  {
    if (v12)
    {
      return (*(*v10[0] + 40))(v10[0], v5);
    }
  }

  return result;
}

uint64_t re::internal::GeomConnectivityNonManifold::computeIncidenceRelations(_anonymous_namespace_ *a1, unsigned int *a2)
{
  v3 = a2;
  v4 = a1;
  v124 = *MEMORY[0x1E69E9840];
  v5 = 0uLL;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v6 = *(a2 + 3);
  v7 = *a2;
  v8 = v6;
  if (v6)
  {
    if (v6 <= v6 - 1)
    {
      goto LABEL_147;
    }

    v9 = 0;
    v10 = *(a2 + 5);
    v11.i64[0] = -1;
    v11.i64[1] = -1;
    v12 = v10;
    v13 = v6;
    do
    {
      v14 = *v12++;
      v9 += (vmaxv_u16(vmovn_s32(vceqq_s32(v14, v11))) & 1) == 0;
      --v13;
    }

    while (v13);
    v15 = 0;
    v16.i64[0] = -1;
    v16.i64[1] = -1;
    v17 = v6;
    do
    {
      v18 = *v10++;
      v19 = vceqq_s32(v18, v16);
      v20 = vmovn_s32(vmvnq_s8(v19));
      v20.i16[3] = vmovn_s32(*&v19).i16[3];
      v15 += vminv_u16(v20) & 1;
      --v17;
    }

    while (v17);
    v21 = (6 * v15 + 8 * v9);
  }

  else
  {
    v21 = 0;
  }

  *(v4 + 8) = 0;
  ++*(v4 + 18);
  *(v4 + 13) = 0;
  ++*(v4 + 28);
  *(v4 + 18) = 0;
  ++*(v4 + 38);
  *(v4 + 23) = 0;
  ++*(v4 + 48);
  *(v4 + 28) = 0;
  ++*(v4 + 58);
  *(v4 + 33) = 0;
  ++*(v4 + 68);
  *(v4 + 38) = 0;
  ++*(v4 + 78);
  *(v4 + 43) = 0;
  ++*(v4 + 88);
  *(v4 + 48) = 0;
  ++*(v4 + 98);
  *(v4 + 53) = 0;
  ++*(v4 + 108);
  v22 = &re::kInvalidMeshIndex;
  re::DynamicArray<unsigned int>::resize(v4 + 46, 4 * (v6 & 0x3FFFFFFF), &re::kInvalidMeshIndex);
  re::DynamicArray<unsigned int>::resize(v4 + 51, 4 * (v6 & 0x3FFFFFFF), &re::kInvalidMeshIndex);
  LODWORD(v119) = 0;
  re::DynamicArray<unsigned int>::resize(v4 + 11, v7, &v119);
  LODWORD(v119) = 0;
  re::DynamicArray<unsigned int>::resize(v4 + 16, v7, &v119);
  v83 = v6;
  if (!v6)
  {
    LODWORD(v24) = 0;
    goto LABEL_52;
  }

  v23 = 0;
  v7 = 0;
  v24 = 0;
  v22 = &v101;
  v82 = v3;
  v86 = v4;
  do
  {
    v25 = 0uLL;
    v106 = 0u;
    v107 = 0u;
    v6 = *(v3 + 3);
    if (v6 <= v7)
    {
      goto LABEL_134;
    }

    v89 = v24;
    v26 = 0;
    v84 = v23;
    v27 = *(v3 + 5) + v23;
    do
    {
      *(&v101 + v26) = *(v27 + v26);
      v26 += 4;
    }

    while (v26 != 16);
    v6 = 0;
    v28 = 0;
    v8 = 0;
    if (HIDWORD(v102) == -1)
    {
      v29 = 3;
    }

    else
    {
      v29 = 4;
    }

    v87 = v7;
    v91 = v29;
    v92 = 4 * v7;
    do
    {
      v30 = &v101 + v8;
      v31 = *v30;
      v2 = v8 + 1;
      v32 = (v8 + 1);
      if (v8 + 1 == v29)
      {
        v32 = 0;
      }

      v33 = *(&v101 + v32);
      if (v31 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = *v30;
      }

      if (v31 <= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = *v30;
      }

      if (v36 == -1)
      {
        *&v119 = __PAIR64__(v35, v34);
        *v109 = v89;
        *&v109[4] = 1;
        if (v43 == -1)
        {
        }

        else
        {
          v38 = (*(&v93 + 1) + 16 * v43 + 8);
        }

        v39 = v89++;
        v4 = v86;
        v22 = &v101;
      }

      else
      {
        v37 = *(&v93 + 1) + 16 * v36;
        v40 = *(v37 + 8);
        v38 = (v37 + 8);
        v39 = v40;
        v41 = &v106;
        if (v8)
        {
          v42 = v28;
          while (*v41 != v38)
          {
            v41 = (v41 + 8);
            v42 -= 8;
            if (!v42)
            {
              goto LABEL_33;
            }
          }
        }

        if (v41 == (&v106 + 8 * v8))
        {
LABEL_33:
          ++v38[1];
        }
      }

      *(&v106 + v8) = v38;
      v7 = (v92 + v8);
      v24 = *(v4 + 48);
      if (v24 <= v7)
      {
        *v112 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v109 = 136315906;
        *&v109[4] = "operator[]";
        *&v109[12] = 1024;
        *&v109[14] = 789;
        *&v109[18] = 2048;
        *&v109[20] = (v92 + v8);
        v110 = 2048;
        *v111 = v24;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_128:
        *v112 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v109 = 136315906;
        *&v109[4] = "operator[]";
        *&v109[12] = 1024;
        *&v109[14] = 789;
        *&v109[18] = 2048;
        *&v109[20] = (v92 + v8);
        v110 = 2048;
        *v111 = v24;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_129:
        *v112 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v109 = 136315906;
        *&v109[4] = "operator[]";
        *&v109[12] = 1024;
        *&v109[14] = 789;
        *&v109[18] = 2048;
        *&v109[20] = v31;
        v110 = 2048;
        *v111 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_130:
        v97 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v6;
        v117 = 2048;
        v118 = v92;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_131:
        v97 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v22;
        v117 = 2048;
        v118 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_132:
        v97 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v22;
        v117 = 2048;
        v118 = v91;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_133:
        v97 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v6;
        v117 = 2048;
        v118 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_134:
        v101 = 0;
        v122 = v25;
        v123 = v25;
        v120 = v25;
        v121 = v25;
        v119 = v25;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v109 = 136315906;
        *&v109[4] = "operator[]";
        *&v109[12] = 1024;
        *&v109[14] = 797;
        *&v109[18] = 2048;
        *&v109[20] = v7;
        v110 = 2048;
        *v111 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_135:
        *&v98[0] = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v22;
        v117 = 2048;
        v118 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_136:
        *&v98[0] = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v24;
        v117 = 2048;
        v118 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_137:
        *&v98[0] = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v2;
        v117 = 2048;
        v118 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_138:
        *&v98[0] = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v8;
        v117 = 2048;
        v118 = v24;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_139:
        v99 = 0;
        v122 = v54;
        v123 = v54;
        v120 = v54;
        v121 = v54;
        v119 = v54;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 797;
        v115 = 2048;
        v116 = v81;
        v117 = 2048;
        v118 = v81;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_140:
        *&v98[0] = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v22;
        v117 = 2048;
        v118 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_141:
        *&v98[0] = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v112 = 136315906;
        *&v112[4] = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v2;
        v117 = 2048;
        v118 = v24;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_142;
      }

      *(*(v4 + 50) + 4 * v7) = v31;
      v24 = *(v4 + 53);
      if (v24 <= v7)
      {
        goto LABEL_128;
      }

      *(*(v4 + 55) + 4 * v7) = v39;
      v44 = &v101;
      if (v8)
      {
        v45 = v6;
        while (*v44 != v31)
        {
          ++v44;
          v45 -= 4;
          if (!v45)
          {
            goto LABEL_46;
          }
        }
      }

      if (v44 == v30)
      {
LABEL_46:
        v7 = *(v4 + 18);
        if (v7 <= v31)
        {
          goto LABEL_129;
        }

        ++*(*(v4 + 20) + 4 * v31);
      }

      v28 += 8;
      v6 += 4;
      ++v8;
      v29 = v91;
    }

    while (v2 != v91);
    v7 = v87 + 1;
    v8 = v83;
    v23 = v84 + 16;
    v3 = v82;
    v24 = v89;
  }

  while (v87 + 1 != v83);
LABEL_52:
  v80 = v24;
  re::DynamicArray<float>::resize(v4 + 288, v24);
  re::DynamicArray<float>::resize(v4 + 248, (2 * v24));
  *&v106 = &v93;
  if (v94 < 0x10)
  {
LABEL_56:
    v24 = *(v4 + 38);
  }

  else
  {
    v46 = 0;
    v47 = v93;
    v48 = v94 >> 4;
    while (1)
    {
      v49 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v47), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v49 != 0xFFFFLL)
      {
        break;
      }

      v46 -= 16;
      ++v47;
      if (!--v48)
      {
        goto LABEL_56;
      }
    }

    v75 = __clz(__rbit64(v49 ^ 0xFFFFLL));
    v76 = v75 - v46;
    *(&v106 + 1) = v49 ^ 0xFFFFLL;
    *&v107 = v75 - v46;
    v24 = *(v4 + 38);
    if (v75 + 1 != v46)
    {
      while (1)
      {
        v77 = (*(v106 + 8) + 16 * v76);
        v6 = v77[2];
        if (v24 <= v6)
        {
          break;
        }

        v22 = *v77;
        v7 = v77[1];
        *(*(v4 + 40) + 4 * v6) = v77[3];
        v2 = (2 * v6);
        v6 = *(v4 + 33);
        if (v6 <= v2)
        {
          goto LABEL_143;
        }

        v78 = *(v4 + 35);
        *(v78 + 4 * v2) = v22;
        v2 = v2 | 1;
        if (v6 <= v2)
        {
          goto LABEL_144;
        }

        *(v78 + 4 * v2) = v7;
        v6 = *(v4 + 13);
        if (v6 <= v22)
        {
          goto LABEL_145;
        }

        v79 = *(v4 + 15);
        ++*(v79 + 4 * v22);
        if (v22 != v7)
        {
          if (v6 <= v7)
          {
            goto LABEL_146;
          }

          ++*(v79 + 4 * v7);
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v106);
        v76 = v107;
        if (v107 == -1)
        {
          goto LABEL_57;
        }
      }

LABEL_142:
      v101 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      *&v109[12] = 1024;
      *&v109[14] = 789;
      *&v109[18] = 2048;
      *&v109[20] = v6;
      v110 = 2048;
      *v111 = v24;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_143:
      v101 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      *&v109[12] = 1024;
      *&v109[14] = 789;
      *&v109[18] = 2048;
      *&v109[20] = v2;
      v110 = 2048;
      *v111 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_144:
      v101 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      *&v109[12] = 1024;
      *&v109[14] = 789;
      *&v109[18] = 2048;
      *&v109[20] = v2;
      v110 = 2048;
      *v111 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_145:
      v101 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      *&v109[12] = 1024;
      *&v109[14] = 789;
      *&v109[18] = 2048;
      *&v109[20] = v22;
      v110 = 2048;
      *v111 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_146:
      v101 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      *&v109[12] = 1024;
      *&v109[14] = 789;
      *&v109[18] = 2048;
      *&v109[20] = v7;
      v110 = 2048;
      *v111 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_147:
      *&v106 = 0;
      v122 = v5;
      v123 = v5;
      v120 = v5;
      v121 = v5;
      v119 = v5;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      *&v109[12] = 1024;
      *&v109[14] = 797;
      *&v109[18] = 2048;
      *&v109[20] = v6;
      v110 = 2048;
      *v111 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_57:
  re::DynamicArray<float>::resize(v4 + 328, v50);
  re::DynamicArray<float>::resize(v4 + 168, v51);
  re::DynamicArray<float>::resize(v4 + 208, v52);
  *&v111[2] = 0;
  memset(v109, 0, sizeof(v109));
  v108 = 0;
  *&v107 = 0;
  v105 = 0;
  v106 = 0uLL;
  DWORD2(v107) = 0;
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v104 = 0;
  if (v8)
  {
    v2 = 0;
    v81 = *(v3 + 3);
    v53 = *(v3 + 5);
    do
    {
      v54 = 0uLL;
      memset(v98, 0, sizeof(v98));
      if (v2 == v81)
      {
        goto LABEL_139;
      }

      for (i = 0; i != 16; i += 4)
      {
        *(&v99 + i) = *(v53 + i);
      }

      v85 = v53;
      v8 = 0;
      v7 = 0;
      v56 = 0;
      if (v100 == -1)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      v91 = v103;
      v92 = *&v109[16];
      v88 = v105;
      v90 = *&v111[2];
      do
      {
        v57 = &v99;
        v22 = &v99 + 4 * v56;
        v6 = *v22;
        v58 = v56 + 1;
        v59 = (v56 + 1);
        if (v56 + 1 == v24)
        {
          v59 = 0;
        }

        v60 = *(&v99 + v59);
        if (v6 >= v60)
        {
          v61 = v60;
        }

        else
        {
          v61 = *v22;
        }

        if (v6 <= v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = *v22;
        }

        v64 = (*(&v93 + 1) + 16 * v63 + 8);
        if (v63 == -1)
        {
          v64 = 0;
        }

        v65 = v98 + v56;
        *v65 = v64;
        if (v56)
        {
          v57 = &v99;
          v66 = v7;
          while (*v57 != v6)
          {
            ++v57;
            v66 -= 4;
            if (!v66)
            {
              goto LABEL_82;
            }
          }
        }

        if (v57 == v22)
        {
LABEL_82:
          if (v92 <= v6)
          {
            goto LABEL_130;
          }

          v22 = *(v90 + 4 * v6);
          *(v90 + 4 * v6) = v22 + 1;
          v6 = *(v4 + 28);
          if (v6 <= v22)
          {
            goto LABEL_131;
          }

          *(*(v4 + 30) + 4 * v22) = v2;
        }

        v67 = v98;
        if (v56)
        {
          v68 = v8;
          while (*v67 != v64)
          {
            ++v67;
            v68 -= 8;
            if (!v68)
            {
              goto LABEL_91;
            }
          }
        }

        if (v67 == v65)
        {
LABEL_91:
          v22 = *v64;
          if (v91 <= v22)
          {
            goto LABEL_132;
          }

          v6 = *(v88 + 4 * v22);
          *(v88 + 4 * v22) = v6 + 1;
          v22 = *(v4 + 43);
          if (v22 <= v6)
          {
            goto LABEL_133;
          }

          *(*(v4 + 45) + 4 * v6) = v2;
        }

        v7 += 4;
        v8 += 8;
        ++v56;
      }

      while (v58 != v24);
      ++v2;
      v53 = v85 + 16;
    }

    while (v2 != v83);
  }

  if (v80)
  {
    v69 = 0;
    v6 = *(v4 + 33);
    v70 = 1;
    v7 = v107;
    v71 = v108;
    do
    {
      v22 = v70 - 1;
      if (v6 <= v22)
      {
        goto LABEL_135;
      }

      v24 = v70;
      if (v6 <= v70)
      {
        goto LABEL_136;
      }

      v72 = *(v4 + 35);
      v2 = *(v72 + 4 * v22);
      if (v7 <= v2)
      {
        goto LABEL_137;
      }

      v22 = *(v72 + 4 * v70);
      v8 = *(v71 + 4 * v2);
      *(v71 + 4 * v2) = v8 + 1;
      v24 = *(v4 + 23);
      if (v24 <= v8)
      {
        goto LABEL_138;
      }

      v73 = *(v4 + 25);
      *(v73 + 4 * v8) = v69;
      if (v2 != v22)
      {
        if (v7 <= v22)
        {
          goto LABEL_140;
        }

        v2 = *(v71 + 4 * v22);
        *(v71 + 4 * v22) = v2 + 1;
        if (v24 <= v2)
        {
          goto LABEL_141;
        }

        *(v73 + 4 * v2) = v69;
      }

      ++v69;
      v70 += 2;
    }

    while (v80 != v69);
  }

  if (v101 && v105)
  {
    (*(*v101 + 40))();
  }

  if (v106 && v108)
  {
    (*(*v106 + 40))();
  }

  if (*v109 && *&v111[2])
  {
    (*(**v109 + 40))();
  }
}

uint64_t re::internal::anonymous namespace::computeAccumulatedCounts(unint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    v2 = 2;
    for (i = 1; i < a1; i = v2++)
    {
      v4 = v2 - 2;
      if (v4 >= a1)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(a2 + 4 * i) += *(a2 + 4 * v4);
    }
  }

  return *(a2 + 4 * a1 - 4);
}

void *re::internal::anonymous namespace::createIndexOffsetsFromAccumulatedCounts(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  v4 = *(a1 + 16);
  LODWORD(v14) = 0;
  result = re::DynamicArray<unsigned int>::resize(a2, v4, &v14);
  v6 = *(a1 + 16);
  if (v6 >= 2)
  {
    v7 = *(a2 + 16);
    v8 = *(a1 + 32);
    v9 = 2;
    v10 = 1;
    v11 = *(a2 + 32);
    do
    {
      v12 = v9 - 2;
      if (v6 <= v12)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v7 <= v10)
      {
        goto LABEL_8;
      }

      *(v11 + 4 * v10) = *(v8 + 4 * v12);
      v10 = v9;
    }

    while (v6 > v9++);
  }

  return result;
}

uint64_t re::internal::GeomConnectivityNonManifold::edgeFaceCount(re::internal::GeomConnectivityNonManifold *this, unsigned int a2)
{
  if (a2)
  {
    v2 = a2 - 1;
    v3 = *(this + 38);
    if (v3 <= v2)
    {
      goto LABEL_8;
    }

    v4 = *(*(this + 40) + 4 * v2);
  }

  else
  {
    v4 = 0;
    v3 = *(this + 38);
  }

  if (v3 <= a2)
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

  return (*(*(this + 40) + 4 * a2) - v4);
}

uint64_t re::internal::GeomConnectivityNonManifold::vertexFaceCount(re::internal::GeomConnectivityNonManifold *this, unsigned int a2)
{
  if (a2)
  {
    v2 = a2 - 1;
    v3 = *(this + 18);
    if (v3 <= v2)
    {
      goto LABEL_8;
    }

    v4 = *(*(this + 20) + 4 * v2);
  }

  else
  {
    v4 = 0;
    v3 = *(this + 18);
  }

  if (v3 <= a2)
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

  return (*(*(this + 20) + 4 * a2) - v4);
}

re::internal::GeomConnectivityNonManifold *re::internal::GeomConnectivityNonManifold::classifyEdges(re::internal::GeomConnectivityNonManifold *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = *(this + 33);
  if ((v1 & 0x1FFFFFFFELL) == 0)
  {
    return this;
  }

  v2 = this;
  v3 = 0;
  v4 = (v1 >> 1);
  do
  {
    v5 = re::internal::GeomConnectivityNonManifold::edgeFaceCount(v2, v3);
    this = re::internal::GeomConnectivityNonManifold::edgeVertices(v2, v3, &v31);
    v6 = v31;
    if (v31 == v32)
    {
      goto LABEL_4;
    }

    if (v5 == 1)
    {
      v7 = *(v2 + 8);
      if (v7 <= v31)
      {
        goto LABEL_72;
      }

      *(*(v2 + 10) + v31) |= 1u;
      v7 = v32;
      v6 = *(v2 + 8);
      if (v6 <= v32)
      {
        goto LABEL_73;
      }

      *(*(v2 + 10) + v32) |= 1u;
      v7 = *(v2 + 8);
      if (v7 <= v3)
      {
        goto LABEL_74;
      }

      v8 = 4;
LABEL_13:
      *(*(v2 + 10) + v3) |= v8;
      goto LABEL_14;
    }

    this = re::internal::GeomConnectivityNonManifold::edgeFaceCount(v2, v3);
    if (this == 1)
    {
      goto LABEL_14;
    }

    if (this > 2)
    {
      goto LABEL_65;
    }

    re::internal::GeomConnectivityNonManifold::edgeVertices(v2, v3, &v36);
    *&v35[2] = 0;
    memset(v33, 0, sizeof(v33));
    if (v3)
    {
      v6 = (v3 - 1);
      v7 = *(v2 + 38);
      if (v7 <= v6)
      {
        goto LABEL_78;
      }

      v9 = *(*(v2 + 40) + 4 * v6);
    }

    else
    {
      v9 = 0;
      v7 = *(v2 + 38);
    }

    v6 = v3;
    if (v7 <= v3)
    {
      goto LABEL_75;
    }

    v10 = *(*(v2 + 40) + 4 * v3);
    v7 = v10 - v9;
    re::DynamicArray<float>::resize(v33, v7);
    if (v10 <= v9)
    {
      v6 = *&v33[16];
    }

    else
    {
      v11 = 0;
      v12 = v9;
      v13 = *(v2 + 43);
      v6 = *&v33[16];
      v14 = *&v35[2];
      v15 = v13 - v9;
      if (v13 < v9)
      {
        v15 = 0;
      }

      do
      {
        if (v15 == v11)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v38 = 136315906;
          *&v38[4] = "operator[]";
          v39 = 1024;
          v40 = 797;
          v41 = 2048;
          v42 = v12;
          v43 = 2048;
          v44 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_68:
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v38 = 136315906;
          *&v38[4] = "operator[]";
          v39 = 1024;
          v40 = 789;
          v41 = 2048;
          v42 = v6;
          v43 = 2048;
          v44 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_69;
        }

        if (v6 == v11)
        {
          goto LABEL_68;
        }

        *(v14 + 4 * v11++) = *(*(v2 + 45) + 4 * v12++);
      }

      while (v7 != v11);
    }

    if (!v6)
    {
      goto LABEL_76;
    }

    v16 = v36;
    v17 = v37;
    v18 = re::internal::GeomConnectivityNonManifold::faceVertices(v2, **&v35[2], v45);
    v19 = 0;
    v7 = 0;
    v20 = v45[v18 - 1];
    while (1)
    {
      if (v18 - 1 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19 + 1;
      }

      v22 = v45[v19];
      if (v22 != v16)
      {
        goto LABEL_43;
      }

      if (v20 != v17)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_45;
      }

      v7 = 1;
LABEL_43:
      ++v19;
      v20 = v22;
      if (v18 == v19)
      {
        goto LABEL_46;
      }
    }

    if (v45[v21] != v17)
    {
      goto LABEL_43;
    }

    if (!v7)
    {
      v7 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

LABEL_45:
    v7 = 0;
LABEL_46:
    v6 = *&v33[16];
    if (*&v33[16] <= 1uLL)
    {
      goto LABEL_77;
    }

    v23 = v36;
    v24 = v37;
    v25 = re::internal::GeomConnectivityNonManifold::faceVertices(v2, *(*&v35[2] + 4), v45);
    v26 = 0;
    v27 = 0;
    v28 = v45[v25 - 1];
    while (2)
    {
      if (v25 - 1 == v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v26 + 1;
      }

      v30 = v45[v26];
      if (v30 != v23)
      {
        goto LABEL_58;
      }

      if (v28 == v24)
      {
        if (v27)
        {
          goto LABEL_60;
        }

        v27 = 1;
        goto LABEL_58;
      }

      if (v45[v29] != v24)
      {
LABEL_58:
        ++v26;
        v28 = v30;
        if (v25 == v26)
        {
          goto LABEL_61;
        }

        continue;
      }

      break;
    }

    if (!v27)
    {
      v27 = -1;
      goto LABEL_58;
    }

LABEL_60:
    v27 = 0;
LABEL_61:
    this = *v33;
    if (*v33)
    {
      if (*&v35[2])
      {
        this = (*(**v33 + 40))();
      }
    }

    if (((v27 * v7) & 0x80000000) == 0)
    {
LABEL_65:
      v6 = v31;
LABEL_4:
      v7 = *(v2 + 8);
      if (v7 > v6)
      {
        *(*(v2 + 10) + v6) |= 2u;
        v7 = v32;
        v6 = *(v2 + 8);
        if (v6 > v32)
        {
          *(*(v2 + 10) + v32) |= 2u;
          v7 = *(v2 + 8);
          if (v7 > v3)
          {
            v8 = 8;
            goto LABEL_13;
          }

LABEL_71:
          *v38 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v33 = 136315906;
          *&v33[4] = "operator[]";
          *&v33[12] = 1024;
          *&v33[14] = 789;
          *&v33[18] = 2048;
          *&v33[20] = v3;
          v34 = 2048;
          *v35 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_72:
          *v38 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v33 = 136315906;
          *&v33[4] = "operator[]";
          *&v33[12] = 1024;
          *&v33[14] = 789;
          *&v33[18] = 2048;
          *&v33[20] = v6;
          v34 = 2048;
          *v35 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_73:
          *v38 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          v3 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v33 = 136315906;
          *&v33[4] = "operator[]";
          *&v33[12] = 1024;
          *&v33[14] = 789;
          *&v33[18] = 2048;
          *&v33[20] = v7;
          v34 = 2048;
          *v35 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_74:
          *v38 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v33 = 136315906;
          *&v33[4] = "operator[]";
          *&v33[12] = 1024;
          *&v33[14] = 789;
          *&v33[18] = 2048;
          *&v33[20] = v3;
          v34 = 2048;
          *v35 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_75:
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v38 = 136315906;
          *&v38[4] = "operator[]";
          v39 = 1024;
          v40 = 797;
          v41 = 2048;
          v42 = v6;
          v43 = 2048;
          v44 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_76:
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v38 = 136315906;
          *&v38[4] = "operator[]";
          v39 = 1024;
          v40 = 789;
          v41 = 2048;
          v42 = 0;
          v43 = 2048;
          v44 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_77:
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v38 = 136315906;
          *&v38[4] = "operator[]";
          v39 = 1024;
          v40 = 789;
          v41 = 2048;
          v42 = 1;
          v43 = 2048;
          v44 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_78:
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v38 = 136315906;
          *&v38[4] = "operator[]";
          v39 = 1024;
          v40 = 797;
          v41 = 2048;
          v42 = v6;
          v43 = 2048;
          v44 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_70:
        *v38 = 0;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        *v45 = 0u;
        v3 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v33 = 136315906;
        *&v33[4] = "operator[]";
        *&v33[12] = 1024;
        *&v33[14] = 789;
        *&v33[18] = 2048;
        *&v33[20] = v7;
        v34 = 2048;
        *v35 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_71;
      }

LABEL_69:
      *v38 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      *v45 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v33 = 136315906;
      *&v33[4] = "operator[]";
      *&v33[12] = 1024;
      *&v33[14] = 789;
      *&v33[18] = 2048;
      *&v33[20] = v6;
      v34 = 2048;
      *v35 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_70;
    }

LABEL_14:
    ++v3;
  }

  while (v3 != v4);
  return this;
}

uint64_t re::internal::GeomConnectivityNonManifold::fetchReachableFacesFromFaceVertex(uint64_t result, unsigned int a2, uint64_t a3, void *a4)
{
  v7 = result;
  v34 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v8 = a4[2];
  if (v8)
  {
    v9 = 4 * v8;
    v10 = a4[4];
    while (*v10 != a2)
    {
      ++v10;
      v9 -= 4;
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v10 = a4[4];
  }

  if (v10 == (a4[4] + 4 * v8))
  {
LABEL_8:
    re::DynamicArray<int>::add(a4, &v17);
    result = re::internal::GeomConnectivityNonManifold::faceIncidentEdges(v7, v17, v20);
    if (result)
    {
      v11 = 0;
      v12 = result;
      while (1)
      {
        v13 = v20[v11];
        v14 = *(v7 + 8);
        if (v14 <= v13)
        {
          goto LABEL_30;
        }

        if ((*(*(v7 + 10) + v13) & 8) == 0)
        {
          result = re::internal::GeomConnectivityNonManifold::edgeVertices(v7, v20[v11], v19);
          if (v19[0] == a3 || v19[1] == a3)
          {
            v14 = *(v7 + 38);
            if (v13)
            {
              v4 = (v13 - 1);
              if (v14 <= v4)
              {
                goto LABEL_32;
              }

              v4 = *(*(v7 + 40) + 4 * v4);
            }

            else
            {
              v4 = 0;
            }

            if (v14 <= v13)
            {
              goto LABEL_31;
            }

            v14 = *(*(v7 + 40) + 4 * v13);
            if (v4 < v14)
            {
              break;
            }
          }
        }

LABEL_27:
        if (++v11 == v12)
        {
          return result;
        }
      }

      while (1)
      {
        v13 = *(v7 + 43);
        if (v13 <= v4)
        {
          break;
        }

        v16 = *(*(v7 + 45) + 4 * v4);
        if (v16 != v17)
        {
          result = re::internal::GeomConnectivityNonManifold::fetchReachableFacesFromFaceVertex(v7, v16, a3, a4);
        }

        if (v14 == ++v4)
        {
          goto LABEL_27;
        }
      }

      v18 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      v24 = 797;
      v25 = 2048;
      v26 = v4;
      v27 = 2048;
      v28 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v18 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      v24 = 797;
      v25 = 2048;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v18 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      v24 = 797;
      v25 = 2048;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v18 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      v24 = 797;
      v25 = 2048;
      v26 = v4;
      v27 = 2048;
      v28 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

unsigned int *re::internal::GeomConnectivityNonManifold::classifyVertices(unsigned int *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = this[26];
  if (this[26])
  {
    v2 = this;
    v3 = 0;
    do
    {
      if (v3)
      {
        v4 = (v3 - 1);
        v5 = *(v2 + 13);
        if (v5 <= v4)
        {
          goto LABEL_33;
        }

        v6 = *(*(v2 + 15) + 4 * v4);
      }

      else
      {
        v6 = 0;
        v5 = *(v2 + 13);
      }

      v4 = v3;
      if (v5 <= v3)
      {
        *v14 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v11 = 136315906;
        *&v11[4] = "operator[]";
        *&v11[12] = 1024;
        *&v11[14] = 797;
        *&v11[18] = 2048;
        *&v11[20] = v3;
        v12 = 2048;
        *v13 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_31:
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v14 = 136315906;
        *&v14[4] = "operator[]";
        v15 = 1024;
        v16 = 797;
        v17 = 2048;
        v18 = v3;
        v19 = 2048;
        v20 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_32:
        *v14 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v11 = 136315906;
        *&v11[4] = "operator[]";
        *&v11[12] = 1024;
        *&v11[14] = 789;
        *&v11[18] = 2048;
        *&v11[20] = v3;
        v12 = 2048;
        *v13 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_33:
        *v14 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v11 = 136315906;
        *&v11[4] = "operator[]";
        *&v11[12] = 1024;
        *&v11[14] = 797;
        *&v11[18] = 2048;
        *&v11[20] = v4;
        v12 = 2048;
        *v13 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_34:
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v14 = 136315906;
        *&v14[4] = "operator[]";
        v15 = 1024;
        v16 = 789;
        v17 = 2048;
        v18 = v4;
        v19 = 2048;
        v20 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_35:
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v14 = 136315906;
        *&v14[4] = "operator[]";
        v15 = 1024;
        v16 = 789;
        v17 = 2048;
        v18 = v5;
        v19 = 2048;
        v20 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v14 = 136315906;
        *&v14[4] = "operator[]";
        v15 = 1024;
        v16 = 789;
        v17 = 2048;
        v18 = v3;
        v19 = 2048;
        v20 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_37:
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v14 = 136315906;
        *&v14[4] = "operator[]";
        v15 = 1024;
        v16 = 789;
        v17 = 2048;
        v18 = 0;
        v19 = 2048;
        v20 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(*(v2 + 15) + 4 * v3);
      if (v7 == v6 || v7 - v6 > re::internal::GeomConnectivityNonManifold::vertexFaceCount(v2, v3) + 1)
      {
        v5 = *(v2 + 8);
        if (v5 <= v3)
        {
          goto LABEL_32;
        }

        *(*(v2 + 10) + v3) |= 2u;
      }

      ++v3;
    }

    while (v1 != v3);
    v3 = 0;
    *&v13[2] = 0;
    memset(v11, 0, sizeof(v11));
    do
    {
      v5 = *(v2 + 8);
      if (v5 <= v3)
      {
        goto LABEL_31;
      }

      if ((*(*(v2 + 10) + v3) & 2) == 0)
      {
        if (v3)
        {
          v4 = v3 - 1;
          v5 = *(v2 + 18);
          if (v5 <= v3 - 1)
          {
            goto LABEL_34;
          }

          v5 = *(*(v2 + 20) + 4 * v3 - 4);
          v4 = *(v2 + 28);
          if (v4 <= v5)
          {
            goto LABEL_35;
          }

          v8 = (*(v2 + 30) + 4 * v5);
        }

        else
        {
          if (!*(v2 + 28))
          {
            goto LABEL_37;
          }

          v8 = *(v2 + 30);
        }

        v9 = *v8;
        *&v11[16] = 0;
        ++*&v11[24];
        re::internal::GeomConnectivityNonManifold::fetchReachableFacesFromFaceVertex(v2, v9, v3, v11);
        v10 = *&v11[16];
        if (v10 != re::internal::GeomConnectivityNonManifold::vertexFaceCount(v2, v3))
        {
          v5 = *(v2 + 8);
          if (v5 <= v3)
          {
            goto LABEL_36;
          }

          *(*(v2 + 10) + v3) |= 2u;
        }
      }

      ++v3;
    }

    while (v1 != v3);
    this = *v11;
    if (*v11)
    {
      if (*&v13[2])
      {
        return (*(**v11 + 40))();
      }
    }
  }

  return this;
}