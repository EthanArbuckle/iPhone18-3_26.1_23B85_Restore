void re::anonymous namespace::PlanarRegions::faces(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2 - 1;
    v6 = a1[14];
    if (v6 <= v5)
    {
      goto LABEL_15;
    }

    v7 = *(a1[16] + 4 * v5);
  }

  else
  {
    v7 = 0;
    v6 = a1[14];
  }

  if (v6 <= a2)
  {
LABEL_14:
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

  v8 = *(a1[16] + 4 * a2);
  v9 = v8 - v7;
  re::DynamicArray<float>::resize(a3, v9);
  if (v8 != v7)
  {
    v10 = a1[19];
    v11 = *(a3 + 32);
    v12 = *(a3 + 16);
    while (v10 > v7)
    {
      if (!v12)
      {
        goto LABEL_13;
      }

      *v11++ = *(a1[21] + 4 * v7);
      --v12;
      ++v7;
      if (!--v9)
      {
        return;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }
}

double re::internal::extractMeshFromFaceSubset@<D0>(_anonymous_namespace_ *a1@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, re::GeomMesh *a5@<X8>)
{
  v8 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v75 = 0u;
  v76 = 0u;
  v9 = 3 * a3;
  v73 = 0u;
  v74 = 0u;
  v72 = 0;
  v11 = (a2 + 4 * a3);
  if (a3)
  {
    v12 = a2;
    while (1)
    {
      v13 = *v12;
      v14 = *(v8 + 40);
      if (v14 <= v13)
      {
        break;
      }

      v15 = 0;
      *v81 = *(*(v8 + 56) + 16 * v13);
      if (HIDWORD(v81[1]) == -1)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

      do
      {
        v97[0] = *(v81 + v15);
        if (re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v73, v97) == -1)
        {
          re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(&v73, v97, &v72);
          ++v72;
        }

        ++v15;
      }

      while (v5 != v15);
      v12 += 4;
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    *v94 = 0;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    *v81 = 0u;
    v82 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v97[0] = 136315906;
    *&v97[1] = "operator[]";
    LOWORD(v97[3]) = 1024;
    *(&v97[3] + 2) = 797;
    HIWORD(v97[4]) = 2048;
    *&v97[5] = v13;
    LOWORD(v97[7]) = 2048;
    *(&v97[7] + 2) = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_75;
  }

LABEL_11:
  re::GeomMesh::GeomMesh(a5, 0);
  bzero(v81, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v82, 1uLL);
  ++DWORD2(v83);
  re::internal::GeomAttributeManager::GeomAttributeManager((&v84 + 8));
  re::internal::GeomAttributeManager::addAttribute((&v84 + 8), "vertexPosition", 1, 7);
  if (v83 > a3)
  {
    v17 = v93;
    if (v93)
    {
      LODWORD(v10) = 0;
      do
      {
        v18 = re::internal::GeomAttributeContainer::attributeByIndex(v92, v10);
        re::internal::accessFaceVaryingAttributeSubmesh(v18, v19);
        v10 = (v10 + 1);
      }

      while (v17 != v10);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v82, a3);
  v89 = a3;
  if (v90)
  {
    v20 = v91;
    v21 = 8 * v90;
    do
    {
      v22 = *v20++;
      (*(*v22 + 80))(v22, v89);
      v21 -= 8;
    }

    while (v21);
  }

  v69 = a2;
  LODWORD(v81[1]) = v72;
  v86 = v72;
  if (v87)
  {
    v23 = v88;
    v24 = 8 * v87;
    do
    {
      v25 = *v23++;
      (*(*v25 + 80))(v25, v86);
      v24 -= 8;
    }

    while (v24);
  }

  v67 = a3;
  if (a3)
  {
    v26 = 0;
    v5 = &v78;
    v27 = v69;
    v71 = v8;
    while (1)
    {
      v12 = *v27;
      v14 = *(v8 + 40);
      if (v14 <= v12)
      {
        break;
      }

      v28 = 0;
      v29 = *(v8 + 56) + 16 * v12;
      do
      {
        *(&v78 + v28) = *(v29 + v28);
        v28 += 4;
      }

      while (v28 != 16);
      v14 = v80;
      if (v80 == -1)
      {
        v30 = 3;
      }

      else
      {
        v30 = 4;
      }

      v31 = &v78;
      do
      {
        v32 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v73, v31);
        *v31++ = *(*(&v73 + 1) + 8 * v32 + 4);
        --v30;
      }

      while (v30);
      v12 = v26;
      v10 = v83;
      if (v83 <= v26)
      {
        goto LABEL_76;
      }

      v8 = v11;
      v33 = (v84 + 16 * v26);
      if (*v33 != -1)
      {
        v34 = v33[3];
        v35 = v14 == -1 || v80 == -1;
        v36 = v35;
        if ((((v34 != -1) ^ v36) & 1) == 0)
        {
          LODWORD(v11) = v93;
          if (v93)
          {
            v37 = 0;
            do
            {
              v38 = re::internal::GeomAttributeContainer::attributeByIndex(v92, v37);
              re::internal::accessFaceVaryingAttributeSubmesh(v38, v39);
              ++v37;
            }

            while (v11 != v37);
            v10 = v83;
          }
        }
      }

      if (v10 <= v26)
      {
        goto LABEL_77;
      }

      v41 = v79;
      v40 = v80;
      if (v14 == -1)
      {
        v40 = -1;
      }

      v42 = v84 + 16 * v26;
      *v42 = v78;
      *(v42 + 8) = v41;
      *(v42 + 12) = v40;
      ++v26;
      v27 = (v27 + 4);
      v11 = v8;
      v35 = v27 == v8;
      v8 = v71;
      if (v35)
      {
        goto LABEL_49;
      }
    }

LABEL_75:
    v78 = 0;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *&v94[4] = "operator[]";
    *&v94[12] = 1024;
    *&v94[14] = 797;
    *&v94[18] = 2048;
    *&v94[20] = v12;
    v95 = 2048;
    v96 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_76:
    v77 = 0;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *&v94[4] = "operator[]";
    *&v94[12] = 1024;
    *&v94[14] = 797;
    *&v94[18] = 2048;
    *&v94[20] = v12;
    v95 = 2048;
    v96 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v77 = 0;
    v62 = v94;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *&v94[4] = "operator[]";
    *&v94[12] = 1024;
    *&v94[14] = 789;
    *&v94[18] = 2048;
    *&v94[20] = v12;
    v95 = 2048;
    v96 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_78;
  }

LABEL_49:
  v43 = re::GeomMesh::operator=(a5, &v81[1]);
  re::GeomMesh::setName(v43, v81[0]);
  re::GeomMesh::freeName(v81);
  re::GeomMesh::freeName(v81);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v84 + 8));
  if (v82 && v84)
  {
    (*(*v82 + 40))();
  }

  v44 = re::GeomMesh::accessVertexPositions(v8);
  LODWORD(v10) = v45;
  v46 = re::GeomMesh::modifyVertexPositions(a5);
  *v94 = &v73;
  v14 = v94;
  if (v74 >= 0x10)
  {
    v48 = v46;
    LODWORD(v11) = v47;
    v49 = 0;
    v50 = v73;
    v51 = v74 >> 4;
    while (1)
    {
      v52 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v50), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *&v94[8] = v52 ^ 0xFFFFLL;
      if (v52 != 0xFFFFLL)
      {
        break;
      }

      v49 -= 16;
      ++v50;
      if (!--v51)
      {
        goto LABEL_61;
      }
    }

    v53 = __clz(__rbit64(v52 ^ 0xFFFFLL));
    v54 = v53 - v49;
    *&v94[16] = v53 - v49;
    if (v53 + 1 != v49)
    {
      do
      {
        v55 = (*(*v94 + 8) + 8 * v54);
        v56 = *v55;
        if (v56 >= v10)
        {
          goto LABEL_80;
        }

        v5 = v55[1];
        if (v5 >= v11)
        {
          goto LABEL_81;
        }

        *(v48 + 16 * v5) = *(v44 + 16 * v56);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v94);
        v54 = *&v94[16];
      }

      while (*&v94[16] != -1);
    }
  }

LABEL_61:
  LODWORD(v11) = v69;
  if (a4)
  {
    v57 = re::internal::GeomAttributeManager::attributeByName((v8 + 64), a4);
    if (v57)
    {
      v58 = v57;
      v59 = re::GeomMesh::addAttribute(a5, a4, *(v57 + 16), *(v57 + 17));
      if (v59)
      {
        v60 = v59;
        v14 = re::GeomAttribute::accessValues<int>(v58);
        LODWORD(v62) = v61;
        if ((*(*v60 + 16))(v60))
        {
          LODWORD(v10) = v67;
          if (!v60[5])
          {
            goto LABEL_82;
          }

          v63 = v60[7];
          v56 = (*(*v60 + 16))(v60);
          if (!v67)
          {
            return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v73);
          }
        }

        else
        {
          v56 = 0;
          v63 = 0;
          LODWORD(v10) = v67;
          if (!v67)
          {
            return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v73);
          }
        }

        v64 = 0;
        v65 = 4 * v67;
        while (1)
        {
          v8 = *(v69 + v64);
          if (v8 >= v62)
          {
            break;
          }

          if (v56 == v64)
          {
            goto LABEL_79;
          }

          *(v63 + 4 * v64++) = *(v14 + 4 * v8);
          v65 -= 4;
          if (!v65)
          {
            return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v73);
          }
        }

LABEL_78:
        v56 = v94;
        *v94 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        *v81 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0] = 136315906;
        *&v97[1] = "operator[]";
        LOWORD(v97[3]) = 1024;
        *(&v97[3] + 2) = 613;
        HIWORD(v97[4]) = 2048;
        *&v97[5] = v8;
        LOWORD(v97[7]) = 2048;
        *(&v97[7] + 2) = v62;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v5 = v94;
        *v94 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        *v81 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0] = 136315906;
        *&v97[1] = "operator[]";
        LOWORD(v97[3]) = 1024;
        *(&v97[3] + 2) = 621;
        HIWORD(v97[4]) = 2048;
        *&v97[5] = v56;
        LOWORD(v97[7]) = 2048;
        *(&v97[7] + 2) = v56;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_80:
        v78 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        *v81 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0] = 136315906;
        *(v14 + 52) = "operator[]";
        LOWORD(v97[3]) = 1024;
        *(v14 + 62) = 613;
        HIWORD(v97[4]) = 2048;
        *(v14 + 68) = v56;
        LOWORD(v97[7]) = 2048;
        *(v14 + 78) = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_81:
        v78 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        *v81 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0] = 136315906;
        *(v14 + 52) = "operator[]";
        LOWORD(v97[3]) = 1024;
        *(v14 + 62) = 621;
        HIWORD(v97[4]) = 2048;
        *(v14 + 68) = v5;
        LOWORD(v97[7]) = 2048;
        *(v14 + 78) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_82:
        *v94 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        *v81 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97[0] = 136315906;
        *&v97[1] = "operator[]";
        LOWORD(v97[3]) = 1024;
        *(&v97[3] + 2) = 789;
        HIWORD(v97[4]) = 2048;
        *&v97[5] = 0;
        LOWORD(v97[7]) = 2048;
        *(&v97[7] + 2) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }
  }

  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v73);
}

uint64_t re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(uint64_t this, const re::GeomMesh *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  *(this + 16) = 0;
  ++*(this + 24);
  *(this + 56) = 0;
  ++*(this + 64);
  v3 = *(a2 + 5);
  if (v3)
  {
    v5 = this;
    v27 = 0;
    v6 = v3;
    v24[1] = 0;
    v25 = 0;
    v24[0] = 0;
    v26 = 0;
    re::DynamicArray<re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair>::resize(v24, v3);
    *&v31[2] = 0;
    memset(v29, 0, sizeof(v29));
    v23 = 0;
    v20[1] = 0;
    v21 = 0;
    v20[0] = 0;
    v22 = 0;
    ConnectedComponents = re::findConnectedComponents(a2, v29, v20);
    v8 = 0;
    v9 = v25;
    v10 = v27;
    v11 = v21;
    v12 = v23;
    v13 = (v27 + 4);
    while (1)
    {
      if (v9 == v8)
      {
        goto LABEL_29;
      }

      *(v13 - 1) = v8;
      if (v11 == v8)
      {
        break;
      }

      *v13 = *(v12 + 4 * v8);
      v13 += 2;
      if (v6 == ++v8)
      {
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,false>(v10, (v10 + 8 * v9), &v40, 126 - 2 * __clz(v9), 1);
        if (v20[0] && v23)
        {
          (*(*v20[0] + 40))();
        }

        if (*v29 && *&v31[2])
        {
          (*(**v29 + 40))();
        }

        LODWORD(v40) = 0;
        re::DynamicArray<unsigned int>::resize(v5, ConnectedComponents, &v40);
        re::DynamicArray<unsigned int>::resize(v5 + 5, v6, &re::kInvalidMeshIndex);
        v9 = 0;
        v14 = 0;
        ConnectedComponents = v25;
        v15 = v27;
        while (1)
        {
          if (ConnectedComponents <= v9)
          {
            goto LABEL_31;
          }

          if (v9 >= v6)
          {
            goto LABEL_22;
          }

          v16 = v15 + 8 * v9;
          v19 = *(v16 + 4);
          v17 = (v16 + 4);
          v18 = v19;
          while (1)
          {
            if (ConnectedComponents == v9)
            {
              v20[0] = 0;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v40 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v29 = 136315906;
              *&v29[4] = "operator[]";
              *&v29[12] = 1024;
              *&v29[14] = 789;
              *&v29[18] = 2048;
              *&v29[20] = ConnectedComponents;
              v30 = 2048;
              *v31 = ConnectedComponents;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_28:
              v20[0] = 0;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v40 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v29 = 136315906;
              *&v29[4] = "operator[]";
              *&v29[12] = 1024;
              *&v29[14] = 789;
              *&v29[18] = 2048;
              *&v29[20] = v9;
              v30 = 2048;
              *v31 = v11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_29:
              v28 = 0;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v40 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v32 = 136315906;
              v33 = "operator[]";
              v34 = 1024;
              v35 = 789;
              v36 = 2048;
              v37 = v9;
              v38 = 2048;
              v39 = v9;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_30;
            }

            if (*v17 != v18)
            {
              break;
            }

            v11 = v5[7];
            if (v11 <= v9)
            {
              goto LABEL_28;
            }

            *(v5[9] + 4 * v9++) = *(v17 - 1);
            v17 += 2;
            if (v6 == v9)
            {
              v9 = v6;
              goto LABEL_22;
            }
          }

          v9 = v9;
LABEL_22:
          v11 = v14;
          v2 = v5[2];
          if (v2 <= v14)
          {
            goto LABEL_32;
          }

          *(v5[4] + 4 * v14++) = v9;
          if (v9 >= v6)
          {
            this = v24[0];
            if (v24[0])
            {
              return (*(*v24[0] + 40))(v24[0]);
            }

            return this;
          }
        }
      }
    }

LABEL_30:
    v28 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    v35 = 789;
    v36 = 2048;
    v37 = v11;
    v38 = 2048;
    v39 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v20[0] = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v29 = 136315906;
    *&v29[4] = "operator[]";
    *&v29[12] = 1024;
    *&v29[14] = 789;
    *&v29[18] = 2048;
    *&v29[20] = v9;
    v30 = 2048;
    *v31 = ConnectedComponents;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v20[0] = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v29 = 136315906;
    *&v29[4] = "operator[]";
    *&v29[12] = 1024;
    *&v29[14] = 789;
    *&v29[18] = 2048;
    *&v29[20] = v11;
    v30 = 2048;
    *v31 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

void re::DynamicArray<re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 8 * v4), 8 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (a2[-1].i32[3] >= v9->i32[1])
        {
          return result;
        }

        v46 = v9->i64[0];
LABEL_81:
        v9->i64[0] = a2[-1].i64[1];
        goto LABEL_82;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v47 = v9->u32[3];
      v48 = v9->u32[1];
      LODWORD(v49) = v9[1].i32[1];
      if (v47 >= v48)
      {
        if (v49 < v47)
        {
          v53 = v9->u64[1];
          v54 = v9[1].i64[0];
          v9->i64[1] = v54;
          v9[1].i64[0] = v53;
          v49 = HIDWORD(v53);
          if (v48 > HIDWORD(v54))
          {
            v55 = v9->i64[0];
            v9->i64[0] = v54;
            v9->i64[1] = v55;
          }
        }
      }

      else
      {
        v50 = v9->i64[0];
        v51 = HIDWORD(v9->i64[0]);
        if (v49 < v47)
        {
          v9->i64[0] = v9[1].i64[0];
          goto LABEL_110;
        }

        v9->i64[0] = v9->i64[1];
        v9->i64[1] = v50;
        if (v49 < v51)
        {
          v9->i64[1] = v9[1].i64[0];
LABEL_110:
          v9[1].i64[0] = v50;
          LODWORD(v49) = v51;
        }
      }

      if (a2[-1].i32[3] < v49)
      {
        v64 = v9[1].i64[0];
        v9[1].i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v64;
        if (v9[1].i32[1] < v9->i32[3])
        {
          v66 = v9->i64[1];
          v65 = v9[1].i64[0];
          v9->i64[1] = v65;
          v9[1].i64[0] = v66;
          if (v9->i32[1] > HIDWORD(v65))
          {
            v67 = v9->i64[0];
            v9->i64[0] = v65;
            v9->i64[1] = v67;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(v9, &v9->u64[1], &v9[1], &v9[1].u64[1], &a2[-1].u64[1]);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(v9, a2);
      }

      else if (v9 != a2)
      {
        while ((v8 + 8) != a2)
        {
          v56 = *(v8 + 12);
          v57 = *(v8 + 4);
          v63 = (v8 + 8);
          v8 += 8;
          if (v56 < v57)
          {
            v58 = *v63;
            v59 = HIDWORD(*v8);
            v60 = v8;
            do
            {
              v61 = v60;
              v62 = *--v60;
              *v61 = v62;
            }

            while (*(v61 - 3) > v59);
            *v60 = v58;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9->i8[8 * (v12 >> 1)];
    v14 = a2[-1].u32[3];
    if (v12 >= 0x81)
    {
      v15 = *(v13 + 1);
      if (v15 >= v9->i32[1])
      {
        if (v14 < v15)
        {
          v19 = *v13;
          *v13 = a2[-1].i64[1];
          a2[-1].i64[1] = v19;
          if (*(v13 + 1) < v9->i32[1])
          {
            v20 = v9->i64[0];
            v9->i64[0] = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        v16 = v9->i64[0];
        if (v14 < v15)
        {
          v9->i64[0] = a2[-1].i64[1];
          goto LABEL_29;
        }

        v9->i64[0] = *v13;
        *v13 = v16;
        if (a2[-1].i32[3] < HIDWORD(v16))
        {
          *v13 = a2[-1].i64[1];
LABEL_29:
          a2[-1].i64[1] = v16;
        }
      }

      v23 = (v13 - 8);
      v24 = *(v13 - 1);
      v25 = a2[-1].u32[1];
      if (v24 >= v9->i32[3])
      {
        if (v25 < v24)
        {
          v27 = *v23;
          *v23 = a2[-1].i64[0];
          a2[-1].i64[0] = v27;
          if (*(v13 - 1) < v9->i32[3])
          {
            v28 = v9->i64[1];
            v9->i64[1] = *v23;
            *v23 = v28;
          }
        }
      }

      else
      {
        v26 = v9->i64[1];
        if (v25 < v24)
        {
          v9->i64[1] = a2[-1].i64[0];
          goto LABEL_43;
        }

        v9->i64[1] = *v23;
        *v23 = v26;
        if (a2[-1].i32[1] < HIDWORD(v26))
        {
          *v23 = a2[-1].i64[0];
LABEL_43:
          a2[-1].i64[0] = v26;
        }
      }

      v29 = *(v13 + 3);
      v30 = a2[-2].u32[3];
      if (v29 >= v9[1].i32[1])
      {
        if (v30 < v29)
        {
          v32 = *(v13 + 1);
          *(v13 + 1) = a2[-2].i64[1];
          a2[-2].i64[1] = v32;
          if (*(v13 + 3) < v9[1].i32[1])
          {
            v33 = v9[1].i64[0];
            v9[1].i64[0] = *(v13 + 1);
            *(v13 + 1) = v33;
          }
        }
      }

      else
      {
        v31 = v9[1].i64[0];
        if (v30 < v29)
        {
          v9[1].i64[0] = a2[-2].i64[1];
          goto LABEL_52;
        }

        v9[1].i64[0] = *(v13 + 1);
        *(v13 + 1) = v31;
        if (a2[-2].i32[3] < HIDWORD(v31))
        {
          *(v13 + 1) = a2[-2].i64[1];
LABEL_52:
          a2[-2].i64[1] = v31;
        }
      }

      v34 = *(v13 + 1);
      v35 = *(v13 - 1);
      v36 = *(v13 + 3);
      if (v34 >= v35)
      {
        v37 = *v13;
        if (v36 < v34)
        {
          v38 = *(v13 + 1);
          *v13 = v38;
          *(v13 + 1) = v37;
          if (v35 <= HIDWORD(v38))
          {
            v37 = v38;
          }

          else
          {
            v37 = *v23;
            *v23 = v38;
            *v13 = v37;
          }
        }
      }

      else
      {
        v37 = *v23;
        if (v36 >= v34)
        {
          *v23 = *v13;
          *v13 = v37;
          if (v36 < HIDWORD(v37))
          {
            v39 = *(v13 + 1);
            *v13 = v39;
            *(v13 + 1) = v37;
            v37 = v39;
          }
        }

        else
        {
          *v23 = *(v13 + 1);
          *(v13 + 1) = v37;
          v37 = *v13;
        }
      }

      v40 = v9->i64[0];
      v9->i64[0] = v37;
      *v13 = v40;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v17 = v9->u32[1];
    if (v17 < *(v13 + 1))
    {
      v18 = *v13;
      if (v14 < v17)
      {
        *v13 = a2[-1].i64[1];
        goto LABEL_38;
      }

      *v13 = v9->i64[0];
      v9->i64[0] = v18;
      if (a2[-1].i32[3] < HIDWORD(v18))
      {
        v9->i64[0] = a2[-1].i64[1];
LABEL_38:
        a2[-1].i64[1] = v18;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v14 >= v17)
    {
      goto LABEL_39;
    }

    v21 = v9->i64[0];
    v9->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v21;
    if (v9->i32[1] >= *(v13 + 1))
    {
      goto LABEL_39;
    }

    v22 = *v13;
    *v13 = v9->i64[0];
    v9->i64[0] = v22;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (v9[-1].i32[3] >= v9->i32[1])
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v41 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,std::__less<void,void> &>(v9->i64, a2->i64);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(v9, v41);
    v9 = (v41 + 1);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>((v41 + 1), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = (v41 + 1);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = v9->u32[3];
  v45 = a2[-1].u32[3];
  if (v44 < v9->i32[1])
  {
    v46 = v9->i64[0];
    if (v45 < v44)
    {
      goto LABEL_81;
    }

    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v46;
    if (a2[-1].i32[3] >= HIDWORD(v46))
    {
      return result;
    }

    v9->i64[1] = a2[-1].i64[1];
LABEL_82:
    a2[-1].i64[1] = v46;
    return result;
  }

  if (v45 < v44)
  {
    v52 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v52;
    if (v9->i32[3] < v9->i32[1])
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(a2 + 1);
  LODWORD(v6) = *(a3 + 1);
  if (v5 >= *(result + 1))
  {
    if (v6 < v5)
    {
      v8 = *a2;
      *a2 = *a3;
      *a3 = v8;
      if (*(a2 + 1) >= *(result + 1))
      {
        v6 = HIDWORD(v8);
      }

      else
      {
        v6 = *result;
        *result = *a2;
        *a2 = v6;
        LODWORD(v6) = *(a3 + 1);
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 >= v5)
    {
      *result = *a2;
      *a2 = v7;
      LODWORD(v6) = *(a3 + 1);
      if (v6 < HIDWORD(v7))
      {
        *a2 = *a3;
        *a3 = v7;
        v6 = HIDWORD(v7);
      }
    }

    else
    {
      *result = *a3;
      *a3 = v7;
      v6 = HIDWORD(v7);
    }
  }

  if (*(a4 + 1) < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*(a2 + 1) < *(result + 1))
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*(a2 + 1) < *(result + 1))
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 3);
        v6 = *(v4 + 1);
        v4 = v2;
        if (v5 < v6)
        {
          v7 = *v2;
          v8 = HIDWORD(*v4);
          v9 = v3;
          while (1)
          {
            *(result + v9 + 8) = *(result + v9);
            if (!v9)
            {
              break;
            }

            v10 = *(result + v9 - 4);
            v9 -= 8;
            if (v10 <= v8)
            {
              v11 = (result + v9 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,std::__less<void,void> &>(void *a1, void *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  if (*(a2 - 1) <= v3)
  {
    v7 = a1 + 1;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7++ + 1);
    }

    while (v8 <= v3);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 1);
      v6 = *(v4++ + 3);
    }

    while (v6 <= v3);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 1;
      v10 = *(a2-- - 1);
    }

    while (v10 > v3);
  }

  while (v5 < v9)
  {
    v11 = *v5;
    *v5 = *v9;
    *v9 = v11;
    do
    {
      v12 = *(v5 + 12);
      v5 += 8;
    }

    while (v12 <= v3);
    do
    {
      v13 = *(v9-- - 1);
    }

    while (v13 > v3);
  }

  if ((v5 - 8) != a1)
  {
    *a1 = *(v5 - 8);
  }

  *(v5 - 8) = v2;
  return v5;
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIDWORD(*a1);
  do
  {
    v5 = HIDWORD(a1[++v2]);
  }

  while (v5 < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    while (v6 < a2)
    {
      v8 = a2 - 1;
      v10 = *(a2-- - 1);
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 1;
      v9 = *(a2-- - 1);
    }

    while (v9 >= v4);
  }

LABEL_9:
  if (v6 < v8)
  {
    v11 = v6;
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11 + 12);
        v11 += 8;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12-- - 1);
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
    v7 = (v11 - 8);
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1->u32[3];
      v5 = a2[-1].u32[3];
      if (v4 >= a1->i32[1])
      {
        if (v5 < v4)
        {
          v15 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v15;
          if (a1->i32[3] < a1->i32[1])
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = a1->i64[0];
      if (v5 >= v4)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v3;
        if (a2[-1].i32[3] >= HIDWORD(v3))
        {
          return 1;
        }

        a1->i64[1] = a2[-1].i64[1];
        goto LABEL_13;
      }

LABEL_12:
      a1->i64[0] = a2[-1].i64[1];
LABEL_13:
      a2[-1].i64[1] = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(a1, &a1->u64[1], &a1[1], &a1[1].u64[1], &a2[-1].u64[1]);
        return 1;
      }

      goto LABEL_14;
    }

    v10 = a1->u32[3];
    v11 = a1->u32[1];
    LODWORD(v12) = a1[1].i32[1];
    if (v10 >= v11)
    {
      if (v12 < v10)
      {
        v19 = a1->u64[1];
        v20 = a1[1].i64[0];
        a1->i64[1] = v20;
        a1[1].i64[0] = v19;
        v12 = HIDWORD(v19);
        if (v11 > HIDWORD(v20))
        {
          v21 = a1->i64[0];
          a1->i64[0] = v20;
          a1->i64[1] = v21;
        }
      }

      goto LABEL_48;
    }

    v13 = a1->i64[0];
    v14 = HIDWORD(a1->i64[0]);
    if (v12 >= v10)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v13;
      if (v12 >= v14)
      {
LABEL_48:
        if (a2[-1].i32[3] < v12)
        {
          v31 = a1[1].i64[0];
          a1[1].i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v31;
          if (a1[1].i32[1] < a1->i32[3])
          {
            v33 = a1->i64[1];
            v32 = a1[1].i64[0];
            a1->i64[1] = v32;
            a1[1].i64[0] = v33;
            if (a1->i32[1] > HIDWORD(v32))
            {
              v34 = a1->i64[0];
              a1->i64[0] = v32;
              a1->i64[1] = v34;
            }
          }
        }

        return 1;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v13;
    LODWORD(v12) = v14;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (a2[-1].i32[3] < a1->i32[1])
    {
      v3 = a1->i64[0];
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1->u32[3];
  v7 = a1->u32[1];
  v8 = a1[1].u32[1];
  if (v6 >= v7)
  {
    if (v8 < v6)
    {
      v17 = a1->i64[1];
      v16 = a1[1].i64[0];
      a1->i64[1] = v16;
      a1[1].i64[0] = v17;
      if (v7 > HIDWORD(v16))
      {
        v18 = a1->i64[0];
        a1->i64[0] = v16;
        a1->i64[1] = v18;
      }
    }
  }

  else
  {
    v9 = a1->i64[0];
    if (v8 >= v6)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v9;
      if (v8 >= HIDWORD(v9))
      {
        goto LABEL_34;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v9;
  }

LABEL_34:
  v22 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 1;
  while (1)
  {
    if (v22->i32[1] < v25->i32[1])
    {
      v26 = v22->i64[0];
      v27 = HIDWORD(v22->i64[0]);
      v28 = v23;
      while (1)
      {
        *(&a1[1].i64[1] + v28) = *(a1[1].i64 + v28);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(&a1->u32[3] + v28);
        v28 -= 8;
        if (v29 <= v27)
        {
          v30 = (&a1[1].i64[1] + v28);
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      if (++v24 == 8)
      {
        return &v22->u64[1] == a2;
      }
    }

    v25 = v22;
    v23 += 8;
    v22 = (v22 + 8);
    if (v22 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 8 * v9);
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*(v12 + 1) < *(a1 + 4))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v19;
          }

          else
          {
            v20 = *(v17 + 3);
            v21 = *(v17 + 5);
            v22 = v17 + 2;
            if (v20 >= v21)
            {
              v14 = v19;
            }

            else
            {
              v18 = v22;
            }
          }

          *v16 = *v18;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(a1, (v18 + 1), a4, (v18 - a1 + 8) >> 3);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 1);
        v11 = *(v8 + 3);
        v8 += v10 < v11;
        if (v10 < v11)
        {
          v7 = v9;
        }
      }

      if (*(v8 + 1) >= *(a4 + 1))
      {
        v12 = *a4;
        v13 = HIDWORD(*a4);
        do
        {
          v14 = a4;
          a4 = v8;
          *v14 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v15 = (2 * v7) | 1;
          v8 = (result + 8 * v15);
          v16 = 2 * v7 + 2;
          if (v16 < a3)
          {
            v17 = *(v8 + 1);
            v18 = *(v8 + 3);
            v8 += v17 < v18;
            if (v17 < v18)
            {
              v15 = v16;
            }
          }

          v7 = v15;
        }

        while (*(v8 + 1) >= v13);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 8 * v4;
    if (*(v5 + 4) < *(a2 - 4))
    {
      v8 = *(a2 - 8);
      v6 = (a2 - 8);
      v7 = v8;
      v9 = HIDWORD(v8);
      do
      {
        v10 = v6;
        v6 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 8 * v4;
      }

      while (*(v5 + 4) < v9);
      *v6 = v7;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::PlanarRegions::PlanarRegions(re::GeomMesh const&,char const*,float,float)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v126 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (result)
      {
        v80 = v10->i32[0];
        v10->i32[0] = *(a2 - 1);
LABEL_106:
        *(a2 - 1) = v80;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v83 = v10 + 1;
      v85 = v10 == a2 || v83 == a2;
      if (a5)
      {
        if (!v85)
        {
          v86 = 0;
          v87 = v10;
          do
          {
            v89 = *v87;
            v88 = v87[1];
            v87 = v83;
            if (result)
            {
              v90 = *v87;
              v91 = v86;
              while (1)
              {
                *(&v10->i32[1] + v91) = *(v10->i32 + v91);
                if (!v91)
                {
                  break;
                }

                v91 -= 4;
                if ((result & 1) == 0)
                {
                  v92 = (v10 + v91 + 4);
                  goto LABEL_128;
                }
              }

              v92 = v10;
LABEL_128:
              v92->i32[0] = v90;
            }

            v83 = v87 + 1;
            v86 += 4;
          }

          while (v87 + 1 != a2);
        }
      }

      else if (!v85)
      {
        do
        {
          v121 = *v9;
          v120 = v9[1];
          v9 = v83;
          if (result)
          {
            v122 = *v9;
            v123 = v9;
            do
            {
              v124 = v123;
              v125 = *--v123;
              *v124 = v125;
            }

            while ((result & 1) != 0);
            *v123 = v122;
          }

          v83 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v93 = (v11 - 2) >> 1;
        v127 = v93;
        do
        {
          v94 = v93;
          if (v127 >= v93)
          {
            v95 = (2 * v93) | 1;
            v96 = &v9[v95];
            {
              ++v96;
              v95 = 2 * v94 + 2;
            }

            v97 = &v9[v94];
            if ((result & 1) == 0)
            {
              v98 = *v97;
              do
              {
                v99 = v96;
                *v97 = *v96;
                if (v127 < v95)
                {
                  break;
                }

                v100 = (2 * v95) | 1;
                v96 = &v9[v100];
                v101 = 2 * v95 + 2;
                {
                  ++v96;
                  v100 = v101;
                }

                v97 = v99;
                v95 = v100;
              }

              while (!result);
              *v99 = v98;
            }
          }

          v93 = v94 - 1;
        }

        while (v94);
        v102 = v126;
        do
        {
          v103 = v102;
          v104 = 0;
          v128 = *v9;
          v105 = v9;
          do
          {
            v106 = &v105[v104];
            v107 = v106 + 1;
            v108 = (2 * v104) | 1;
            v109 = 2 * v104 + 2;
            if (v109 >= v11)
            {
              v104 = (2 * v104) | 1;
            }

            else
            {
              v111 = v106[2];
              v110 = v106 + 2;
              if (result)
              {
                v107 = v110;
                v104 = v109;
              }

              else
              {
                v104 = v108;
              }
            }

            *v105 = *v107;
            v105 = v107;
          }

          while (v104 <= ((v11 - 2) >> 1));
          v102 = v103 - 1;
          if (v107 == v103 - 1)
          {
            *v107 = v128;
          }

          else
          {
            *v107 = *v102;
            *v102 = v128;
            v112 = (v107 - v9 + 4) >> 2;
            v113 = v112 < 2;
            v114 = v112 - 2;
            if (!v113)
            {
              v115 = v114 >> 1;
              v116 = &v9[v114 >> 1];
              if (result)
              {
                v117 = *v107;
                do
                {
                  v118 = v116;
                  *v107 = *v116;
                  if (!v115)
                  {
                    break;
                  }

                  v115 = (v115 - 1) >> 1;
                  v116 = &v9[v115];
                  v107 = v118;
                }

                while ((result & 1) != 0);
                *v118 = v117;
              }
            }
          }

          v113 = v11-- <= 2;
        }

        while (!v113);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      if (v17)
      {
        v19 = v9[v12];
        if (v18)
        {
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v19;
        }

        else
        {
          v9[v12] = *v9;
          *v9 = v19;
          {
            v31 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = *(a2 - 1);
        *(a2 - 1) = v22;
        {
          v23 = v9[v12];
          v9[v12] = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = *(a2 - 1);
        *(a2 - 1) = v16;
      }

      else
      {
        *v9 = v9[v12];
        v9[v12] = v16;
        {
          v24 = v9[v12];
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9[v12];
      v9[v12] = *(a2 - 1);
      *(a2 - 1) = v20;
      {
        v21 = *v9;
        *v9 = v9[v12];
        v9[v12] = v21;
      }
    }

    v25 = v12 - 1;
    if (v26)
    {
      v28 = v9[1];
      if (v27)
      {
        v9[1] = *(a2 - 2);
        *(a2 - 2) = v28;
      }

      else
      {
        v9[1] = v9[v25];
        v9[v25] = v28;
        {
          v32 = v9[v25];
          v9[v25] = *(a2 - 2);
          *(a2 - 2) = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9[v25];
      v9[v25] = *(a2 - 2);
      *(a2 - 2) = v29;
      {
        v30 = v9[1];
        v9[1] = v9[v25];
        v9[v25] = v30;
      }
    }

    v33 = v12 + 1;
    if (v34)
    {
      v36 = v9[2];
      if (v35)
      {
        v9[2] = *(a2 - 3);
        *(a2 - 3) = v36;
      }

      else
      {
        v9[2] = v9[v33];
        v9[v33] = v36;
        {
          v39 = v9[v33];
          v9[v33] = *(a2 - 3);
          *(a2 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9[v33];
      v9[v33] = *(a2 - 3);
      *(a2 - 3) = v37;
      {
        v38 = v9[2];
        v9[2] = v9[v33];
        v9[v33] = v38;
      }
    }

    if (!v40)
    {
      v43 = v9[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v9[v33];
      v9[v12] = v44;
      v9[v33] = v43;
      v43 = v9[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9[v25];
      v9[v25] = v43;
      v9[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9[v25];
    if (v41)
    {
      v9[v25] = v9[v33];
      v9[v33] = v42;
      v43 = v9[v12];
    }

    else
    {
      v9[v25] = v9[v12];
      v9[v12] = v42;
      v43 = v9[v12];
      if (v47)
      {
        v46 = v9[v33];
        v9[v12] = v46;
        v9[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    v9[v12] = v48;
LABEL_55:
    --a4;
    if (a5)
    {
      v49 = *v9;
LABEL_58:
      v51 = 0;
        ;
      }

      v53 = &v9[v51];
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }
      }

      else
      {
        do
        {
          v55 = *--v54;
        }
      }

      if (v53 >= v54)
      {
        v62 = v53 - 1;
      }

      else
      {
        v57 = &v9[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          do
          {
            v61 = *--v58;
          }
        }

        while (v57 < v58);
        v62 = v57 - 1;
        a2 = v126;
      }

      if (v62 != v9)
      {
        *v9 = *v62;
      }

      *v62 = v49;
      if (v53 < v54)
      {
        goto LABEL_79;
      }

      v10 = (v62 + 1);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_79:
        a5 = 0;
        v10 = (v62 + 1);
      }
    }

    else
    {
      v49 = *v9;
      if (v50)
      {
        goto LABEL_58;
      }

      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v9 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 4);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
    }

    if (v11 == 5)
    {
      if (!result)
      {
        return result;
      }

      v72 = v10[1].u32[1];
      v10[1].i32[1] = *(a2 - 1);
      *(a2 - 1) = v72;
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      v79 = *a3;
      goto LABEL_167;
    }

    goto LABEL_10;
  }

  if (!v81)
  {
    if (!result)
    {
      return result;
    }

    v119 = v10->u32[1];
    v10->i32[1] = *(a2 - 1);
    *(a2 - 1) = v119;
    v79 = *a3;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_167:
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v82 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = *(a2 - 1);
    *(a2 - 1) = v82;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v82;
    if (result)
    {
      v80 = v10->u32[1];
      v10->i32[1] = *(a2 - 1);
      goto LABEL_106;
    }
  }

  return result;
}

BOOL re::anonymous namespace::PlanarRegions::PlanarRegions(re::GeomMesh const&,char const*,float,float)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 72);
  if (v3 <= a3)
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

  if (v3 <= a2)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 88) + 4 * a3) < *(*(a1 + 88) + 4 * a2);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::PlanarRegions::PlanarRegions(re::GeomMesh const&,char const*,float,float)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::PlanarRegions::PlanarRegions(re::GeomMesh const&,char const*,float,float)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (v16)
        {
          v18 = *a1;
          if (v17)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v18;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v18;
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v17)
        {
          return 1;
        }

        v23 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v23;
        v15 = *a3;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        return 1;
      case 5:
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        v15 = *a3;
        break;
      default:
        goto LABEL_17;
    }

    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v20 = (a1 + 8);
  if (v19)
  {
    v22 = *a1;
    if (v21)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v22;
    }

    else
    {
      v27 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v22;
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v21)
  {
    v25 = *(a1 + 4);
    v24 = *(a1 + 8);
    v26 = *a1;
    *(a1 + 4) = v24;
    *(a1 + 8) = v25;
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v28 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    {
      v31 = *v28;
      v32 = v29;
      while (1)
      {
        v33 = a1 + v32;
        *(a1 + v32 + 12) = *(a1 + v32 + 8);
        if (v32 == -8)
        {
          break;
        }

        v32 -= 4;
        {
          v34 = (a1 + v32 + 12);
          goto LABEL_40;
        }
      }

      v34 = a1;
LABEL_40:
      *v34 = v31;
      if (++v30 == 8)
      {
        return v28 + 1 == a2;
      }
    }

    v20 = v28;
    v29 += 4;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::anonymous namespace::PlanarRegions::plane(re::_anonymous_namespace_::PlanarRegions *this, uint64_t a2, unsigned int a3)
{
  if (a3 >= this)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16 * a3);
}

re::GeomConnectivityManifold *re::GeomConnectivityManifold::GeomConnectivityManifold(re::GeomConnectivityManifold *this)
{
  *this = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  v2 = (this + 8);
  re::DynamicArray<re::BlendNode>::setCapacity(v2, 1uLL);
  v3 = *(this + 8);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 66) = 1;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 37) = 0;
  *this = 0;
  *(this + 3) = 0;
  *(this + 8) = v3 + 2;
  *(this + 8) = 0;
  *(this + 18) = 1;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 1;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 1;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 1;
  return this;
}

double re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(void *a1, unsigned int *a2, _DWORD *a3)
{
  if (re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

uint64_t re::internal::PlaneDetector::build@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, re::GeomMesh *a4@<X8>)
{
  v162 = *MEMORY[0x1E69E9840];
  v143 = 0;
  v140[0] = 0;
  v140[1] = 0;
  v139 = 0;
  v136[0] = 0;
  v136[1] = 0;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v131 = 0;
  v134 = 0;
  v149 = 0u;
  memset(v148, 0, sizeof(v148));
  v10 = tan(0.174532925);
  *v145 = a1;
  *&v145[8] = re::GeomMesh::accessVertexPositions(a1);
  *&v145[16] = v11;
  v137 = 0;
  v138 = 1;
  re::DynamicArray<unsigned int>::resize(v136, *(a1 + 40), &re::kInvalidMeshIndex);
  v141 = 0;
  v142 = 1;
  v12 = *(a1 + 40);
  LODWORD(v157) = 0;
  re::DynamicArray<float>::resize(v140, v12, &v157, v13);
  v123 = a1;
  v14 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_31;
  }

  v15 = 0;
  v5 = 0;
  v16 = 1.0 / v10;
  v124 = 1.0 / *&a2;
  do
  {
    re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(v145, v15);
    v19.i64[0] = v17;
    v19.i64[1] = v18;
    v20 = vmulq_f32(v19, v19);
    v21 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
    a1 = v141;
    if (v21 > 0.0)
    {
      if (v141 <= v15)
      {
        goto LABEL_154;
      }

      v129 = vmulq_n_f32(v19, 1.0 / v21);
      *(v143 + 4 * v15) = v21;
      re::internal::FaceEvaluator::computeFaceCentroid(v145, v15);
      v23.i64[0] = v22;
      v23.i64[1] = v24;
      v25 = vmulq_f32(v129, v23);
      v26 = v25.f32[2] + vaddv_f32(*v25.f32);
      v4 = ((((roundf(vmuls_lane_f32(v16, *v129.f32, 1)) * 93310000.0) + (roundf(v16 * v129.f32[0]) * 269430000.0)) + (roundf(vmuls_lane_f32(v16, v129, 2)) * 775160.0)) + (roundf(-(v26 * v124)) * 74831.0));
      *&v153 = v4;
      v28.f64[0] = v129.f32[2];
      v29.f64[0] = v21;
      v30 = vmulq_n_f64(vcvtq_f64_f32(*v129.f32), v21);
      v31 = vmulq_f64(v29, v28);
      v32 = -(v26 * v21);
      if (v27 == -1)
      {
        v121 = v31;
        v122 = v30;
        v127 = v29.f64[0];
        v36 = vnegq_f32(v129);
        if (v37 == -1)
        {
          LODWORD(v157) = v5;
          *(&v157 + 1) = v127;
          *&v158 = v32;
          v159 = v122;
          v160 = v121;
          if (v41 == -1)
          {
          }

          else
          {
            v42 = (*(&v148[0] + 1) + 80 * v41);
            v42[1] = v157;
            v42[2] = v158;
            v42[3] = v159;
            v42[4] = v160;
          }

          a1 = v137;
          if (v137 <= v15)
          {
            goto LABEL_173;
          }

          v40 = v5;
          v5 = (v5 + 1);
          goto LABEL_13;
        }

        v33 = *(&v148[0] + 1) + 80 * v37;
        v38 = vsubq_f64(*(v33 + 64), v121);
        *(v33 + 48) = vsubq_f64(*(v33 + 48), v122);
        *(v33 + 64) = v38;
        v39 = *(v33 + 32) - v32;
        *(v33 + 24) = *(v33 + 24) + v127;
        *(v33 + 32) = v39;
        a1 = v137;
        if (v137 <= v15)
        {
          goto LABEL_171;
        }
      }

      else
      {
        v33 = *(&v148[0] + 1) + 80 * v27;
        v34 = vaddq_f64(v31, *(v33 + 64));
        *(v33 + 48) = vaddq_f64(v30, *(v33 + 48));
        *(v33 + 64) = v34;
        v35 = *(v33 + 32) + v32;
        *(v33 + 24) = *(v33 + 24) + v29.f64[0];
        *(v33 + 32) = v35;
        a1 = v137;
        if (v137 <= v15)
        {
          goto LABEL_158;
        }
      }

      v40 = *(v33 + 16);
LABEL_13:
      *(v139 + 4 * v15) = v40;
      goto LABEL_14;
    }

    if (v141 <= v15)
    {
      goto LABEL_154;
    }

    *(v143 + 4 * v15) = v21;
LABEL_14:
    ++v15;
  }

  while (v14 != v15);
  v43 = *(&v148[1] + 1);
  v14 = v133;
  if (v133 >= *(&v148[1] + 1))
  {
    if (v133 > *(&v148[1] + 1))
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v132 < *(&v148[1] + 1))
    {
      re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v131, *(&v148[1] + 1));
      v14 = v133;
    }

    if (v43 > v14)
    {
      v44 = 80 * (v43 - v14);
      if (v44 >= 1)
      {
        v45 = v135 + 80 * v14;
        v46 = v44 / 0x50uLL + 1;
        do
        {
          *(v45 + 64) = 0;
          *(v45 + 32) = 0uLL;
          *(v45 + 48) = 0uLL;
          *v45 = 0uLL;
          *(v45 + 16) = 0uLL;
          v45 += 80;
          --v46;
        }

        while (v46 > 1);
      }
    }

LABEL_30:
    v133 = v43;
    ++v134;
    v14 = v43;
  }

LABEL_31:
  *v154 = v148;
  if (*&v148[1] >= 0x10uLL)
  {
    v47 = 0;
    v48 = *&v148[0];
    v49 = *&v148[1] >> 4;
    while (1)
    {
      v50 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v48), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v50 != 0xFFFFLL)
      {
        break;
      }

      v47 -= 16;
      ++v48;
      if (!--v49)
      {
        goto LABEL_40;
      }
    }

    v51 = __clz(__rbit64(v50 ^ 0xFFFFLL));
    v52 = v51 - v47;
    *&v154[8] = v50 ^ 0xFFFFLL;
    *&v154[16] = v51 - v47;
    if (v51 + 1 != v47)
    {
      while (1)
      {
        v53 = *(*v154 + 8) + 80 * v52;
        v55 = *(v53 + 16);
        v54 = (v53 + 16);
        v15 = v55;
        if (v14 <= v55)
        {
          break;
        }

        v57 = v54[2];
        v56 = v54[3];
        v58 = vmulq_f64(v56, v56);
        v58.f64[0] = 1.0 / sqrt(v58.f64[0] + vaddvq_f64(vmulq_f64(v57, v57)));
        v59 = v54->f64[1];
        *&v56.f64[0] = *&vmulq_f64(v56, v58);
        v56.f64[1] = v54[1].f64[0] / v59;
        *(v135 + 80 * v15) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v57, v58.f64[0])), v56);
        v14 = v133;
        if (v133 <= v15)
        {
          goto LABEL_170;
        }

        *(v135 + 80 * v15 + 64) = v59;
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v154);
        v52 = *&v154[16];
        if (*&v154[16] == -1)
        {
          goto LABEL_40;
        }
      }

LABEL_169:
      *&v153 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v150 = 136315906;
      *&v150[4] = "operator[]";
      *&v150[12] = 1024;
      *&v150[14] = 789;
      *&v150[18] = 2048;
      *&v150[20] = v15;
      v151 = 2048;
      *v152 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_170:
      *&v153 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v150 = 136315906;
      *&v150[4] = "operator[]";
      *&v150[12] = 1024;
      *&v150[14] = 789;
      *&v150[18] = 2048;
      *&v150[20] = v15;
      v151 = 2048;
      *v152 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_171:
      *v154 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v150 = 136315906;
      *&v150[4] = "operator[]";
      *&v150[12] = 1024;
      *&v150[14] = 789;
      *&v150[18] = 2048;
      *&v150[20] = v15;
      v151 = 2048;
      *v152 = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_172:
      *v150 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v148[0]) = 136315906;
      *(v148 + 4) = "operator[]";
      WORD6(v148[0]) = 1024;
      *(v148 + 14) = 789;
      WORD1(v148[1]) = 2048;
      *(&v148[1] + 4) = v6;
      WORD6(v148[1]) = 2048;
      *(&v148[1] + 14) = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_173:
      *v154 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v150 = 136315906;
      *&v150[4] = "operator[]";
      *&v150[12] = 1024;
      *&v150[14] = 789;
      *&v150[18] = 2048;
      *&v150[20] = v15;
      v151 = 2048;
      *v152 = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_40:
  *&v147[2] = 0;
  memset(v145, 0, sizeof(v145));
  re::DynamicArray<float>::resize(v145, *(v123 + 10));
  v60 = *&v147[2];
  v61 = *&v145[16];
  v62 = (*&v147[2] + 4 * *&v145[16]);
  if (*&v145[16])
  {
    v63 = 0;
    v64 = (*&v145[16] + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v65 = v64 - ((*&v145[16] + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v66 = vdupq_n_s64(v64);
    v67 = (*&v147[2] + 8);
    do
    {
      v68 = vdupq_n_s64(v63);
      v69 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_1E3049620)));
      if (vuzp1_s16(v69, *v66.i8).u8[0])
      {
        *(v67 - 2) = v63;
      }

      if (vuzp1_s16(v69, *&v66).i8[2])
      {
        *(v67 - 1) = v63 + 1;
      }

      if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_1E3049640)))).i32[1])
      {
        *v67 = v63 + 2;
        v67[1] = v63 + 3;
      }

      v63 += 4;
      v67 += 4;
    }

    while (v65 != v63);
  }

  v130 = a4;
  v70 = *(&a2 + 1);
  *&v157 = v136;
  v71 = 126 - 2 * __clz(v61);
  if (v61)
  {
    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  v73 = re::GeomMesh::accessVertexPositions(v123);
  v76 = *(v123 + 10);
  if (!v76)
  {
    goto LABEL_88;
  }

  v15 = v73;
  a2 = v74;
  v77 = 0;
  v78 = &v153;
  do
  {
    a4 = v77;
    v4 = *&v145[16];
    if (*&v145[16] <= v77)
    {
      goto LABEL_166;
    }

    v5 = *&v147[2] + 4 * v77;
    a1 = *v5;
    v14 = v137;
    if (v137 <= a1)
    {
LABEL_167:
      *v150 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v148[0]) = 136315906;
      *(v148 + 4) = "operator[]";
      WORD6(v148[0]) = 1024;
      *(v148 + 14) = 797;
      WORD1(v148[1]) = 2048;
      *(&v148[1] + 4) = a1;
      WORD6(v148[1]) = 2048;
      *(&v148[1] + 14) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_168:
      *v150 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v148[0]) = 136315906;
      *(v148 + 4) = "operator[]";
      WORD6(v148[0]) = 1024;
      *(v148 + 14) = 789;
      WORD1(v148[1]) = 2048;
      *(&v148[1] + 4) = v6;
      WORD6(v148[1]) = 2048;
      *(&v148[1] + 14) = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_169;
    }

    v6 = *(v139 + 4 * a1);
    a1 = v133;
    if (v133 < v6)
    {
      break;
    }

    if (v77 < v76)
    {
      v79 = v77;
      while (*&v145[16] != v79)
      {
        v80 = *(*&v147[2] + 4 * v79);
        if (v137 <= v80)
        {
          goto LABEL_152;
        }

        if (*(v139 + 4 * v80) != v6)
        {
          v77 = v79;
          goto LABEL_65;
        }

        v79 = (v79 + 1);
        if (v76 == v79)
        {
          v77 = v76;
          goto LABEL_65;
        }
      }

      *v150 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v148[0]) = 136315906;
      *(v148 + 4) = "operator[]";
      WORD6(v148[0]) = 1024;
      *(v148 + 14) = 789;
      WORD1(v148[1]) = 2048;
      *(&v148[1] + 4) = v4;
      WORD6(v148[1]) = 2048;
      *(&v148[1] + 14) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_152:
      *v150 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      a1 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v148[0]) = 136315906;
      *(v148 + 4) = "operator[]";
      WORD6(v148[0]) = 1024;
      *(v148 + 14) = 797;
      WORD1(v148[1]) = 2048;
      *(&v148[1] + 4) = v80;
      WORD6(v148[1]) = 2048;
      *(&v148[1] + 14) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_153:
      *&v153 = 0;
      v160 = v86;
      v161 = v86;
      v158 = v86;
      v159 = v86;
      v157 = v86;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v154 = 136315906;
      *&v154[4] = "operator[]";
      *&v154[12] = 1024;
      *&v154[14] = 797;
      *&v154[18] = 2048;
      *&v154[20] = v14;
      v155 = 2048;
      v156 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_154:
      *v154 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v150 = 136315906;
      *&v150[4] = "operator[]";
      *&v150[12] = 1024;
      *&v150[14] = 789;
      *&v150[18] = 2048;
      *&v150[20] = v15;
      v151 = 2048;
      *v152 = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_155;
    }

LABEL_65:
    if (v133 <= v6)
    {
      goto LABEL_168;
    }

    v81 = v135 + 80 * v6;
    v83 = *(v81 + 64);
    v82 = (v81 + 64);
    v75.n128_f64[0] = v83;
    *(v82 - 2) = 0u;
    *(v82 - 1) = 0u;
    *(v82 - 3) = 0u;
    if (v83 <= v70)
    {
      *v82 = 0;
      a4 = v123;
      goto LABEL_87;
    }

    *&v152[2] = 0;
    memset(v150, 0, sizeof(v150));
    v85 = v77 - a4;
    v84 = v77 == a4;
    a4 = v123;
    if (v84)
    {
      goto LABEL_79;
    }

    re::DynamicArray<re::Quaternion<float>>::setCapacity(v150, 2 * v85);
    a1 = v5 + 4 * v85;
    do
    {
      v14 = *v5;
      v86 = 0uLL;
      v149 = 0u;
      memset(v148, 0, sizeof(v148));
      v4 = *(v123 + 5);
      if (v4 <= v14)
      {
        goto LABEL_153;
      }

      v87 = 0;
      v153 = *(*(v123 + 7) + 16 * v14);
      if (HIDWORD(v153) == -1)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      v88 = v148;
      do
      {
        v89 = *&v154[4 * v87 - 16];
        if (v89 >= a2)
        {
          v144 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          v157 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v154 = 136315906;
          *&v154[4] = "operator[]";
          *&v154[12] = 1024;
          *&v154[14] = 613;
          *&v154[18] = 2048;
          *&v154[20] = v89;
          v155 = 2048;
          v156 = a2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_114:
          v4 = v109;
          goto LABEL_116;
        }

        *v88++ = *(v15 + 16 * v89);
        ++v87;
      }

      while (v14 != v87);
      v90 = v148;
      do
      {
        v75 = re::DynamicArray<re::Vector3<float>>::add(v150, v90++);
        --v14;
      }

      while (v14);
      v5 += 4;
    }

    while (v5 != a1);
LABEL_79:
    MEMORY[0x1E69070C0](*&v150[16], *&v152[2], v75);
    if (*v150 && *&v152[2])
    {
      v126 = v91;
      v128 = v75;
      v125 = v92;
      (*(**v150 + 40))();
      v92 = v125;
      v91 = v126;
      v75 = v128;
    }

    a1 = v133;
    if (v133 <= v6)
    {
      goto LABEL_172;
    }

    v93 = vmulq_f32(v75, v75);
    v94 = vmulq_f32(v91, v91);
    v95 = v135 + 80 * v6;
    if (*(v95 + 64) >= ((sqrtf(v94.f32[2] + vaddv_f32(*v94.f32)) * (sqrtf(v93.f32[2] + vaddv_f32(*v93.f32)) * 4.0)) * 0.25))
    {
      *(v95 + 16) = v75;
      *(v95 + 32) = v91;
      *(v95 + 48) = v92;
    }

    else
    {
      *(v95 + 64) = 0;
    }

LABEL_87:
    v76 = *(a4 + 10);
  }

  while (v77 < v76);
LABEL_88:
  if (*v145 && *&v147[2])
  {
    (*(**v145 + 40))();
  }

  a2 = v133;
  *&v148[2] = 0;
  memset(v148, 0, 28);
  re::DynamicArray<float>::resize(v148, v133);
  v96 = *&v148[2];
  v97 = *&v148[1];
  v98 = (*&v148[2] + 4 * *&v148[1]);
  v78 = v130;
  if (*&v148[1])
  {
    v99 = 0;
    v100 = (*&v148[1] + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v101 = v100 - ((*&v148[1] + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v102 = vdupq_n_s64(v100);
    v103 = (*&v148[2] + 8);
    do
    {
      v104 = vdupq_n_s64(v99);
      v105 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, xmmword_1E3049620)));
      if (vuzp1_s16(v105, *v102.i8).u8[0])
      {
        *(v103 - 2) = v99;
      }

      if (vuzp1_s16(v105, *&v102).i8[2])
      {
        *(v103 - 1) = v99 + 1;
      }

      if (vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, xmmword_1E3049640)))).i32[1])
      {
        *v103 = v99 + 2;
        v103[1] = v99 + 3;
      }

      v99 += 4;
      v103 += 4;
    }

    while (v101 != v99);
  }

  *&v157 = &v131;
  v106 = 126 - 2 * __clz(v97);
  if (v97)
  {
    v107 = v106;
  }

  else
  {
    v107 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,false>(v96, v98, &v157, v107, 1);
  *&v152[2] = 0;
  memset(v150, 0, sizeof(v150));
  re::DynamicArray<unsigned int>::resize(v150, a2, &re::kInvalidMeshIndex);
  v4 = 0;
  v108 = *&v148[1];
  if (*&v148[1])
  {
    a4 = v123;
    if (a3)
    {
      v109 = 0;
      v110 = *&v148[2];
      v14 = v133;
      v111 = v135;
      if (*&v148[1] >= a3)
      {
        v108 = a3;
      }

      v15 = *&v150[16];
      v112 = *&v152[2];
      while (1)
      {
        a1 = *(v110 + 4 * v109);
        if (v14 <= a1)
        {
          break;
        }

        if (*(v111 + 80 * a1 + 64) <= v70)
        {
          goto LABEL_114;
        }

        if (v15 <= a1)
        {
          goto LABEL_164;
        }

        v4 = v109 + 1;
        *(v112 + 4 * a1) = v109;
        v109 = v4;
        if (v4 >= v108)
        {
          goto LABEL_116;
        }
      }

LABEL_163:
      *v154 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v145 = 136315906;
      *&v145[4] = "operator[]";
      *&v145[12] = 1024;
      *&v145[14] = 789;
      *&v145[18] = 2048;
      *&v145[20] = a1;
      v146 = 2048;
      *v147 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_164:
      *v154 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v145 = 136315906;
      *&v145[4] = "operator[]";
      *&v145[12] = 1024;
      *&v145[14] = 789;
      *&v145[18] = 2048;
      *&v145[20] = a1;
      v146 = 2048;
      *v147 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_165:
      *v154 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v145 = 136315906;
      *&v145[4] = "operator[]";
      *&v145[12] = 1024;
      *&v145[14] = 789;
      *&v145[18] = 2048;
      *&v145[20] = v14;
      v146 = 2048;
      *v147 = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_166:
      *v150 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v148[0]) = 136315906;
      *(v148 + 4) = "operator[]";
      WORD6(v148[0]) = 1024;
      *(v148 + 14) = 789;
      WORD1(v148[1]) = 2048;
      *(&v148[1] + 4) = a4;
      WORD6(v148[1]) = 2048;
      *(&v148[1] + 14) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_167;
    }
  }

  else
  {
    a4 = v123;
  }

LABEL_116:
  *(v78 + 2) = 0u;
  v15 = v78 + 32;
  *v78 = 0;
  *(v78 + 1) = 0;
  *(v78 + 6) = 0;
  *(v78 + 2) = 0;
  *(v78 + 7) = 0u;
  *(v78 + 19) = 0;
  *(v78 + 3) = 0u;
  *(v78 + 16) = 0;
  *(v78 + 72) = 0u;
  *(v78 + 88) = 0u;
  *(v78 + 26) = 0;
  *(v78 + 8) = 0u;
  *(v78 + 36) = 0;
  re::DynamicArray<re::Vector4<float>>::resize(v78 + 80, v4);
  re::DynamicArray<re::Matrix3x3<float>>::resize(v78 + 120, v4);
  if (a2)
  {
    v14 = 0;
    v113 = 16;
    while (1)
    {
      a1 = *&v150[16];
      if (*&v150[16] <= v14)
      {
        break;
      }

      v5 = *(*&v152[2] + 4 * v14);
      if (v5 < v4)
      {
        a1 = v133;
        if (v133 <= v14)
        {
          goto LABEL_159;
        }

        a1 = *(v78 + 12);
        if (a1 <= v5)
        {
          goto LABEL_160;
        }

        *(*(v78 + 14) + 16 * v5) = *(v135 + v113 - 16);
        a1 = v133;
        if (v133 <= v14)
        {
          goto LABEL_161;
        }

        a1 = *(v78 + 17);
        if (a1 <= v5)
        {
          goto LABEL_162;
        }

        v114 = (*(v78 + 19) + 48 * v5);
        v115 = *(v135 + v113);
        v116 = *(v135 + v113 + 32);
        v114[1] = *(v135 + v113 + 16);
        v114[2] = v116;
        *v114 = v115;
      }

      ++v14;
      v113 += 80;
      if (a2 == v14)
      {
        goto LABEL_126;
      }
    }

LABEL_155:
    *v154 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    *&v145[12] = 1024;
    *&v145[14] = 789;
    *&v145[18] = 2048;
    *&v145[20] = v14;
    v146 = 2048;
    *v147 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_156:
    *v154 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    *&v145[12] = 1024;
    *&v145[14] = 789;
    *&v145[18] = 2048;
    *&v145[20] = v14;
    v146 = 2048;
    *v147 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_157:
    *v154 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    *&v145[12] = 1024;
    *&v145[14] = 789;
    *&v145[18] = 2048;
    *&v145[20] = a1;
    v146 = 2048;
    *v147 = a2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_158:
    *v154 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v150 = 136315906;
    *&v150[4] = "operator[]";
    *&v150[12] = 1024;
    *&v150[14] = 789;
    *&v150[18] = 2048;
    *&v150[20] = v15;
    v151 = 2048;
    *v152 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_159:
    *v154 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    *&v145[12] = 1024;
    *&v145[14] = 789;
    *&v145[18] = 2048;
    *&v145[20] = v14;
    v146 = 2048;
    *v147 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_160:
    *v154 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    *&v145[12] = 1024;
    *&v145[14] = 789;
    *&v145[18] = 2048;
    *&v145[20] = v5;
    v146 = 2048;
    *v147 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_161:
    *v154 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    *&v145[12] = 1024;
    *&v145[14] = 789;
    *&v145[18] = 2048;
    *&v145[20] = v14;
    v146 = 2048;
    *v147 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_162:
    *v154 = 0;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    *&v145[12] = 1024;
    *&v145[14] = 789;
    *&v145[18] = 2048;
    *&v145[20] = v5;
    v146 = 2048;
    *v147 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_126:
  re::DynamicArray<unsigned char>::resize(v78, *(a4 + 10), re::internal::PlaneDetector::kNoPlane);
  v117 = *(a4 + 10);
  if (v117)
  {
    v14 = 0;
    do
    {
      a1 = v137;
      if (v137 <= v14)
      {
        goto LABEL_156;
      }

      a1 = *(v139 + 4 * v14);
      if (a1 != -1)
      {
        a2 = *&v150[16];
        if (*&v150[16] <= a1)
        {
          goto LABEL_157;
        }

        v118 = *(*&v152[2] + 4 * a1);
        if (v118 != -1)
        {
          a1 = *(v78 + 2);
          if (a1 <= v14)
          {
            goto LABEL_165;
          }

          *(*v15 + v14) = v118;
          v117 = *(a4 + 10);
        }
      }
    }

    while (++v14 < v117);
  }

  re::DynamicArray<re::RigComponentConstraint>::operator=(v78 + 40, v140);
  if (*v150 && *&v152[2])
  {
    (*(**v150 + 40))(*v150, *&v152[2]);
  }

  if (*&v148[0] && *&v148[2])
  {
    (*(**&v148[0] + 40))(*&v148[0], *&v148[2]);
  }

  if (v131 && v135)
  {
    (*(*v131 + 40))(v131, v135);
  }

  if (v136[0] && v139)
  {
    (*(*v136[0] + 40))(v136[0], v139);
  }

  result = v140[0];
  if (v140[0])
  {
    if (v143)
    {
      return (*(*v140[0] + 40))(v140[0], v143);
    }
  }

  return result;
}

void *re::DynamicArray<unsigned char>::resize(void *result, unint64_t a2, char *a3)
{
  v4 = result;
  v5 = result[2];
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<BOOL>::setCapacity(result, a2);
      v5 = v4[2];
    }

    if (v5 < a2)
    {
      v7 = *a3;
      do
      {
        *(v4[4] + v5++) = v7;
      }

      while (a2 != v5);
    }
  }

  v4[2] = a2;
  ++*(v4 + 6);
  return result;
}

uint64_t re::internal::PlaneDetector::removePlaneSubset(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  v34 = 0;
  v8 = *(a1 + 96);
  LOBYTE(v48) = 1;
  re::DynamicArray<unsigned char>::resize(v32, v8, &v48);
  v10 = *(a1 + 96);
  if (v10)
  {
    v3 = 0;
    while (v3 != 256)
    {
      v4 = v33;
      if (v33 <= v3)
      {
        goto LABEL_45;
      }

      *(v35 + v3) = v3;
      ++v3;
      v10 = *(a1 + 96);
      if (v3 >= v10)
      {
        goto LABEL_6;
      }
    }

    re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) index (%zu) too large for unsigned 8-bit integer", "!overflow", "removePlaneSubset", 271, 256);
    _os_crash();
    __break(1u);
LABEL_45:
    v27 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    *&v37[12] = 1024;
    *&v37[14] = 789;
    *&v37[18] = 2048;
    *&v37[20] = v3;
    v38 = 2048;
    *v39 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v27 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    *&v37[12] = 1024;
    *&v37[14] = 789;
    *&v37[18] = 2048;
    *&v37[20] = v3;
    v38 = 2048;
    *v39 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v27 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    *&v37[12] = 1024;
    *&v37[14] = 789;
    *&v37[18] = 2048;
    *&v37[20] = a3;
    v38 = 2048;
    *v39 = a2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v36 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v40 = 136315906;
    v41 = "operator[]";
    v42 = 1024;
    v43 = 789;
    v44 = 2048;
    v45 = a3;
    v46 = 2048;
    v47 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v27 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    *&v37[12] = 1024;
    *&v37[14] = 789;
    *&v37[18] = 2048;
    *&v37[20] = v3;
    v38 = 2048;
    *v39 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v36 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v40 = 136315906;
    v41 = "operator[]";
    v42 = 1024;
    v43 = 789;
    v44 = 2048;
    v45 = a3;
    v46 = 2048;
    v47 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v27 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    *&v37[12] = 1024;
    *&v37[14] = 789;
    *&v37[18] = 2048;
    *&v37[20] = a2;
    v38 = 2048;
    *v39 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_6:
  if (a3)
  {
    do
    {
      v3 = *a2;
      v4 = v33;
      if (v33 <= v3)
      {
        goto LABEL_46;
      }

      *(v35 + v3) = -1;
      ++a2;
      --a3;
    }

    while (a3);
    v10 = *(a1 + 96);
  }

  a3 = 0;
  if (v10)
  {
    v11 = 0;
    do
    {
      a2 = v33;
      if (v33 <= a3)
      {
        goto LABEL_47;
      }

      if (*(v35 + a3) != 255)
      {
        *(v35 + a3) = v11++;
        v10 = *(a1 + 96);
      }

      ++a3;
    }

    while (a3 < v10);
    a3 = v11;
  }

  if (*(a1 + 16))
  {
    a2 = 0;
    do
    {
      v12 = *(a1 + 32);
      v3 = *(v12 + a2);
      if (v3 == 255)
      {
        goto LABEL_22;
      }

      v4 = v33;
      if (v33 <= v3)
      {
        goto LABEL_49;
      }

      v13 = *(v35 + v3);
      *(v12 + a2) = v13;
      if (v13 == 255)
      {
LABEL_22:
        v3 = *(a1 + 56);
        if (v3 <= a2)
        {
          goto LABEL_51;
        }

        *(*(a1 + 72) + 4 * a2) = 0;
      }

      ++a2;
    }

    while (a2 < *(a1 + 16));
  }

  *&v39[2] = 0;
  memset(v37, 0, sizeof(v37));
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v30 = 0;
  if (a3)
  {
    re::DynamicArray<re::Vector4<float>>::setCapacity(v37, a3);
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(&v27, a3);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    a2 = 0;
    v3 = 0;
    a3 = 0;
    do
    {
      v4 = v33;
      if (v33 <= a3)
      {
        goto LABEL_48;
      }

      if (*(v35 + a3) != 255)
      {
        re::DynamicArray<re::Vector4<float>>::add(v37, (*(a1 + 112) + a2));
        v4 = *(a1 + 136);
        if (v4 <= a3)
        {
          goto LABEL_50;
        }

        re::DynamicArray<re::Matrix3x3<float>>::add(&v27, *(a1 + 152) + v3);
        v14 = *(a1 + 96);
      }

      ++a3;
      v3 += 48;
      a2 += 16;
    }

    while (a3 < v14);
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  *(a1 + 80) = *v37;
  v17 = *&v37[8];
  *v37 = v15;
  *&v37[8] = v16;
  *(a1 + 88) = v17;
  *&v37[16] = v14;
  v18 = *&v39[2];
  v19 = *(a1 + 120);
  *&v39[2] = *(a1 + 112);
  ++*&v37[24];
  ++*(a1 + 104);
  v20 = v27;
  v21 = v28;
  *(a1 + 112) = v18;
  *(a1 + 120) = v20;
  v22 = *(a1 + 128);
  v23 = *(a1 + 136);
  v27 = v19;
  v28 = v22;
  v24 = v29;
  *(a1 + 128) = v21;
  *(a1 + 136) = v24;
  v29 = v23;
  v25 = *(a1 + 152);
  *(a1 + 152) = v31;
  v31 = v25;
  ++v30;
  ++*(a1 + 144);
  if (v19 && v25)
  {
    (*(*v19 + 40))(v19);
    v15 = *v37;
  }

  if (v15 && *&v39[2])
  {
    (*(*v15 + 40))(v15);
  }

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

void *re::DynamicArray<float>::resize(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = result;
  v6 = result[2];
  if (v6 >= a2)
  {
    if (v6 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<int>::setCapacity(result, a2);
      v6 = v5[2];
    }

    v8 = a2 - v6;
    if (a2 > v6)
    {
      v9 = 0;
      a4.i32[0] = *a3;
      v10 = vdupq_n_s64(v8 - 1);
      v11 = (v5[4] + 4 * v6 + 8);
      do
      {
        v12 = vdupq_n_s64(v9);
        v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_1E3049620)));
        if (vuzp1_s16(v13, a4).u8[0])
        {
          *(v11 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v13, a4).i8[2])
        {
          *(v11 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_1E3049640)))).i32[1])
        {
          *v11 = a4.i32[0];
          v11[1] = a4.i32[0];
        }

        v9 += 4;
        v11 += 4;
      }

      while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v9);
    }
  }

  v5[2] = a2;
  ++*(v5 + 6);
  return result;
}

double re::internal::FaceEvaluator::computeFaceCentroid(re::internal::FaceEvaluator *this, unsigned int a2)
{
  if (*(*this + 40) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v2 = (*(*this + 56) + 16 * a2);
  v3 = *v2;
  v4 = *(this + 4);
  if (v4 <= v3)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v5 = v2[1];
  if (v4 <= v5)
  {
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v6 = v2[2];
  if (v4 <= v6)
  {
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = v2[3];
  v8 = *(this + 1);
  v9 = (v8 + 16 * v5);
  v10 = (v8 + 16 * v6);
  if (v7 == -1)
  {
    v12 = *(v8 + 16 * v3);
    _Q1 = vdupq_n_s32(0x3EAAAAABu);
    goto LABEL_9;
  }

  if (v4 <= v7)
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *v9;
  v9 = (v8 + 16 * v6);
  v10 = (v8 + 16 * v7);
  v12 = vaddq_f32(*(v8 + 16 * v3), v11);
  __asm { FMOV            V1.4S, #0.25 }

LABEL_9:
  *&result = vmulq_f32(_Q1, vaddq_f32(vaddq_f32(v12, *v9), *v10)).u64[0];
  return result;
}

uint64_t re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::~HashBrown(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
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
        v10[1] = v7 ^ 0xFFFFLL;
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
      (*(*v2 + 40))(v2);
      *a1 = 0;
    }

    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return a1;
}

double re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(re::internal::FaceEvaluator *this, unsigned int a2)
{
  if (*(*this + 40) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v2 = (*(*this + 56) + 16 * a2);
  v3 = *v2;
  v4 = *(this + 4);
  if (v4 <= v3)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v5 = v2[1];
  if (v4 <= v5)
  {
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v6 = v2[2];
  if (v4 <= v6)
  {
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = v2[3];
  v8 = *(this + 1);
  if (v7 == -1)
  {
    v11 = *(v8 + 16 * v3);
    v9 = vsubq_f32(*(v8 + 16 * v5), v11);
    v10 = vsubq_f32(*(v8 + 16 * v6), v11);
    goto LABEL_9;
  }

  if (v4 <= v7)
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = vsubq_f32(*(v8 + 16 * v5), *(v8 + 16 * v7));
  v10 = vsubq_f32(*(v8 + 16 * v6), *(v8 + 16 * v3));
LABEL_9:
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v9)), v10, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vmulq_f32(v12, v13);
  *&result = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL).u64[0];
  return result;
}

uint64_t re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(void *a1, unint64_t a2)
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
    if (*(a1[1] + 80 * (v12 + v13)) == a2)
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

int64x2_t re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t *a1, void *a2, __int128 *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    v7 = a1[2];
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
  v16 = 80 * (v13 + 16 * v11);
  v17 = a1[1] + v16;
  *v17 = *a2;
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[3];
  *(v17 + 48) = a3[2];
  *(v17 + 64) = v20;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  if (v15 == 255)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  v22.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v22.i64[1] = v21;
  result = vaddq_s64(*(a1 + 3), v22);
  *(a1 + 3) = result;
  v24 = *(a1[1] + v16) ^ (*(a1[1] + v16) >> 30);
  v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v24) ^ ((0xBF58476D1CE4E5B9 * v24) >> 27));
  a1[5] ^= (v25 >> 31) ^ v25;
  return result;
}

uint64_t re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(__int128 *a1)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  v5 = ((3 * v3) >> 1) & 0x1FFFFFFFFFFFFFFLL;
  if (v4 > (192 * v3) >> 7)
  {
    v5 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  }

  v6 = (v5 << 7) / 0x97;
  v7 = *(a1 + 7);
  v27 = 0u;
  *v28 = 0u;
  if (v4 <= v3)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = v6;
  }

  memset(&v28[16], 0, 32);
  v25[0] = a1;
  v10 = *(a1 + 2);
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
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v11;
    v25[1] = v15 ^ 0xFFFFLL;
    v26 = v16 - v11;
    if (v16 + 1 != v11)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v25);
        v17 = v26;
      }

      while (v26 != -1);
      v10 = *(a1 + 2);
    }
  }

LABEL_14:
  v18 = *&v28[40];
  *&v28[40] = *(a1 + 7);
  v19 = v27;
  v20 = *v28;
  v27 = *a1;
  *v28 = v10;
  v21 = *&v28[16];
  v22 = *(a1 + 40);
  *(a1 + 6) = *&v28[32];
  *(a1 + 7) = v18;
  *&v28[24] = v22;
  v23 = *(a1 + 24);
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v21;
  *&v28[8] = v23;
}

void *re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 81 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::computePlaneOrientedBoxes(re::GeomMesh const&,float,float,re::DynamicArray<unsigned int> const&,re::DynamicArray<float> const&,re::DynamicArray<re::anonymous namespace::Plane> &)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v125 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (result)
      {
        v79 = v10->i32[0];
        v10->i32[0] = *(a2 - 1);
LABEL_105:
        *(a2 - 1) = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = v10 + 1;
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            if (result)
            {
              v89 = *v86;
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                v90 -= 4;
                if ((result & 1) == 0)
                {
                  v91 = (v10 + v90 + 4);
                  goto LABEL_127;
                }
              }

              v91 = v10;
LABEL_127:
              v91->i32[0] = v89;
            }

            v82 = v86 + 1;
            v85 += 4;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v9;
          v119 = v9[1];
          v9 = v82;
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v126 = v92;
        do
        {
          v93 = v92;
          if (v126 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v9[v94];
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v9[v93];
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v126 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v9[v99];
                v100 = 2 * v94 + 2;
                {
                  ++v95;
                  v99 = v100;
                }

                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= ((v11 - 2) >> 1));
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v127;
          }

          else
          {
            *v106 = *v101;
            *v101 = v127;
            v111 = (v106 - v9 + 4) >> 2;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v9[v113 >> 1];
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v9[v114];
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      if (v17)
      {
        v19 = v9[v12];
        if (v18)
        {
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v19;
        }

        else
        {
          v9[v12] = *v9;
          *v9 = v19;
          {
            v31 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = *(a2 - 1);
        *(a2 - 1) = v22;
        {
          v23 = v9[v12];
          v9[v12] = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = *(a2 - 1);
        *(a2 - 1) = v16;
      }

      else
      {
        *v9 = v9[v12];
        v9[v12] = v16;
        {
          v24 = v9[v12];
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9[v12];
      v9[v12] = *(a2 - 1);
      *(a2 - 1) = v20;
      {
        v21 = *v9;
        *v9 = v9[v12];
        v9[v12] = v21;
      }
    }

    v25 = v12 - 1;
    if (v26)
    {
      v28 = v9[1];
      if (v27)
      {
        v9[1] = *(a2 - 2);
        *(a2 - 2) = v28;
      }

      else
      {
        v9[1] = v9[v25];
        v9[v25] = v28;
        {
          v32 = v9[v25];
          v9[v25] = *(a2 - 2);
          *(a2 - 2) = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9[v25];
      v9[v25] = *(a2 - 2);
      *(a2 - 2) = v29;
      {
        v30 = v9[1];
        v9[1] = v9[v25];
        v9[v25] = v30;
      }
    }

    v33 = v12 + 1;
    if (v34)
    {
      v36 = v9[2];
      if (v35)
      {
        v9[2] = *(a2 - 3);
        *(a2 - 3) = v36;
      }

      else
      {
        v9[2] = v9[v33];
        v9[v33] = v36;
        {
          v39 = v9[v33];
          v9[v33] = *(a2 - 3);
          *(a2 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9[v33];
      v9[v33] = *(a2 - 3);
      *(a2 - 3) = v37;
      {
        v38 = v9[2];
        v9[2] = v9[v33];
        v9[v33] = v38;
      }
    }

    if (!v40)
    {
      v43 = v9[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v9[v33];
      v9[v12] = v44;
      v9[v33] = v43;
      v43 = v9[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9[v25];
      v9[v25] = v43;
      v9[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9[v25];
    if (v41)
    {
      v9[v25] = v9[v33];
      v9[v33] = v42;
      v43 = v9[v12];
    }

    else
    {
      v9[v25] = v9[v12];
      v9[v12] = v42;
      v43 = v9[v12];
      if (v47)
      {
        v46 = v9[v33];
        v9[v12] = v46;
        v9[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    v9[v12] = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    {
      v51 = 0;
        ;
      }

      v53 = &v9[v51];
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }
      }

      else
      {
        do
        {
          v55 = *--v54;
        }
      }

      if (v53 >= v54)
      {
        v62 = v53 - 1;
      }

      else
      {
        v57 = &v9[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          do
          {
            v61 = *--v58;
          }
        }

        while (v57 < v58);
        v62 = v57 - 1;
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = *v62;
      }

      *v62 = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v10 = (v62 + 1);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        a5 = 0;
        v10 = (v62 + 1);
      }
    }

    else
    {
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v9 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 4);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
    }

    if (v11 == 5)
    {
      if (!result)
      {
        return result;
      }

      v72 = v10[1].u32[1];
      v10[1].i32[1] = *(a2 - 1);
      *(a2 - 1) = v72;
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->u32[1];
    v10->i32[1] = *(a2 - 1);
    *(a2 - 1) = v118;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_166:
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = *(a2 - 1);
    *(a2 - 1) = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    if (result)
    {
      v79 = v10->u32[1];
      v10->i32[1] = *(a2 - 1);
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::anonymous namespace::computePlaneOrientedBoxes(re::GeomMesh const&,float,float,re::DynamicArray<unsigned int> const&,re::DynamicArray<float> const&,re::DynamicArray<re::anonymous namespace::Plane> &)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 32) + 4 * a2) < *(*(a1 + 32) + 4 * a3);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::computePlaneOrientedBoxes(re::GeomMesh const&,float,float,re::DynamicArray<unsigned int> const&,re::DynamicArray<float> const&,re::DynamicArray<re::anonymous namespace::Plane> &)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::computePlaneOrientedBoxes(re::GeomMesh const&,float,float,re::DynamicArray<unsigned int> const&,re::DynamicArray<float> const&,re::DynamicArray<re::anonymous namespace::Plane> &)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v17;
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        return 1;
      case 5:
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        break;
      default:
        goto LABEL_17;
    }

    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v19 = (a1 + 8);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
    }

    else
    {
      v26 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v21;
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *a1;
    *(a1 + 4) = v23;
    *(a1 + 8) = v24;
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 12) = *(a1 + v31 + 8);
        if (v31 == -8)
        {
          break;
        }

        v31 -= 4;
        {
          v33 = (a1 + v31 + 12);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 4;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v125 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v10->i32[0]);
      if (result)
      {
        v79 = v10->i32[0];
        v10->i32[0] = *(a2 - 1);
LABEL_105:
        *(a2 - 1) = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = v10 + 1;
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v87, v88);
            if (result)
            {
              v89 = *v86;
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v89, *(&v10->u32[-1] + v90));
                v90 -= 4;
                if ((result & 1) == 0)
                {
                  v91 = (v10 + v90 + 4);
                  goto LABEL_127;
                }
              }

              v91 = v10;
LABEL_127:
              v91->i32[0] = v89;
            }

            v82 = v86 + 1;
            v85 += 4;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v9;
          v119 = v9[1];
          v9 = v82;
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v119, v120);
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v126 = v92;
        do
        {
          v93 = v92;
          if (v126 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v9[v94];
            if (2 * v92 + 2 < v11 && re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v9[v93];
            result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v126 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v9[v99];
                v100 = 2 * v94 + 2;
                if (v100 < v11 && re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= ((v11 - 2) >> 1));
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v127;
          }

          else
          {
            *v106 = *v101;
            *v101 = v127;
            v111 = (v106 - v9 + 4) >> 2;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v9[v113 >> 1];
              result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v9[v114];
                  result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(v13, *v9, v9[v12]);
      v18 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), *v9);
      if (v17)
      {
        v19 = v9[v12];
        if (v18)
        {
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v19;
        }

        else
        {
          v9[v12] = *v9;
          *v9 = v19;
          if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v19))
          {
            v31 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = *(a2 - 1);
        *(a2 - 1) = v22;
        if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v9, v9[v12]))
        {
          v23 = v9[v12];
          v9[v12] = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(v13, v9[v12], *v9);
    v15 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v9[v12]);
    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = *(a2 - 1);
        *(a2 - 1) = v16;
      }

      else
      {
        *v9 = v9[v12];
        v9[v12] = v16;
        if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v16))
        {
          v24 = v9[v12];
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9[v12];
      v9[v12] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9[v12], *v9))
      {
        v21 = *v9;
        *v9 = v9[v12];
        v9[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9[v12 - 1], v9[1]);
    v27 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 2), v9[v12 - 1]);
    if (v26)
    {
      v28 = v9[1];
      if (v27)
      {
        v9[1] = *(a2 - 2);
        *(a2 - 2) = v28;
      }

      else
      {
        v9[1] = v9[v25];
        v9[v25] = v28;
        if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 2), v28))
        {
          v32 = v9[v25];
          v9[v25] = *(a2 - 2);
          *(a2 - 2) = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9[v25];
      v9[v25] = *(a2 - 2);
      *(a2 - 2) = v29;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9[v25], v9[1]))
      {
        v30 = v9[1];
        v9[1] = v9[v25];
        v9[v25] = v30;
      }
    }

    v33 = v12 + 1;
    v34 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9[v12 + 1], v9[2]);
    v35 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 3), v9[v12 + 1]);
    if (v34)
    {
      v36 = v9[2];
      if (v35)
      {
        v9[2] = *(a2 - 3);
        *(a2 - 3) = v36;
      }

      else
      {
        v9[2] = v9[v33];
        v9[v33] = v36;
        if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 3), v36))
        {
          v39 = v9[v33];
          v9[v33] = *(a2 - 3);
          *(a2 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9[v33];
      v9[v33] = *(a2 - 3);
      *(a2 - 3) = v37;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9[v33], v9[2]))
      {
        v38 = v9[2];
        v9[2] = v9[v33];
        v9[v33] = v38;
      }
    }

    v40 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9[v12], v9[v25]);
    v41 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9[v33], v9[v12]);
    if (!v40)
    {
      v43 = v9[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v9[v33];
      v9[v12] = v44;
      v9[v33] = v43;
      v45 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v44, v9[v25]);
      v43 = v9[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9[v25];
      v9[v25] = v43;
      v9[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9[v25];
    if (v41)
    {
      v9[v25] = v9[v33];
      v9[v33] = v42;
      v43 = v9[v12];
    }

    else
    {
      v9[v25] = v9[v12];
      v9[v12] = v42;
      v47 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9[v33], v42);
      v43 = v9[v12];
      if (v47)
      {
        v46 = v9[v33];
        v9[v12] = v46;
        v9[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    v9[v12] = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    if ((a5 & 1) != 0 || (v50 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 - 1), *v9), v49 = *v9, v50))
    {
      v51 = 0;
        ;
      }

      v53 = &v9[v51];
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }

        while (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v56, v49));
      }

      else
      {
        do
        {
          v55 = *--v54;
        }

        while (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v55, v49));
      }

      if (v53 >= v54)
      {
        v62 = v53 - 1;
      }

      else
      {
        v57 = &v9[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          while (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v60, v49));
          do
          {
            v61 = *--v58;
          }

          while (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v61, v49));
        }

        while (v57 < v58);
        v62 = v57 - 1;
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = *v62;
      }

      *v62 = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *>(v9, v62, a3);
      v10 = (v62 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *>((v62 + 1), a2, a3);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,false>(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v62 + 1);
      }
    }

    else
    {
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v9, *(a2 - 1));
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v9 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 4);
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v10->i32[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v69));
        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(v10, v10 + 1, &v10[1], a2 - 1, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(v10, v10 + 1, &v10[1], &v10[1] + 1, a3);
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v10[1].u32[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].u32[1];
      v10[1].i32[1] = *(a2 - 1);
      *(a2 - 1) = v72;
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v10[1].u32[1], v10[1].u32[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v80 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v10->u32[1], v10->i32[0]);
  result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v10->u32[1]);
  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->u32[1];
    v10->i32[1] = *(a2 - 1);
    *(a2 - 1) = v118;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_166:
    result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v76, v78);
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = *(a2 - 1);
    *(a2 - 1) = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v81);
    if (result)
    {
      v79 = v10->u32[1];
      v10->i32[1] = *(a2 - 1);
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  if (v3 <= a3)
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

  if (v3 <= a2)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 32) + 80 * a3 + 64) < *(*(a1 + 32) + 80 * a2 + 64);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  v10 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a2, *a1);
  v11 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a1 + 4), *a1);
        v16 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), *(a1 + 4));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v17;
          if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(a1, (a1 + 4), (a1 + 8), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(a1, (a1 + 4), (a1 + 8), (a1 + 12), a3);
        if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), *(a1 + 12)))
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a1 + 12), *(a1 + 8)))
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v12, v14))
    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a1 + 4), *a1);
  v19 = (a1 + 8);
  v20 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a1 + 8), *(a1 + 4));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
    }

    else
    {
      v26 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v21;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v26, v21))
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *a1;
    *(a1 + 4) = v23;
    *(a1 + 8) = v24;
    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v23, v25))
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 12) = *(a1 + v31 + 8);
        if (v31 == -8)
        {
          break;
        }

        v31 -= 4;
        if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v30, *(v32 + 4)))
        {
          v33 = (a1 + v31 + 12);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 4;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void *re::internal::TriangleDecimator::findCornerVertices(float *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  v4 = *a1;
  LOBYTE(v15) = 0;
  result = re::DynamicArray<unsigned char>::resize(a2, v4, &v15);
  if (!*a1)
  {
    v14 = NAN;
    goto LABEL_19;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    *&v17 = 0;
    *&v16 = 0;
    v15 = 0uLL;
    DWORD2(v16) = 0;
    re::GeomConnectivityManifold::fetchVertexIncidentFaces(a1, v6, &v15);
    v8 = v16;
    if (!v16)
    {
      v11 = 0;
LABEL_9:
      LODWORD(v8) = v11 == v8;
      goto LABEL_10;
    }

    if (v16 != 1)
    {
      v9 = 0;
      LODWORD(v8) = 0;
      v10 = 1;
      do
      {
        v8 = (v8 + re::GeomConnectivityManifold::isBoundaryFace(a1, *(v17 + 4 * v9)));
        v9 = v10;
        v11 = v16;
      }

      while (v16 > v10++);
      goto LABEL_9;
    }

LABEL_10:
    result = v15;
    if (v15 && v17)
    {
      result = (*(*v15 + 40))();
    }

    if (v8)
    {
      if (*(a2 + 16) <= v6)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(a2 + 32) + v6) = 1;
      ++v7;
    }

    ++v6;
    v13 = *a1;
  }

  while (v6 < v13);
  v14 = v7 / v13;
LABEL_19:
  a1[162] = v14;
  return result;
}

unint64_t re::DynamicArray<unsigned char>::operator[](uint64_t a1, unint64_t a2)
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

uint64_t re::internal::TriangleDecimator::computeConnectedComponentAreasAndTolerances(uint64_t this)
{
  v63 = *MEMORY[0x1E69E9840];
  if (*(this + 617) != 1)
  {
    return this;
  }

  v6 = this;
  v7 = *(this + 24);
  v8 = v7;
  LODWORD(v58) = -1;
  re::DynamicArray<unsigned int>::resize((this + 736), v7, &v58);
  v43 = 0;
  v44 = 0;
  v45 = 1;
  v9 = &v43;
  v46 = 0;
  v47 = 0;
  if ((v7 & 0x3F) != 0)
  {
    v10 = (v7 >> 6) + 1;
  }

  else
  {
    v10 = v7 >> 6;
  }

  v48 = v7;
  *&v58 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v43, v10, &v58);
  v11 = v44;
  if (v44)
  {
    v12 = v47;
    if (v45)
    {
      v12 = &v46;
    }

    do
    {
      *v12++ = 0;
      v13 = v47;
      if (v45)
      {
        v13 = &v46;
      }
    }

    while (v12 != &v13[v11]);
  }

  v42 = 0;
  v39[1] = 0;
  v40 = 0;
  v39[0] = 0;
  v41 = 0;
  if (v7)
  {
    v9 = 0;
    v14 = 0;
    do
    {
      if ((re::DynamicBitset<unsigned long long,64ul>::getBit(&v43, v9) & 1) == 0)
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v43, v9);
        LODWORD(v58) = v9;
        re::DynamicArray<int>::add(v39, &v58);
        while (v40)
        {
          v15 = re::internal::Stack<unsigned int>::pop(v39);
          v7 = v15;
          v1 = *(v6 + 752);
          if (v1 <= v15)
          {
            v49 = 0;
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
            v57 = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_67;
          }

          *(*(v6 + 768) + 4 * v15) = v14;
          FaceIncidentFaces = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v6, v15, &v58);
          if (FaceIncidentFaces)
          {
            v1 = FaceIncidentFaces;
            v2 = &v58;
            do
            {
              v17 = *v2;
              v2 += 4;
              v7 = v17;
              if ((re::DynamicBitset<unsigned long long,64ul>::getBit(&v43, v17) & 1) == 0)
              {
                re::DynamicBitset<unsigned long long,64ul>::setBit(&v43, v7);
                v50 = v7;
                re::DynamicArray<int>::add(v39, &v50);
              }

              --v1;
            }

            while (v1);
          }
        }

        v14 = (v14 + 1);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  else
  {
    LODWORD(v14) = 0;
  }

  v18 = v14;
  v19 = *(v6 + 792);
  if (v19 < v14)
  {
    if (*(v6 + 784) < v14)
    {
      re::DynamicArray<re::internal::TriangleDecimator::ComponentAreaPreservationData>::setCapacity((v6 + 776), v14);
      v19 = *(v6 + 792);
    }

    v20 = v14 - v19;
    if (v14 > v19 && v20 >= 1)
    {
      v21 = *(v6 + 808) + 16 * v19;
      v22 = v20 + 1;
      do
      {
        *v21 = 0;
        *(v21 + 4) = 0;
        *(v21 + 8) = 0;
        v21 += 16;
        --v22;
      }

      while (v22 > 1);
    }

    goto LABEL_36;
  }

  if (v19 > v14)
  {
LABEL_36:
    *(v6 + 792) = v14;
    ++*(v6 + 800);
    v19 = v14;
  }

  v14 = *(v6 + 24);
  if (v14)
  {
    v23 = 0;
    v2 = 0;
    while (v14 != v2)
    {
      v24 = (*(v6 + 40) + v23);
      v4 = *v24;
      v7 = *(v6 + 320);
      if (v7 <= v4)
      {
        goto LABEL_69;
      }

      v5 = v24[1];
      if (v7 <= v5)
      {
        goto LABEL_70;
      }

      v1 = v24[2];
      if (v7 <= v1)
      {
        goto LABEL_71;
      }

      v9 = *(v6 + 752);
      if (v9 <= v2)
      {
        goto LABEL_72;
      }

      v9 = v24[3];
      v25 = *(v6 + 336);
      v3 = *(*(v6 + 768) + 4 * v2);
      if (v9 == -1)
      {
        if (v19 <= v3)
        {
          goto LABEL_75;
        }

        v29 = *(v25 + 16 * v4);
        v26 = vsubq_f32(*(v25 + 16 * v1), v29);
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = vsubq_f32(*(v25 + 16 * v5), v29);
      }

      else
      {
        if (v7 <= v9)
        {
          goto LABEL_73;
        }

        if (v19 <= v3)
        {
          goto LABEL_74;
        }

        v26 = vsubq_f32(*(v25 + 16 * v5), *(v25 + 16 * v9));
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = vsubq_f32(*(v25 + 16 * v1), *(v25 + 16 * v4));
      }

      v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), vnegq_f32(v26)), v28, v27);
      v31 = vmulq_f32(v30, v30);
      v32 = *(v6 + 808) + 16 * v3;
      v31.f32[0] = *(v32 + 4) + sqrtf(v31.f32[1] + (v31.f32[2] + v31.f32[0])) * 0.5;
      *(v32 + 4) = v31.i32[0];
      ++v2;
      v23 += 16;
      if (v14 == v2)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_68;
  }

LABEL_51:
  if (v18)
  {
    v33 = *(v6 + 624);
    v34 = 4;
    v7 = v19;
    while (v7)
    {
      v1 = *(v6 + 808);
      v35 = *(v6 + 620) * *(v1 + v34);
      if (v35 > v33)
      {
        v14 = v19;
        v36 = log2f((v35 / v33) + 1.0);
        v19 = v14;
        v35 = v33 * v36;
      }

      if (v33 >= v35)
      {
        v35 = v33;
      }

      *(v1 + v34) = v35;
      v34 += 16;
      --v7;
      if (!--v18)
      {
        goto LABEL_59;
      }
    }

LABEL_67:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v9 = v19;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 789;
    v54 = 2048;
    v55 = v9;
    v56 = 2048;
    v57 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_68:
    v49 = 0;
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
    v55 = v14;
    v56 = 2048;
    v57 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v49 = 0;
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
    v55 = v4;
    v56 = 2048;
    v57 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_70:
    v49 = 0;
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
    v55 = v5;
    v56 = 2048;
    v57 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v49 = 0;
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
    v55 = v1;
    v56 = 2048;
    v57 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_72:
    v49 = 0;
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
    v55 = v2;
    v56 = 2048;
    v57 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_73:
    v49 = 0;
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
    v55 = v9;
    v56 = 2048;
    v57 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_74:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v37 = v19;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 789;
    v54 = 2048;
    v55 = v3;
    v56 = 2048;
    v57 = v37;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_75:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v38 = v19;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 789;
    v54 = 2048;
    v55 = v3;
    v56 = 2048;
    v57 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_59:
  if (v39[0] && v42)
  {
    (*(*v39[0] + 40))();
  }

  this = v43;
  if (v43 && (v45 & 1) == 0)
  {
    return (*(*v43 + 40))();
  }

  return this;
}

uint64_t re::internal::Stack<unsigned int>::pop(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 - 1;
  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(*(a1 + 32) + 4 * v2);
  re::DynamicArray<float>::resize(a1, v2);
  return v3;
}

void re::internal::TriangleDecimator::convertMeshToCombinatorialMap(re::internal::TriangleDecimator *this, const re::GeomMesh *a2, re::GeomConnectivityManifold *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2) == *(a2 + 10))
  {
    if (re::GeomConnectivityManifold::buildIfManifold(a2, this, a3))
    {
      v6 = *(a2 + 4);
      re::DynamicArray<re::Vector3<float>>::resize(this + 304, v6);
      v7 = re::GeomMesh::accessVertexPositions(a2);
      if (v6)
      {
        v9 = 0;
        v10 = v8;
        while (v9 != v8)
        {
          v3 = *(this + 40);
          if (v3 <= v9)
          {
            goto LABEL_22;
          }

          *(*(this + 42) + 16 * v9) = *(v7 + 16 * v9);
          if (++v9 == v6)
          {
            goto LABEL_18;
          }
        }

        v14[0] = 0;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v31[0]) = 136315906;
        *(v31 + 4) = "operator[]";
        WORD6(v31[0]) = 1024;
        *(v31 + 14) = 613;
        WORD1(v31[1]) = 2048;
        *(&v31[1] + 4) = v10;
        WORD6(v31[1]) = 2048;
        *(&v31[1] + 14) = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
      memset(v14, 0, sizeof(v14));
      v15 = 0;
      re::GeomMesh::GeomMesh(&v18, 0);
      re::makeManifold(a2, &v18, v14);
      re::GeomConnectivityManifold::buildIfManifold(&v18, this, v11);
      v9 = v19;
      re::DynamicArray<re::Vector3<float>>::resize(this + 304, v19);
      v12 = re::GeomMesh::accessVertexPositions(&v18);
      if (v9)
      {
        v6 = 0;
        v10 = v13;
        while (v6 != v13)
        {
          v3 = *(this + 40);
          if (v3 <= v6)
          {
            goto LABEL_23;
          }

          *(*(this + 42) + 16 * v6) = *(v12 + 16 * v6);
          if (++v6 == v9)
          {
            goto LABEL_15;
          }
        }

LABEL_21:
        v17 = 0;
        v32 = 0u;
        v33 = 0u;
        memset(v31, 0, sizeof(v31));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        v26 = 613;
        v27 = 2048;
        v28 = v10;
        v29 = 2048;
        v30 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_22:
        v14[0] = 0;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v31[0]) = 136315906;
        *(v31 + 4) = "operator[]";
        WORD6(v31[0]) = 1024;
        *(v31 + 14) = 789;
        WORD1(v31[1]) = 2048;
        *(&v31[1] + 4) = v9;
        WORD6(v31[1]) = 2048;
        *(&v31[1] + 14) = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_23:
        v17 = 0;
        v32 = 0u;
        v33 = 0u;
        memset(v31, 0, sizeof(v31));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        v26 = 789;
        v27 = 2048;
        v28 = v6;
        v29 = 2048;
        v30 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_15:
      re::GeomMesh::~GeomMesh(&v18);
      if (v14[0])
      {
        if (v16)
        {
          (*(*v14[0] + 40))();
        }
      }
    }

LABEL_18:
    re::internal::TriangleDecimator::computeConnectedComponentAreasAndTolerances(this);
  }

  else
  {
    re::GeomMesh::GeomMesh(&v18, 0);
    re::internal::TriangleDecimator::convertMeshToCombinatorialMap(this, &v18);
    re::GeomMesh::~GeomMesh(&v18);
  }
}

uint64_t re::GeomConnectivityManifold::isValidFace(re::GeomConnectivityManifold *this, int a2)
{
  v2 = (4 * a2);
  if (*(this + 13) <= v2)
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

  v3 = *(*(this + 15) + 4 * v2);
  if (*(this + 8) <= v3)
  {
    goto LABEL_5;
  }

  return *(*(this + 10) + 4 * v3) >> 31;
}

uint64_t re::internal::TriangleDecimator::filterValidComponents(unsigned int *a1, uint64_t a2, unint64_t a3, void *a4, int *a5)
{
  v9 = a2;
  v94 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 3);
  v12 = v11;
  v13 = *a1;
  re::DynamicArray<BOOL>::resize(a2, v11);
  LOBYTE(v89) = 0;
  result = re::DynamicArray<BOOL>::resize(a4, v13, &v89);
  v60 = a3;
  *a3 = 0;
  *a5 = 0;
  if (a1[159] & 1) != 0 || (*(a1 + 617))
  {
    v58 = a5;
    v59 = v13;
    v67 = 0;
    v64[1] = 0;
    v65 = 0;
    v64[0] = 0;
    v66 = 0;
    v15 = a1[198];
    LOBYTE(v89) = 0;
    re::DynamicArray<BOOL>::resize(v64, v15, &v89);
    v62 = v9;
    v63 = a4;
    v61 = v11;
    if (*(a1 + 617) == 1)
    {
      v5 = a1[6];
      v16 = *(a1 + 156);
      v75 = 0;
      v72[1] = 0;
      v73 = 0;
      v72[0] = 0;
      v74 = 0;
      re::DynamicArray<float>::resize(v72, v5);
      v17 = v73;
      if (v5)
      {
        v18 = 0;
        v19 = v75;
        do
        {
          if (v17 == v18)
          {
            goto LABEL_112;
          }

          *(v19 + 4 * v18) = v18;
          ++v18;
        }

        while (v5 != v18);
      }

      v57 = v11;
      *&v89 = a1;
      v20 = 126 - 2 * __clz(v17);
      if (v17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,false>(v75, (v75 + 4 * v17), &v89, v21, 1);
      v71 = 0;
      v68[1] = 0;
      v69 = 0;
      v68[0] = 0;
      v70 = 0;
      *v78 = 0;
      *&v78[8] = 0;
      *&v78[16] = 1;
      *&v79[4] = 0;
      *&v79[12] = 0;
      v22 = *a1;
      if ((v22 & 0x3F) != 0)
      {
        v23 = (v22 >> 6) + 1;
      }

      else
      {
        v23 = v22 >> 6;
      }

      v80 = *a1;
      *&v89 = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(v78, v23, &v89);
      if (a1[198])
      {
        v9 = 0;
        v24 = 0;
        v25 = sqrtf(v16);
        v26 = v25 * v25;
        v27 = v25 * (v25 * v25);
        v12 = &v79[4];
        a3 = &v77;
        do
        {
          LODWORD(v28) = v24;
          do
          {
            v29 = v28;
            v28 = (v28 + 1);
            if (v73 <= v28)
            {
              break;
            }

            v17 = *(v75 + 4 * v28);
            v11 = *(a1 + 94);
            if (v11 <= v17)
            {
              goto LABEL_107;
            }
          }

          while (v9 == *(*(a1 + 96) + 4 * v17));
          v69 = 0;
          ++v70;
          v30 = *&v78[8];
          if (*&v78[8])
          {
            v31 = *&v79[12];
            if (v78[16])
            {
              v31 = &v79[4];
            }

            do
            {
              *v31++ = 0;
              v32 = *&v79[12];
              if (v78[16])
              {
                v32 = &v79[4];
              }
            }

            while (v31 != &v32[8 * v30]);
          }

          v33 = 0.0;
          if (v24 >= v28)
          {
            v36 = 0.0;
          }

          else
          {
            v34 = v24;
            v17 = v29;
            do
            {
              v11 = v73;
              if (v73 <= v34)
              {
                goto LABEL_108;
              }

              v5 = *(v75 + 4 * v34);
              if (re::GeomConnectivityManifold::isValidFace(a1, *(v75 + 4 * v34)))
              {
                v11 = *(a1 + 3);
                if (v11 <= v5)
                {
                  goto LABEL_109;
                }

                v11 = 0;
                v77 = *(*(a1 + 5) + 16 * v5);
                do
                {
                  v5 = *&v78[v11 - 16];
                  if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v78, v5) & 1) == 0)
                  {
                    re::DynamicBitset<unsigned long long,64ul>::setBit(v78, v5);
                    a4 = *(a1 + 40);
                    if (a4 <= v5)
                    {
                      v76 = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v81 = 136315906;
                      v82 = "operator[]";
                      v83 = 1024;
                      v84 = 797;
                      v85 = 2048;
                      v86 = v5;
                      v87 = 2048;
                      v88 = a4;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_107:
                      *&v77 = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      v34 = MEMORY[0x1E69E9C10];
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v81 = 136315906;
                      v82 = "operator[]";
                      v83 = 1024;
                      v84 = 797;
                      v85 = 2048;
                      v86 = v17;
                      v87 = 2048;
                      v88 = v11;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_108:
                      *&v77 = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      v17 = MEMORY[0x1E69E9C10];
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v81 = 136315906;
                      v82 = "operator[]";
                      v83 = 1024;
                      v84 = 789;
                      v85 = 2048;
                      v86 = v34;
                      v87 = 2048;
                      v88 = v11;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_109:
                      *&v77 = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v81 = 136315906;
                      v82 = "operator[]";
                      v83 = 1024;
                      v84 = 797;
                      v85 = 2048;
                      v86 = v5;
                      v87 = 2048;
                      v88 = v11;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_110:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = v17;
                      *&v79[8] = 2048;
                      *&v79[10] = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_111:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = v5;
                      *&v79[8] = 2048;
                      *&v79[10] = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_112:
                      v68[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = v17;
                      *&v79[8] = 2048;
                      *&v79[10] = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_113:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = a3;
                      *&v79[8] = 2048;
                      *&v79[10] = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_114:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = a3;
                      *&v79[8] = 2048;
                      *&v79[10] = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_115:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 797;
                      *&v78[18] = 2048;
                      *v79 = v5;
                      *&v79[8] = 2048;
                      *&v79[10] = a4;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_116:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = v11;
                      *&v79[8] = 2048;
                      *&v79[10] = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_117:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 797;
                      *&v78[18] = 2048;
                      *v79 = v5;
                      *&v79[8] = 2048;
                      *&v79[10] = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_118:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      v52 = MEMORY[0x1E69E9C10];
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = v12;
                      *&v79[8] = 2048;
                      *&v79[10] = v9;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_119:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      v40 = MEMORY[0x1E69E9C10];
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = v52;
                      *&v79[8] = 2048;
                      *&v79[10] = v9;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_120:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 789;
                      *&v78[18] = 2048;
                      *v79 = v40;
                      *&v79[8] = 2048;
                      *&v79[10] = v9;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_121:
                      *&v77 = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v81 = 136315906;
                      v82 = "operator[]";
                      v83 = 1024;
                      v84 = 789;
                      v85 = 2048;
                      v86 = v9;
                      v87 = 2048;
                      v88 = v40;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_122:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 797;
                      *&v78[18] = 2048;
                      *v79 = v5;
                      *&v79[8] = 2048;
                      *&v79[10] = v40;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_123:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 797;
                      *&v78[18] = 2048;
                      *v79 = v40;
                      *&v79[8] = 2048;
                      *&v79[10] = v9;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_124:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      v44 = MEMORY[0x1E69E9C10];
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 797;
                      *&v78[18] = 2048;
                      *v79 = v12;
                      *&v79[8] = 2048;
                      *&v79[10] = v9;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_125:
                      v72[0] = 0;
                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v89 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v78 = 136315906;
                      *&v78[4] = "operator[]";
                      *&v78[12] = 1024;
                      *&v78[14] = 797;
                      *&v78[18] = 2048;
                      *v79 = v44;
                      *&v79[8] = 2048;
                      *&v79[10] = v9;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                    }

                    re::DynamicArray<re::Vector3<float>>::add(v68, (*(a1 + 42) + 16 * v5));
                  }

                  v11 += 4;
                }

                while (v11 != 12);
              }
            }

            while (v34++ != v17);
            v36 = 0.0;
            if (v69)
            {
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              geom_oriented_bounding_box_3f();
              v37 = vaddq_f32(v93, v93);
              v36 = vmuls_lane_f32(vmuls_lane_f32(v37.f32[0], *v37.f32, 1), v37, 2);
              if (v37.f32[0] <= v37.f32[1])
              {
                v38 = v37.f32[0];
              }

              else
              {
                v38 = v37.f32[1];
              }

              if (v37.f32[0] <= v37.f32[1])
              {
                v37.f32[0] = v37.f32[1];
              }

              if (v38 >= v37.f32[2])
              {
                v39 = v38;
              }

              else
              {
                v39 = v37.f32[2];
              }

              v33 = v37.f32[0] * v39;
            }
          }

          v40 = v65;
          a4 = v63;
          if (v65 <= v9)
          {
            goto LABEL_121;
          }

          v42 = v33 <= v26 && v36 <= v27;
          *(v67 + v9++) = v42;
          v24 = v28;
        }

        while (v9 < a1[198]);
      }

      if (*v78 && (v78[16] & 1) == 0)
      {
        (*(**v78 + 40))();
      }

      v12 = v61;
      v9 = v62;
      v11 = v57;
      if (v68[0] && v71)
      {
        (*(*v68[0] + 40))();
      }

      if (v72[0] && v75)
      {
        (*(*v72[0] + 40))();
      }
    }

    if (v11)
    {
      v5 = 0;
      a3 = 4;
      do
      {
        if (!re::GeomConnectivityManifold::isValidFace(a1, v5))
        {
          goto LABEL_85;
        }

        v17 = v65;
        if (v65)
        {
          a4 = *(a1 + 94);
          if (a4 <= v5)
          {
            goto LABEL_115;
          }

          v11 = *(*(a1 + 96) + 4 * v5);
          if (v65 <= v11)
          {
            goto LABEL_116;
          }

          a4 = v63;
          if (*(v67 + v11))
          {
            goto LABEL_85;
          }
        }

        if (*(a1 + 636) != 1)
        {
          goto LABEL_79;
        }

        v40 = *(a1 + 3);
        if (v40 <= v5)
        {
          goto LABEL_122;
        }

        v43 = *(a1 + 5);
        v40 = *(v43 + a3 - 4);
        v9 = *(a1 + 40);
        if (v9 <= v40)
        {
          goto LABEL_123;
        }

        v12 = *(v43 + a3);
        if (v9 <= v12)
        {
          goto LABEL_124;
        }

        v44 = *(v43 + a3 + 4);
        if (v9 <= v44)
        {
          goto LABEL_125;
        }

        v45 = *(a1 + 42);
        v46 = *(v45 + 16 * v40);
        v47 = vsubq_f32(*(v45 + 16 * v12), v46);
        v48 = vsubq_f32(*(v45 + 16 * v44), v46);
        v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), vnegq_f32(v47)), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
        v50 = vmulq_f32(v49, v49);
        v12 = v61;
        v9 = v62;
        if ((v50.f32[1] + (v50.f32[2] + v50.f32[0])) == 0.0)
        {
LABEL_85:
          v17 = *(v9 + 16);
          if (v17 <= v5)
          {
            goto LABEL_111;
          }

          *(*(v9 + 32) + v5) = 0;
        }

        else
        {
LABEL_79:
          v17 = *(v9 + 16);
          if (v17 <= v5)
          {
            goto LABEL_111;
          }

          *(*(v9 + 32) + v5) = 1;
          v17 = *(a1 + 3);
          if (v17 <= v5)
          {
            goto LABEL_117;
          }

          v51 = *(a1 + 5);
          v12 = *(v51 + a3 - 4);
          v9 = a4[2];
          if (v9 <= v12)
          {
            goto LABEL_118;
          }

          v40 = *(v51 + a3 + 4);
          v52 = *(v51 + a3);
          v53 = a4[4];
          *(v53 + v12) = 1;
          if (v9 <= v52)
          {
            goto LABEL_119;
          }

          *(v53 + v52) = 1;
          if (v9 <= v40)
          {
            goto LABEL_120;
          }

          *(v53 + v40) = 1;
          v12 = v61;
          ++*v60;
          v9 = v62;
        }

        ++v5;
        a3 += 16;
      }

      while (v12 != v5);
    }

    if (v59)
    {
      v54 = 0;
      v55 = *v58;
      v17 = a4[2];
      v56 = a4[4];
      while (v17 != v54)
      {
        if (*(v56 + v54) == 1)
        {
          *v58 = ++v55;
        }

        if (v59 == ++v54)
        {
          goto LABEL_94;
        }
      }

      goto LABEL_110;
    }

LABEL_94:
    result = v64[0];
    if (v64[0])
    {
      if (v67)
      {
        return (*(*v64[0] + 40))();
      }
    }
  }

  else
  {
    if (v11)
    {
      a3 = 0;
      do
      {
        result = re::GeomConnectivityManifold::isValidFace(a1, a3);
        v17 = *(v9 + 16);
        if (v17 <= a3)
        {
          goto LABEL_113;
        }

        *(*(v9 + 32) + a3++) = result;
      }

      while (v11 != a3);
    }

    if (v13)
    {
      a3 = 0;
      do
      {
        result = re::GeomConnectivityManifold::isValidVertex(a1, a3);
        v17 = a4[2];
        if (v17 <= a3)
        {
          goto LABEL_114;
        }

        *(a4[4] + a3++) = result;
      }

      while (v13 != a3);
    }
  }

  return result;
}

uint64_t re::GeomConnectivityManifold::isValidVertex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  if (*(this + 18) <= a2)
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

  v2 = *(*(this + 20) + 4 * a2);
  if (*(this + 8) <= v2)
  {
    goto LABEL_5;
  }

  return *(*(this + 10) + 4 * v2) >> 31;
}

uint64_t re::internal::TriangleDecimator::convertCombinatorialMapToMesh(re::internal::TriangleDecimator *this, re::GeomMesh *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = 0;
  v45[1] = 0;
  v46 = 0;
  v44 = 0;
  v45[0] = 0;
  v47 = 0;
  v41[1] = 0;
  v42 = 0;
  v41[0] = 0;
  v43 = 0;
  re::internal::TriangleDecimator::filterValidComponents(this, v45, &v49 + 4, v41, &v49);
  v40 = 0;
  v37[1] = 0;
  v38 = 0;
  v37[0] = 0;
  v39 = 0;
  re::DynamicArray<unsigned int>::resize(v37, *this, &re::kInvalidMeshIndex);
  v8 = v42;
  if (v42)
  {
    v9 = 0;
    v10 = 0;
    v11 = v44;
    v12 = v38;
    v13 = v40;
    do
    {
      if (*(v11 + v9) == 1)
      {
        if (v12 <= v9)
        {
          goto LABEL_54;
        }

        *(v13 + 4 * v9) = v10++;
      }

      ++v9;
    }

    while (v8 != v9);
  }

  bzero(&v51, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v52, 1uLL);
  ++DWORD2(v53);
  re::internal::GeomAttributeManager::GeomAttributeManager(&v54[1]);
  re::internal::GeomAttributeManager::addAttribute(&v54[1], "vertexPosition", 1, 7);
  if (DWORD2(v51) > v49 && v53 && (v53 - 1) > v53)
  {
      ;
    }
  }

  DWORD2(v51) = v49;
  v55 = v49;
  if (v56)
  {
    v15 = v57;
    v16 = 8 * v56;
    do
    {
      v17 = *v15++;
      (*(*v17 + 80))(v17, v55);
      v16 -= 8;
    }

    while (v16);
  }

  v18 = HIDWORD(v49);
  if (HIDWORD(v49) < v53)
  {
    v2 = v62;
    if (v62)
    {
      v19 = 0;
      v3 = &v51;
      do
      {
        v20 = re::internal::GeomAttributeContainer::attributeByIndex(&v61, v19);
        re::internal::accessFaceVaryingAttributeSubmesh(v20, v21);
        ++v19;
      }

      while (v2 != v19);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v52, v18);
  v58 = v18;
  if (v59)
  {
    v22 = v60;
    v23 = 8 * v59;
    do
    {
      v24 = *v22++;
      (*(*v24 + 80))(v24, v58);
      v23 -= 8;
    }

    while (v23);
  }

  v25 = v46;
  if (v46)
  {
    v26 = 0;
    v3 = 0;
    v27 = 0;
    do
    {
      if (*(v3 + v48) == 1)
      {
        v12 = *(this + 3);
        if (v12 <= v3)
        {
          goto LABEL_55;
        }

        v28 = (*(this + 5) + v26);
        v4 = *v28;
        v12 = v38;
        if (v38 <= v4)
        {
          goto LABEL_56;
        }

        v5 = v28[1];
        if (v38 <= v5)
        {
          goto LABEL_57;
        }

        v2 = v28[2];
        if (v38 <= v2)
        {
          goto LABEL_58;
        }

        re::GeomMeshBuilder::setFaceVertices(&v51, v27++, *(v40 + 4 * v4), *(v40 + 4 * v5), *(v40 + 4 * v2));
        v25 = v46;
      }

      v3 = (v3 + 1);
      v26 += 16;
    }

    while (v25 > v3);
  }

  v29 = re::GeomMesh::operator=(a2, &v51 + 2);
  re::GeomMesh::setName(v29, v51);
  re::GeomMesh::freeName(&v51);
  v30 = re::GeomMesh::modifyVertexPositions(a2);
  v32 = v42;
  if (v42)
  {
    LODWORD(v33) = v31;
    v34 = 0;
    v35 = 0;
    while (1)
    {
      v12 = v38;
      if (v38 <= v35)
      {
        break;
      }

      v12 = *(v40 + 4 * v35);
      if (v12 != -1)
      {
        v2 = *(this + 40);
        if (v2 <= v35)
        {
          goto LABEL_52;
        }

        if (v12 >= v31)
        {
          goto LABEL_53;
        }

        *(v30 + 16 * v12) = *(*(this + 42) + v34);
        v32 = v42;
      }

      ++v35;
      v34 += 16;
      if (v32 <= v35)
      {
        goto LABEL_38;
      }
    }

    v50 = 0;
    v71 = 0u;
    v72 = 0u;
    memset(v70, 0, sizeof(v70));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 789;
    v66 = 2048;
    v67 = v35;
    v68 = 2048;
    v69 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v50 = 0;
    v33 = v63;
    v71 = 0u;
    v72 = 0u;
    memset(v70, 0, sizeof(v70));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 797;
    v66 = 2048;
    v67 = v35;
    v68 = 2048;
    v69 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v50 = 0;
    v9 = v63;
    v71 = 0u;
    v72 = 0u;
    memset(v70, 0, sizeof(v70));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 621;
    v66 = 2048;
    v67 = v12;
    v68 = 2048;
    v69 = v33;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    *v63 = 0;
    memset(v54, 0, 32);
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v70[0] = 136315906;
    *&v70[1] = "operator[]";
    LOWORD(v70[3]) = 1024;
    *(&v70[3] + 2) = 789;
    HIWORD(v70[4]) = 2048;
    *&v70[5] = v9;
    LOWORD(v70[7]) = 2048;
    *(&v70[7] + 2) = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v50 = 0;
    v71 = 0u;
    v72 = 0u;
    memset(v70, 0, sizeof(v70));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 797;
    v66 = 2048;
    v67 = v3;
    v68 = 2048;
    v69 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v50 = 0;
    v71 = 0u;
    v72 = 0u;
    memset(v70, 0, sizeof(v70));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 789;
    v66 = 2048;
    v67 = v4;
    v68 = 2048;
    v69 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v50 = 0;
    v71 = 0u;
    v72 = 0u;
    memset(v70, 0, sizeof(v70));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 789;
    v66 = 2048;
    v67 = v5;
    v68 = 2048;
    v69 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v50 = 0;
    v71 = 0u;
    v72 = 0u;
    memset(v70, 0, sizeof(v70));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    v64 = 1024;
    v65 = 789;
    v66 = 2048;
    v67 = v2;
    v68 = 2048;
    v69 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_38:
  re::GeomMesh::freeName(&v51);
  re::internal::GeomAttributeManager::~GeomAttributeManager(&v54[1]);
  if (v52 && v54[0])
  {
    (*(*v52 + 40))();
  }

  if (v37[0] && v40)
  {
    (*(*v37[0] + 40))();
  }

  if (v41[0] && v44)
  {
    (*(*v41[0] + 40))();
  }

  result = v45[0];
  if (v45[0] && v48)
  {
    return (*(*v45[0] + 40))();
  }

  return result;
}

uint64_t re::internal::TriangleDecimator::convertCombinatorialMapToMesh(unsigned int *a1, re::GeomMesh *a2, uint64_t a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v10 = &v50;
  v44[1] = 0;
  v45 = 0;
  v43 = 0;
  v44[0] = 0;
  v46 = 0;
  v40[1] = 0;
  v41 = 0;
  v40[0] = 0;
  v42 = 0;
  re::internal::TriangleDecimator::filterValidComponents(a1, v44, &v48 + 4, v40, &v48);
  v39 = 0;
  v36[1] = 0;
  v37 = 0;
  v36[0] = 0;
  v38 = 0;
  re::DynamicArray<unsigned int>::resize(v36, *a1, &re::kInvalidMeshIndex);
  v11 = v41;
  if (v41)
  {
    v12 = 0;
    v13 = 0;
    v14 = v43;
    v3 = v37;
    v15 = v39;
    do
    {
      if (*(v14 + v12) == 1)
      {
        if (v3 <= v12)
        {
          goto LABEL_54;
        }

        *(v15 + 4 * v12) = v13++;
      }

      ++v12;
    }

    while (v11 != v12);
  }

  bzero(&v50, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(v52, 1uLL);
  ++v54;
  re::internal::GeomAttributeManager::GeomAttributeManager(v56);
  re::internal::GeomAttributeManager::addAttribute(v56, "vertexPosition", 1, 7);
  if (v51 > v48 && v53 && (v53 - 1) > v53)
  {
      ;
    }
  }

  v51 = v48;
  v57 = v48;
  if (v58)
  {
    v17 = v59;
    v3 = 8 * v58;
    do
    {
      v18 = *v17++;
      (*(*v18 + 80))(v18, v57);
      v3 -= 8;
    }

    while (v3);
  }

  v19 = HIDWORD(v48);
  if (HIDWORD(v48) < v53)
  {
    v4 = v64;
    if (v64)
    {
      LODWORD(v3) = 0;
      v5 = &v50;
      do
      {
        v20 = re::internal::GeomAttributeContainer::attributeByIndex(&v63, v3);
        re::internal::accessFaceVaryingAttributeSubmesh(v20, v21);
        v3 = (v3 + 1);
      }

      while (v4 != v3);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(v52, v19);
  v60 = v19;
  if (v61)
  {
    v22 = v62;
    v3 = 8 * v61;
    do
    {
      v23 = *v22++;
      (*(*v23 + 80))(v23, v60);
      v3 -= 8;
    }

    while (v3);
  }

  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v24 = v45;
  if (v45)
  {
    v25 = 0;
    v10 = 0;
    v26 = 0;
    do
    {
      if (*(v10 + v47) == 1)
      {
        v3 = *(a1 + 3);
        if (v3 <= v10)
        {
          goto LABEL_55;
        }

        v27 = (*(a1 + 5) + v25);
        v6 = *v27;
        v3 = v37;
        if (v37 <= v6)
        {
          goto LABEL_56;
        }

        v4 = v27[1];
        if (v37 <= v4)
        {
          goto LABEL_57;
        }

        v5 = v27[2];
        if (v37 <= v5)
        {
          goto LABEL_58;
        }

        re::GeomMeshBuilder::setFaceVertices(&v50, v26, *(v39 + 4 * v6), *(v39 + 4 * v4), *(v39 + 4 * v5));
        v72[0] = v10;
        re::DynamicArray<int>::add(a3, v72);
        ++v26;
        v24 = v45;
      }

      v10 = (v10 + 1);
      v25 += 16;
    }

    while (v24 > v10);
  }

  v4 = &v50;
  v28 = re::GeomMesh::operator=(a2, &v51);
  re::GeomMesh::setName(v28, v50);
  re::GeomMesh::freeName(&v50);
  v29 = re::GeomMesh::modifyVertexPositions(a2);
  v31 = v41;
  if (v41)
  {
    LODWORD(v32) = v30;
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v12 = v37;
      if (v37 <= v34)
      {
        break;
      }

      v12 = *(v39 + 4 * v34);
      if (v12 != -1)
      {
        v3 = *(a1 + 40);
        if (v3 <= v34)
        {
          goto LABEL_52;
        }

        if (v12 >= v30)
        {
          goto LABEL_53;
        }

        *(v29 + 16 * v12) = *(*(a1 + 42) + v33);
        v31 = v41;
      }

      ++v34;
      v33 += 16;
      if (v31 <= v34)
      {
        goto LABEL_38;
      }
    }

    v49 = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v65 = 136315906;
    *&v65[4] = "operator[]";
    v66 = 1024;
    v67 = 789;
    v68 = 2048;
    v69 = v34;
    v70 = 2048;
    v71 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v49 = 0;
    v32 = v65;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v65 = 136315906;
    *&v65[4] = "operator[]";
    v66 = 1024;
    v67 = 797;
    v68 = 2048;
    v69 = v34;
    v70 = 2048;
    v71 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v49 = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v65 = 136315906;
    *&v65[4] = "operator[]";
    v66 = 1024;
    v67 = 621;
    v68 = 2048;
    v69 = v12;
    v70 = 2048;
    v71 = v32;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    *v65 = 0;
    *(v10 + 3) = 0u;
    *(v10 + 4) = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72[0] = 136315906;
    *&v72[1] = "operator[]";
    LOWORD(v72[3]) = 1024;
    *(&v72[3] + 2) = 789;
    HIWORD(v72[4]) = 2048;
    *&v72[5] = v12;
    LOWORD(v72[7]) = 2048;
    *(&v72[7] + 2) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v49 = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v65 = 136315906;
    *&v65[4] = "operator[]";
    v66 = 1024;
    v67 = 797;
    v68 = 2048;
    v69 = v10;
    v70 = 2048;
    v71 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v49 = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v65 = 136315906;
    *&v65[4] = "operator[]";
    v66 = 1024;
    v67 = 789;
    v68 = 2048;
    v69 = v6;
    v70 = 2048;
    v71 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v49 = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v65 = 136315906;
    *&v65[4] = "operator[]";
    v66 = 1024;
    v67 = 789;
    v68 = 2048;
    v69 = v4;
    v70 = 2048;
    v71 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v49 = 0;
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v65 = 136315906;
    *&v65[4] = "operator[]";
    v66 = 1024;
    v67 = 789;
    v68 = 2048;
    v69 = v5;
    v70 = 2048;
    v71 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_38:
  re::GeomMesh::freeName(&v50);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v56);
  if (v52[0] && v55)
  {
    (*(*v52[0] + 40))();
  }

  if (v36[0] && v39)
  {
    (*(*v36[0] + 40))();
  }

  if (v40[0] && v43)
  {
    (*(*v40[0] + 40))();
  }

  result = v44[0];
  if (v44[0] && v47)
  {
    return (*(*v44[0] + 40))();
  }

  return result;
}

double re::internal::TriangleDecimator::computeCentroidOfVertexPairOneRing(re::internal::TriangleDecimator *this, unsigned int *a2)
{
  v4 = 0;
  v5 = 0;
  v37 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  v21 = 0;
  v6 = 0uLL;
  v7 = 1;
  do
  {
    v17 = v6;
    v8 = v7;
    v9 = a2[v4 ^ 1];
    re::GeomConnectivityManifold::fetchVertexOneRing(this, a2[v4], v19);
    v11 = v20;
    if (v20)
    {
      v12 = v22;
      v6 = v17;
      do
      {
        v14 = *v12++;
        v13 = v14;
        if (v14 != v9)
        {
          v15 = *(this + 40);
          if (v15 <= v13)
          {
            v23 = 0;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v24 = 136315906;
            v25 = "operator[]";
            v26 = 1024;
            v27 = 797;
            v28 = 2048;
            v29 = v13;
            v30 = 2048;
            v31 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          ++v5;
          v10 = *(*(this + 42) + 16 * v13);
          v6 = vaddq_f32(v6, v10);
        }

        --v11;
      }

      while (v11);
    }

    else
    {
      v6 = v17;
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  if (v19[0] && v22)
  {
    v18 = v6;
    (*(*v19[0] + 40))();
    v6 = v18;
  }

  v10.f32[0] = v5;
  v10.i64[0] = vdivq_f32(v6, vdupq_lane_s32(*v10.f32, 0)).u64[0];
  return *v10.i64;
}