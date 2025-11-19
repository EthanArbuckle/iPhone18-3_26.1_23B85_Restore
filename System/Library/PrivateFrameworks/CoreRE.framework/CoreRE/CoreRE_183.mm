void re::MeshModelDefinition::append(void *a1, uint64_t *a2, char a3, int a4, int a5, const char *a6)
{
  if (*(*a2 + 40) || *(*a2 + 96))
  {
    v12 = *a2;
    *a2 = 0;
    v13 = a3;
    v15 = a4;
    v16 = a5;
    v10 = re::DynamicArray<re::MeshModelDefinition::PartEntry>::add((a1 + 7), &v12);
    if (v14[0])
    {
      if (v14[1])
      {
        (*(*v14[0] + 40))(v10);
      }

      memset(v14, 0, sizeof(v14));
    }

    if (v12)
    {
    }

    v11 = (a5 + 1);
    if (a1[14] < v11)
    {
      re::DynamicArray<re::MeshModelDefinition::LevelEntry>::resize(a1 + 12, v11);
    }
  }
}

double re::DynamicArray<re::MeshModelDefinition::PartEntry>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshModelDefinition::PartEntry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 56 * v4;
  *v5 = *a2;
  *a2 = 0;
  *(v5 + 8) = *(a2 + 8);
  result = 0.0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 40) = *(a2 + 40);
  v7 = *(a2 + 24);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v8 = *(a2 + 32);
  *(a2 + 40) = 0;
  v10 = *(v5 + 24);
  v9 = *(v5 + 32);
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(v5 + 48) = *(a2 + 48);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::MeshModelDefinition::LevelEntry>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = (v3[4] + 8 * v4);
      v7 = v5 + 1;
      do
      {
        *v6++ = 0x7F7FFFFF00000000;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::MeshModelDefinition::append(void *this, unsigned int a2, float a3, float a4)
{
  v7 = this;
  v8 = this[14];
  v9 = a2 + 1;
  if (v8 < v9)
  {
    this = re::DynamicArray<re::MeshModelDefinition::LevelEntry>::resize(this + 12, v9);
    v8 = v7[14];
  }

  if (v8 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = (v7[16] + 8 * a2);
  *v10 = a3;
  v10[1] = a4;
  return this;
}

uint64_t re::MeshResourceDefinition::MeshResourceDefinition(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, unint64_t a7)
{
  v196 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  v161 = (a1 + 24);
  *(a1 + 56) = 0u;
  *a1 = &unk_1F5D08F48;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 300) = 0x7FFFFFFFLL;
  v168 = 0;
  memset(v167, 0, sizeof(v167));
  if ((2 * a3) <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * a3;
  }

  v169 = 0x7FFFFFFFLL;
  v165 = 0;
  memset(v164, 0, sizeof(v164));
  v166 = 0x7FFFFFFFLL;
  v154 = a5;
  if ((2 * a5) <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * a5;
  }

  if (a7)
  {
    v18 = 8 * a7;
    v19 = a6;
    do
    {
      v20 = *v19;
      if (*v19)
      {
        v17 = (v20 + 8);
      }

      v21 = *(a1 + 232);
      v22 = *(a1 + 240);
      if (v22 >= v21)
      {
        v23 = v22 + 1;
        if (v21 < v22 + 1)
        {
          if (*(a1 + 224))
          {
            if (v21)
            {
              v24 = 2 * v21;
            }

            else
            {
              v24 = 8;
            }

            if (v24 <= v23)
            {
              v25 = v22 + 1;
            }

            else
            {
              v25 = v24;
            }

            v17 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 224), v25);
          }

          else
          {
            v17 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 224), v23);
            ++*(a1 + 248);
          }
        }

        v22 = *(a1 + 240);
      }

      *(*(a1 + 256) + 8 * v22) = v20;
      *(a1 + 240) = v22 + 1;
      ++*(a1 + 248);
      ++v19;
      v18 -= 8;
    }

    while (v18);
    v26 = 0;
    LODWORD(v183[0]) = 0;
    do
    {
      v17 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 264, (a6[v26] + 24), v183);
      ++LODWORD(v183[0]);
      v26 = LODWORD(v183[0]);
    }

    while (a7 > LODWORD(v183[0]));
  }

  if (a3)
  {
    v156 = &a2[a3];
    v27.i64[0] = 0x7F0000007FLL;
    v27.i64[1] = 0x7F0000007FLL;
    v157 = vnegq_f32(v27);
    while (1)
    {
      v159 = a2;
      v28 = *a2;
      v29 = *(*a2 + 112);
      if (v29)
      {
        v30 = *(v28 + 128);
        v31 = *(a1 + 120);
        v32 = 8 * v29;
        do
        {
          v33 = *v30;
          v34 = *(a1 + 112);
          if (v31 >= v34)
          {
            v35 = v31 + 1;
            if (v34 < v31 + 1)
            {
              if (*(a1 + 104))
              {
                v36 = 2 * v34;
                if (!v34)
                {
                  v36 = 8;
                }

                if (v36 <= v35)
                {
                  v37 = v35;
                }

                else
                {
                  v37 = v36;
                }

                v17 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity((a1 + 104), v37);
              }

              else
              {
                v17 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity((a1 + 104), v35);
                ++*(a1 + 128);
              }
            }

            v31 = *(a1 + 120);
          }

          *(*(a1 + 136) + 8 * v31) = v33;
          v31 = *(a1 + 120) + 1;
          *(a1 + 120) = v31;
          ++*(a1 + 128);
          ++v30;
          v32 -= 8;
        }

        while (v32);
      }

      if (*(v28 + 32))
      {
        v38 = *(v28 + 40);
      }

      else
      {
        v38 = (v28 + 33);
      }

      v39 = re::UniqueNameGenerator::uniqueName(v167, v38, "Model", &v177);
      *&v183[2] = 0;
      memset(v183, 0, 28);
      v40 = v178;
      v42.i64[0] = 0x7F0000007FLL;
      v42.i64[1] = 0x7F0000007FLL;
      v184 = v157;
      v185 = v42;
      v187 = 0uLL;
      v186 = 0;
      v188 = 0;
      v195 = 0;
      v189 = 0u;
      v190 = 0u;
      v191 = 0;
      v192 = 0u;
      v193 = 0u;
      v194 = 0;
      v43 = *(a1 + 152);
      v44 = *(a1 + 160);
      if (v44 >= v43)
      {
        v45 = v44 + 1;
        if (v43 < v44 + 1)
        {
          if (*(a1 + 144))
          {
            v46 = 2 * v43;
            v47 = v43 == 0;
            v48 = 8;
            if (!v47)
            {
              v48 = v46;
            }

            if (v48 <= v45)
            {
              v49 = v45;
            }

            else
            {
              v49 = v48;
            }

            re::DynamicArray<re::MeshResourceDefinition::Model>::setCapacity((a1 + 144), v49);
          }

          else
          {
            re::DynamicArray<re::MeshResourceDefinition::Model>::setCapacity((a1 + 144), v45);
            ++*(a1 + 168);
          }
        }

        v44 = *(a1 + 160);
      }

      v50 = *(a1 + 176) + 240 * v44;
      *(v50 + 32) = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      *v50 = 0;
      *(v50 + 24) = 0;
      *v50 = *&v183[0];
      *&v183[0] = 0;
      *(v50 + 8) = *(&v183[0] + 1);
      *(&v183[0] + 1) = 0;
      v51 = *(v50 + 16);
      *(v50 + 16) = *&v183[1];
      *&v183[1] = v51;
      v52 = *(v50 + 32);
      *(v50 + 32) = *&v183[2];
      *&v183[2] = v52;
      ++DWORD2(v183[1]);
      ++*(v50 + 24);
      *(v50 + 40) = 0u;
      *(v50 + 56) = 0u;
      *(v50 + 40) = *(&v183[2] + 1);
      *(&v183[2] + 1) = 0;
      v53 = *(v50 + 56);
      *(v50 + 56) = *(&v183[3] + 1);
      *(&v183[3] + 1) = v53;
      *(v50 + 64) = *&v183[4];
      *&v183[4] = 0;
      v54 = *(v50 + 48);
      *(v50 + 48) = *&v183[3];
      *&v183[3] = v54;
      v55 = v185;
      *(v50 + 80) = v184;
      *(v50 + 96) = v55;
      *(v50 + 144) = 0;
      *(v50 + 136) = 0;
      *(v50 + 120) = 0;
      *(v50 + 128) = 0;
      *(v50 + 112) = 0;
      *(v50 + 112) = v186;
      v186 = 0;
      *(v50 + 120) = v187;
      *&v187 = 0;
      v56 = *(v50 + 128);
      *(v50 + 128) = *(&v187 + 1);
      *(&v187 + 1) = v56;
      v57 = *(v50 + 144);
      *(v50 + 144) = v189;
      *&v189 = v57;
      ++v188;
      ++*(v50 + 136);
      *(v50 + 184) = 0;
      *(v50 + 160) = 0;
      *(v50 + 168) = 0;
      *(v50 + 152) = 0;
      *(v50 + 176) = 0;
      *(v50 + 152) = *(&v189 + 1);
      *(&v189 + 1) = 0;
      *(v50 + 160) = v190;
      *&v190 = 0;
      v58 = *(v50 + 168);
      *(v50 + 168) = *(&v190 + 1);
      *(&v190 + 1) = v58;
      v59 = *(v50 + 184);
      *(v50 + 184) = v192;
      *&v192 = v59;
      ++v191;
      ++*(v50 + 176);
      *(v50 + 224) = 0;
      *(v50 + 200) = 0;
      *(v50 + 208) = 0;
      *(v50 + 192) = 0;
      *(v50 + 216) = 0;
      *(v50 + 192) = *(&v192 + 1);
      *(&v192 + 1) = 0;
      *(v50 + 200) = v193;
      *&v193 = 0;
      v60 = *(v50 + 208);
      *(v50 + 208) = *(&v193 + 1);
      *(&v193 + 1) = v60;
      v61 = *(v50 + 224);
      *(v50 + 224) = v195;
      v195 = v61;
      ++v194;
      ++*(v50 + 216);
      ++*(a1 + 160);
      ++*(a1 + 168);
      re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(&v192 + 8);
      if (*(&v189 + 1))
      {
        if (v192)
        {
          (*(**(&v189 + 1) + 40))();
        }

        *&v192 = 0;
        v190 = 0uLL;
        *(&v189 + 1) = 0;
        ++v191;
      }

      if (v186)
      {
        if (v189)
        {
          (*(*v186 + 40))();
        }

        *&v189 = 0;
        v187 = 0uLL;
        v186 = 0;
        ++v188;
      }

      if (*(&v183[2] + 1))
      {
        if (v183[3])
        {
          (*(**(&v183[2] + 1) + 40))();
        }

        memset(&v183[2] + 8, 0, 32);
      }

      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v183);
      v62 = *(a1 + 176) + 240 * *(a1 + 160);
      v63 = (v62 - 128);
      v64 = *(v28 + 72);
      if (*(v62 - 120) < v64)
      {
        v63 = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v63, v64);
        v64 = *(v28 + 72);
      }

      v175 = 0;
      memset(v174, 0, sizeof(v174));
      v176 = 0x7FFFFFFFLL;
      v65 = (2 * v64) <= 1 ? 1 : 2 * v64;
      v66 = *(v28 + 72);
      if (v66)
      {
        break;
      }

LABEL_176:
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v174);
      if (v177)
      {
        if (v177)
        {
        }
      }

      a2 = v159 + 1;
      if (v159 + 1 == v156)
      {
        goto LABEL_180;
      }
    }

    v67 = *(v28 + 88);
    v162 = v67 + 56 * v66;
    v158 = (v62 - 88);
    v160 = (v62 - 48);
    v68 = 1;
    while (1)
    {
      v163 = v68;
      v69 = *v67;
      v70 = *(a1 + 40);
      re::MeshDefinition::computeBoundingBox(*v67, &v172);
      v71 = *(v62 - 112);
      v73 = *(a1 + 32);
      v72 = *(a1 + 40);
      if (v72 >= v73)
      {
        v74 = v72 + 1;
        if (v73 < v72 + 1)
        {
          if (*v161)
          {
            v75 = 2 * v73;
            if (!v73)
            {
              v75 = 8;
            }

            if (v75 <= v74)
            {
              v76 = v74;
            }

            else
            {
              v76 = v75;
            }

            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v161, v76);
          }

          else
          {
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v161, v74);
            ++*(a1 + 48);
          }
        }

        v72 = *(a1 + 40);
      }

      v77 = *v67;
      *(*(a1 + 56) + 8 * v72) = *v67;
      if (v77)
      {
        v78 = &v77->u32[2];
        v72 = *(a1 + 40);
      }

      *(a1 + 40) = v72 + 1;
      ++*(a1 + 48);
      v79 = *(a1 + 80);
      if (*(v67 + 24))
      {
        v80 = *(v67 + 32);
      }

      else
      {
        v80 = (v67 + 25);
      }

      re::UniqueNameGenerator::uniqueName(v174, v80, "Part", &v170);
      *v180 = v70;
      v81 = re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v183, v180, 1uLL);
      v82 = v171;
      v184 = v172;
      v185 = v173;
      LOBYTE(v186) = v69[10].i8[0];
      if (v186 == 1)
      {
        BYTE1(v186) = v69[10].i8[1];
      }

      BYTE2(v186) = v69[10].i8[2];
      if (BYTE2(v186) == 1)
      {
        BYTE3(v186) = v69[10].i8[3];
      }

      BYTE4(v186) = v69[10].i8[4];
      if (BYTE4(v186) == 1)
      {
        BYTE5(v186) = v69[10].i8[5];
      }

      LODWORD(v187) = v69[6].i32[0];
      BYTE4(v187) = *(v67 + 8);
      DWORD2(v187) = *(v67 + 48);
      HIDWORD(v187) = v69[6].i32[1];
      v84 = *(a1 + 72);
      v85 = *(a1 + 80);
      if (v85 >= v84)
      {
        v86 = v85 + 1;
        if (v84 < v85 + 1)
        {
          if (*(a1 + 64))
          {
            v87 = 2 * v84;
            v47 = v84 == 0;
            v88 = 8;
            if (!v47)
            {
              v88 = v87;
            }

            if (v88 <= v86)
            {
              v89 = v86;
            }

            else
            {
              v89 = v88;
            }

            re::DynamicArray<re::MeshResourceDefinition::Part>::setCapacity((a1 + 64), v89);
          }

          else
          {
            re::DynamicArray<re::MeshResourceDefinition::Part>::setCapacity((a1 + 64), v86);
            ++*(a1 + 88);
          }
        }

        v85 = *(a1 + 80);
      }

      v90 = *(a1 + 96) + 144 * v85;
      *(v90 + 32) = 0;
      *(v90 + 8) = 0;
      *(v90 + 16) = 0;
      *v90 = 0;
      *(v90 + 24) = 0;
      *v90 = *&v183[0];
      *&v183[0] = 0;
      *(v90 + 8) = *(&v183[0] + 1);
      *(&v183[0] + 1) = 0;
      v91 = *(v90 + 16);
      *(v90 + 16) = *&v183[1];
      *&v183[1] = v91;
      v92 = *(v90 + 32);
      *(v90 + 32) = *&v183[2];
      *&v183[2] = v92;
      ++DWORD2(v183[1]);
      ++*(v90 + 24);
      *(v90 + 40) = 0u;
      *(v90 + 56) = 0u;
      *(v90 + 40) = *(&v183[2] + 1);
      *(&v183[2] + 1) = 0;
      v93 = *(v90 + 56);
      *(v90 + 56) = *(&v183[3] + 1);
      *(&v183[3] + 1) = v93;
      *(v90 + 64) = *&v183[4];
      *&v183[4] = 0;
      v94 = *(v90 + 48);
      *(v90 + 48) = *&v183[3];
      *&v183[3] = v94;
      v95 = v185;
      *(v90 + 80) = v184;
      *(v90 + 96) = v95;
      LODWORD(v94) = v186;
      *(v90 + 112) = v186;
      if (v94 == 1)
      {
        *(v90 + 113) = BYTE1(v186);
      }

      v96 = BYTE2(v186);
      *(v90 + 114) = BYTE2(v186);
      if (v96 == 1)
      {
        *(v90 + 115) = BYTE3(v186);
      }

      v97 = BYTE4(v186);
      *(v90 + 116) = BYTE4(v186);
      if (v97 == 1)
      {
        *(v90 + 117) = BYTE5(v186);
      }

      *(v90 + 120) = v187;
      ++*(a1 + 80);
      ++*(a1 + 88);
      if (*(&v183[2] + 1))
      {
        if (v183[3])
        {
          (*(**(&v183[2] + 1) + 40))();
        }

        memset(&v183[2] + 8, 0, 32);
      }

      if (*&v183[0] && *&v183[2])
      {
        (*(**&v183[0] + 40))();
      }

      *&v183[0] = v79;
      re::DynamicArray<unsigned long>::add((v62 - 128), v183);
      v98 = *(v67 + 52);
      v99 = *(v62 - 224);
      if (v99 > v98)
      {
        goto LABEL_133;
      }

      v100 = v98 + 1;
      if (v99 < v100)
      {
        break;
      }

      if (v99 > v98 + 1)
      {
        v104 = 40 * v100;
        v105 = v98 + 1;
        do
        {
          re::DynamicArray<unsigned long>::deinit(*(v62 - 208) + v104);
          ++v105;
          v104 += 40;
        }

        while (v105 < *(v62 - 224));
LABEL_132:
        *(v62 - 224) = v100;
        ++*(v62 - 216);
        v99 = v98 + 1;
      }

LABEL_133:
      if (v99 <= v98)
      {
        v179 = 0;
        memset(v183, 0, sizeof(v183));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v180 = 136315906;
        *&v180[4] = "operator[]";
        *&v180[12] = 1024;
        *&v180[14] = 789;
        *&v180[18] = 2048;
        *&v180[20] = v98;
        *&v180[28] = 2048;
        *&v180[30] = v99;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v106 = (*(v62 - 208) + 40 * v98);
      *&v183[0] = v71;
      re::DynamicArray<re::TransitionCondition *>::add(v106, v183);
      v107 = v172;
      v108 = *(v62 - 160);
      v109 = *(v62 - 144);
      v108.i32[3] = 0;
      v107.i32[3] = 0;
      *(v62 - 160) = vminnmq_f32(v108, v107);
      v110 = v173;
      v109.i32[3] = 0;
      v110.i32[3] = 0;
      *(v62 - 144) = vmaxnmq_f32(v109, v110);
      LODWORD(v183[0]) = 0;
      memset(v183 + 8, 0, 48);
      if (v163)
      {
        if (re::MeshDefinition::skinningData(*v67, a1 + 264, v183))
        {
          v111 = *(v62 - 80);
          v112 = *(v62 - 72);
          if (v112 >= v111)
          {
            v113 = v112 + 1;
            if (v111 < v112 + 1)
            {
              if (*v158)
              {
                v114 = 2 * v111;
                v47 = v111 == 0;
                v115 = 8;
                if (!v47)
                {
                  v115 = v114;
                }

                if (v115 <= v113)
                {
                  v116 = v113;
                }

                else
                {
                  v116 = v115;
                }

                re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(v158, v116);
              }

              else
              {
                re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(v158, v113);
                ++*(v62 - 64);
              }
            }

            v112 = *(v62 - 72);
          }

          v117 = *(v62 - 56) + 56 * v112;
          *v117 = v183[0];
          *(v117 + 16) = v183[1];
          *(v117 + 32) = v183[2];
          *(v117 + 48) = *&v183[3];
          ++*(v62 - 72);
          ++*(v62 - 64);
          v68 = 1;
        }

        else
        {
          v68 = 0;
        }
      }

      else
      {
        v68 = 0;
      }

      *v180 = 0;
      *&v180[8] = &str_67;
      HIDWORD(v181) = 0;
      memset(&v180[16], 0, 24);
      LOBYTE(v181) = 0;
      v118 = *(*(a1 + 56) + 8 * *(a1 + 40) - 8);
      if (v118)
      {
        v119 = (v118 + 8);
      }

      if (re::MeshDefinition::blendShapeData(v118, v180, v171, v69[6].u32[0], v71))
      {
        v120 = *(v62 - 40);
        v121 = *(v62 - 32);
        if (v121 >= v120)
        {
          v122 = v121 + 1;
          if (v120 < v121 + 1)
          {
            if (*v160)
            {
              v123 = 2 * v120;
              v47 = v120 == 0;
              v124 = 8;
              if (!v47)
              {
                v124 = v123;
              }

              if (v124 <= v122)
              {
                v125 = v122;
              }

              else
              {
                v125 = v124;
              }

              re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v160, v125);
            }

            else
            {
              re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v160, v122);
              ++*(v62 - 24);
            }
          }

          v121 = *(v62 - 32);
        }

        v126 = *(v62 - 16) + 56 * v121;
        v127 = v180[0];
        *v126 = *v126 & 0xFFFFFFFFFFFFFFFELL | v180[0] & 1;
        *v126 = *v180 & 0xFFFFFFFFFFFFFFFELL | v127 & 1;
        *(v126 + 8) = *&v180[8];
        *v180 = 0;
        *&v180[8] = &str_67;
        *(v126 + 16) = 0;
        *(v126 + 24) = 0;
        *(v126 + 32) = 0;
        *(v126 + 16) = *&v180[16];
        *&v180[16] = 0;
        *(v126 + 24) = *&v180[24];
        *&v180[24] = 0;
        v128 = *(v126 + 32);
        *(v126 + 32) = *&v180[32];
        *&v180[32] = v128;
        *(v126 + 40) = v181;
        *(v126 + 48) = v182;
        ++*(v62 - 32);
        ++*(v62 - 24);
      }

      if (v118)
      {
      }

      v129 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v180[16]);
      if (v180[0])
      {
        if (v180[0])
        {
        }
      }

      if (v170)
      {
        if (v170)
        {
        }
      }

      v67 += 56;
      if (v67 == v162)
      {
        if ((v68 & 1) == 0)
        {
          *(v62 - 72) = 0;
          ++*(v62 - 64);
        }

        goto LABEL_176;
      }
    }

    if (*(v62 - 232) < v100)
    {
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((v62 - 240), v100);
      v99 = *(v62 - 224);
    }

    v101 = v100 - v99;
    if (v100 > v99)
    {
      v102 = 40 * v99;
      do
      {
        v103 = *(v62 - 208) + v102;
        *(v103 + 32) = 0;
        *(v103 + 8) = 0;
        *(v103 + 16) = 0;
        *v103 = 0;
        *(v103 + 24) = 0;
        v102 += 40;
        --v101;
      }

      while (v101);
    }

    goto LABEL_132;
  }

LABEL_180:
  v130 = a4;
  if (v154)
  {
    v131 = 8 * v154;
    do
    {
      v132 = v130;
      v133 = *v130;
      if (*(*v130 + 32))
      {
        v134 = *(v133 + 40);
      }

      else
      {
        v134 = (v133 + 33);
      }

      v135 = re::UniqueNameGenerator::uniqueName(v164, v134, "Instance", v180);
      v136 = *&v180[8];
      LODWORD(v183[2]) = *(v133 + 56);
      v138 = *(v133 + 64);
      v139 = *(v133 + 80);
      v140 = *(v133 + 112);
      v184 = *(v133 + 96);
      v185 = v140;
      v183[3] = v138;
      v183[4] = v139;
      v141 = *(a1 + 192);
      v142 = *(a1 + 200);
      if (v142 >= v141)
      {
        v143 = v142 + 1;
        if (v141 < v142 + 1)
        {
          if (*(a1 + 184))
          {
            if (v141)
            {
              v144 = 2 * v141;
            }

            else
            {
              v144 = 8;
            }

            if (v144 <= v143)
            {
              v145 = v142 + 1;
            }

            else
            {
              v145 = v144;
            }

            re::DynamicArray<re::MeshResourceDefinition::Instance>::setCapacity((a1 + 184), v145);
          }

          else
          {
            re::DynamicArray<re::MeshResourceDefinition::Instance>::setCapacity((a1 + 184), v143);
            ++*(a1 + 208);
          }
        }

        v142 = *(a1 + 200);
      }

      v146 = *(a1 + 216) + 112 * v142;
      *v146 = 0u;
      *(v146 + 16) = 0u;
      *v146 = *&v183[0];
      *&v183[0] = 0;
      v147 = *(v146 + 16);
      *(v146 + 16) = *&v183[1];
      *&v183[1] = v147;
      *(v146 + 24) = *(&v183[1] + 1);
      *(&v183[1] + 1) = 0;
      v148 = *(v146 + 8);
      *(v146 + 8) = *(&v183[0] + 1);
      *(&v183[0] + 1) = v148;
      v149 = v183[3];
      v150 = v183[4];
      v151 = v185;
      *(v146 + 80) = v184;
      *(v146 + 96) = v151;
      *(v146 + 48) = v149;
      *(v146 + 64) = v150;
      *(v146 + 32) = v183[2];
      ++*(a1 + 200);
      ++*(a1 + 208);
      v152 = *&v183[0];
      if (*&v183[0] && (BYTE8(v183[0]) & 1) != 0)
      {
        v152 = (*(**&v183[0] + 40))();
      }

      if (v180[0])
      {
        if (v180[0])
        {
        }
      }

      v130 = v132 + 1;
      v131 -= 8;
    }

    while (v131);
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v164);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v167);
  return a1;
}

void re::MeshResourceDefinition::~MeshResourceDefinition(re::MeshResourceDefinition *this)
{
  *this = &unk_1F5D08F48;
  v2 = this + 24;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 33);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 224);
  re::DynamicArray<re::MeshResourceDefinition::Instance>::deinit(this + 184);
  re::DynamicArray<re::MeshResourceDefinition::Model>::deinit(this + 144);
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::DynamicArray<re::MeshResourceDefinition::Part>::deinit(this + 64);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D08F48;
  v2 = this + 24;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 33);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 224);
  re::DynamicArray<re::MeshResourceDefinition::Instance>::deinit(this + 184);
  re::DynamicArray<re::MeshResourceDefinition::Model>::deinit(this + 144);
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::DynamicArray<re::MeshResourceDefinition::Part>::deinit(this + 64);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::MeshModelDefinition::PartEntry>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshModelDefinition::PartEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshModelDefinition::PartEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::MeshModelDefinition::PartEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshModelDefinition::PartEntry>::setCapacity(v5, a2);
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
              goto LABEL_18;
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
        v10 = 56 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          *(v11 + 8) = *(v8 + 8);
          *(v11 + 1) = 0u;
          *(v11 + 2) = 0u;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = 0;
          v11[5] = *(v8 + 40);
          *(v8 + 40) = 0;
          v13 = v11[3];
          v12 = v11[4];
          v14 = *(v8 + 32);
          v11[3] = *(v8 + 24);
          v11[4] = v14;
          *(v8 + 24) = v13;
          *(v8 + 32) = v12;
          v11[6] = *(v8 + 48);
          re::DynamicString::deinit((v8 + 16));
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 56;
          v11 += 7;
          v10 -= 56;
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

void *re::DynamicArray<re::MeshResourceDefinition::Model>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshResourceDefinition::Model>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
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
        v11 = v8 + 240 * v9;
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
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
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
          *(v12 + 48) = v18;
          *(v12 + 56) = v17;
          v20 = *(v8 + v10 + 96);
          *(v13 + 5) = *(v8 + v10 + 80);
          *(v13 + 6) = v20;
          v13[18] = 0;
          *(v13 + 34) = 0;
          v13[15] = 0;
          v13[16] = 0;
          v13[14] = 0;
          v21 = *(v8 + v10 + 120);
          v13[14] = *(v8 + v10 + 112);
          *(v8 + v10 + 112) = 0;
          v13[15] = v21;
          *(v12 + 120) = 0;
          v22 = v7[v10 / 8 + 16];
          v13[16] = *(v8 + v10 + 128);
          *(v12 + 128) = v22;
          v23 = v7[v10 / 8 + 18];
          v13[18] = *(v8 + v10 + 144);
          *(v12 + 144) = v23;
          *(v12 + 136) = *(v8 + v10 + 136) + 1;
          *(v13 + 34) = LODWORD(v7[v10 / 8 + 17]) + 1;
          v13[23] = 0;
          v13[20] = 0;
          v13[21] = 0;
          v13[19] = 0;
          *(v13 + 44) = 0;
          v24 = *(v8 + v10 + 160);
          v13[19] = *(v8 + v10 + 152);
          *(v8 + v10 + 152) = 0;
          v13[20] = v24;
          *(v12 + 160) = 0;
          v25 = v7[v10 / 8 + 21];
          v13[21] = *(v8 + v10 + 168);
          *(v12 + 168) = v25;
          v26 = v7[v10 / 8 + 23];
          v13[23] = *(v8 + v10 + 184);
          *(v12 + 184) = v26;
          *(v12 + 176) = *(v8 + v10 + 176) + 1;
          *(v13 + 44) = LODWORD(v7[v10 / 8 + 22]) + 1;
          v13[28] = 0;
          v13[25] = 0;
          v13[26] = 0;
          v13[24] = 0;
          *(v13 + 54) = 0;
          v27 = (v8 + v10 + 192);
          v28 = *(v8 + v10 + 200);
          v13[24] = *v27;
          *v27 = 0;
          v13[25] = v28;
          *(v12 + 200) = 0;
          v29 = v7[v10 / 8 + 26];
          v13[26] = *(v8 + v10 + 208);
          *(v12 + 208) = v29;
          v30 = v7[v10 / 8 + 28];
          v13[28] = *(v8 + v10 + 224);
          *(v12 + 224) = v30;
          *(v12 + 216) = *(v8 + v10 + 216) + 1;
          *(v13 + 54) = LODWORD(v7[v10 / 8 + 27]) + 1;
          re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v27);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 152);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 112);
          re::DynamicString::deinit((v8 + v10 + 40));
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v8 + v10);
          v10 += 240;
        }

        while (v12 + 240 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshResourceDefinition::Part>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshResourceDefinition::Part>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_22;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
LABEL_22:
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
        v11 = v8 + 144 * v9;
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
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          *(v13 + 5) = 0u;
          *(v13 + 7) = 0u;
          v13[8] = *(v8 + v10 + 64);
          v17 = *(v8 + v10 + 48);
          v13[5] = *(v8 + v10 + 40);
          *(v12 + 40) = 0;
          v18 = *(v8 + v10 + 56);
          *(v12 + 64) = 0;
          v20 = v7[v10 / 8 + 6];
          v19 = v7[v10 / 8 + 7];
          v13[6] = v17;
          v13[7] = v18;
          *(v12 + 48) = v20;
          *(v12 + 56) = v19;
          v21 = *(v8 + v10 + 96);
          *(v13 + 5) = *(v8 + v10 + 80);
          *(v13 + 6) = v21;
          LODWORD(v18) = *(v8 + v10 + 112);
          *(v13 + 112) = v18;
          if (v18 == 1)
          {
            *(v13 + 113) = *(v12 + 113);
          }

          v22 = *(v12 + 114);
          *(v13 + 114) = v22;
          if (v22 == 1)
          {
            BYTE3(v7[v10 / 8 + 14]) = *(v8 + v10 + 115);
          }

          v23 = &v7[v10 / 8];
          v24 = *(v12 + 116);
          BYTE4(v7[v10 / 8 + 14]) = v24;
          if (v24 == 1)
          {
            *(v23 + 117) = *(v8 + v10 + 117);
          }

          *(v23 + 15) = *(v12 + 120);
          re::DynamicString::deinit((v12 + 40));
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 144;
        }

        while (v12 + 144 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_22;
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshResourceDefinition::Instance>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshResourceDefinition::Instance>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = v8 + 112 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 48);
          v17 = *(v8 + 64);
          v18 = *(v8 + 96);
          *(v11 + 5) = *(v8 + 80);
          *(v11 + 6) = v18;
          *(v11 + 3) = v16;
          *(v11 + 4) = v17;
          *(v11 + 2) = *(v8 + 32);
          re::DynamicString::deinit(v8);
          v8 += 112;
          v11 += 14;
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

uint64_t re::DynamicArray<re::MeshResourceDefinition::Instance>::deinit(uint64_t a1)
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
        v5 = 112 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 112);
          v5 -= 112;
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

uint64_t re::DynamicArray<re::MeshResourceDefinition::Model>::deinit(uint64_t a1)
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
        v5 = 240 * v4;
        do
        {
          re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v3 + 192);
          re::DynamicArray<unsigned long>::deinit(v3 + 152);
          re::DynamicArray<unsigned long>::deinit(v3 + 112);
          re::DynamicString::deinit((v3 + 40));
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v3);
          v3 += 240;
          v5 -= 240;
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

uint64_t re::DynamicArray<re::MeshResourceDefinition::Part>::deinit(uint64_t a1)
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
        v5 = 144 * v4;
        do
        {
          re::DynamicString::deinit((v3 + 40));
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 144;
          v5 -= 144;
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

uint64_t re::anonymous namespace::hashNSArrayPtrs(void *a1)
{
  v2 = [a1 count];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [a1 objectAtIndex_];
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
    v5 = (v5 + ((v7 ^ (v7 >> 31)) << 6) + ((v7 ^ (v7 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v7 ^ (v7 >> 31);
    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t re::getOrCreateComputePipelineState(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = re::Hash<re::DynamicString>::operator()(info, a2);
  Key = re::MetalFunctionConfiguration::generateKey((a2 + 32));
  if (*(a2 + 176))
  {
    v6 = *(a2 + 177);
  }

  else
  {
    v6 = 0;
  }

  v7 = ((((v4 << 6) + (v4 >> 2) + Key - 0x61C8864680B583E9) ^ v4) + (v6 << 6) - 0x61C8864680B583E9) ^ v6;
  v8 = *(a2 + 168);
  if (v8)
  {
    v10 = (v7 - 0x61C8864680B583E9 + (v9 << 6) + (v9 >> 2)) ^ v9;
    v12 = (v10 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
    v7 = (v12 - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13;
  }

  v14 = *(a1 + 48);
  os_unfair_lock_lock((v14 + 152));
  if (!*(v14 + 160) || (v16 = *(*(v14 + 168) + 4 * (v7 % *(v14 + 184))), v16 == 0x7FFFFFFF))
  {
LABEL_11:
    MetalFunction = re::getOrCreateMetalFunction(a1, a2, (a2 + 32), v15);
    v19 = mach_absolute_time();
    re::ShaderManager::makeComputePipelineDescriptor(*(a1 + 48), &v49);
    if (*(a2 + 168))
    {
      [v49 setLinkedFunctions_];
    }

    [v49 setComputeFunction_];
    if (*(a2 + 176) == 1)
    {
      [v49 setThreadGroupSizeIsMultipleOfThreadExecutionWidth_];
    }

    re::mtl::Device::makeComputePipelineState((a1 + 208), &v49, info);
    v20 = *info;
    if (!*info)
    {
    }

    v21 = mach_absolute_time();
    v22 = v21;
    v23 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v21 = mach_timebase_info(info);
      if (v21)
      {
        v26 = NAN;
        goto LABEL_23;
      }

      LODWORD(v24) = *info;
      LODWORD(v25) = *&info[4];
      v23 = v24 / v25;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v23;
    }

    v26 = v23 * (v22 - v19);
LABEL_23:
    v28 = (v26 / 1000000.0);
    v29 = *re::graphicsLogObjects(v21);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 8))
      {
        v30 = *(a2 + 16);
      }

      else
      {
        v30 = a2 + 9;
      }

      *info = 136446466;
      *&info[4] = v30;
      v55 = 1024;
      *v56 = v28;
      _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "PSO compilation completed for compute pipeline %{public}s in %d", info, 0x12u);
    }

    if (*(v14 + 160))
    {
      v31 = v7 % *(v14 + 184);
      v32 = *(*(v14 + 168) + 4 * v31);
      if (v32 != 0x7FFFFFFF)
      {
        v33 = *(v14 + 176);
        if (*(v33 + 24 * v32 + 8) == v7)
        {
LABEL_33:
          v27 = v33 + 24 * v32 + 16;
          goto LABEL_36;
        }

        while (1)
        {
          LODWORD(v32) = *(v33 + 24 * v32) & 0x7FFFFFFF;
          if (v32 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v33 + 24 * v32 + 8) == v7)
          {
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      LODWORD(v31) = 0;
    }

    v34 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v14 + 160, v31, v7);
    *(v34 + 8) = v7;
    *(v34 + 16) = v20;
    v27 = v34 + 16;
    ++*(v14 + 200);
LABEL_36:
    if ((atomic_load_explicit(&qword_1EE1B9D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9D00))
    {
      re::Defaults::BOOLValue("enableShaderDebugLogs", v44, info);
      if (info[0])
      {
        v45 = info[1];
      }

      else
      {
        v45 = 0;
      }

      _MergedGlobals_460 = v45;
      __cxa_guard_release(&qword_1EE1B9D00);
    }

    if (v28 > 10 || _MergedGlobals_460 == 1)
    {
      re::MetalFunctionConfiguration::permutationString((a2 + 32), info);
      if (*(a2 + 8))
      {
        v35 = *(a2 + 16);
      }

      else
      {
        v35 = a2 + 9;
      }

      if (*(a2 + 176))
      {
        v36 = *(a2 + 177);
      }

      else
      {
        v36 = 0;
      }

      if (info[8])
      {
        v37 = *&v56[2];
      }

      else
      {
        v37 = &info[9];
      }

      re::DynamicString::format("name=%s tgsimotew=%d fc=%s", &v46, v35, v36, v37);
      isFrameCaptureEnabled = re::mtl::Device::isFrameCaptureEnabled((a1 + 208));
      v39 = isFrameCaptureEnabled;
      v40 = *re::graphicsLogObjects(isFrameCaptureEnabled);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *&v48[7];
        v42 = "";
        if ((v47 & 1) == 0)
        {
          v41 = v48;
        }

        if (v39)
        {
          v42 = "(frame capture enabled)";
        }

        *buf = 136446466;
        v51 = v41;
        v52 = 2080;
        v53 = v42;
        _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Compiling PSO RT %{public}s %s", buf, 0x16u);
      }

      if (v46 && (v47 & 1) != 0)
      {
        (*(*v46 + 40))();
      }

      if (*info && (info[8] & 1) != 0)
      {
        (*(**info + 40))();
      }
    }

    if (v20)
    {
    }

    if (v49)
    {
    }

    goto LABEL_64;
  }

  v17 = *(v14 + 176);
  while (*(v17 + 24 * v16 + 8) != v7)
  {
    v16 = *(v17 + 24 * v16) & 0x7FFFFFFF;
    if (v16 == 0x7FFFFFFF)
    {
      goto LABEL_11;
    }
  }

  v27 = v17 + 24 * v16 + 16;
LABEL_64:
  os_unfair_lock_unlock((v14 + 152));
  return v27;
}

uint64_t re::MeshPart::MeshPart(uint64_t a1, uint64_t *a2, __int16 a3, uint64_t a4, unint64_t a5, int a6, int a7, int a8, _OWORD *a9, uint64_t a10, __int128 *a11, re::MeshPartFlags *a12, int a13, int a14)
{
  v109 = *MEMORY[0x1E69E9840];
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 200) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = xmmword_1E3047670;
  *(a1 + 368) = xmmword_1E3047680;
  *(a1 + 384) = xmmword_1E30476A0;
  *(a1 + 400) = xmmword_1E30474D0;
  v16.i64[0] = 0x7F0000007FLL;
  v16.i64[1] = 0x7F0000007FLL;
  *(a1 + 416) = vnegq_f32(v16);
  *(a1 + 432) = v16;
  *(a1 + 456) = 0;
  *(a1 + 448) = 0;
  *(a1 + 458) = 0;
  *(a1 + 466) = 0;
  *(a1 + 473) = 0;
  *(a1 + 460) = -1;
  *(a1 + 488) = 0;
  *(a1 + 496) = &str_67;
  *(a1 + 512) = 0;
  *(a1 + 520) = 3;
  *(a1 + 524) = 0x180197E00000001;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v17 = &v65;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  v80 = 1;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v88 = 0;
  v87 = 0;
  v92 = 0;
  v93 = 0;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  v94 = 0;
  v65 = 0;
  v18 = re::BufferTable::deinit((&v67 + 8));
  v62 = a5;
  if (a5)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = a4 + 88 * v20;
      v23 = *(v22 + 8);
      if (v23)
      {
        v25 = *(v22 + 16);
        if (!v25)
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        LOBYTE(v24) = *v25;
      }

      else
      {
        v24 = v23 >> 8;
        v25 = (v22 + 9);
      }

      if (v24)
      {
        v24 = v24;
        v26 = v25[1];
        if (v26)
        {
          v27 = v25 + 2;
          do
          {
            v24 = 31 * v24 + v26;
            v28 = *v27++;
            v26 = v28;
          }

          while (v28);
        }

        v29 = v24 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = 0;
      }

LABEL_14:
      *&v104 = v29;
      LOBYTE(v96) = v21;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(&v67 + 1, &v104, &v96);
      if (v93 <= v21)
      {
        v93 = v21 + 1;
      }

      v30 = re::BufferTable::setBuffer((&v67 + 8), v21, (v22 + 40));
      v32 = *(v22 + 32);
      v33 = *(v22 + 33);
      v34 = *(v22 + 33) != 0;
      v36 = *(v22 + 80);
      v35 = *(v22 + 84);
      if (v35 == -1)
      {
        v30 = re::sizeFromVertexFormat(*(v22 + 32), v31);
        LOWORD(v35) = (v30 + 3) & 0x1FC;
        if (!v33)
        {
          LOWORD(v35) = v30;
        }
      }

      v37 = *(&v66 + 1);
      if (*(&v66 + 1) <= v20)
      {
        v64[0] = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v96 = 136315906;
        v97 = "operator[]";
        v98 = 1024;
        v99 = 468;
        v100 = 2048;
        v101 = v20;
        v102 = 2048;
        v103 = v37;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_47:
        v95 = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v96 = 136315906;
        v97 = "operator[]";
        v98 = 1024;
        v99 = 468;
        v100 = 2048;
        v101 = v20;
        v102 = 2048;
        v103 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_48:
        v64[0] = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v96 = 136315906;
        v97 = "operator[]";
        v98 = 1024;
        v99 = 476;
        v100 = 2048;
        v101 = v36;
        v102 = 2048;
        v103 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v38 = v67 + 16 * v20;
      *v38 = v35;
      *(v38 + 2) = v34;
      *(v38 + 4) = 1;
      *(v38 + 5) = v33;
      *(v38 + 8) = v36;
      *(v38 + 12) = v32;
      if (*(v22 + 8))
      {
        v39 = *(v22 + 16);
      }

      else
      {
        v39 = (v22 + 9);
      }

      v64[0] = 0;
      v64[1] = &str_67;
      v22 = *(a1 + 336);
      if (v22 <= v20)
      {
        goto LABEL_47;
      }

      v40 = re::StringID::operator=((*(a1 + 344) + 16 * v20), v64);
      if (v64[0])
      {
        if (v64[0])
        {
        }
      }

      v20 = ++v21;
    }

    while (v62 > v21);
  }

  for (i = 460; i != 481; ++i)
  {
    v43 = *v41;
    v41 += 2;
    *&v104 = v43 & 0x7FFFFFFFFFFFFFFFLL;
    v44 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&v67 + 1, &v104);
    if (v44 == -1)
    {
      v45 = -1;
    }

    else
    {
      v45 = *(v68 + 16 * v44 + 8);
    }

    *(a1 + i) = v45;
  }

  *&v104 = 0x5353CF4AA93DFAB9;
  v46 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&v67 + 1, &v104);
  re::AttributeTableBuilder::makeAttributeTableAndReset(&v65, a1);
  if (v46 == -1)
  {
    *(a1 + 448) = 0;
  }

  else
  {
    v47 = a1;
    do
    {
      v48 = v47;
      v47 = *v47;
      v17 = v48[3];
      if (v47)
      {
        v49 = v17 == 0;
      }

      else
      {
        v49 = 0;
      }
    }

    while (v49);
    v36 = *(a1 + 460);
    if (v17 <= v36)
    {
      goto LABEL_48;
    }

    v50 = *(v48[4] + 16 * v36 + 12) == 36;
    *(a1 + 448) = a6;
    *(a1 + 456) = v50;
  }

  *(a1 + 452) = a7;
  re::StringID::operator=((a1 + 488), a2);
  *(a1 + 504) = a10;
  *(a1 + 458) = a3;
  *(a1 + 516) = a14;
  if (a13 == -1)
  {
    v51 = a7;
  }

  else
  {
    v51 = a13;
  }

  *(a1 + 512) = v51;
  v52 = a9[1];
  *(a1 + 416) = *a9;
  *(a1 + 432) = v52;
  *(a1 + 528) = re::MeshPartFlags::flattenToRenderFlags(a12);
  *(a1 + 524) = a8;
  v53 = *a11;
  v54 = a11[1];
  v55 = a11[3];
  *(a1 + 384) = a11[2];
  *(a1 + 400) = v55;
  *(a1 + 352) = v53;
  *(a1 + 368) = v54;
  re::AttributeTableBuilder::~AttributeTableBuilder(&v65);
  return a1;
}

void re::MeshPart::~MeshPart(re::MeshPart *this)
{
  re::StringID::destroyString((this + 488));
  re::FixedArray<re::StringID>::deinit(this + 41);

  re::AttributeTable::~AttributeTable(this);
}

double re::MeshPart::computeTriangleCount(re::MeshPart *this)
{
  v1 = this;
  v65 = *MEMORY[0x1E69E9840];
  if (*(this + 520) != 4)
  {
    return result;
  }

  v2 = *(this + 460);
  if (v2 == 255)
  {
    return result;
  }

  if (*(this + 112) < 3u)
  {
    return result;
  }

  re::AttributeTable::buffers(this);
  if (v4 <= v2)
  {
    return result;
  }

  v5 = v1;
  do
  {
    v6 = *(v5 + 3);
    v5 = *v5;
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  while (v7);
  if (v6 <= v2)
  {
    return result;
  }

  v8 = re::AttributeTable::buffers(v1);
  if (v9 <= v2)
  {
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v2, v9);
    _os_crash();
    __break(1u);
    goto LABEL_74;
  }

  v10 = v8 + 24 * v2;
  do
  {
    v11 = v1;
    v1 = *v1;
    v12 = *(v11 + 3);
    if (v1)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 0;
    }
  }

  while (v13);
  if (v12 <= v2)
  {
LABEL_74:
    v51[0] = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v45 = v12;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *&v58[4] = "operator[]";
    v59 = 1024;
    v60 = 476;
    v61 = 2048;
    v62 = v2;
    v63 = 2048;
    *v64 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v14 = re::sizeFromVertexFormat(*(*(v11 + 4) + 16 * v2 + 12), v9);
  v15 = *(v10 + 4);
  v16 = *(v10 + 5);
  v53 = *v10;
  *&v54 = __PAIR64__(v16, v15);
  *v58 = 0;
  HIDWORD(v62) = 0;
  *&v64[2] = v15;
  *&v64[6] = v16;
  v51[0] = v58;
  v51[1] = v58;
  if (DWORD2(v53) == -1)
  {
    v46 = std::__throw_bad_variant_access[abi:nn200100]();
    *&result = re::makeDrawCallHelper(v46, v47, v48, v49, v50).n128_u64[0];
  }

  else
  {
    v17 = v14;
    v52 = v51;
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSliceC1ENS6_10BufferViewEmmE3__0ZNS9_C1ESA_mmE3__1EEEEEJRNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[DWORD2(v53)])(&v52, &v53);
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v58, &v53);
    v18 = 2 * v17;
    v19 = 0;
    v20 = v54 / v17 - 2;
    if (v54 / v17 != 2)
    {
      v21 = *(&v53 + 1) + 1;
      v22 = v17 - 1;
      v23 = *(&v53 + 1) + 1 + v18;
      do
      {
        v24 = *(&v53 + 1) + v19;
        if (*(*(&v53 + 1) + v19) == 15)
        {
          v25 = 0;
          while (v22 != v25)
          {
            v26 = *(v21 + v25++);
            if (v26 != 15)
            {
              if (v25 >= v17)
              {
                break;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          if (*(v24 + v17) == 15)
          {
            v27 = 0;
            while (v22 != v27)
            {
              v28 = *(v21 + v17 + v27++);
              if (v28 != 15)
              {
                if (v27 >= v17)
                {
                  break;
                }

                goto LABEL_31;
              }
            }
          }

          else
          {
LABEL_31:
            if (*(v24 + 2 * v17) != 15)
            {
              break;
            }

            v29 = 0;
            while (v22 != v29)
            {
              v30 = *(v23 + v29++);
              if (v30 != 15)
              {
                if (v29 < v17)
                {
                  goto LABEL_37;
                }

                break;
              }
            }
          }
        }

        v19 += v17;
        v21 += v17;
        v23 += v17;
      }

      while (v19 < v20);
    }

LABEL_37:
    if (v19 < v20)
    {
      v31 = 0;
      v32 = *(&v53 + 1) + 1 + v18;
      v33 = v17 - 1;
      do
      {
        if (*(*(&v53 + 1) + v18 + v19) == 15)
        {
          v34 = 0;
          while (v33 != v34)
          {
            v35 = *(v32 + v19 + v34++);
            if (v35 != 15)
            {
              if (v34 < v17)
              {
                goto LABEL_44;
              }

              break;
            }
          }

          v36 = *(&v53 + 1) + 1 + v19;
          v37 = v32 + v19;
          do
          {
            v38 = *(&v53 + 1) + v19;
            if (*(*(&v53 + 1) + v19) == 15)
            {
              v39 = 0;
              while (v33 != v39)
              {
                v40 = *(v36 + v39++);
                if (v40 != 15)
                {
                  if (v39 >= v17)
                  {
                    break;
                  }

                  goto LABEL_51;
                }
              }
            }

            else
            {
LABEL_51:
              if (*(v38 + v17) == 15)
              {
                v41 = 0;
                while (v33 != v41)
                {
                  v42 = *(v36 + v17 + v41++);
                  if (v42 != 15)
                  {
                    if (v41 >= v17)
                    {
                      break;
                    }

                    goto LABEL_56;
                  }
                }
              }

              else
              {
LABEL_56:
                if (*(v38 + 2 * v17) != 15)
                {
                  break;
                }

                v43 = 0;
                while (v33 != v43)
                {
                  v44 = *(v37 + v43++);
                  if (v44 != 15)
                  {
                    if (v43 < v17)
                    {
                      goto LABEL_62;
                    }

                    break;
                  }
                }
              }
            }

            v19 += v17;
            v36 += v17;
            v37 += v17;
          }

          while (v19 < v20);
        }

        else
        {
LABEL_44:
          ++v31;
          v19 += v17;
        }

LABEL_62:
        ;
      }

      while (v19 < v20);
    }

    if (v53 == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v53 + 8));
    }

    else if (*(&v54 + 1) && (v55 & 1) != 0)
    {
      (*(**(&v54 + 1) + 40))();
    }

    if (HIDWORD(v62) != -1)
    {
      (off_1F5D08F98[HIDWORD(v62)])(&v53, v58);
    }
  }

  return result;
}

__n128 re::makeDrawCallHelper(__n128 *a1, __n128 *a2, uint64_t a3, unsigned __int32 a4, char a5)
{
  v5 = a2[1].n128_u64[1];
  if (a2[12].n128_u8[0] == 1)
  {
    a1[5].n128_u8[0] = a2[12].n128_u8[1] | a5;
  }

  a1[4].n128_u64[1] = a2[2].n128_u64[1];
  v6 = a1->n128_u16[0] & 0xFFFE;
  if (*(v5 + 460) != 255)
  {
    ++v6;
  }

  a1->n128_u16[0] = v6;
  v7 = v6 & 0xFFF1 | (2 * (*(v5 + 520) & 7));
  a1->n128_u16[0] = v7;
  v8 = v7 & 0xFFBF | ((a2[12].n128_u16[2] & 1) << 6);
  a1->n128_u16[0] = v8;
  v9 = a2[12].n128_u32[1];
  if ((v9 & 0x800) != 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = -2;
  }

  v11 = v10 & a1->n128_u16[5];
  if ((v9 & 0x1000) != 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = -3;
  }

  a1->n128_u16[5] = v11 & v12;
  v13 = v8 & 0xFDFF | (((v9 & 0x60) != 96) << 9);
  a1->n128_u16[0] = v13;
  if ((v9 & 0x60) != 0x60)
  {
    v14 = a2[12].n128_u32[1];
    if ((v14 & 0x20) != 0)
    {
      v15 = 1024;
    }

    else
    {
      v15 = 2048;
    }

    if ((v14 & 0x40) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    v13 = v16 | v13 & 0xF3FF;
    a1->n128_u16[0] = v13;
  }

  v17 = a2[12].n128_u32[1] & 0x300000;
  v18 = v13 & 0xEFFF | ((v17 != 0) << 12);
  a1->n128_u16[0] = v18;
  if (v17)
  {
    v19 = a2[12].n128_u32[1];
    if ((v19 & 0x100000) != 0)
    {
      LOWORD(v20) = 0;
    }

    else
    {
      v20 = ((v19 >> 21) & 1) << 13;
    }

    v18 = v20 | v18 & 0xDFFF;
    a1->n128_u16[0] = v18;
  }

  a1[6].n128_u64[1] = *(v5 + 496);
  v21 = *(v5 + 448);
  v22 = v18 & 0xFF7F | ((*(v5 + 456) & 1) << 7);
  a1->n128_u16[0] = v22;
  a1->n128_u16[0] = v22 & 0xFEFF | (((a2[12].n128_u8[4] & 2) != 0) << 8);
  a1[1].n128_u32[0] = *(v5 + 452);
  a1[1].n128_u32[1] = v21;
  a1->n128_u8[2] = *(v5 + 460);
  a1[4].n128_u64[0] = v5;
  a1->n128_u32[1] = a2[3].n128_u32[2];
  a1[2].n128_u32[3] = a2[3].n128_u32[3];
  a1[1].n128_u32[2] = *(v5 + 516);
  a1->n128_u8[8] = *(v5 + 467);
  a1[2].n128_u32[1] = a4;
  v23 = a2[3].n128_u32[0];
  if (v23 <= 1)
  {
    v23 = *(v5 + 524);
  }

  a1[2].n128_u32[0] = v23;
  a1[3].n128_u64[1] = a2[1].n128_u64[0];
  a1[5].n128_u64[1] = a2->n128_u64[0];
  a1[6].n128_u32[0] = a2[3].n128_u32[1];
  a1->n128_u8[9] = a2[4].n128_u8[3];
  a1[6].n128_u16[2] = *(v5 + 458);
  v24 = a2[14].n128_u64[1];
  if (v24)
  {
    LOBYTE(v24) = *v24 != 0;
  }

  a1->n128_u8[3] = v24;
  result = a2[14];
  a1[7] = result;
  a1[8].n128_u64[0] = *(v5 + 504);
  return result;
}

uint64_t re::addDrawCall(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int32 a4, uint64_t a5)
{
  v10 = re::BucketArray<re::DrawCall,128ul>::addUninitialized(a1);
  re::DrawCall::DrawCall(v10);
  re::makeDrawCallHelper(v11, a2, a3, a4, *(a5 + 8));
  *(v10 + 84) = *(a1 + 96);
  if (*(a5 + 9) == 1)
  {
    *(v10 + 147) = *(a5 + 10);
    *(v10 + 151) = *(a5 + 14);
    *(v10 + 152) = *(a5 + 15);
    v12 = *(a5 + 26);
    if ((*(v10 + 145) & 1) == 0)
    {
      *(v10 + 145) = 1;
    }

    *(v10 + 146) = v12;
  }

  if (*(v10 + 156))
  {
    if ((*(a5 + 28) & 1) == 0)
    {
      *(v10 + 156) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if ((*(a5 + 28) & 1) == 0)
    {
      goto LABEL_11;
    }

    *(v10 + 156) = 1;
  }

  *(v10 + 160) = *(a5 + 32);
LABEL_11:
  v13 = *(a1 + 96);
  v14 = *(a1 + 64);
  if (v13 + 1 > v14 << 7)
  {
    re::BucketArray<re::Matrix4x4<float>,128ul>::setBucketsCapacity((a1 + 56), (v13 + 128) >> 7);
    v14 = *(a1 + 64);
  }

  if (v14 <= v13 >> 7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_37:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_38:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_39:
    v10 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v38 = *(a5 + 4);
    if ((*(v10 + 48) & 1) == 0)
    {
      *(v10 + 48) = 1;
    }

    *(v10 + 52) = v38;
    return v10;
  }

  v15 = *(a1 + 88);
  if (*(a1 + 72))
  {
    v15 = a1 + 80;
  }

  v16 = *(v15 + 8 * (v13 >> 7));
  ++*(a1 + 96);
  ++*(a1 + 104);
  v17 = (v16 + ((v13 & 0x7F) << 6));
  v18 = *(a2 + 80);
  v19 = *(a2 + 96);
  v20 = *(a2 + 128);
  v17[2] = *(a2 + 112);
  v17[3] = v20;
  *v17 = v18;
  v17[1] = v19;
  v21 = *(*(v10 + 72) + 96);
  if (v21)
  {
    v22 = v21 + 152;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 152);
  v24 = *(a1 + 120);
  if (v23 + 1 > v24 << 7)
  {
    re::BucketArray<re::ConstantTable const*,128ul>::setBucketsCapacity((a1 + 112), (v23 + 128) >> 7);
    v24 = *(a1 + 120);
  }

  if (v24 <= v23 >> 7)
  {
    goto LABEL_37;
  }

  v25 = *(a1 + 144);
  if (*(a1 + 128))
  {
    v25 = a1 + 136;
  }

  v26 = *(v25 + 8 * (v23 >> 7));
  ++*(a1 + 152);
  ++*(a1 + 160);
  *(v26 + 8 * (v23 & 0x7F)) = v22;
  v27 = *(a2 + 208);
  v28 = *(a2 + 200);
  v29 = *(a1 + 208);
  v30 = *(a1 + 176);
  if (v29 + 1 > v30 << 7)
  {
    re::BucketArray<float,128ul>::setBucketsCapacity((a1 + 168), (v29 + 128) >> 7);
    v30 = *(a1 + 176);
  }

  if (v30 <= v29 >> 7)
  {
    goto LABEL_38;
  }

  v31 = *(a1 + 200);
  if (*(a1 + 184))
  {
    v31 = a1 + 192;
  }

  v32 = *(v31 + 8 * (v29 >> 7));
  ++*(a1 + 208);
  ++*(a1 + 216);
  *(v32 + 4 * (v29 & 0x7F)) = v27 * v28;
  v33 = *(a1 + 264);
  v34 = *(a1 + 232);
  if (v33 + 1 > v34 << 7)
  {
    re::BucketArray<unsigned int,128ul>::setBucketsCapacity((a1 + 224), (v33 + 128) >> 7);
    v34 = *(a1 + 232);
  }

  if (v34 <= v33 >> 7)
  {
    goto LABEL_39;
  }

  v35 = *(a1 + 256);
  if (*(a1 + 240))
  {
    v35 = a1 + 248;
  }

  v36 = *(v35 + 8 * (v33 >> 7));
  ++*(a1 + 264);
  ++*(a1 + 272);
  *(v36 + 4 * (v33 & 0x7F)) = *(a2 + 216);
  if (*a5 == 1)
  {
    goto LABEL_40;
  }

  return v10;
}

uint64_t re::addInstancedDrawCall(re::DrawTable *a1, __n128 *a2, uint64_t a3, unsigned __int32 a4, unsigned int a5, uint64_t a6)
{
  v12 = re::BucketArray<re::DrawCall,128ul>::addUninitialized(a1);
  re::DrawCall::DrawCall(v12);
  re::makeDrawCallHelper(v13, a2, a3, a4, *(a6 + 8));
  *(v12 + 3) = 2;
  *(v12 + 32) = a5;
  *(v12 + 84) = *(a1 + 12);
  if (*(a6 + 9) == 1)
  {
    *(v12 + 147) = *(a6 + 10);
    *(v12 + 151) = *(a6 + 14);
    *(v12 + 152) = *(a6 + 15);
    v14 = *(a6 + 26);
    if ((*(v12 + 145) & 1) == 0)
    {
      *(v12 + 145) = 1;
    }

    *(v12 + 146) = v14;
  }

  re::DrawTable::expandCompanionData(a1, a5);
  if (*a6 == 1)
  {
    v16 = *(a6 + 4);
    if ((*(v12 + 48) & 1) == 0)
    {
      *(v12 + 48) = 1;
    }

    *(v12 + 52) = v16;
  }

  return v12;
}

uint64_t *re::DrawTable::expandCompanionData(re::DrawTable *this, uint64_t a2)
{
  v4 = *(this + 12);
  re::BucketArray<re::Matrix4x4<float>,128ul>::resize(this + 56, v4 + a2);
  re::BucketArray<re::ConstantTable const*,128ul>::resize(this + 14, v4 + a2);
  re::BucketArray<float,128ul>::resize(this + 21, v4 + a2);

  return re::BucketArray<unsigned int,128ul>::resize(this + 28, v4 + a2);
}

unint64_t re::BucketArray<re::Matrix4x4<float>,128ul>::resize(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](v3, v5++);
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > *(result + 8) << 7)
    {
      result = re::BucketArray<re::Matrix4x4<float>,128ul>::setBucketsCapacity(result, (a2 + 127) >> 7);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](v3, v4);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
    }
  }

  ++*(v3 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ConstantTable const*,128ul>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[5];
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<re::ConstantTable const*,128ul>::operator[](v3, v5++);
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > result[1] << 7)
    {
      result = re::BucketArray<re::ConstantTable const*,128ul>::setBucketsCapacity(result, (a2 + 127) >> 7);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<re::ConstantTable const*,128ul>::operator[](v3, v4);
      *result = 0;
    }
  }

  ++*(v3 + 48);
  return result;
}

uint64_t *re::BucketArray<float,128ul>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[5];
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<unsigned int,128ul>::operator[](v3, v5++);
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > result[1] << 7)
    {
      result = re::BucketArray<float,128ul>::setBucketsCapacity(result, (a2 + 127) >> 7);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<unsigned int,128ul>::operator[](v3, v4);
      *result = 0;
    }
  }

  ++*(v3 + 48);
  return result;
}

uint64_t *re::BucketArray<unsigned int,128ul>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[5];
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<unsigned int,128ul>::operator[](v3, v5++);
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > result[1] << 7)
    {
      result = re::BucketArray<unsigned int,128ul>::setBucketsCapacity(result, (a2 + 127) >> 7);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<unsigned int,128ul>::operator[](v3, v4);
      *result = 0;
    }
  }

  ++*(v3 + 48);
  return result;
}

void re::RenderGraphPersistentResourceManager::~RenderGraphPersistentResourceManager(id *this)
{
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((this + 8));
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((this + 8));
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((this + 2));
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((this + 2));
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((this + 8));
  re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((this + 2));
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_19, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

double re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_4, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

double re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::RenderGraphPersistentResourceManager::pruneExpiredData(re::RenderGraphPersistentResourceManager *this, unsigned int a2)
{
  v4 = *(this + 12);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 4);
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        v5 = *(this + 12);
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v4 != v5)
  {
    v8 = *(this + 4);
    v9 = v5;
    do
    {
      if (*(this + 28) + *(v8 + 72 * v9 + 24) < a2)
      {
        v10 = *(v8 + 72 * v9 + 8);
        v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v28, this + 16, v10, v11 ^ (v11 >> 31));
        v12 = v30;
        if (v30 != 0x7FFFFFFF)
        {
          v13 = *(v8 + 72 * v30) & 0x7FFFFFFF;
          if (v31 == 0x7FFFFFFF)
          {
            *(*(this + 3) + 4 * v29) = v13;
          }

          else
          {
            *(v8 + 72 * v31) = *(v8 + 72 * v31) & 0x80000000 | v13;
          }

          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(this + 16, v12);
          v8 = *(this + 4);
          *(v8 + 72 * v12) = *(v8 + 72 * v12) & 0x80000000 | *(this + 13);
          LODWORD(v4) = *(this + 12);
          --*(this + 11);
          v14 = *(this + 14) + 1;
          *(this + 13) = v12;
          *(this + 14) = v14;
        }
      }

      v15 = v5 + 1;
      if (v4 <= v5 + 1)
      {
        v9 = (v5 + 1);
      }

      else
      {
        v9 = v4;
      }

      if (v5 == v9 - 1)
      {
LABEL_21:
        v15 = v9;
      }

      else
      {
        while ((*(v8 + 72 * v15) & 0x80000000) == 0)
        {
          if (v9 == ++v15)
          {
            goto LABEL_21;
          }
        }

        v9 = v15;
      }

      LODWORD(v5) = v15;
    }

    while (v4 != v15);
  }

  v16 = *(this + 24);
  if (v16)
  {
    v17 = 0;
    v18 = *(this + 10);
    while (1)
    {
      v19 = *v18;
      v18 += 14;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        v17 = *(this + 24);
        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if (v16 != v17)
  {
    v20 = *(this + 10);
    v21 = v17;
    do
    {
      if (*(this + 28) + *(v20 + 56 * v21 + 24) < a2)
      {
        v22 = *(v20 + 56 * v21 + 8);
        v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
        re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(v28, this + 64, v22, v23 ^ (v23 >> 31));
        v24 = v30;
        if (v30 != 0x7FFFFFFF)
        {
          v25 = *(v20 + 56 * v30) & 0x7FFFFFFF;
          if (v31 == 0x7FFFFFFF)
          {
            *(*(this + 9) + 4 * v29) = v25;
          }

          else
          {
            *(v20 + 56 * v31) = *(v20 + 56 * v31) & 0x80000000 | v25;
          }

          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(this + 64, v24);
          v20 = *(this + 10);
          *(v20 + 56 * v24) = *(v20 + 56 * v24) & 0x80000000 | *(this + 25);
          LODWORD(v16) = *(this + 24);
          --*(this + 23);
          v26 = *(this + 26) + 1;
          *(this + 25) = v24;
          *(this + 26) = v26;
        }
      }

      v27 = v17 + 1;
      if (v16 <= v17 + 1)
      {
        v21 = (v17 + 1);
      }

      else
      {
        v21 = v16;
      }

      if (v17 == v21 - 1)
      {
LABEL_44:
        v27 = v21;
      }

      else
      {
        while ((*(v20 + 56 * v27) & 0x80000000) == 0)
        {
          if (v21 == ++v27)
          {
            goto LABEL_44;
          }
        }

        v21 = v27;
      }

      LODWORD(v17) = v27;
    }

    while (v16 != v27);
  }
}

void re::RenderGraphPersistentResourceManager::registerPersistentTexture(re::RenderGraphPersistentResourceManager *this, const re::WeakStringID *a2, const re::WeakStringID *a3, const re::WeakStringID *a4, re::RenderFrame *a5, const re::RenderGraphTargetDescription *a6, BOOL *a7)
{
  v10 = *re::RenderGraphPersistentResourceManager::getOrCreateTextureInternal(this, a2, a4, a5, a6, a7);
  v11 = v10;
  re::RenderFrame::registerExternalTexture(a5, &v11, a3, a2, 0);
  if (v10)
  {
  }
}

uint64_t re::RenderGraphPersistentResourceManager::getOrCreateTextureInternal(re::RenderGraphPersistentResourceManager *this, const re::WeakStringID *a2, const re::WeakStringID *a3, re::RenderFrame *a4, const re::RenderGraphTargetDescription *a5, BOOL *a6)
{
  v10 = (*a3 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  v12 = v11 ^ (v11 >> 31);
  re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v26, this + 16, v10, v12);
  if (HIDWORD(v26[1]) == 0x7FFFFFFF || (v13 = *(this + 4) + 72 * HIDWORD(v26[1]), v14.i32[0] = *(v13 + 36), v14.i32[1] = *(v13 + 56), v14.i64[1] = *(v13 + 28), (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v14, *(a5 + 4))))) & 1) != 0) || (*(v13 + 44) == *(a5 + 6) ? (v15 = *(v13 + 40) == *(a5 + 9)) : (v15 = 0), v15 ? (v16 = *(v13 + 48) == *(a5 + 11)) : (v16 = 0), !v16))
  {
    memset(v26, 0, 48);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v27, this + 16, v10, v12);
    v19 = HIDWORD(v28);
    if (HIDWORD(v28) == 0x7FFFFFFF)
    {
      v20 = re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 16, v28, v27);
      *(v20 + 16) = 0;
      v18 = v20 + 16;
      *(v20 + 8) = v10;
      v26[0] = 0;
      v21 = *&v26[3];
      *(v20 + 24) = *&v26[1];
      *(v20 + 40) = v21;
      *(v20 + 56) = v26[5];
      ++*(this + 14);
    }

    else
    {
      ++*(this + 14);
      v22 = *(this + 4) + 72 * v19;
      v18 = v22 + 16;
      NS::SharedPtr<MTL::Texture>::operator=((v22 + 16), v26);
      v23 = v26[5];
      v24 = *&v26[3];
      *(v22 + 24) = *&v26[1];
      *(v22 + 56) = v23;
      *(v22 + 40) = v24;
      if (v26[0])
      {
      }
    }

    *(v18 + 24) = *(a5 + 9);
    textureDescFromTargetDesc(a5, &v27);
    re::mtl::Device::makeTexture(v27, this, v26);
    NS::SharedPtr<MTL::Texture>::operator=(v18, v26);
    if (v26[0])
    {

      v26[0] = 0;
    }

    if (v27)
    {
    }

    *(v18 + 12) = *(a5 + 12);
    *(v18 + 20) = *(a5 + 1);
    *(v18 + 40) = *(a5 + 2);
    *(v18 + 28) = *(a5 + 6);
    *(v18 + 32) = *(a5 + 11);
    v17 = 1;
  }

  else
  {
    v17 = 0;
    v18 = v13 + 16;
  }

  *a6 = v17;
  *(v18 + 8) = *(a4 + 48);
  return v18;
}

uint64_t re::RenderGraphPersistentResourceManager::registerPersistentBuffer(re::RenderGraphPersistentResourceManager *this, const re::WeakStringID *a2, const re::WeakStringID *a3, const re::WeakStringID *a4, re::RenderFrame *a5, const re::RenderGraphBufferDescription *a6, BOOL *a7, int a8)
{
  BufferInternal = re::RenderGraphPersistentResourceManager::getOrCreateBufferInternal(this, a2, a4, a5, a6, a7, a8);
  v12 = *BufferInternal;
  v15 = 0;
  v16 = 0;
  v17 = [*BufferInternal length];
  result = re::RenderFrame::registerExternalBuffer(a5, v14, a3, a2, 0);
  if (v15 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_3[v15])(&v18, v14);
  }

  return result;
}

uint64_t re::RenderGraphPersistentResourceManager::getOrCreateBufferInternal(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char *a6, int a7)
{
  v12 = (*a3 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
  v14 = v13 ^ (v13 >> 31);
  re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(v29, a1 + 64, v12, v14);
  if (HIDWORD(v29[1]) == 0x7FFFFFFF)
  {
    goto LABEL_11;
  }

  v15 = *(a1 + 80) + 56 * HIDWORD(v29[1]);
  v16 = *(v15 + 32);
  v17 = *(a5 + 8);
  v20 = v16 == v17;
  v18 = v16 >= v17;
  v19 = v20;
  if (!a7)
  {
    v18 = v19;
  }

  v20 = v18 && *(v15 + 40) == *(a5 + 24);
  if (v20)
  {
    v27 = 0;
    v23 = v15 + 16;
  }

  else
  {
LABEL_11:
    memset(v29, 0, 32);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(&v30, a1 + 64, v12, v14);
    v21 = HIDWORD(v31);
    if (HIDWORD(v31) == 0x7FFFFFFF)
    {
      v22 = re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1 + 64, v31, v30);
      *(v22 + 16) = 0;
      v23 = v22 + 16;
      *(v22 + 8) = v12;
      v29[0] = 0;
      *(v22 + 24) = *&v29[1];
      *(v22 + 40) = v29[3];
      ++*(a1 + 104);
    }

    else
    {
      ++*(a1 + 104);
      v24 = *(a1 + 80) + 56 * v21;
      v23 = v24 + 16;
      NS::SharedPtr<MTL::Texture>::operator=((v24 + 16), v29);
      v25 = *&v29[1];
      *(v24 + 40) = v29[3];
      *(v24 + 24) = v25;
      if (v29[0])
      {
      }
    }

    v26 = *(a5 + 24);
    if (v26 == 0xFFFF)
    {
      v26 = 0;
    }

    v29[0] = [*a1 newBufferWithLength:*(a5 + 8) options:{v26, v29[0]}];
    NS::SharedPtr<MTL::Texture>::operator=(v23, v29);
    if (v29[0])
    {
    }

    *(v23 + 16) = *(a5 + 8);
    *(v23 + 24) = *(a5 + 24);
    v27 = 1;
  }

  *a6 = v27;
  *(v23 + 8) = *(a4 + 384);
  return v23;
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 56 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 16);
    if (v3)
    {

      *(v2 + 16) = 0;
    }
  }
}

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 72 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 16);
    if (v3)
    {

      *(v2 + 16) = 0;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v28, v9, v8);
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
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24));
                v19 = *(v13 + 16);
                *(v18 + 8) = *(v13 + 8);
                *(v18 + 16) = v19;
                *(v13 + 16) = 0;
                v20 = *(v13 + 40);
                v21 = *(v13 + 24);
                *(v18 + 56) = *(v13 + 56);
                *(v18 + 24) = v21;
                *(v18 + 40) = v20;
              }

              ++v17;
              v13 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
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

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveTexture,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_4, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v28, v9, v8);
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
            v17 = 0;
            v18 = (v13 + 24);
            do
            {
              if ((*(v18 - 6) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 3) % *(a1 + 24));
                v20 = *(v18 - 1);
                *(v19 + 8) = *(v18 - 2);
                *(v19 + 16) = v20;
                *(v18 - 1) = 0;
                v21 = *v18;
                *(v19 + 40) = *(v18 + 4);
                *(v19 + 24) = v21;
              }

              ++v17;
              v18 = (v18 + 56);
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
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

void re::HashTable<unsigned long long,re::RenderGraphPersistentResourceManager::LiveBuffer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_4, 4 * v10);
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

uint64_t re::DrawCallMeshVisitor::visitMeshScene(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 472) != 0.0) & (*(a2 + 716) ^ 1u);
  if (v2 == 1)
  {
    *(a1 + 16) = *(a2 + 208);
    *(a1 + 32) = *(a2 + 224);
    *(a1 + 48) = *(a2 + 240);
    *(a1 + 64) = *(a2 + 256);
    *(a1 + 80) = *(a2 + 272);
    *(a1 + 88) = *(a2 + 192);
    *(a1 + 104) = *(a2 + 296);
    *(a1 + 120) = *(a2 + 280);
    *(a1 + 136) = *(a2 + 328);
    *(a1 + 152) = *(a2 + 312);
    *(a1 + 168) = *(a2 + 344);
    re::DrawCallMeshVisitor::visitScene(a1, a2);
  }

  return v2;
}

float re::DrawCallMeshVisitor::visitScene(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 472);
  DWORD1(v2) = *(a2 + 696);
  *(&v2 + 1) = *(a2 + 700);
  *(a1 + 336) = v2;
  *(a1 + 352) = *(a2 + 708);
  *(a1 + 356) = *(a2 + 712);
  *(a1 + 358) = *(a2 + 718);
  v3 = a2 + 352;
  if (!*(a2 + 376))
  {
    v3 = 0;
  }

  *(a1 + 296) = v3;
  *(a1 + 306) = *(a2 + 416);
  *(a1 + 328) = *(a2 + 464);
  v4 = *(a2 + 476);
  *(a1 + 360) = v4;
  LOBYTE(v4) = *(a2 + 690);
  *(a1 + 364) = v4;
  v5 = *(a2 + 432);
  if (*(a1 + 312))
  {
    if ((*(a2 + 424) & 1) == 0)
    {
      *(a1 + 312) = 0;
      goto LABEL_9;
    }
  }

  else
  {
    if ((*(a2 + 424) & 1) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 312) = 1;
  }

  *(a1 + 320) = v5;
LABEL_9:
  *(a1 + 372) = *(a2 + 440);
  *(a1 + 384) = *(a2 + 448);
  *(a1 + 408) = *(a2 + 528);
  if ((*(a1 + 416) & 1) == 0)
  {
    if ((*(a2 + 544) & 1) == 0)
    {
      goto LABEL_15;
    }

    *(a1 + 416) = 1;
LABEL_14:
    v6 = *(a2 + 576);
    *(a1 + 432) = *(a2 + 560);
    *(a1 + 448) = v6;
    goto LABEL_15;
  }

  if (*(a2 + 544))
  {
    goto LABEL_14;
  }

  *(a1 + 416) = 0;
LABEL_15:
  *(a1 + 464) = *(a2 + 592);
  result = *(a2 + 480);
  *(a1 + 368) = result;
  return result;
}

uint64_t re::DrawCallMeshVisitor::visitMeshInstance(uint64_t a1, uint64_t a2)
{
  result = re::MeshVisitor::visitMeshInstance(a1, a2);
  if (result)
  {
    *(a1 + 176) = *(a2 + 112);
  }

  return result;
}

void re::DrawCallMeshVisitor::visitMeshPart(uint64_t a1, uint64_t a2)
{
  v132 = *MEMORY[0x1E69E9840];
  LevelIndex = re::MeshVisitor::findLevelIndex(a1, *(a2 + 24));
  if ((LevelIndex & 0x80000000) != 0)
  {
    return;
  }

  v6 = LevelIndex;
  v7 = buf;
  v8 = *(a2 + 72);
  re::globalAllocators(LevelIndex);
  v9 = *(*(a1 + 488) + 32);
  v10 = (*(*v9 + 32))(v9, 336, 16);
  v11 = *(*(a1 + 488) + 32);
  *(v10 + 48) = 0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0;
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  *(v10 + 224) = 0;
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0u;
  *(v10 + 176) = 0;
  *(v10 + 184) = v11;
  *(v10 + 232) = xmmword_1E304F3C0;
  *(v10 + 248) = 0;
  *(v10 + 252) = 10854;
  __asm { FMOV            V0.2S, #1.0 }

  *(v10 + 256) = _D0;
  *(v10 + 264) = 0;
  *(v10 + 272) = 0;
  *(v10 + 320) = 0;
  *(&v109 + 1) = re::globalAllocators(v10)[2];
  v110 = buf;
  *buf = &unk_1F5D09010;
  v16 = (*(*v9 + 16))(v9, v10, buf);
  v17 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
  if (*(a1 + 96) <= v8)
  {
    *(v16 + 56) = *(a1 + 400);
    if (*(a1 + 24) > v8)
    {
      *v16 = 0;
    }

    if (*(a1 + 40) > v8)
    {
      v19 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    *(v16 + 56) = *(*(a1 + 88) + 8 * v8);
    if (*(a1 + 24) > v8)
    {
      *v16 = *(a1 + 16) + 24 * v8;
    }

    if (*(a1 + 40) > v8)
    {
      v19 = *(a1 + 32) + 24 * v8;
LABEL_11:
      *(v16 + 8) = v19;
    }
  }

  *(v16 + 16) = *(a1 + 48);
  *(v16 + 32) = *(a1 + 64);
  *(v16 + 48) = *(a1 + 80);
  if (*(a1 + 128) <= v8)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(*(a1 + 120) + 8 * v8);
  }

  *(v16 + 72) = v20;
  if (*(a1 + 144) <= v8)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(*(a1 + 136) + 8 * v8);
  }

  *(v16 + 80) = v21;
  if (*(a1 + 112) <= v8)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(*(a1 + 104) + 8 * v8);
  }

  v23 = (a1 + 306);
  *(v16 + 64) = v22;
  v24 = *(a1 + 176);
  if (v24 < *(a1 + 160))
  {
    v25 = (*(a1 + 152) + 16 * v24);
    if (v25[1] <= v8)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*v25 + 8 * v8);
    }

    *(v16 + 96) = v26;
  }

  v27 = *(v16 + 56);
  *(v16 + 88) = *(a1 + 168);
  *(v16 + 200) = *v23;
  if (*(v16 + 208))
  {
    if ((*(a1 + 312) & 1) == 0)
    {
      *(v16 + 208) = 0;
      goto LABEL_32;
    }
  }

  else
  {
    if ((*(a1 + 312) & 1) == 0)
    {
      goto LABEL_32;
    }

    *(v16 + 208) = 1;
  }

  *(v16 + 216) = *(a1 + 320);
LABEL_32:
  *(v16 + 224) = *(a1 + 328);
  *(v16 + 232) = *(a1 + 336);
  *(v16 + 248) = *(a1 + 352);
  *(v16 + 252) = *(a1 + 356);
  *(v16 + 256) = *(a1 + 360);
  *(v16 + 260) = *(a1 + 368);
  *(v16 + 264) = *(a1 + 364) != 0.0;
  if (*(v16 + 272))
  {
    if ((*(a1 + 416) & 1) == 0)
    {
      *(v16 + 272) = 0;
      goto LABEL_38;
    }
  }

  else
  {
    if ((*(a1 + 416) & 1) == 0)
    {
      goto LABEL_38;
    }

    *(v16 + 272) = 1;
  }

  v28 = *(a1 + 448);
  *(v16 + 288) = *(a1 + 432);
  *(v16 + 304) = v28;
LABEL_38:
  *(v16 + 320) = *(a1 + 464);
  if (v27 | *(a2 + 128))
  {
    v30 = *(a2 + 56);
    v29 = *(a2 + 64);
    v112 = 0;
    v113 = -65280;
    *&v127 = 25172350;
    *(&v127 + 1) = 0x7FFFFFFFLL;
    v31 = *(a2 + 16);
    v116 = *(a2 + 20);
    LODWORD(v112) = *(a2 + 32);
    HIDWORD(v112) = v31;
    v114 = 0;
    v115 = 0;
    v124 = 0;
    v123 = 0;
    v125 = 0;
    v126 = 0;
    memset(v121, 0, sizeof(v121));
    v122 = 0;
    v131 = 0;
    v130 = 0;
    v32 = *(a2 + 40);
    *buf = *a2;
    v109 = v32;
    v110 = v29;
    v33 = v30[2];
    v34 = v30[3];
    v35 = v30[1];
    v117 = *v30;
    v118 = v35;
    v119 = v33;
    v120 = v34;
    v111 = v16;
    if (v6 >= 2)
    {
      re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v6, 2);
      _os_crash();
      __break(1u);
    }

    else
    {
      LODWORD(v113) = *(a1 + 4 * v6 + 280);
      v121[16] = *(a1 + 372);
      *v121 = *(a1 + 384);
      v36 = *(a1 + 176);
      v128 = *(a1 + 408);
      v129 = v36;
      if ((atomic_load_explicit(&qword_1EE1B9D10, memory_order_acquire) & 1) == 0)
      {
        v94 = __cxa_guard_acquire(&qword_1EE1B9D10);
        if (v94)
        {
          _MergedGlobals_461 = re::hashString(v94, v95);
          __cxa_guard_release(&qword_1EE1B9D10);
        }
      }

      v37 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v16, _MergedGlobals_461);
      if (v38)
      {
        v121[23] = *v37 != -1;
        v2 = *(a1 + 8);
        if (!v2)
        {
          goto LABEL_103;
        }

        v39 = *v2;
        if (!*v2)
        {
          goto LABEL_103;
        }

        v40 = *(a1 + 488);
        v41 = *(a2 + 24);
        v101 = *buf;
        if (!*v39)
        {
          goto LABEL_61;
        }

        v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*buf ^ (*buf >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*buf ^ (*buf >> 30))) >> 27));
        v43 = v42 ^ (v42 >> 31);
        v44 = *(*(v39 + 8) + 4 * (v43 % *(v39 + 24)));
        if (v44 == 0x7FFFFFFF)
        {
          goto LABEL_61;
        }

        v45 = *(v39 + 16);
        while (*(v45 + (v44 << 7) + 8) != *buf)
        {
          v44 = *(v45 + (v44 << 7)) & 0x7FFFFFFF;
          if (v44 == 0x7FFFFFFF)
          {
            goto LABEL_61;
          }
        }

        v99 = v40;
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v39, &v101, v43, v102);
        v40 = v99;
        v48 = *(v39 + 16) + (*&v102[12] << 7);
        v51 = *(v48 + 16);
        v50 = (v48 + 16);
        v49 = v51;
        if (!v51)
        {
LABEL_61:
          v100 = *&buf[8];
          v37 = v39 + 48;
          if (!*(v39 + 48))
          {
            goto LABEL_103;
          }

          v59 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*&buf[8] ^ (*&buf[8] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*&buf[8] ^ (*&buf[8] >> 30))) >> 27));
          v60 = v59 ^ (v59 >> 31);
          v61 = *(*(v39 + 56) + 4 * (v60 % *(v39 + 72)));
          if (v61 == 0x7FFFFFFF)
          {
            goto LABEL_103;
          }

          v62 = *(v39 + 64);
          while (*(v62 + 40 * v61 + 8) != *&buf[8])
          {
            v61 = *(v62 + 40 * v61) & 0x7FFFFFFF;
            if (v61 == 0x7FFFFFFF)
            {
              goto LABEL_103;
            }
          }

          v98 = v40;
          v37 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v37, &v100, v60, v102);
          v6 = (*(v39 + 64) + 40 * *&v102[12] + 16);
          v7 = *(v16 + 224);
          if (re::MaterialParameterTable::kFadeNameHash(void)::once == -1)
          {
LABEL_68:
            v63 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
            if (v6[1])
            {
              v37 = v2[1];
              if (v37)
              {
                v37 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v37, v6 + 1);
                if (v37 && v7 == v63)
                {
                  v65 = v37;
                  v66 = v121[17];
                  v121[17] |= 2u;
                  if (v121[16] == 5 || !v121[16])
                  {
                    if ((v66 & 1) == 0 && (*(v37 + 9) & 1) == 0)
                    {
                      v121[17] = v66 | 6;
                      v124 = *v37;
                      v121[19] = *(v37 + 4);
                    }

                    if (*(v37 + 16) == 1)
                    {
                      loga = *buf;
                      v37 = (*(**(v98 + 32) + 32))(*(v98 + 32), 32, 16);
                      *v37 = 0u;
                      *(v37 + 16) = 0u;
                      v67 = *(v65 + 48);
                      *v37 = *(v65 + 32);
                      *(v37 + 16) = v67;
                      v125 = v37;
                      if ((v121[17] & 1) == 0)
                      {
                        v121[21] = *(v65 + 64) == loga;
                      }
                    }
                  }
                }
              }
            }

            if (!*v6 || (v37 = v2[1]) == 0 || (v37 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v37, v6)) == 0)
            {
LABEL_103:
              v75 = *v23;
              v76 = *(a1 + 359);
              v77 = *(a1 + 352);
              v78 = *(a1 + 358);
              if (*(v16 + 232) == 1.0 && v75 < 0x10000)
              {
                LOWORD(v79) = 0;
                if (!*(a1 + 359))
                {
                  goto LABEL_114;
                }
              }

              else
              {
                v79 = re::useDitherFade(v37) | (2 * ((v75 & 0xFFFF0000) != 0));
                if (!v76)
                {
LABEL_114:
                  *v102 = *(a1 + 296);
                  *&v102[8] = *(a1 + 504);
                  v103 = 0u;
                  v104 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  v107 = v79;
                  *(v16 + 120) = *&v102[16];
                  *(v16 + 104) = *v102;
                  if ((v16 + 104) != v102)
                  {
                    v82 = *(v16 + 144);
                    v103 = *(v16 + 128);
                    v83 = *(v16 + 184);
                    *&v106 = *(v16 + 176);
                    *(&v106 + 1) = v83;
                    *(v16 + 128) = 0uLL;
                    *(v16 + 144) = 0uLL;
                    v104 = v82;
                    v84 = *(v16 + 160);
                    *(v16 + 160) = 0uLL;
                    *(v16 + 176) = 0uLL;
                    v105 = v84;
                  }

                  *(v16 + 192) = v79;
                  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v103);
                  if (v27)
                  {
                    v85 = *(v27 + 296);
                    v86 = *(v27 + 300);
                  }

                  else
                  {
                    v86 = 0;
                    v85 = 0;
                  }

                  v87 = (*(*(a2 + 48) + 528) ^ v85) & ~v86 | v85 & v86;
                  LODWORD(v127) = v87;
                  v88 = *(a2 + 88);
                  if (v88)
                  {
                    v89 = re::MaterialRenderFlags::flattenToOverrideFlags(v88);
                    v87 = (v87 ^ v89) & ~HIDWORD(v89) | HIDWORD(v89) & v89;
                    LODWORD(v127) = v87;
                  }

                  v90 = *(a2 + 80);
                  if (v90)
                  {
                    LODWORD(v127) = (*v90 ^ v87) & ~*(*(a2 + 80) + 4) | *v90 & *(*(a2 + 80) + 4);
                  }

                  v91 = *(a2 + 128);
                  v92 = *(a1 + 488);
                  v93 = *(a1 + 496);
                  if (v91)
                  {
                    re::bucketVFXMeshPart(buf, v16, v92, v93, v91);
                  }

                  else
                  {
                    re::bucketMeshPart(buf, v16, v92, v93, (a1 + 480));
                  }

                  return;
                }
              }

              v80 = v77 <= 0.0;
              if (v77 > 1.0)
              {
                v80 = 1;
              }

              if (v80 | v78)
              {
                v81 = 128;
              }

              else
              {
                v81 = 192;
              }

              LOWORD(v79) = v79 | v81;
              goto LABEL_114;
            }

            v68 = v37;
            v69 = v121[17] | 8;
            v121[17] |= 8u;
            v70 = *(v37 + 5);
            if (*(v37 + 5))
            {
              if (v70 == 3)
              {
                if (v7 != v63 && (*(v37 + 7) & 1) == 0)
                {
LABEL_92:
                  if (*(v37 + 80) == 1)
                  {
                    if (*(v37 + 8))
                    {
                      v72 = 16;
                    }

                    else
                    {
                      v72 = 0;
                    }
                  }

                  else
                  {
                    v72 = 0;
                  }

LABEL_100:
                  v121[17] = v72 | v69 & 0xEF;
                  v121[17] = v72 & 0xDF | v69 & 0xCF | (32 * *(v37 + 6));
                  v121[20] = *(v37 + 10);
                  v123 = *v37;
                  v121[18] = *(v37 + 4);
                  if (*(v37 + 16) == 1)
                  {
                    v73 = *buf;
                    v37 = (*(**(v98 + 32) + 32))(*(v98 + 32), 32, 16);
                    *v37 = 0u;
                    *(v37 + 16) = 0u;
                    v74 = *(v68 + 48);
                    *v37 = *(v68 + 32);
                    *(v37 + 16) = v74;
                    v125 = v37;
                    if ((v121[17] & 1) == 0)
                    {
                      v121[21] = *(v68 + 64) == v73;
                    }
                  }

                  goto LABEL_103;
                }
              }

              else if (v70 != 2 || v7 != v63)
              {
                goto LABEL_92;
              }
            }

            v72 = 16;
            goto LABEL_100;
          }

LABEL_129:
          dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
          goto LABEL_68;
        }

        v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v49 ^ (v49 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v49 ^ (v49 >> 30))) >> 27));
        v53 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>((v2 + 2), v50, v52 ^ (v52 >> 31), v102);
        v54 = v2[4] + 40 * *&v102[12];
        v121[17] |= 1u;
        v56 = *(v54 + 16);
        v55 = v54 + 16;
        v121[19] = *(v55 + 8);
        v124 = v56;
        v121[22] = *(v55 + 9);
        v121[21] = *(v55 + 10);
        v57 = v50[4];
        if (v57 <= v41)
        {
          if (!v57)
          {
LABEL_59:
            *(&v127 + 4) = v50[1];
            HIDWORD(v127) = *(v55 + 4);
            goto LABEL_60;
          }
        }

        else if (v50[9] > v41)
        {
          DWORD1(v127) = *(v50[6] + 4 * v41);
          DWORD2(v127) = *(v50[11] + 4 * v41);
LABEL_60:
          v40 = v99;
          goto LABEL_61;
        }

        log = *re::graphicsLogObjects(v53);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v58 = v50[4];
          *v102 = 134218240;
          *&v102[4] = v58;
          *&v102[12] = 2048;
          *&v102[14] = v41;
          _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "'meshPartPrioritiesInGroup' contains fewer elements (%zu) than current MeshPart index (%zu).", v102, 0x16u);
        }

        goto LABEL_59;
      }
    }

    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_129;
  }

  v46 = *re::graphicsLogObjects(v17);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(*(a2 + 48) + 496);
    *buf = 136315138;
    *&buf[4] = v47;
    _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "Failed to find a materialInstance to draw mesh part [%s]. Check material index.", buf, 0xCu);
  }
}

uint64_t re::DrawCallMeshVisitor::visitVFXScene(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1010))
  {
    return 0;
  }

  v2 = 0;
  if (*(a2 + 472) != 0.0 && (*(a2 + 716) & 1) == 0)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = *(a2 + 280);
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = *(a2 + 344);
    re::DrawCallMeshVisitor::visitScene(a1, a2);
    return 1;
  }

  return v2;
}

void *re::internal::Callable<re::DrawCallMeshVisitor::visitMeshPart(re::MeshPartVisitorContext const&)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09010;
  return result;
}

void *re::internal::Callable<re::DrawCallMeshVisitor::visitMeshPart(re::MeshPartVisitorContext const&)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09010;
  return result;
}

re::DeformationCommandBuffer *re::DeformationCommandBuffer::DeformationCommandBuffer(re::DeformationCommandBuffer *this, re::RenderManager *a2, const re::mtl::CommandBuffer *a3, re::DeformationFencePool *a4)
{
  *this = a2;
  *(this + 1) = a2 + 208;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 14) = 1;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 1;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 36) = 0;
  *(this + 23) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  return this;
}

uint64_t re::DeformationCommandBuffer::setEncoderType(uint64_t result, uint64_t a2)
{
  v4 = *(result + 32);
  if (v4 == a2)
  {
    return result;
  }

  v6 = result;
  if (!*(result + 32))
  {
LABEL_8:
    v2 = 0;
    if (!a2)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  if (v4 == 2)
  {
    [*(result + 184) updateFence:**(result + 160)];
    v8 = *v6;
    v26 = *(v6 + 184);
    re::RenderManager::sampleComputeEncoderMTLCounterEnd(v8, &v26, 2u);

    [*(v6 + 184) endEncoding];
    v9 = *(v6 + 184);
    *(v6 + 184) = 0;

    goto LABEL_8;
  }

  if (v4 != 1)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "setEncoderType", 283, *(result + 32));
    _os_crash();
    __break(1u);
LABEL_32:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "setEncoderType", 319, a2);
    _os_crash();
    __break(1u);
LABEL_33:
    if (__cxa_guard_acquire(&qword_1EE1B9D30))
    {
      v22 = re::ns::String::String(&qword_1EE1B9D28, "DeformerEncoder");
      __cxa_guard_release(v22 + 1);
    }

    goto LABEL_21;
  }

  if (a2 == 2)
  {
    Fence = re::DeformationFencePool::allocateFence(*(result + 24));
    v2 = Fence;
  }

  else
  {
    v2 = 0;
    Fence = *(result + 160);
  }

  [*(v6 + 176) updateFence:*Fence];
  [*(v6 + 176) endEncoding];
  v10 = *(v6 + 176);
  *(v6 + 176) = 0;

  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      re::mtl::CommandBuffer::makeBlitCommandEncoder(*(v6 + 16), &v25);
      v3 = (v6 + 176);
      if ((v6 + 176) != &v25)
      {
        v11 = v25;
        v25 = 0;
        v12 = *v3;
        *v3 = v11;
      }

      if ((atomic_load_explicit(&qword_1EE1B9D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9D20))
      {
        v23 = re::ns::String::String(&_MergedGlobals_462, "DeformerBlitEncoder");
        __cxa_guard_release(v23 + 1);
      }

      v13 = _MergedGlobals_462;
      [*(v6 + 176) setLabel:v13];

      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v14 = *v6;
  v24 = **(v6 + 16);
  re::RenderManager::makeComputeCommandEncoderWithMTLCounterSampling(v14, &v24, 2u, 0, &v25);
  v3 = (v6 + 184);
  if ((v6 + 184) != &v25)
  {
    v15 = v25;
    v25 = 0;
    v16 = *v3;
    *v3 = v15;
  }

  if ((atomic_load_explicit(&qword_1EE1B9D30, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v17 = qword_1EE1B9D28;
  [*v3 setLabel:v17];

  if (v2)
  {
LABEL_23:
    [*v3 waitForFence:*v2];
    goto LABEL_24;
  }

LABEL_22:
  v2 = *(v6 + 152);
  if (v2)
  {
    goto LABEL_23;
  }

LABEL_24:
  v18 = *(v6 + 136);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = re::BucketArray<unsigned long,8ul>::operator[](v6 + 96, i);
      if (*v20 != *(v6 + 160))
      {
        v21 = *v20;
        *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(v6 + 40) = v21;
      }
    }
  }

  re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::clear(v6 + 96);
  result = re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(v6 + 96);
  *result = *(v6 + 160);
  *(v6 + 32) = a2;
  return result;
}

void re::DeformationCommandBuffer::encodeSharedEventForSynchronization(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  re::DeformationCommandBuffer::setEncoderType(a1, 0);
  [**(a1 + 16) encodeSignalEvent:*a2 value:a3];
  [**(a1 + 16) encodeWaitForEvent:*a2 value:a4];
  re::mtl::CommandBuffer::makeBlitCommandEncoder(*(a1 + 16), &v9);
  {
    re::ns::String::String(&re::DeformationCommandBuffer::encodeSharedEventForSynchronization(NS::SharedPtr<MTL::SharedEvent> &,unsigned long long,unsigned long long)::$_0::operator() const(void)::s_ns_string, "DeformerCPUSynchronization");
  }

  v8 = re::DeformationCommandBuffer::encodeSharedEventForSynchronization(NS::SharedPtr<MTL::SharedEvent> &,unsigned long long,unsigned long long)::$_0::operator() const(void)::s_ns_string;
  [v9 setLabel:v8];

  [v9 updateFence:**(a1 + 168)];
  [v9 updateFence:**(a1 + 160)];
  [v9 endEncoding];
}

void re::DeformationCommandBuffer::encodePostDeformationBlits(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 761);
    _os_crash();
    __break(1u);
LABEL_15:
    {
      re::ns::String::String(&re::DeformationCommandBuffer::encodePostDeformationBlits(re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul> const&)::$_0::operator() const(void)::s_ns_string, "PostDeformationBlit");
    }

    goto LABEL_4;
  }

  v3 = a2;
  v2 = a1;
  if (!*(re::BucketArray<re::BufferSlice,8ul>::operator[](a2, 0) + 16))
  {
    return;
  }

  re::DeformationCommandBuffer::setEncoderType(v2, 0);
  re::mtl::CommandBuffer::makeBlitCommandEncoder(*(v2 + 16), &v12);
  {
    goto LABEL_15;
  }

LABEL_4:
  v4 = re::DeformationCommandBuffer::encodePostDeformationBlits(re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul> const&)::$_0::operator() const(void)::s_ns_string;
  [v12 setLabel:v4];

  [v12 waitForFence:**(v2 + 168)];
  v5 = *(v3 + 40);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      v8 = re::BucketArray<re::BufferSlice,8ul>::operator[](v3, i);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v8 + 32);
        v11 = v10 + 48 * v9;
        do
        {
          re::mtl::BlitCommandEncoder::bufferCopy(&v12, *v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
          v6 = (*(v10 + 40) | v6) != 0;
          v10 += 48;
        }

        while (v10 != v11);
      }
    }

    if (v6)
    {
      [v12 updateFence:**(v2 + 160)];
    }
  }

  [v12 endEncoding];
}

uint64_t re::DeformationCommandBuffer::endDeformation(uint64_t this, uint64_t a2)
{
  v3 = *(this + 32);
  if (*(this + 32))
  {
    if (v3 == 1)
    {
      v4 = 176;
    }

    else
    {
      if (v3 != 2)
      {
        re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "endDeformation", 122, v3);
        this = _os_crash();
        __break(1u);
        return this;
      }

      v4 = 184;
    }

    v5 = *(this + 168);
    v6 = *(this + v4);
    v7 = *v5;

    return [v6 updateFence:v7];
  }

  return this;
}

void *re::DeformationCommandBuffer::beginDeformationPass(re::DeformationCommandBuffer *this)
{
  *(this + 21) = re::DeformationFencePool::allocateFence(*(this + 3));
  *(this + 20) = re::DeformationFencePool::allocateFence(*(this + 3));
  result = re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(this + 96);
  *result = *(this + 20);
  return result;
}

uint64_t re::DeformationCommandBuffer::endDeformationPass(uint64_t this, uint64_t a2)
{
  v2 = this;
  v3 = *(this + 32);
  if (*(this + 32))
  {
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        goto LABEL_8;
      }

      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "endDeformationPass", 168, *(this + 32));
      _os_crash();
      __break(1u);
    }

    if (*(*v2 + 374) == 1)
    {
      [*(v2 + 184) memoryBarrierWithScope:1];
      this = [*(v2 + 184) updateFence:**(v2 + 160)];
      goto LABEL_9;
    }

    [*(v2 + 184) updateFence:**(v2 + 160)];
LABEL_8:
    this = re::DeformationCommandBuffer::setEncoderType(v2, 0);
  }

LABEL_9:
  *(v2 + 152) = *(v2 + 160);
  *(v2 + 160) = 0;
  return this;
}

uint64_t re::DeformationCommandBuffer::finalizeFinalEncoder(uint64_t result, uint64_t a2)
{
  if (*(result + 80) + *(result + 136))
  {
    v2 = result;
    *(result + 152) = 0;
    *(result + 160) = a2;
    v3 = *(result + 32);
    if (!*(result + 32))
    {
      re::DeformationCommandBuffer::setEncoderType(result, 1);
      v3 = *(v2 + 32);
    }

    if (v3 == 2)
    {
      v6 = *(v2 + 80);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          [*(v2 + 184) waitForFence:{**re::BucketArray<unsigned long, 8ul>::operator[](v2 + 40, i)}];
        }
      }
    }

    else
    {
      if (v3 != 1)
      {
        re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unknown encoder type: %u", "!Unreachable code", "finalizeFinalEncoder", 216, v3);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v4 = *(v2 + 80);
      if (v4)
      {
        for (j = 0; j != v4; ++j)
        {
          [*(v2 + 176) waitForFence:{**re::BucketArray<unsigned long, 8ul>::operator[](v2 + 40, j)}];
        }
      }
    }

    result = re::DeformationCommandBuffer::setEncoderType(v2, 0);
    *(v2 + 160) = 0;
  }

  return result;
}

float re::SmoothDampener::smooth(re::SmoothDampener *this, float a2, float a3)
{
  v4 = *this;
  v3 = *(this + 1);
  v5 = 16;
  if (v3 >= a2)
  {
    v6 = 0;
  }

  else
  {
    v5 = 24;
    v6 = 1;
  }

  v7 = *(this + 5) * a3;
  if (v7 <= 1.0)
  {
    v8 = *(this + 5) * a3;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v7 < 0.0;
  v10 = 0.0;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = *(this + 3);
  v12 = (*(this + v5) * v10) + (*(this + 2) * (1.0 - v10));
  v13 = 2.0 / v12;
  *(this + 29) = v6;
  *(this + 2) = v12;
  v14 = 1.0 / ((((((((2.0 / v12) * a3) * 0.235) + 0.48) * ((2.0 / v12) * a3)) + 1.0) * ((2.0 / v12) * a3)) + 1.0);
  v15 = v11 * v12;
  v16 = v3 - a2;
  v17 = -(v11 * v12);
  if (v16 < v17)
  {
    v16 = v17;
  }

  if (v15 < v16)
  {
    v16 = v15;
  }

  v18 = (v4 + (v13 * v16)) * a3;
  result = a2 + ((v16 + v18) * v14);
  *this = v14 * (v4 - (v13 * v18));
  *(this + 1) = result;
  return result;
}

uint64_t re::SmoothDampener::smooth(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v6 = 0;
  v7 = 2.0 / a4;
  v8 = 1.0 / ((((((((2.0 / a4) * a6) * 0.235) + 0.48) * ((2.0 / a4) * a6)) + 1.0) * ((2.0 / a4) * a6)) + 1.0);
  v9 = a4 * a5;
  v10 = -(a4 * a5);
  do
  {
    v11 = *(a1 + v6);
    v12 = *(a2 + v6) - v11;
    if (v12 < v10)
    {
      v12 = v10;
    }

    if (v9 < v12)
    {
      v12 = v9;
    }

    v13 = *(a3 + v6);
    v14 = (v13 + (v7 * v12)) * a6;
    *(a3 + v6) = v8 * (v13 + (-v7 * v14));
    *(&v16 + v6) = v11 + ((v12 + v14) * v8);
    v6 += 4;
  }

  while (v6 != 12);
  return v16;
}

uint64_t re::BufferSlice::contents(re::BufferSlice *this)
{
  v4[0] = this;
  v4[1] = this;
  v1 = *(this + 6);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferSlice::isValid(v3);
  }

  else
  {
    v5 = v4;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_11BufferSlice8contentsEvE3__0ZNKS9_8contentsEvE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v5, this);
  }
}

uint64_t re::BufferSlice::isValid(re::BufferSlice *this)
{
  v1 = *(this + 6);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferSlice::deinit(v3);
  }

  else
  {
    v5 = &v4;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_11BufferSlice7isValidEvE3__0ZNKS9_7isValidEvE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v5, this);
  }
}

uint64_t re::BufferSlice::deinit(re::BufferSlice *this)
{
  v1 = *(this + 6);
  if (v1 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferSlice::buffer(v4, v5);
  }

  else
  {
    v7 = &v6;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSlice6deinitEvE3__0ZNS9_6deinitEvE3__1EEEEEJRNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v7, this);
    *(this + 4) = 0;
  }

  return result;
}

uint64_t re::BufferSlice::buffer(uint64_t this, uint64_t a2)
{
  if (*(this + 24))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "std::holds_alternative<GPUSource>(m_buffer)", "buffer", 168, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::BufferSlice::operator==(_DWORD *a1, _DWORD *a2)
{
  if (a1[9] != a2[9] || a1[8] != a2[8])
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  result = v7 == v6;
  if (v6 != -1 && v7 == v6)
  {
    v11[1] = v2;
    v11[2] = v3;
    v11[0] = &v10;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100INS1_9__variant15__value_visitorINS_17__convert_to_BOOLINS_8equal_toIvEEEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEESL_EEEDcmOT_DpOT0____fdiagonal[v6])(v11, a1);
  }

  return result;
}

uint64_t re::BufferView::contents(re::BufferView *this)
{
  v4[0] = this;
  v4[1] = this;
  v1 = *(this + 2);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferView::sourceLength(v3);
  }

  else
  {
    v5 = v4;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_10BufferView8contentsEvE3__0ZNKS9_8contentsEvE3__1EEEEEJRKNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v5, this);
  }
}

uint64_t re::BufferView::sourceLength(re::BufferView *this)
{
  v1 = *(this + 2);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferView::isValid(v3);
  }

  else
  {
    v5 = &v4;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_10BufferView12sourceLengthEvE3__0ZNKS9_12sourceLengthEvE3__1EEEEEJRKNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v5, this);
  }
}

uint64_t re::BufferView::isValid(re::BufferView *this)
{
  v1 = *(this + 2);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::BufferView::operator==(v3, v4);
  }

  else
  {
    v6 = &v5;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_10BufferView7isValidEvE3__0ZNKS9_7isValidEvE3__1EEEEEJRKNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v6, this);
  }
}

uint64_t re::BufferView::operator==(_DWORD *a1, _DWORD *a2)
{
  if (a1[5] != a2[5] || a1[4] != a2[4])
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  result = v7 == v6;
  if (v6 != -1 && v7 == v6)
  {
    v11[1] = v2;
    v11[2] = v3;
    v11[0] = &v10;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100INS1_9__variant15__value_visitorINS_17__convert_to_BOOLINS_8equal_toIvEEEEEEJRKNS0_6__implIJPN3MTL6BufferEPKN2re20BufferSliceSourceCPUEEEESL_EEEDcmOT_DpOT0____fdiagonal[v6])(v11, a1);
  }

  return result;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::contents(void)::$_0,re::BufferSlice::contents(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU> const&>(uint64_t **a1, char **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = **a1;
    return [result contents] + *(v4 + 32);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::contents(void)::$_0,re::BufferSlice::contents(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return *(*(*a1 + 8) + 32) + v2;
  }

  else
  {
    return 0;
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::deinit(void)::$_0,re::BufferSlice::deinit(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU> &>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  NS::SharedPtr<MTL::Texture>::operator=((a2 + 16), &v2);
  if (v2)
  {
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::BufferSlice(re::BufferView,unsigned long,unsigned long)::$_0,re::BufferSlice::(re::BufferView,unsigned long,unsigned long)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> &>(uint64_t **a1, id *a2)
{
  if (*a2)
  {
    v2 = **a1;
    v3 = *a2;
    v5 = v3;
    v4 = *(v2 + 24);
    if (v4 != -1)
    {
      if (!v4)
      {
        NS::SharedPtr<MTL::Texture>::operator=(v2, &v5);
        if (v5)
        {
        }

        return;
      }

      (off_1F5D09058[v4])(&v6, v2);
    }

    *v2 = v3;
    *(v2 + 24) = 0;
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferSlice::BufferSlice(re::BufferView,unsigned long,unsigned long)::$_0,re::BufferSlice::(re::BufferView,unsigned long,unsigned long)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> &>(uint64_t a1, id **a2)
{
  v2 = *a2;
  v3 = *(*a1 + 8);
  if (*a2)
  {
    v6 = *v2;
    v4 = v2[2];
    v7 = v4;
  }

  else
  {
    v4 = 0;
    v6 = 0uLL;
    v7 = 0;
  }

  v5 = *(v3 + 24);
  if (v5 == -1)
  {
LABEL_9:
    *(v3 + 24) = -1;
    *v3 = v6;
    *(v3 + 16) = v4;
    *(v3 + 24) = 1;
    if (!v4)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v5 != 1)
  {
    (off_1F5D09058[v5])(&v8, v3);
    goto LABEL_9;
  }

  *v3 = v6;
  NS::SharedPtr<MTL::Buffer>::operator=((v3 + 16), &v7);
  v4 = v7;
  if (v7)
  {
LABEL_10:
  }
}

char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferView::contents(void)::$_0,re::BufferView::contents(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> const&>(uint64_t **a1, char **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = **a1;
    return [result contents] + *(v4 + 16);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferView::contents(void)::$_0,re::BufferView::contents(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> const&>(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return *(*(*a1 + 8) + 16) + *(*a2 + 8);
  }

  else
  {
    return 0;
  }
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferView::sourceLength(void)::$_0,re::BufferView::sourceLength(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> const&>(uint64_t a1, id *a2)
{
  result = *a2;
  if (*a2)
  {
    return [result length];
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferView::sourceLength(void)::$_0,re::BufferView::sourceLength(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> const&>(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return **a2;
  }

  else
  {
    return 0;
  }
}

void *re::introspect_REMeshOffsetsBlendingMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Additive";
      re::introspect_REMeshOffsetsBlendingMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 1;
      *(v13 + 16) = "Override";
      qword_1EE1C62C8 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_REMeshOffsetsBlendingMode(BOOL)::info, "REMeshOffsetsBlendingMode", 4, 4, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::introspect_REMeshOffsetsBlendingMode(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_REMeshOffsetsBlendingMode(BOOL)::isInitialized)
    {
      return &re::introspect_REMeshOffsetsBlendingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::introspect_REMeshOffsetsBlendingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::introspect_REMeshOffsetsBlendingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_REMeshOffsetsBlendingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_REMeshOffsetsBlendingMode(BOOL)::info;
    }
  }

  re::introspect_REMeshOffsetsBlendingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_REMeshOffsetsBlendingMode(BOOL)::info, a2);
  v15[0] = 0x3D7D20A70EDE8D68;
  v15[1] = "REMeshOffsetsBlendingMode";
  xmmword_1EE1C6298 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_REMeshOffsetsBlendingMode(BOOL)::info;
}

void *re::allocInfo_MeshLodLevelInfo(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_463, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_463))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9D60, "MeshLodLevelInfo");
    __cxa_guard_release(&_MergedGlobals_463);
  }

  return &unk_1EE1B9D60;
}

void re::initInfo_MeshLodLevelInfo(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0xCB9A0A380331B57CLL;
  v19[1] = "MeshLodLevelInfo";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1B9D40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B9D40);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "minScreenArea";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B9D48 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "maxViewDepth";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B9D50 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "meshPartIndices";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B9D58 = v17;
      __cxa_guard_release(&qword_1EE1B9D40);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B9D48;
  *(this + 9) = re::internal::defaultConstruct<re::MeshLodLevelInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshLodLevelInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshLodLevelInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshLodLevelInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::MeshLodLevelInfo>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
}

uint64_t re::internal::defaultConstructV2<re::MeshLodLevelInfo>(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t re::selectMeshLodByScreenArea(_OWORD *a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 5);
  if (v5)
  {
    v6 = *(a1 + 1);
    v7 = vcgtq_f32(*a1, v6);
    v7.i32[3] = v7.i32[2];
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9 = vmulq_f32(vaddq_f32(*a1, v6), v8);
    v10 = v9.i64[1];
    if ((vmaxvq_u32(v7) & 0x80000000) == 0)
    {
      v11 = *v9.f32;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *v12.f32 = v11;
    v12.i64[1] = v10;
    v13 = *(a2 + 16);
    v14 = *(a2 + 32);
    v15 = *(a2 + 48);
    v16 = vaddq_f32(v15, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, v11.f32[0]), v13, v11, 1), v14, v12, 2));
    v17 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
    v18 = vaddq_f32(v15, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*a1)), v13, *a1, 1), v14, *a1, 2));
    v19 = vsubq_f32(vdivq_f32(v18, vdupq_laneq_s32(v18, 3)), v17);
    v20 = vmulq_f32(v19, v19);
    v21 = vmulq_f32(v17, v17);
    v22 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v21.i8), vzip2_s32(*v20.i8, *v21.i8)));
    v24 = COERCE_DOUBLE(vcgt_f32(vdup_lane_s32(v22, 1), v22));
    v23 = LOBYTE(v24);
    LODWORD(v24) = 1.0;
    if (v23)
    {
      v25 = a3[1] / ((a3[5] - a3[6]) * 0.5);
      *&v24 = (((v25 * (v25 * 3.1416)) * v22.f32[0]) / (v22.f32[1] - v22.f32[0])) * 0.25;
      if (*&v24 > 1.0)
      {
        *&v24 = 1.0;
      }

      if (*&v24 < 0.0)
      {
        *&v24 = 0.0;
      }
    }

    if (v5)
    {
      v26 = 0;
      v27 = *(a1 + 6);
      while (v5 != v26)
      {
        if (*&v24 >= *v27)
        {
          goto LABEL_19;
        }

        ++v26;
        v27 += 12;
        if (v5 == v26)
        {
          return 0;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_24;
    }

    LODWORD(v26) = 0;
LABEL_19:
    if (v26 == v5)
    {
      return 0;
    }

    if (!a5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a5)
    {
LABEL_24:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_25:
      re::internal::assertLog(6, a2, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
    }

    LOBYTE(v26) = 0;
  }

  *a4 = v26;
  result = 1;
  *(a4 + 1) = 1;
  *(a4 + 2) = -1;
  return result;
}

uint64_t re::selectMeshLodByViewDepth(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2].i64[1];
  if (v4)
  {
    v5 = a1[1];
    v6 = vcgtq_f32(*a1, v5);
    v6.i32[3] = v6.i32[2];
    v7 = vaddq_f32(*a1, v5);
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v8 = vmulq_f32(v7, v5);
    v9 = v8.i32[2];
    v10 = v8.i64[0];
    if ((vmaxvq_u32(v6) & 0x80000000) != 0)
    {
      v9 = 0;
      v10 = 0;
    }

    if (v4)
    {
      v11 = 0;
      v12 = *(a2 + 8);
      v12.i32[1] = *(a2 + 24);
      v12.i32[2] = *(a2 + 40);
      v12.i32[3] = *(a2 + 56);
      v13.i64[0] = v10;
      v13.i64[1] = __PAIR64__(1.0, v9);
      v14 = vmulq_f32(v12, v13);
      v15 = fabsf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL))));
      v16 = (a1[3].i64[0] + 4);
      while (v4 != v11)
      {
        if (v15 <= *v16)
        {
          goto LABEL_13;
        }

        ++v11;
        v16 += 12;
        if (v4 == v11)
        {
          return 0;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_18;
    }

    LODWORD(v11) = 0;
LABEL_13:
    if (v11 == v4)
    {
      return 0;
    }

    if (!a4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!a4)
    {
LABEL_18:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_19:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
    }

    LOBYTE(v11) = 0;
  }

  *a3 = v11;
  result = 1;
  *(a3 + 1) = 1;
  *(a3 + 2) = -1;
  return result;
}

uint64_t (***re::DrawCallHandler::registerHandler(uint64_t a1, uint64_t a2, void *a3))(void)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 32);
  v6 = a3;
  v7 = v5(a2, 8, 8);
  *v7 = 0;
  v8 = _Block_copy(v6);
  v9 = *v7;
  *v7 = v8;

  *(a1 + 8) = v7;
  v11 = re::globalAllocators(v10)[2];
  v14[0] = &unk_1F5D09118;
  v14[3] = v11;
  v14[4] = v14;
  v12 = *(*a2 + 16);

  v12(a2, v7, v14);
  return re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v14);
}

void *re::internal::Callable<re::DrawCallHandler::registerHandler(re::Allocator &,void({block_pointer})(objc_object  {objcproto23MTLRenderCommandEncoder}*,re::DrawCallHandlerContext))::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09118;
  return result;
}

void *re::internal::Callable<re::DrawCallHandler::registerHandler(re::Allocator &,void({block_pointer})(objc_object  {objcproto23MTLRenderCommandEncoder}*,re::DrawCallHandlerContext))::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09118;
  return result;
}

re::RenderGraph *re::RenderGraph::RenderGraph(re::RenderGraph *this, const char *a2, unint64_t a3, const char *a4, const char *a5, uint64_t a6)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  v12 = re::DynamicArray<float *>::setCapacity(this, a3);
  ++*(this + 6);
  *(this + 9) = 0;
  *(this + 10) = &str_67;
  *(this + 11) = 0;
  *(this + 12) = &str_67;
  *(this + 13) = a6;
  return this;
}

void re::RenderGraph::~RenderGraph(re::RenderGraph *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::RenderGraphNodeBase>("~RenderGraph", 28, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(this + 2) = 0;
  ++*(this + 6);
  re::StringID::destroyString((this + 88));
  re::StringID::destroyString((this + 72));
  re::DynamicString::deinit((this + 40));
  re::DynamicArray<unsigned long>::deinit(this);
}

void re::RenderGraph::setup(re::RenderGraph *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v6 = *(this + 4);
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      if (*(*v6 + 64) == 1)
      {
        re::RenderGraphBuilder::startNode(a2, *v6);
        (*(*v8 + 88))(v8, a2, a3);
        if (*(v8 + 65) == 1)
        {
          re::RenderGraphBuilder::handleAutoMsaaTargets(a2);
        }

        if (*(v8 + 66) == 1)
        {
          re::RenderGraphBuilder::handleForceResolve(a2);
        }

        if (*(v8 + 67) == 1)
        {
          *(a2 + 595) = 1;
        }

        if (*(a2 + 617))
        {
          re::RenderGraphBuilder::handleProgrammableBlendingTargets(a2);
        }

        re::RenderGraphBuilder::finishNode(a2, v8);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }
}

void re::makeCompilingVisualsRenderPipeline(uint64_t a1, unsigned int *a2, _BYTE *a3, void **a4, void **a5)
{
  v8 = *(a1 + 48);
  re::ShaderManager::makeRenderPipelineDescriptor(v8, &v28);
  [v28 setLabel_];
  [v28 setRasterSampleCount_];
  [v28 setInputPrimitiveTopology_];
  v21 = a1;
  if (*(a1 + 366) == 1)
  {
    [v28 setMaxVertexAmplificationCount_];
  }

  v9 = 0;
  v10 = a2 + 1;
  do
  {
    if (v10[v9])
    {
      [objc_msgSend(objc_msgSend(v28 colorAttachments)];
      [objc_msgSend(objc_msgSend(v28 colorAttachments)];
      [objc_msgSend(objc_msgSend(v28 colorAttachments)];
    }

    ++v9;
  }

  while (v9 != 8);
  v11 = a2[9];
  if (v11 - 250 > 0xA || ((1 << (v11 + 6)) & 0x425) == 0)
  {
    v13 = 0;
  }

  else
  {
    [v28 setDepthAttachmentPixelFormat_];
    v13 = 1;
  }

  v14 = 0;
  if (a2[10] - 253 <= 9 && ((1 << (*(a2 + 40) + 3)) & 0x385) != 0)
  {
    [v28 setStencilAttachmentPixelFormat_];
    v14 = 1;
  }

  v15 = [objc_msgSend(MEMORY[0x1E6974050] alloc)];
  v16 = v15;
  if (v13)
  {
    [v15 setDepthCompareFunction_];
    [v16 setDepthWriteEnabled_];
  }

  if (v14)
  {
    if (*a3 == 1)
    {
      v17 = [objc_msgSend(MEMORY[0x1E6974190] alloc)];
      [v17 setReadMask_];
      [v17 setWriteMask_];
      [v17 setStencilCompareFunction_];
      [v17 setStencilFailureOperation_];
      [v17 setDepthFailureOperation_];
      [v17 setDepthStencilPassOperation_];
      [v16 setFrontFaceStencil_];
      if (v17)
      {
      }
    }

    if (a3[8] == 1)
    {
      v18 = [objc_msgSend(MEMORY[0x1E6974190] alloc)];
      [v18 setReadMask_];
      [v18 setWriteMask_];
      [v18 setStencilCompareFunction_];
      [v18 setStencilFailureOperation_];
      [v18 setDepthFailureOperation_];
      [v18 setDepthStencilPassOperation_];
      [v16 setBackFaceStencil_];
      if (v18)
      {
      }
    }
  }

  v27 = [*(v21 + 208) newDepthStencilStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(a5, &v27);
  if (v27)
  {
  }

  re::ShaderManager::makeFunctionDescriptor(v8, &v27);
  v19 = MEMORY[0x1E696AEC0];
  [v27 setName_];
  re::ShaderManager::makeFunctionWithDescriptor(v8, v8[46], &v27, &v26);
  re::ShaderManager::makeFunctionDescriptor(v8, &v25);
  [v25 setName_];
  re::ShaderManager::makeFunctionWithDescriptor(v8, v8[46], &v25, &v24);
  [v28 setVertexFunction_];
  [v28 setFragmentFunction_];
  re::mtl::Device::makeRenderPipelineState((v21 + 208), v28, 0, &v23);
  NS::SharedPtr<MTL::Texture>::operator=(a4, &v23);
  if (v23)
  {
  }

  if (v24)
  {
  }

  if (v25)
  {
  }

  if (v26)
  {
  }

  if (v27)
  {
  }

  if (v16)
  {
  }

  if (v28)
  {
  }
}

void *re::allocInfo_DeformationDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9DF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9E80, "DeformationDefinition");
    __cxa_guard_release(&qword_1EE1B9DF8);
  }

  return &unk_1EE1B9E80;
}

void re::initInfo_DeformationDefinition(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x6DEEB11F44CBF546;
  v15[1] = "DeformationDefinition";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1B9E00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B9E00);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "deformerName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B9E30 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "deformationOptions";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B9E38 = v13;
      __cxa_guard_release(&qword_1EE1B9E00);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B9E30;
  *(this + 9) = re::internal::defaultConstruct<re::DeformationDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DeformationDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::DeformationDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::DeformationDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::internal::defaultConstruct<re::DeformationDefinition>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
}

void re::internal::defaultDestruct<re::DeformationDefinition>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::DeformationDefinition>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::DeformationDefinition>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_DeformationStackDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9F10, "DeformationStackDefinition");
    __cxa_guard_release(&qword_1EE1B9E10);
  }

  return &unk_1EE1B9F10;
}

void re::initInfo_DeformationStackDefinition(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x9F611EC88668AD56;
  v9[1] = "DeformationStackDefinition";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1B9E20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B9E20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::DeformationDefinition>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "deformationStack";
      *(v7 + 16) = &qword_1EE1B9E40;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1B9E18 = v7;
      __cxa_guard_release(&qword_1EE1B9E20);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B9E18;
  *(this + 9) = re::internal::defaultConstruct<re::DeformationStackDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DeformationStackDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::DeformationStackDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::DeformationStackDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void re::IntrospectionInfo<re::DynamicArray<re::DeformationDefinition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B9E28, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B9E28);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::DeformationDefinition>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1B9E28);
    }
  }

  if ((_MergedGlobals_464 & 1) == 0)
  {
    v1 = qword_1EE1B9E08;
    if (qword_1EE1B9E08 || (v1 = re::allocInfo_DeformationDefinition(a1), qword_1EE1B9E08 = v1, re::initInfo_DeformationDefinition(v1, v2), (_MergedGlobals_464 & 1) == 0))
    {
      _MergedGlobals_464 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9E40, 0);
      qword_1EE1B9E50 = 0x2800000003;
      dword_1EE1B9E58 = v3;
      word_1EE1B9E5C = 0;
      *&xmmword_1EE1B9E60 = 0;
      *(&xmmword_1EE1B9E60 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9E70 = v1;
      qword_1EE1B9E78 = 0;
      qword_1EE1B9E40 = &unk_1F5D09170;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B9E40, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B9E60 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::DeformationStackDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::DeformationStackDefinition>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t re::IntrospectionDynamicArray<re::DeformationDefinition>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1B9E40, 0);
  *(&qword_1EE1B9E50 + 6) = 0;
  qword_1EE1B9E50 = 0;
  *&xmmword_1EE1B9E60 = 0;
  *(&xmmword_1EE1B9E60 + 1) = 0xFFFFFFFFLL;
  qword_1EE1B9E40 = &unk_1F5CADA48;
  qword_1EE1B9E78 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1B9E70);
  qword_1EE1B9E40 = &unk_1F5D09170;
  return result;
}

void *re::IntrospectionDynamicArray<re::DeformationDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DeformationDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DeformationDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DeformationDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DeformationDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DeformationDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::DeformationDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DeformationDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::DeformationDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DeformationDefinition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  re::DynamicArray<re::DeformationDefinition>::add(this, v11);
  v8 = v12;
  if (v12)
  {
    if (v13)
    {
      v8 = (*(*v12 + 40))();
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
  }

  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::DeformationDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void re::DynamicArray<re::DeformationDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::FixedArray<CoreIKTransform>::deinit(v10 + 2);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 40;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v7[3] = 0;
        v7[4] = 0;
        v7[2] = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DeformationDefinition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DeformationDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::DeformationDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::RenderManager::RenderManager(re::RenderManager *this)
{
  *this = 1;
  v2 = this + 317;
  *(this + 1) = 0;
  *(this + 2) = &str_67;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1;
  *(this + 102) = 0;
  *(this + 26) = 0;
  v3 = re::globalAllocators(this);
  *(this + 30) = v3[2];
  *(this + 31) = 0;
  *(this + 16) = xmmword_1E3054760;
  *(this + 17) = xmmword_1E3054770;
  *(this + 37) = 0x101010101010101;
  *(this + 38) = 0x101010101010101;
  *(this + 36) = 32505856;
  *(this + 78) = 257;
  *(this + 316) = 1;
  *v2 = 0;
  *(v2 + 4) = 0x100010001000001;
  *(this + 329) = 0;
  *(this + 331) = 0;
  *(this + 83) = 40;
  *(this + 168) = 257;
  *(this + 338) = 1;
  *(this + 44) = 0;
  *(this + 90) = 1;
  *(this + 369) = 0;
  *(this + 364) = 0;
  v4 = re::globalAllocators(v3);
  *(this + 51) = v4[2];
  *(this + 52) = 0;
  *(this + 424) = 0;
  {
    if (v4)
    {
      re::introspect<re::TriangleFillModeData>(BOOL)::info = re::introspect_TriangleFillModeData(0);
    }
  }

  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 1328, 16);
  re::TargetDisplayInfoProvider::TargetDisplayInfoProvider(v6);
}

void re::RenderManager::~RenderManager(re::RenderManager *this)
{
  re::internal::destroyPersistent<re::TargetDisplayInfoProvider>("~RenderManager", 63, *(this + 43));
  *(this + 43) = 0;
  re::FunctionBase<24ul,BOOL ()(void)>::destroyCallable(this + 384);
  v2 = *(this + 44);
  if (v2)
  {

    *(this + 44) = 0;
  }

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(this + 216);

  re::StringID::destroyString((this + 8));
}

re *re::internal::destroyPersistent<re::TargetDisplayInfoProvider>(re *result, uint64_t a2, re::TargetDisplayInfoProvider *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::TargetDisplayInfoProvider::~TargetDisplayInfoProvider(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t (***re::RenderManager::deinit(re::RenderManager *this))(void)
{
  v102 = *MEMORY[0x1E69E9840];
  v2 = *(this + 14);
  if (v2 && (*(v2 + 787) & 1) == 0)
  {
    re::DrawingManager::prepareForDeinit(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    re::ShaderManager::prepareForDeinit(v3);
  }

  re::FrameManager::prepareForDeinit(*(this + 18));
  v5 = *(this + 14);
  if (v5)
  {
    re::DrawingManager::deinit(v5);
    v6 = *(this + 14);
    if (v6)
    {
      v7 = re::globalAllocators(v5)[2];
      re::DrawingManager::~DrawingManager(v6);
      v5 = (*(*v7 + 40))(v7, v6);
    }

    *(this + 14) = 0;
  }

  *(this + 22) = 0;
  v8 = *(this + 23);
  if (v8)
  {
    v9 = re::globalAllocators(v5)[2];
    v10 = 4368;
    do
    {
      v11 = v8 + v10;
      *(v11 - 208) = 0;
      *(v11 - 200) = *(v8 + v10 - 200) + 1;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v8 + v10 - 64));
      *(v11 - 224) = 0;
      *(v11 - 216) = 0;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v8 + v10 - 64));
      *(v11 - 208) = 0;
      ++*(v11 - 200);
      *(v11 - 1440) = 0;
      ++*(v11 - 1432);
      re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit((v8 + v10 - 272));
      *(v8 + v10 - 1456) = 0;
      *(v11 - 1448) = 0;
      v12 = re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit((v8 + v10 - 272));
      *(v11 - 1440) = 0;
      ++*(v11 - 1432);
      v10 -= 1456;
    }

    while (v10);
    v5 = (*(*v9 + 40))(v9, v8, v12);
    *(this + 23) = 0;
  }

  v13 = *(this + 24);
  if (v13)
  {
    v14 = re::globalAllocators(v5)[2];
    re::FixedArray<CoreIKTransform>::deinit((v13 + 584));
    v15 = *(v13 + 576);
    if (v15)
    {

      *(v13 + 576) = 0;
    }

    re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v13 + 528));
    re::DynamicArray<unsigned long>::deinit(v13 + 488);
    re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit((v13 + 440));
    v16 = *(v13 + 432);
    if (v16)
    {

      *(v13 + 432) = 0;
    }

    v17 = *(v13 + 424);
    if (v17)
    {

      *(v13 + 424) = 0;
    }

    v18 = *(v13 + 416);
    if (v18)
    {

      *(v13 + 416) = 0;
    }

    re::MeshShadowGenerationBacklog::~MeshShadowGenerationBacklog((v13 + 320));
    re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit((v13 + 272));
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit((v13 + 224));
    re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit((v13 + 176));
    v19 = re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit((v13 + 128));
    v20 = *(v13 + 88);
    if (v20)
    {
      if (*(v13 + 120))
      {
        (*(*v20 + 40))(v20, v19);
      }

      *(v13 + 120) = 0;
      *(v13 + 96) = 0;
      *(v13 + 104) = 0;
      *(v13 + 88) = 0;
      ++*(v13 + 112);
    }

    re::DynamicArray<unsigned long>::deinit(v13 + 48);
    std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>>::~unique_ptr[abi:nn200100]((v13 + 8));
    (*(*v14 + 40))(v14, v13);
    *(this + 24) = 0;
  }

  v21 = *(this + 3);
  if (v21)
  {
    v22 = re::MaterialManager::deinit(v21);
    v23 = *(this + 3);
    if (v23)
    {
      v24 = re::globalAllocators(v22)[2];
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v23 + 1200));
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v23 + 1152));
      re::DataArray<re::MaterialParameterBlock>::deinit(v23 + 1088);
      re::DynamicArray<unsigned long>::deinit(v23 + 1088);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v23 + 1040));
      v25.n128_f64[0] = re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v23 + 976);
      v26 = *(v23 + 912);
      if (v26)
      {
        v27 = *(v23 + 944);
        if (v27)
        {
          v28 = *(v23 + 928);
          if (v28)
          {
            v29 = v28 << 6;
            do
            {
              v25.n128_f64[0] = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v27);
              v27 += 64;
              v29 -= 64;
            }

            while (v29);
            v26 = *(v23 + 912);
            v27 = *(v23 + 944);
          }

          (*(*v26 + 40))(v26, v27, v25);
        }

        *(v23 + 944) = 0;
        *(v23 + 920) = 0;
        *(v23 + 928) = 0;
        *(v23 + 912) = 0;
        ++*(v23 + 936);
      }

      v30 = *(v23 + 880);
      if (v30)
      {

        *(v23 + 880) = 0;
      }

      v31 = *(v23 + 872);
      if (v31)
      {

        *(v23 + 872) = 0;
      }

      v32 = *(v23 + 864);
      if (v32)
      {

        *(v23 + 864) = 0;
      }

      v33 = *(v23 + 856);
      if (v33)
      {

        *(v23 + 856) = 0;
      }

      v34 = *(v23 + 848);
      if (v34)
      {

        *(v23 + 848) = 0;
      }

      v35 = *(v23 + 840);
      if (v35)
      {

        *(v23 + 840) = 0;
      }

      v36 = *(v23 + 832);
      if (v36)
      {

        *(v23 + 832) = 0;
      }

      v37 = *(v23 + 824);
      if (v37)
      {

        *(v23 + 824) = 0;
      }

      v38 = *(v23 + 816);
      if (v38)
      {

        *(v23 + 816) = 0;
      }

      v39 = *(v23 + 808);
      if (v39)
      {

        *(v23 + 808) = 0;
      }

      v40 = *(v23 + 800);
      if (v40)
      {

        *(v23 + 800) = 0;
      }

      v41 = *(v23 + 792);
      if (v41)
      {

        *(v23 + 792) = 0;
      }

      v42 = *(v23 + 784);
      if (v42)
      {

        *(v23 + 784) = 0;
      }

      v43 = *(v23 + 776);
      if (v43)
      {

        *(v23 + 776) = 0;
      }

      v44 = *(v23 + 768);
      if (v44)
      {

        *(v23 + 768) = 0;
      }

      v45 = *(v23 + 760);
      if (v45)
      {

        *(v23 + 760) = 0;
      }

      re::FixedArray<re::DynamicString>::deinit((v23 + 736));
      v46 = *(v23 + 672);
      if (v46)
      {
        if (*(v23 + 704))
        {
          (*(*v46 + 40))(v46);
        }

        *(v23 + 704) = 0;
        *(v23 + 680) = 0;
        *(v23 + 688) = 0;
        *(v23 + 672) = 0;
        ++*(v23 + 696);
      }

      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 592));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 544));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 496));
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v23 + 440);
      re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(v23 + 400);
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v23 + 336);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 288));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 240));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 192));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 144));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 96));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 48));
      v47 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v23);
      (*(*v24 + 40))(v24, v23, v47);
    }

    *(this + 3) = 0;
  }

  v48 = *(this + 4);
  if (v48)
  {
    re::DataArray<re::MeshModel>::deinit((v48 + 1));
    v49 = re::DataArray<re::MeshInstance>::deinit((v48 + 9));
    *v48 = 0;
    v50 = *(this + 4);
    if (v50)
    {
      v51 = re::globalAllocators(v49)[2];
      re::DataArray<re::MeshModel>::deinit(v50 + 8);
      re::DataArray<re::MeshInstance>::deinit(v50 + 72);
      *v50 = 0;

      re::FixedArray<re::AttributeArgument>::deinit((v50 + 152));
      v52 = *(v50 + 144);
      if (v52)
      {

        *(v50 + 144) = 0;
      }

      v53 = *(v50 + 136);
      if (v53)
      {

        *(v50 + 136) = 0;
      }

      re::DataArray<re::MeshInstance>::deinit(v50 + 72);
      re::DynamicArray<unsigned long>::deinit(v50 + 72);
      re::DataArray<re::MeshModel>::deinit(v50 + 8);
      re::DynamicArray<unsigned long>::deinit(v50 + 8);
      (*(*v51 + 40))(v51, v50);
    }

    *(this + 4) = 0;
  }

  v54 = *(this + 5);
  if (v54)
  {
    re::SamplerManager::deinit(v54);
    v56 = *(this + 5);
    if (v56)
    {
      v57 = re::globalAllocators(v55)[2];
      re::SamplerManager::~SamplerManager(v56);
      (*(*v57 + 40))(v57, v56);
    }

    *(this + 5) = 0;
  }

  v58 = *(this + 6);
  if (v58)
  {
    v59 = re::ShaderManager::deinit(v58, v4);
    v60 = *(this + 6);
    if (v60)
    {
      v61 = re::globalAllocators(v59)[2];
      re::ShaderManager::~ShaderManager(v60);
      (*(*v61 + 40))(v61, v60);
    }

    *(this + 6) = 0;
  }

  v62 = *(this + 7);
  if (v62)
  {
    re::TextureManager::deinit(v62);
    v64 = *(this + 7);
    if (v64)
    {
      v65 = re::globalAllocators(v63)[2];
      re::TextureManager::~TextureManager(v64);
      (*(*v65 + 40))(v65, v64);
    }

    *(this + 7) = 0;
  }

  v66 = *(this + 8);
  if (v66)
  {
    re::TextManager::deinit(v66);
    v68 = *(this + 8);
    if (v68)
    {
      v69 = re::globalAllocators(v67)[2];
      re::TextManager::~TextManager(v68);
      (*(*v69 + 40))(v69, v68);
    }

    *(this + 8) = 0;
  }

  if (*(this + 9))
  {
    *(this + 9) = 0;
  }

  v70 = *(this + 10);
  if (v70)
  {
    re::DebugRenderer::deinit(v70);
    v71 = *(this + 10);
    if (v71)
    {
      v72 = re::globalAllocators(v70)[2];
      re::DebugRenderer::~DebugRenderer(v71);
      v70 = (*(*v72 + 40))(v72, v71);
    }

    *(this + 10) = 0;
  }

  v73 = *(this + 11);
  if (v73)
  {
    *v73 = 0;
    v74 = re::globalAllocators(v70)[2];
    re::PrimitiveRenderer::~PrimitiveRenderer(v73);
    v70 = (*(*v74 + 40))(v74, v73);
    *(this + 11) = 0;
  }

  v75 = *(this + 12);
  if (v75)
  {
    re::s_debugSettingsManager = 0;
    v76 = re::globalAllocators(v70)[2];
    std::mutex::~mutex((v75 + 48));
    v77 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v75);
    v70 = (*(*v76 + 40))(v76, v75, v77);
    *(this + 12) = 0;
  }

  v78 = *(this + 15);
  if (v78)
  {
    v79 = re::globalAllocators(v70)[2];
    re::FixedArray<CoreIKTransform>::deinit(v78 + 247);
    re::FixedArray<CoreIKTransform>::deinit(v78 + 244);
    re::FixedArray<CoreIKTransform>::deinit(v78 + 241);
    v80 = v78[232];
    if (v80)
    {

      v78[232] = 0;
    }

    v81 = v78[231];
    if (v81)
    {

      v78[231] = 0;
    }

    re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable((v78 + 4));
    v70 = (*(*v79 + 40))(v79, v78);
    *(this + 15) = 0;
  }

  v82 = *(this + 16);
  if (v82)
  {
    v83 = re::globalAllocators(v70)[2];
    v84.n128_f64[0] = re::DynamicString::deinit((v82 + 192));
    v85 = *(v82 + 160);
    if (v85)
    {
      v85(0, v82 + 160, 0, 0, 0, v84.n128_f64[0]);
    }

    v70 = (*(*v83 + 40))(v83, v82, v84);
    *(this + 16) = 0;
  }

  v86 = *(this + 17);
  if (v86)
  {
    v87 = re::globalAllocators(v70)[2];
    re::DataArray<re::DisplayStatsManager::MetricState>::deinit(v86);
    re::DataArray<re::DisplayStatsManager::MetricState>::deinit(v86);
    re::DynamicArray<unsigned long>::deinit(v86);
    v70 = (*(*v87 + 40))(v87, v86);
    *(this + 17) = 0;
  }

  v88 = *(this + 44);
  if (v88)
  {

    *(this + 44) = 0;
  }

  *(this + 204) = 0;
  v89 = *(this + 18);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = re::globalAllocators(v70)[2];
  v101 = 0;
  re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(v89 + 128, &v97);
  v90 = re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(&v97);
  v91 = *(this + 18);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = re::globalAllocators(v90)[2];
  v101 = 0;
  re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(v91 + 168, &v97);
  v92 = re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(&v97);
  v93 = *(this + 18);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = re::globalAllocators(v92)[2];
  v101 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v93 + 208, &v97);
  v94 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v97);
  v95 = *(this + 18);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = re::globalAllocators(v94)[2];
  v101 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v95 + 288, &v97);
  result = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v97);
  *(this + 18) = 0;
  *(this + 13) = 0;
  return result;
}

uint64_t re::RenderManager::perFrameAllocator(re::RenderManager *this)
{
  v1 = this;
  v2 = *(this + 14);
  if (v2)
  {
    this = re::RenderFrameBox::get((v2 + 328), *(*(this + 18) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(this + 18) + 16) << 60));
    if (this)
    {
      return *(this + 49);
    }
  }

  v4 = re::globalAllocators(this);
  v5 = *(*(v1 + 18) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v1 + 18) + 16) << 60);
  v6 = v4[6];

  return re::PerFrameAllocatorManager::perFrameAllocator(v6, v5);
}

void re::RenderManager::addDelayedDestructor(void *a1, uint64_t a2)
{
  v4 = a1[14];
  if (!v4 || (v5 = atomic_load((v4 + 832))) != 0 || (v7 = a1[52]) == 0 || ((*(*v7 + 16))(v7) & 1) != 0)
  {
    v6 = a1[18];

    re::FrameManager::addDelayedDestructor(v6, a2);
  }

  else
  {
    v8 = *(**(a2 + 32) + 16);

    v8();
  }
}

void re::RenderManager::addDelayedDestructorToRenderThread(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 14);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v4 + 312);
  if (!v5)
  {
LABEL_5:
    if (!atomic_load((v4 + 832)))
    {
      a1 = v3[52];
      if (a1)
      {
        a1 = (*(*a1 + 16))(a1);
        if ((a1 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_6:
    v7 = v3[18];

    return;
  }

  a1 = pthread_self();
  if (*v5 != a1)
  {
    v4 = v3[14];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v8 = *(**(a2 + 32) + 16);

  v8();
}

void re::RenderManager::sampleComputeEncoderMTLCounterBegin(uint64_t a1, id *a2, unsigned int a3)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    v5 = *a2;
    re::DrawingManager::sampleComputeEncoderMTLCounterBegin(v3, &v5, a3);
  }
}

void re::RenderManager::sampleComputeEncoderMTLCounterEnd(uint64_t a1, id *a2, unsigned int a3)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    v5 = *a2;
    re::DrawingManager::sampleComputeEncoderMTLCounterEnd(v3, &v5, a3);
  }
}

void re::RenderManager::enableMTLCounterSamplingOnRenderPassDescriptor(uint64_t a1, id *a2, unsigned int a3)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    v5 = *a2;
    v6 = v5;
    re::DrawingManager::enableMTLCounterSamplingOnRenderPassDescriptor(v3, &v6, a3);
    if (v5)
    {
    }
  }
}

void re::RenderManager::makeComputeCommandEncoderWithMTLCounterSampling(uint64_t a1@<X0>, id *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a1 + 112);
  v9 = *a2;
  re::DrawingManager::makeComputeCommandEncoderWithMTLCounterSampling(v8, &v9, a3, a4, a5);
}

void re::RenderManager::reloadLibrary(re::RenderManager *this, const char *a2, const char *a3)
{
  v5 = *(this + 14);
  if (v5)
  {

    re::DrawingManager::reloadLibrary(v5, a2, a3);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = *re::graphicsLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "RenderManager::reloadLibrary called, but DrawingManager does not exist!", v7, 2u);
    }
  }
}

uint64_t re::RenderManager::registerRenderLayer(uint64_t a1, id *a2)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  v3 = re::DrawingManager::registerRenderLayer(v2, &v5);

  return v3;
}

re::RenderManager *re::RenderManager::createDrawingManager(re::RenderManager *this)
{
  if (!*(this + 14))
  {
    v2 = this;
    v3 = re::globalAllocators(this);
    v4 = (*(*v3[2] + 32))(v3[2], 1856, 8);
    re::DrawingManager::DrawingManager(v4);
    *(v2 + 14) = v5;
    v6 = *(v2 + 20);
    v7 = *(v2 + 4);

    return re::DrawingManager::init(v5, v2, 0, v6, v7, 0);
  }

  return this;
}

uint64_t re::RenderManager::splitCommandBuffersForDebugging(re::RenderManager *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("splitCommandBuffersForDebugging", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::RenderManager::splitCommandBuffersForDebugging(void)const::kSplitCommandBuffersForDebugging = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[3208];
}

void *re::allocInfo_RenderManager(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9FB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9FB8, "RenderManager");
    __cxa_guard_release(&qword_1EE1B9FB0);
  }

  return &unk_1EE1B9FB8;
}

void re::initInfo_RenderManager(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4A7E34345895822ELL;
  v6[1] = "RenderManager";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1B000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_RenderManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::RenderManager>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderManager>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderManager>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderManager>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::FunctionBase<24ul,BOOL ()(void)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,BOOL ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

double re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(uint64_t *a1)
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
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v6 + v4 + 24));
          v3 = *(a1 + 8);
        }

        v4 += 80;
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

double re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 32);
          v3 = *(a1 + 8);
        }

        v4 += 384;
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

double re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 18;
        --v3;
      }

      while (v3);
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

uint64_t *std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::MeshPart *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::MeshPart *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::MeshPart *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::DataArray<re::MeshInstance>::deinit(v4);
}

uint64_t re::DataArray<re::MeshInstance>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::MeshInstance>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::MeshInstance>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::MeshInstance>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::DataArray<re::MeshInstance>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = re::DataArray<re::MeshInstance>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit((v5 + 120));
    re::FixedArray<CoreIKTransform>::deinit(v6 + 12);
    re::StringID::destroyString(v6);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

uint64_t re::DataArray<re::MeshModel>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::MeshModel>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::MeshModel>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::MeshModel>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::DataArray<re::MeshModel>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = re::DataArray<re::MeshModel>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    re::MeshModel::~MeshModel(v5);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

re::MaterialParameterBlock *re::MaterialParameterBlock::MaterialParameterBlock(re::MaterialParameterBlock *this, const re::MaterialParameterBlock *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CF4000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  bzero(this + 176, 0x2ECuLL);
  *(this + 924) = 0x7FFFFFFFLL;
  *(this + 936) = 0;
  *(this + 948) = 0;
  *(this + 121) = 0;
  *(this + 123) = 0xFFFFFFFFFFFFFFFLL;
  *(this + 124) = 0;
  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;

  return re::MaterialParameterBlock::operator=(this, a2);
}

re::MaterialParameterBlock *re::MaterialParameterBlock::operator=(re::MaterialParameterBlock *this, uint64_t a2)
{
  if (this != a2)
  {
    re::MaterialParameterBlock::disconnectFromTextureHandles(this);
    re::DynamicArray<BOOL>::operator=(this + 24, (a2 + 24));
    v4 = *(a2 + 64);
    if (*(this + 8))
    {
      v5 = (this + 64);
      if (v4)
      {
        re::DynamicArray<re::TextureHandle>::copy(v5, a2 + 64);
        ++*(this + 22);
      }

      else
      {
        re::DynamicArray<re::TextureHandle>::clear(v5);
      }
    }

    else if (v4)
    {
      v6 = *(a2 + 80);
      *(this + 8) = v4;
      re::DynamicArray<re::TextureHandle>::setCapacity(this + 8, v6);
      ++*(this + 22);
      re::DynamicArray<re::TextureHandle>::copy(this + 8, a2 + 64);
    }

    v7 = *(a2 + 104);
    if (*(this + 13))
    {
      v8 = (this + 104);
      if (v7)
      {
        re::DynamicArray<re::BufferSlice>::copy(v8, a2 + 104);
        ++*(this + 32);
      }

      else
      {
        re::DynamicArray<re::BufferSlice>::clear(v8);
      }
    }

    else if (v7)
    {
      v9 = *(a2 + 120);
      *(this + 13) = v7;
      re::DynamicArray<re::BufferSlice>::setCapacity(this + 13, v9);
      ++*(this + 32);
      re::DynamicArray<re::BufferSlice>::copy(this + 13, a2 + 104);
    }

    v10 = *(a2 + 144);
    if (*(this + 18))
    {
      v11 = (this + 144);
      if (v10)
      {
        re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::copy(v11, a2 + 144);
        ++*(this + 42);
      }

      else
      {
        re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(v11);
      }
    }

    else if (v10)
    {
      v12 = *(a2 + 160);
      *(this + 18) = v10;
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 18, v12);
      ++*(this + 42);
      re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::copy(this + 18, a2 + 144);
    }

    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::copy(this + 23, a2 + 184);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(this + 31, a2 + 248);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(this + 39, a2 + 312);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(this + 47, a2 + 376);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(this + 55, a2 + 440);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(this + 63, a2 + 504);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(this + 71, a2 + 568);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(this + 79, a2 + 632);
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::copy(this + 87, a2 + 696);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(this + 95, a2 + 760);
    re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(this + 888, a2 + 888);
    *(this + 121) = *(a2 + 968);
    if (*(this + 936))
    {
      if (*(a2 + 936))
      {
        *(this + 937) = *(a2 + 937);
      }

      else
      {
        *(this + 936) = 0;
      }
    }

    else if (*(a2 + 936))
    {
      *(this + 936) = 1;
      *(this + 937) = *(a2 + 937);
    }

    if (*(this + 948))
    {
      if ((*(a2 + 948) & 1) == 0)
      {
        *(this + 948) = 0;
LABEL_32:
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this + 124, *(a2 + 992));
        *(this + 125) = *(a2 + 1000);
        re::MaterialParameterBlock::connectToTextureHandles(this);
        return this;
      }
    }

    else
    {
      if ((*(a2 + 948) & 1) == 0)
      {
        goto LABEL_32;
      }

      *(this + 948) = 1;
    }

    v13 = *(a2 + 952);
    *(this + 240) = *(a2 + 960);
    *(this + 119) = v13;
    goto LABEL_32;
  }

  return this;
}

uint64_t re::MaterialParameterBlock::MaterialParameterBlock(uint64_t a1, re::MaterialParameterBlock *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CF4000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  bzero((a1 + 176), 0x2ECuLL);
  *(a1 + 924) = 0x7FFFFFFFLL;
  *(a1 + 936) = 0;
  *(a1 + 948) = 0;
  *(a1 + 968) = 0;
  *(a1 + 984) = 0xFFFFFFFFFFFFFFFLL;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 0xFFFFFFFFFFFFFFFLL;

  return re::MaterialParameterBlock::operator=(a1, a2);
}

uint64_t re::MaterialParameterBlock::operator=(uint64_t a1, re::MaterialParameterBlock *this)
{
  if (a1 == this)
  {
    return a1;
  }

  re::MaterialParameterBlock::disconnectFromTextureHandles(this);
  re::MaterialParameterBlock::disconnectFromTextureHandles(a1);
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a1 + 24, this + 24);
  v5 = *(a1 + 64);
  v6 = *(this + 8);
  if (v5 && v6 && v5 != v6)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = *(this + 9);
    *(a1 + 64) = v6;
    *(a1 + 72) = v8;
    *(this + 8) = v5;
    *(this + 9) = v7;
    v9 = *(a1 + 80);
    *(a1 + 80) = *(this + 10);
    *(this + 10) = v9;
    v10 = *(a1 + 96);
    *(a1 + 96) = *(this + 12);
    *(this + 12) = v10;
    ++*(this + 22);
    ++*(a1 + 88);
    v11 = *(a1 + 104);
    v12 = *(this + 13);
    if (!v11 || !v12 || v11 == v12)
    {
      v13 = *(a1 + 112);
      v14 = *(this + 14);
      *(a1 + 104) = v12;
      *(a1 + 112) = v14;
      *(this + 13) = v11;
      *(this + 14) = v13;
      v15 = *(a1 + 120);
      *(a1 + 120) = *(this + 15);
      *(this + 15) = v15;
      v16 = *(a1 + 136);
      *(a1 + 136) = *(this + 17);
      *(this + 17) = v16;
      ++*(this + 32);
      ++*(a1 + 128);
      re::DynamicArray<re::TextureViews<re::TextureHandle>>::operator=(a1 + 144, this + 144);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 184), this + 23);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 248), this + 31);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 312), this + 39);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 376), this + 47);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 440), this + 55);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 504), this + 63);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 568), this + 71);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 632), this + 79);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 696), this + 87);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 760), this + 95);
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(a1 + 888, this + 888);
      *(a1 + 968) = *(this + 121);
      if (*(a1 + 936))
      {
        if (*(this + 936))
        {
          *(a1 + 937) = *(this + 937);
        }

        else
        {
          *(a1 + 936) = 0;
        }
      }

      else if (*(this + 936))
      {
        *(a1 + 936) = 1;
        *(a1 + 937) = *(this + 937);
      }

      if (*(a1 + 948))
      {
        if ((*(this + 948) & 1) == 0)
        {
          *(a1 + 948) = 0;
LABEL_20:
          v18 = *(a1 + 992);
          *(a1 + 992) = *(this + 124);
          *(this + 124) = v18;
          *(a1 + 1000) = *(this + 125);
          re::MaterialParameterBlock::connectToTextureHandles(a1);
          return a1;
        }
      }

      else
      {
        if ((*(this + 948) & 1) == 0)
        {
          goto LABEL_20;
        }

        *(a1 + 948) = 1;
      }

      v17 = *(this + 119);
      *(a1 + 960) = *(this + 240);
      *(a1 + 952) = v17;
      goto LABEL_20;
    }
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
  result = _os_crash();
  __break(1u);
  return result;
}

re::MaterialParameterBlock *re::MaterialParameterBlock::MaterialParameterBlock(re::MaterialParameterBlock *this, re::RenderManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CF4000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  bzero(this + 176, 0x2ECuLL);
  *(this + 924) = 0x7FFFFFFFLL;
  *(this + 936) = 0;
  *(this + 948) = 0;
  *(this + 121) = a2;
  *(this + 123) = 0xFFFFFFFFFFFFFFFLL;
  *(this + 124) = 0;
  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;
  return this;
}

void *re::MaterialParameterBlock::disconnectFromTextureHandles(void *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v14[0] = this + 39;
  v1 = this[41];
  if (v1 >= 0x10)
  {
    v2 = this;
    v3 = 0;
    v4 = this[39];
    v5 = v1 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v14[1] = v6 ^ 0xFFFFLL;
      if (v6 != 0xFFFFLL)
      {
        break;
      }

      v3 -= 16;
      ++v4;
      if (!--v5)
      {
        return this;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v15 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = *(v14[0] + 8) + 16 * v8;
        v10 = *(v9 + 8);
        v11 = *(v2 + 80);
        if (v11 <= v10)
        {
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
          v20 = 789;
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v12 = *(v2 + 96) + 16 * v10;
        v13 = *v9;
        re::TextureHandle::stopTrackingMaterialParameterBlock(v12, v2, &v13);
        v13 = 0;
        this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v14);
        v8 = v15;
      }

      while (v15 != -1);
    }
  }

  return this;
}

void *re::MaterialParameterBlock::connectToTextureHandles(void *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v14[0] = this + 39;
  v1 = this[41];
  if (v1 >= 0x10)
  {
    v2 = this;
    v3 = 0;
    v4 = this[39];
    v5 = v1 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v14[1] = v6 ^ 0xFFFFLL;
      if (v6 != 0xFFFFLL)
      {
        break;
      }

      v3 -= 16;
      ++v4;
      if (!--v5)
      {
        return this;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v15 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = *(v14[0] + 8) + 16 * v8;
        v10 = *(v9 + 8);
        v11 = *(v2 + 80);
        if (v11 <= v10)
        {
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
          v20 = 789;
          v21 = 2048;
          v22 = v10;
          v23 = 2048;
          v24 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v12 = *(v2 + 96) + 16 * v10;
        v13 = *v9;
        re::TextureHandle::startTrackingMaterialParameterBlock(v12, v2, &v13);
        v13 = 0;
        this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v14);
        v8 = v15;
      }

      while (v15 != -1);
    }
  }

  return this;
}

void re::MaterialParameterBlock::deinit(re::MaterialParameterBlock *this)
{
  re::MaterialParameterBlock::disconnectFromTextureHandles(this);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  re::DynamicArray<re::TextureHandle>::deinit(this + 64);
  re::DynamicArray<re::BufferSlice>::deinit(this + 104);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 144);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 184);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 248);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 312);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 376);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 440);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 504);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 568);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 632);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(this + 696);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 760);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 111);
  *(this + 121) = 0;
  v2 = *(this + 124);
  if (v2)
  {

    *(this + 124) = 0;
  }

  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;
}

void re::MaterialParameterBlock::clear(re::MaterialParameterBlock *this)
{
  re::MaterialParameterBlock::disconnectFromTextureHandles(this);
  *(this + 5) = 0;
  ++*(this + 12);
  re::DynamicArray<re::TextureHandle>::clear(this + 64);
  re::DynamicArray<re::BufferSlice>::clear(this + 104);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 144);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 23);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 31);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 39);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 47);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(this + 55);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(this + 63);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(this + 71);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(this + 79);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::clear(this + 87);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 95);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(this + 888);
  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this))
  {
    re::MaterialParameterTableDelta::encodeClear(*(this + 122));
  }

  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;
  if (*(this + 948) == 1)
  {
    *(this + 948) = 0;
  }

  if (*(this + 936) == 1)
  {
    *(this + 936) = 0;
  }
}

void re::DynamicArray<re::TextureHandle>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 16 * v2;
    do
    {
      re::TextureHandle::invalidate(v3);
      v3 = (v3 + 16);
      v4 -= 16;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::DynamicArray<re::BufferSlice>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      v5 = *(v3 + 24);
      if (v5 != -1)
      {
        result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v5])(&v6, v3);
      }

      *(v3 + 24) = -1;
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(re::MaterialParameterBlock *this)
{
  v2 = *(this + 121);
  v3 = *(v2 + 112);
  if (v3 && re::DrawingManager::checkDeltasCanBeEnqueuedOrDropDelta_115383182<re::PbrParameterDelta>(*(v2 + 112), *(this + 122)))
  {
    v4 = *(*(this + 121) + 144);
    v5 = *(v4 + 48);
    if (((*(this + 123) ^ v5) & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      *(this + 123) = v5 & 0xFFFFFFFFFFFFFFFLL | (*(v4 + 40) << 60);
      re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(this, &v8);
      *(this + 122) = re::DrawingManager::addRenderFrameDeltaForNextFrame<re::MaterialParameterTableDelta,re::MaterialParameterTable>(v3, &v8);
      if (v8)
      {
      }
    }

    return 1;
  }

  else
  {
    *(this + 122) = 0;
    v7 = *(this + 124);
    if (v7)
    {

      result = 0;
      *(this + 124) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t re::MaterialParameterBlock::handle@<X0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 23, a2);
  if (v6 != -1)
  {
    v7 = *(a1 + 24) + 16 * v6;
    LOWORD(v8) = *(v7 + 8);
    v9 = *(v7 + 10);
    result = re::MaterialParameterBlock::keysHash(a1);
    v11 = *(v7 + 11);
    v12 = 9;
    goto LABEL_10;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 55, a2) != -1)
  {
    result = re::MaterialParameterBlock::keysHash(a1);
    LOWORD(v8) = 0;
    v9 = 0;
    v11 = 0;
    v12 = 25;
    goto LABEL_10;
  }

  v13 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 39, a2);
  if (v13 != -1)
  {
    v8 = *(*(a1 + 40) + 16 * v13 + 8);
    result = re::MaterialParameterBlock::keysHash(a1);
    v11 = 0;
    v12 = 10;
LABEL_7:
    v9 = 1;
    goto LABEL_10;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 71, a2) != -1)
  {
    result = re::MaterialParameterBlock::keysHash(a1);
    LOWORD(v8) = 0;
    v9 = 0;
    v11 = 0;
    v12 = 26;
    goto LABEL_10;
  }

  v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 31, a2);
  if (v14 != -1)
  {
    v8 = *(*(a1 + 32) + 16 * v14 + 8);
    result = re::MaterialParameterBlock::keysHash(a1);
    v11 = 0;
    v12 = 11;
    goto LABEL_7;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 63, a2) != -1)
  {
    result = re::MaterialParameterBlock::keysHash(a1);
    LOWORD(v8) = 0;
    v9 = 0;
    v11 = 0;
    v12 = 27;
    goto LABEL_10;
  }

  v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, a2);
  if (v15 != -1)
  {
    v8 = *(*(a1 + 48) + 16 * v15 + 8);
    result = re::MaterialParameterBlock::keysHash(a1);
    v11 = 0;
    v12 = 12;
    goto LABEL_7;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 79, a2) == -1)
  {
    LOWORD(v8) = 0;
    v9 = 0;
    v12 = 0;
    result = 0;
    v11 = 0;
  }

  else
  {
    result = re::MaterialParameterBlock::keysHash(a1);
    LOWORD(v8) = 0;
    v9 = 0;
    v11 = 0;
    v12 = 28;
  }

LABEL_10:
  *a3 = *a2;
  *(a3 + 8) = v8;
  *(a3 + 10) = v9;
  *(a3 + 12) = v12;
  *(a3 + 16) = result;
  *(a3 + 24) = v11;
  return result;
}

unint64_t re::MaterialParameterBlock::keysHash(re::MaterialParameterBlock *this)
{
  v1 = (*(this + 76) + (*(this + 60) << 6) + (*(this + 60) >> 2) - 0x61C8864680B583E9) ^ *(this + 60);
  v2 = (*(this + 68) + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583E9) ^ v1;
  v3 = (*(this + 84) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v4 = (*(this + 28) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v5 = (*(this + 44) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v6 = (*(this + 36) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  return (*(this + 52) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
}

unint64_t re::MaterialParameterBlock::handle@<X0>(re::MaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }

      v3 &= ~0x8000000000000000;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v3;
  return re::MaterialParameterBlock::handle(this, &v8, a3);
}

int32x2_t re::MaterialParameterBlock::colorGamut4FValue@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Constant = re::ShaderGraphMaterial::getConstant(a1, a2);
  v6 = *(Constant + 8);
  v7 = *(a1 + 968);
  if (v7)
  {
    v7 = *(v7 + 160);
    if (v7)
    {
      LOBYTE(v7) = *v7;
    }
  }

  v8 = *Constant;
  *a3 = *Constant;
  result = vzip1_s32((v8 >> 32), v6);
  *(a3 + 4) = result;
  *(a3 + 12) = v6.i32[1];
  *(a3 + 16) = v7;
  return result;
}

re::TextureHandle *re::MaterialParameterBlock::textureHandleValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::TextureHandle *a3@<X8>)
{
  v3 = *(a2 + 8);
  if (*(a1 + 80) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(a1 + 96) + 16 * v3);

  return re::TextureHandle::TextureHandle(a3, v4);
}

uint64_t re::MaterialParameterBlock::bufferValue(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) <= *(a2 + 8))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(a1 + 136) + 40 * *(a2 + 8);

  return re::BufferSlice::buffer(v2, a2);
}

id re::MaterialParameterBlock::samplerValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 8);
  if (*(a1 + 160) <= v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(a1 + 176) + 8 * v4);
  *a3 = result;
  return result;
}

void re::MaterialParameterBlock::bindingValue(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 12) & 7;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 63, buf);
      v8 = *(a1 + 64);
      goto LABEL_17;
    }

    if (v6 == 4)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 79, buf);
      v8 = *(a1 + 80);
      goto LABEL_17;
    }
  }

  else
  {
    if (v6 == 1)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 55, buf);
      v8 = *(a1 + 56);
      goto LABEL_17;
    }

    if (v6 == 2)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 71, buf);
      v8 = *(a1 + 72);
LABEL_17:
      v14 = v8 + 40 * v7;
      *a3 = *(v14 + 8);
      *(a3 + 8) = *(v14 + 16);
      *(a3 + 16) = *(v14 + 24);
      *(a3 + 24) = *(v14 + 32);
      return;
    }
  }

  v9 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = *a2;
    if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else if (v15)
    {
      v16 = re::WeakStringID::debugStr(void)const::msg;
      snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v15);
    }

    else
    {
      v16 = &str_67;
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Attempted to get a binding from an invalid handle %s", buf, 0xCu);
  }

  *a3 = 3;
  v10 = re::StringID::invalid(buf);
  v11 = buf[0];
  *(a3 + 8) = *buf >> 1;
  if (v11)
  {
    if (buf[0])
    {
    }
  }

  *(a3 + 16) = 0;
  v12 = re::StringID::invalid(buf);
  v13 = buf[0];
  *(a3 + 24) = *buf >> 1;
  if (v13)
  {
    if (buf[0])
    {
    }
  }
}

void re::MaterialParameterBlock::removeParameter(re::MaterialParameterBlock *this, const char *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }

      v3 &= ~0x8000000000000000;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = v3;
  re::MaterialParameterBlock::handle(this, &v17, &v14);
  v8 = v16 & 7;
  if (v8)
  {
    if ((v16 & 0x10) != 0)
    {
      v13 = v14;
      re::MaterialParameterBlock::removeBinding(this, &v13);
    }

    else
    {
      if ((v16 & 7u) > 2)
      {
        if (v8 == 3)
        {
          v10 = v14;
          re::MaterialParameterBlock::removeBuffer(this, &v10);
          return;
        }

        if (v8 == 4)
        {
          v9 = v14;
          re::MaterialParameterBlock::removeSampler(this, &v9);
          return;
        }
      }

      else
      {
        if (v8 == 1)
        {
          v12 = v14;
          re::MaterialParameterBlock::removeConstant(this, &v12, v15);
          return;
        }

        if (v8 == 2)
        {
          v11 = v14;
          re::MaterialParameterBlock::removeTexture(this, &v11);
          return;
        }
      }

      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Trying to remove a paramter which exists but has an invalid type.", "!Unreachable code", "removeParameter", 477);
      _os_crash();
      __break(1u);
    }
  }
}

re *re::MaterialParameterBlock::removeBinding(re::MaterialParameterBlock *a1, uint64_t *a2)
{
  v14 = *a2;
  result = re::MaterialParameterBlock::handle(a1, &v14, v15);
  v14 = 0;
  v5 = v16 & 7;
  if ((v16 & 7) == 0 || (v16 & 0x10) == 0)
  {
    return result;
  }

  if ((v16 & 7u) > 2)
  {
    if (v5 == 3)
    {
      v7 = a1 + 504;
      goto LABEL_16;
    }

    if (v5 == 4)
    {
      v7 = a1 + 632;
      goto LABEL_16;
    }

LABEL_12:
    v8 = *re::graphicsLogObjects(result);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter type", v13, 2u);
    }

    goto LABEL_17;
  }

  if (v5 == 1)
  {
    v7 = a1 + 440;
    goto LABEL_16;
  }

  if (v5 != 2)
  {
    goto LABEL_12;
  }

  v7 = a1 + 568;
LABEL_16:
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::remove(v7, a2);
LABEL_17:
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result && v5 <= 4)
  {
    v9 = *a2;
    v10 = *(a1 + 122) + qword_1E30DA9A8[v5 - 1];
    v11 = *(v10 + 16);
    if (v11 >= *(v10 + 8))
    {
      result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::growCapacity(v10, v11 + 1);
      v11 = *(v10 + 16);
    }

    v12 = *(v10 + 32) + 48 * v11;
    *v12 = v9;
    *(v12 + 8) = 0;
    *(v10 + 16) = v11 + 1;
    ++*(v10 + 24);
  }

  return result;
}

_anonymous_namespace_ *re::MaterialParameterBlock::removeConstant(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  re::removeNameMappedConstant(&v7, (a1 + 184), (a1 + 24), a3);
  v6 = *a2;
  v7 = 0;
  return re::MaterialParameterBlock::addRemoveConstantDelta(a1, &v6);
}

void re::MaterialParameterBlock::removeTexture(uint64_t a1, uint64_t *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 312);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 312), a2);
  if (v6 != -1)
  {
    v7 = *(*(a1 + 320) + 16 * v6 + 8);
    v8 = *(a1 + 80);
    if (v8 <= v7)
    {
      v31 = 0;
      v44 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 789;
      v36 = 2048;
      v37 = v7;
      v38 = 2048;
      v39 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_26;
    }

    v9 = *(a1 + 96) + 16 * v7;
    v30 = *a2;
    re::TextureHandle::stopTrackingMaterialParameterBlock(v9, a1, &v30);
  }

  v29 = *a2;
  v10 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v5, &v29);
  if (v10 == -1)
  {
    goto LABEL_21;
  }

  v11 = *(a1 + 320) + 16 * v10;
  v13 = *(v11 + 8);
  v12 = (v11 + 8);
  v2 = v13;
  v8 = *(a1 + 80);
  if (v8 <= v13)
  {
LABEL_26:
    v31 = 0;
    v44 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "removeStableAt";
    v34 = 1024;
    v35 = 969;
    v36 = 2048;
    v37 = v2;
    v38 = 2048;
    v39 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v8 - 1 > v2)
  {
    v14 = *(a1 + 96);
    v15 = v14 + 16 * v2;
    if (v15 + 16 != v14 + 16 * v8)
    {
      v16 = 16 * v8 - 16 * v2 - 16;
      do
      {
        v17 = v15 + 16;
        re::TextureHandle::operator=(v15, v15 + 16);
        v15 = v17;
        v16 -= 16;
      }

      while (v16);
      v8 = *(a1 + 80);
    }
  }

  re::TextureHandle::invalidate((*(a1 + 96) + 16 * v8 - 16));
  --*(a1 + 80);
  ++*(a1 + 88);
  v18 = *v12;
  *&v40 = v5;
  v19 = *(a1 + 328);
  if (v19 >= 0x10)
  {
    v20 = 0;
    v21 = *v5;
    v22 = v19 >> 4;
    while (1)
    {
      v23 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v21), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *(&v40 + 1) = v23 ^ 0xFFFFLL;
      if (v23 != 0xFFFFLL)
      {
        break;
      }

      v20 -= 16;
      ++v21;
      if (!--v22)
      {
        goto LABEL_20;
      }
    }

    v24 = __clz(__rbit64(v23 ^ 0xFFFFLL));
    v25 = v24 - v20;
    *&v41 = v24 - v20;
    if (v24 + 1 != v20)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(v5, *(a1 + 320) + 16 * v25);
        v26 = *(a1 + 320) + 16 * v41;
        v27 = *(v26 + 8);
        if (v27 >= v18)
        {
          *(v26 + 8) = v27 - 1;
        }

        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(v5, v26);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v40);
        v25 = v41;
      }

      while (v41 != -1);
    }
  }

LABEL_20:
  re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(v5, &v29);
LABEL_21:
  v29 = 0;
  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    v28 = *(a1 + 976);
    *&v40 = *a2;
    BYTE8(v40) = 0;
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::add((v28 + 136), &v40);
    if (BYTE8(v40) == 1)
    {
      re::TextureHandle::invalidate(&v41);
    }
  }
}

void *re::MaterialParameterBlock::removeBuffer(uint64_t a1, uint64_t *a2)
{
  v10 = *a2;
  re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::BufferSlice>>(&v10, (a1 + 248), a1 + 104);
  v10 = 0;
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result)
  {
    v5 = *(a1 + 976);
    v6 = *a2;
    v7 = 0;
    result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::add((v5 + 96), &v6);
    if (v7 == 1 && v9 != -1)
    {
      return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v9])(&v11, &v8);
    }
  }

  return result;
}

void re::MaterialParameterBlock::removeSampler(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>>(&v7, (a1 + 376), a1 + 144);
  v7 = 0;
  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    v4 = *a2;
    v5 = 0;
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add((*(a1 + 976) + 176), &v4);
    if (v5 == 1)
    {
      if (v6)
      {
      }
    }
  }
}

void *re::MaterialParameterBlock::addConstant(re::MaterialParameterBlock *a1, void *a2, size_t a3, const void *a4, int a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 23, a2);
  if (v11 == -1)
  {
    v14 = *(a1 + 5) + 3;
    *buf = v14 & 0xFFFC;
    buf[2] = a3;
    buf[3] = a5;
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(a1 + 23, a2, buf);
    v12 = v14 & 0xFFFC;
    re::DynamicArray<BOOL>::resize(a1 + 24, v12 + a3);
    v15 = *(a1 + 5);
    if (v15 > v12)
    {
      goto LABEL_12;
    }

    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    a5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = v12;
    v26 = 2048;
    v27 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else
  {
    v5 = *(a1 + 24) + 16 * v11;
    v12 = *re::graphicsLogObjects(v11);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    if (*a2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*a2)
      {
        v13 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a2);
      }

      else
      {
        v13 = &str_67;
      }

      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_10:
  *buf = 136315138;
  *&buf[4] = v13;
  _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable constant (%s) that already exists. Overwiting with new values.", buf, 0xCu);
LABEL_11:
  v12 = *(v5 + 8);
  v16 = *(a1 + 5);
  if (v16 <= v12)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    v23 = 789;
    v24 = 2048;
    v25 = v12;
    v26 = 2048;
    v27 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_12:
  memcpy((*(a1 + 7) + v12), a4, a3);
  v18 = *a2;
  return re::MaterialParameterBlock::addConstantDelta(a1, &v18, a3, a4, a5);
}

void re::MaterialParameterBlock::addBinding(void *a1, uint64_t *a2, char *a3, char *a4, uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = *a2;
  v10 = re::MaterialParameterBlock::handle(a1, &v36, &v37);
  v36 = 0;
  if ((v38 & 7) != 0 && (v38 & 0x10) != 0)
  {
    v20 = *re::graphicsLogObjects(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a2;
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 0;
      }

      else if (v22)
      {
        v23 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v22);
      }

      else
      {
        v23 = &str_67;
      }

      *buf = 136315650;
      *&buf[4] = v23;
      v40 = 2080;
      v41 = a3;
      v42 = 2080;
      v43 = a4;
      _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable binding (%s) that already exists. Overwiting with new values (%s, %s).", buf, 0x20u);
    }

    re::MaterialParameterBlock::setBinding(v31, a3, a1, &v37, a4, a5);
    return;
  }

  v12 = re::StringID::invalid(buf);
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  v13 = re::StringID::invalid(buf);
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  v14 = 0;
  v32 = 1;
  v33 = *a2;
  while (1)
  {
    v15 = strcmp(re::s_materialTableIDMappings[v14], a3);
    if (!v15)
    {
      break;
    }

    if (++v14 == 168)
    {
      LOBYTE(v14) = 0;
      break;
    }
  }

  v34 = v14;
  if (a4)
  {
    v16 = *a4;
    if (*a4)
    {
      v17 = a4[1];
      if (v17)
      {
        v18 = (a4 + 2);
        do
        {
          v16 = 31 * v16 + v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }

      v16 &= ~0x8000000000000000;
    }
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v35 = v16;
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v24 = a1 + 63;
      goto LABEL_38;
    }

    if (a5 == 4)
    {
      v24 = a1 + 79;
      goto LABEL_38;
    }

LABEL_34:
    v25 = *re::graphicsLogObjects(v15);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter type", buf, 2u);
    }

    goto LABEL_39;
  }

  if (a5 == 1)
  {
    v24 = a1 + 55;
    goto LABEL_38;
  }

  if (a5 != 2)
  {
    goto LABEL_34;
  }

  v24 = a1 + 71;
LABEL_38:
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(v24, a2, &v32);
LABEL_39:
  if (!re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    return;
  }

  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v30 = a1[122];
      *buf = *a2;
      buf[8] = 1;
      *(&v41 + 2) = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v27 = (v30 + 256);
    }

    else
    {
      if (a5 != 4)
      {
        return;
      }

      v28 = a1[122];
      *buf = *a2;
      buf[8] = 1;
      *(&v41 + 2) = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v27 = (v28 + 336);
    }
  }

  else if (a5 == 1)
  {
    v29 = a1[122];
    *buf = *a2;
    buf[8] = 1;
    *(&v41 + 2) = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v27 = (v29 + 216);
  }

  else
  {
    if (a5 != 2)
    {
      return;
    }

    v26 = a1[122];
    *buf = *a2;
    buf[8] = 1;
    *(&v41 + 2) = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v27 = (v26 + 296);
  }

  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::add(v27, buf);
}