uint64_t createAnimationBlendTreeFromAssetData<re::Quaternion<float>>(unint64_t a1, void *a2)
{
  v5 = v87;
  v119 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v48 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0x7FFFFFFFLL;
  re::StringID::invalid(v53);
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v58, 0, sizeof(v58));
  v57 = 0;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v67 = 0x7FFFFFFFLL;
  v68 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v87[1] = 0;
  v87[0] = 0;
  v88 = 1;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  re::RigEnvironment::init(v87, a2);
  v46 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v47, a1 + 80, a2);
  v84 = 0;
  v6 = v49;
  v49 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v51 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v50;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v51[8]);
  v85 = 0;
  v9 = v69;
  if (v69[2])
  {
    a1 = -1;
    v10 = 1;
    v11 = &str_67;
    v2 = 8;
    while (1)
    {
      v12 = v49;
      if (v49 >= *(&v48 + 1))
      {
        v13 = v49 + 1;
        if (*(&v48 + 1) < v49 + 1)
        {
          if (v48)
          {
            if (*(&v48 + 1))
            {
              v14 = 2 * *(&v48 + 1);
            }

            else
            {
              v14 = 8;
            }

            if (v14 <= v13)
            {
              v15 = v49 + 1;
            }

            else
            {
              v15 = v14;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v15);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v13);
            ++v50;
          }
        }

        v12 = v49;
      }

      v16 = *v51 + 80 * v12;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 32) = 1;
      *(v16 + 56) = &str_67;
      *(v16 + 64) = 0;
      *(v16 + 72) = &str_67;
      ++v49;
      ++v50;
      a2 = v85;
      v17 = v69[2];
      if (v17 <= v85)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v51[8], (v69[4] + 88 * v85), &v85);
      ++v85;
      v9 = v69;
      if (v85 >= v69[2])
      {
        goto LABEL_20;
      }
    }

    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = v11;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

LABEL_20:
  if (v9[7])
  {
    v18 = 0;
    v11 = 0;
    while (1)
    {
      v5 = v9[9];
      v10 = &v5[v18];
      re::StringID::StringID(v81, &v5[v18 + 4]);
      v17 = v69[7];
      if (v17 <= v11)
      {
        goto LABEL_117;
      }

      re::StringID::StringID(&v85, (v69[9] + v18 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], (v10 + 80), v19 ^ (v19 >> 31), &v94);
      v20 = HIDWORD(v94);
      v21 = *&v51[24];
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v23 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], &v5[v18], v22 ^ (v22 >> 31), &v94);
      if (HIDWORD(v94) == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v21 + 32 * v20);
      v10 = a2[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_118;
      }

      v5 = (*&v51[24] + 32 * HIDWORD(v94));
      re::DynamicArray<unsigned long>::add((*v51 + 80 * v10 + 8), v5 + 3);
      v17 = v5[3];
      v10 = v49;
      if (v49 <= v17)
      {
        goto LABEL_119;
      }

      v24 = *v51;
      *(*v51 + 80 * v17) = a2[3];
      v17 = v5[3];
      if (v10 <= v17)
      {
        goto LABEL_120;
      }

      re::StringID::operator=((v24 + 80 * v17 + 48), &v85);
      v10 = v5[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_121;
      }

      v25 = re::StringID::operator=((*v51 + 80 * v10 + 64), v81);
      if (v85)
      {
        if (v85)
        {
        }
      }

      if (v81[0])
      {
        if (v81[0])
        {
        }
      }

      ++v11;
      v9 = v69;
      v18 += 20;
      if (v11 >= v69[7])
      {
        goto LABEL_43;
      }
    }

    if (v85)
    {
      if (v85)
      {
      }
    }

    if (v81[0])
    {
      if (v81[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v87;
  if (!v49)
  {
LABEL_83:
    re::DynamicString::format("A root node without a parent was not found.", &v94);
    goto LABEL_100;
  }

  a1 = 0;
  v11 = 0;
  v26 = 0;
  a2 = 0;
  v17 = -1;
  v27 = 32;
  v10 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_116;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v69[4] + v27 - 32));
    if (isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_122;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
          goto LABEL_95;
        }
      }

      v30 = *(*v51 + a1 + 24);
      if (v30 <= 1)
      {
        v40 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v30 != 2)
      {
        if (v68 == 1)
        {
          goto LABEL_85;
        }

        v26 = 1;
      }

      goto LABEL_72;
    }

    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_123;
    }

    v31 = (v69[4] + v27);
    if (re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v32 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70, v31, &v84);
      ++v84;
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_124;
      }

      if (*(*v51 + a1) >= v49)
      {
        v40 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v51 + a1 + 24))
      {
        v40 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_126;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
LABEL_95:
          v40 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v68 = 1;
      if (v26)
      {
LABEL_85:
        v40 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v26 = 0;
      goto LABEL_72;
    }

    v2 = v49;
    if (v49 <= a2)
    {
      goto LABEL_125;
    }

    if (*(*v51 + a1) >= v49)
    {
      v40 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v51 + a1 + 24))
    {
      break;
    }

    ++v11;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v27 += 88;
    if (a2 >= v2)
    {
      if (v17 != -1)
      {
        a1 = v69[2];
        if (a1 > v17)
        {
          v33 = v69[4];
          v34 = (*(*v47 + 32))(v47, 624, 8);
          v35 = re::Timeline::Timeline(v34, 44);
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          v36 = v35 + 80;
          *(v35 + 88) = 0u;
          *(v35 + 104) = 0;
          *(v35 + 112) = 0u;
          *(v35 + 128) = 0u;
          *(v35 + 144) = 0;
          *(v35 + 152) = 0u;
          *(v35 + 168) = 0u;
          *(v35 + 184) = 0;
          *(v35 + 192) = 0u;
          *(v35 + 208) = 0u;
          *(v35 + 224) = 0;
          *(v35 + 232) = 0u;
          *(v35 + 248) = 0u;
          *(v35 + 264) = 0;
          *(v35 + 528) = 0;
          *(v35 + 536) = 0;
          *(v35 + 568) = 0;
          *(v35 + 560) = 0;
          *(v35 + 544) = 0u;
          *(v35 + 616) = 0;
          *(v35 + 576) = 0u;
          *(v35 + 592) = 0u;
          *(v35 + 608) = 0;
          *(v35 + 488) = 0u;
          *(v35 + 504) = 0u;
          *(v35 + 520) = 0;
          *(v35 + 272) = 0u;
          *(v35 + 288) = 0u;
          *(v35 + 304) = 0u;
          *(v35 + 320) = 0u;
          *(v35 + 336) = 0u;
          *(v35 + 352) = 0u;
          *(v35 + 368) = 0u;
          *(v35 + 384) = 0u;
          *(v35 + 400) = 0;
          *(v35 + 440) = 0;
          *(v35 + 408) = 0u;
          *(v35 + 424) = 0u;
          *(v35 + 480) = 0;
          *(v35 + 448) = 0u;
          *(v35 + 464) = 0u;
          *v35 = &unk_1F5CC2DA0;
          re::FixedArray<unsigned long>::init<>((v35 + 304), v47, v84);
          re::FixedArray<unsigned long>::init<>((v34 + 328), v47, v84 + 1);
          re::FixedArray<unsigned long>::init<>((v34 + 352), v47, v84);
          *(v34 + 416) = v47;
          re::DynamicArray<re::StringID>::setCapacity((v34 + 416), v11);
          ++*(v34 + 440);
          v85 = 0;
          v86 = 0;
          if (v68 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v64[1], v47, v53, v87);
            re::AnimationBlendTreeBuilder<re::Quaternion<float>>::buildRig(v81, &v47, v34, v17, &v85);
            if (LOBYTE(v81[0]) != 1)
            {
              v41 = v83;
              v42 = v81[3];
              v43 = v82;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v64[1], *(v33 + 88 * v17 + 8), "output", "output", "", 0, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            v105 = 0;
            *&v104[2] = 0;
            v106 = 1;
            v109 = 0;
            v107 = 0;
            v108 = 0;
            v110 = 0;
            v113 = 0;
            v111 = 0;
            v112 = 0;
            v118 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0;
            v117 = 0;
            *&v102[16] = v87;
            v102[24] = 0;
            *v102 = v47;
            *&v102[8] = 0;
            re::RigGraphCompilation::init(&v104[2], v47);
            re::RigGraphSystem::buildFromDefinition(v47, v53, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v36, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 120, &v96 + 8);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 160, v99);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 200, v100);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 240, v101);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v101);
            re::DynamicArray<re::StringID>::deinit(v100);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v99);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v96 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v94);
            re::RigGraphCompilation::~RigGraphCompilation(&v104[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize(v34 + 416, v11);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v34 + 280), v47, v49);
            *(v34 + 376) = v47;
            re::DynamicArray<re::StringID>::setCapacity((v34 + 376), 0);
            ++*(v34 + 400);
            re::DynamicArray<re::StringID>::resize(v34 + 376, v49);
            if (!*(v34 + 288))
            {
LABEL_128:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 468;
              *&v102[18] = 2048;
              *&v102[20] = 0;
              v103 = 2048;
              *v104 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_129;
            }

            v37 = *(v34 + 296);
            *v37 = 1065353216;
            a1 = v49;
            if (v49 <= v17)
            {
LABEL_129:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 789;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 797;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v37 + 6) = *(*v51 + 80 * v17 + 24);
            a1 = v69[2];
            if (a1 <= v17)
            {
              goto LABEL_130;
            }

            *(v37 + 7) = re::StringID::operator==((v69[4] + 88 * v17 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v37 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v47, v34, v17, 1, &v85, &v86);
          }

          if (v75)
          {
            for (i = 0; i < v75; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v34, i, *(v77 + 8 * i));
            }
          }

          v39 = v69;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v34 + 456, v69);
          re::DynamicArray<re::RigGraphConnection>::operator=(v34 + 496, v39 + 5);
          *(v34 + 536) = *(v39 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v34 + 544, v39 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v34 + 584, v39 + 16);
          *(v34 + 12) = *(v46 + 12);
          *(v34 + 16) = *(v46 + 16);
          re::StringID::operator=((v34 + 24), (v46 + 24));
          re::DynamicString::operator=((v34 + 40), (v46 + 40));
          *(v34 + 72) = *(v46 + 72);
          goto LABEL_104;
        }

LABEL_127:
        v81[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v102 = 136315906;
        *&v102[4] = "operator[]";
        *&v102[12] = 1024;
        *&v102[14] = 797;
        *&v102[18] = 2048;
        *&v102[20] = v17;
        v103 = 2048;
        *v104 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_128;
      }

      goto LABEL_83;
    }
  }

  v40 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v41 = v95;
  v42 = v94;
  v43 = BYTE8(v94);
LABEL_101:
  v34 = 0;
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v41);
    v34 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v93[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v87);
  if (v87[0] && (v88 & 1) == 0)
  {
    (*(*v87[0] + 40))();
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v70);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v65);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v62[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v60[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v58[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v56 + 8);
  v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v54);
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  v53[0] = 0;
  v53[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v51[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v48);
  return v34;
}

uint64_t createAnimationBlendTreeFromAssetData<re::GenericSRT<float>>(unint64_t a1, void *a2)
{
  v5 = v87;
  v119 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v48 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0x7FFFFFFFLL;
  re::StringID::invalid(v53);
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v58, 0, sizeof(v58));
  v57 = 0;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v67 = 0x7FFFFFFFLL;
  v68 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v87[1] = 0;
  v87[0] = 0;
  v88 = 1;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  re::RigEnvironment::init(v87, a2);
  v46 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v47, a1 + 80, a2);
  v84 = 0;
  v6 = v49;
  v49 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v51 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v50;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v51[8]);
  v85 = 0;
  v9 = v69;
  if (v69[2])
  {
    a1 = -1;
    v10 = 1;
    v11 = &str_67;
    v2 = 8;
    while (1)
    {
      v12 = v49;
      if (v49 >= *(&v48 + 1))
      {
        v13 = v49 + 1;
        if (*(&v48 + 1) < v49 + 1)
        {
          if (v48)
          {
            if (*(&v48 + 1))
            {
              v14 = 2 * *(&v48 + 1);
            }

            else
            {
              v14 = 8;
            }

            if (v14 <= v13)
            {
              v15 = v49 + 1;
            }

            else
            {
              v15 = v14;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v15);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v13);
            ++v50;
          }
        }

        v12 = v49;
      }

      v16 = *v51 + 80 * v12;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 32) = 1;
      *(v16 + 56) = &str_67;
      *(v16 + 64) = 0;
      *(v16 + 72) = &str_67;
      ++v49;
      ++v50;
      a2 = v85;
      v17 = v69[2];
      if (v17 <= v85)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v51[8], (v69[4] + 88 * v85), &v85);
      ++v85;
      v9 = v69;
      if (v85 >= v69[2])
      {
        goto LABEL_20;
      }
    }

    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = v11;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

LABEL_20:
  if (v9[7])
  {
    v18 = 0;
    v11 = 0;
    while (1)
    {
      v5 = v9[9];
      v10 = &v5[v18];
      re::StringID::StringID(v81, &v5[v18 + 4]);
      v17 = v69[7];
      if (v17 <= v11)
      {
        goto LABEL_117;
      }

      re::StringID::StringID(&v85, (v69[9] + v18 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], (v10 + 80), v19 ^ (v19 >> 31), &v94);
      v20 = HIDWORD(v94);
      v21 = *&v51[24];
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v23 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], &v5[v18], v22 ^ (v22 >> 31), &v94);
      if (HIDWORD(v94) == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v21 + 32 * v20);
      v10 = a2[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_118;
      }

      v5 = (*&v51[24] + 32 * HIDWORD(v94));
      re::DynamicArray<unsigned long>::add((*v51 + 80 * v10 + 8), v5 + 3);
      v17 = v5[3];
      v10 = v49;
      if (v49 <= v17)
      {
        goto LABEL_119;
      }

      v24 = *v51;
      *(*v51 + 80 * v17) = a2[3];
      v17 = v5[3];
      if (v10 <= v17)
      {
        goto LABEL_120;
      }

      re::StringID::operator=((v24 + 80 * v17 + 48), &v85);
      v10 = v5[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_121;
      }

      v25 = re::StringID::operator=((*v51 + 80 * v10 + 64), v81);
      if (v85)
      {
        if (v85)
        {
        }
      }

      if (v81[0])
      {
        if (v81[0])
        {
        }
      }

      ++v11;
      v9 = v69;
      v18 += 20;
      if (v11 >= v69[7])
      {
        goto LABEL_43;
      }
    }

    if (v85)
    {
      if (v85)
      {
      }
    }

    if (v81[0])
    {
      if (v81[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v87;
  if (!v49)
  {
LABEL_83:
    re::DynamicString::format("A root node without a parent was not found.", &v94);
    goto LABEL_100;
  }

  a1 = 0;
  v11 = 0;
  v26 = 0;
  a2 = 0;
  v17 = -1;
  v27 = 32;
  v10 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_116;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v69[4] + v27 - 32));
    if (isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_122;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
          goto LABEL_95;
        }
      }

      v30 = *(*v51 + a1 + 24);
      if (v30 <= 1)
      {
        v40 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v30 != 2)
      {
        if (v68 == 1)
        {
          goto LABEL_85;
        }

        v26 = 1;
      }

      goto LABEL_72;
    }

    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_123;
    }

    v31 = (v69[4] + v27);
    if (re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v32 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70, v31, &v84);
      ++v84;
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_124;
      }

      if (*(*v51 + a1) >= v49)
      {
        v40 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v51 + a1 + 24))
      {
        v40 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_126;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
LABEL_95:
          v40 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v68 = 1;
      if (v26)
      {
LABEL_85:
        v40 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v26 = 0;
      goto LABEL_72;
    }

    v2 = v49;
    if (v49 <= a2)
    {
      goto LABEL_125;
    }

    if (*(*v51 + a1) >= v49)
    {
      v40 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v51 + a1 + 24))
    {
      break;
    }

    ++v11;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v27 += 88;
    if (a2 >= v2)
    {
      if (v17 != -1)
      {
        a1 = v69[2];
        if (a1 > v17)
        {
          v33 = v69[4];
          v34 = (*(*v47 + 32))(v47, 624, 8);
          v35 = re::Timeline::Timeline(v34, 45);
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          v36 = v35 + 80;
          *(v35 + 88) = 0u;
          *(v35 + 104) = 0;
          *(v35 + 112) = 0u;
          *(v35 + 128) = 0u;
          *(v35 + 144) = 0;
          *(v35 + 152) = 0u;
          *(v35 + 168) = 0u;
          *(v35 + 184) = 0;
          *(v35 + 192) = 0u;
          *(v35 + 208) = 0u;
          *(v35 + 224) = 0;
          *(v35 + 232) = 0u;
          *(v35 + 248) = 0u;
          *(v35 + 264) = 0;
          *(v35 + 528) = 0;
          *(v35 + 536) = 0;
          *(v35 + 568) = 0;
          *(v35 + 560) = 0;
          *(v35 + 544) = 0u;
          *(v35 + 616) = 0;
          *(v35 + 576) = 0u;
          *(v35 + 592) = 0u;
          *(v35 + 608) = 0;
          *(v35 + 488) = 0u;
          *(v35 + 504) = 0u;
          *(v35 + 520) = 0;
          *(v35 + 272) = 0u;
          *(v35 + 288) = 0u;
          *(v35 + 304) = 0u;
          *(v35 + 320) = 0u;
          *(v35 + 336) = 0u;
          *(v35 + 352) = 0u;
          *(v35 + 368) = 0u;
          *(v35 + 384) = 0u;
          *(v35 + 400) = 0;
          *(v35 + 440) = 0;
          *(v35 + 408) = 0u;
          *(v35 + 424) = 0u;
          *(v35 + 480) = 0;
          *(v35 + 448) = 0u;
          *(v35 + 464) = 0u;
          *v35 = &unk_1F5CC2F00;
          re::FixedArray<unsigned long>::init<>((v35 + 304), v47, v84);
          re::FixedArray<unsigned long>::init<>((v34 + 328), v47, v84 + 1);
          re::FixedArray<unsigned long>::init<>((v34 + 352), v47, v84);
          *(v34 + 416) = v47;
          re::DynamicArray<re::StringID>::setCapacity((v34 + 416), v11);
          ++*(v34 + 440);
          v85 = 0;
          v86 = 0;
          if (v68 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v64[1], v47, v53, v87);
            re::AnimationBlendTreeBuilder<re::GenericSRT<float>>::buildRig(v81, &v47, v34, v17, &v85);
            if (LOBYTE(v81[0]) != 1)
            {
              v41 = v83;
              v42 = v81[3];
              v43 = v82;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v64[1], *(v33 + 88 * v17 + 8), "output", "output", "", 0, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            v105 = 0;
            *&v104[2] = 0;
            v106 = 1;
            v109 = 0;
            v107 = 0;
            v108 = 0;
            v110 = 0;
            v113 = 0;
            v111 = 0;
            v112 = 0;
            v118 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0;
            v117 = 0;
            *&v102[16] = v87;
            v102[24] = 0;
            *v102 = v47;
            *&v102[8] = 0;
            re::RigGraphCompilation::init(&v104[2], v47);
            re::RigGraphSystem::buildFromDefinition(v47, v53, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v36, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 120, &v96 + 8);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 160, v99);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 200, v100);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 240, v101);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v101);
            re::DynamicArray<re::StringID>::deinit(v100);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v99);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v96 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v94);
            re::RigGraphCompilation::~RigGraphCompilation(&v104[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize(v34 + 416, v11);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v34 + 280), v47, v49);
            *(v34 + 376) = v47;
            re::DynamicArray<re::StringID>::setCapacity((v34 + 376), 0);
            ++*(v34 + 400);
            re::DynamicArray<re::StringID>::resize(v34 + 376, v49);
            if (!*(v34 + 288))
            {
LABEL_128:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 468;
              *&v102[18] = 2048;
              *&v102[20] = 0;
              v103 = 2048;
              *v104 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_129;
            }

            v37 = *(v34 + 296);
            *v37 = 1065353216;
            a1 = v49;
            if (v49 <= v17)
            {
LABEL_129:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 789;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 797;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v37 + 6) = *(*v51 + 80 * v17 + 24);
            a1 = v69[2];
            if (a1 <= v17)
            {
              goto LABEL_130;
            }

            *(v37 + 7) = re::StringID::operator==((v69[4] + 88 * v17 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v37 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v47, v34, v17, 1, &v85, &v86);
          }

          if (v75)
          {
            for (i = 0; i < v75; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v34, i, *(v77 + 8 * i));
            }
          }

          v39 = v69;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v34 + 456, v69);
          re::DynamicArray<re::RigGraphConnection>::operator=(v34 + 496, v39 + 5);
          *(v34 + 536) = *(v39 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v34 + 544, v39 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v34 + 584, v39 + 16);
          *(v34 + 12) = *(v46 + 12);
          *(v34 + 16) = *(v46 + 16);
          re::StringID::operator=((v34 + 24), (v46 + 24));
          re::DynamicString::operator=((v34 + 40), (v46 + 40));
          *(v34 + 72) = *(v46 + 72);
          goto LABEL_104;
        }

LABEL_127:
        v81[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v102 = 136315906;
        *&v102[4] = "operator[]";
        *&v102[12] = 1024;
        *&v102[14] = 797;
        *&v102[18] = 2048;
        *&v102[20] = v17;
        v103 = 2048;
        *v104 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_128;
      }

      goto LABEL_83;
    }
  }

  v40 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v41 = v95;
  v42 = v94;
  v43 = BYTE8(v94);
LABEL_101:
  v34 = 0;
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v41);
    v34 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v93[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v87);
  if (v87[0] && (v88 & 1) == 0)
  {
    (*(*v87[0] + 40))();
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v70);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v65);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v62[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v60[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v58[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v56 + 8);
  v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v54);
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  v53[0] = 0;
  v53[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v51[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v48);
  return v34;
}

uint64_t createAnimationBlendTreeFromAssetData<re::SkeletalPose>(unint64_t a1, void *a2)
{
  v5 = v87;
  v119 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v48 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0x7FFFFFFFLL;
  re::StringID::invalid(v53);
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v58, 0, sizeof(v58));
  v57 = 0;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v67 = 0x7FFFFFFFLL;
  v68 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v87[1] = 0;
  v87[0] = 0;
  v88 = 1;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  re::RigEnvironment::init(v87, a2);
  v46 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v47, a1 + 80, a2);
  v84 = 0;
  v6 = v49;
  v49 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v51 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v50;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v51[8]);
  v85 = 0;
  v9 = v69;
  if (v69[2])
  {
    a1 = -1;
    v10 = 1;
    v11 = &str_67;
    v2 = 8;
    while (1)
    {
      v12 = v49;
      if (v49 >= *(&v48 + 1))
      {
        v13 = v49 + 1;
        if (*(&v48 + 1) < v49 + 1)
        {
          if (v48)
          {
            if (*(&v48 + 1))
            {
              v14 = 2 * *(&v48 + 1);
            }

            else
            {
              v14 = 8;
            }

            if (v14 <= v13)
            {
              v15 = v49 + 1;
            }

            else
            {
              v15 = v14;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v15);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v13);
            ++v50;
          }
        }

        v12 = v49;
      }

      v16 = *v51 + 80 * v12;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 32) = 1;
      *(v16 + 56) = &str_67;
      *(v16 + 64) = 0;
      *(v16 + 72) = &str_67;
      ++v49;
      ++v50;
      a2 = v85;
      v17 = v69[2];
      if (v17 <= v85)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v51[8], (v69[4] + 88 * v85), &v85);
      ++v85;
      v9 = v69;
      if (v85 >= v69[2])
      {
        goto LABEL_20;
      }
    }

    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = v11;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

LABEL_20:
  if (v9[7])
  {
    v18 = 0;
    v11 = 0;
    while (1)
    {
      v5 = v9[9];
      v10 = &v5[v18];
      re::StringID::StringID(v81, &v5[v18 + 4]);
      v17 = v69[7];
      if (v17 <= v11)
      {
        goto LABEL_117;
      }

      re::StringID::StringID(&v85, (v69[9] + v18 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], (v10 + 80), v19 ^ (v19 >> 31), &v94);
      v20 = HIDWORD(v94);
      v21 = *&v51[24];
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v23 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], &v5[v18], v22 ^ (v22 >> 31), &v94);
      if (HIDWORD(v94) == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v21 + 32 * v20);
      v10 = a2[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_118;
      }

      v5 = (*&v51[24] + 32 * HIDWORD(v94));
      re::DynamicArray<unsigned long>::add((*v51 + 80 * v10 + 8), v5 + 3);
      v17 = v5[3];
      v10 = v49;
      if (v49 <= v17)
      {
        goto LABEL_119;
      }

      v24 = *v51;
      *(*v51 + 80 * v17) = a2[3];
      v17 = v5[3];
      if (v10 <= v17)
      {
        goto LABEL_120;
      }

      re::StringID::operator=((v24 + 80 * v17 + 48), &v85);
      v10 = v5[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_121;
      }

      v25 = re::StringID::operator=((*v51 + 80 * v10 + 64), v81);
      if (v85)
      {
        if (v85)
        {
        }
      }

      if (v81[0])
      {
        if (v81[0])
        {
        }
      }

      ++v11;
      v9 = v69;
      v18 += 20;
      if (v11 >= v69[7])
      {
        goto LABEL_43;
      }
    }

    if (v85)
    {
      if (v85)
      {
      }
    }

    if (v81[0])
    {
      if (v81[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v87;
  if (!v49)
  {
LABEL_83:
    re::DynamicString::format("A root node without a parent was not found.", &v94);
    goto LABEL_100;
  }

  a1 = 0;
  v11 = 0;
  v26 = 0;
  a2 = 0;
  v17 = -1;
  v27 = 32;
  v10 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_116;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v69[4] + v27 - 32));
    if (isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_122;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
          goto LABEL_95;
        }
      }

      v30 = *(*v51 + a1 + 24);
      if (v30 <= 1)
      {
        v40 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v30 != 2)
      {
        if (v68 == 1)
        {
          goto LABEL_85;
        }

        v26 = 1;
      }

      goto LABEL_72;
    }

    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_123;
    }

    v31 = (v69[4] + v27);
    if (re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v32 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70, v31, &v84);
      ++v84;
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_124;
      }

      if (*(*v51 + a1) >= v49)
      {
        v40 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v51 + a1 + 24))
      {
        v40 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_126;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
LABEL_95:
          v40 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v68 = 1;
      if (v26)
      {
LABEL_85:
        v40 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v26 = 0;
      goto LABEL_72;
    }

    v2 = v49;
    if (v49 <= a2)
    {
      goto LABEL_125;
    }

    if (*(*v51 + a1) >= v49)
    {
      v40 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v51 + a1 + 24))
    {
      break;
    }

    ++v11;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v27 += 88;
    if (a2 >= v2)
    {
      if (v17 != -1)
      {
        a1 = v69[2];
        if (a1 > v17)
        {
          v33 = v69[4];
          v34 = (*(*v47 + 32))(v47, 624, 8);
          v35 = re::Timeline::Timeline(v34, 46);
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          v36 = v35 + 80;
          *(v35 + 88) = 0u;
          *(v35 + 104) = 0;
          *(v35 + 112) = 0u;
          *(v35 + 128) = 0u;
          *(v35 + 144) = 0;
          *(v35 + 152) = 0u;
          *(v35 + 168) = 0u;
          *(v35 + 184) = 0;
          *(v35 + 192) = 0u;
          *(v35 + 208) = 0u;
          *(v35 + 224) = 0;
          *(v35 + 232) = 0u;
          *(v35 + 248) = 0u;
          *(v35 + 264) = 0;
          *(v35 + 528) = 0;
          *(v35 + 536) = 0;
          *(v35 + 568) = 0;
          *(v35 + 560) = 0;
          *(v35 + 544) = 0u;
          *(v35 + 616) = 0;
          *(v35 + 576) = 0u;
          *(v35 + 592) = 0u;
          *(v35 + 608) = 0;
          *(v35 + 488) = 0u;
          *(v35 + 504) = 0u;
          *(v35 + 520) = 0;
          *(v35 + 272) = 0u;
          *(v35 + 288) = 0u;
          *(v35 + 304) = 0u;
          *(v35 + 320) = 0u;
          *(v35 + 336) = 0u;
          *(v35 + 352) = 0u;
          *(v35 + 368) = 0u;
          *(v35 + 384) = 0u;
          *(v35 + 400) = 0;
          *(v35 + 440) = 0;
          *(v35 + 408) = 0u;
          *(v35 + 424) = 0u;
          *(v35 + 480) = 0;
          *(v35 + 448) = 0u;
          *(v35 + 464) = 0u;
          *v35 = &unk_1F5CC3060;
          re::FixedArray<unsigned long>::init<>((v35 + 304), v47, v84);
          re::FixedArray<unsigned long>::init<>((v34 + 328), v47, v84 + 1);
          re::FixedArray<unsigned long>::init<>((v34 + 352), v47, v84);
          *(v34 + 416) = v47;
          re::DynamicArray<re::StringID>::setCapacity((v34 + 416), v11);
          ++*(v34 + 440);
          v85 = 0;
          v86 = 0;
          if (v68 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v64[1], v47, v53, v87);
            re::AnimationBlendTreeBuilder<re::SkeletalPose>::buildRig(v81, &v47, v34, v17, &v85);
            if (LOBYTE(v81[0]) != 1)
            {
              v41 = v83;
              v42 = v81[3];
              v43 = v82;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v64[1], *(v33 + 88 * v17 + 8), "output", "output", "", 0, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            v105 = 0;
            *&v104[2] = 0;
            v106 = 1;
            v109 = 0;
            v107 = 0;
            v108 = 0;
            v110 = 0;
            v113 = 0;
            v111 = 0;
            v112 = 0;
            v118 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0;
            v117 = 0;
            *&v102[16] = v87;
            v102[24] = 0;
            *v102 = v47;
            *&v102[8] = 0;
            re::RigGraphCompilation::init(&v104[2], v47);
            re::RigGraphSystem::buildFromDefinition(v47, v53, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v36, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 120, &v96 + 8);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 160, v99);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 200, v100);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 240, v101);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v101);
            re::DynamicArray<re::StringID>::deinit(v100);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v99);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v96 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v94);
            re::RigGraphCompilation::~RigGraphCompilation(&v104[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize(v34 + 416, v11);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v34 + 280), v47, v49);
            *(v34 + 376) = v47;
            re::DynamicArray<re::StringID>::setCapacity((v34 + 376), 0);
            ++*(v34 + 400);
            re::DynamicArray<re::StringID>::resize(v34 + 376, v49);
            if (!*(v34 + 288))
            {
LABEL_128:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 468;
              *&v102[18] = 2048;
              *&v102[20] = 0;
              v103 = 2048;
              *v104 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_129;
            }

            v37 = *(v34 + 296);
            *v37 = 1065353216;
            a1 = v49;
            if (v49 <= v17)
            {
LABEL_129:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 789;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 797;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v37 + 6) = *(*v51 + 80 * v17 + 24);
            a1 = v69[2];
            if (a1 <= v17)
            {
              goto LABEL_130;
            }

            *(v37 + 7) = re::StringID::operator==((v69[4] + 88 * v17 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v37 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v47, v34, v17, 1, &v85, &v86);
          }

          if (v75)
          {
            for (i = 0; i < v75; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v34, i, *(v77 + 8 * i));
            }
          }

          v39 = v69;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v34 + 456, v69);
          re::DynamicArray<re::RigGraphConnection>::operator=(v34 + 496, v39 + 5);
          *(v34 + 536) = *(v39 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v34 + 544, v39 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v34 + 584, v39 + 16);
          *(v34 + 12) = *(v46 + 12);
          *(v34 + 16) = *(v46 + 16);
          re::StringID::operator=((v34 + 24), (v46 + 24));
          re::DynamicString::operator=((v34 + 40), (v46 + 40));
          *(v34 + 72) = *(v46 + 72);
          goto LABEL_104;
        }

LABEL_127:
        v81[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v102 = 136315906;
        *&v102[4] = "operator[]";
        *&v102[12] = 1024;
        *&v102[14] = 797;
        *&v102[18] = 2048;
        *&v102[20] = v17;
        v103 = 2048;
        *v104 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_128;
      }

      goto LABEL_83;
    }
  }

  v40 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v41 = v95;
  v42 = v94;
  v43 = BYTE8(v94);
LABEL_101:
  v34 = 0;
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v41);
    v34 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v93[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v87);
  if (v87[0] && (v88 & 1) == 0)
  {
    (*(*v87[0] + 40))();
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v70);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v65);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v62[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v60[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v58[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v56 + 8);
  v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v54);
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  v53[0] = 0;
  v53[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v51[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v48);
  return v34;
}

uint64_t re::Allocator::create<re::EventTimeline>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 88, 8);
  result = re::Timeline::Timeline(v1, 48);
  *(result + 72) = 0;
  *result = &unk_1F5CB1130;
  *(result + 80) = 0;
  return result;
}

uint64_t re::Allocator::create<re::BlendShapeWeightsAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 216, 8);
  result = re::Timeline::Timeline(v1, 50);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 128) = 0;
  *(result + 168) = 0;
  *(result + 208) = 0;
  *result = &unk_1F5CC31C0;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::BlendShapeWeightsAnimationAssetData,re::BlendShapeWeightsAnimation>(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v33 = 0;
  v30[1] = 0;
  v31 = 0;
  v32 = 0;
  v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(v30, 3uLL);
  ++v32;
  if (*(a1 + 88) == 1)
  {
    re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v36, a1 + 192);
    v6 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(v30, &v36);
    if (v36)
    {
    }

    v7 = v33;
    memset(v35, 0, 32);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v35[24], *v7);
    re::Optional<re::BlendShapeWeights>::Optional(&v36, v35);
    re::Optional<re::BlendShapeWeights>::operator=(a2 + 88, &v36);
    if (v36 == 1)
    {
      re::BlendShapeWeights::~BlendShapeWeights((&v36 + 8));
    }

    re::BlendShapeWeights::~BlendShapeWeights(v35);
    v5 = re::FixedArray<float>::operator=((a2 + 96), a1 + 96);
  }

  if (*(a1 + 120) == 1)
  {
    v8 = v31;
    if (!v31)
    {
      goto LABEL_19;
    }

    v9 = 0;
    v10 = v33;
    v11 = *(a1 + 248);
    while (1)
    {
      v12 = v10[v9];
      if (*(v12 + 32) == v11)
      {
        if (!v11)
        {
LABEL_18:
          if (v9 >= v8)
          {
LABEL_19:
            re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v36, a1 + 232);
            v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(v30, &v36);
            if (v36)
            {
            }

            v8 = v31;
            v9 = v31 - 1;
          }

          if (v8 > v9)
          {
            v16 = v33;
            memset(v35, 0, 32);
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v35[24], v16[v9]);
            re::Optional<re::BlendShapeWeights>::Optional(&v36, v35);
            re::Optional<re::BlendShapeWeights>::operator=(a2 + 128, &v36);
            if (v36 == 1)
            {
              re::BlendShapeWeights::~BlendShapeWeights((&v36 + 8));
            }

            re::BlendShapeWeights::~BlendShapeWeights(v35);
            v5 = re::FixedArray<float>::operator=((a2 + 136), a1 + 128);
            break;
          }

          v34 = 0;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v35 = 136315906;
          *&v35[4] = "operator[]";
          *&v35[12] = 1024;
          *&v35[14] = 789;
          *&v35[18] = 2048;
          *&v35[20] = v9;
          *&v35[28] = 2048;
          *&v35[30] = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_58:
          v34 = 0;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v35 = 136315906;
          *&v35[4] = "operator[]";
          *&v35[12] = 1024;
          *&v35[14] = 789;
          *&v35[18] = 2048;
          *&v35[20] = v9;
          *&v35[28] = 2048;
          *&v35[30] = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v13 = *(v12 + 40);
        v14 = *(a1 + 264);
        v15 = 16 * v11;
        while (1)
        {
          v5 = re::StringID::operator==(v13, v14);
          if (!v5)
          {
            break;
          }

          v13 += 2;
          v14 += 2;
          v15 -= 16;
          if (!v15)
          {
            goto LABEL_18;
          }
        }
      }

      if (++v9 == v8)
      {
        goto LABEL_19;
      }
    }
  }

  if (*(a1 + 152) != 1)
  {
    goto LABEL_45;
  }

  v8 = v31;
  if (!v31)
  {
    goto LABEL_38;
  }

  v9 = 0;
  v17 = v33;
  v18 = *(a1 + 288);
  while (1)
  {
    v19 = v17[v9];
    if (*(v19 + 32) == v18)
    {
      break;
    }

LABEL_35:
    if (++v9 == v8)
    {
      goto LABEL_38;
    }
  }

  if (v18)
  {
    v20 = *(v19 + 40);
    v21 = *(a1 + 304);
    v22 = 16 * v18;
    do
    {
      v5 = re::StringID::operator==(v20, v21);
      if (!v5)
      {
        goto LABEL_35;
      }

      v20 += 2;
      v21 += 2;
      v22 -= 16;
    }

    while (v22);
  }

  if (v9 >= v8)
  {
LABEL_38:
    re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v36, a1 + 272);
    v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(v30, &v36);
    if (v36)
    {
    }

    v8 = v31;
    v9 = v31 - 1;
  }

  if (v8 <= v9)
  {
    goto LABEL_58;
  }

  v23 = v33;
  memset(v35, 0, 32);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v35[24], v23[v9]);
  re::Optional<re::BlendShapeWeights>::Optional(&v36, v35);
  re::Optional<re::BlendShapeWeights>::operator=(a2 + 168, &v36);
  if (v36 == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((&v36 + 8));
  }

  re::BlendShapeWeights::~BlendShapeWeights(v35);
  v5 = re::FixedArray<float>::operator=((a2 + 176), a1 + 160);
LABEL_45:
  v24 = v30[0];
  if (v30[0])
  {
    v25 = v33;
    if (v33)
    {
      if (v31)
      {
        v26 = 8 * v31;
        v27 = v33;
        do
        {
          if (*v27)
          {

            *v27 = 0;
          }

          ++v27;
          v26 -= 8;
        }

        while (v26);
      }

      v5 = (*(*v24 + 40))(v24, v25);
    }
  }

  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v28 = *(a1 + 184);
  if (v28)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 208) = result;
  return result;
}

double re::Allocator::create<re::BlendShapeWeightsSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 59);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC3270;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::BlendShapeWeightsSampledAnimationAssetData,re::BlendShapeWeightsSampledAnimation>(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v11, a1 + 128);
  v5 = *(a1 + 104);
  if (*(a1 + 104))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 96);
      if (v9 <= v8)
      {
        break;
      }

      re::BlendShapeWeights::init((*(a2 + 104) + v6), &v11);
      v9 = *(a1 + 104);
      if (v9 <= v8)
      {
        goto LABEL_11;
      }

      v9 = *(a2 + 96);
      if (v9 <= v8)
      {
        goto LABEL_12;
      }

      re::FixedArray<float>::operator=((*(a2 + 104) + v6), *(a1 + 120) + v7);
      ++v8;
      v7 += 24;
      v6 += 32;
      if (v8 >= *(a1 + 104))
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 468;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 797;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 468;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  if (v11)
  {
  }

  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

uint64_t re::Allocator::create<re::BlendShapeWeightsAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 60);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC3320;
  return result;
}

double re::Allocator::create<re::BlendShapeWeightsKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 61);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC3480;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::BlendShapeWeightsKeyframeAnimationAssetData,re::BlendShapeWeightsKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(&v12, a1 + 160);
  v5 = *(a1 + 136);
  if (*(a1 + 136))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 112);
      if (v9 <= v8)
      {
        break;
      }

      re::BlendShapeWeights::init((*(a2 + 120) + v6), &v12);
      v9 = *(a1 + 136);
      if (v9 <= v8)
      {
        goto LABEL_11;
      }

      v9 = *(a2 + 112);
      if (v9 <= v8)
      {
        goto LABEL_12;
      }

      re::FixedArray<float>::operator=((*(a2 + 120) + v6), *(a1 + 152) + v7);
      ++v8;
      v7 += 24;
      v6 += 32;
      if (v8 >= *(a1 + 136))
      {
        goto LABEL_7;
      }
    }

    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 468;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 468;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  if (v12)
  {
  }

  *(a2 + 72) = *(a1 + 72);
  v10 = *(a1 + 96);
  *&v22 = *(a1 + 112);
  *(&v22 + 1) = v10;
  return re::FixedArray<int>::operator=((a2 + 80), &v22);
}

uint64_t re::internal::registerAndResolveTimelineDependencies(re::internal *this, const re::TimelineAssetData *a2, re::Timeline *a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2) - 1;
  result = 0;
  switch(v3)
  {
    case 0:
      v71 = *(this + 10);
      if (v71)
      {
        v72 = atomic_load((v71 + 896));
        if (v72 == 3)
        {
          return 2;
        }
      }

      re::AssetHandle::AssetHandle(v106, (this + 72));
      re::AssetHandle::~AssetHandle(v106);
      v9 = *(a2 + 9);
      return v9 == 0;
    case 1:
      v58 = *(a2 + 10);
      if (!v58)
      {
        return 0;
      }

      v11 = 0;
      v59 = *(a2 + 11);
      v60 = 1;
      for (i = 8; ; i += 24)
      {
        if (!*(v59 + 8 * v11))
        {
          v62 = *(this + 11);
          if (v62 <= v11)
          {
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v84 = v62;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 797;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v84;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_164:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v85 = v62;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 797;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v85;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_165:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v86 = v66;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v86;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_166:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v87 = v58;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v87;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_167:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v88 = v15;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v88;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_168:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v89 = v19;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v89;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_169:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v90 = v23;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v90;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_170:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v91 = v36;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v91;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_171:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v92 = v40;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v92;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_172:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v93 = v70;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v93;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_173:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v94 = v76;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v94;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_174:
            v98 = 0;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            *v106 = 0u;
            v95 = v80;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v99 = 136315906;
            *&v99[4] = "operator[]";
            v100 = 1024;
            v101 = 468;
            v102 = 2048;
            v103 = v11;
            v104 = 2048;
            v105 = v95;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v63 = *(*(this + 13) + i);
          if (v63)
          {
            v64 = atomic_load((v63 + 896));
            if (v64 == 3)
            {
              return 2;
            }

            v62 = *(this + 11);
          }

          if (v62 <= v11)
          {
            goto LABEL_164;
          }

          re::AssetHandle::AssetHandle(&v96, (*(this + 13) + i - 8));
          v66 = *(a2 + 10);
          if (v66 <= v11)
          {
            goto LABEL_165;
          }

          *(*(a2 + 11) + 8 * v11) = Timeline;
          re::AssetHandle::~AssetHandle(&v96);
          v58 = *(a2 + 10);
          if (v58 <= v11)
          {
            goto LABEL_166;
          }

          v59 = *(a2 + 11);
          v60 &= *(v59 + 8 * v11) != 0;
        }

        if (++v11 >= v58)
        {
          return (v60 & 1) == 0;
        }
      }

    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 59:
      v7 = *(this + 11);
      if (v7)
      {
        v8 = atomic_load((v7 + 896));
        if (v8 == 3)
        {
          return 2;
        }
      }

      re::AssetHandle::AssetHandle(v106, (this + 80));
      re::AssetHandle::~AssetHandle(v106);
      v9 = *(a2 + 10);
      return v9 == 0;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 36:
    case 37:
    case 47:
    case 49:
    case 58:
    case 60:
      return result;
    case 17:
      v50 = *(this + 25);
      if (!v50)
      {
        goto LABEL_102;
      }

      v51 = atomic_load((v50 + 896));
      if (v51 == 3)
      {
        return 2;
      }

      v52 = *(this + 25);
      if (!v52 || (v53 = atomic_load((v52 + 896)), v53 != 2))
      {
        v81 = (this + 192);
        goto LABEL_157;
      }

      v54 = *(this + 25);
      if (!v54)
      {
        goto LABEL_102;
      }

      v55 = *(v54 + 280);
      if (v55 == re::SkeletonAsset::assetType(0))
      {
        v56 = re::AssetHandle::blockUntilLoaded<re::SkeletonAsset>((this + 192));
        v106[0] = 0;
        if (*(a2 + 88) == 1)
        {
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v106, *(a2 + 22));
          re::SkeletalPoseJointDefinition::setSkeleton(v106[0], (v56 + 88));
        }

        *v99 = 0;
        if (*(a2 + 184) == 1)
        {
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v99, *(a2 + 34));
          if (*v99 != v106[0])
          {
            re::SkeletalPoseJointDefinition::setSkeleton(*v99, (v56 + 88));
          }
        }

        v96 = 0;
        if (*(a2 + 280) == 1)
        {
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v96, *(a2 + 46));
          v57 = v96;
          if (v96 != v106[0] && v96 != *v99)
          {
            re::SkeletalPoseJointDefinition::setSkeleton(v96, (v56 + 88));
            v57 = v96;
          }

          if (v57)
          {
          }
        }

        if (*v99)
        {
        }

        if (v106[0])
        {
          v49 = v106[0] + 8;
          goto LABEL_101;
        }
      }

      return 0;
    case 25:
      v41 = *(this + 21);
      if (!v41)
      {
        goto LABEL_102;
      }

      v42 = atomic_load((v41 + 896));
      if (v42 == 3)
      {
        return 2;
      }

      v43 = *(this + 21);
      if (!v43 || (v44 = atomic_load((v43 + 896)), v44 != 2))
      {
        v81 = (this + 160);
        goto LABEL_157;
      }

      v45 = *(this + 21);
      if (!v45)
      {
        goto LABEL_102;
      }

      v46 = *(v45 + 280);
      if (v46 != re::SkeletonAsset::assetType(0) || !*(a2 + 14))
      {
        return 0;
      }

      v30 = *(*(a2 + 15) + 80);
      if (v30)
      {
        v47 = (v30 + 8);
        v32 = (this + 160);
        goto LABEL_79;
      }

      v82 = (this + 160);
      goto LABEL_160;
    case 33:
      v24 = *(this + 17);
      if (!v24)
      {
        goto LABEL_102;
      }

      v25 = atomic_load((v24 + 896));
      if (v25 == 3)
      {
        return 2;
      }

      v26 = *(this + 17);
      if (v26 && (v27 = atomic_load((v26 + 896)), v27 == 2))
      {
        v28 = *(this + 17);
        if (v28)
        {
          v29 = *(v28 + 280);
          if (v29 == re::SkeletonAsset::assetType(0) && *(a2 + 12))
          {
            v30 = *(*(a2 + 13) + 80);
            if (v30)
            {
              v31 = (v30 + 8);
              v32 = (this + 128);
LABEL_79:
              v48 = re::AssetHandle::blockUntilLoaded<re::SkeletonAsset>(v32);
              re::SkeletalPoseJointDefinition::setSkeleton(v30, (v48 + 88));
              v49 = (v30 + 8);
LABEL_101:
            }

            else
            {
              v82 = (this + 128);
LABEL_160:
              v83 = re::AssetHandle::blockUntilLoaded<re::SkeletonAsset>(v82);
              re::SkeletalPoseJointDefinition::setSkeleton(0, (v83 + 88));
            }
          }
        }

        else
        {
LABEL_102:
          re::SkeletonAsset::assetType(0);
        }

        return 0;
      }

      else
      {
        v81 = (this + 128);
LABEL_157:
        re::AssetHandle::loadAsync(v81);
        return 1;
      }

    case 38:
      if (!*(this + 33))
      {
        return 0;
      }

      v37 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v96, (*(this + 35) + v37));
        if (!v97)
        {
          goto LABEL_152;
        }

        v38 = atomic_load((v97 + 896));
        if (v38 == 3)
        {
          goto LABEL_152;
        }

        v39 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v96);
        if (v39)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v39 + 16));
          v40 = *(a2 + 39);
          if (v40 <= v11)
          {
            goto LABEL_171;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v96);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v96);
        ++v11;
        v37 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 39:
      if (!*(this + 33))
      {
        return 0;
      }

      v73 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v96, (*(this + 35) + v73));
        if (!v97)
        {
          goto LABEL_152;
        }

        v74 = atomic_load((v97 + 896));
        if (v74 == 3)
        {
          goto LABEL_152;
        }

        v75 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v96);
        if (v75)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v75 + 16));
          v76 = *(a2 + 39);
          if (v76 <= v11)
          {
            goto LABEL_173;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v96);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v96);
        ++v11;
        v73 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 40:
      if (!*(this + 33))
      {
        return 0;
      }

      v16 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v96, (*(this + 35) + v16));
        if (!v97)
        {
          goto LABEL_152;
        }

        v17 = atomic_load((v97 + 896));
        if (v17 == 3)
        {
          goto LABEL_152;
        }

        v18 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v96);
        if (v18)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v18 + 16));
          v19 = *(a2 + 39);
          if (v19 <= v11)
          {
            goto LABEL_168;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v96);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v96);
        ++v11;
        v16 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 41:
      if (!*(this + 33))
      {
        return 0;
      }

      v33 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v96, (*(this + 35) + v33));
        if (!v97)
        {
          goto LABEL_152;
        }

        v34 = atomic_load((v97 + 896));
        if (v34 == 3)
        {
          goto LABEL_152;
        }

        v35 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v96);
        if (v35)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v35 + 16));
          v36 = *(a2 + 39);
          if (v36 <= v11)
          {
            goto LABEL_170;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v96);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v96);
        ++v11;
        v33 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 42:
      if (!*(this + 33))
      {
        return 0;
      }

      v77 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v96, (*(this + 35) + v77));
        if (!v97)
        {
          goto LABEL_152;
        }

        v78 = atomic_load((v97 + 896));
        if (v78 == 3)
        {
          goto LABEL_152;
        }

        v79 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v96);
        if (v79)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v79 + 16));
          v80 = *(a2 + 39);
          if (v80 <= v11)
          {
            goto LABEL_174;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v96);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v96);
        ++v11;
        v77 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 43:
      if (!*(this + 33))
      {
        return 0;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v96, (*(this + 35) + v10));
        if (!v97)
        {
          break;
        }

        v13 = atomic_load((v97 + 896));
        if (v13 == 3)
        {
          break;
        }

        v14 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v96);
        if (!v14)
        {
          re::AssetHandle::loadAsync(&v96);
          v12 = 1;
          goto LABEL_15;
        }

        re::AnimationBlendTree<float>::addClip(a2, v11, *(v14 + 16));
        v15 = *(a2 + 39);
        if (v15 <= v11)
        {
          goto LABEL_167;
        }

        if (*(*(a2 + 40) + 8 * v11))
        {
LABEL_15:
          re::AssetHandle::~AssetHandle(&v96);
          ++v11;
          v10 += 24;
          if (v11 >= *(this + 33))
          {
            return v12 & 1;
          }

          continue;
        }

        break;
      }

LABEL_152:
      re::AssetHandle::~AssetHandle(&v96);
      return 2;
    case 44:
      if (!*(this + 33))
      {
        return 0;
      }

      v20 = 0;
      v11 = 0;
      v12 = 0;
      while (2)
      {
        re::AssetHandle::AssetHandle(&v96, (*(this + 35) + v20));
        if (!v97)
        {
          goto LABEL_152;
        }

        v21 = atomic_load((v97 + 896));
        if (v21 == 3)
        {
          goto LABEL_152;
        }

        v22 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v96);
        if (v22)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v22 + 16));
          v23 = *(a2 + 39);
          if (v23 <= v11)
          {
            goto LABEL_169;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v96);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v96);
        ++v11;
        v20 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }

        continue;
      }

    case 45:
      if (!*(this + 33))
      {
        return 0;
      }

      v67 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        re::AssetHandle::AssetHandle(&v96, (*(this + 35) + v67));
        if (!v97)
        {
          goto LABEL_152;
        }

        v68 = atomic_load((v97 + 896));
        if (v68 == 3)
        {
          goto LABEL_152;
        }

        v69 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v96);
        if (v69)
        {
          re::AnimationBlendTree<float>::addClip(a2, v11, *(v69 + 16));
          v70 = *(a2 + 39);
          if (v70 <= v11)
          {
            goto LABEL_172;
          }

          if (!*(*(a2 + 40) + 8 * v11))
          {
            goto LABEL_152;
          }
        }

        else
        {
          re::AssetHandle::loadAsync(&v96);
          v12 = 1;
        }

        re::AssetHandle::~AssetHandle(&v96);
        ++v11;
        v67 += 24;
        if (v11 >= *(this + 33))
        {
          return v12 & 1;
        }
      }

    default:
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected timeline type.", "!Unreachable code", "registerAndResolveTimelineDependencies", 2246);
      result = _os_crash();
      __break(1u);
      return result;
  }
}

uint64_t re::internal::destroy(uint64_t this, re::Timeline *a2, Allocator *a3)
{
  if (!this)
  {
    return this;
  }

  v4 = this;
  v5 = *(this + 8);
  if (v5 <= 14)
  {
    if (v5 > 12)
    {
      if (v5 != 13)
      {
LABEL_15:
        v6 = *(this + 192);
        if (!v6)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (v5 == 11)
      {
        v6 = *(this + 112);
        if (!v6)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (v5 != 12)
      {
        goto LABEL_17;
      }
    }

    v6 = *(this + 136);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v5 <= 16)
  {
    goto LABEL_15;
  }

  switch(v5)
  {
    case 17:
      v6 = *(this + 288);
      if (!v6)
      {
        break;
      }

      goto LABEL_16;
    case 18:
      v6 = *(this + 376);
      if (!v6)
      {
        break;
      }

      goto LABEL_16;
    case 50:
      v6 = *(this + 208);
      if (v6)
      {
LABEL_16:
        (**v6)(v6, a2, a3);
        (*(*a2 + 40))(a2, v6);
      }

      break;
  }

LABEL_17:
  (**v4)(v4, a2, a3);
  v7 = *(*a2 + 40);

  return v7(a2, v4);
}

void re::TimelineClipAssetData::~TimelineClipAssetData(re::TimelineClipAssetData *this)
{
  re::AssetHandle::~AssetHandle((this + 72));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::AssetHandle::~AssetHandle((this + 72));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::TimelineClipAssetData::clone(re::TimelineClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 176, 8);
  *v4 = &unk_1F5CC3608;
  v5 = *(this + 16);
  *(v4 + 8) = *(this + 1);
  *(v4 + 16) = v5;
  re::StringID::StringID((v4 + 24), (this + 24));
  re::DynamicString::DynamicString((v4 + 40), (this + 40));
  *v4 = &unk_1F5CBE660;
  re::AssetHandle::AssetHandle((v4 + 72), (this + 72));
  v6 = *(this + 96);
  *(v4 + 96) = v6;
  if (v6 == 1)
  {
    *(v4 + 104) = *(this + 13);
  }

  v7 = *(this + 112);
  *(v4 + 112) = v7;
  if (v7 == 1)
  {
    *(v4 + 120) = *(this + 15);
  }

  v8 = *(this + 8);
  *(v4 + 144) = *(this + 18);
  *(v4 + 128) = v8;
  v9 = *(this + 152);
  *(v4 + 152) = v9;
  if (v9 == 1)
  {
    *(v4 + 160) = *(this + 20);
  }

  v10 = *(this + 42);
  *(v4 + 172) = *(this + 172);
  *(v4 + 168) = v10;
  return v4;
}

void re::TimelineGroupAssetData::~TimelineGroupAssetData(re::TimelineGroupAssetData *this)
{
  re::DynamicArray<re::AssetHandle>::deinit(this + 72);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::AssetHandle>::deinit(this + 72);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::TimelineGroupAssetData::clone(re::TimelineGroupAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 112, 8);
  *v4 = &unk_1F5CC3608;
  v5 = *(this + 16);
  *(v4 + 8) = *(this + 1);
  *(v4 + 16) = v5;
  re::StringID::StringID((v4 + 24), (this + 24));
  re::DynamicString::DynamicString((v4 + 40), (this + 40));
  *v4 = &unk_1F5CBE6B8;
  re::DynamicArray<re::AssetHandle>::DynamicArray(v4 + 72, this + 9);
  return v4;
}

re::AssetHandle *anonymous namespace::findAssetHandle<re::Timeline>(re::AssetHandle *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  v6 = a2;
  if (a2)
  {
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a3, &v6, v5 ^ (v5 >> 31), v7);
    return re::AssetHandle::AssetHandle(v3, (*(a3 + 16) + 48 * v8 + 16));
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
  }

  return result;
}

uint64_t re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 48 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
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
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_1637, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 40;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t anonymous namespace::loadTimeline(re::TimelineAsset *a1)
{
  v1 = *(a1 + 1);
  if (v1)
  {
    v3 = *(v1 + 280);
    if (v3 == re::TimelineAsset::assetType(a1))
    {
      v4 = re::AssetHandle::loadedAsset<re::TimelineAsset>(a1);
      if (v4)
      {
        return *(v4 + 16);
      }

      re::AssetHandle::loadAsync(a1);
    }
  }

  else
  {
    re::TimelineAsset::assetType(a1);
  }

  return 0;
}

uint64_t re::AssetHandle::loadedAsset<re::TimelineAsset>(re::TimelineAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::TimelineAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::SkeletonAsset>(re::SkeletonAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::SkeletonAsset::assetType(a1);
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

re::StringID *re::SkeletalPoseJointDefinition::setSkeleton(re::SkeletalPoseJointDefinition *this, const re::Skeleton *a2)
{
  re::StringID::operator=(this + 3, a2);
  re::FixedArray<re::StringID>::operator=(this + 5, a2 + 16);
  re::FixedArray<unsigned int>::operator=(this + 8, a2 + 40);
  re::FixedArray<re::FixedArray<unsigned int>>::operator=(this + 11, a2 + 64);
  re::FixedArray<re::GenericSRT<float>>::operator=(this + 14, a2 + 88);
  re::FixedArray<re::Matrix4x4<float>>::operator=(this + 17, a2 + 112);

  return re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 160), a2 + 136);
}

void re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 0x10uLL, 8uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

re::IntrospectionOptionalBase *re::IntrospectionOptionalBase::IntrospectionOptionalBase(re::IntrospectionOptionalBase *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBA310;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  return this;
}

void *re::IntrospectionOptional<double>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<double>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<double>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<double>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

uint64_t re::TimelineClipAssetData::TimelineClipAssetData(re::TimelineClipAssetData *this)
{
  result = re::TimelineAssetData::TimelineAssetData(this, 1);
  *result = &unk_1F5CBE660;
  *(result + 112) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  *(result + 168) = 1065353216;
  *(result + 172) = 0;
  return result;
}

uint64_t re::TimelineAssetData::TimelineAssetData(uint64_t a1, int a2)
{
  *a1 = &unk_1F5CC3608;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  return a1;
}

void re::FloatAnimationClipAssetData::~FloatAnimationClipAssetData(re::FloatAnimationClipAssetData *this)
{
  *this = &unk_1F5CBE800;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBE800;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::FloatAnimationClipAssetData::clone(re::FloatAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<float>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBE790;
  return result;
}

uint64_t re::AnimationClipAssetData<float>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<float>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBE800;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<float>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBE840;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::DoubleAnimationClipAssetData::~DoubleAnimationClipAssetData(re::DoubleAnimationClipAssetData *this)
{
  *this = &unk_1F5CBE908;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBE908;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::DoubleAnimationClipAssetData::clone(re::DoubleAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<double>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBE880;
  return result;
}

uint64_t re::AnimationClipAssetData<double>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<double>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBE908;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<double>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBE948;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::Vector2FAnimationClipAssetData::~Vector2FAnimationClipAssetData(re::Vector2FAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEA10;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEA10;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FAnimationClipAssetData::clone(re::Vector2FAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::Vector2<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBE988;
  return result;
}

uint64_t re::AnimationClipAssetData<re::Vector2<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEA10;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEA50;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::Vector3FAnimationClipAssetData::~Vector3FAnimationClipAssetData(re::Vector3FAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEB18;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEB18;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FAnimationClipAssetData::clone(re::Vector3FAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::Vector3<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEA90;
  return result;
}

uint64_t re::AnimationClipAssetData<re::Vector3<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEB18;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEB58;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::Vector4FAnimationClipAssetData::~Vector4FAnimationClipAssetData(re::Vector4FAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEC20;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEC20;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FAnimationClipAssetData::clone(re::Vector4FAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::Vector4<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEB98;
  return result;
}

uint64_t re::AnimationClipAssetData<re::Vector4<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEC20;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEC60;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::QuaternionFAnimationClipAssetData::~QuaternionFAnimationClipAssetData(re::QuaternionFAnimationClipAssetData *this)
{
  *this = &unk_1F5CBED28;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBED28;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFAnimationClipAssetData::clone(re::QuaternionFAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::Quaternion<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBECA0;
  return result;
}

uint64_t re::AnimationClipAssetData<re::Quaternion<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBED28;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBED68;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::SRTAnimationClipAssetData::~SRTAnimationClipAssetData(re::SRTAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEE30;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEE30;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SRTAnimationClipAssetData::clone(re::SRTAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::GenericSRT<float>>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEDA8;
  return result;
}

uint64_t re::AnimationClipAssetData<re::GenericSRT<float>>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEE30;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEE70;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::SkeletalPoseAnimationClipAssetData::~SkeletalPoseAnimationClipAssetData(re::SkeletalPoseAnimationClipAssetData *this)
{
  *this = &unk_1F5CBEF38;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBEF38;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SkeletalPoseAnimationClipAssetData::clone(re::SkeletalPoseAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::SkeletalPoseAssetData>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEEB0;
  return result;
}

uint64_t re::AnimationClipAssetData<re::SkeletalPoseAssetData>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBEF38;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBEF78;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::BlendShapeWeightsAnimationClipAssetData::~BlendShapeWeightsAnimationClipAssetData(re::BlendShapeWeightsAnimationClipAssetData *this)
{
  *this = &unk_1F5CBF040;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBF040;
  v2 = (this + 40);
  re::AssetHandle::~AssetHandle((this + 80));
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::BlendShapeWeightsAnimationClipAssetData::clone(re::BlendShapeWeightsAnimationClipAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  result = re::AnimationClipAssetData<re::BlendShapeWeightsAssetData>::AnimationClipAssetData(v4, this);
  *result = &unk_1F5CBEFB8;
  return result;
}

uint64_t re::AnimationClipAssetData<re::BlendShapeWeightsAssetData>::AnimationClipAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF040;
  re::AssetHandle::AssetHandle((v4 + 10), (a2 + 80));
  v5 = *(a2 + 104);
  *(a1 + 104) = v5;
  if (v5 == 1)
  {
    *(a1 + 112) = *(a2 + 112);
  }

  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  if (v6 == 1)
  {
    *(a1 + 128) = *(a2 + 128);
  }

  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  v8 = *(a2 + 160);
  *(a1 + 160) = v8;
  if (v8 == 1)
  {
    *(a1 + 168) = *(a2 + 168);
  }

  v9 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v9;
  return a1;
}

uint64_t re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3608;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  re::StringID::StringID((a1 + 24), (a2 + 24));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  *a1 = &unk_1F5CBF080;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 8uLL, 4uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionOptional<float>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<float>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<float>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<float>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::FloatAnimationAssetData::~FloatAnimationAssetData(re::FloatAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<float>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::FloatAnimationAssetData::clone(re::FloatAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 120, 8);
  result = re::FromToByAnimationAssetData<float>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CC3530;
  return result;
}

uint64_t re::FromToByAnimationAssetData<float>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CC35C8;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 112));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

re *re::internal::destroyPersistent<re::EasingFunction>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::FromToByAnimationAssetData<float>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<float>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CC35C8;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  re::FromToByAnimationAssetData<float>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<float>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = 1;
  }

  *(a1 + 92) = *(a2 + 92);
LABEL_8:
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      *(a1 + 96) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 96) = 1;
  }

  *(a1 + 100) = *(a2 + 100);
LABEL_14:
  if ((*(a1 + 104) & 1) == 0)
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 104) = 1;
LABEL_19:
    *(a1 + 108) = *(a2 + 108);
    goto LABEL_20;
  }

  if (*(a2 + 104))
  {
    goto LABEL_19;
  }

  *(a1 + 104) = 0;
LABEL_20:
  v3 = *(a2 + 112);
  if (v3)
  {
    v3 = a1;
  }

  v4 = *(v2 + 112);
  if (v4)
  {
    v5 = re::globalAllocators(a1)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
  }

  *(v2 + 112) = v3;
  return v2;
}

void re::DoubleAnimationAssetData::~DoubleAnimationAssetData(re::DoubleAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<double>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::DoubleAnimationAssetData::clone(re::DoubleAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 144, 8);
  result = re::FromToByAnimationAssetData<double>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF140;
  return result;
}

uint64_t re::FromToByAnimationAssetData<double>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF1B0;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 136));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<double>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<double>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF1B0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  re::FromToByAnimationAssetData<double>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<double>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = 1;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_8:
  if (*(a1 + 104))
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      *(a1 + 104) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = *(a2 + 112);
LABEL_14:
  if ((*(a1 + 120) & 1) == 0)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 120) = 1;
LABEL_19:
    *(a1 + 128) = *(a2 + 128);
    goto LABEL_20;
  }

  if (*(a2 + 120))
  {
    goto LABEL_19;
  }

  *(a1 + 120) = 0;
LABEL_20:
  v3 = *(a2 + 136);
  if (v3)
  {
    v3 = a1;
  }

  v4 = *(v2 + 136);
  if (v4)
  {
    v5 = re::globalAllocators(a1)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
  }

  *(v2 + 136) = v3;
  return v2;
}

void *re::IntrospectionOptional<re::Vector2<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Vector2<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Vector2<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Vector2<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::Vector2FAnimationAssetData::~Vector2FAnimationAssetData(re::Vector2FAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::Vector2<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FAnimationAssetData::clone(re::Vector2FAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 144, 8);
  result = re::FromToByAnimationAssetData<re::Vector2<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF270;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::Vector2<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF2E0;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 136));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector2<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF2E0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  re::FromToByAnimationAssetData<re::Vector2<float>>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector2<float>>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = 1;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_8:
  if (*(a1 + 104))
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      *(a1 + 104) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = *(a2 + 112);
LABEL_14:
  if ((*(a1 + 120) & 1) == 0)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 120) = 1;
LABEL_19:
    *(a1 + 128) = *(a2 + 128);
    goto LABEL_20;
  }

  if (*(a2 + 120))
  {
    goto LABEL_19;
  }

  *(a1 + 120) = 0;
LABEL_20:
  v3 = *(a2 + 136);
  if (v3)
  {
    v3 = a1;
  }

  v4 = *(v2 + 136);
  if (v4)
  {
    v5 = re::globalAllocators(a1)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
  }

  *(v2 + 136) = v3;
  return v2;
}

void re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 0x20uLL, 0x10uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionOptional<re::Vector3<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Vector3<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Vector3<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 16) = 0u;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Vector3<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int128 *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*result)
    {
      v2 = *a2;
    }

    else
    {
      *result = 1;
      v2 = v3;
    }

    *(result + 16) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::Vector3FAnimationAssetData::~Vector3FAnimationAssetData(re::Vector3FAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::Vector3<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FAnimationAssetData::clone(re::Vector3FAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 208, 16);
  result = re::FromToByAnimationAssetData<re::Vector3<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF3A0;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::Vector3<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF410;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 192));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector3<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF410;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  re::FromToByAnimationAssetData<re::Vector3<float>>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector3<float>>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      *(a1 + 96) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 96) = 1;
  }

  *(a1 + 112) = *(a2 + 112);
LABEL_8:
  if (*(a1 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      *(a1 + 128) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 128) = 1;
  }

  *(a1 + 144) = *(a2 + 144);
LABEL_14:
  if ((*(a1 + 160) & 1) == 0)
  {
    if ((*(a2 + 160) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 160) = 1;
LABEL_19:
    *(a1 + 176) = *(a2 + 176);
    goto LABEL_20;
  }

  if (*(a2 + 160))
  {
    goto LABEL_19;
  }

  *(a1 + 160) = 0;
LABEL_20:
  v3 = *(a2 + 192);
  if (v3)
  {
    v3 = a1;
  }

  v4 = *(v2 + 192);
  if (v4)
  {
    v5 = re::globalAllocators(a1)[2];
    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
  }

  *(v2 + 192) = v3;
  return v2;
}

void *re::IntrospectionOptional<re::Vector4<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Vector4<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Vector4<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Vector4<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int128 *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*result)
    {
      v2 = *a2;
    }

    else
    {
      *result = 1;
      v2 = v3;
    }

    *(result + 16) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::Vector4FAnimationAssetData::~Vector4FAnimationAssetData(re::Vector4FAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::Vector4<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FAnimationAssetData::clone(re::Vector4FAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 208, 16);
  result = re::FromToByAnimationAssetData<re::Vector4<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF4D0;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::Vector4<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF540;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 192));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Vector4<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF540;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  re::FromToByAnimationAssetData<re::Vector3<float>>::operator=(v4, a2);
  return a1;
}

void *re::IntrospectionOptional<re::Quaternion<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Quaternion<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Quaternion<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 16) = xmmword_1E30474D0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Quaternion<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int128 *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*result)
    {
      v2 = *a2;
    }

    else
    {
      *result = 1;
      v2 = v3;
    }

    *(result + 16) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::QuaternionFAnimationAssetData::~QuaternionFAnimationAssetData(re::QuaternionFAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::Quaternion<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFAnimationAssetData::clone(re::QuaternionFAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 208, 16);
  result = re::FromToByAnimationAssetData<re::Quaternion<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF600;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::Quaternion<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF670;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 192));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::Quaternion<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF670;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = 0;
  *(v4 + 192) = 0;
  re::FromToByAnimationAssetData<re::Vector3<float>>::operator=(v4, a2);
  return a1;
}

void *re::IntrospectionOptional<re::GenericSRT<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::GenericSRT<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::GenericSRT<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 16) = 0x3F8000003F800000;
    *(a2 + 24) = 1065353216;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0x3F80000000000000;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::GenericSRT<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  if (a2)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    if (a1->n128_u8[0])
    {
      result = *a2;
      v3 = a2[2];
      a1[2] = a2[1];
      a1[3] = v3;
      a1[1] = result;
    }

    else
    {
      a1->n128_u8[0] = 1;
      a1[1] = v4;
      a1[2] = v5;
      result = v6;
      a1[3] = v6;
    }
  }

  else if (a1->n128_u8[0] == 1)
  {
    a1->n128_u8[0] = 0;
  }

  return result;
}

void re::SRTAnimationAssetData::~SRTAnimationAssetData(re::SRTAnimationAssetData *this)
{
  re::FromToByAnimationAssetData<re::GenericSRT<float>>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

void *re::SRTAnimationAssetData::clone(re::SRTAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 304, 16);
  result = re::FromToByAnimationAssetData<re::GenericSRT<float>>::FromToByAnimationAssetData(v4, this);
  *result = &unk_1F5CBF730;
  return result;
}

uint64_t re::FromToByAnimationAssetData<re::GenericSRT<float>>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF7A0;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 288));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::GenericSRT<float>>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF7A0;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 96) = 0;
  *(v4 + 160) = 0;
  *(v4 + 224) = 0;
  *(v4 + 288) = 0;
  re::FromToByAnimationAssetData<re::GenericSRT<float>>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::GenericSRT<float>>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      *(a1 + 96) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 96) = 1;
  }

  v3 = *(a2 + 112);
  v4 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v4;
  *(a1 + 112) = v3;
LABEL_8:
  if (*(a1 + 160))
  {
    if ((*(a2 + 160) & 1) == 0)
    {
      *(a1 + 160) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 160) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 160) = 1;
  }

  v5 = *(a2 + 176);
  v6 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v6;
  *(a1 + 176) = v5;
LABEL_14:
  if ((*(a1 + 224) & 1) == 0)
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(a1 + 224) = 1;
LABEL_19:
    v7 = *(a2 + 240);
    v8 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v8;
    *(a1 + 240) = v7;
    goto LABEL_20;
  }

  if (*(a2 + 224))
  {
    goto LABEL_19;
  }

  *(a1 + 224) = 0;
LABEL_20:
  v9 = *(a2 + 288);
  if (v9)
  {
    v9 = a1;
  }

  v10 = *(v2 + 288);
  if (v10)
  {
    v11 = re::globalAllocators(a1)[2];
    (**v10)(v10);
    (*(*v11 + 40))(v11, v10);
  }

  *(v2 + 288) = v9;
  return v2;
}

void *re::IntrospectionOptional<re::SkeletalPoseAssetData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::SkeletalPoseAssetData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionOptional<re::SkeletalPoseAssetData>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4[0] = 1;
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::SkeletalPoseAssetData>::operator=(a2, v4);
  if (v4[0] == 1)
  {
    result = v5;
    if (v5)
    {
      if (v6)
      {
        return (*(*v5 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::IntrospectionOptional<re::SkeletalPoseAssetData>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

uint64_t re::Optional<re::SkeletalPoseAssetData>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::FixedArray<float>::operator=(v3, (a2 + 8));
    }

    else
    {
      re::FixedArray<CoreIKTransform>::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v5;
  }

  return a1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4[0] = 1;
    re::FixedArray<re::GenericSRT<float>>::FixedArray(v5, a2);
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::SkeletalPoseAssetData>::operator=(a1, v4);
  if (v4[0] == 1)
  {
    result = v5[0];
    if (v5[0])
    {
      if (v5[1])
      {
        return (*(*v5[0] + 40))();
      }
    }
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::StringID>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::StringID>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::StringID>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::StringID>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::StringID>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::StringID>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::StringID>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::StringID>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::StringID>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::StringID>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v8 = re::DynamicArray<re::StringID>::add(this, v11);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::StringID>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::StringID>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 16 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + v8));
      ++v9;
      v8 += 16;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::StringID>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 16 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::StringID>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::StringID>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::StringID>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::StringID>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  re::DynamicArray<re::StringID>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(*(a3 + 16) + 80), v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = 16 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a4, 0);
        re::TypeInfo::construct(v13, v11, a4, 0);
        v11 += 16;
        v12 -= 16;
      }

      while (v12);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::SkeletalPoseAnimationAssetData::~SkeletalPoseAnimationAssetData(re::SkeletalPoseAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 296);
  re::DynamicArray<re::StringID>::deinit(this + 256);
  re::DynamicArray<re::StringID>::deinit(this + 216);
  re::AssetHandle::~AssetHandle((this + 192));

  re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::~FromToByAnimationAssetData(this);
}

{
  re::DynamicArray<re::StringID>::deinit(this + 296);
  re::DynamicArray<re::StringID>::deinit(this + 256);
  re::DynamicArray<re::StringID>::deinit(this + 216);
  re::AssetHandle::~AssetHandle((this + 192));
  re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SkeletalPoseAnimationAssetData::clone(re::SkeletalPoseAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 336, 8);
  v5 = re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::FromToByAnimationAssetData(v4, this);
  *v5 = &unk_1F5CBF8F8;
  v6 = (v5 + 27);
  re::AssetHandle::AssetHandle((v5 + 24), (this + 192));
  re::DynamicArray<re::StringID>::DynamicArray(v6, this + 27);
  re::DynamicArray<re::StringID>::DynamicArray(v4 + 256, this + 32);
  re::DynamicArray<re::StringID>::DynamicArray(v4 + 296, this + 37);
  return v4;
}

uint64_t re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBF968;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 184));
  if (*(a1 + 152) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 160));
  }

  if (*(a1 + 120) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 128));
  }

  if (*(a1 + 88) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 96));
  }

  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBF968;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 120) = 0;
  *(v4 + 152) = 0;
  *(v4 + 184) = 0;
  re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 80) = *(a2 + 80);
    re::Optional<re::SkeletalPoseAssetData>::operator=(a1 + 88, (a2 + 88));
    re::Optional<re::SkeletalPoseAssetData>::operator=(a1 + 120, (a2 + 120));
    v4 = re::Optional<re::SkeletalPoseAssetData>::operator=(a1 + 152, (a2 + 152));
    v5 = *(a2 + 184);
    if (v5)
    {
      v5 = v4;
    }

    v6 = *(a1 + 184);
    if (v6)
    {
      v7 = re::globalAllocators(v4)[2];
      (**v6)(v6);
      (*(*v7 + 40))(v7, v6);
    }

    *(a1 + 184) = v5;
  }

  return a1;
}

uint64_t re::Optional<re::SkeletalPoseAssetData>::operator=(uint64_t a1, _BYTE *a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::FixedArray<re::GenericSRT<float>>::operator=(v3, (a2 + 8));
    }

    else
    {
      re::FixedArray<CoreIKTransform>::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::FixedArray<re::GenericSRT<float>>::FixedArray((a1 + 8), (a2 + 8));
  }

  return a1;
}

void *re::IntrospectionOptional<re::BlendShapeWeightsAssetData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::BlendShapeWeightsAssetData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionOptional<re::BlendShapeWeightsAssetData>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4[0] = 1;
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::SkeletalPoseAssetData>::operator=(a2, v4);
  if (v4[0] == 1)
  {
    result = v5;
    if (v5)
    {
      if (v6)
      {
        return (*(*v5 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::IntrospectionOptional<re::BlendShapeWeightsAssetData>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4[0] = 1;
    re::FixedArray<float>::FixedArray(v5, a2);
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::SkeletalPoseAssetData>::operator=(a1, v4);
  if (v4[0] == 1)
  {
    result = v5[0];
    if (v5[0])
    {
      if (v5[1])
      {
        return (*(*v5[0] + 40))();
      }
    }
  }

  return result;
}

void re::BlendShapeWeightsAnimationAssetData::~BlendShapeWeightsAnimationAssetData(re::BlendShapeWeightsAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 272);
  re::DynamicArray<re::StringID>::deinit(this + 232);
  re::DynamicArray<re::StringID>::deinit(this + 192);

  re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::~FromToByAnimationAssetData(this);
}

{
  re::DynamicArray<re::StringID>::deinit(this + 272);
  re::DynamicArray<re::StringID>::deinit(this + 232);
  re::DynamicArray<re::StringID>::deinit(this + 192);
  re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::~FromToByAnimationAssetData(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BlendShapeWeightsAnimationAssetData::clone(re::BlendShapeWeightsAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 312, 8);
  v5 = re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::FromToByAnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFA28;
  v6 = (v5 + 29);
  re::DynamicArray<re::StringID>::DynamicArray((v5 + 24), this + 24);
  re::DynamicArray<re::StringID>::DynamicArray(v6, this + 29);
  re::DynamicArray<re::StringID>::DynamicArray(v4 + 272, this + 34);
  return v4;
}

uint64_t re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::~FromToByAnimationAssetData(uint64_t a1)
{
  *a1 = &unk_1F5CBFA98;
  re::internal::destroyPersistent<re::EasingFunction>("~FromToByAnimationAssetData", 374, *(a1 + 184));
  if (*(a1 + 152) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 160));
  }

  if (*(a1 + 120) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 128));
  }

  if (*(a1 + 88) == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 96));
  }

  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::FromToByAnimationAssetData(uint64_t a1, uint64_t a2)
{
  v4 = re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(a1, a2);
  *v4 = &unk_1F5CBFA98;
  *(v4 + 80) = 0x3FF0000000000000;
  *(v4 + 88) = 0;
  *(v4 + 120) = 0;
  *(v4 + 152) = 0;
  *(v4 + 184) = 0;
  re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::operator=(v4, a2);
  return a1;
}

uint64_t re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 80) = *(a2 + 80);
    re::Optional<re::BlendShapeWeightsAssetData>::operator=(a1 + 88, (a2 + 88));
    re::Optional<re::BlendShapeWeightsAssetData>::operator=(a1 + 120, (a2 + 120));
    v4 = re::Optional<re::BlendShapeWeightsAssetData>::operator=(a1 + 152, (a2 + 152));
    v5 = *(a2 + 184);
    if (v5)
    {
      v5 = v4;
    }

    v6 = *(a1 + 184);
    if (v6)
    {
      v7 = re::globalAllocators(v4)[2];
      (**v6)(v6);
      (*(*v7 + 40))(v7, v6);
    }

    *(a1 + 184) = v5;
  }

  return a1;
}

uint64_t re::Optional<re::BlendShapeWeightsAssetData>::operator=(uint64_t a1, _BYTE *a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::FixedArray<float>::operator=(v3, (a2 + 8));
    }

    else
    {
      re::FixedArray<CoreIKTransform>::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::FixedArray<float>::FixedArray((a1 + 8), (a2 + 8));
  }

  return a1;
}

void re::FloatKeyframeAnimationAssetData::~FloatKeyframeAnimationAssetData(re::FloatKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFB48;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFB48;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::FloatKeyframeAnimationAssetData::clone(re::FloatKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<float>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFB48;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<float>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFAD8;
  return v4;
}

void re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<double>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<double>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<double>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<double>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<double>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<double>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<double>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<double>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

void re::DynamicArray<double>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<float *>::setCapacity(a1, a2);
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

void *re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<float *>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<float *>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<double>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<double>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::DoubleKeyframeAnimationAssetData::~DoubleKeyframeAnimationAssetData(re::DoubleKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFC90;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFC90;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::DoubleKeyframeAnimationAssetData::clone(re::DoubleKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<double>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFC90;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<char const*>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFC20;
  return v4;
}

void re::Vector2FKeyframeAnimationAssetData::~Vector2FKeyframeAnimationAssetData(re::Vector2FKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFD40;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFD40;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FKeyframeAnimationAssetData::clone(re::Vector2FKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFD40;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<unsigned long>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFCD0;
  return v4;
}

void re::Vector3FKeyframeAnimationAssetData::~Vector3FKeyframeAnimationAssetData(re::Vector3FKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFDF0;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFDF0;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FKeyframeAnimationAssetData::clone(re::Vector3FKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFDF0;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::Vector3<float>>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFD80;
  return v4;
}

uint64_t re::DynamicArray<re::Vector3<float>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Quaternion<float>>::copy(a1, a2);
  }

  return a1;
}

void re::Vector4FKeyframeAnimationAssetData::~Vector4FKeyframeAnimationAssetData(re::Vector4FKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFEA0;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFEA0;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FKeyframeAnimationAssetData::clone(re::Vector4FKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFEA0;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::Vector4<float>>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFE30;
  return v4;
}

void re::QuaternionFKeyframeAnimationAssetData::~QuaternionFKeyframeAnimationAssetData(re::QuaternionFKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CBFF50;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CBFF50;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFKeyframeAnimationAssetData::clone(re::QuaternionFKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CBFF50;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::Vector3<float>>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CBFEE0;
  return v4;
}

void *re::IntrospectionDynamicArray<re::GenericSRT<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::GenericSRT<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::GenericSRT<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::GenericSRT<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::GenericSRT<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::GenericSRT<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::GenericSRT<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10[0] = 0x3F8000003F800000;
  v10[1] = 1065353216;
  v10[2] = 0;
  v10[3] = 0x3F80000000000000;
  v10[4] = 0;
  v10[5] = 0;
  re::DynamicArray<re::Matrix3x3<float>>::add(this, v10);
  v8 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::GenericSRT<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void *re::DynamicArray<re::GenericSRT<float>>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 48 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = (v3[4] + 48 * v4);
        v7 = v5 / 0x30uLL + 1;
        do
        {
          *v6 = 0x3F8000003F800000;
          v6[1] = 1065353216;
          v6[2] = 0;
          v6[3] = 0x3F80000000000000;
          v6[4] = 0;
          v6[5] = 0;
          v6 += 6;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::GenericSRT<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 48 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::SRTKeyframeAnimationAssetData::~SRTKeyframeAnimationAssetData(re::SRTKeyframeAnimationAssetData *this)
{
  *this = &unk_1F5CC0098;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0098;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SRTKeyframeAnimationAssetData::clone(re::SRTKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 8);
  v5 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0098;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::GenericSRT<float>>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CC0028;
  return v4;
}

uint64_t re::DynamicArray<re::GenericSRT<float>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Matrix3x3<float>>::copy(a1, a2);
  }

  return a1;
}

void *re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SkeletalPoseAssetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 24 * v9);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 24 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::SkeletalPoseAssetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[3 * v9];
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
          re::FixedArray<CoreIKTransform>::deinit(v8);
          v8 += 3;
          v11 += 3;
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

void *re::DynamicArray<re::SkeletalPoseAssetData>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      result = re::FixedArray<CoreIKTransform>::deinit((v3[4] + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (v3[4] + v6);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::SkeletalPoseAssetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::SkeletalPoseKeyframeAnimationAssetData::~SkeletalPoseKeyframeAnimationAssetData(re::SkeletalPoseKeyframeAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::AssetHandle::~AssetHandle((this + 160));
  *this = &unk_1F5CC01E0;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::AssetHandle::~AssetHandle((this + 160));
  *this = &unk_1F5CC01E0;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SkeletalPoseKeyframeAnimationAssetData::clone(re::SkeletalPoseKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 224, 8);
  v5 = re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC01E0;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::SkeletalPoseAssetData>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CC0170;
  re::AssetHandle::AssetHandle((v4 + 20), (this + 160));
  re::DynamicArray<re::StringID>::DynamicArray((v4 + 23), this + 23);
  return v4;
}

uint64_t re::DynamicArray<re::SkeletalPoseAssetData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::SkeletalPoseAssetData>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::SkeletalPoseAssetData>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 24 * v12;
      do
      {
        result = re::FixedArray<re::GenericSRT<float>>::operator=(v13, v11);
        v11 += 24;
        v13 += 3;
        v14 -= 24;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 3 * v12;
      v16 = v11 + 8 * v15;
      result = &v13[v15];
      v17 = 24 * v4 - 8 * v15;
      do
      {
        v18 = re::FixedArray<re::GenericSRT<float>>::FixedArray(result, v16);
        v16 += 24;
        result = v18 + 3;
        v17 -= 24;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        result = re::FixedArray<re::GenericSRT<float>>::operator=(v6, v7);
        v7 += 24;
        v6 += 3;
        v8 -= 24;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[3 * v4];
      v10 = 24 * v5 - 24 * v4;
      do
      {
        result = re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SkeletalPoseAssetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::BlendShapeWeightsAssetData>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 24 * v8);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 24 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::BlendShapeWeightsAssetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::BlendShapeWeightsAssetData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::SkeletalPoseAssetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::BlendShapeWeightsKeyframeAnimationAssetData::~BlendShapeWeightsKeyframeAnimationAssetData(re::BlendShapeWeightsKeyframeAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 160);
  *this = &unk_1F5CC0328;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::StringID>::deinit(this + 160);
  *this = &unk_1F5CC0328;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::BlendShapeWeightsKeyframeAnimationAssetData::clone(re::BlendShapeWeightsKeyframeAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 200, 8);
  v5 = re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0328;
  *(v5 + 73) = *(this + 73);
  re::DynamicArray<float>::DynamicArray(v5 + 80, this + 10);
  re::DynamicArray<re::BlendShapeWeightsAssetData>::DynamicArray((v4 + 15), this + 15);
  *v4 = &unk_1F5CC02B8;
  re::DynamicArray<re::StringID>::DynamicArray((v4 + 20), this + 20);
  return v4;
}

uint64_t re::DynamicArray<re::BlendShapeWeightsAssetData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::BlendShapeWeightsAssetData>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::DynamicArray<re::BlendShapeWeightsAssetData>::copy(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::SkeletalPoseAssetData>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 24 * v12;
      do
      {
        result = re::FixedArray<float>::operator=(v13, v11);
        v11 += 24;
        v13 += 3;
        v14 -= 24;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 3 * v12;
      v16 = v11 + 8 * v15;
      result = &v13[v15];
      v17 = 24 * v4 - 8 * v15;
      do
      {
        v18 = re::FixedArray<float>::FixedArray(result, v16);
        v16 += 24;
        result = v18 + 3;
        v17 -= 24;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        result = re::FixedArray<float>::operator=(v6, v7);
        v7 += 24;
        v6 += 3;
        v8 -= 24;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[3 * v4];
      v10 = 24 * v5 - 24 * v4;
      do
      {
        result = re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void re::FloatSampledAnimationAssetData::~FloatSampledAnimationAssetData(re::FloatSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC03D8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC03D8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::FloatSampledAnimationAssetData::clone(re::FloatSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<float>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC03D8;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<float>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0368;
  return v4;
}

void re::DoubleSampledAnimationAssetData::~DoubleSampledAnimationAssetData(re::DoubleSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC0488;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0488;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::DoubleSampledAnimationAssetData::clone(re::DoubleSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<double>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0488;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<char const*>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0418;
  return v4;
}

void re::Vector2FSampledAnimationAssetData::~Vector2FSampledAnimationAssetData(re::Vector2FSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC0538;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0538;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector2FSampledAnimationAssetData::clone(re::Vector2FSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::Vector2<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0538;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<unsigned long>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC04C8;
  return v4;
}

void re::Vector3FSampledAnimationAssetData::~Vector3FSampledAnimationAssetData(re::Vector3FSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC05E8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC05E8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector3FSampledAnimationAssetData::clone(re::Vector3FSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::Vector3<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC05E8;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::Vector3<float>>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0578;
  return v4;
}

void re::Vector4FSampledAnimationAssetData::~Vector4FSampledAnimationAssetData(re::Vector4FSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC0698;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0698;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::Vector4FSampledAnimationAssetData::clone(re::Vector4FSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::Vector4<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0698;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::Vector4<float>>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0628;
  return v4;
}

void re::QuaternionFSampledAnimationAssetData::~QuaternionFSampledAnimationAssetData(re::QuaternionFSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC0748;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0748;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::QuaternionFSampledAnimationAssetData::clone(re::QuaternionFSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::Quaternion<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0748;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::Vector3<float>>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC06D8;
  return v4;
}

void re::SRTSampledAnimationAssetData::~SRTSampledAnimationAssetData(re::SRTSampledAnimationAssetData *this)
{
  *this = &unk_1F5CC07F8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC07F8;
  v2 = (this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SRTSampledAnimationAssetData::clone(re::SRTSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC07F8;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::GenericSRT<float>>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0788;
  return v4;
}

void re::SkeletalPoseSampledAnimationAssetData::~SkeletalPoseSampledAnimationAssetData(re::SkeletalPoseSampledAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 152);
  re::AssetHandle::~AssetHandle((this + 128));
  *this = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::StringID>::deinit(this + 152);
  re::AssetHandle::~AssetHandle((this + 128));
  *this = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::SkeletalPoseSampledAnimationAssetData::clone(re::SkeletalPoseSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 200, 8);
  v5 = re::AnimationAssetData<re::SkeletalPoseAssetData>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC08A8;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::SkeletalPoseAssetData>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC0838;
  re::AssetHandle::AssetHandle((v4 + 128), (this + 128));
  re::DynamicArray<re::StringID>::DynamicArray(v4 + 152, this + 19);
  v7 = *(this + 96);
  *(v4 + 194) = *(this + 194);
  *(v4 + 192) = v7;
  return v4;
}

void re::BlendShapeWeightsSampledAnimationAssetData::~BlendShapeWeightsSampledAnimationAssetData(re::BlendShapeWeightsSampledAnimationAssetData *this)
{
  re::DynamicArray<re::StringID>::deinit(this + 128);
  *this = &unk_1F5CC0958;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::DynamicArray<re::StringID>::deinit(this + 128);
  *this = &unk_1F5CC0958;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 88);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::BlendShapeWeightsSampledAnimationAssetData::clone(re::BlendShapeWeightsSampledAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 168, 8);
  v5 = re::AnimationAssetData<re::BlendShapeWeightsAssetData>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0958;
  v6 = *(this + 73);
  v5[10] = *(this + 10);
  *(v5 + 73) = v6;
  re::DynamicArray<re::BlendShapeWeightsAssetData>::DynamicArray((v5 + 11), this + 11);
  *v4 = &unk_1F5CC08E8;
  re::DynamicArray<re::StringID>::DynamicArray((v4 + 16), this + 16);
  return v4;
}

void re::OrbitAnimationAssetData::~OrbitAnimationAssetData(re::OrbitAnimationAssetData *this)
{
  *this = &unk_1F5CC3608;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CC3608;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

__n128 re::OrbitAnimationAssetData::clone(re::OrbitAnimationAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 160, 16);
  v5 = re::AnimationAssetData<re::GenericSRT<float>>::AnimationAssetData(v4, this);
  *v5 = &unk_1F5CC0998;
  *(v5 + 76) = *(this + 76);
  result = *(this + 92);
  v7 = *(this + 108);
  v8 = *(this + 124);
  *(v5 + 136) = *(this + 136);
  *(v5 + 124) = v8;
  *(v5 + 108) = v7;
  *(v5 + 92) = result;
  return result;
}

void re::AnimationStateTimelineAssetData::~AnimationStateTimelineAssetData(re::AnimationStateTimelineAssetData *this)
{
  *this = &unk_1F5CC3608;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CC3608;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationStateTimelineAssetData::clone(re::AnimationStateTimelineAssetData *this, re::Allocator *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 96, 8);
  *v4 = &unk_1F5CC3608;
  v5 = *(this + 16);
  *(v4 + 8) = *(this + 1);
  *(v4 + 16) = v5;
  re::StringID::StringID((v4 + 24), (this + 24));
  re::DynamicString::DynamicString((v4 + 40), (this + 40));
  *(v4 + 72) = *(this + 72);
  *v4 = &unk_1F5CC09F0;
  *(v4 + 80) = *(this + 5);
  return v4;
}

void re::FloatAnimationBlendTreeAssetData::~FloatAnimationBlendTreeAssetData(re::FloatAnimationBlendTreeAssetData *this)
{
  *this = &unk_1F5CC0AD0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CC0AD0;
  v2 = (this + 40);
  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(this + 208);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(this + 168);
  re::DynamicArray<re::RigGraphConnection>::deinit(this + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(this + 80);
  *this = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}