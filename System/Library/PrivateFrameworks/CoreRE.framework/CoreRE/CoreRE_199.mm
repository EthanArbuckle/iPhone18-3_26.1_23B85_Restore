void re::makeGeomModelFromModelDescriptor(re *this@<X0>, uint64_t a2@<X8>)
{
  v169 = *MEMORY[0x1E69E9840];
  re::makeGeomMeshFromModelDescriptor(this, v79);
  if ((v79[0] & 1) == 0)
  {
    v129[0] = v80;
    re::DynamicString::DynamicString(&v129[1], &v81);
    *a2 = 0;
    *(a2 + 8) = v129[0];
    *(a2 + 24) = *&v129[1];
    *(a2 + 48) = *(&v129[2] + 1);
    *(a2 + 32) = *(&v129[1] + 8);
    goto LABEL_198;
  }

  v5 = &v145;
  v6 = &v113;
  v7 = *(this + 1);
  if (!v7)
  {
    re::GeomModel::GeomModel(v129);
    if (!*(&v129[2] + 1))
    {
      re::DynamicArray<re::GeomMesh>::setCapacity(&v129[2], 1uLL);
    }

    re::DynamicArray<re::GeomMesh>::add(&v129[2], &v80);
    if (!v132)
    {
      re::DynamicArray<int>::setCapacity(&v131 + 1, 1uLL);
    }

    LODWORD(v149) = *(this + 1);
    re::DynamicArray<int>::add(&v131 + 1, &v149);
    v18 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v149, this + 136);
    v19 = v142;
    if (v142 >= v141)
    {
      v20 = v142 + 1;
      if (v141 < v142 + 1)
      {
        if (v140)
        {
          v21 = 8;
          if (v141)
          {
            v21 = 2 * v141;
          }

          if (v21 <= v20)
          {
            v22 = v142 + 1;
          }

          else
          {
            v22 = v21;
          }

          re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::setCapacity(&v140, v22);
        }

        else
        {
          re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::setCapacity(&v140, v20);
          ++v143;
        }
      }

      v19 = v142;
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v144 + 48 * v19, &v149);
    ++v142;
    ++v143;
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v149);
    v103 = 0;
    v100 = 0;
    v101 = 0uLL;
    v102 = 0;
    v98 = 0;
    v95 = 0;
    v96 = 0uLL;
    v97 = 0;
    re::DynamicArray<re::GeomIndexMap>::resize(&v100, 1uLL);
    re::DynamicArray<re::GeomIndexMap>::resize(&v95, 1uLL);
    v65 = 0;
    v66 = *(this + 4);
    *&v118[0] = 0xFFFFFFFF00000000;
    DWORD2(v118[0]) = -1;
    BYTE12(v118[0]) = 0;
    if (v66 - 1 <= 0xFFFFFFFD)
    {
      DWORD2(v118[0]) = v66 - 1;
      v65 = v66;
      *&v118[0] = v66;
    }

    LODWORD(v118[1]) = v65;
    if (!*(&v101 + 1))
    {
      goto LABEL_222;
    }

    re::GeomIndexMap::operator=(v103, v118);
    if (BYTE12(v118[0]))
    {
      if (BYTE12(v118[0]) == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v118[1]);
      }

      else
      {
        if (BYTE12(v118[0]) != 1)
        {
          goto LABEL_227;
        }

        if (*&v118[1] && v119)
        {
          (*(**&v118[1] + 40))();
        }
      }
    }

    if (!*(&v96 + 1))
    {
LABEL_223:
      *&v145 = 0;
      v152 = 0u;
      v151 = 0u;
      memset(v150, 0, sizeof(v150));
      v149 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v118[0]) = 136315906;
      *(v6 + 68) = "operator[]";
      WORD6(v118[0]) = 1024;
      *(v6 + 78) = 789;
      WORD1(v118[1]) = 2048;
      *(v6 + 84) = 0;
      WORD6(v118[1]) = 2048;
      *(v6 + 94) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::GeomIndexMap::operator=(v98, &v84);
    LOBYTE(v149) = 1;
    *(&v149 + 1) = v100;
    v150[0] = v101;
    v100 = 0;
    v101 = 0uLL;
    *(&v150[1] + 1) = v103;
    v103 = 0;
    ++v102;
    LODWORD(v150[1]) = 1;
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(v136, &v149);
    if (v149 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v149 + 8);
    }

    LOBYTE(v149) = 1;
    *(&v149 + 1) = v95;
    v150[0] = v96;
    v95 = 0;
    v96 = 0uLL;
    *(&v150[1] + 1) = v98;
    v98 = 0;
    ++v97;
    LODWORD(v150[1]) = 1;
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(v138, &v149);
    if (v149 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v149 + 8);
    }

    re::DynamicString::operator=(v129, (this + 184));
    re::Ok<re::GeomModel,re::GeomModel>(&v149, v129);
    re::Result<re::GeomModel,re::DetailedError>::Result(a2, &v149);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v161);
    if (v159[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v160);
    }

    if (v157[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v158);
    }

    if (*(&v152 + 1))
    {
      if (v156)
      {
        (*(**(&v152 + 1) + 40))();
      }

      v156 = 0;
      v153 = 0;
      v154 = 0;
      *(&v152 + 1) = 0;
      ++v155;
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v150[1]);
    if (v149 && (BYTE8(v149) & 1) != 0)
    {
      (*(*v149 + 40))();
    }

    re::DynamicArray<re::GeomIndexMap>::deinit(&v95);
    re::DynamicArray<re::GeomIndexMap>::deinit(&v100);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v140);
    if (v138[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v139);
    }

    if (v136[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v137);
    }

    if (*(&v131 + 1))
    {
      if (v135)
      {
        (*(**(&v131 + 1) + 40))();
      }

      v135 = 0;
      v132 = 0;
      v133 = 0;
      *(&v131 + 1) = 0;
      ++v134;
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v129[2]);
    if (*&v129[0] && (BYTE8(v129[0]) & 1) != 0)
    {
      (*(**&v129[0] + 40))();
    }

LABEL_198:
    if (v79[0] == 1)
    {
      v69 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(&v90);
      if (v86 == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v87);
      }

      else if (v86 == 1)
      {
        if (v87[0])
        {
          if (v89)
          {
            (*(*v87[0] + 40))(v69);
          }

          v89 = 0;
          memset(v87, 0, sizeof(v87));
          ++v88;
        }
      }

      else
      {
        if (v86)
        {
          goto LABEL_226;
        }

        LODWORD(v87[0]) = 0;
      }

      re::GeomMesh::~GeomMesh(&v80);
    }

    else if (v81 && (v82 & 1) != 0)
    {
      (*(*v81 + 40))();
    }

    return;
  }

  v8 = (v7 + 8);
  v9 = *(v7 + 33);
  if (v9 >= 6)
  {
    v10 = v9 == 5;
  }

  else
  {
    v10 = 0x30u >> v9;
  }

  if (v10 & 1) != 0 && (*(v7 + 32))
  {
    v11 = (v7 + 8);
    v12 = *(v7 + 48);
    v77 = (*(v7 + 24) + *(v7 + 56));
    v13 = (v7 + 8);

    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = v7;
  }

  else
  {
    v23 = re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v7, v129);
    if (LOBYTE(v129[0]) == 1)
    {
      v14 = *(&v129[0] + 1);
      v15 = *(&v129[1] + 1);
      v16 = *&v129[1] == 0;
      v12 = 4;
    }

    else
    {
      if (*(&v129[1] + 1) && (v129[2] & 1) != 0)
      {
        (*(**(&v129[1] + 1) + 40))(v23);
      }

      v14 = 0;
      v15 = 0;
      v12 = 0;
      v16 = 1;
    }

    v17 = 0;
    v77 = v15;
  }

  if (*(this + 3) != v83)
  {
    v33 = v129[0];
    v34 = v129[1];
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v33;
    *(a2 + 40) = v34;
LABEL_155:
    if (v14 != 0 && !v16)
    {
      (*(*v14 + 40))(v14, v15);
    }

    if (v17)
    {
    }

    goto LABEL_198;
  }

  v72 = v14;
  v73 = v17;
  v71 = v15;
  v74 = this;
  v75 = a2;
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v78, this + 136);
  v25 = re::GeomModel::GeomModel(&v149);
  v147 = 0;
  v146 = 0u;
  v145 = 0u;
  v148 = 0x7FFFFFFFLL;
  v26 = v83;
  if (v83)
  {
    v27 = 0;
    v28 = v77;
    do
    {
      LODWORD(v118[0]) = *v28;
      v29 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&v145, v118[0]);
      v25 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v90, v27);
      if (v25 == -1)
      {
        v30 = 1;
      }

      else
      {
        v30 = *(v91 + 96 * v25 + 40);
      }

      *&v129[0] = v30;
      if (v29)
      {
        *v29 += v30;
      }

      else
      {
        v25 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(&v145, v118, v129);
      }

      v28 = (v28 + v12);
      ++v27;
    }

    while (v26 != v27);
    v31 = HIDWORD(v146);
    v32 = v147;
  }

  else
  {
    v32 = 0;
    v31 = 0;
  }

  v115 = 0;
  v114 = 0u;
  v113 = 0u;
  v116 = 0x7FFFFFFFLL;
  if (v32)
  {
    v35 = 0;
    v36 = v146;
    while (1)
    {
      v37 = *v36;
      v36 += 6;
      if (v37 < 0)
      {
        break;
      }

      if (v32 == ++v35)
      {
        LODWORD(v35) = v32;
        break;
      }
    }
  }

  else
  {
    LODWORD(v35) = 0;
  }

  if (v35 != v32)
  {
    v38 = v146;
    do
    {
      v39 = v38 + 24 * v35;
      LODWORD(v118[0]) = *(v39 + 4);
      v40 = *(v39 + 8);
      *&v129[2] = 0;
      memset(v129, 0, 28);
      if (v40)
      {
        re::DynamicArray<int>::setCapacity(v129, v40);
      }

      re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(&v113, v118, v129);
      if (*&v129[0] && *&v129[2])
      {
        (*(**&v129[0] + 40))();
      }

      if (v32 <= v35 + 1)
      {
        v41 = v35 + 1;
      }

      else
      {
        v41 = v32;
      }

      while (v41 - 1 != v35)
      {
        LODWORD(v35) = v35 + 1;
        if ((*(v38 + 24 * v35) & 0x80000000) != 0)
        {
          goto LABEL_63;
        }
      }

      LODWORD(v35) = v41;
LABEL_63:
      ;
    }

    while (v35 != v32);
  }

  v76 = v31;
  v70 = v16;
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      v43 = re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&v113, *(v77 + v12 * i));
      v44 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v90, i);
      if (v44 == -1)
      {
        LODWORD(v129[0]) = i;
        re::DynamicArray<int>::add(v43, v129);
      }

      else
      {
        v45 = v91 + 96 * v44;
        v46 = *(v45 + 40);
        if (v46)
        {
          v47 = 0;
          v6 = 0;
          while (1)
          {
            v48 = *(v45 + 40);
            if (v48 <= v6)
            {
              break;
            }

            re::DynamicArray<int>::add(v43, (*(v45 + 48) + v47));
            ++v6;
            v47 += 4;
            if (v46 == v6)
            {
              goto LABEL_73;
            }
          }

          v100 = 0;
          v131 = 0u;
          v130 = 0u;
          memset(v129, 0, sizeof(v129));
          v56 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v118[0]) = 136315906;
          *(v118 + 4) = "operator[]";
          WORD6(v118[0]) = 1024;
          *(v118 + 14) = 476;
          WORD1(v118[1]) = 2048;
          *(&v118[1] + 4) = v6;
          WORD6(v118[1]) = 2048;
          *(&v118[1] + 14) = v48;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_214:
          *v162 = 0;
          v131 = 0u;
          v130 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v118[0]) = 136315906;
          *(v118 + 4) = "operator[]";
          WORD6(v118[0]) = 1024;
          *(v118 + 14) = 789;
          WORD1(v118[1]) = 2048;
          *(&v118[1] + 4) = v43;
          WORD6(v118[1]) = 2048;
          *(&v118[1] + 14) = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_215:
          *v162 = 0;
          v131 = 0u;
          v130 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v118[0]) = 136315906;
          *(v118 + 4) = "operator[]";
          WORD6(v118[0]) = 1024;
          *(v118 + 14) = 789;
          WORD1(v118[1]) = 2048;
          *(&v118[1] + 4) = v43;
          WORD6(v118[1]) = 2048;
          *(&v118[1] + 14) = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_216:
          v117 = 0;
          v120 = 0u;
          v119 = 0u;
          memset(v118, 0, sizeof(v118));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v162 = 136315906;
          *&v162[4] = "operator[]";
          v163 = 1024;
          v164 = 789;
          v165 = 2048;
          v166 = v43;
          v167 = 2048;
          v168 = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_217:
          v93 = 0;
          v131 = 0u;
          v130 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v162 = 136315906;
          *&v162[4] = "operator[]";
          v163 = 1024;
          v164 = 789;
          v165 = 2048;
          v166 = v43;
          v167 = 2048;
          v168 = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_218:
          *v162 = 0;
          v131 = 0u;
          v130 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v118[0]) = 136315906;
          *(v118 + 4) = "operator[]";
          WORD6(v118[0]) = 1024;
          *(v118 + 14) = 789;
          WORD1(v118[1]) = 2048;
          *(&v118[1] + 4) = v43;
          WORD6(v118[1]) = 2048;
          *(&v118[1] + 14) = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_219:
          *v162 = 0;
          v131 = 0u;
          v130 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v118[0]) = 136315906;
          *(v118 + 4) = "operator[]";
          WORD6(v118[0]) = 1024;
          *(v118 + 14) = 789;
          WORD1(v118[1]) = 2048;
          *(&v118[1] + 4) = v43;
          WORD6(v118[1]) = 2048;
          *(&v118[1] + 14) = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_220:
          *v162 = 0;
          v131 = 0u;
          v130 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v118[0]) = 136315906;
          *(v118 + 4) = "operator[]";
          WORD6(v118[0]) = 1024;
          *(v118 + 14) = 789;
          WORD1(v118[1]) = 2048;
          *(&v118[1] + 4) = v43;
          WORD6(v118[1]) = 2048;
          *(&v118[1] + 14) = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_221:
          *v162 = 0;
          v131 = 0u;
          v130 = 0u;
          memset(v129, 0, sizeof(v129));
          v5 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v118[0]) = 136315906;
          *(v118 + 4) = "operator[]";
          WORD6(v118[0]) = 1024;
          *(v118 + 14) = 789;
          WORD1(v118[1]) = 2048;
          *(&v118[1] + 4) = v43;
          WORD6(v118[1]) = 2048;
          *(&v118[1] + 14) = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_222:
          *&v113 = 0;
          v152 = 0u;
          v151 = 0u;
          memset(v150, 0, sizeof(v150));
          v149 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v145) = 136315906;
          *(v5 + 4) = "operator[]";
          WORD6(v145) = 1024;
          *(v5 + 14) = 789;
          WORD1(v146) = 2048;
          *(v5 + 20) = 0;
          WORD6(v146) = 2048;
          *(v5 + 30) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_223;
        }
      }

LABEL_73:
      ;
    }
  }

  re::DynamicArray<re::GeomMesh>::resize(&v150[1], v76);
  LODWORD(v129[0]) = 0;
  re::DynamicArray<unsigned int>::resize(&v152 + 1, v76, v129);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::resize(v161, v76, v78);
  v112 = 0;
  v109 = 0;
  v110 = 0uLL;
  v111 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0uLL;
  v107 = 0;
  re::DynamicArray<re::GeomIndexMap>::resize(&v109, v76);
  re::DynamicArray<re::GeomIndexMap>::resize(&v105, v76);
  v100 = v84;
  LODWORD(v101) = v85;
  BYTE4(v101) = v86;
  if (v86 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v101 + 8, v87);
  }

  else if (v86 == 1)
  {
    re::DynamicArray<float>::DynamicArray(&v101 + 8, v87);
  }

  else
  {
    if (v86)
    {
      goto LABEL_228;
    }

    DWORD2(v101) = v87[0];
  }

  v50 = v115;
  if (v115)
  {
    v51 = 0;
    v52 = v114;
    while (1)
    {
      v53 = *v52;
      v52 += 14;
      if (v53 < 0)
      {
        break;
      }

      if (v115 == ++v51)
      {
        LODWORD(v51) = v115;
        break;
      }
    }
  }

  else
  {
    LODWORD(v51) = 0;
  }

  if (v51 == v115)
  {
LABEL_118:
    LOBYTE(v129[0]) = 1;
    *(&v129[0] + 1) = v109;
    v129[1] = v110;
    v109 = 0;
    v110 = 0uLL;
    *(&v129[2] + 1) = v112;
    v112 = 0;
    ++v111;
    LODWORD(v129[2]) = 1;
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(v157, v129);
    if (LOBYTE(v129[0]) == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v129 + 8);
    }

    LOBYTE(v129[0]) = 1;
    *(&v129[0] + 1) = v105;
    v129[1] = v106;
    v105 = 0;
    v106 = 0uLL;
    *(&v129[2] + 1) = v108;
    v108 = 0;
    ++v107;
    LODWORD(v129[2]) = 1;
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(v159, v129);
    v17 = v73;
    if (LOBYTE(v129[0]) == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v129 + 8);
    }

    re::Ok<re::GeomModel,re::GeomModel>(v118, &v149);
    re::Result<re::GeomModel,re::DetailedError>::Result(v129, v118);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v128);
    if (v126[40] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v127);
    }

    if (v125 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v126);
    }

    if (*(&v120 + 1))
    {
      if (v124)
      {
        (*(**(&v120 + 1) + 40))();
      }

      v124 = 0;
      v121 = 0;
      v122 = 0;
      *(&v120 + 1) = 0;
      ++v123;
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v118[2]);
    if (*&v118[0] && (BYTE8(v118[0]) & 1) != 0)
    {
      (*(**&v118[0] + 40))();
    }

    if (BYTE4(v101))
    {
      if (BYTE4(v101) == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v101 + 8);
      }

      else
      {
        if (BYTE4(v101) != 1)
        {
          goto LABEL_229;
        }

        if (*(&v101 + 1) && v104)
        {
          (*(**(&v101 + 1) + 40))();
        }
      }
    }

    re::DynamicArray<re::GeomIndexMap>::deinit(&v105);
    re::DynamicArray<re::GeomIndexMap>::deinit(&v109);
    re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(&v113);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v145);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v161);
    if (v159[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v160);
    }

    if (v157[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v158);
    }

    if (*(&v152 + 1))
    {
      if (v156)
      {
        (*(**(&v152 + 1) + 40))();
      }

      v156 = 0;
      v153 = 0;
      v154 = 0;
      *(&v152 + 1) = 0;
      ++v155;
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v150[1]);
    if (v149 && (BYTE8(v149) & 1) != 0)
    {
      (*(*v149 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v78);
    if (LOBYTE(v129[0]) == 1)
    {
      re::DynamicString::operator=((v129 + 8), (v74 + 184));
      re::Result<re::GeomModel,re::DetailedError>::Result(v75, v129);
    }

    else
    {
      v149 = *(v129 + 8);
      re::DynamicString::DynamicString(v150, (&v129[1] + 8));
      *v75 = 0;
      *(v75 + 8) = v149;
      v64 = *(&v150[1] + 1);
      *(v75 + 24) = *&v150[0];
      *(v75 + 48) = v64;
      *(v75 + 32) = *(v150 + 8);
    }

    v16 = v70;
    re::Result<re::GeomModel,re::DetailedError>::~Result(v129);
    v15 = v71;
    v14 = v72;
    goto LABEL_155;
  }

  v54 = 0;
  v55 = v114;
  v6 = 80;
  while (1)
  {
    v95 = 0xFFFFFFFF00000000;
    LODWORD(v96) = -1;
    BYTE4(v96) = 0;
    DWORD2(v96) = 0;
    v43 = v54;
    v56 = v154;
    if (v154 <= v54)
    {
      goto LABEL_214;
    }

    v57 = v55 + 56 * v51;
    *(v156 + 4 * v43) = *(v57 + 4);
    v94 = 0;
    v93 = 0;
    v58 = *(v57 + 40);
    v59 = *(v57 + 24);
    v93 = v58;
    v94 = v59;
    v92[1] = 0;
    v92[0] = 0;
    v56 = *(&v110 + 1);
    if (*(&v110 + 1) <= v43)
    {
      goto LABEL_215;
    }

    re::makeMeshFromFaces(&v80, &v93, v92, v112 + 80 * v43, &v95, v129);
    v56 = v151;
    if (v151 <= v43)
    {
      goto LABEL_216;
    }

    re::GeomMesh::operator=((v152 + 736 * v43), v129);
    re::GeomMesh::~GeomMesh(v129);
    re::remapIndexMap(&v95, &v100, v118);
    v56 = *(&v106 + 1);
    if (*(&v106 + 1) <= v43)
    {
      goto LABEL_217;
    }

    re::GeomIndexMap::operator=(v108 + 80 * v43, v118);
    if (BYTE12(v118[0]))
    {
      break;
    }

LABEL_99:
    v56 = v151;
    if (v151 <= v43)
    {
      goto LABEL_218;
    }

    v56 = *(&v110 + 1);
    if (*(&v110 + 1) <= v43)
    {
      goto LABEL_219;
    }

    re::remapSkinningAttributes(v152 + 736 * v43, &v80, v112 + 80 * v43);
    v56 = v151;
    if (v151 <= v43)
    {
      goto LABEL_220;
    }

    v56 = *(&v110 + 1);
    if (*(&v110 + 1) <= v43)
    {
      goto LABEL_221;
    }

    re::remapSubdivisionSurfaceAttributes((v152 + 736 * v43), &v80, v112 + 80 * v43);
    if (BYTE4(v96))
    {
      if (BYTE4(v96) == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v96 + 8);
      }

      else
      {
        if (BYTE4(v96) != 1)
        {
          goto LABEL_225;
        }

        if (*(&v96 + 1) && v99)
        {
          (*(**(&v96 + 1) + 40))();
        }
      }
    }

    if (v50 <= v51 + 1)
    {
      v62 = v51 + 1;
    }

    else
    {
      v62 = v50;
    }

    while (v62 - 1 != v51)
    {
      LODWORD(v51) = v51 + 1;
      if ((*(v55 + 56 * v51) & 0x80000000) != 0)
      {
        goto LABEL_117;
      }
    }

    LODWORD(v51) = v62;
LABEL_117:
    v54 = v43 + 1;
    if (v51 == v50)
    {
      goto LABEL_118;
    }
  }

  if (BYTE12(v118[0]) == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v118[1]);
    goto LABEL_99;
  }

  if (BYTE12(v118[0]) == 1)
  {
    if (*&v118[1] && v119)
    {
      (*(**&v118[1] + 40))();
    }

    goto LABEL_99;
  }

  re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
LABEL_225:
  re::internal::assertLog(4, v61, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
LABEL_226:
  re::internal::assertLog(4, v68, v69, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
LABEL_227:
  re::internal::assertLog(4, v67, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
LABEL_228:
  re::internal::assertLog(4, v49, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
  _os_crash();
  __break(1u);
LABEL_229:
  re::internal::assertLog(4, v63, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
}

void re::DynamicArray<re::GeomIndexMap>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v8 = 80 * a2;
      v9 = a2;
      while (1)
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + v8 + 12);
        if (v11 == 2)
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v10 + v8 + 16);
        }

        else if (v11 == 1)
        {
          re::DynamicArray<unsigned long>::deinit(v10 + v8 + 16);
        }

        else
        {
          if (*(v10 + v8 + 12))
          {
            re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash();
            __break(1u);
            return;
          }

          *(v10 + v8 + 16) = 0;
        }

        ++v9;
        v8 += 80;
        if (v9 >= *(a1 + 16))
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::GeomIndexMap>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0xFFFFFFFF00000000;
        *(v7 + 8) = -1;
        *(v7 + 12) = 0;
        *(v7 + 16) = 0;
        v6 += 80;
        --v5;
      }

      while (v5);
    }

LABEL_17:
    *(a1 + 16) = a2;
    ++*(a1 + 24);
  }
}

double re::Ok<re::GeomModel,re::GeomModel>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a2 + 24) = 0u;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0u;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0u;
  ++*(a2 + 56);
  *(a1 + 56) = 1;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  ++*(a2 + 96);
  *(a1 + 96) = 1;
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 112, (a2 + 112));
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 160, (a2 + 160));
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a1 + 216) = *(a2 + 216);
  result = 0.0;
  *(a2 + 216) = 0u;
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  ++*(a2 + 232);
  *(a1 + 232) = 1;
  return result;
}

uint64_t re::Result<re::GeomModel,re::DetailedError>::Result(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 32) = *(a2 + 24);
  v4 = *(a2 + 8);
  *(a1 + 8) = *a2;
  *a2 = 0;
  v5 = *(a2 + 16);
  *(a2 + 24) = 0;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v8 = *(a2 + 40);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a2 + 48) = v9;
  v10 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 64);
  *(a2 + 64) = v10;
  ++*(a2 + 56);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v11 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 88) = v11;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v12 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 88);
  *(a2 + 88) = v12;
  v13 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 104);
  *(a2 + 104) = v13;
  ++*(a2 + 96);
  ++*(a1 + 104);
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 120, (a2 + 112));
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 168, (a2 + 160));
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  v14 = *(a2 + 216);
  *(a1 + 216) = *(a2 + 208);
  *(a1 + 224) = v14;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v15 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 224);
  *(a2 + 224) = v15;
  v16 = *(a1 + 248);
  *(a1 + 248) = *(a2 + 240);
  *(a2 + 240) = v16;
  ++*(a2 + 232);
  ++*(a1 + 240);
  return a1;
}

_BYTE *re::Result<re::GeomModel,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit((a1 + 216));
    if (a1[168] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit((a1 + 176));
    }

    v2 = (a1 + 8);
    if (a1[120] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit((a1 + 128));
    }

    re::DynamicArray<unsigned long>::deinit((a1 + 80));
    re::DynamicArray<re::GeomMesh>::deinit((a1 + 40));
  }

  else
  {
    v2 = (a1 + 24);
  }

  re::DynamicString::deinit(v2);
  return a1;
}

__n128 re::internal::DataPayload::computePoDConversionHelper<unsigned int>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v88 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 > 5)
  {
    if (v5 - 8 < 4)
    {
      v13 = "Could not convert values to specified output type.";
LABEL_13:
      result = v83;
      v15 = v84;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = result;
      *(a2 + 40) = v15;
      return result;
    }

    if (v5 == 6)
    {
      v72 = 0uLL;
      v73 = 0;
      v6 = *(a1 + 40);
      v52 = *(v3 + 48);
      v53 = *(v3 + 24) + *(v3 + 56);
      v54 = v52 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v54)
        {
          v55 = 0;
          v56 = 0;
          v3 = v72.n128_u64[1];
          v57 = v73;
          while (v3 != v55)
          {
            *(v57 + 4 * v55) = *(v53 + v56);
            v56 += v52;
            ++v55;
            if (v56 >= v54)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_116;
        }
      }

      else if (v54)
      {
        v6 = 0;
        v70 = 0;
        while (1)
        {
          v2 = v72.n128_u64[1];
          if (v72.n128_u64[1] <= v6)
          {
            break;
          }

          *(v73 + 4 * v6) = *(v53 + v70);
          v70 += *(v3 + 48);
          ++v6;
          if (v70 >= v54)
          {
            goto LABEL_101;
          }
        }

LABEL_117:
        v74 = 0;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v6;
        v81 = 2048;
        v82 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      if (v5 != 7)
      {
LABEL_61:
        v13 = "Unrecognized/Unsupported type.";
        goto LABEL_13;
      }

      v72 = 0uLL;
      v73 = 0;
      v6 = *(a1 + 40);
      v22 = *(v3 + 48);
      v23 = *(v3 + 24) + *(v3 + 56);
      v24 = v22 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          v3 = v72.n128_u64[1];
          v27 = v73;
          while (v3 != v25)
          {
            *(v27 + 4 * v25) = *(v23 + v26);
            v26 += v22;
            ++v25;
            if (v26 >= v24)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_114;
        }
      }

      else if (v24)
      {
        v68 = 0;
        v6 = 0;
        v69 = 0;
        do
        {
          v2 = v72.n128_u64[1];
          if (v72.n128_u64[1] <= v6)
          {
            goto LABEL_115;
          }

          *(v73 + v68) = *(v23 + v69);
          v69 += *(v3 + 48);
          ++v6;
          v68 += 4;
        }

        while (v69 < v24);
      }
    }
  }

  else
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v72 = 0uLL;
          v73 = 0;
          v6 = *(a1 + 40);
          v40 = *(v3 + 48);
          v41 = *(v3 + 24) + *(v3 + 56);
          v42 = v40 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v42)
            {
              v43 = 0;
              v44 = 0;
              v3 = v72.n128_u64[1];
              v45 = v73;
              while (v3 != v43)
              {
                *(v45 + 4 * v43) = *(v41 + v44);
                v44 += v40;
                ++v43;
                if (v44 >= v42)
                {
                  goto LABEL_101;
                }
              }

              goto LABEL_110;
            }
          }

          else if (v42)
          {
            v65 = 0;
            v6 = 0;
            v66 = 0;
            while (1)
            {
              v2 = v72.n128_u64[1];
              if (v72.n128_u64[1] <= v6)
              {
                goto LABEL_112;
              }

              *(v73 + v65) = *(v41 + v66);
              v66 += *(v3 + 48);
              ++v6;
              v65 += 4;
              if (v66 >= v42)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else
        {
          v72 = 0uLL;
          v73 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = v72.n128_u64[1];
              v12 = v73;
              while (v3 != v10)
              {
                *(v12 + 4 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_101;
                }
              }

              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_103:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_104:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_105:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_106:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_107:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_108:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_109:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_111:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_112:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_113:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_115:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_116:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_117;
            }
          }

          else if (v9)
          {
            v58 = 0;
            v6 = 0;
            v59 = 0;
            while (1)
            {
              v2 = v72.n128_u64[1];
              if (v72.n128_u64[1] <= v6)
              {
                goto LABEL_104;
              }

              *(v73 + v58) = *(v8 + v59);
              v59 += *(v3 + 48);
              ++v6;
              v58 += 4;
              if (v59 >= v9)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v72 = 0uLL;
        v73 = 0;
        v6 = *(a1 + 40);
        v28 = *(v3 + 48);
        v29 = *(v3 + 24) + *(v3 + 56);
        v30 = v28 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v3 = v72.n128_u64[1];
            v33 = v73;
            while (v3 != v31)
            {
              *(v33 + 4 * v31) = *(v29 + v32);
              v32 += v28;
              ++v31;
              if (v32 >= v30)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_106;
          }
        }

        else if (v30)
        {
          v61 = 0;
          v6 = 0;
          v62 = 0;
          while (1)
          {
            v2 = v72.n128_u64[1];
            if (v72.n128_u64[1] <= v6)
            {
              goto LABEL_108;
            }

            *(v73 + v61) = *(v29 + v62);
            v62 += *(v3 + 48);
            ++v6;
            v61 += 4;
            if (v62 >= v30)
            {
              goto LABEL_101;
            }
          }
        }
      }

      goto LABEL_101;
    }

    switch(v5)
    {
      case 3u:
        v72 = 0uLL;
        v73 = 0;
        v6 = *(a1 + 40);
        v34 = *(v3 + 48);
        v35 = *(v3 + 24) + *(v3 + 56);
        v36 = v34 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v36)
          {
            v37 = 0;
            v38 = 0;
            v3 = v72.n128_u64[1];
            v39 = v73;
            while (v3 != v37)
            {
              *(v39 + 4 * v37) = *(v35 + v38);
              v38 += v34;
              ++v37;
              if (v38 >= v36)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_107;
          }
        }

        else if (v36)
        {
          v63 = 0;
          v6 = 0;
          v64 = 0;
          while (1)
          {
            v2 = v72.n128_u64[1];
            if (v72.n128_u64[1] <= v6)
            {
              goto LABEL_109;
            }

            *(v73 + v63) = *(v35 + v64);
            v64 += *(v3 + 48);
            ++v6;
            v63 += 4;
            if (v64 >= v36)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 4u:
        v72 = 0uLL;
        v73 = 0;
        v6 = *(a1 + 40);
        v46 = *(v3 + 48);
        v47 = *(v3 + 24) + *(v3 + 56);
        v48 = v46 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v48)
          {
            v49 = 0;
            v50 = 0;
            v3 = v72.n128_u64[1];
            v51 = v73;
            while (v3 != v49)
            {
              *(v51 + 4 * v49) = *(v47 + v50);
              v50 += v46;
              ++v49;
              if (v50 >= v48)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_111;
          }
        }

        else if (v48)
        {
          v6 = 0;
          v67 = 0;
          while (1)
          {
            v2 = v72.n128_u64[1];
            if (v72.n128_u64[1] <= v6)
            {
              goto LABEL_113;
            }

            *(v73 + 4 * v6) = *(v47 + v67);
            v67 += *(v3 + 48);
            ++v6;
            if (v67 >= v48)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 5u:
        v72 = 0uLL;
        v73 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = v72.n128_u64[1];
            v21 = v73;
            while (v3 != v19)
            {
              *(v21 + 4 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_103;
          }
        }

        else if (v18)
        {
          v6 = 0;
          v60 = 0;
          while (1)
          {
            v2 = v72.n128_u64[1];
            if (v72.n128_u64[1] <= v6)
            {
              goto LABEL_105;
            }

            *(v73 + 4 * v6) = *(v17 + v60);
            v60 += *(v3 + 48);
            ++v6;
            if (v60 >= v18)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      default:
        goto LABEL_61;
    }
  }

LABEL_101:
  result = v72;
  v71 = v73;
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v71;
  return result;
}

_DWORD *re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(void *a1, unsigned int *a2, uint64_t a3)
{
  result = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, *a2);
  if (result == -1)
  {

    return re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

__n128 re::internal::DataPayload::computeConvertedValues<re::PackedFloat3>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 33) | 2) == 0xB)
  {
    v4 = *(a1 + 24) + *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48) * v5;
    v19 = 0uLL;
    v20 = 0;
    if (*(a1 + 32))
    {
      if (v6)
      {
        v7 = 0;
        v8 = v19.n128_u64[1];
        v9 = (v20 + 8);
        v10 = v19.n128_u64[1] + 1;
        while (--v10)
        {
          v11 = *(v4 + v7 + 8);
          *(v9 - 1) = *(v4 + v7);
          *v9 = v11;
          v9 += 3;
          v7 += *(a1 + 48);
          if (v7 >= v6)
          {
            goto LABEL_13;
          }
        }

        v21 = 0;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v22 = 136315906;
        v23 = "operator[]";
        v24 = 1024;
        v25 = 468;
        v26 = 2048;
        v27 = v8;
        v28 = 2048;
        v29 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_16;
      }
    }

    else if (v6)
    {
      v14 = 0;
      v8 = v19.n128_u64[1];
      v15 = (v20 + 8);
      v16 = v19.n128_u64[1] + 1;
      while (--v16)
      {
        v17 = *(v4 + v14 + 8);
        *(v15 - 1) = *(v4 + v14);
        *v15 = v17;
        v15 += 3;
        v14 += *(a1 + 48);
        if (v14 >= v6)
        {
          goto LABEL_13;
        }
      }

LABEL_16:
      v21 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      v25 = 468;
      v26 = 2048;
      v27 = v8;
      v28 = 2048;
      v29 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_13:
    result = v19;
    v18 = v20;
    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 24) = v18;
  }

  else
  {
    result = v30;
    v13 = v31;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v13;
  }

  return result;
}

uint64_t re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(void *a1, unsigned int a2)
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
  v4 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
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
    if (*(a1[1] + 96 * (v12 + v13)) == a2)
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

_DWORD *re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::resize(a1);
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
  v16 = 3 * (v13 + 16 * v11);
  v17 = *(a1 + 8) + 96 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 8) = 0;
  v18 = *(a3 + 8);
  *(v17 + 8) = *a3;
  *(v17 + 16) = v18;
  *a3 = 0;
  *(a3 + 8) = 0;
  v19 = *(v17 + 24);
  *(v17 + 24) = *(a3 + 16);
  *(a3 + 16) = v19;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 32) = 0;
  v20 = *(a3 + 32);
  *(v17 + 32) = *(a3 + 24);
  *(v17 + 40) = v20;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v21 = *(v17 + 48);
  *(v17 + 48) = *(a3 + 40);
  *(a3 + 40) = v21;
  *(v17 + 88) = 0;
  *(v17 + 80) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 56) = 0;
  v22 = *(a3 + 56);
  *(v17 + 56) = *(a3 + 48);
  *(v17 + 64) = v22;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v23 = *(v17 + 72);
  *(v17 + 72) = *(a3 + 64);
  *(a3 + 64) = v23;
  v24 = *(v17 + 88);
  *(v17 + 88) = *(a3 + 80);
  *(a3 + 80) = v24;
  ++*(a3 + 72);
  ++*(v17 + 80);
  if (v15 == 255)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v26.i64[1] = v25;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v26);
  v27 = (*(a1 + 8) + 32 * v16);
  v29 = *v27;
  result = v27 + 2;
  v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
  *(a1 + 40) ^= (v30 >> 31) ^ v30;
  return result;
}

double re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::resize(uint64_t a1)
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
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::init(v27, v8, v3);
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
        re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(v27, *(v25[0] + 8) + 96 * v17, *(v25[0] + 8) + 96 * v17 + 8, v14, v9);
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
  return re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(v27);
}

void re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = (v3 + 8);
    v5 = *(v3 + 33);
    if (v5 >= 6)
    {
      v6 = v5 == 5;
    }

    else
    {
      v6 = 0x30u >> v5;
    }

    if (v6 & 1) != 0 && (*(v3 + 32))
    {
      v7 = (v3 + 8);
      *a2 = *(v3 + 24) + *(v3 + 56);
      *(a2 + 8) = vextq_s8(*(v3 + 40), *(v3 + 40), 8uLL);
      *(a2 + 24) = v3;
      v8 = (v3 + 8);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v3, v11);
      if (v11[0] == 1)
      {
        v9 = v13;
        *(a2 + 32) = v12;
        *(a2 + 40) = v9;
        v10 = v14;
        *(a2 + 48) = v14;
        *a2 = v10;
        *(a2 + 8) = 4;
        *(a2 + 16) = v9;
        *(a2 + 24) = 0;
      }

      else
      {
        *(a2 + 48) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
        if (v14)
        {
          if (v15)
          {
            (*(*v14 + 40))();
          }
        }
      }
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

void re::GeomModelDescriptor::makeConvertedValues<signed char>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 33);
    if (v4 >= 6)
    {
      v5 = *(v3 + 33) == 0;
    }

    else
    {
      v5 = 3u >> v4;
    }

    if (v5 & 1) != 0 && (*(v3 + 32))
    {
      v6 = (v3 + 8);
      *a2 = *(v3 + 24) + *(v3 + 56);
      *(a2 + 8) = vextq_s8(*(v3 + 40), *(v3 + 40), 8uLL);
      *(a2 + 24) = v3;
      v7 = (v3 + 8);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      re::internal::DataPayload::computePoDConversionHelper<signed char>(*a1, v10);
      if (v10[0] == 1)
      {
        v8 = v12;
        *(a2 + 32) = v11;
        *(a2 + 40) = v8;
        v9 = v13;
        *(a2 + 48) = v13;
        *a2 = v9;
        *(a2 + 8) = 1;
        *(a2 + 16) = v8;
        *(a2 + 24) = 0;
      }

      else
      {
        *(a2 + 48) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
        if (v13 && (v14 & 1) != 0)
        {
          (*(*v13 + 40))();
        }
      }
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

void re::internal::DataPayload::computePoDConversionHelper<signed char>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 33);
  if (v4 <= 5)
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v4 == 1)
        {
          v42 = 0uLL;
          v43 = 0;
          v26 = *(a1 + 40);
          v27 = *(a1 + 24) + *(a1 + 56);
          v28 = *(a1 + 48) * *(a1 + 40);
          if (*(a1 + 32))
          {
            if (v28)
            {
              v8 = 0;
              v29 = 0;
              while (1)
              {
                v10 = *(&v42 + 1);
                if (*(&v42 + 1) <= v8)
                {
                  goto LABEL_92;
                }

                *(v43 + v8) = *(v27 + v29);
                v29 += *(a1 + 48);
                ++v8;
                if (v29 >= v28)
                {
                  goto LABEL_82;
                }
              }
            }
          }

          else if (v28)
          {
            v8 = 0;
            v40 = 0;
            while (1)
            {
              v10 = *(&v42 + 1);
              if (*(&v42 + 1) <= v8)
              {
                goto LABEL_94;
              }

              *(v43 + v8) = *(v27 + v40);
              v40 += *(a1 + 48);
              ++v8;
              if (v40 >= v28)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else
        {
          v42 = 0uLL;
          v43 = 0;
          v5 = *(a1 + 40);
          v6 = *(a1 + 24) + *(a1 + 56);
          v7 = *(a1 + 48) * *(a1 + 40);
          if (*(a1 + 32))
          {
            if (v7)
            {
              v8 = 0;
              v9 = 0;
              while (1)
              {
                v10 = *(&v42 + 1);
                if (*(&v42 + 1) <= v8)
                {
                  break;
                }

                *(v43 + v8) = *(v6 + v9);
                v9 += *(a1 + 48);
                ++v8;
                if (v9 >= v7)
                {
                  goto LABEL_82;
                }
              }

              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_85:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_86:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_87:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_88:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_89:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_90:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_91:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_92:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_93:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_94:
              v44 = 0;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v45 = 136315906;
              v46 = "operator[]";
              v47 = 1024;
              v48 = 468;
              v49 = 2048;
              v50 = v8;
              v51 = 2048;
              v52 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_95;
            }
          }

          else if (v7)
          {
            v8 = 0;
            v36 = 0;
            while (1)
            {
              v10 = *(&v42 + 1);
              if (*(&v42 + 1) <= v8)
              {
                goto LABEL_86;
              }

              *(v43 + v8) = *(v6 + v36);
              v36 += *(a1 + 48);
              ++v8;
              if (v36 >= v7)
              {
                goto LABEL_82;
              }
            }
          }
        }
      }

      else
      {
        v42 = 0uLL;
        v43 = 0;
        v18 = *(a1 + 40);
        v19 = *(a1 + 24) + *(a1 + 56);
        v20 = *(a1 + 48) * *(a1 + 40);
        if (*(a1 + 32))
        {
          if (v20)
          {
            v8 = 0;
            v21 = 0;
            while (1)
            {
              v10 = *(&v42 + 1);
              if (*(&v42 + 1) <= v8)
              {
                goto LABEL_88;
              }

              *(v43 + v8) = *(v19 + v21);
              v21 += *(a1 + 48);
              ++v8;
              if (v21 >= v20)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v20)
        {
          v8 = 0;
          v38 = 0;
          while (1)
          {
            v10 = *(&v42 + 1);
            if (*(&v42 + 1) <= v8)
            {
              goto LABEL_90;
            }

            *(v43 + v8) = *(v19 + v38);
            v38 += *(a1 + 48);
            ++v8;
            if (v38 >= v20)
            {
              goto LABEL_82;
            }
          }
        }
      }

      goto LABEL_82;
    }

    switch(v4)
    {
      case 3u:
        v42 = 0uLL;
        v43 = 0;
        v22 = *(a1 + 40);
        v23 = *(a1 + 24) + *(a1 + 56);
        v24 = *(a1 + 48) * *(a1 + 40);
        if (*(a1 + 32))
        {
          if (v24)
          {
            v8 = 0;
            v25 = 0;
            while (1)
            {
              v10 = *(&v42 + 1);
              if (*(&v42 + 1) <= v8)
              {
                goto LABEL_89;
              }

              *(v43 + v8) = *(v23 + v25);
              v25 += *(a1 + 48);
              ++v8;
              if (v25 >= v24)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v24)
        {
          v8 = 0;
          v39 = 0;
          while (1)
          {
            v10 = *(&v42 + 1);
            if (*(&v42 + 1) <= v8)
            {
              goto LABEL_91;
            }

            *(v43 + v8) = *(v23 + v39);
            v39 += *(a1 + 48);
            ++v8;
            if (v39 >= v24)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      case 4u:
        v42 = 0uLL;
        v43 = 0;
        v30 = *(a1 + 40);
        v31 = *(a1 + 24) + *(a1 + 56);
        v32 = *(a1 + 48) * *(a1 + 40);
        if (*(a1 + 32))
        {
          if (v32)
          {
            v8 = 0;
            v33 = 0;
            while (1)
            {
              v10 = *(&v42 + 1);
              if (*(&v42 + 1) <= v8)
              {
                goto LABEL_93;
              }

              *(v43 + v8) = *(v31 + v33);
              v33 += *(a1 + 48);
              ++v8;
              if (v33 >= v32)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v32)
        {
          v8 = 0;
          v41 = 0;
          while (1)
          {
            v10 = *(&v42 + 1);
            if (*(&v42 + 1) <= v8)
            {
              break;
            }

            *(v43 + v8) = *(v31 + v41);
            v41 += *(a1 + 48);
            ++v8;
            if (v41 >= v32)
            {
              goto LABEL_82;
            }
          }

LABEL_95:
          v44 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v45 = 136315906;
          v46 = "operator[]";
          v47 = 1024;
          v48 = 468;
          v49 = 2048;
          v50 = v8;
          v51 = 2048;
          v52 = v10;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        break;
      case 5u:
        v42 = 0uLL;
        v43 = 0;
        v14 = *(a1 + 40);
        v15 = *(a1 + 24) + *(a1 + 56);
        v16 = *(a1 + 48) * *(a1 + 40);
        if (*(a1 + 32))
        {
          if (v16)
          {
            v8 = 0;
            v17 = 0;
            while (1)
            {
              v10 = *(&v42 + 1);
              if (*(&v42 + 1) <= v8)
              {
                goto LABEL_85;
              }

              *(v43 + v8) = *(v15 + v17);
              v17 += *(a1 + 48);
              ++v8;
              if (v17 >= v16)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v16)
        {
          v8 = 0;
          v37 = 0;
          while (1)
          {
            v10 = *(&v42 + 1);
            if (*(&v42 + 1) <= v8)
            {
              goto LABEL_87;
            }

            *(v43 + v8) = *(v15 + v37);
            v37 += *(a1 + 48);
            ++v8;
            if (v37 >= v16)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      default:
        goto LABEL_52;
    }

LABEL_82:
    v34 = v42;
    v35 = v43;
    goto LABEL_83;
  }

  if (v4 - 8 < 4)
  {
    v11 = "Could not convert values to specified output type.";
LABEL_13:
    v12 = v53;
    v13 = v54;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v12;
    *(a2 + 40) = v13;
    return;
  }

  if (v4 == 6)
  {
    re::internal::DataPayload::computeConvertedValuesInternal<signed char,float>(a1, &v53);
  }

  else
  {
    if (v4 != 7)
    {
LABEL_52:
      v11 = "Unrecognized/Unsupported type.";
      goto LABEL_13;
    }

    re::internal::DataPayload::computeConvertedValuesInternal<signed char,double>(a1, &v53);
  }

  v34 = v53;
  v35 = v54;
LABEL_83:
  *a2 = 1;
  *(a2 + 8) = v34;
  *(a2 + 24) = v35;
}

void re::internal::DataPayload::computeConvertedValuesInternal<signed char,float>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 24) + *(a1 + 56);
  v6 = *(a1 + 48) * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      while (a2[1] > v7)
      {
        *(a2[2] + v7) = *(v5 + v8);
        v8 += *(a1 + 48);
        ++v7;
        if (v8 >= v6)
        {
          return;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    v9 = 0;
    v10 = 0;
    while (a2[1] > v9)
    {
      *(a2[2] + v9) = *(v5 + v10);
      v10 += *(a1 + 48);
      ++v9;
      if (v10 >= v6)
      {
        return;
      }
    }

LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

void re::internal::DataPayload::computeConvertedValuesInternal<signed char,double>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 24) + *(a1 + 56);
  v6 = *(a1 + 48) * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      while (a2[1] > v7)
      {
        *(a2[2] + v7) = *(v5 + v8);
        v8 += *(a1 + 48);
        ++v7;
        if (v8 >= v6)
        {
          return;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    v9 = 0;
    v10 = 0;
    while (a2[1] > v9)
    {
      *(a2[2] + v9) = *(v5 + v10);
      v10 += *(a1 + 48);
      ++v9;
      if (v10 >= v6)
      {
        return;
      }
    }

LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

void re::GeomModelDescriptor::makeConvertedValues<unsigned char>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 33);
    if (v4 >= 6)
    {
      v5 = v4 == 1;
    }

    else
    {
      v5 = 3u >> v4;
    }

    if (v5 & 1) != 0 && (*(v3 + 32))
    {
      v6 = (v3 + 8);
      *a2 = *(v3 + 24) + *(v3 + 56);
      *(a2 + 8) = vextq_s8(*(v3 + 40), *(v3 + 40), 8uLL);
      *(a2 + 24) = v3;
      v7 = (v3 + 8);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      re::internal::DataPayload::computePoDConversionHelper<signed char>(*a1, v10);
      if (v10[0] == 1)
      {
        v8 = v12;
        *(a2 + 32) = v11;
        *(a2 + 40) = v8;
        v9 = v13;
        *(a2 + 48) = v13;
        *a2 = v9;
        *(a2 + 8) = 1;
        *(a2 + 16) = v8;
        *(a2 + 24) = 0;
      }

      else
      {
        *(a2 + 48) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
        if (v13 && (v14 & 1) != 0)
        {
          (*(*v13 + 40))();
        }
      }
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

void re::internal::DataPayload::computePoDConversionHelper<short>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 <= 5)
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v58 = 0uLL;
          v59 = 0;
          v6 = *(a1 + 40);
          v34 = *(v3 + 48);
          v35 = *(v3 + 24) + *(v3 + 56);
          v36 = v34 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v36)
            {
              v37 = 0;
              v38 = 0;
              v3 = *(&v58 + 1);
              v39 = v59;
              while (v3 != v37)
              {
                *(v39 + 2 * v37) = *(v35 + v38);
                v38 += v34;
                ++v37;
                if (v38 >= v36)
                {
                  goto LABEL_82;
                }
              }

              goto LABEL_92;
            }
          }

          else if (v36)
          {
            v54 = 0;
            v6 = 0;
            v55 = 0;
            while (1)
            {
              v2 = *(&v58 + 1);
              if (*(&v58 + 1) <= v6)
              {
                goto LABEL_94;
              }

              *(v59 + v54) = *(v35 + v55);
              v55 += *(v3 + 48);
              ++v6;
              v54 += 2;
              if (v55 >= v36)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else
        {
          v58 = 0uLL;
          v59 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = *(&v58 + 1);
              v12 = v59;
              while (v3 != v10)
              {
                *(v12 + 2 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_82;
                }
              }

              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_85:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_86:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_87:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_88:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_89:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_90:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_91:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_92:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_93:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_94:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_95;
            }
          }

          else if (v9)
          {
            v6 = 0;
            v48 = 0;
            while (1)
            {
              v2 = *(&v58 + 1);
              if (*(&v58 + 1) <= v6)
              {
                goto LABEL_86;
              }

              *(v59 + 2 * v6) = *(v8 + v48);
              v48 += *(v3 + 48);
              ++v6;
              if (v48 >= v9)
              {
                goto LABEL_82;
              }
            }
          }
        }
      }

      else
      {
        v58 = 0uLL;
        v59 = 0;
        v6 = *(a1 + 40);
        v22 = *(v3 + 48);
        v23 = *(v3 + 24) + *(v3 + 56);
        v24 = v22 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v24)
          {
            v25 = 0;
            v26 = 0;
            v3 = *(&v58 + 1);
            v27 = v59;
            while (v3 != v25)
            {
              *(v27 + 2 * v25) = *(v23 + v26);
              v26 += v22;
              ++v25;
              if (v26 >= v24)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_88;
          }
        }

        else if (v24)
        {
          v51 = 0;
          v6 = 0;
          v52 = 0;
          while (1)
          {
            v2 = *(&v58 + 1);
            if (*(&v58 + 1) <= v6)
            {
              goto LABEL_90;
            }

            *(v59 + v51) = *(v23 + v52);
            v52 += *(v3 + 48);
            ++v6;
            v51 += 2;
            if (v52 >= v24)
            {
              goto LABEL_82;
            }
          }
        }
      }

      goto LABEL_82;
    }

    switch(v5)
    {
      case 3u:
        v58 = 0uLL;
        v59 = 0;
        v6 = *(a1 + 40);
        v28 = *(v3 + 48);
        v29 = *(v3 + 24) + *(v3 + 56);
        v30 = v28 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v3 = *(&v58 + 1);
            v33 = v59;
            while (v3 != v31)
            {
              *(v33 + 2 * v31) = *(v29 + v32);
              v32 += v28;
              ++v31;
              if (v32 >= v30)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_89;
          }
        }

        else if (v30)
        {
          v6 = 0;
          v53 = 0;
          while (1)
          {
            v2 = *(&v58 + 1);
            if (*(&v58 + 1) <= v6)
            {
              goto LABEL_91;
            }

            *(v59 + 2 * v6) = *(v29 + v53);
            v53 += *(v3 + 48);
            ++v6;
            if (v53 >= v30)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      case 4u:
        v58 = 0uLL;
        v59 = 0;
        v6 = *(a1 + 40);
        v40 = *(v3 + 48);
        v41 = *(v3 + 24) + *(v3 + 56);
        v42 = v40 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v42)
          {
            v43 = 0;
            v44 = 0;
            v3 = *(&v58 + 1);
            v45 = v59;
            while (v3 != v43)
            {
              *(v45 + 2 * v43) = *(v41 + v44);
              v44 += v40;
              ++v43;
              if (v44 >= v42)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_93;
          }
        }

        else if (v42)
        {
          v56 = 0;
          v6 = 0;
          v57 = 0;
          while (1)
          {
            v2 = *(&v58 + 1);
            if (*(&v58 + 1) <= v6)
            {
              break;
            }

            *(v59 + v56) = *(v41 + v57);
            v57 += *(v3 + 48);
            ++v6;
            v56 += 2;
            if (v57 >= v42)
            {
              goto LABEL_82;
            }
          }

LABEL_95:
          v60 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v61 = 136315906;
          v62 = "operator[]";
          v63 = 1024;
          v64 = 468;
          v65 = 2048;
          v66 = v6;
          v67 = 2048;
          v68 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        break;
      case 5u:
        v58 = 0uLL;
        v59 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = *(&v58 + 1);
            v21 = v59;
            while (v3 != v19)
            {
              *(v21 + 2 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_85;
          }
        }

        else if (v18)
        {
          v49 = 0;
          v6 = 0;
          v50 = 0;
          while (1)
          {
            v2 = *(&v58 + 1);
            if (*(&v58 + 1) <= v6)
            {
              goto LABEL_87;
            }

            *(v59 + v49) = *(v17 + v50);
            v50 += *(v3 + 48);
            ++v6;
            v49 += 2;
            if (v50 >= v18)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      default:
        goto LABEL_52;
    }

LABEL_82:
    v46 = v58;
    v47 = v59;
    goto LABEL_83;
  }

  if (v5 - 8 < 4)
  {
    v13 = "Could not convert values to specified output type.";
LABEL_13:
    v14 = v69;
    v15 = v70;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v14;
    *(a2 + 40) = v15;
    return;
  }

  if (v5 == 6)
  {
    re::internal::DataPayload::computeConvertedValuesInternal<short,float>(a1, &v69);
  }

  else
  {
    if (v5 != 7)
    {
LABEL_52:
      v13 = "Unrecognized/Unsupported type.";
      goto LABEL_13;
    }

    re::internal::DataPayload::computeConvertedValuesInternal<short,double>(a1, &v69);
  }

  v46 = v69;
  v47 = v70;
LABEL_83:
  *a2 = 1;
  *(a2 + 8) = v46;
  *(a2 + 24) = v47;
}

void re::internal::DataPayload::computeConvertedValuesInternal<short,float>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 24) + *(a1 + 56);
  v7 = v5 * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v11 = a2[1];
      v10 = a2[2];
      while (v11 != v8)
      {
        *(v10 + 2 * v8) = *(v6 + v9);
        v9 += v5;
        ++v8;
        if (v9 >= v7)
        {
          return;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (a2[1] > v13)
    {
      *(a2[2] + v12) = *(v6 + v14);
      v14 += *(a1 + 48);
      ++v13;
      v12 += 2;
      if (v14 >= v7)
      {
        return;
      }
    }

LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

void re::internal::DataPayload::computeConvertedValuesInternal<short,double>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 24) + *(a1 + 56);
  v7 = v5 * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v11 = a2[1];
      v10 = a2[2];
      while (v11 != v8)
      {
        *(v10 + 2 * v8) = *(v6 + v9);
        v9 += v5;
        ++v8;
        if (v9 >= v7)
        {
          return;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (a2[1] > v13)
    {
      *(a2[2] + v12) = *(v6 + v14);
      v14 += *(a1 + 48);
      ++v13;
      v12 += 2;
      if (v14 >= v7)
      {
        return;
      }
    }

LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

void re::internal::DataPayload::computePoDConversionHelper<unsigned short>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 <= 5)
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v58 = 0uLL;
          v59 = 0;
          v6 = *(a1 + 40);
          v34 = *(v3 + 48);
          v35 = *(v3 + 24) + *(v3 + 56);
          v36 = v34 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v36)
            {
              v37 = 0;
              v38 = 0;
              v3 = *(&v58 + 1);
              v39 = v59;
              while (v3 != v37)
              {
                *(v39 + 2 * v37) = *(v35 + v38);
                v38 += v34;
                ++v37;
                if (v38 >= v36)
                {
                  goto LABEL_82;
                }
              }

              goto LABEL_92;
            }
          }

          else if (v36)
          {
            v54 = 0;
            v6 = 0;
            v55 = 0;
            while (1)
            {
              v2 = *(&v58 + 1);
              if (*(&v58 + 1) <= v6)
              {
                goto LABEL_94;
              }

              *(v59 + v54) = *(v35 + v55);
              v55 += *(v3 + 48);
              ++v6;
              v54 += 2;
              if (v55 >= v36)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else
        {
          v58 = 0uLL;
          v59 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = *(&v58 + 1);
              v12 = v59;
              while (v3 != v10)
              {
                *(v12 + 2 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_82;
                }
              }

              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_85:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_86:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_87:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_88:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_89:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_90:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_91:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_92:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_93:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v3;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_94:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              v64 = 468;
              v65 = 2048;
              v66 = v6;
              v67 = 2048;
              v68 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_95;
            }
          }

          else if (v9)
          {
            v6 = 0;
            v48 = 0;
            while (1)
            {
              v2 = *(&v58 + 1);
              if (*(&v58 + 1) <= v6)
              {
                goto LABEL_86;
              }

              *(v59 + 2 * v6) = *(v8 + v48);
              v48 += *(v3 + 48);
              ++v6;
              if (v48 >= v9)
              {
                goto LABEL_82;
              }
            }
          }
        }
      }

      else
      {
        v58 = 0uLL;
        v59 = 0;
        v6 = *(a1 + 40);
        v22 = *(v3 + 48);
        v23 = *(v3 + 24) + *(v3 + 56);
        v24 = v22 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v24)
          {
            v25 = 0;
            v26 = 0;
            v3 = *(&v58 + 1);
            v27 = v59;
            while (v3 != v25)
            {
              *(v27 + 2 * v25) = *(v23 + v26);
              v26 += v22;
              ++v25;
              if (v26 >= v24)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_88;
          }
        }

        else if (v24)
        {
          v51 = 0;
          v6 = 0;
          v52 = 0;
          while (1)
          {
            v2 = *(&v58 + 1);
            if (*(&v58 + 1) <= v6)
            {
              goto LABEL_90;
            }

            *(v59 + v51) = *(v23 + v52);
            v52 += *(v3 + 48);
            ++v6;
            v51 += 2;
            if (v52 >= v24)
            {
              goto LABEL_82;
            }
          }
        }
      }

      goto LABEL_82;
    }

    switch(v5)
    {
      case 3u:
        v58 = 0uLL;
        v59 = 0;
        v6 = *(a1 + 40);
        v28 = *(v3 + 48);
        v29 = *(v3 + 24) + *(v3 + 56);
        v30 = v28 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v3 = *(&v58 + 1);
            v33 = v59;
            while (v3 != v31)
            {
              *(v33 + 2 * v31) = *(v29 + v32);
              v32 += v28;
              ++v31;
              if (v32 >= v30)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_89;
          }
        }

        else if (v30)
        {
          v6 = 0;
          v53 = 0;
          while (1)
          {
            v2 = *(&v58 + 1);
            if (*(&v58 + 1) <= v6)
            {
              goto LABEL_91;
            }

            *(v59 + 2 * v6) = *(v29 + v53);
            v53 += *(v3 + 48);
            ++v6;
            if (v53 >= v30)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      case 4u:
        v58 = 0uLL;
        v59 = 0;
        v6 = *(a1 + 40);
        v40 = *(v3 + 48);
        v41 = *(v3 + 24) + *(v3 + 56);
        v42 = v40 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v42)
          {
            v43 = 0;
            v44 = 0;
            v3 = *(&v58 + 1);
            v45 = v59;
            while (v3 != v43)
            {
              *(v45 + 2 * v43) = *(v41 + v44);
              v44 += v40;
              ++v43;
              if (v44 >= v42)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_93;
          }
        }

        else if (v42)
        {
          v56 = 0;
          v6 = 0;
          v57 = 0;
          while (1)
          {
            v2 = *(&v58 + 1);
            if (*(&v58 + 1) <= v6)
            {
              break;
            }

            *(v59 + v56) = *(v41 + v57);
            v57 += *(v3 + 48);
            ++v6;
            v56 += 2;
            if (v57 >= v42)
            {
              goto LABEL_82;
            }
          }

LABEL_95:
          v60 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v61 = 136315906;
          v62 = "operator[]";
          v63 = 1024;
          v64 = 468;
          v65 = 2048;
          v66 = v6;
          v67 = 2048;
          v68 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        break;
      case 5u:
        v58 = 0uLL;
        v59 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = *(&v58 + 1);
            v21 = v59;
            while (v3 != v19)
            {
              *(v21 + 2 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_85;
          }
        }

        else if (v18)
        {
          v49 = 0;
          v6 = 0;
          v50 = 0;
          while (1)
          {
            v2 = *(&v58 + 1);
            if (*(&v58 + 1) <= v6)
            {
              goto LABEL_87;
            }

            *(v59 + v49) = *(v17 + v50);
            v50 += *(v3 + 48);
            ++v6;
            v49 += 2;
            if (v50 >= v18)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      default:
        goto LABEL_52;
    }

LABEL_82:
    v46 = v58;
    v47 = v59;
    goto LABEL_83;
  }

  if (v5 - 8 < 4)
  {
    v13 = "Could not convert values to specified output type.";
LABEL_13:
    v14 = v69;
    v15 = v70;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v14;
    *(a2 + 40) = v15;
    return;
  }

  if (v5 == 6)
  {
    re::internal::DataPayload::computeConvertedValuesInternal<unsigned short,float>(a1, &v69);
  }

  else
  {
    if (v5 != 7)
    {
LABEL_52:
      v13 = "Unrecognized/Unsupported type.";
      goto LABEL_13;
    }

    re::internal::DataPayload::computeConvertedValuesInternal<unsigned short,double>(a1, &v69);
  }

  v46 = v69;
  v47 = v70;
LABEL_83:
  *a2 = 1;
  *(a2 + 8) = v46;
  *(a2 + 24) = v47;
}

void re::internal::DataPayload::computeConvertedValuesInternal<unsigned short,float>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 24) + *(a1 + 56);
  v7 = v5 * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v11 = a2[1];
      v10 = a2[2];
      while (v11 != v8)
      {
        *(v10 + 2 * v8) = *(v6 + v9);
        v9 += v5;
        ++v8;
        if (v9 >= v7)
        {
          return;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (a2[1] > v13)
    {
      *(a2[2] + v12) = *(v6 + v14);
      v14 += *(a1 + 48);
      ++v13;
      v12 += 2;
      if (v14 >= v7)
      {
        return;
      }
    }

LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

void re::internal::DataPayload::computeConvertedValuesInternal<unsigned short,double>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 24) + *(a1 + 56);
  v7 = v5 * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v11 = a2[1];
      v10 = a2[2];
      while (v11 != v8)
      {
        *(v10 + 2 * v8) = *(v6 + v9);
        v9 += v5;
        ++v8;
        if (v9 >= v7)
        {
          return;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (a2[1] > v13)
    {
      *(a2[2] + v12) = *(v6 + v14);
      v14 += *(a1 + 48);
      ++v13;
      v12 += 2;
      if (v14 >= v7)
      {
        return;
      }
    }

LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

__n128 re::internal::DataPayload::computePoDConversionHelper<int>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v88 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 > 5)
  {
    if (v5 - 8 < 4)
    {
      v13 = "Could not convert values to specified output type.";
LABEL_13:
      result = v83;
      v15 = v84;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = result;
      *(a2 + 40) = v15;
      return result;
    }

    if (v5 == 6)
    {
      v72 = 0uLL;
      v73 = 0;
      v6 = *(a1 + 40);
      v52 = *(v3 + 48);
      v53 = *(v3 + 24) + *(v3 + 56);
      v54 = v52 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v54)
        {
          v55 = 0;
          v56 = 0;
          v3 = v72.n128_u64[1];
          v57 = v73;
          while (v3 != v55)
          {
            *(v57 + 4 * v55) = *(v53 + v56);
            v56 += v52;
            ++v55;
            if (v56 >= v54)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_116;
        }
      }

      else if (v54)
      {
        v6 = 0;
        v70 = 0;
        while (1)
        {
          v2 = v72.n128_u64[1];
          if (v72.n128_u64[1] <= v6)
          {
            break;
          }

          *(v73 + 4 * v6) = *(v53 + v70);
          v70 += *(v3 + 48);
          ++v6;
          if (v70 >= v54)
          {
            goto LABEL_101;
          }
        }

LABEL_117:
        v74 = 0;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v6;
        v81 = 2048;
        v82 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      if (v5 != 7)
      {
LABEL_61:
        v13 = "Unrecognized/Unsupported type.";
        goto LABEL_13;
      }

      v72 = 0uLL;
      v73 = 0;
      v6 = *(a1 + 40);
      v22 = *(v3 + 48);
      v23 = *(v3 + 24) + *(v3 + 56);
      v24 = v22 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          v3 = v72.n128_u64[1];
          v27 = v73;
          while (v3 != v25)
          {
            *(v27 + 4 * v25) = *(v23 + v26);
            v26 += v22;
            ++v25;
            if (v26 >= v24)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_114;
        }
      }

      else if (v24)
      {
        v68 = 0;
        v6 = 0;
        v69 = 0;
        do
        {
          v2 = v72.n128_u64[1];
          if (v72.n128_u64[1] <= v6)
          {
            goto LABEL_115;
          }

          *(v73 + v68) = *(v23 + v69);
          v69 += *(v3 + 48);
          ++v6;
          v68 += 4;
        }

        while (v69 < v24);
      }
    }
  }

  else
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v72 = 0uLL;
          v73 = 0;
          v6 = *(a1 + 40);
          v40 = *(v3 + 48);
          v41 = *(v3 + 24) + *(v3 + 56);
          v42 = v40 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v42)
            {
              v43 = 0;
              v44 = 0;
              v3 = v72.n128_u64[1];
              v45 = v73;
              while (v3 != v43)
              {
                *(v45 + 4 * v43) = *(v41 + v44);
                v44 += v40;
                ++v43;
                if (v44 >= v42)
                {
                  goto LABEL_101;
                }
              }

              goto LABEL_110;
            }
          }

          else if (v42)
          {
            v65 = 0;
            v6 = 0;
            v66 = 0;
            while (1)
            {
              v2 = v72.n128_u64[1];
              if (v72.n128_u64[1] <= v6)
              {
                goto LABEL_112;
              }

              *(v73 + v65) = *(v41 + v66);
              v66 += *(v3 + 48);
              ++v6;
              v65 += 4;
              if (v66 >= v42)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else
        {
          v72 = 0uLL;
          v73 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = v72.n128_u64[1];
              v12 = v73;
              while (v3 != v10)
              {
                *(v12 + 4 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_101;
                }
              }

              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_103:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_104:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_105:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_106:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_107:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_108:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_109:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_111:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_112:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_113:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_115:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v6;
              v81 = 2048;
              v82 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_116:
              v74 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v83 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v75 = 136315906;
              v76 = "operator[]";
              v77 = 1024;
              v78 = 468;
              v79 = 2048;
              v80 = v3;
              v81 = 2048;
              v82 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_117;
            }
          }

          else if (v9)
          {
            v58 = 0;
            v6 = 0;
            v59 = 0;
            while (1)
            {
              v2 = v72.n128_u64[1];
              if (v72.n128_u64[1] <= v6)
              {
                goto LABEL_104;
              }

              *(v73 + v58) = *(v8 + v59);
              v59 += *(v3 + 48);
              ++v6;
              v58 += 4;
              if (v59 >= v9)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v72 = 0uLL;
        v73 = 0;
        v6 = *(a1 + 40);
        v28 = *(v3 + 48);
        v29 = *(v3 + 24) + *(v3 + 56);
        v30 = v28 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v3 = v72.n128_u64[1];
            v33 = v73;
            while (v3 != v31)
            {
              *(v33 + 4 * v31) = *(v29 + v32);
              v32 += v28;
              ++v31;
              if (v32 >= v30)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_106;
          }
        }

        else if (v30)
        {
          v61 = 0;
          v6 = 0;
          v62 = 0;
          while (1)
          {
            v2 = v72.n128_u64[1];
            if (v72.n128_u64[1] <= v6)
            {
              goto LABEL_108;
            }

            *(v73 + v61) = *(v29 + v62);
            v62 += *(v3 + 48);
            ++v6;
            v61 += 4;
            if (v62 >= v30)
            {
              goto LABEL_101;
            }
          }
        }
      }

      goto LABEL_101;
    }

    switch(v5)
    {
      case 3u:
        v72 = 0uLL;
        v73 = 0;
        v6 = *(a1 + 40);
        v34 = *(v3 + 48);
        v35 = *(v3 + 24) + *(v3 + 56);
        v36 = v34 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v36)
          {
            v37 = 0;
            v38 = 0;
            v3 = v72.n128_u64[1];
            v39 = v73;
            while (v3 != v37)
            {
              *(v39 + 4 * v37) = *(v35 + v38);
              v38 += v34;
              ++v37;
              if (v38 >= v36)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_107;
          }
        }

        else if (v36)
        {
          v63 = 0;
          v6 = 0;
          v64 = 0;
          while (1)
          {
            v2 = v72.n128_u64[1];
            if (v72.n128_u64[1] <= v6)
            {
              goto LABEL_109;
            }

            *(v73 + v63) = *(v35 + v64);
            v64 += *(v3 + 48);
            ++v6;
            v63 += 4;
            if (v64 >= v36)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 4u:
        v72 = 0uLL;
        v73 = 0;
        v6 = *(a1 + 40);
        v46 = *(v3 + 48);
        v47 = *(v3 + 24) + *(v3 + 56);
        v48 = v46 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v48)
          {
            v49 = 0;
            v50 = 0;
            v3 = v72.n128_u64[1];
            v51 = v73;
            while (v3 != v49)
            {
              *(v51 + 4 * v49) = *(v47 + v50);
              v50 += v46;
              ++v49;
              if (v50 >= v48)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_111;
          }
        }

        else if (v48)
        {
          v6 = 0;
          v67 = 0;
          while (1)
          {
            v2 = v72.n128_u64[1];
            if (v72.n128_u64[1] <= v6)
            {
              goto LABEL_113;
            }

            *(v73 + 4 * v6) = *(v47 + v67);
            v67 += *(v3 + 48);
            ++v6;
            if (v67 >= v48)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 5u:
        v72 = 0uLL;
        v73 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = v72.n128_u64[1];
            v21 = v73;
            while (v3 != v19)
            {
              *(v21 + 4 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_103;
          }
        }

        else if (v18)
        {
          v6 = 0;
          v60 = 0;
          while (1)
          {
            v2 = v72.n128_u64[1];
            if (v72.n128_u64[1] <= v6)
            {
              goto LABEL_105;
            }

            *(v73 + 4 * v6) = *(v17 + v60);
            v60 += *(v3 + 48);
            ++v6;
            if (v60 >= v18)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      default:
        goto LABEL_61;
    }
  }

LABEL_101:
  result = v72;
  v71 = v73;
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v71;
  return result;
}

__n128 re::internal::DataPayload::computePoDConversionHelper<float>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v91 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 > 5)
  {
    if (v5 - 8 < 4)
    {
      v13 = "Could not convert values to specified output type.";
LABEL_13:
      result = v86;
      v15 = v87;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = result;
      *(a2 + 40) = v15;
      return result;
    }

    if (v5 == 6)
    {
      v75 = 0uLL;
      v76 = 0;
      v6 = *(a1 + 40);
      v55 = *(v3 + 48);
      v56 = *(v3 + 24) + *(v3 + 56);
      v57 = v55 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v57)
        {
          v58 = 0;
          v59 = 0;
          v3 = v75.n128_u64[1];
          v60 = v76;
          while (v3 != v58)
          {
            *(v60 + 4 * v58) = *(v56 + v59);
            v59 += v55;
            ++v58;
            if (v59 >= v57)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_116;
        }
      }

      else if (v57)
      {
        v6 = 0;
        v73 = 0;
        while (1)
        {
          v2 = v75.n128_u64[1];
          if (v75.n128_u64[1] <= v6)
          {
            break;
          }

          *(v76 + 4 * v6) = *(v56 + v73);
          v73 += *(v3 + 48);
          ++v6;
          if (v73 >= v57)
          {
            goto LABEL_101;
          }
        }

LABEL_117:
        v77 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        v81 = 468;
        v82 = 2048;
        v83 = v6;
        v84 = 2048;
        v85 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      if (v5 != 7)
      {
LABEL_61:
        v13 = "Unrecognized/Unsupported type.";
        goto LABEL_13;
      }

      v75 = 0uLL;
      v76 = 0;
      v6 = *(a1 + 40);
      v22 = *(v3 + 48);
      v23 = *(v3 + 24) + *(v3 + 56);
      v24 = v22 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          v3 = v75.n128_u64[1];
          v27 = v76;
          while (v3 != v25)
          {
            v28 = *(v23 + v26);
            *(v27 + 4 * v25) = v28;
            v26 += v22;
            ++v25;
            if (v26 >= v24)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_114;
        }
      }

      else if (v24)
      {
        v71 = 0;
        v6 = 0;
        v72 = 0;
        do
        {
          v2 = v75.n128_u64[1];
          if (v75.n128_u64[1] <= v6)
          {
            goto LABEL_115;
          }

          *(v76 + v71) = *(v23 + v72);
          v72 += *(v3 + 48);
          ++v6;
          v71 += 4;
        }

        while (v72 < v24);
      }
    }
  }

  else
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v75 = 0uLL;
          v76 = 0;
          v6 = *(a1 + 40);
          v43 = *(v3 + 48);
          v44 = *(v3 + 24) + *(v3 + 56);
          v45 = v43 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v45)
            {
              v46 = 0;
              v47 = 0;
              v3 = v75.n128_u64[1];
              v48 = v76;
              while (v3 != v46)
              {
                LOBYTE(v42) = *(v44 + v47);
                v42 = LODWORD(v42);
                *(v48 + 4 * v46) = v42;
                v47 += v43;
                ++v46;
                if (v47 >= v45)
                {
                  goto LABEL_101;
                }
              }

              goto LABEL_110;
            }
          }

          else if (v45)
          {
            v68 = 0;
            v6 = 0;
            v69 = 0;
            while (1)
            {
              v2 = v75.n128_u64[1];
              if (v75.n128_u64[1] <= v6)
              {
                goto LABEL_112;
              }

              *(v76 + v68) = *(v44 + v69);
              v69 += *(v3 + 48);
              ++v6;
              v68 += 4;
              if (v69 >= v45)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else
        {
          v75 = 0uLL;
          v76 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = v75.n128_u64[1];
              v12 = v76;
              while (v3 != v10)
              {
                *(v12 + 4 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_101;
                }
              }

              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v3;
              v84 = 2048;
              v85 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_103:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v3;
              v84 = 2048;
              v85 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_104:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v6;
              v84 = 2048;
              v85 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_105:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v6;
              v84 = 2048;
              v85 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_106:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v3;
              v84 = 2048;
              v85 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_107:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v3;
              v84 = 2048;
              v85 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_108:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v6;
              v84 = 2048;
              v85 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_109:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v6;
              v84 = 2048;
              v85 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v3;
              v84 = 2048;
              v85 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_111:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v3;
              v84 = 2048;
              v85 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_112:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v6;
              v84 = 2048;
              v85 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_113:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v6;
              v84 = 2048;
              v85 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v3;
              v84 = 2048;
              v85 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_115:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v6;
              v84 = 2048;
              v85 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_116:
              v77 = 0;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v86 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v78 = 136315906;
              v79 = "operator[]";
              v80 = 1024;
              v81 = 468;
              v82 = 2048;
              v83 = v3;
              v84 = 2048;
              v85 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_117;
            }
          }

          else if (v9)
          {
            v61 = 0;
            v6 = 0;
            v62 = 0;
            while (1)
            {
              v2 = v75.n128_u64[1];
              if (v75.n128_u64[1] <= v6)
              {
                goto LABEL_104;
              }

              *(v76 + v61) = *(v8 + v62);
              v62 += *(v3 + 48);
              ++v6;
              v61 += 4;
              if (v62 >= v9)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v75 = 0uLL;
        v76 = 0;
        v6 = *(a1 + 40);
        v29 = *(v3 + 48);
        v30 = *(v3 + 24) + *(v3 + 56);
        v31 = v29 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v31)
          {
            v32 = 0;
            v33 = 0;
            v3 = v75.n128_u64[1];
            v34 = v76;
            while (v3 != v32)
            {
              *(v34 + 4 * v32) = *(v30 + v33);
              v33 += v29;
              ++v32;
              if (v33 >= v31)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_106;
          }
        }

        else if (v31)
        {
          v64 = 0;
          v6 = 0;
          v65 = 0;
          while (1)
          {
            v2 = v75.n128_u64[1];
            if (v75.n128_u64[1] <= v6)
            {
              goto LABEL_108;
            }

            *(v76 + v64) = *(v30 + v65);
            v65 += *(v3 + 48);
            ++v6;
            v64 += 4;
            if (v65 >= v31)
            {
              goto LABEL_101;
            }
          }
        }
      }

      goto LABEL_101;
    }

    switch(v5)
    {
      case 3u:
        v75 = 0uLL;
        v76 = 0;
        v6 = *(a1 + 40);
        v36 = *(v3 + 48);
        v37 = *(v3 + 24) + *(v3 + 56);
        v38 = v36 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v38)
          {
            v39 = 0;
            v40 = 0;
            v3 = v75.n128_u64[1];
            v41 = v76;
            while (v3 != v39)
            {
              LOWORD(v35) = *(v37 + v40);
              v35 = LODWORD(v35);
              *(v41 + 4 * v39) = v35;
              v40 += v36;
              ++v39;
              if (v40 >= v38)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_107;
          }
        }

        else if (v38)
        {
          v66 = 0;
          v6 = 0;
          v67 = 0;
          while (1)
          {
            v2 = v75.n128_u64[1];
            if (v75.n128_u64[1] <= v6)
            {
              goto LABEL_109;
            }

            *(v76 + v66) = *(v37 + v67);
            v67 += *(v3 + 48);
            ++v6;
            v66 += 4;
            if (v67 >= v38)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 4u:
        v75 = 0uLL;
        v76 = 0;
        v6 = *(a1 + 40);
        v49 = *(v3 + 48);
        v50 = *(v3 + 24) + *(v3 + 56);
        v51 = v49 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v51)
          {
            v52 = 0;
            v53 = 0;
            v3 = v75.n128_u64[1];
            v54 = v76;
            while (v3 != v52)
            {
              *(v54 + 4 * v52) = *(v50 + v53);
              v53 += v49;
              ++v52;
              if (v53 >= v51)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_111;
          }
        }

        else if (v51)
        {
          v6 = 0;
          v70 = 0;
          while (1)
          {
            v2 = v75.n128_u64[1];
            if (v75.n128_u64[1] <= v6)
            {
              goto LABEL_113;
            }

            *(v76 + 4 * v6) = *(v50 + v70);
            v70 += *(v3 + 48);
            ++v6;
            if (v70 >= v51)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 5u:
        v75 = 0uLL;
        v76 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = v75.n128_u64[1];
            v21 = v76;
            while (v3 != v19)
            {
              *(v21 + 4 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_103;
          }
        }

        else if (v18)
        {
          v6 = 0;
          v63 = 0;
          while (1)
          {
            v2 = v75.n128_u64[1];
            if (v75.n128_u64[1] <= v6)
            {
              goto LABEL_105;
            }

            *(v76 + 4 * v6) = *(v17 + v63);
            v63 += *(v3 + 48);
            ++v6;
            if (v63 >= v18)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      default:
        goto LABEL_61;
    }
  }

LABEL_101:
  result = v75;
  v74 = v76;
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v74;
  return result;
}

__n128 re::internal::DataPayload::computePoDConversionHelper<double>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v93 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 > 5)
  {
    if (v5 - 8 < 4)
    {
      v13 = "Could not convert values to specified output type.";
LABEL_13:
      result = v88;
      v15 = v89;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = result;
      *(a2 + 40) = v15;
      return result;
    }

    if (v5 == 6)
    {
      v77 = 0uLL;
      v78 = 0;
      v6 = *(a1 + 40);
      v55 = *(v3 + 48);
      v56 = *(v3 + 24) + *(v3 + 56);
      v57 = v55 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v57)
        {
          v58 = 0;
          v59 = 0;
          v3 = v77.n128_u64[1];
          v60 = v78;
          while (v3 != v58)
          {
            *(v60 + 8 * v58) = *(v56 + v59);
            v59 += v55;
            ++v58;
            if (v59 >= v57)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_116;
        }
      }

      else if (v57)
      {
        v74 = 0;
        v6 = 0;
        v75 = 0;
        while (1)
        {
          v2 = v77.n128_u64[1];
          if (v77.n128_u64[1] <= v6)
          {
            break;
          }

          *(v78 + v74) = *(v56 + v75);
          v75 += *(v3 + 48);
          ++v6;
          v74 += 8;
          if (v75 >= v57)
          {
            goto LABEL_101;
          }
        }

LABEL_117:
        v79 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v80 = 136315906;
        v81 = "operator[]";
        v82 = 1024;
        v83 = 468;
        v84 = 2048;
        v85 = v6;
        v86 = 2048;
        v87 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      if (v5 != 7)
      {
LABEL_61:
        v13 = "Unrecognized/Unsupported type.";
        goto LABEL_13;
      }

      v77 = 0uLL;
      v78 = 0;
      v6 = *(a1 + 40);
      v23 = *(v3 + 48);
      v24 = *(v3 + 24) + *(v3 + 56);
      v25 = v23 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v25)
        {
          v26 = 0;
          v27 = 0;
          v3 = v77.n128_u64[1];
          v28 = v78;
          while (v3 != v26)
          {
            *(v28 + 8 * v26) = *(v24 + v27);
            v27 += v23;
            ++v26;
            if (v27 >= v25)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_114;
        }
      }

      else if (v25)
      {
        v6 = 0;
        v73 = 0;
        do
        {
          v2 = v77.n128_u64[1];
          if (v77.n128_u64[1] <= v6)
          {
            goto LABEL_115;
          }

          *(v78 + 8 * v6) = *(v24 + v73);
          v73 += *(v3 + 48);
          ++v6;
        }

        while (v73 < v25);
      }
    }
  }

  else
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v77 = 0uLL;
          v78 = 0;
          v6 = *(a1 + 40);
          v43 = *(v3 + 48);
          v44 = *(v3 + 24) + *(v3 + 56);
          v45 = v43 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v45)
            {
              v46 = 0;
              v47 = 0;
              v3 = v77.n128_u64[1];
              v48 = v78;
              while (v3 != v46)
              {
                LOBYTE(v42) = *(v44 + v47);
                v42 = *&v42;
                *(v48 + 8 * v46) = v42;
                v47 += v43;
                ++v46;
                if (v47 >= v45)
                {
                  goto LABEL_101;
                }
              }

              goto LABEL_110;
            }
          }

          else if (v45)
          {
            v69 = 0;
            v6 = 0;
            v70 = 0;
            while (1)
            {
              v2 = v77.n128_u64[1];
              if (v77.n128_u64[1] <= v6)
              {
                goto LABEL_112;
              }

              *(v78 + v69) = *(v44 + v70);
              v70 += *(v3 + 48);
              ++v6;
              v69 += 8;
              if (v70 >= v45)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else
        {
          v77 = 0uLL;
          v78 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = v77.n128_u64[1];
              v12 = v78;
              while (v3 != v10)
              {
                *(v12 + 8 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_101;
                }
              }

              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v3;
              v86 = 2048;
              v87 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_103:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v3;
              v86 = 2048;
              v87 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_104:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v6;
              v86 = 2048;
              v87 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_105:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v6;
              v86 = 2048;
              v87 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_106:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v3;
              v86 = 2048;
              v87 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_107:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v3;
              v86 = 2048;
              v87 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_108:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v6;
              v86 = 2048;
              v87 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_109:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v6;
              v86 = 2048;
              v87 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v3;
              v86 = 2048;
              v87 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_111:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v3;
              v86 = 2048;
              v87 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_112:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v6;
              v86 = 2048;
              v87 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_113:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v6;
              v86 = 2048;
              v87 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v3;
              v86 = 2048;
              v87 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_115:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v6;
              v86 = 2048;
              v87 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_116:
              v79 = 0;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v88 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v80 = 136315906;
              v81 = "operator[]";
              v82 = 1024;
              v83 = 468;
              v84 = 2048;
              v85 = v3;
              v86 = 2048;
              v87 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_117;
            }
          }

          else if (v9)
          {
            v61 = 0;
            v6 = 0;
            v62 = 0;
            while (1)
            {
              v2 = v77.n128_u64[1];
              if (v77.n128_u64[1] <= v6)
              {
                goto LABEL_104;
              }

              *(v78 + v61) = *(v8 + v62);
              v62 += *(v3 + 48);
              ++v6;
              v61 += 8;
              if (v62 >= v9)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v77 = 0uLL;
        v78 = 0;
        v6 = *(a1 + 40);
        v29 = *(v3 + 48);
        v30 = *(v3 + 24) + *(v3 + 56);
        v31 = v29 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v31)
          {
            v32 = 0;
            v33 = 0;
            v3 = v77.n128_u64[1];
            v34 = v78;
            while (v3 != v32)
            {
              *(v34 + 8 * v32) = *(v30 + v33);
              v33 += v29;
              ++v32;
              if (v33 >= v31)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_106;
          }
        }

        else if (v31)
        {
          v65 = 0;
          v6 = 0;
          v66 = 0;
          while (1)
          {
            v2 = v77.n128_u64[1];
            if (v77.n128_u64[1] <= v6)
            {
              goto LABEL_108;
            }

            *(v78 + v65) = *(v30 + v66);
            v66 += *(v3 + 48);
            ++v6;
            v65 += 8;
            if (v66 >= v31)
            {
              goto LABEL_101;
            }
          }
        }
      }

      goto LABEL_101;
    }

    switch(v5)
    {
      case 3u:
        v77 = 0uLL;
        v78 = 0;
        v6 = *(a1 + 40);
        v36 = *(v3 + 48);
        v37 = *(v3 + 24) + *(v3 + 56);
        v38 = v36 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v38)
          {
            v39 = 0;
            v40 = 0;
            v3 = v77.n128_u64[1];
            v41 = v78;
            while (v3 != v39)
            {
              LOWORD(v35) = *(v37 + v40);
              v35 = *&v35;
              *(v41 + 8 * v39) = v35;
              v40 += v36;
              ++v39;
              if (v40 >= v38)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_107;
          }
        }

        else if (v38)
        {
          v67 = 0;
          v6 = 0;
          v68 = 0;
          while (1)
          {
            v2 = v77.n128_u64[1];
            if (v77.n128_u64[1] <= v6)
            {
              goto LABEL_109;
            }

            *(v78 + v67) = *(v37 + v68);
            v68 += *(v3 + 48);
            ++v6;
            v67 += 8;
            if (v68 >= v38)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 4u:
        v77 = 0uLL;
        v78 = 0;
        v6 = *(a1 + 40);
        v49 = *(v3 + 48);
        v50 = *(v3 + 24) + *(v3 + 56);
        v51 = v49 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v51)
          {
            v52 = 0;
            v53 = 0;
            v3 = v77.n128_u64[1];
            v54 = v78;
            while (v3 != v52)
            {
              *(v54 + 8 * v52) = *(v50 + v53);
              v53 += v49;
              ++v52;
              if (v53 >= v51)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_111;
          }
        }

        else if (v51)
        {
          v71 = 0;
          v6 = 0;
          v72 = 0;
          while (1)
          {
            v2 = v77.n128_u64[1];
            if (v77.n128_u64[1] <= v6)
            {
              goto LABEL_113;
            }

            *(v78 + v71) = *(v50 + v72);
            v72 += *(v3 + 48);
            ++v6;
            v71 += 8;
            if (v72 >= v51)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 5u:
        v77 = 0uLL;
        v78 = 0;
        v6 = *(a1 + 40);
        v17 = *(v3 + 48);
        v18 = *(v3 + 24) + *(v3 + 56);
        v19 = v17 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v19)
          {
            v20 = 0;
            v21 = 0;
            v3 = v77.n128_u64[1];
            v22 = v78;
            while (v3 != v20)
            {
              LODWORD(v16) = *(v18 + v21);
              v16 = *&v16;
              *(v22 + 8 * v20) = v16;
              v21 += v17;
              ++v20;
              if (v21 >= v19)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_103;
          }
        }

        else if (v19)
        {
          v63 = 0;
          v6 = 0;
          v64 = 0;
          while (1)
          {
            v2 = v77.n128_u64[1];
            if (v77.n128_u64[1] <= v6)
            {
              goto LABEL_105;
            }

            *(v78 + v63) = *(v18 + v64);
            v64 += *(v3 + 48);
            ++v6;
            v63 += 8;
            if (v64 >= v19)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      default:
        goto LABEL_61;
    }
  }

LABEL_101:
  result = v77;
  v76 = v78;
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v76;
  return result;
}

__n128 _ZNK2re8internal11DataPayload22computeConvertedValuesIDv2_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 33) == 8)
  {
    v4 = *(a1 + 24) + *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48) * v5;
    v14 = 0uLL;
    v15 = 0;
    if (*(a1 + 32))
    {
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v9 = v14.n128_u64[1];
          if (v14.n128_u64[1] <= v8)
          {
            break;
          }

          *(v15 + 8 * v8) = *(v4 + v7);
          v7 += *(a1 + 48);
          ++v8;
          if (v7 >= v6)
          {
            goto LABEL_13;
          }
        }

        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        v20 = 468;
        v21 = 2048;
        v22 = v8;
        v23 = 2048;
        v24 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_16;
      }
    }

    else if (v6)
    {
      v8 = 0;
      v12 = 0;
      while (1)
      {
        v9 = v14.n128_u64[1];
        if (v14.n128_u64[1] <= v8)
        {
          break;
        }

        *(v15 + 8 * v8) = *(v4 + v12);
        v12 += *(a1 + 48);
        ++v8;
        if (v12 >= v6)
        {
          goto LABEL_13;
        }
      }

LABEL_16:
      v16 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      v20 = 468;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_13:
    result = v14;
    v13 = v15;
    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 24) = v13;
  }

  else
  {
    result = v25;
    v11 = v26;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v11;
  }

  return result;
}

__n128 _ZNK2re8internal11DataPayload22computeConvertedValuesIDv3_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 33) | 2) == 0xB)
  {
    v4 = *(a1 + 24) + *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48) * v5;
    v15 = 0uLL;
    v16 = 0;
    if (*(a1 + 32))
    {
      if (v6)
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v10 = v15.n128_u64[1];
          if (v15.n128_u64[1] <= v9)
          {
            break;
          }

          *&v7 = *(v4 + v8);
          DWORD2(v7) = *(v4 + v8 + 8);
          *(v16 + 16 * v9) = v7;
          v8 += *(a1 + 48);
          ++v9;
          if (v8 >= v6)
          {
            goto LABEL_13;
          }
        }

        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 468;
        v22 = 2048;
        v23 = v9;
        v24 = 2048;
        v25 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_16;
      }
    }

    else if (v6)
    {
      v13 = 0;
      v9 = 0;
      while (1)
      {
        v10 = v15.n128_u64[1];
        if (v15.n128_u64[1] <= v9)
        {
          break;
        }

        *&v7 = *(v4 + v13);
        DWORD2(v7) = *(v4 + v13 + 8);
        *(v16 + 16 * v9) = v7;
        v13 += *(a1 + 48);
        ++v9;
        if (v13 >= v6)
        {
          goto LABEL_13;
        }
      }

LABEL_16:
      v17 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v18 = 136315906;
      v19 = "operator[]";
      v20 = 1024;
      v21 = 468;
      v22 = 2048;
      v23 = v9;
      v24 = 2048;
      v25 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_13:
    result = v15;
    v14 = v16;
    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 24) = v14;
  }

  else
  {
    result = v26;
    v12 = v27;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v12;
  }

  return result;
}

__n128 _ZNK2re8internal11DataPayload22computeConvertedValuesIDv4_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 33) == 10)
  {
    v4 = *(a1 + 24) + *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48) * v5;
    v14 = 0uLL;
    v15 = 0;
    if (*(a1 + 32))
    {
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v9 = v14.n128_u64[1];
          if (v14.n128_u64[1] <= v8)
          {
            break;
          }

          *(v15 + 16 * v8) = *(v4 + v7);
          v7 += *(a1 + 48);
          ++v8;
          if (v7 >= v6)
          {
            goto LABEL_13;
          }
        }

        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        v20 = 468;
        v21 = 2048;
        v22 = v8;
        v23 = 2048;
        v24 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_16;
      }
    }

    else if (v6)
    {
      v12 = 0;
      v8 = 0;
      while (1)
      {
        v9 = v14.n128_u64[1];
        if (v14.n128_u64[1] <= v8)
        {
          break;
        }

        *(v15 + 16 * v8) = *(v4 + v12);
        v12 += *(a1 + 48);
        ++v8;
        if (v12 >= v6)
        {
          goto LABEL_13;
        }
      }

LABEL_16:
      v16 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      v20 = 468;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_13:
    result = v14;
    v13 = v15;
    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 24) = v13;
  }

  else
  {
    result = v25;
    v11 = v26;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v11;
  }

  return result;
}

uint64_t re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, unsigned int a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v5, a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 8;
  }
}

uint64_t re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, _DWORD *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = *a2;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  result = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v9, a1, v6, v7 ^ (v7 >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v10, v9);
    *(result + 4) = *a2;
    *(result + 8) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = *a2;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  result = re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v12, a1, v6, v7 ^ (v7 >> 31));
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v13, v12);
    *(result + 4) = *a2;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    v9 = *(a3 + 8);
    *(result + 8) = *a3;
    *(result + 16) = v9;
    *a3 = 0;
    *(a3 + 8) = 0;
    v10 = *(result + 24);
    *(result + 24) = *(a3 + 16);
    *(a3 + 16) = v10;
    v11 = *(result + 40);
    *(result + 40) = *(a3 + 32);
    *(a3 + 32) = v11;
    ++*(a3 + 24);
    ++*(result + 32);
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, unsigned int a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v5, a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 8;
  }
}

void re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::resize(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return;
    }

    v9 = 48 * a2;
    v10 = a2;
    do
    {
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((*(a1 + 32) + v9));
      ++v10;
      v9 += 48;
    }

    while (v10 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::setCapacity(a1, a2);
      v5 = *(a1 + 16);
    }

    v7 = a2 - v5;
    if (a2 > v5)
    {
      v8 = 48 * v5;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(*(a1 + 32) + v8, a3);
        v8 += 48;
        --v7;
      }

      while (v7);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
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
  if (*(v7 + 24 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
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
      if (*(v7 + 24 * v8 + 4) == a3)
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
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
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                *(v18 + 4) = *(v17 - 1);
                *(v18 + 8) = *v17;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v25);
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
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

uint64_t re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
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
  if (*(v7 + 56 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 56 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 56 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v28, v9, v8);
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
            v17 = v13 + 24;
            do
            {
              if ((*(v17 - 24) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
                *(v18 + 4) = *(v17 - 20);
                *(v18 + 40) = 0;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 8) = 0;
                v19 = *(v17 - 8);
                *(v18 + 8) = *(v17 - 16);
                *(v18 + 16) = v19;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v20 = *(v18 + 24);
                *(v18 + 24) = *v17;
                *v17 = v20;
                v21 = *(v18 + 40);
                *(v18 + 40) = *(v17 + 16);
                *(v17 + 16) = v21;
                ++*(v17 + 8);
                ++*(v18 + 32);
              }

              v17 += 56;
              --v16;
            }

            while (v16);
          }

          re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(v28);
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
    v23 = *(v22 + 56 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 56 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 56 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 48) = a3;
  ++*(a1 + 28);
  return v22 + 56 * v5;
}

uint64_t re::Result<re::GeomModel,re::DetailedError>::Result(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 32) = *(a2 + 4);
    v5 = *(a2 + 2);
    *(a1 + 8) = *(a2 + 1);
    *(a2 + 1) = 0;
    v6 = *(a2 + 3);
    *(a2 + 4) = 0;
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a2 + 2) = v8;
    *(a2 + 3) = v7;
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    v9 = *(a2 + 6);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = v9;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    v10 = *(a1 + 56);
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(a1 + 72);
    *(a1 + 72) = *(a2 + 9);
    *(a2 + 9) = v11;
    ++*(a2 + 16);
    ++*(a1 + 64);
    *(a1 + 112) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    *(a1 + 104) = 0;
    v12 = *(a2 + 11);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = v12;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v13 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(a1 + 112);
    *(a1 + 112) = *(a2 + 14);
    *(a2 + 14) = v14;
    ++*(a2 + 26);
    ++*(a1 + 104);
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 120, a2 + 120);
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 168, a2 + 168);
    *(a1 + 248) = 0;
    *(a1 + 240) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 216) = 0;
    v15 = *(a2 + 28);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 224) = v15;
    *(a2 + 27) = 0;
    *(a2 + 28) = 0;
    v16 = *(a1 + 232);
    *(a1 + 232) = *(a2 + 29);
    *(a2 + 29) = v16;
    v17 = *(a1 + 248);
    *(a1 + 248) = *(a2 + 31);
    *(a2 + 31) = v17;
    ++*(a2 + 60);
    ++*(a1 + 240);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 48) = *(a2 + 6);
    v18 = *(a2 + 4);
    *(a1 + 24) = *(a2 + 3);
    *(a2 + 3) = 0;
    v19 = *(a2 + 5);
    *(a2 + 6) = 0;
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    *(a2 + 4) = v21;
    *(a2 + 5) = v20;
  }

  return a1;
}

BOOL re::hasTransformAnimation(re *this, const MDLObject *a2)
{
  if (!this)
  {
    return 0;
  }

  v2 = [(re *)this transform];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 keyTimes];
    v5 = [v4 count] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void re::importSRTSampledAnimation(re *this@<X0>, MDLObject *a2@<X1>, float a3@<S0>, uint64_t a4@<X8>)
{
  v8 = this;
  if (!re::hasTransformAnimation(v8, v9))
  {
    v11 = [(re *)v8 name];
    re::DynamicString::format("Processing node %s", &v54, [v11 UTF8String]);
    v19 = v54;
    v20 = v55;
    v21 = v56;
    *a4 = 0;
    v22 = 2000;
LABEL_9:
    *(a4 + 8) = v22;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    *(a4 + 48) = v21;
    goto LABEL_10;
  }

  if (a3 <= 0.0 || ((a3 + 1.0) * 0.00001) > a3)
  {
    v11 = [(re *)v8 name];
    re::DynamicString::format("Sample Rate = %f. Processing node %s", &v54, a3, [v11 UTF8String]);
    v19 = v54;
    v20 = v55;
    v21 = v56;
    *a4 = 0;
    v22 = 2001;
    goto LABEL_9;
  }

  v10 = [(re *)v8 transform];
  v11 = v10;
  if (!v10)
  {
    v14 = [(re *)v8 name];
    re::DynamicString::format("Processing node %s", &v54, [v14 UTF8String]);
    v15 = v54;
    v16 = v55;
    v17 = v56;
    *a4 = 0;
    v18 = 2002;
    goto LABEL_14;
  }

  v12 = [v10 keyTimes];
  v13 = [v12 count];

  if (v13 <= 1)
  {
    v14 = [(re *)v8 name];
    re::DynamicString::format("Processing node %s", &v54, [v14 UTF8String]);
    v15 = v54;
    v16 = v55;
    v17 = v56;
    *a4 = 0;
    v18 = 2003;
LABEL_14:
    *(a4 + 8) = v18;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v15;
    *(a4 + 40) = v16;
    *(a4 + 48) = v17;

    goto LABEL_10;
  }

  [v11 minimumTime];
  v24 = v23;
  [v11 maximumTime];
  if (v24 > v25)
  {
    [v11 minimumTime];
    v27 = v26;
    [v11 maximumTime];
    v29 = v28;
    v14 = [(re *)v8 name];
    re::DynamicString::format("MinTime = %lf, MaxTime = %lf, Processing node %s", &v54, v27, v29, [v14 UTF8String]);
    v15 = v54;
    v16 = v55;
    v17 = v56;
    *a4 = 0;
    v18 = 2004;
    goto LABEL_14;
  }

  [v11 minimumTime];
  v31 = v30;
  v32 = [v11 maximumTime];
  v34 = v33;
  v60 = 0;
  v57[1] = 0;
  v58 = 0;
  v59 = 0;
  v35 = vcvtps_s32_f32(v31 / a3);
  v36 = vcvtms_s32_f32(v34 / a3);
  v37 = v36 - v35 + 3;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity(v57, v37);
  ++v59;
  v38 = ceilf(v31 / a3) * a3;
  *&v39 = vabds_f32(v31, v38);
  v40 = v38 >= v31 || v38 == v31;
  if (!v40 && *&v39 > 0.00001)
  {
    v52 = v38;
    v47 = [(re *)v8 name];
    re::DynamicString::format("Start time = %f. Calculated start time = %f, Processing node %s", &v54, v31, *&v52, [v47 UTF8String]);
    v48 = v54;
    v49 = v55;
    v50 = v56;
    *a4 = 0;
    v51 = 2005;
    goto LABEL_41;
  }

  v41 = v36 * a3;
  v42 = v41 <= v34 || v41 == v34;
  if (!v42 && vabds_f32(v41, v34) > 0.00001)
  {
    v53 = v41;
    v47 = [(re *)v8 name];
    re::DynamicString::format("End time = %f. Calculated end time = %f, Processing node %s", &v54, v34, *&v53, [v47 UTF8String]);
    v48 = v54;
    v49 = v55;
    v50 = v56;
    *a4 = 0;
    v51 = 2006;
    goto LABEL_41;
  }

  if (v38 != v31 && *&v39 >= (((fabsf(v31) + fabsf(v38)) + 1.0) * 0.00001))
  {
    re::DynamicArray<re::Matrix3x3<float>>::add(v57, &v54);
  }

  v43 = 0.0;
  if (v36 >= v35)
  {
    v44 = v36 + 1;
    do
    {
      v43 = (v35 * a3);
      re::DynamicArray<re::Matrix3x3<float>>::add(v57, &v54);
      ++v35;
    }

    while (v44 != v35);
  }

  v45 = v34;
  if (v43 != v34 && vabdd_f64(v45, v43) >= (fabs(v45) + fabs(v43) + 1.0) * 1.0e-12)
  {
    *&v45 = re::DynamicArray<re::Matrix3x3<float>>::add(v57, &v54).n128_u64[0];
  }

  v46 = v58;
  if (v58 > v37)
  {
    v47 = [(re *)v8 name];
    re::DynamicString::format("Frame count = %ld. Max sample count = %ld, Processing node %s", &v54, v46, v37, [v47 UTF8String]);
    v48 = v54;
    v49 = v55;
    v50 = v56;
    *a4 = 0;
    v51 = 2008;
LABEL_41:
    *(a4 + 8) = v51;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v48;
    *(a4 + 40) = v49;
    *(a4 + 48) = v50;

    goto LABEL_42;
  }

  re::DynamicArray<re::AssetHandle>::operator=(&a2[11], v57);
  *&a2[10].super.isa = v31;
  *(&a2[10].super.isa + 1) = v34;
  *(&a2[9].super.isa + 1) = a3;
  *a4 = 1;
LABEL_42:
  if (v57[0] && v60)
  {
    (*(*v57[0] + 40))();
  }

LABEL_10:
}

uint64_t anonymous namespace::sampleTransform(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  [v5 localTransformAtTime:a3];
  v13 = v7;
  v14 = v6;
  v11 = v9;
  v12 = v8;

  v15[0] = v14;
  v15[1] = v13;
  v15[2] = v12;
  v15[3] = v11;
  *a1 = 0x3F8000003F800000;
  *(a1 + 8) = 1065353216;
  *(a1 + 24) = 0x3F80000000000000;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return re::decomposeScaleRotationTranslation<float>(v15, a1, (a1 + 16), (a1 + 32));
}

void re::importSRTSampledAnimationFromUSKNode(void *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = [MEMORY[0x1E69DED88] transformKeyTimesWithNode:v5];
  v7 = v6;
  if (!v6)
  {
    v8 = [v5 path];
    v9 = [v8 stringValue];
    re::DynamicString::format("Processing node %s", &v32, [v9 UTF8String]);
    v10 = v32;
    v12 = *(&v33 + 1);
    v11 = v33;
    *a3 = 0;
    v13 = 2000;
    goto LABEL_10;
  }

  if ([v6 arraySize] <= 1)
  {
    v8 = [v5 path];
    v9 = [v8 stringValue];
    re::DynamicString::format("Processing node %s", &v32, [v9 UTF8String]);
    v10 = v32;
    v12 = *(&v33 + 1);
    v11 = v33;
    *a3 = 0;
    v13 = 2003;
LABEL_10:
    *(a3 + 8) = v13;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v10;
    *(a3 + 40) = v11;
    *(a3 + 48) = v12;
    goto LABEL_11;
  }

  v14 = a2[19];
  if (v14 <= 0.0 || v14 < ((v14 + 1.0) * 0.00001))
  {
    v22 = v14;
    v8 = [v5 path];
    v9 = [v8 stringValue];
    re::DynamicString::format("Sample Rate = %f. Processing node %s", &v32, *&v22, [v9 UTF8String]);
    v10 = v32;
    v12 = *(&v33 + 1);
    v11 = v33;
    *a3 = 0;
    v13 = 2001;
    goto LABEL_10;
  }

  v8 = [v7 dataNoCopy];
  v15 = [v8 bytes];
  v16 = [v7 arraySize];
  v17 = *v15;
  v18 = v15[v16 - 1];
  if (v17 > v18)
  {
    v9 = [v5 name];
    v19 = [v9 stringValue];
    re::DynamicString::format("MinTime = %lf, MaxTime = %lf, Processing node %s", &v32, v17, v18, [v19 UTF8String]);
    v20 = v32;
    v21 = v33;
    *a3 = 0;
    *(a3 + 8) = 2004;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v20;
    *(a3 + 40) = v21;

LABEL_11:
    goto LABEL_12;
  }

  v38 = 0;
  v36[1] = 0;
  v36[2] = 0;
  v37 = 0;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity(v36, ((v18 - v17) + 1.0));
  ++v37;
  if (v17 <= v18)
  {
    v23 = v17;
    do
    {
      [MEMORY[0x1E69DED88] localTransformWithNode:v5 time:v23];
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v29.i64[0] = 0x3F8000003F800000;
      v29.i64[1] = 1065353216;
      v30[0] = 0;
      v30[1] = 0x3F80000000000000;
      v31 = 0uLL;
      re::decomposeScaleRotationTranslation<float>(&v32, &v29, v30, &v31);
      re::DynamicArray<re::Matrix3x3<float>>::add(v36, &v29);
      ++v23;
    }

    while (v23 <= v18);
  }

  re::DynamicArray<re::AssetHandle>::operator=((a2 + 22), v36);
  v28 = a2[19];
  a2[20] = v28 * v17;
  a2[21] = v28 * v18;
  *a3 = 1;
  if (v36[0] && v38)
  {
    (*(*v36[0] + 40))();
  }

LABEL_12:
}

void *re::findMaterialPropertyString(re *this, MDLMaterial *a2, MDLMaterialSemantic a3)
{
  v4 = this;
  v6 = re::findMaterialPropertyType(v4, a2, MDLMaterialSemanticSubsurface, v5);
  v7 = [v6 stringValue];
  v9 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v6 = re::findMaterialPropertyType(v4, a2, MDLMaterialSemanticMetallic, v8);
  v11 = [v6 URLValue];
  v12 = [v11 absoluteString];

  v9 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ([v9 length])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  v13 = v10;

  return v10;
}

void re::gatherMaterialConstants(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = re::findMaterialPropertyType(v3, 0, MDLMaterialSemanticAnisotropic, v4);
  if (v5)
  {
  }

  else
  {
    v9 = re::findMaterialPropertyType(v3, 0xF, MDLMaterialSemanticSpecularTint, v6);

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  __asm { FMOV            V0.4S, #1.0 }

  MaterialPropertyFloat3 = re::getMaterialPropertyFloat3(v3, 0, _Q0, v7, v8);
  MaterialPropertyFloat = re::getMaterialPropertyFloat(v3, 0xF, v15, 1.0, v16);
  re::DynamicString::appendf(&v87, "[%f, %f, %f, %f]", MaterialPropertyFloat3.n128_f32[0], MaterialPropertyFloat3.n128_f32[1], MaterialPropertyFloat3.n128_f32[2], MaterialPropertyFloat);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "baseColorTint", &v87);
  if (*v87.__x_ && (v87.__x_[2] & 1) != 0)
  {
    (*(**v87.__x_ + 40))();
  }

LABEL_7:
  v19 = [(re *)v3 name];
  v20 = [v19 hash];
  v87.__x_[0] = v20;
  for (i = 1; i != 624; ++i)
  {
    v20 = i + 1812433253 * (v20 ^ (v20 >> 30));
    v87.__x_[i] = v20;
  }

  v87.__i_ = 0;

  v23 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v87), 0x20uLL) + 0.0);
  v24 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v87), 0x20uLL) + 0.0);
  v25 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v87);
  re::DynamicString::appendf(&v85, "[%f, %f, %f]", v23, v24, (vcvts_n_f32_u32(v25, 0x20uLL) + 0.0));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "partDebugColor", &v85);
  v27 = re::findMaterialPropertyType(v3, 0xD, MDLMaterialSemanticAnisotropic, v26);

  if (v27)
  {
    v78 = re::getMaterialPropertyFloat3(v3, 0xD, 0, v28, v29);
    re::DynamicString::appendf(&v83, "[%f, %f, %f]", v78.n128_f32[0], v78.n128_f32[1], v78.n128_f32[2]);
    v31 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "emissiveColor", &v83);
    re::DynamicString::appendf(&v81, "%f", 1.0);
    v32 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "emissiveScale", &v81);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1, "emissiveScaleRGBA", &v79);
    if (v79 && (v80 & 1) != 0)
    {
      (*(*v79 + 40))();
    }

    if (v81 && (v82 & 1) != 0)
    {
      (*(*v81 + 40))();
    }

    if (v83 && (v84 & 1) != 0)
    {
      (*(*v83 + 40))();
    }
  }

  v33 = re::findMaterialPropertyString(v3, 2, v28);
  if (v33)
  {

LABEL_22:
    v38 = 1.0;
    goto LABEL_23;
  }

  v37 = re::findMaterialPropertyType(v3, 2, MDLMaterialSemanticSpecular, v34);

  if (v37)
  {
    goto LABEL_22;
  }

  v38 = 0.0;
LABEL_23:
  v39 = re::getMaterialPropertyFloat(v3, 2, v35, v38, v36);
  v41 = re::findMaterialPropertyType(v3, 2, MDLMaterialSemanticSpecularTint, v40);

  if (v41 || v39 != 0.0)
  {
    re::DynamicString::appendf(&v83, "%f", v39);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "metallicScale", &v83);
    if (v83)
    {
      if (v84)
      {
        (*(*v83 + 40))();
      }
    }
  }

  v44 = re::findMaterialPropertyType(v3, 6, MDLMaterialSemanticSpecularTint, v43);

  if (v44)
  {
    v47 = re::getMaterialPropertyFloat(v3, 6, v45, 1.0, v46);
    re::DynamicString::appendf(&v83, "%f", v47);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "roughnessScale", &v83);
    if (v83)
    {
      if (v84)
      {
        (*(*v83 + 40))();
      }
    }
  }

  v49 = re::findMaterialPropertyType(v3, 0xB, MDLMaterialSemanticSpecularTint, v46);

  if (v49)
  {
    v52 = re::getMaterialPropertyFloat(v3, 0xB, v50, 0.0, v51);
    re::DynamicString::appendf(&v83, "%f", v52);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "clearcoatScale", &v83);
    if (v83)
    {
      if (v84)
      {
        (*(*v83 + 40))();
      }
    }
  }

  v54 = re::findMaterialPropertyString(v3, 0x8000, v50);
  if (v54)
  {

LABEL_39:
    v59 = 1.0;
    goto LABEL_40;
  }

  v58 = re::findMaterialPropertyType(v3, 0x8000, MDLMaterialSemanticSpecular, v55);

  if (v58)
  {
    goto LABEL_39;
  }

  v59 = 0.01;
LABEL_40:
  v60 = re::getMaterialPropertyFloat(v3, 0x8000, v56, v59, v57);
  v62 = re::findMaterialPropertyType(v3, 0x8000, MDLMaterialSemanticSpecularTint, v61);

  if (v62 || v60 != 0.01)
  {
    re::DynamicString::appendf(&v83, "%f", v60);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "clearcoatRoughnessScale", &v83);
    if (v83)
    {
      if (v84)
      {
        (*(*v83 + 40))();
      }
    }
  }

  v65 = re::findMaterialPropertyType(v3, 0x10, MDLMaterialSemanticSpecularTint, v64);

  if (v65)
  {
    v68 = re::getMaterialPropertyFloat(v3, 0x10, v66, 1.0, v67);
  }

  else
  {
    v68 = 1.0;
  }

  v69 = re::findMaterialPropertyType(v3, 0x11, MDLMaterialSemanticSpecularTint, v67);

  v73 = 1.5;
  if (v69)
  {
    v73 = re::getMaterialPropertyFloat(v3, 0x11, v71, 1.5, v72);
  }

  if (v68 <= 2.4)
  {
    v74 = v68;
  }

  else
  {
    v74 = 2.4;
  }

  if (v74 < 1.0)
  {
    v74 = 1.0;
  }

  if (v73 > 2.4)
  {
    v73 = 2.4;
  }

  if (v73 < 1.0)
  {
    v73 = 1.0;
  }

  v75 = (((v74 - v73) / (v74 + v73)) * ((v74 - v73) / (v74 + v73))) / 0.08;
  if (v75 <= 1.0)
  {
    v76 = v75;
  }

  else
  {
    v76 = 1.0;
  }

  re::DynamicString::appendf(&v83, "%f", v76);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "specularScale", &v83);
  if (v83 && (v84 & 1) != 0)
  {
    (*(*v83 + 40))();
  }

  if (v85 && (v86 & 1) != 0)
  {
    (*(*v85 + 40))();
  }
}

__n128 re::getMaterialPropertyFloat3(re *a1, MDLMaterial *a2, __n128 a3, uint64_t a4, MDLMaterialPropertyType a5)
{
  v5 = re::findMaterialPropertyType(a1, a2, MDLMaterialSemanticAnisotropic, a5);
  v6 = v5;
  if (v5 && ![v5 isDefaultValue])
  {
    [v6 float3Value];
    a3 = v7;
  }

  return a3;
}

float re::getMaterialPropertyFloat(re *this, MDLMaterial *a2, MDLMaterialSemantic a3, float a4, MDLMaterialPropertyType a5)
{
  v6 = re::findMaterialPropertyType(this, a2, MDLMaterialSemanticSpecularTint, a5);
  v7 = v6;
  if (v6 && ([v6 isDefaultValue] & 1) == 0)
  {
    [v7 floatValue];
    a4 = v8;
  }

  return a4;
}

uint64_t re::isMaterialTransparent(re *this, MDLMaterial *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(re *)this propertiesWithSemantic:15, 0];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      if ([v7 type] == 3 || objc_msgSend(v7, "type") == 1)
      {
        v7 = 1;
        goto LABEL_16;
      }

      if ([v7 type] == 5)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v7 = 0;
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    if (!v7)
    {
      goto LABEL_16;
    }

    if (([v7 isDefaultValue] & 1) == 0)
    {
      [v7 floatValue];
      v7 = v9 < 0.99;
      goto LABEL_16;
    }
  }

  v7 = 0;
LABEL_16:

  return v7;
}

id re::findMaterialPropertyType(re *this, MDLMaterial *a2, MDLMaterialSemantic a3, MDLMaterialPropertyType a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(re *)this propertiesWithSemantic:a2, a4, 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

id re::createMDLMeshFromGeomMesh(re *this, const re::GeomMesh *a2, const char *a3)
{
  v128 = *MEMORY[0x1E69E9840];
  v92 = objc_alloc_init(MEMORY[0x1E6974B90]);
  v6 = [objc_alloc(MEMORY[0x1E6974B78]) initWithBufferAllocator:v92];
  [v6 setVertexCount:*(this + 4)];
  v7 = v6;
  v8 = [v7 allocator];
  v9 = [v8 newBuffer:12 * *(this + 4) type:1];

  v10 = re::GeomMesh::accessVertexPositions(this);
  v12 = v11;
  v96 = v9;
  v13 = [v9 map];
  v14 = [v13 bytes];
  v15 = *(this + 4);
  if (v15)
  {
    v16 = v12;
    v17 = (v14 + 4);
    v18 = v12;
    while (v18)
    {
      v20 = *v10;
      v19 = v10[1];
      v10 += 2;
      *(&v21 + 1) = v19;
      *&v21 = v20;
      v17[-1].i32[1] = v20;
      *v17 = vzip1_s32((v21 >> 32), v19);
      v17 = (v17 + 12);
      --v18;
      if (!--v15)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_106;
  }

LABEL_5:

  v22 = objc_alloc(MEMORY[0x1E6974BF8]);
  v23 = [v22 initWithName:*MEMORY[0x1E6974B28] format:786435 offset:0 bufferIndex:0];
  v24 = objc_alloc_init(MEMORY[0x1E6974C08]);
  v25 = [v24 layouts];
  v88 = [objc_alloc(MEMORY[0x1E6974C00]) initWithStride:12];
  v89 = v25;
  [v25 replaceObjectAtIndex:0 withObject:v88];
  v91 = v23;
  [v24 addOrReplaceAttribute:v23];
  v90 = v24;
  [v7 setVertexDescriptor:v24];
  v16 = v115;
  v118 = v96;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
  [v7 setVertexBuffers:v26];

  v111 = 0;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  v110 = 0;
  v27 = re::internal::GeomAttributeManager::attributeByName((this + 64), a2);
  v105 = this;
  if (v27 && (v28 = v27, v27[16] == 2) && (*(*v27 + 16))(v27) == *(this + 10))
  {
    v29 = (*(*v28 + 16))(v28);
    if (v29)
    {
      if (!v28[5])
      {
        goto LABEL_113;
      }

      v30 = v28[7];
      v29 = (*(*v28 + 16))(v28);
      LODWORD(this) = v29;
    }

    else
    {
      LODWORD(this) = 0;
      v30 = 0;
    }

    v106 = 0;
    if (*(v105 + 10))
    {
      v37 = 0;
      LODWORD(v40) = 0;
      while (!v37)
      {
        v44 = 0;
        v3 = 0;
LABEL_35:
        LODWORD(__src) = v40;
        *&v117[2] = 0;
        memset(v115, 0, sizeof(v115));
        re::DynamicArray<int>::setCapacity(v115, 1uLL);
        ++*&v115[24];
        re::DynamicArray<float>::copy(v115, 0, &__src, 1);
        v40 = v106;
        if (this <= v106)
        {
          goto LABEL_109;
        }

        *v113 = *(v30 + 4 * v106);
        re::DynamicArray<float>::DynamicArray(&v113[8], v115);
        v45 = v44;
        v46 = v44 + 1;
        if (v46 <= v3)
        {
          goto LABEL_110;
        }

        if (v45 >= v108)
        {
          re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::growCapacity(&v107, v46);
          v45 = v109;
        }

        v47 = v111;
        v48 = v111 + 48 * v45;
        if (v45 <= v3)
        {
          *v48 = *v113;
          *(v48 + 40) = 0;
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 8) = 0;
          *(v48 + 32) = 0;
          *(v48 + 8) = *&v113[8];
          *&v113[8] = 0;
          *(v48 + 16) = *&v113[16];
          *&v113[16] = 0;
          v53 = *(v48 + 24);
          *(v48 + 24) = *&v113[24];
          *&v113[24] = v53;
          v54 = *(v48 + 40);
          *(v48 + 40) = v114;
          v114 = v54;
          ++*&v113[32];
          ++*(v48 + 32);
        }

        else
        {
          *v48 = *(v48 - 48);
          *(v48 + 8) = *(v48 - 40);
          *(v48 + 16) = *(v48 - 32);
          *(v48 - 40) = 0;
          *(v48 - 32) = 0;
          *(v48 - 24) = 0;
          *(v48 + 40) = *(v48 - 8);
          v49 = *(v48 - 16) + 1;
          *(v48 - 8) = 0;
          *(v48 - 16) = v49;
          *(v48 + 32) = 1;
          if (v48 - 48 != v47 + 48 * v3)
          {
            v50 = (v47 + 48 * v45 - 96);
            v51 = 48 * v3 - 48 * v45 + 48;
            do
            {
              v50[12] = *v50;
              re::DynamicArray<re::RigComponentConstraint>::operator=((v50 + 14), (v50 + 2));
              v50 -= 12;
              v51 += 48;
            }

            while (v51);
            v47 = v111;
          }

          v52 = (v47 + 48 * v3);
          *v52 = *v113;
          re::DynamicArray<re::RigComponentConstraint>::operator=((v52 + 2), &v113[8]);
          v45 = v109;
        }

        v37 = v45 + 1;
        v109 = v37;
        ++v110;
        if (*&v113[8] && v114)
        {
          v55 = v37;
          (*(**&v113[8] + 40))();
          v37 = v55;
        }

        v29 = *v115;
        if (*v115 && *&v117[2])
        {
          v43 = v37;
          v29 = (*(**v115 + 40))();
LABEL_52:
          v37 = v43;
        }

        LODWORD(v40) = v106 + 1;
        v106 = v40;
        if (v40 >= *(v105 + 10))
        {
          goto LABEL_56;
        }
      }

      if (this <= v40)
      {
        goto LABEL_111;
      }

      v3 = 0;
      v41 = *(v30 + 4 * v40);
      v29 = (v111 + 8);
      while (1)
      {
        v42 = *(v29 - 2);
        if (v42 == v41)
        {
          break;
        }

        if (v42 > v41)
        {
          v44 = v37;
          goto LABEL_35;
        }

        ++v3;
        v29 = (v29 + 48);
        if (v37 == v3)
        {
          v44 = v37;
          v3 = v37;
          goto LABEL_35;
        }
      }

      v43 = v37;
      v29 = re::DynamicArray<int>::add(v29, &v106);
      goto LABEL_52;
    }

    v37 = 0;
LABEL_56:
    this = v105;
  }

  else
  {
    *&v113[32] = 0;
    memset(v113, 0, 28);
    LODWORD(__src) = 1;
    re::DynamicArray<float>::DynamicArray(&__src + 8, v113);
    re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::growCapacity(&v107, 1uLL);
    v31 = v111;
    v32 = v110;
    v33 = v109;
    v34 = v111 + 48 * v109;
    *v34 = __src;
    *(v34 + 40) = 0;
    *(v34 + 32) = 0;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 8) = 0;
    *(v34 + 8) = *(&__src + 1);
    *(&__src + 1) = 0;
    *(v34 + 16) = v124;
    *&v124 = 0;
    v35 = *(v34 + 24);
    *(v34 + 24) = *(&v124 + 1);
    *(&v124 + 1) = v35;
    v36 = *(v34 + 40);
    *(v34 + 40) = *(&v125 + 1);
    *(&v125 + 1) = v36;
    LODWORD(v125) = v125 + 1;
    ++*(v34 + 32);
    v37 = v33 + 1;
    v109 = v33 + 1;
    v110 = v32 + 1;
    if (*(&__src + 1))
    {
      if (v36)
      {
        v38 = v33 + 1;
        (*(**(&__src + 1) + 40))(*(&__src + 1));
        v37 = v38;
      }

      *(&v125 + 1) = 0;
      v124 = 0uLL;
      *(&__src + 1) = 0;
      LODWORD(v125) = v125 + 1;
    }

    if (*v113 && *&v113[32])
    {
      v39 = v37;
      (*(**v113 + 40))();
      v37 = v39;
    }

    LODWORD(v119) = 0;
    if (*(this + 10))
    {
      if (!v37)
      {
LABEL_112:
        *v115 = 0;
        *(v16 + 144) = 0u;
        *(v16 + 160) = 0u;
        *(v16 + 112) = 0u;
        *(v16 + 128) = 0u;
        *(v16 + 96) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 789;
        *&v113[18] = 2048;
        *&v113[20] = 0;
        *&v113[28] = 2048;
        *&v113[30] = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_113:
        *v115 = 0;
        *(v16 + 144) = 0u;
        *(v16 + 160) = 0u;
        *(v16 + 112) = 0u;
        *(v16 + 128) = 0u;
        *(v16 + 96) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 797;
        *&v113[18] = 2048;
        *&v113[20] = 0;
        *&v113[28] = 2048;
        *&v113[30] = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      do
      {
        re::DynamicArray<int>::add((v31 + 8), &v119);
        LODWORD(v119) = v119 + 1;
      }

      while (v119 < *(this + 10));
      v37 = v109;
    }
  }

  v93 = v37;
  if (!v37)
  {
    goto LABEL_93;
  }

  v56 = v111;
  v94 = v111 + 48 * v37;
  v95 = v7;
  do
  {
    v57 = v7;
    v58 = v57;
    v59 = *(v56 + 24);
    if (v59)
    {
      v3 = 0;
      v60 = *(v56 + 40);
      v13 = *(this + 5);
      v61 = 4 * v59;
      while (1)
      {
        v62 = *v60;
        if (v13 <= v62)
        {
          goto LABEL_105;
        }

        if (*(*(this + 7) + 16 * v62 + 12) == -1)
        {
          v63 = 3;
        }

        else
        {
          v63 = 4;
        }

        v3 += v63;
        ++v60;
        v61 -= 4;
        if (!v61)
        {
          goto LABEL_68;
        }
      }
    }

    v3 = 0;
LABEL_68:
    v64 = [v57 allocator];
    v65 = [v64 newBuffer:4 * v3 type:2];

    v102 = v58;
    v66 = [v58 allocator];
    v98 = v59;
    v67 = [v66 newBuffer:v59 type:2];

    v101 = v65;
    v99 = [v65 map];
    v68 = [v99 bytes];
    v100 = v67;
    v97 = [v67 map];
    v103 = v56;
    v104 = [v97 bytes];
    v69 = *(v56 + 24);
    if (!v69)
    {
      goto LABEL_87;
    }

    v70 = 0;
    v71 = 0;
    v72 = *(v103 + 40);
    v62 = &v72[v69];
    do
    {
      v16 = *v72;
      *&v113[32] = 0;
      memset(v113, 0, 28);
      v13 = *(this + 5);
      if (v13 <= v16)
      {
        goto LABEL_107;
      }

      v73 = *(this + 7) + 16 * v16;
      if (*(v73 + 12) == -1)
      {
        v74 = 3;
      }

      else
      {
        v74 = 4;
      }

      re::DynamicArray<float>::resize(v113, v74);
      v75 = 0;
      this = *&v113[16];
      v76 = *&v113[32];
      do
      {
        if (this == v75)
        {
          v119 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          __src = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v115 = 136315906;
          *&v115[4] = "operator[]";
          *&v115[12] = 1024;
          *&v115[14] = 789;
          *&v115[18] = 2048;
          *&v115[20] = this;
          v116 = 2048;
          *v117 = this;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_104:
          v13 = v115;
          v119 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          __src = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v115 = 136315906;
          *&v115[4] = "operator[]";
          *&v115[12] = 1024;
          *&v115[14] = 789;
          *&v115[18] = 2048;
          *&v115[20] = this;
          v116 = 2048;
          *v117 = this;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_105:
          *v115 = 0;
          *(v16 + 144) = 0u;
          *(v16 + 160) = 0u;
          *(v16 + 112) = 0u;
          *(v16 + 128) = 0u;
          *(v16 + 96) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v113 = 136315906;
          *&v113[4] = "operator[]";
          *&v113[12] = 1024;
          *&v113[14] = 797;
          *&v113[18] = 2048;
          *&v113[20] = v62;
          *&v113[28] = 2048;
          *&v113[30] = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_106:
          v107 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          __src = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v113 = 136315906;
          *&v113[4] = "operator[]";
          *&v113[12] = 1024;
          *&v113[14] = 613;
          *&v113[18] = 2048;
          *&v113[20] = v16;
          *&v113[28] = 2048;
          *&v113[30] = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_107:
          v119 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          __src = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v115 = 136315906;
          *&v115[4] = "operator[]";
          *&v115[12] = 1024;
          *&v115[14] = 797;
          *&v115[18] = 2048;
          *&v115[20] = v16;
          v116 = 2048;
          *v117 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_108:
          v40 = v115;
          v119 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          __src = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v115 = 136315906;
          *&v115[4] = "operator[]";
          *&v115[12] = 1024;
          *&v115[14] = 797;
          *&v115[18] = 2048;
          *&v115[20] = v16;
          v116 = 2048;
          *v117 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_109:
          v112 = 0;
          *(v16 + 144) = 0u;
          *(v16 + 160) = 0u;
          *(v16 + 112) = 0u;
          *(v16 + 128) = 0u;
          *(v16 + 96) = 0u;
          v46 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v119) = 136315906;
          *(v16 + 52) = "operator[]";
          v120 = 1024;
          *(v16 + 62) = 613;
          v121 = 2048;
          *(v16 + 68) = v40;
          v122 = 2048;
          *(v16 + 78) = this;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_110:
          v112 = 0;
          *(v16 + 144) = 0u;
          *(v16 + 160) = 0u;
          *(v16 + 112) = 0u;
          *(v16 + 128) = 0u;
          *(v16 + 96) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v119) = 136315906;
          *(v16 + 52) = "insert";
          v120 = 1024;
          *(v16 + 62) = 887;
          v121 = 2048;
          *(v16 + 68) = v3;
          v122 = 2048;
          *(v16 + 78) = v46;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_111:
          *v115 = 0;
          *(v16 + 144) = 0u;
          *(v16 + 160) = 0u;
          *(v16 + 112) = 0u;
          *(v16 + 128) = 0u;
          *(v16 + 96) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v113 = 136315906;
          *&v113[4] = "operator[]";
          *&v113[12] = 1024;
          *&v113[14] = 613;
          *&v113[18] = 2048;
          *&v113[20] = v40;
          *&v113[28] = 2048;
          *&v113[30] = this;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_112;
        }

        *(v76 + 4 * v75) = *(v73 + 4 * v75);
        v75 = (v75 + 1);
      }

      while (v74 != v75);
      v13 = *(v105 + 5);
      if (v13 <= v16)
      {
        goto LABEL_108;
      }

      v77 = 0;
      if (*(*(v105 + 7) + 16 * v16 + 12) == -1)
      {
        v78 = 3;
      }

      else
      {
        v78 = 4;
      }

      v16 = v71 + 1;
      *(v104 + v71) = v78;
      v79 = *&v113[32];
      do
      {
        if (this == v77)
        {
          goto LABEL_104;
        }

        *(v68 + 4 * (v70 + v77)) = *(v79 + 4 * v77);
        v77 = (v77 + 1);
      }

      while (v74 != v77);
      if (*v113)
      {
        (*(**v113 + 40))(*v113);
      }

      ++v72;
      v70 += v77;
      ++v71;
      this = v105;
    }

    while (v72 != v62);
LABEL_87:
    v80 = objc_alloc_init(MEMORY[0x1E6974BD0]);
    [v80 setFaceCount:v98];
    [v80 setFaceTopology:v100];
    if (*this)
    {
      v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    }

    else
    {
      v81 = &stru_1F5D319D0;
    }

    v82 = [objc_alloc(MEMORY[0x1E6974BC8]) initWithName:v81 indexBuffer:v101 indexCount:v3 indexType:32 geometryType:5 material:0 topology:v80];
    if (v82)
    {
      v83 = [v102 submeshes];
      [v83 addObject:v82];
      [v102 setSubmeshes:v83];
    }

    v56 = v103 + 48;
    v7 = v95;
    v16 = v115;
  }

  while (v103 + 48 != v94);
LABEL_93:
  v84 = v107;
  if (v107 && v111)
  {
    if (v93)
    {
      v85 = 48 * v93;
      v86 = v111 + 8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v86);
        v86 += 48;
        v85 -= 48;
      }

      while (v85);
      v84 = v107;
    }

    (*(*v84 + 40))(v84);
  }

  return v7;
}