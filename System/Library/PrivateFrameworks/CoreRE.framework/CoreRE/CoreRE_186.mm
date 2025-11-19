void re::PSOToolManager::generateVariantsForTechnique(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v315 = *MEMORY[0x1E69E9840];
  v8 = re::MaterialTechniqueData::MaterialTechniqueData(v243);
  v9 = *(a2 + 400);
  if (v9)
  {
    v10 = *(a2 + 416);
    v11 = 664 * v9;
    while (1)
    {
      v8 = re::DynamicString::operator==(v10, a3);
      if (v8)
      {
        break;
      }

      v10 += 664;
      v11 -= 664;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v8 = re::MaterialTechniqueData::operator=(v243, v10);
  }

LABEL_7:
  v241 = 0;
  memset(v240, 0, sizeof(v240));
  v242 = 0x7FFFFFFFLL;
  v12 = v263;
  if (v263)
  {
    v13 = 0;
    v14 = v262;
    while (1)
    {
      v15 = *v14;
      v14 += 20;
      if (v15 < 0)
      {
        break;
      }

      if (v263 == ++v13)
      {
        LODWORD(v13) = v263;
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 != v263)
  {
    v16 = v262;
    do
    {
      v8 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v240, &v16[20 * v13 + 2], &v16[20 * v13 + 10]);
      if (v263 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = v263;
      }

      v16 = v262;
      while (v17 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if (v262[20 * v13] < 0)
        {
          goto LABEL_23;
        }
      }

      LODWORD(v13) = v17;
LABEL_23:
      ;
    }

    while (v13 != v12);
  }

  v18 = *(a4 + 32);
  if (v18)
  {
    v19 = 0;
    v20 = *(a4 + 16);
    while (1)
    {
      v21 = *v20;
      v20 += 20;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (v19 != v18)
  {
    v22 = *(a4 + 16);
    do
    {
      v8 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v240, (v22 + 80 * v19 + 8), (v22 + 80 * v19 + 40));
      if (*(a4 + 32) <= (v19 + 1))
      {
        v23 = v19 + 1;
      }

      else
      {
        v23 = *(a4 + 32);
      }

      v22 = *(a4 + 16);
      while (v23 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v22 + 80 * v19) & 0x80000000) != 0)
        {
          goto LABEL_40;
        }
      }

      LODWORD(v19) = v23;
LABEL_40:
      ;
    }

    while (v19 != v18);
  }

  if ((*(a1 + 1120) & 1) != 0 && *(a1 + 1124) == 1)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableSurfaceShaderWithCustomParams", &v298);
    v24 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v24 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableGeometryModifierWithCustomParams", &v298);
    v25 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v25 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableSurfaceShaderPremultipliedOutput", &v298);
    v26 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v26 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableSurfaceShaderVideo", &v298);
    v27 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v27 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "CAEdgeSpecularMode", &v298);
    v28 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v28 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnablePlatterFakeFresnel", &v298);
    v29 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v29 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "MatchUnlitColor", &v298);
    v30 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v30 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableDitherFadeOverride", &v298);
    v31 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v31 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "SurfaceShaderAttributeSet", &v298);
    v32 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v32 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableBarycentricCoordinates", &v298);
    v8 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v8 = (*(*v298 + 40))();
    }
  }

  memset(v239, 0, sizeof(v239));
  v237 = 0;
  v235 = 0u;
  v236 = 0u;
  v238 = 0x7FFFFFFFLL;
  if (v249)
  {
    v33 = v249 >> 1;
  }

  else
  {
    v33 = v249 >> 1;
  }

  if (v33)
  {
    v298 = 0uLL;
    memset(v299, 0, sizeof(v299));
    v285 = 0;
    v283 = 0uLL;
    v284 = 0uLL;
    v286 = 0x7FFFFFFFLL;
    re::PSOToolManager::gatherFunctionConstantsForShader(a1, v243, &v248, v240, v264, &v298, &v283);
    *&v280 = &v298;
    *(&v280 + 1) = 0;
    if (*&v299[0] >= 0x10uLL)
    {
      v34 = 0;
      v35 = v298;
      v36 = *&v299[0] >> 4;
      while (1)
      {
        v37 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v35), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        *(&v280 + 1) = v37 ^ 0xFFFFLL;
        if (v37 != 0xFFFFLL)
        {
          break;
        }

        v34 -= 16;
        ++v35;
        if (!--v36)
        {
          goto LABEL_84;
        }
      }

      v38 = __clz(__rbit64(v37 ^ 0xFFFFLL));
      v39 = v38 - v34;
      *&v281 = v38 - v34;
      if (v38 + 1 != v34)
      {
        do
        {
          re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addOrReplace(v239, (*(v280 + 8) + 96 * v39), *(v280 + 8) + 96 * v39 + 32);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v280);
          v39 = v281;
        }

        while (v281 != -1);
      }
    }

LABEL_84:
    v40 = v285;
    if (v285)
    {
      v41 = 0;
      v42 = v284;
      while (1)
      {
        v43 = *v42;
        v42 += 38;
        if (v43 < 0)
        {
          break;
        }

        if (v285 == ++v41)
        {
          LODWORD(v41) = v285;
          break;
        }
      }
    }

    else
    {
      LODWORD(v41) = 0;
    }

    if (v41 != v285)
    {
      v44 = v284;
      do
      {
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(&v235, (v44 + 152 * v41 + 8), v44 + 152 * v41 + 40);
        if (v285 <= v41 + 1)
        {
          v45 = v41 + 1;
        }

        else
        {
          v45 = v285;
        }

        v44 = v284;
        while (v45 - 1 != v41)
        {
          LODWORD(v41) = v41 + 1;
          if ((*(v284 + 152 * v41) & 0x80000000) != 0)
          {
            goto LABEL_100;
          }
        }

        LODWORD(v41) = v45;
LABEL_100:
        ;
      }

      while (v41 != v40);
    }

    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v298);
  }

  if (v253)
  {
    v46 = v253 >> 1;
  }

  else
  {
    v46 = v253 >> 1;
  }

  if (v46)
  {
    v298 = 0u;
    memset(v299, 0, sizeof(v299));
    v285 = 0;
    v283 = 0u;
    v284 = 0u;
    v286 = 0x7FFFFFFFLL;
    re::PSOToolManager::gatherFunctionConstantsForShader(a1, v243, &v252, v240, v264, &v298, &v283);
    *&v280 = &v298;
    *(&v280 + 1) = 0;
    if (*&v299[0] >= 0x10uLL)
    {
      v47 = 0;
      v48 = v298;
      v49 = *&v299[0] >> 4;
      while (1)
      {
        v50 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v48), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        *(&v280 + 1) = v50 ^ 0xFFFFLL;
        if (v50 != 0xFFFFLL)
        {
          break;
        }

        v47 -= 16;
        ++v48;
        if (!--v49)
        {
          goto LABEL_113;
        }
      }

      v51 = __clz(__rbit64(v50 ^ 0xFFFFLL));
      v52 = v51 - v47;
      *&v281 = v51 - v47;
      if (v51 + 1 != v47)
      {
        do
        {
          re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addOrReplace(v239, (*(v280 + 8) + 96 * v52), *(v280 + 8) + 96 * v52 + 32);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v280);
          v52 = v281;
        }

        while (v281 != -1);
      }
    }

LABEL_113:
    v53 = v285;
    if (v285)
    {
      v54 = 0;
      v55 = v284;
      while (1)
      {
        v56 = *v55;
        v55 += 38;
        if (v56 < 0)
        {
          break;
        }

        if (v285 == ++v54)
        {
          LODWORD(v54) = v285;
          break;
        }
      }
    }

    else
    {
      LODWORD(v54) = 0;
    }

    if (v54 != v285)
    {
      v57 = v284;
      do
      {
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(&v235, (v57 + 152 * v54 + 8), v57 + 152 * v54 + 40);
        if (v285 <= v54 + 1)
        {
          v58 = v54 + 1;
        }

        else
        {
          v58 = v285;
        }

        v57 = v284;
        while (v58 - 1 != v54)
        {
          LODWORD(v54) = v54 + 1;
          if ((*(v284 + 152 * v54) & 0x80000000) != 0)
          {
            goto LABEL_129;
          }
        }

        LODWORD(v54) = v58;
LABEL_129:
        ;
      }

      while (v54 != v53);
    }

    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v298);
  }

  v234 = 0;
  v231[1] = 0;
  v232 = 0;
  v231[0] = 0;
  v233 = 0;
  v229 = a1;
  if (*(a1 + 1120) == 1)
  {
    v59 = *(a1 + 1124);
    if (v59 == 1)
    {
      for (i = 0; i != 12; ++i)
      {
        v67 = realitykit_shader_api::textureFunctions[i];
        LOWORD(v299[1]) = 257;
        v68 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v68);
        }
      }

      LOWORD(v299[1]) = 257;
      v69 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
      v70 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v70 = (*(*v298 + 40))(v69);
      }

      LOWORD(v299[1]) = 257;
      v71 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
      v72 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v72 = (*(*v298 + 40))(v71);
      }

      for (j = 0; j != 9; ++j)
      {
        v74 = realitykit_shader_api::materialFunctions[j];
        LOWORD(v299[1]) = 257;
        v75 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v72 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v72 = (*(*v298 + 40))(v75);
        }
      }

      LOWORD(v299[1]) = 257;
      v76 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
      v77 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v77 = (*(*v298 + 40))(v76);
      }

      LOWORD(v299[1]) = 257;
      v78 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
      v8 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v8 = (*(*v298 + 40))(v78);
      }

      for (k = 0; k != 55; ++k)
      {
        v80 = realitykit_shader_api::surfaceFunctions[k];
        LOWORD(v299[1]) = 256;
        v81 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v81);
        }
      }

      for (m = 0; m != 74; ++m)
      {
        v83 = realitykit_shader_api::surface_privateFunctions[m];
        LOWORD(v299[1]) = 256;
        v84 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v84);
        }
      }

      for (n = 0; n != 48; ++n)
      {
        v86 = realitykit_shader_api::geometry_modifierFunctions[n];
        LOWORD(v299[1]) = 1;
        v87 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v87);
        }
      }

      for (ii = 0; ii != 57; ++ii)
      {
        v89 = realitykit_shader_api::geometry_modifier_privateFunctions[ii];
        LOWORD(v299[1]) = 1;
        v90 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v90);
        }
      }
    }

    else if (v59 == 2)
    {
      for (jj = 0; jj != 13; ++jj)
      {
        v61 = realitykit_shader_api::ui_geometry_modifier_privateFunctions[jj];
        LOWORD(v299[1]) = 1;
        v62 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v62);
        }
      }

      for (kk = 0; kk != 22; ++kk)
      {
        v64 = realitykit_shader_api::uisurface_privateFunctions[kk];
        LOWORD(v299[1]) = 256;
        v65 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v65);
        }
      }
    }

    if (v232)
    {
      v91 = v234;
      v92 = (v234 + 40 * v232);
      do
      {
        v298 = 0u;
        memset(v299, 0, sizeof(v299));
        v285 = 0;
        v283 = 0u;
        v284 = 0u;
        v286 = 0x7FFFFFFFLL;
        re::PSOToolManager::gatherFunctionConstantsForShader(a1, v243, v91, v240, v264, &v298, &v283);
        *&v280 = &v298;
        *(&v280 + 1) = 0;
        if (*&v299[0] >= 0x10uLL)
        {
          v93 = 0;
          v94 = v298;
          v95 = *&v299[0] >> 4;
          while (1)
          {
            v96 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v94), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v280 + 1) = v96 ^ 0xFFFFLL;
            if (v96 != 0xFFFFLL)
            {
              break;
            }

            v93 -= 16;
            ++v94;
            if (!--v95)
            {
              goto LABEL_196;
            }
          }

          v97 = __clz(__rbit64(v96 ^ 0xFFFFLL));
          v98 = v97 - v93;
          *&v281 = v97 - v93;
          if (v97 + 1 != v93)
          {
            do
            {
              re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addOrReplace(v239, (*(v280 + 8) + 96 * v98), *(v280 + 8) + 96 * v98 + 32);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v280);
              v98 = v281;
            }

            while (v281 != -1);
          }
        }

LABEL_196:
        v99 = v285;
        if (v285)
        {
          v100 = 0;
          v101 = v284;
          while (1)
          {
            v102 = *v101;
            v101 += 38;
            if (v102 < 0)
            {
              break;
            }

            if (v285 == ++v100)
            {
              LODWORD(v100) = v285;
              break;
            }
          }
        }

        else
        {
          LODWORD(v100) = 0;
        }

        if (v100 != v285)
        {
          v103 = v284;
          do
          {
            re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(&v235, (v103 + 152 * v100 + 8), v103 + 152 * v100 + 40);
            if (v285 <= v100 + 1)
            {
              v104 = v100 + 1;
            }

            else
            {
              v104 = v285;
            }

            v103 = v284;
            while (v104 - 1 != v100)
            {
              LODWORD(v100) = v100 + 1;
              if ((*(v284 + 152 * v100) & 0x80000000) != 0)
              {
                goto LABEL_212;
              }
            }

            LODWORD(v100) = v104;
LABEL_212:
            ;
          }

          while (v100 != v99);
        }

        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v298);
        v91 = (v91 + 40);
        a1 = v229;
      }

      while (v91 != v92);
    }
  }

  v297 = a2;
  v105 = v265;
  v296 = 0;
  v294 = 0;
  v293[1] = 0;
  v295 = 0;
  v106 = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v293, v105);
  ++v295;
  if (v265)
  {
    v107 = v266;
    v108 = 32 * v265;
    do
    {
      re::DynamicString::DynamicString(&v298, v107);
      *&v283 = re::Hash<re::DynamicString>::operator()(&v283, &v298);
      re::DynamicArray<unsigned long>::add(v293, &v283);
      v106 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v106 = (*(*v298 + 40))();
      }

      v107 = (v107 + 32);
      v108 -= 32;
    }

    while (v108);
  }

  v109 = HIDWORD(v236);
  v292 = 0;
  v290 = 0;
  v289[0] = 0;
  v289[1] = 0;
  v291 = 0;
  re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v289, v109);
  ++v291;
  v110 = v237;
  if (v237)
  {
    v111 = 0;
    v112 = v236;
    while (1)
    {
      v113 = *v112;
      v112 += 38;
      if (v113 < 0)
      {
        break;
      }

      if (v237 == ++v111)
      {
        LODWORD(v111) = v237;
        break;
      }
    }
  }

  else
  {
    LODWORD(v111) = 0;
  }

  if (v111 != v237)
  {
    v114 = v236;
    do
    {
      re::DynamicArray<re::TechniqueFunctionConstant>::add(v289, (v114 + 152 * v111 + 40));
      if (v237 <= v111 + 1)
      {
        v115 = v111 + 1;
      }

      else
      {
        v115 = v237;
      }

      v114 = v236;
      while (v115 - 1 != v111)
      {
        LODWORD(v111) = v111 + 1;
        if ((*(v236 + 152 * v111) & 0x80000000) != 0)
        {
          goto LABEL_236;
        }
      }

      LODWORD(v111) = v115;
LABEL_236:
      ;
    }

    while (v111 != v110);
  }

  re::FunctionConstantsEnumerator::createEnumerator(v239, v296, v294, v289, a1, v287);
  if (v267)
  {
    v116 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v283, &v268);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v283, "EnableRuntimeFunctionConstants", &v298);
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      (*(*v298 + 40))();
    }

    re::StringID::StringID(&v280, &v248);
    v117 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v280 >> 31) ^ (v280 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v280 >> 31) ^ (v280 >> 1))) >> 27));
    v118 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 216, &v280, v117 ^ (v117 >> 31), &v298);
    if (HIDWORD(v298) == 0x7FFFFFFF)
    {
      if (v280)
      {
        if (v280)
        {
        }
      }

      v227 = 0;
      LOBYTE(v228) = 0;
    }

    else
    {
      v119 = *(a1 + 232) + 32 * HIDWORD(v298);
      if (v280)
      {
        if (v280)
        {
        }
      }

      v228 = *(v119 + 24);
      if (v228 == 1)
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v283, "EnableManualVertexFetch", &v298);
        v118 = v298;
        if (v298)
        {
          if (BYTE8(v298))
          {
            v118 = (*(*v298 + 40))();
          }
        }
      }

      v227 = *(v119 + 25);
    }

    if (v294)
    {
      v120 = v296;
      v121 = &v296[v294];
      do
      {
        v271[0] = *v120;
        v122 = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(v229, v271);
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(&v298, *(v229 + 8) + 72 * v122 + 8);
        v275 = &v298;
        v276 = 0;
        if (*&v299[0] >= 0x10uLL)
        {
          v123 = 0;
          v124 = v298;
          v125 = *&v299[0] >> 4;
          while (1)
          {
            v126 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v124), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            v276 = v126 ^ 0xFFFFLL;
            if (v126 != 0xFFFFLL)
            {
              break;
            }

            v123 -= 16;
            ++v124;
            if (!--v125)
            {
              goto LABEL_272;
            }
          }

          v127 = __clz(__rbit64(v126 ^ 0xFFFFLL));
          v128 = v127 - v123;
          v277 = v127 - v123;
          if (v127 + 1 != v123)
          {
            do
            {
              v129 = (*(v275 + 1) + 96 * v128);
              v130 = std::to_string(&v272, v129[10]);
              if ((v272.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = &v272;
              }

              else
              {
                v131 = v272.__r_.__value_.__r.__words[0];
              }

              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(&v283, v129, &v280);
              if (v280)
              {
                if (BYTE8(v280))
                {
                  (*(*v280 + 40))();
                }

                v280 = 0u;
                v281 = 0u;
              }

              if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v272.__r_.__value_.__l.__data_);
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v275);
              v128 = v277;
            }

            while (v277 != -1);
          }
        }

LABEL_272:
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v298);
        ++v120;
      }

      while (v120 != v121);
    }

    a1 = v229;
    *&v280 = v229;
    *(&v280 + 1) = v243;
    *&v281 = &v283;
    *(&v281 + 1) = v287;
    *&v282 = v289;
    *(&v282 + 1) = &v297;
    v132 = *(v229 + 1120);
    v298 = 0u;
    v299[0] = 0u;
    re::DynamicString::setCapacity(&v298, 0);
    v133 = re::PSOToolManager::enumerateFunctionConstantVariations(re::MaterialDefinitionFile const*,re::MaterialTechniqueData const&,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false> const&,re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<re::PSOToolLinkedFunctionDescriptor> const&)::$_0::operator()(&v280, v247, v132, &v298);
    v134 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v134 = (*(*v298 + 40))();
    }

    v135 = *(v229 + 1120);
    v298 = 0u;
    v299[0] = 0u;
    re::DynamicString::setCapacity(&v298, 0);
    v136 = re::PSOToolManager::enumerateFunctionConstantVariations(re::MaterialDefinitionFile const*,re::MaterialTechniqueData const&,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false> const&,re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<re::PSOToolLinkedFunctionDescriptor> const&)::$_0::operator()(&v280, v251, v135, &v298);
    v137 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v137 = (*(*v298 + 40))();
    }

    v279 = 0;
    v277 = 0;
    v275 = 0;
    v276 = 0;
    v278 = 0;
    v274 = 0;
    memset(&v272, 0, sizeof(v272));
    v273 = 0;
    if (*(v229 + 1120))
    {
      memset(v299, 0, 40);
      v298 = 0u;
      re::DynamicString::setCapacity(v299 + 1, 0);
      if (v232)
      {
        v138 = v234;
        v139 = 40 * v232;
        do
        {
          v140 = re::DynamicString::operator=((v299 + 8), v138);
          memset(v271, 0, sizeof(v271));
          re::DynamicString::setCapacity(v271, 0);
          v270 = re::PSOToolManager::enumerateFunctionConstantVariations(re::MaterialDefinitionFile const*,re::MaterialTechniqueData const&,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false> const&,re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<re::PSOToolLinkedFunctionDescriptor> const&)::$_0::operator()(&v280, &v298, 1, v271);
          if (*(v138 + 32) == 1)
          {
            re::DynamicArray<unsigned long>::add(&v275, &v270);
          }

          if (*(v138 + 33) == 1)
          {
            re::DynamicArray<unsigned long>::add(&v272, &v270);
          }

          if (v271[0] && (v271[1] & 1) != 0)
          {
            (*(*v271[0] + 40))();
          }

          v138 = (v138 + 40);
          v139 -= 40;
        }

        while (v139);
      }

      if (*(&v299[0] + 1))
      {
        if (v299[1])
        {
          (*(**(&v299[0] + 1) + 40))();
        }

        memset(v299 + 8, 0, 32);
      }

      re::AssetHandle::~AssetHandle(&v298);
    }

    *&v298 = v133;
    *(&v298 + 1) = v136;
    v299[0] = v255;
    v299[1] = v256;
    v299[2] = v257;
    LODWORD(v300[0]) = v258;
    BYTE4(v300[0]) = v259;
    if (v259 == 1)
    {
      BYTE5(v300[0]) = v260;
    }

    re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v300 + 8, v261);
    re::DynamicString::DynamicString(&v303, v243);
    v305 = v269;
    LOBYTE(v306) = v228;
    HIBYTE(v306) = v227 & 1;
    re::DynamicArray<unsigned long>::DynamicArray(&v307, &v275);
    re::DynamicArray<unsigned long>::DynamicArray(&v311 + 8, &v272);
    re::DynamicArray<re::PSOToolRenderDescriptor>::add(v229 + 856, &v298);
    if (*(&v311 + 1))
    {
      if (v314)
      {
        (*(**(&v311 + 1) + 40))();
      }

      v314 = 0;
      v312 = 0uLL;
      *(&v311 + 1) = 0;
      ++v313;
    }

    if (v307)
    {
      if (v311)
      {
        (*(*v307 + 40))();
      }

      *&v311 = 0;
      v308 = 0;
      v309 = 0;
      v307 = 0;
      ++v310;
    }

    if (v303)
    {
      if (BYTE8(v303))
      {
        (*(*v303 + 40))();
      }

      v303 = 0u;
      v304 = 0u;
    }

    if (*(&v300[0] + 1) && v302)
    {
      (*(**(&v300[0] + 1) + 40))();
    }

    if (v272.__r_.__value_.__r.__words[0] && v274)
    {
      (*(*v272.__r_.__value_.__l.__data_ + 40))();
    }

    if (v275 && v279)
    {
      (*(*v275 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
  }

  v141 = v288;
  if (v288 <= *(a1 + 1080))
  {
    v230 = v288;
    if (*(v297 + 8))
    {
      v148 = *(v297 + 16);
    }

    else
    {
      v148 = (v297 + 9);
    }

    v157 = strlen(v148);
    v158 = MEMORY[0x1E69E5310];
    v159 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], v148, v157);
    v160 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v159, "_", 1);
    if (v244)
    {
      v161 = v246;
    }

    else
    {
      v161 = v245;
    }

    v162 = strlen(v161);
    v163 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v160, v161, v162);
    v164 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v163, "_", 1);
    if (v249)
    {
      v165 = v250;
    }

    else
    {
      v165 = &v249 + 1;
    }

    v166 = strlen(v165);
    v167 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v164, v165, v166);
    v168 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v167, "_", 1);
    if (v253)
    {
      v169 = v254;
    }

    else
    {
      v169 = &v253 + 1;
    }

    v170 = strlen(v169);
    v171 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v168, v169, v170);
    std::ios_base::getloc((v171 + *(*v171 - 24)));
    v172 = MEMORY[0x1E69E5318];
    v173 = std::locale::use_facet(&v298, MEMORY[0x1E69E5318]);
    (v173->__vftable[2].~facet_0)(v173, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
    v174 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v158, "    ", 4);
    v175 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v174, "constants:", 10);
    std::ios_base::getloc((v175 + *(*v175 - 24)));
    v176 = std::locale::use_facet(&v298, v172);
    (v176->__vftable[2].~facet_0)(v176, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
    if (v290)
    {
      v177 = v292;
      v178 = (v292 + 104 * v290);
      v179 = MEMORY[0x1E69E5310];
      v180 = MEMORY[0x1E69E5318];
      do
      {
        re::DynamicString::DynamicString(&v298, v177);
        v299[1] = *(v177 + 2);
        v181 = *(v177 + 3);
        v182 = *(v177 + 4);
        v183 = *(v177 + 5);
        v301 = *(v177 + 24);
        v300[0] = v182;
        v300[1] = v183;
        v299[2] = v181;
        v184 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v179, "      ", 6);
        if (BYTE8(v298))
        {
          v185 = *&v299[0];
        }

        else
        {
          v185 = &v298 + 9;
        }

        v186 = strlen(v185);
        v187 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v184, v185, v186);
        std::ios_base::getloc((v187 + *(*v187 - 24)));
        v188 = std::locale::use_facet(&v283, v180);
        (v188->__vftable[2].~facet_0)(v188, 10);
        std::locale::~locale(&v283);
        std::ostream::put();
        std::ostream::flush();
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          (*(*v298 + 40))();
        }

        v177 = (v177 + 104);
      }

      while (v177 != v178);
    }

    re::FunctionConstantsEnumerator::printDebugData(v287);
    v285 = 0;
    v283 = 0u;
    v284 = 0u;
    v286 = 0x7FFFFFFFLL;
    LODWORD(v282) = 0;
    v280 = 0u;
    v281 = 0u;
    *(&v282 + 4) = 0x7FFFFFFFLL;
    if (v230)
    {
      v189 = 0;
      v190 = 1;
      do
      {
        Permutation = re::FunctionConstantsEnumerator::createPermutation(v287, v189, v292, v290, &v275);
        v272.__r_.__value_.__r.__words[0] = 0;
        v271[0] = 0;
        if (v249)
        {
          v192 = v249 >> 1;
        }

        else
        {
          v192 = v249 >> 1;
        }

        if (v192)
        {
          v193 = v297;
          v194 = v279;
          v195 = v277;
          v298 = 0u;
          v299[0] = 0u;
          re::DynamicString::setCapacity(&v298, 0);
          Permutation = re::PSOToolManager::addFunctionConstantVariation(v229, v193, v243, v247, v194, v195, 0, &v298);
          v272.__r_.__value_.__r.__words[0] = Permutation;
          if (v298 && (BYTE8(v298) & 1) != 0)
          {
            (*(*v298 + 40))(v298, *&v299[0]);
            Permutation = v272.__r_.__value_.__r.__words[0];
          }

          if (Permutation)
          {
            Permutation = re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(&v283, &v272);
          }
        }

        if (v253)
        {
          v196 = v253 >> 1;
        }

        else
        {
          v196 = v253 >> 1;
        }

        if (v196)
        {
          v197 = v297;
          v198 = v279;
          v199 = v277;
          v298 = 0u;
          v299[0] = 0u;
          re::DynamicString::setCapacity(&v298, 0);
          v200 = re::PSOToolManager::addFunctionConstantVariation(v229, v197, v243, v251, v198, v199, 0, &v298);
          v271[0] = v200;
          if (v298 && (BYTE8(v298) & 1) != 0)
          {
            (*(*v298 + 40))(v298, *&v299[0]);
            v200 = v271[0];
          }

          if (v200)
          {
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(&v280, v271);
          }
        }

        if (v249)
        {
          v201 = v250;
        }

        else
        {
          v201 = &v249 + 1;
        }

        if (strcmp(v201, "realitykit::vsGeometryModifier") && v272.__r_.__value_.__r.__words[0] | v271[0])
        {
          *&v298 = v272.__r_.__value_.__r.__words[0];
          *(&v298 + 1) = v271[0];
          v299[0] = v255;
          v299[1] = v256;
          v299[2] = v257;
          LODWORD(v300[0]) = v258;
          BYTE4(v300[0]) = v259;
          if (v259 == 1)
          {
            BYTE5(v300[0]) = v260;
          }

          re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v300 + 8, v261);
          re::DynamicString::DynamicString(&v303, v243);
          v305 = v269;
          v306 = 0;
          v308 = 0;
          v309 = 0;
          v307 = 0;
          v310 = 0;
          v314 = 0;
          v311 = 0u;
          v312 = 0u;
          v313 = 0;
          re::DynamicArray<re::PSOToolRenderDescriptor>::add(v229 + 856, &v298);
          if (*(&v311 + 1))
          {
            if (v314)
            {
              (*(**(&v311 + 1) + 40))();
            }

            v314 = 0;
            v312 = 0uLL;
            *(&v311 + 1) = 0;
            ++v313;
          }

          if (v307)
          {
            if (v311)
            {
              (*(*v307 + 40))();
            }

            *&v311 = 0;
            v308 = 0;
            v309 = 0;
            v307 = 0;
            ++v310;
          }

          if (v303)
          {
            if (BYTE8(v303))
            {
              (*(*v303 + 40))();
            }

            v303 = 0u;
            v304 = 0u;
          }

          if (*(&v300[0] + 1) && v302)
          {
            (*(**(&v300[0] + 1) + 40))();
          }
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v275);
        v189 = v190;
      }

      while (v230 > v190++);
      v203 = (HIDWORD(v281) + HIDWORD(v284));
    }

    else
    {
      v203 = 0;
    }

    v204 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Generated ", 10);
    v205 = MEMORY[0x1E69060D0](v204, v203);
    v206 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v205, " unique permutations for ", 25);
    if (v249)
    {
      v207 = v250;
    }

    else
    {
      v207 = &v249 + 1;
    }

    v208 = strlen(v207);
    v209 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v206, v207, v208);
    v210 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v209, " (", 2);
    v211 = MEMORY[0x1E69060E0](v210, HIDWORD(v284));
    v212 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v211, ")", 1);
    v213 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v212, " ", 1);
    if (v253)
    {
      v214 = v254;
    }

    else
    {
      v214 = &v253 + 1;
    }

    v215 = strlen(v214);
    v216 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v213, v214, v215);
    v217 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v216, " (", 2);
    v218 = MEMORY[0x1E69060E0](v217, HIDWORD(v281));
    v219 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v218, ")", 1);
    std::ios_base::getloc((v219 + *(*v219 - 24)));
    v220 = MEMORY[0x1E69E5318];
    v221 = std::locale::use_facet(&v298, MEMORY[0x1E69E5318]);
    (v221->__vftable[2].~facet_0)(v221, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v219 + *(*v219 - 24)));
    v222 = std::locale::use_facet(&v298, v220);
    (v222->__vftable[2].~facet_0)(v222, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v280);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v283);
  }

  else
  {
    v142 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "More than ", 10);
    v143 = MEMORY[0x1E69060F0](v142, *(a1 + 1080));
    v144 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v143, " permutations (", 15);
    v145 = MEMORY[0x1E69060F0](v144, v141);
    v146 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v145, ") to precompile for ", 20);
    if (*(v297 + 8))
    {
      v147 = *(v297 + 16);
    }

    else
    {
      v147 = (v297 + 9);
    }

    v149 = strlen(v147);
    v150 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v146, v147, v149);
    v151 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v150, "_", 1);
    if (v244)
    {
      v152 = v246;
    }

    else
    {
      v152 = v245;
    }

    v153 = strlen(v152);
    v154 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v151, v152, v153);
    v155 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v154, ", skipping.", 11);
    std::ios_base::getloc((v155 + *(*v155 - 24)));
    v156 = std::locale::use_facet(&v298, MEMORY[0x1E69E5318]);
    (v156->__vftable[2].~facet_0)(v156, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
  }

  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v287);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v289);
  if (v293[0] && v296)
  {
    (*(*v293[0] + 40))();
  }

  v223 = v231[0];
  if (v231[0])
  {
    v224 = v234;
    if (v234)
    {
      if (v232)
      {
        v225 = 40 * v232;
        v226 = v234;
        do
        {
          re::DynamicString::deinit(v226);
          v226 = (v226 + 40);
          v225 -= 40;
        }

        while (v225);
      }

      (*(*v223 + 40))(v223, v224);
    }
  }

  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v235);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v239);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v240);
  re::MaterialTechniqueData::~MaterialTechniqueData(v243);
}

void re::PSOToolManager::gatherFunctionConstantsForShader(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, re::DynamicString *a7)
{
  v77 = *MEMORY[0x1E69E9840];
  v13 = re::Hash<re::DynamicString>::operator()(&v72, a3);
  re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v72, a1 + 64, a3, v13);
  if (HIDWORD(v73) == 0x7FFFFFFF)
  {
    if (a3[1])
    {
      v14 = a3[2];
    }

    else
    {
      v14 = (a3 + 9);
    }

    re::mtl::Library::makeFunction((a1 + 208), v14, &v72);
    if (!v72)
    {
      v52 = std::operator<<[abi:nn200100]<std::char_traits<char>>(MEMORY[0x1E69E5300], "Failed to make function ");
      if (a3[1])
      {
        v53 = a3[2];
      }

      else
      {
        v53 = a3 + 9;
      }

      v54 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v52, v53);
      std::endl[abi:nn200100]<char,std::char_traits<char>>(v54);
      re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) ", "false", "gatherFunctionConstantsForShader", 260, a7);
      _os_crash();
      __break(1u);
      return;
    }

    re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 64, a3, &v72);
    if (v72)
    {
    }
  }

  v15 = *re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a1 + 64, a3);
  v16 = v15;
  if (*(a2 + 404))
  {
    if (*(a2 + 8))
    {
      v17 = *(a2 + 16);
    }

    else
    {
      v17 = a2 + 9;
    }

    v70 = v15;
    re::parseVariationTable(v17, &v70, a5, &v72);
    if (v70)
    {

      v70 = 0;
    }

    if (v72)
    {
      if (&v73 != a6)
      {
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::copy(a6, &v73);
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E5300];
      v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Failed to parse function constants for ", 39);
      if (*(a2 + 8))
      {
        v20 = *(a2 + 16);
      }

      else
      {
        v20 = (a2 + 9);
      }

      v21 = strlen(v20);
      v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, v20, v21);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = MEMORY[0x1E69E5318];
      v24 = std::locale::use_facet(&v69, MEMORY[0x1E69E5318]);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v69);
      std::ostream::put();
      std::ostream::flush();
      if (v74)
      {
        v25 = v76;
      }

      else
      {
        v25 = v75;
      }

      v26 = strlen(v25);
      v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, v25, v26);
      std::ios_base::getloc((v27 + *(*v27 - 24)));
      v28 = std::locale::use_facet(&v69, v23);
      (v28->__vftable[2].~facet_0)(v28, 10);
      std::locale::~locale(&v69);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v72 == 1)
    {
      re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v73);
    }

    else if (v73 && (v74 & 1) != 0)
    {
      (*(*v73 + 40))();
    }
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v69, a4);
  v29 = *(a2 + 272);
  if (v29)
  {
    v30 = 32 * v29 - 32;
    v31 = (*(a2 + 288) + 1);
    do
    {
      v33 = *v31;
      v31 += 32;
      v32 = v33;
      if (v33)
      {
        break;
      }

      v34 = v30;
      v30 -= 32;
    }

    while (v34);
  }

  else
  {
    v32 = *(a2 + 201);
  }

  re::DynamicString::find(a2, "Selection", 9, 0, &v72);
  re::MaterialManager::addSupportConstantsToArray(1, 1, 1, v32 & 1, 0, 1, 1, v72, &v69);
  if (*(a2 + 8))
  {
    v35 = *(a2 + 16);
  }

  else
  {
    v35 = (a2 + 9);
  }

  v36 = [v16 functionConstantsDictionary];
  *&v65[0].__locale_ = 0u;
  v66 = 0u;
  v67 = 0;
  v68 = 0x7FFFFFFFLL;
  v37 = [v36 keyEnumerator];
  v38 = [v37 nextObject];
  if (v38)
  {
    v39 = v38;
    do
    {
      v72 = [v39 UTF8String];
      v71 = [v36 objectForKey_];
      re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v65, &v72, &v71);
      if (v71)
      {
      }

      v39 = [v37 nextObject];
    }

    while (v39);
  }

  v63[0] = 0;
  v57[0] = 0;
  v40 = re::parseFunctionConstants(v35, v65, &v69, v63, v57, 0, 0, 0, &v72);
  if (v57[0] == 1 && v58)
  {
    if (v62)
    {
      (*(*v58 + 40))(v40);
    }

    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    ++v61;
  }

  if (v63[0] == 1)
  {
    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v64);
  }

  re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v65);
  if (v72)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a7, &v73);
  }

  else
  {
    v41 = MEMORY[0x1E69E5300];
    v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Failed to parse function constants for ", 39);
    if (*(a2 + 8))
    {
      v43 = *(a2 + 16);
    }

    else
    {
      v43 = (a2 + 9);
    }

    v44 = strlen(v43);
    v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, v43, v44);
    std::ios_base::getloc((v45 + *(*v45 - 24)));
    v46 = MEMORY[0x1E69E5318];
    v47 = std::locale::use_facet(v65, MEMORY[0x1E69E5318]);
    (v47->__vftable[2].~facet_0)(v47, 10);
    std::locale::~locale(v65);
    std::ostream::put();
    std::ostream::flush();
    if (v74)
    {
      v48 = v76;
    }

    else
    {
      v48 = v75;
    }

    v49 = strlen(v48);
    v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, v48, v49);
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v51 = std::locale::use_facet(v65, v46);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(v65);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v72 == 1)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v73);
  }

  else if (v73 && (v74 & 1) != 0)
  {
    (*(*v73 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v69);
  if (v16)
  {
  }
}

id re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, id *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  result = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v9, a1, a2, v6);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v10, v9);
    re::DynamicString::DynamicString((v8 + 8), a2);
    result = *a3;
    *(v8 + 40) = result;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  return *(a1 + 16) + 56 * v7 + 40;
}

unint64_t re::PSOToolManager::enumerateFunctionConstantVariations(re::MaterialDefinitionFile const*,re::MaterialTechniqueData const&,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false> const&,re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<re::PSOToolLinkedFunctionDescriptor> const&)::$_0::operator()(uint64_t a1, uint64_t a2, int a3, re::DynamicString *a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v61 = 0x7FFFFFFFLL;
  v58 = 0;
  v55[1] = 0;
  v56 = 0;
  v55[0] = 0;
  v57 = 0;
  re::DynamicString::DynamicString(&v53, (a2 + 24));
  if (v54)
  {
    v10 = v54 >> 1;
  }

  else
  {
    v10 = v54 >> 1;
  }

  if (v10)
  {
    v38 = a4;
    v11 = [*re::HashTable<re::DynamicString NS:re::Hash<re::DynamicString> :re::EqualTo<re::DynamicString> SharedPtr<MTL:true :{false>::operator[](v8 + 64, &v53), sel_functionConstantsDictionary}Function>];
    memset(v50, 0, sizeof(v50));
    v51 = 0;
    v52 = 0x7FFFFFFFLL;
    v12 = [v11 keyEnumerator];
    v13 = [v12 nextObject];
    if (v13)
    {
      v14 = v13;
      do
      {
        v62 = [v14 UTF8String];
        v69 = [v11 objectForKey_];
        re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v50, &v62, &v69);
        if (v69)
        {
        }

        v14 = [v12 nextObject];
      }

      while (v14);
    }

    v15 = *(a1 + 8);
    if (*(v15 + 8))
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = (v15 + 9);
    }

    v18 = *(a1 + 16);
    v48[0] = 0;
    v42[0] = 0;
    v19 = re::parseFunctionConstants(v16, v50, v18, v48, v42, 0, 0, 1, &v69);
    if (v42[0] == 1 && v43)
    {
      if (v47)
      {
        (*(*v43 + 40))(v19);
      }

      v47 = 0;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      ++v46;
    }

    if (v48[0] == 1)
    {
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v49);
    }

    v20 = v73;
    if (v73)
    {
      v21 = 0;
      v22 = v72;
      while (1)
      {
        v23 = *v22;
        v22 += 38;
        if (v23 < 0)
        {
          break;
        }

        if (v73 == ++v21)
        {
          LODWORD(v21) = v73;
          break;
        }
      }
    }

    else
    {
      LODWORD(v21) = 0;
    }

    if (v21 != v73)
    {
      v24 = v72;
      do
      {
        v25 = &v24[38 * v21];
        re::DynamicString::DynamicString(&v62, (v25 + 10));
        v64 = *(v25 + 18);
        v26 = *(v25 + 22);
        v27 = *(v25 + 26);
        v28 = *(v25 + 30);
        v68 = v25[34];
        v66 = v27;
        v67 = v28;
        v65 = v26;
        if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v59, &v62))
        {
          re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v59, &v62);
          v29 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v55, &v62);
        }

        if (v62 && (v63 & 1) != 0)
        {
          (*(*v62 + 40))(v29);
        }

        if (v73 <= v21 + 1)
        {
          v30 = v21 + 1;
        }

        else
        {
          v30 = v73;
        }

        v24 = v72;
        while (v30 - 1 != v21)
        {
          LODWORD(v21) = v21 + 1;
          if (v72[38 * v21] < 0)
          {
            goto LABEL_42;
          }
        }

        LODWORD(v21) = v30;
LABEL_42:
        ;
      }

      while (v21 != v20);
    }

    re::FunctionConstantsEnumerator::createPermutation(*(a1 + 24), 0, *(*(a1 + 32) + 32), *(*(a1 + 32) + 16), v39);
    if (v40)
    {
      v31 = v41;
      v32 = (v41 + 104 * v40);
      do
      {
        re::DynamicString::DynamicString(&v62, v31);
        v64 = *(v31 + 2);
        v33 = *(v31 + 3);
        v34 = *(v31 + 4);
        v35 = *(v31 + 5);
        v68 = *(v31 + 24);
        v66 = v34;
        v67 = v35;
        v65 = v33;
        if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v59, &v62))
        {
          re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v59, &v62);
          v36 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v55, &v62);
        }

        if (v62 && (v63 & 1) != 0)
        {
          (*(*v62 + 40))(v36);
        }

        v31 = (v31 + 104);
      }

      while (v31 != v32);
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v39);
    v17 = re::PSOToolManager::addFunctionConstantVariation(v8, **(a1 + 40), *(a1 + 8), a2, v58, v56, a3, v38);
    if (v69 == 1)
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v70);
    }

    else if (v70 && (v71 & 1) != 0)
    {
      (*(*v70 + 40))();
    }

    v9.n128_f64[0] = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v50);
  }

  else
  {
    v17 = 0;
  }

  if (v53 && (v54 & 1) != 0)
  {
    (*(*v53 + 40))(v9);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v55);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v59);
  return v17;
}

void re::DynamicArray<re::PSOToolRenderDescriptor>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::PSOToolRenderDescriptor>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::PSOToolRenderDescriptor>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  re::PSOToolRenderDescriptor::PSOToolRenderDescriptor(*(a1 + 32) + 232 * v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
}

unint64_t re::PSOToolManager::addFunctionConstantVariation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, re::DynamicString *a8)
{
  v144 = *MEMORY[0x1E69E9840];
  re::DynamicString::DynamicString(&v117, (a4 + 24));
  v99 = a1;
  v11 = [*re::HashTable<re::DynamicString NS:re::Hash<re::DynamicString> :re::EqualTo<re::DynamicString> SharedPtr<MTL:true :{false>::operator[](a1 + 64, &v117), sel_functionConstantsDictionary}Function>];
  v113 = 0u;
  v114 = 0u;
  v115 = 0;
  v116 = 0x7FFFFFFFLL;
  v12 = [v11 keyEnumerator];
  v13 = [v12 nextObject];
  if (v13)
  {
    v14 = v13;
    do
    {
      *&v129 = [(_anonymous_namespace_ *)v14 UTF8String];
      v120 = [v11 objectForKey_];
      re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(&v113, &v129, &v120);
      if (v120)
      {
      }

      v13 = [v12 nextObject];
      v14 = v13;
    }

    while (v13);
  }

  v101[1] = 0;
  v103 = 0;
  v102 = 0;
  v104 = 0;
  memset(&v105[1], 0, 24);
  v15 = re::DynamicString::setCapacity(v105, 0);
  v107 = 0u;
  v106 = 0u;
  v16 = re::DynamicString::setCapacity(&v106, 0);
  v109 = 0u;
  v108 = 0u;
  v17 = re::DynamicString::setCapacity(&v108, 0);
  v111 = 0u;
  v110 = 0u;
  v18 = re::DynamicString::setCapacity(&v110, 0);
  re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v101, a6);
  ++v103;
  if (a6)
  {
    v19 = a5 + 104 * a6;
    do
    {
      re::DynamicString::DynamicString(&v129, a5);
      *v131 = *(a5 + 32);
      v20 = *(a5 + 48);
      v21 = *(a5 + 64);
      v22 = *(a5 + 80);
      *&v131[64] = *(a5 + 96);
      *&v131[32] = v21;
      *&v131[48] = v22;
      *&v131[16] = v20;
      if (BYTE8(v129))
      {
        v23 = v130;
      }

      else
      {
        v23 = &v129 + 9;
      }

      v135 = v23;
      re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(&v113, &v135, &v120);
      if (v121 != 0x7FFFFFFF)
      {
        v24 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v101, &v129);
      }

      if (v129 && (BYTE8(v129) & 1) != 0)
      {
        (*(*v129 + 40))(v24);
      }

      a5 += 104;
    }

    while (a5 != v19);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(&v129, v101);
  re::DynamicString::DynamicString(&v131[8], v105);
  re::DynamicString::DynamicString(&v131[40], &v106);
  re::DynamicString::DynamicString(v132, &v108);
  re::DynamicString::DynamicString(v133, &v110);
  v134 = v112;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(&v120, v101);
  re::DynamicString::DynamicString(v124, v105);
  re::DynamicString::DynamicString(v125, &v106);
  re::DynamicString::DynamicString(v126, &v108);
  re::DynamicString::DynamicString(v127, &v110);
  v128 = v112;
  if (v130)
  {
    v25 = *v131;
    v26 = *v131 + 104 * v130;
    while (1)
    {
      re::DynamicString::DynamicString(&v135, v25);
      v139 = *(v25 + 32);
      v27 = *(v25 + 48);
      v28 = *(v25 + 64);
      v29 = *(v25 + 80);
      v143 = *(v25 + 96);
      v141 = v28;
      v142 = v29;
      v140 = v27;
      v31 = v136;
      v30 = v138;
      if (v136)
      {
        v32 = v138;
      }

      else
      {
        v32 = v137;
      }

      v33 = strcmp(v32, "EnableVRROnCapableDevice");
      if ((v31 & 1) != 0 && v135)
      {
        (*(*v135 + 40))(v135, v30);
      }

      if (!v33)
      {
        break;
      }

      v25 += 104;
      if (v25 == v26)
      {
        goto LABEL_27;
      }
    }

    if (v122)
    {
      v43 = v123;
      v44 = (v123 + 104 * v122);
      while (1)
      {
        re::DynamicString::DynamicString(&v135, v43);
        v139 = *(v43 + 2);
        v45 = *(v43 + 3);
        v46 = *(v43 + 4);
        v47 = *(v43 + 5);
        v143 = *(v43 + 24);
        v141 = v46;
        v142 = v47;
        v140 = v45;
        v48 = v136;
        v49 = v138;
        v50 = (v136 & 1) != 0 ? v138 : v137;
        if (!strcmp(v50, "EnableVRROnCapableDevice"))
        {
          break;
        }

        if ((v48 & 1) != 0 && v135)
        {
          (*(*v135 + 40))(v135, v49);
        }

        v43 = (v43 + 104);
        if (v43 == v44)
        {
          goto LABEL_95;
        }
      }

      v60 = *(&v139 + 4);
      if ((v48 & 1) != 0 && v135)
      {
        (*(*v135 + 40))(v135, v49);
      }

      if (v60)
      {
LABEL_27:
        if (v130)
        {
          v34 = *v131;
          v35 = *v131 + 104 * v130;
          while (1)
          {
            re::DynamicString::DynamicString(&v135, v34);
            v139 = *(v34 + 32);
            v36 = *(v34 + 48);
            v37 = *(v34 + 64);
            v38 = *(v34 + 80);
            v143 = *(v34 + 96);
            v141 = v37;
            v142 = v38;
            v140 = v36;
            v40 = v136;
            v39 = v138;
            if (v136)
            {
              v41 = v138;
            }

            else
            {
              v41 = v137;
            }

            v42 = strcmp(v41, "EnableSingleRMAS");
            if ((v40 & 1) != 0 && v135)
            {
              (*(*v135 + 40))(v135, v39);
            }

            if (!v42)
            {
              break;
            }

            v34 += 104;
            if (v34 == v35)
            {
              goto LABEL_95;
            }
          }

          if (v130)
          {
            v51 = *v131;
            v52 = *v131 + 104 * v130;
            while (1)
            {
              re::DynamicString::DynamicString(&v135, v51);
              v139 = *(v51 + 32);
              v53 = *(v51 + 48);
              v54 = *(v51 + 64);
              v55 = *(v51 + 80);
              v143 = *(v51 + 96);
              v141 = v54;
              v142 = v55;
              v140 = v53;
              v57 = v136;
              v56 = v138;
              if (v136)
              {
                v58 = v138;
              }

              else
              {
                v58 = v137;
              }

              v59 = strcmp(v58, "EnableSeparateRMAS");
              if ((v57 & 1) != 0 && v135)
              {
                (*(*v135 + 40))(v135, v56);
              }

              if (!v59)
              {
                break;
              }

              v51 += 104;
              if (v51 == v52)
              {
                goto LABEL_95;
              }
            }

            if (v122)
            {
              v61 = v123;
              v62 = (v123 + 104 * v122);
              while (1)
              {
                re::DynamicString::DynamicString(&v135, v61);
                v139 = *(v61 + 2);
                v63 = *(v61 + 3);
                v64 = *(v61 + 4);
                v65 = *(v61 + 5);
                v143 = *(v61 + 24);
                v141 = v64;
                v142 = v65;
                v140 = v63;
                v66 = v136;
                v67 = v138;
                v68 = (v136 & 1) != 0 ? v138 : v137;
                if (!strcmp(v68, "EnableSingleRMAS"))
                {
                  break;
                }

                if ((v66 & 1) != 0 && v135)
                {
                  (*(*v135 + 40))(v135, v67);
                }

                v61 = (v61 + 104);
                if (v61 == v62)
                {
                  goto LABEL_95;
                }
              }

              v69 = *(&v139 + 4);
              if ((v66 & 1) != 0 && v135)
              {
                (*(*v135 + 40))(v135, v67);
              }

              if (v69 && v122)
              {
                v70 = v123;
                v71 = (v123 + 104 * v122);
                while (1)
                {
                  re::DynamicString::DynamicString(&v135, v70);
                  v139 = *(v70 + 2);
                  v72 = *(v70 + 3);
                  v73 = *(v70 + 4);
                  v74 = *(v70 + 5);
                  v143 = *(v70 + 24);
                  v141 = v73;
                  v142 = v74;
                  v140 = v72;
                  v75 = (v136 & 1) == 0;
                  v76 = (v136 & 1) != 0 ? v138 : v137;
                  v77 = strcmp(v76, "EnableSeparateRMAS");
                  v78 = !v135 || v75;
                  if (!v77)
                  {
                    break;
                  }

                  if (!v78)
                  {
                    (*(*v135 + 40))();
                  }

                  v70 = (v70 + 104);
                  if (v70 == v71)
                  {
                    goto LABEL_95;
                  }
                }

                if (!v78)
                {
                  (*(*v135 + 40))();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_95:
  if (v127[0])
  {
    if (v127[1])
    {
      (*(*v127[0] + 40))();
    }

    memset(v127, 0, sizeof(v127));
  }

  if (v126[0])
  {
    if (v126[1])
    {
      (*(*v126[0] + 40))();
    }

    memset(v126, 0, sizeof(v126));
  }

  if (v125[0])
  {
    if (v125[1])
    {
      (*(*v125[0] + 40))();
    }

    memset(v125, 0, sizeof(v125));
  }

  if (v124[0])
  {
    if (v124[1])
    {
      (*(*v124[0] + 40))();
    }

    memset(v124, 0, sizeof(v124));
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v120);
  if (v133[0])
  {
    if (v133[1])
    {
      (*(*v133[0] + 40))();
    }

    memset(v133, 0, sizeof(v133));
  }

  if (v132[0])
  {
    if (v132[1])
    {
      (*(*v132[0] + 40))();
    }

    memset(v132, 0, sizeof(v132));
  }

  if (*&v131[40])
  {
    if (v131[48])
    {
      (*(**&v131[40] + 40))();
    }

    memset(&v131[40], 0, 32);
  }

  if (*&v131[8])
  {
    if (v131[16])
    {
      (*(**&v131[8] + 40))();
    }

    memset(&v131[8], 0, 32);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v129);
  re::DynamicString::operator=(v105, &v117);
  *&v129 = v104;
  *(&v129 + 1) = v102;
  if (v105[1])
  {
    v79 = v105[2];
  }

  else
  {
    v79 = &v105[1] + 1;
  }

  FunctionVariantHash = re::generateFunctionVariantHash(&v129, v79);
  v81 = FunctionVariantHash;
  v120 = FunctionVariantHash;
  if (!*(v99 + 408) || (v82 = *(*(v99 + 416) + 4 * (FunctionVariantHash % *(v99 + 432))), v82 == 0x7FFFFFFF))
  {
LABEL_135:
    if (*(a2 + 8))
    {
      v84 = *(a2 + 16);
    }

    else
    {
      v84 = a2 + 9;
    }

    if (*(a3 + 8))
    {
      v85 = *(a3 + 16);
    }

    else
    {
      v85 = a3 + 9;
    }

    if (v118)
    {
      v86 = *&v119[7];
    }

    else
    {
      v86 = v119;
    }

    re::DynamicString::format("%s_%s_%s_%zu", &v129, v84, v85, v86, FunctionVariantHash);
    re::DynamicString::operator=(&v106, &v129);
    if (v129 && (BYTE8(v129) & 1) != 0)
    {
      (*(*v129 + 40))();
    }

    re::AssetHandle::serializationString(a4, v100);
    re::makeTruncatedAssetPath(v100, &v129);
    re::DynamicString::operator=(&v108, &v129);
    if (v129)
    {
      if (BYTE8(v129))
      {
        (*(*v129 + 40))();
      }

      v129 = 0u;
      v130 = 0u;
    }

    if (*&v100[0])
    {
      if (BYTE8(v100[0]))
      {
        (*(**&v100[0] + 40))();
      }

      memset(v100, 0, sizeof(v100));
    }

    if (BYTE8(v108))
    {
      v87 = *(&v108 + 1) >> 1;
    }

    else
    {
      v87 = BYTE8(v108) >> 1;
    }

    if (!v87)
    {
      *&v129 = "default.metallib";
      *(&v129 + 1) = 16;
      re::DynamicString::operator=(&v108, &v129);
    }

    if (a7)
    {
      *&v129 = "default-corere.metallib";
      *(&v129 + 1) = 23;
      re::DynamicString::operator=(&v108, &v129);
    }

    v88 = *(a8 + 1);
    if (v88)
    {
      v89 = v88 >> 1;
    }

    else
    {
      v89 = v88 >> 1;
    }

    if (v89)
    {
      re::DynamicString::operator=(&v110, a8);
    }

    v90 = re::Hash<re::DynamicString>::operator()(&v129, &v108);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v99 + 688, &v108, v90, &v129);
    if (HIDWORD(v129) == 0x7FFFFFFF)
    {
      v91 = (BYTE8(v108) & 1) != 0 ? *(&v108 + 1) >> 1 : BYTE8(v108) >> 1;
      re::DynamicString::substr(&v108, 0, v91 - 9, &v129);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v99 + 688, &v108, &v129);
      if (v129)
      {
        if (BYTE8(v129))
        {
          (*(*v129 + 40))();
        }
      }
    }

    LOBYTE(v112) = HIDWORD(v114) != 0;
    v129 = 0uLL;
    *&v130 = 0;
    re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v129, v99 + 408, v81, v81);
    if (HIDWORD(v129) == 0x7FFFFFFF)
    {
      re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::FunctionVariantDescriptor const&>(v99 + 408, v129, DWORD2(v129), &v120, v101);
    }
  }

  else
  {
    v83 = *(v99 + 424);
    while (*(v83 + 200 * v82 + 8) != FunctionVariantHash)
    {
      v82 = *(v83 + 200 * v82) & 0x7FFFFFFF;
      if (v82 == 0x7FFFFFFF)
      {
        goto LABEL_135;
      }
    }
  }

  if (v110)
  {
    if (BYTE8(v110))
    {
      (*(*v110 + 40))();
    }

    v111 = 0u;
    v110 = 0u;
  }

  if (v108)
  {
    if (BYTE8(v108))
    {
      (*(*v108 + 40))();
    }

    v109 = 0u;
    v108 = 0u;
  }

  if (v106)
  {
    if (BYTE8(v106))
    {
      (*(*v106 + 40))();
    }

    v107 = 0u;
    v106 = 0u;
  }

  if (v105[0])
  {
    if (v105[1])
    {
      (*(*v105[0] + 40))();
    }

    memset(v105, 0, sizeof(v105));
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v101);
  v92 = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v113);
  if (v117 && (v118 & 1) != 0)
  {
    (*(*v117 + 40))(v92);
  }

  return v81;
}

uint64_t re::MaterialTechniqueData::operator=(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicString::operator=(a1, a2);
  re::DynamicString::operator=((v4 + 32), (a2 + 32));
  re::AssetHandle::operator=(a1 + 64, (a2 + 64));
  re::AssetHandle::operator=(a1 + 88, (a2 + 88));
  re::DynamicString::operator=((a1 + 112), (a2 + 112));
  re::AssetHandle::operator=(a1 + 144, (a2 + 144));
  re::DynamicString::operator=((a1 + 168), (a2 + 168));
  v5 = *(a2 + 200);
  v6 = *(a2 + 216);
  v7 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v7;
  *(a1 + 216) = v6;
  *(a1 + 200) = v5;
  if (*(a1 + 252))
  {
    if ((*(a2 + 252) & 1) == 0)
    {
      *(a1 + 252) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a2 + 252) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 252) = 1;
  }

  *(a1 + 253) = *(a2 + 253);
LABEL_7:
  re::DynamicArray<re::RenderAttachmentState>::operator=(a1 + 256, (a2 + 256));
  re::DynamicString::operator=((a1 + 296), (a2 + 296));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 328), a2 + 328);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 376, a2 + 376);
  re::DynamicArray<re::DynamicString>::operator=(a1 + 424, (a2 + 424));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 464), a2 + 464);
  re::DynamicArray<re::DynamicString>::operator=(a1 + 512, (a2 + 512));
  *(a1 + 552) = *(a2 + 552);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 560), a2 + 560);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 608, a2 + 608);
  *(a1 + 656) = *(a2 + 656);
  if (*(a1 + 657))
  {
    if ((*(a2 + 657) & 1) == 0)
    {
      *(a1 + 657) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a2 + 657) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 657) = 1;
  }

  *(a1 + 658) = *(a2 + 658);
LABEL_13:
  if ((*(a1 + 659) & 1) == 0)
  {
    if ((*(a2 + 659) & 1) == 0)
    {
      return a1;
    }

    *(a1 + 659) = 1;
LABEL_18:
    *(a1 + 660) = *(a2 + 660);
    return a1;
  }

  if (*(a2 + 659))
  {
    goto LABEL_18;
  }

  *(a1 + 659) = 0;
  return a1;
}

uint64_t re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addOrReplace(uint64_t *a1, const re::DynamicString *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = a1[1] + 96 * v6;
    *(v7 + 32) = *a3;
    result = re::DynamicArray<unsigned long long>::operator=(v7 + 40, (a3 + 8));
    v9 = *(a3 + 56);
    *(v7 + 80) = *(a3 + 48);
    *(v7 + 88) = v9;
  }

  return result;
}

double re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 40 * v5;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = *(a2 + 24);
  v13 = *(a2 + 8);
  *v11 = *a2;
  *a2 = 0;
  v14 = *(a2 + 16);
  *(a2 + 24) = 0;
  v16 = *(v11 + 8);
  v15 = *(v11 + 16);
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(v11 + 32) = *(a2 + 32);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t validateAlias(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (v1 & 1) == 0;
  v3 = v1 >> 1;
  if ((v1 & 1) == 0)
  {
    v3 = v1 >> 1;
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if (v2)
      {
        v5 = *(result + 9 + v4);
        v6 = result + 9;
      }

      else
      {
        v6 = *(result + 16);
        v5 = *(v6 + v4);
      }

      if (v5 == 32)
      {
        *(v6 + v4) = 95;
        v1 = *(result + 8);
      }

      ++v4;
      v2 = (v1 & 1) == 0;
      v7 = v1 >> 1;
      if ((v1 & 1) == 0)
      {
        v7 = v1 >> 1;
      }
    }

    while (v7 > v4);
  }

  return result;
}

uint64_t generateJSONForFunctionVariant(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 22) = 3;
  v75 = 0x150000000000;
  __dst = 0uLL;
  re::DynamicString::DynamicString(&v55, (a2 + 9));
  validateAlias(&v55);
  if (v56)
  {
    v9 = *&v57[7];
  }

  else
  {
    v9 = v57;
  }

  v10 = strlen(v9);
  v11 = v10;
  if (v10 > 0x15)
  {
    HIWORD(v75) = 3077;
    __dst.n128_u32[0] = v10;
    p_dst = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v8, v10 + 1);
    __dst.n128_u64[1] = p_dst;
  }

  else
  {
    HIWORD(v75) = 7173;
    BYTE5(v75) = 21 - v10;
    p_dst = &__dst;
  }

  memcpy(p_dst, v9, v11);
  p_dst->n128_u8[v11] = 0;
  v61 = 0x405000000000000;
  *(&v60 + 1) = "label";
  *&v60 = 5;
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v60, &__dst, v8);
  v13 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a4, (a2 + 13));
  if (*(v13 + 8))
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = v13 + 9;
  }

  if (a2[6])
  {
    v15 = a2[7];
  }

  else
  {
    v15 = a2 + 49;
  }

  re::DynamicString::format("alias:%s#%s", &v52, v14, v15);
  validateAlias(&v52);
  v73 = 0x150000000000;
  v72 = 0uLL;
  v49 = v53;
  if (v53)
  {
    v16 = *&v54[7];
  }

  else
  {
    v16 = v54;
  }

  v17 = strlen(v16);
  v18 = v17;
  if (v17 > 0x15)
  {
    HIWORD(v73) = 3077;
    v72.n128_u32[0] = v17;
    v19 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v8, v17 + 1);
    v72.n128_u64[1] = v19;
  }

  else
  {
    HIWORD(v73) = 7173;
    BYTE5(v73) = 21 - v17;
    v19 = &v72;
  }

  memcpy(v19, v16, v18);
  v19->n128_u8[v18] = 0;
  v61 = 0x405000000000000;
  *(&v60 + 1) = "function";
  *&v60 = 8;
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v60, &v72, v8);
  v20 = a2[18];
  v21 = v20 >> 1;
  if ((v20 & 1) == 0)
  {
    v21 = v20 >> 1;
  }

  if (v21)
  {
    v68 = 0x150000000000;
    v67 = 0uLL;
    if (v20)
    {
      v22 = a2[19];
    }

    else
    {
      v22 = a2 + 145;
    }

    v23 = strlen(v22);
    v24 = v23;
    if (v23 > 0x15)
    {
      HIWORD(v68) = 3077;
      v67.n128_u32[0] = v23;
      v25 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v8, v23 + 1);
      v67.n128_u64[1] = v25;
    }

    else
    {
      HIWORD(v68) = 7173;
      BYTE5(v68) = 21 - v23;
      v25 = &v67;
    }

    memcpy(v25, v22, v24);
    v25->n128_u8[v24] = 0;
    v61 = 0x405000000000000;
    *(&v60 + 1) = "specialized_name";
    *&v60 = 16;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v60, &v67, v8);
  }

  v48 = a1;
  v71 = 0x4000000000000;
  v70 = 0uLL;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(&v67, a2);
  LOBYTE(v60) = a5;
  v26 = 126 - 2 * __clz(v68);
  if (v68)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,false>(v69, v69 + 104 * v68, &v60, v27, 1);
  if (v68)
  {
    v28 = v69;
    v29 = (v69 + 104 * v68);
    while (1)
    {
      re::DynamicString::DynamicString(&v60, v28);
      v62 = *(v28 + 2);
      v30 = *(v28 + 3);
      v31 = *(v28 + 4);
      v32 = *(v28 + 5);
      v66 = *(v28 + 24);
      v64 = v31;
      v65 = v32;
      v63 = v30;
      v33 = *(a3 + 24);
      v59 = 0x3000000000000;
      v58 = 0uLL;
      v81 = 0x3000000000000;
      v80 = 0uLL;
      if (a5)
      {
        v34 = v29;
        v35 = v8;
        v79 = 0x150000000000;
        v78 = 0uLL;
        v36 = (BYTE8(v60) & 1) != 0 ? v61 : &v60 + 9;
        v37 = strlen(v36);
        v38 = v37;
        if (v37 > 0x15)
        {
          v78.n128_u32[0] = v37;
          v39 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v33, v37 + 1);
          v78.n128_u64[1] = v39;
          v40 = 3077;
        }

        else
        {
          BYTE5(v79) = 21 - v37;
          v39 = &v78;
          v40 = 7173;
        }

        HIWORD(v79) = v40;
        memcpy(v39, v36, v38);
        v39->n128_u8[v38] = 0;
        v85 = 0x405000000000000;
        v84.n128_u64[0] = 2;
        v84.n128_u64[1] = "id";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v58, &v84, &v78, v33);
        v83 = 0x405000000000000;
        v84.n128_u64[0] = 7;
        v82.n128_u64[0] = 20;
        v82.n128_u64[1] = "FunctionConstantName";
        v85 = 0x405000000000000;
        v84.n128_u64[1] = "id_type";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v58, &v84, &v82, v33);
        v29 = v34;
      }

      else
      {
        v35 = v8;
        v79 = 0x3000000000000;
        v78 = 0uLL;
        v77 = 0x1F6000000000000;
        v76 = WORD1(v62);
        v85 = 0x405000000000000;
        v84.n128_u64[0] = 4;
        v84.n128_u64[1] = "data";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v78, &v84, &v76, v33);
        v85 = 0x405000000000000;
        v84.n128_u64[0] = 2;
        v84.n128_u64[1] = "id";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v58, &v84, &v78, v33);
        v83 = 0x405000000000000;
        v84.n128_u64[0] = 7;
        v82.n128_u64[0] = 21;
        v82.n128_u64[1] = "FunctionConstantIndex";
        v85 = 0x405000000000000;
        v84.n128_u64[1] = "id_type";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v58, &v84, &v82, v33);
      }

      v83 = 0x405000000000000;
      v84 = v62;
      v82.n128_u64[0] = 10;
      v82.n128_u64[1] = "value_type";
      v85 = 0x1F6000000000000;
      *&v42 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v58, &v82, &v84, v33).n128_u64[0];
      if (v62 > 0x20u)
      {
        break;
      }

      if (v62 != 3)
      {
        if (v62 != 29)
        {
          goto LABEL_72;
        }

        v83 = 0x405000000000000;
        v84 = SDWORD1(v62);
        v82.n128_u64[0] = 4;
        v82.n128_u64[1] = "data";
        v85 = 0;
        v43 = SDWORD1(v62) < 0;
        v44 = 182;
LABEL_54:
        if (!v43)
        {
          v44 = 502;
        }

        goto LABEL_56;
      }

      v83 = 0x405000000000000;
      v82.n128_u64[0] = 4;
      v82.n128_u64[1] = "data";
      v84.n128_u64[1] = 0;
      v85 = 0;
      v84.n128_f64[0] = *(&v62 + 1);
      v44 = 534;
LABEL_56:
      HIWORD(v85) = v44;
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v80, &v82, &v84, v33);
      v85 = 0x405000000000000;
      v84.n128_u64[0] = 5;
      v84.n128_u64[1] = "value";
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v58, &v84, &v80, v33);
      v8 = v35;
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::PushBack(&v70, &v58, v35);
      if (v60 && (BYTE8(v60) & 1) != 0)
      {
        (*(*v60 + 40))();
      }

      v28 = (v28 + 104);
      if (v28 == v29)
      {
        goto LABEL_60;
      }
    }

    if (v62 != 33)
    {
      if (v62 != 53)
      {
LABEL_72:
        re::internal::assertLog(5, v41, v42, "assertion failure: '%s' (%s:line %i) PSOToolManager serialization for function constant type %d not implemented yet.", "!Unreachable code", "generateJSONForFunctionConstant", 832, v62);
        _os_crash();
        __break(1u);
      }

      v83 = 0x405000000000000;
      v84 = 0uLL;
      v82.n128_u64[0] = 4;
      v82.n128_u64[1] = "data";
      v85 = 0;
      if (BYTE4(v62))
      {
        v44 = 10;
      }

      else
      {
        v44 = 9;
      }

      goto LABEL_56;
    }

    v83 = 0x405000000000000;
    v84 = DWORD1(v62);
    v82.n128_u64[0] = 4;
    v82.n128_u64[1] = "data";
    v85 = 0;
    v43 = SDWORD1(v62) < 0;
    v44 = 470;
    goto LABEL_54;
  }

LABEL_60:
  v45 = a2[18];
  if (v45)
  {
    v46 = v45 >> 1;
  }

  else
  {
    v46 = v45 >> 1;
  }

  if (!v46)
  {
    v61 = 0x405000000000000;
    *(&v60 + 1) = "constant_values";
    *&v60 = 15;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(v48, &v60, &v70, v8);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v67);
  if (v52 && (v49 & 1) != 0)
  {
    (*(*v52 + 40))();
  }

  result = v55;
  if (v55)
  {
    if (v56)
    {
      return (*(*v55 + 40))();
    }
  }

  return result;
}

int *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::PushBack(int *a1, __int128 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 >= v6)
  {
    if (v6)
    {
      v7 = v6 + ((v6 + 1) >> 1);
    }

    else
    {
      v7 = 16;
    }

    if (v6 < v7)
    {
      *(a1 + 1) = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc(a3, *(a1 + 1), 24 * v6, 24 * v7);
      a1[1] = v7;
      v5 = *a1;
    }
  }

  v8 = *(a1 + 1);
  *a1 = v5 + 1;
  v9 = v8 + 24 * v5;
  v10 = *a2;
  *(v9 + 16) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 11) = 0;
  return a1;
}

uint64_t generateJSONForComputeShader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 22) = 3;
  if (a5)
  {
    if (*(a2 + 8))
    {
      v10 = *(a2 + 16);
    }

    else
    {
      v10 = a2 + 9;
    }
  }

  else if (*(a7 + 8))
  {
    v10 = *(a7 + 16);
  }

  else
  {
    v10 = a7 + 9;
  }

  if (*(a3 + 8))
  {
    v11 = *(a3 + 16);
  }

  else
  {
    v11 = a3 + 9;
  }

  re::DynamicString::format("alias:%s#%s", &v20, v10, v11);
  validateAlias(&v20);
  v26 = 0x150000000000;
  __dst = 0uLL;
  v12 = v21;
  if (v21)
  {
    v13 = *&v22[7];
  }

  else
  {
    v13 = v22;
  }

  v14 = strlen(v13);
  v15 = v14;
  if (v14 > 0x15)
  {
    __dst.n128_u32[0] = v14;
    p_dst = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a4, v14 + 1);
    __dst.n128_u64[1] = p_dst;
    v17 = 3077;
  }

  else
  {
    BYTE5(v26) = 21 - v14;
    p_dst = &__dst;
    v17 = 7173;
  }

  HIWORD(v26) = v17;
  memcpy(p_dst, v13, v15);
  p_dst->n128_u8[v15] = 0;
  v28 = 0x405000000000000;
  *(&v27 + 1) = "compute_function";
  *&v27 = 16;
  v18 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v27, &__dst, a4);
  if (a6)
  {
    v24 = 0x1F6000000000000;
    v23 = 1uLL;
    v28 = 0x405000000000000;
    *(&v27 + 1) = "threadgroup_size_is_multiple_of_thread_execution_width";
    *&v27 = 54;
    v18 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v27, &v23, a4);
  }

  result = v20;
  if (v20)
  {
    if (v12)
    {
      return (*(*v20 + 40))(v18);
    }
  }

  return result;
}

uint64_t generateJSONForTileShader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v43 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 22) = 3;
  if (a5)
  {
    if (*(a2 + 8))
    {
      v13 = *(a2 + 16);
    }

    else
    {
      v13 = a2 + 9;
    }
  }

  else if (*(a9 + 8))
  {
    v13 = *(a9 + 16);
  }

  else
  {
    v13 = a9 + 9;
  }

  if (*(a3 + 8))
  {
    v14 = *(a3 + 16);
  }

  else
  {
    v14 = a3 + 9;
  }

  re::DynamicString::format("alias:%s#%s", &v30, v13, v14);
  validateAlias(&v30);
  v38 = 0x150000000000;
  __dst = 0uLL;
  v28 = v31;
  if (v31)
  {
    v15 = *&v32[7];
  }

  else
  {
    v15 = v32;
  }

  v16 = strlen(v15);
  v17 = v16;
  if (v16 > 0x15)
  {
    __dst.n128_u32[0] = v16;
    p_dst = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a4, v16 + 1);
    __dst.n128_u64[1] = p_dst;
    v19 = 3077;
  }

  else
  {
    BYTE5(v38) = 21 - v16;
    p_dst = &__dst;
    v19 = 7173;
  }

  HIWORD(v38) = v19;
  memcpy(p_dst, v15, v17);
  p_dst->n128_u8[v17] = 0;
  v42 = 0x405000000000000;
  v41.n128_u64[0] = 13;
  v41.n128_u64[1] = "tile_function";
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v41, &__dst, a4);
  if (a6)
  {
    v40 = 0x1F6000000000000;
    v39 = 1uLL;
    v42 = 0x405000000000000;
    v41.n128_u64[0] = 34;
    v41.n128_u64[1] = "threadgroup_size_matches_tile_size";
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v41, &v39, a4);
  }

  v36 = 0x4000000000000;
  v35 = 0uLL;
  v20 = *(a7 + 16);
  if (v20)
  {
    v21 = *(a7 + 32);
    v22 = 4 * v20;
    do
    {
      v23 = *v21++;
      v34 = 0x3000000000000;
      v33 = 0uLL;
      v39.n128_u64[1] = "pixel_format";
      v40 = 0x405000000000000;
      v39.n128_u64[0] = 12;
      v42 = 0;
      v41 = v23;
      if (v23 < 0)
      {
        v24 = 182;
      }

      else
      {
        v24 = 502;
      }

      HIWORD(v42) = v24;
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v33, &v39, &v41, a4);
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::PushBack(&v35, &v33, a4);
      v22 -= 4;
    }

    while (v22);
  }

  if (a8 != 1)
  {
    v40 = 0x405000000000000;
    v39.n128_u64[0] = 19;
    v39.n128_u64[1] = "raster_sample_count";
    v42 = 0;
    v41 = a8;
    if (a8 < 0)
    {
      v25 = 182;
    }

    else
    {
      v25 = 502;
    }

    HIWORD(v42) = v25;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v39, &v41, a4);
  }

  v42 = 0x405000000000000;
  v41.n128_u64[0] = 17;
  v41.n128_u64[1] = "color_attachments";
  v26 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v41, &v35, a4);
  result = v30;
  if (v30)
  {
    if (v28)
    {
      return (*(*v30 + 40))(v26);
    }
  }

  return result;
}

uint64_t re::PSOToolManager::setCustomMaterialWrappingDefinition(re::PSOToolManager *this, const re::DynamicString *a2)
{
  v45[5] = *MEMORY[0x1E69E9840];
  *(this + 1120) = 1;
  re::DynamicArray<re::DynamicString>::DynamicArray(v35, v36, 5uLL);
  for (i = 16; i != -4; i -= 4)
  {
    re::DynamicString::deinit(&v36[i]);
  }

  re::DynamicArray<re::DynamicString>::DynamicArray(v34, v36, 4uLL);
  for (j = 12; j != -4; j -= 4)
  {
    re::DynamicString::deinit(&v36[j]);
  }

  re::DynamicArray<re::DynamicString>::DynamicArray(v33, v36, 9uLL);
  for (k = 32; k != -4; k -= 4)
  {
    re::DynamicString::deinit(&v36[k]);
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v38 = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShader.rematerialdefinition", v34);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderTransparent.rematerialdefinition", v34);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderClearcoat.rematerialdefinition", v34);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderClearcoatTransparent.rematerialdefinition", v34);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderUnlit.rematerialdefinition", v35);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderUnlitTransparent.rematerialdefinition", v35);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "CustomUICALayer.rematerialdefinition", v33);
  if (*(a2 + 1))
  {
    v24 = *(a2 + 2);
  }

  else
  {
    v24 = a2 + 9;
  }

  if (!strcmp(v24, "CustomUICALayer.rematerialdefinition"))
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  *(this + 281) = v25;
  v26 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v36, a2);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 32 * v27;
    v29 = (*(v26 + 32) + 16);
    do
    {
      if (*(a2 + 8))
      {
        v30 = *(a2 + 2);
      }

      else
      {
        v30 = a2 + 9;
      }

      if (*(v29 - 1))
      {
        v31 = *v29;
      }

      else
      {
        v31 = v29 - 7;
      }

      re::PSOToolManager::generateFunctionVariationsForTechnique(this, v30, v31);
      v29 += 4;
      v28 -= 32;
    }

    while (v28);
  }

  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v36);
  re::DynamicArray<re::DynamicString>::deinit(v33);
  re::DynamicArray<re::DynamicString>::deinit(v34);
  return re::DynamicArray<re::DynamicString>::deinit(v35);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicArray<re::DynamicString> const&>(a1, &v7, &v10, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v8) + 40;
  }
}

uint64_t re::PSOToolManager::serializeToURL(re::PSOToolManager *this, std::string *__src)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, sizeof(v12));
  v3 = (__src - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:nn200100]<char const*,0>(&v12.__pn_, __src, v3);
  std::__fs::filesystem::__status(&v12, 0);
  locale_low = LOBYTE(v13.__locale_);
  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
  }

  if (locale_low != 2)
  {
    v15 = 0u;
    v14 = 0u;
    v16 = 0;
    v17 = 1024;
    v18 = 0;
    v19 = 0;
    operator new();
  }

  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "provided url ", 13);
  v7 = strlen(__src);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, __src, v7);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " is a directory", 15);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v12);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, re::DynamicString *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  v5 = v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v4 % v6;
  v8 = *(*(a1 + 8) + 4 * (v4 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    result = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsCopy(a1, v7, v5, a2, a2);
    goto LABEL_9;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = v9 + 48 * v8;
    if (re::DynamicString::operator==(v10 + 16, a2))
    {
      break;
    }

    v8 = *(v9 + 48 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  result = re::DynamicString::operator=((v10 + 16), a2);
LABEL_9:
  ++*(a1 + 40);
  return result;
}

{
  v4 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  v5 = v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v4 % v6;
  v8 = *(*(a1 + 8) + 4 * (v4 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    result = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsMove(a1, v7, v5, a2, a2);
    goto LABEL_9;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = v9 + 48 * v8;
    if (re::DynamicString::operator==(v10 + 16, a2))
    {
      break;
    }

    v8 = *(v9 + 48 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  result = re::DynamicString::operator=((v10 + 16), a2);
LABEL_9:
  ++*(a1 + 40);
  return result;
}

void re::PSOToolManager::serializeToURL(char const*)::$_0::operator()(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  if (*(a3 + 28) | *(a4 + 28))
  {
    v12 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(a1 + 112, a2);
    if ((v12 & 1) == 0)
    {
      v12 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1 + 112, a2);
    }

    v65 = 0;
    memset(&v66[1], 0, 24);
    v64 = 0u;
    re::DynamicString::setCapacity(v66, 0);
    re::DynamicString::operator=(v66, a2);
    re::MaterialTechniqueData::MaterialTechniqueData(v61);
    *&v38 = "pretendTechnique";
    *(&v38 + 1) = 16;
    re::DynamicString::operator=(v61, &v38);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v62, a3);
    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v63, a4);
    memset(v60, 0, sizeof(v60));
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    v59 = 0x7FFFFFFFLL;
    re::PSOToolManager::gatherFunctionConstantsForShader(a1, v61, v66, v62, v63, v60, &v56);
    v13 = HIDWORD(v57);
    v55 = 0;
    v52[1] = 0;
    v53 = 0;
    v54 = 0;
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v52, v13);
    ++v54;
    v15 = v58;
    if (v58)
    {
      v16 = 0;
      v17 = v57;
      while (1)
      {
        v18 = *v17;
        v17 += 38;
        if (v18 < 0)
        {
          break;
        }

        if (v58 == ++v16)
        {
          LODWORD(v16) = v58;
          break;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    if (v16 != v58)
    {
      v19 = v57;
      do
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::add(v52, (v19 + 152 * v16 + 40));
        if (v58 <= v16 + 1)
        {
          v20 = v16 + 1;
        }

        else
        {
          v20 = v58;
        }

        v19 = v57;
        while (v20 - 1 != v16)
        {
          LODWORD(v16) = v16 + 1;
          if ((*(v57 + 152 * v16) & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        LODWORD(v16) = v20;
LABEL_20:
        ;
      }

      while (v16 != v15);
    }

    memset(v40, 0, 32);
    v38 = 0u;
    v39 = 0u;
    re::FunctionConstantsEnumerator::createEnumerator(v60, 0, 0, v52, &v38, v50);
    re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(&v38);
    if (v51)
    {
      v21 = 0;
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a6 ^ (a6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a6 ^ (a6 >> 30))) >> 27));
      v32 = (v22 ^ (v22 >> 31)) - 0x61C8864680B583E9;
      do
      {
        re::FunctionConstantsEnumerator::createPermutation(v50, v21, v55, v53, v49);
        *&v38 = v49[4];
        *(&v38 + 1) = v49[2];
        if (*(a2 + 1))
        {
          v23 = *(a2 + 2);
        }

        else
        {
          v23 = a2 + 9;
        }

        FunctionVariantHash = re::generateFunctionVariantHash(&v38, v23);
        v25 = FunctionVariantHash;
        if (a7)
        {
          v25 = (v32 + (FunctionVariantHash << 6) + (FunctionVariantHash >> 2)) ^ FunctionVariantHash;
        }

        v48 = v25;
        if (!*a5 || (v26 = *(*(a5 + 8) + 4 * (v25 % *(a5 + 24))), v26 == 0x7FFFFFFF))
        {
LABEL_33:
          v38 = 0uLL;
          DWORD2(v39) = 0;
          *&v39 = 0;
          memset(v40, 0, sizeof(v40));
          v28 = re::DynamicString::setCapacity(&v40[8], 0);
          v42 = 0u;
          v41 = 0u;
          v29 = re::DynamicString::setCapacity(&v41, 0);
          v44 = 0u;
          v43 = 0u;
          v30 = re::DynamicString::setCapacity(&v43, 0);
          v46 = 0u;
          v45 = 0u;
          re::DynamicString::setCapacity(&v45, 0);
          re::DynamicString::operator=(&v40[8], a2);
          re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v38, v49);
          if (v40[16])
          {
            v31 = *&v40[24];
          }

          else
          {
            v31 = &v40[17];
          }

          re::DynamicString::format("%s_%zu", &v35, v31, v25);
          re::DynamicString::operator=(&v41, &v35);
          if (v35 && (v36 & 1) != 0)
          {
            (*(*v35 + 40))();
          }

          re::DynamicString::operator=(&v43, (a1 + 1128));
          v47 = a6;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v35, a5, v25, v25);
          if (HIDWORD(v36) == 0x7FFFFFFF)
          {
            re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::FunctionVariantDescriptor const&>(a5, v35, v36, &v48, &v38);
          }

          if (v45)
          {
            if (BYTE8(v45))
            {
              (*(*v45 + 40))();
            }

            v46 = 0u;
            v45 = 0u;
          }

          if (v43)
          {
            if (BYTE8(v43))
            {
              (*(*v43 + 40))();
            }

            v44 = 0u;
            v43 = 0u;
          }

          if (v41)
          {
            if (BYTE8(v41))
            {
              (*(*v41 + 40))();
            }

            v42 = 0u;
            v41 = 0u;
          }

          if (*&v40[8])
          {
            if (v40[16])
            {
              (*(**&v40[8] + 40))();
            }

            memset(&v40[8], 0, 32);
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v38);
        }

        else
        {
          v27 = *(a5 + 16);
          while (*(v27 + 200 * v26 + 8) != v25)
          {
            v26 = *(v27 + 200 * v26) & 0x7FFFFFFF;
            if (v26 == 0x7FFFFFFF)
            {
              goto LABEL_33;
            }
          }
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v49);
        ++v21;
      }

      while (v51 > v21);
    }

    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v50);
    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v52);
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v56);
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v60);
    re::MaterialTechniqueData::~MaterialTechniqueData(v61);
    if (v66[0])
    {
      if (v66[1])
      {
        (*(*v66[0] + 40))();
      }

      memset(v66, 0, 32);
    }

    re::AssetHandle::~AssetHandle(&v64);
  }
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(unsigned int *a1, uint64_t a2)
{
  v66[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 11);
  v5 = v4 & 7;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3u:
        rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
        v11 = *(a2 + 32);
        if (*(a2 + 40) - v11 <= 15)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>((a2 + 8));
          v11 = *(a2 + 32);
        }

        *(a2 + 32) = v11 + 16;
        *v11 = 0;
        *(v11 + 8) = 0;
        std::ostream::put();
        if (*a1)
        {
          v12 = *(a1 + 1) + 24;
          do
          {
            v13 = (*(v12 - 2) & 0x1000) != 0 ? v12 - 24 : *(v12 - 16);
            v14 = (*(v12 - 2) & 0x1000) != 0 ? 21 - *(v12 - 3) : *(v12 - 24);
            rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::String(a2, v13, v14);
            if ((rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(v12, a2) & 1) == 0)
            {
              return 0;
            }

            v15 = v12 + 24;
            v12 += 48;
          }

          while (v15 != *(a1 + 1) + 48 * *a1);
        }

        v16 = *(a2 + 32);
        v17 = *(v16 - 16);
        *(a2 + 32) = v16 - 16;
        if (v17)
        {
          std::ostream::put();
          rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(a2);
        }

        break;
      case 4u:
        rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
        v19 = *(a2 + 32);
        if (*(a2 + 40) - v19 <= 15)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>((a2 + 8));
          v19 = *(a2 + 32);
        }

        *(a2 + 32) = v19 + 16;
        *v19 = 0;
        *(v19 + 8) = 1;
        std::ostream::put();
        if (*a1)
        {
          v20 = *(a1 + 1);
          while ((rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(v20, a2) & 1) != 0)
          {
            v20 += 24;
            if (v20 == *(a1 + 1) + 24 * *a1)
            {
              goto LABEL_43;
            }
          }

          return 0;
        }

LABEL_43:
        v21 = *(a2 + 32);
        v22 = *(v21 - 16);
        *(a2 + 32) = v21 - 16;
        if (v22 && (*(a2 + 68) & 1) == 0)
        {
          std::ostream::put();
          rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(a2);
        }

        break;
      case 5u:
        if ((*(a1 + 11) & 0x1000) != 0)
        {
          v7 = a1;
        }

        else
        {
          v7 = *(a1 + 1);
        }

        if ((*(a1 + 11) & 0x1000) != 0)
        {
          v8 = 21 - *(a1 + 21);
        }

        else
        {
          v8 = *a1;
        }

        rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::String(a2, v7, v8);
        return 1;
      default:
        goto LABEL_31;
    }

    std::ostream::put();
    v10 = *(a2 + 24);
    v9 = *(a2 + 32);
    if (v9 != v10)
    {
LABEL_47:
      if (v9 == v10)
      {
        std::ostream::flush();
      }

      return 1;
    }

    std::ostream::flush();
LABEL_15:
    v10 = *(a2 + 24);
    v9 = *(a2 + 32);
    goto LABEL_47;
  }

  if ((v4 & 7) == 0)
  {
    rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
    std::ostream::put();
    std::ostream::put();
    std::ostream::put();
    std::ostream::put();
    goto LABEL_15;
  }

  if (v5 == 1)
  {
    rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Bool(a2, 0);
    return 1;
  }

  if (v5 == 2)
  {
    v6 = 1;
    rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Bool(a2, 1);
    return v6;
  }

LABEL_31:
  if ((*(a1 + 11) & 0x200) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      if ((v4 & 0x40) != 0)
      {
        rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint(a2, *a1);
      }

      else
      {
        v18 = *a1;
        if ((v4 & 0x80) != 0)
        {
          rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Int64(a2, v18);
        }

        else
        {
          rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint64(a2, v18);
        }
      }

      return 1;
    }

    v28 = *a1;
    rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
    if ((v28 & 0x80000000) != 0)
    {
      v30 = v66;
      v65 = 45;
      v28 = -v28;
    }

    else
    {
      v30 = &v65;
    }

    v50 = rapidjson::internal::u32toa(v28, v30, v29);
    if (&v65 != v50)
    {
      v51 = v50;
      v52 = &v65;
      do
      {
        ++v52;
        std::ostream::put();
      }

      while (v52 != v51);
    }

    goto LABEL_15;
  }

  v23 = *a1;
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
  v24 = *&v23;
  v6 = (*&v23 & 0x7FF0000000000000) != 0x7FF0000000000000;
  if ((*&v23 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    if (v23 == 0.0)
    {
      v25 = &v65;
      if ((*&v23 & 0x8000000000000000) != 0)
      {
        v25 = v66;
        v65 = 45;
      }

      *v25 = 11824;
      v25[2] = 48;
      v26 = v25 + 3;
    }

    else
    {
      v31 = *(a2 + 56);
      v32 = &v65;
      if (v23 < 0.0)
      {
        v32 = v66;
        v65 = 45;
        v24 = *&v23 ^ 0x8000000000000000;
      }

      v54 = 0;
      if (((v24 >> 52) & 0x7FF) != 0)
      {
        v33 = v24 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
      }

      else
      {
        v33 = v24 & 0xFFFFFFFFFFFFFLL;
      }

      if (((v24 >> 52) & 0x7FF) != 0)
      {
        v34 = ((v24 >> 52) & 0x7FF) - 1075;
      }

      else
      {
        v34 = -1074;
      }

      v63 = (2 * (v33 & 0x1FFFFFFFFFFFFFLL)) | 1;
      v64 = v34 - 1;
      v35 = rapidjson::internal::DiyFp::NormalizeBoundary(&v63);
      v37 = 2 * v33 - 1;
      if (v33 == 0x10000000000000)
      {
        v38 = -2;
      }

      else
      {
        v38 = -1;
      }

      if (v33 == 0x10000000000000)
      {
        v37 = 0x3FFFFFFFFFFFFFLL;
      }

      v61 = v35;
      v62 = v36;
      v63 = v37 << (v38 + v34 - v36);
      v64 = v36;
      v39 = (-61 - v36) * 0.301029996 + 347.0;
      v40 = v39;
      if (v39 > v39)
      {
        ++v40;
      }

      v41 = (v40 >> 3) + 1;
      v42 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_F[v41];
      v53 = 348 - 8 * v41;
      v43 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_E[v41];
      v59 = v42;
      v60 = v43;
      v44 = __clz(v33);
      v55 = v33 << v44;
      v56 = v34 - v44;
      v57 = rapidjson::internal::DiyFp::operator*(&v55, &v59);
      v58 = v45;
      v46 = rapidjson::internal::DiyFp::operator*(&v61, &v59);
      v56 = v47;
      v48 = rapidjson::internal::DiyFp::operator*(&v63, &v59);
      v55 = v46 - 1;
      rapidjson::internal::DigitGen(&v57, &v55, v46 - 1 + ~v48, v32, &v54, &v53);
      v26 = rapidjson::internal::Prettify(v32, v54, v53, v31);
    }

    if (&v65 != v26)
    {
      v49 = &v65;
      do
      {
        ++v49;
        std::ostream::put();
      }

      while (v49 != v26);
    }
  }

  if (*(a2 + 32) == *(a2 + 24))
  {
    std::ostream::flush();
  }

  return v6;
}

uint64_t re::PSOToolManager::serializeRuntimeCompilationStatisticsToURL(re::PSOToolManager *this, std::string *__src)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(&__dst, 0, sizeof(__dst));
  v3 = (__src - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:nn200100]<char const*,0>(&__dst.__pn_, __src, v3);
  std::__fs::filesystem::__status(&__dst, 0);
  v5 = v13;
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  if (v5 != 2)
  {
    v15 = 0u;
    v14 = 0u;
    v16 = 0;
    v17 = 1024;
    v18 = 0;
    v19 = 0;
    operator new();
  }

  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "provided url ", 13);
  v7 = strlen(__src);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, __src, v7);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " is a directory", 15);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&__dst, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  return std::ostream::flush();
}

unint64_t re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::operator[](uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  return *(a1 + 16) + (v6 << 6) + 16;
}

__n128 re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v11, a1, *a2, *a2);
  v6 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v7 = v11;
    v8 = v12;

    re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::FunctionVariantDescriptor const&>(a1, v7, v8, a2, a3);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 200 * v6;
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v10 + 16, a3);
    re::DynamicString::operator=((v10 + 56), (a3 + 40));
    re::DynamicString::operator=((v10 + 88), (a3 + 72));
    re::DynamicString::operator=((v10 + 120), (a3 + 104));
    re::DynamicString::operator=((v10 + 152), (a3 + 136));
    result = *(a3 + 168);
    *(v10 + 184) = result;
  }

  return result;
}

_DWORD *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  v9 = "total";
  v6 = 0;
  v7 = 0;
  v4 = re::Hash<re::DynamicString>::operator()(&v10, "total");
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v9, v4, &v6);
  if (HIDWORD(v7) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,int const&>(a1, &v6, &v9, a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::PSOToolComputeDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolComputeDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 136 * v4);
  re::DynamicString::DynamicString(v5, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5 + 32, a2 + 32);
  result = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5 + 80, a2 + 80);
  *(v5 + 128) = *(a2 + 128);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::PSOToolTileDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolTileDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 176 * v4);
  re::DynamicString::DynamicString(v5, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5 + 32, a2 + 32);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v5 + 80, a2 + 80);
  *(v5 + 16) = *(a2 + 16);
  result = re::DynamicArray<re::ShaderAPIFlags::Values>::DynamicArray(v5 + 136, a2 + 17);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::PSOToolCustomClearDescriptor>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolCustomClearDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 96 * v4);
  re::DynamicArray<float>::DynamicArray(v5, a2);
  re::DynamicArray<float>::DynamicArray(&v5[2].n128_i64[1], &a2[2].n128_i64[1]);
  result = a2[5];
  v5[5] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::PSOToolCustomRenderDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolCustomRenderDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicString::DynamicString((v5 + 32), (a2 + 32));
  result = re::DynamicArray<re::ShaderAPIFlags::Values>::DynamicArray(v5 + 64, a2 + 8);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::DynamicString *re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 96 * v4;
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicString::DynamicString((v5 + 32), (a2 + 32));
  result = re::DynamicString::DynamicString((v5 + 64), (a2 + 64));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::MaterialFile::MaterialFile(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicString::DynamicString(a1, a2);
  re::AssetHandle::AssetHandle((v4 + 32), (a2 + 32));
  re::MaterialParameterData::MaterialParameterData(a1 + 56, a2 + 56);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(a1 + 296, a2 + 296);
  v5 = *(a2 + 344);
  *(a1 + 344) = v5;
  if (v5 == 1)
  {
    *(a1 + 345) = *(a2 + 345);
  }

  v6 = *(a2 + 346);
  *(a1 + 346) = v6;
  if (v6 == 1)
  {
    *(a1 + 347) = *(a2 + 347);
  }

  v7 = *(a2 + 348);
  *(a1 + 348) = v7;
  if (v7 == 1)
  {
    *(a1 + 349) = *(a2 + 349);
  }

  v8 = *(a2 + 350);
  *(a1 + 350) = v8;
  if (v8 == 1)
  {
    *(a1 + 351) = *(a2 + 351);
  }

  v9 = *(a2 + 352);
  *(a1 + 352) = v9;
  if (v9 == 1)
  {
    *(a1 + 353) = *(a2 + 353);
  }

  v10 = *(a2 + 354);
  *(a1 + 354) = v10;
  if (v10 == 1)
  {
    *(a1 + 355) = *(a2 + 355);
  }

  v11 = *(a2 + 356);
  *(a1 + 356) = v11;
  if (v11 == 1)
  {
    *(a1 + 357) = *(a2 + 357);
  }

  v12 = *(a2 + 358);
  *(a1 + 358) = v12;
  if (v12 == 1)
  {
    *(a1 + 359) = *(a2 + 359);
  }

  v13 = *(a2 + 360);
  *(a1 + 360) = v13;
  if (v13 == 1)
  {
    *(a1 + 361) = *(a2 + 361);
  }

  v14 = *(a2 + 362);
  *(a1 + 362) = v14;
  if (v14 == 1)
  {
    *(a1 + 363) = *(a2 + 363);
  }

  *(a1 + 400) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  *(a1 + 392) = 0;
  v15 = *(a2 + 368);
  if (v15)
  {
    v16 = *(a2 + 384);
    *(a1 + 368) = v15;
    re::DynamicArray<re::FunctionLink>::setCapacity((a1 + 368), v16);
    ++*(a1 + 392);
    re::DynamicArray<re::FunctionLink>::copy((a1 + 368), a2 + 368);
  }

  *(a1 + 408) = *(a2 + 408);
  return a1;
}

uint64_t re::MaterialParameterData::MaterialParameterData(uint64_t a1, uint64_t a2)
{
  v4 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(a1, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v4 + 48, a2 + 48);
  v5 = 0uLL;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0u;
  v6 = *(a2 + 96);
  *(a1 + 132) = 0x7FFFFFFFLL;
  if (v6)
  {
    if (*(a2 + 124) <= 3u)
    {
      v7 = 3;
    }

    else
    {
      v7 = *(a2 + 124);
    }

    re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 96, v6, v7);
    re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((a1 + 96), a2 + 96);
    v5 = 0uLL;
  }

  *(a1 + 144) = v5;
  *(a1 + 176) = 0;
  *(a1 + 160) = v5;
  v8 = *(a2 + 144);
  *(a1 + 180) = 0x7FFFFFFFLL;
  if (v8)
  {
    if (*(a2 + 172) <= 3u)
    {
      v9 = 3;
    }

    else
    {
      v9 = *(a2 + 172);
    }

    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 144, v8, v9);
    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((a1 + 144), a2 + 144);
  }

  *(a1 + 192) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0u;
  v10 = *(a2 + 192);
  *(a1 + 228) = 0x7FFFFFFFLL;
  if (v10)
  {
    if (*(a2 + 220) <= 3u)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a2 + 220);
    }

    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 192, v10, v11);
    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((a1 + 192), a2 + 192);
  }

  return a1;
}

{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
  *(a1 + 80) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 48), (a2 + 48));
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  v4 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v4;
  v5 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v5;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  LODWORD(v5) = *(a1 + 124);
  *(a1 + 124) = *(a2 + 124);
  *(a2 + 124) = v5;
  LODWORD(v5) = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v5;
  LODWORD(v5) = *(a1 + 132);
  *(a1 + 132) = *(a2 + 132);
  *(a2 + 132) = v5;
  ++*(a1 + 136);
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0x7FFFFFFFLL;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  v6 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v6;
  v7 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v7;
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = 0;
  LODWORD(v7) = *(a1 + 172);
  *(a1 + 172) = *(a2 + 172);
  *(a2 + 172) = v7;
  LODWORD(v7) = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v7;
  LODWORD(v7) = *(a1 + 180);
  *(a1 + 180) = *(a2 + 180);
  *(a2 + 180) = v7;
  ++*(a1 + 184);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0x7FFFFFFFLL;
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  v8 = *(a1 + 200);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v8;
  v9 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v9;
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  LODWORD(v9) = *(a1 + 220);
  *(a1 + 220) = *(a2 + 220);
  *(a2 + 220) = v9;
  LODWORD(v9) = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v9;
  LODWORD(v9) = *(a1 + 228);
  *(a1 + 228) = *(a2 + 228);
  *(a2 + 228) = v9;
  ++*(a1 + 232);
  return a1;
}

re::MaterialDefinitionFile *re::MaterialDefinitionFile::MaterialDefinitionFile(re::MaterialDefinitionFile *this, const re::MaterialDefinitionFile *a2)
{
  v4 = re::DynamicString::DynamicString(this, a2);
  re::DynamicString::DynamicString((v4 + 32), (a2 + 32));
  re::DynamicString::DynamicString((this + 64), (a2 + 64));
  re::AssetHandle::AssetHandle((this + 96), (a2 + 96));
  re::AssetHandle::AssetHandle((this + 120), (a2 + 120));
  re::MaterialParameterData::MaterialParameterData(this + 144, a2 + 144);
  *(this + 52) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  *(this + 102) = 0;
  v5 = *(a2 + 48);
  if (v5)
  {
    v6 = *(a2 + 50);
    *(this + 48) = v5;
    re::DynamicArray<re::MaterialTechniqueData>::setCapacity(this + 48, v6);
    ++*(this + 102);
    re::DynamicArray<re::MaterialTechniqueData>::copy((this + 384), a2 + 384);
  }

  *(this + 57) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 53) = 0;
  *(this + 112) = 0;
  v7 = *(a2 + 53);
  if (v7)
  {
    v8 = *(a2 + 55);
    *(this + 53) = v7;
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(this + 53, v8);
    ++*(this + 112);
    re::DynamicArray<re::MaterialTechniqueGroupData>::copy(this + 424, a2 + 424);
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 464, a2 + 464);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 512, a2 + 512);
  *(this + 74) = 0;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  *(this + 146) = 0;
  v9 = *(a2 + 70);
  if (v9)
  {
    v10 = *(a2 + 72);
    *(this + 70) = v9;
    re::DynamicArray<re::DebugMapping>::setCapacity(this + 70, v10);
    ++*(this + 146);
    re::DynamicArray<re::DebugMapping>::copy(this + 560, a2 + 560);
  }

  *(this + 79) = 0x7FFFFFFF00000000;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 160) = 0;
  v11 = *(a2 + 75);
  if (v11)
  {
    if (*(a2 + 157) <= 3u)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(a2 + 157);
    }

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(this + 600, v11, v12);
    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy((this + 600), a2 + 600);
  }

  *(this + 85) = 0;
  *(this + 81) = 0;
  *(this + 83) = 0;
  *(this + 82) = 0;
  *(this + 168) = 0;
  v13 = *(a2 + 81);
  if (v13)
  {
    v14 = *(a2 + 83);
    *(this + 81) = v13;
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(this + 81, v14);
    ++*(this + 168);
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::copy((this + 648), a2 + 648);
  }

  re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(this + 688, a2 + 688);
  return this;
}

re::MaterialTechniqueData *re::DynamicArray<re::MaterialTechniqueData>::copy(re::MaterialTechniqueData *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = *(v3 + 2);
    v13 = *(v3 + 4);
    if (v12)
    {
      v14 = 664 * v12;
      do
      {
        result = re::MaterialTechniqueData::operator=(v13, v11);
        v11 += 664;
        v13 += 664;
        v14 -= 664;
      }

      while (v14);
      v13 = *(v3 + 4);
      v12 = *(v3 + 2);
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 664 * v12;
      v16 = (v11 + v15);
      result = (v13 + v15);
      v17 = 664 * v4 - v15;
      do
      {
        v18 = re::MaterialTechniqueData::MaterialTechniqueData(result, v16);
        v16 = (v16 + 664);
        result = (v18 + 664);
        v17 -= 664;
      }

      while (v17);
    }
  }

  else
  {
    v6 = *(result + 4);
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 664 * v4;
      do
      {
        result = re::MaterialTechniqueData::operator=(v6, v7);
        v7 += 664;
        v6 += 664;
        v8 -= 664;
      }

      while (v8);
      v6 = *(v3 + 4);
      v5 = *(v3 + 2);
    }

    if (v4 != v5)
    {
      result = (v6 + 664 * v4);
      v9 = 664 * v5 - 664 * v4;
      do
      {
        re::MaterialTechniqueData::~MaterialTechniqueData(result);
        result = (v10 + 664);
        v9 -= 664;
      }

      while (v9);
    }
  }

  *(v3 + 2) = v4;
  return result;
}

void re::DynamicArray<re::MaterialTechniqueGroupData>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *>(&v15, *(a2 + 32), (*(a2 + 32) + 72 * *(a1 + 16)), *(a1 + 32));
    v9 = *(a1 + 16);
    if (v9 != v4)
    {
      v10 = 9 * v9;
      v11 = (*(a2 + 32) + 8 * v10);
      v12 = (*(a1 + 32) + 8 * v10);
      v13 = 72 * v4 - 8 * v10;
      do
      {
        re::DynamicString::DynamicString(v12, v11);
        re::DynamicArray<re::DynamicString>::DynamicArray(v12 + 32, v11 + 4);
        v11 += 9;
        v12 = (v12 + 72);
        v13 -= 72;
      }

      while (v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *>(&v14, *(a2 + 32), (*(a2 + 32) + 72 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32);
      v7 = (v6 + 72 * v5);
      v8 = (v6 + 72 * v4);
      do
      {
        re::MaterialTechniqueGroupData::deinit(v8);
        re::DynamicArray<re::DynamicString>::deinit((v8 + 4));
        re::DynamicString::deinit(v8);
        v8 += 9;
      }

      while (v8 != v7);
    }
  }

  *(a1 + 16) = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *,re::MaterialTechniqueGroupData *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      re::DynamicArray<re::DynamicString>::operator=(this + 32, v5 + 4);
      v5 += 9;
      this = (this + 72);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void re::DynamicArray<re::DebugMapping>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::DebugMapping>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::DebugMapping *,re::DebugMapping *,re::DebugMapping *>(&v14, *(a2 + 32), (*(a2 + 32) + 80 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = 5 * v8;
      v10 = (*(a2 + 32) + 16 * v9);
      v11 = (*(a1 + 32) + 16 * v9);
      v12 = 80 * v4 - 16 * v9;
      do
      {
        re::DynamicString::DynamicString(v11, v10);
        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v11 + 32, v10 + 32);
        v10 = (v10 + 80);
        v11 = (v11 + 80);
        v12 -= 80;
      }

      while (v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::DebugMapping *,re::DebugMapping *,re::DebugMapping *>(&v13, *(a2 + 32), (*(a2 + 32) + 80 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = (*(a1 + 32) + 80 * v4);
      v7 = 80 * v5 - 80 * v4;
      do
      {
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v6 + 4);
        re::DynamicString::deinit(v6);
        v6 += 10;
        v7 -= 80;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::DebugMapping *,re::DebugMapping *,re::DebugMapping *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((this + 32), v5 + 32);
      v5 = (v5 + 80);
      this = (this + 80);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

re::DynamicString *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

re::DynamicString *re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 16);
      if ((*(v6 + v4) & 0x80000000) != 0)
      {
        v7 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3, *(v6 + v4 + 88) % *(v3 + 24), *(v6 + v4 + 88));
        result = re::DynamicString::DynamicString((v7 + 8), (*(a2 + 16) + v4 + 8));
        v8 = *(a2 + 16);
        v9 = v8 + v4;
        v10 = *(v8 + v4 + 40);
        v7[40] = v10;
        if (v10 == 1)
        {
          result = re::DynamicString::DynamicString((v7 + 48), (v9 + 48));
        }

        v11 = *(v9 + 80);
        v7[80] = v11;
        if (v11 == 1)
        {
          v7[81] = *(v8 + v4 + 81);
        }
      }

      ++v5;
      v4 += 96;
    }

    while (v5 < *(a2 + 32));
  }

  return result;
}

re::MaterialTechniqueQualityLevelSetData *re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::copy(re::MaterialTechniqueQualityLevelSetData *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = *(v3 + 2);
    v13 = *(v3 + 4);
    if (v12)
    {
      v14 = 104 * v12;
      do
      {
        result = re::MaterialTechniqueQualityLevelSetData::operator=(v13, v11);
        v11 += 13;
        v13 = (v13 + 104);
        v14 -= 104;
      }

      while (v14);
      v13 = *(v3 + 4);
      v12 = *(v3 + 2);
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 104 * v12;
      v16 = &v11[v15 / 8];
      result = (v13 + v15);
      v17 = 104 * v4 - v15;
      do
      {
        v18 = re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(result, v16);
        v16 = (v16 + 104);
        result = (v18 + 104);
        v17 -= 104;
      }

      while (v17);
    }
  }

  else
  {
    v6 = *(result + 4);
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 104 * v4;
      do
      {
        result = re::MaterialTechniqueQualityLevelSetData::operator=(v6, v7);
        v7 += 13;
        v6 = (v6 + 104);
        v8 -= 104;
      }

      while (v8);
      v6 = *(v3 + 4);
      v5 = *(v3 + 2);
    }

    if (v4 != v5)
    {
      result = (v6 + 104 * v4);
      v9 = 104 * v5 - 104 * v4;
      do
      {
        re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(result);
        result = (v10 + 104);
        v9 -= 104;
      }

      while (v9);
    }
  }

  *(v3 + 2) = v4;
  return result;
}

uint64_t re::DynamicArray<re::TechniqueFunctionConstant>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::TechniqueFunctionConstant>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::FunctionVariantDescriptor const&>(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5)
{
  v8 = re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, a3, a2);
  *(v8 + 8) = *a4;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v8 + 16, a5);
  re::DynamicString::DynamicString((v8 + 56), (a5 + 40));
  re::DynamicString::DynamicString((v8 + 88), (a5 + 72));
  re::DynamicString::DynamicString((v8 + 120), (a5 + 104));
  re::DynamicString::DynamicString((v8 + 152), (a5 + 136));
  *(v8 + 184) = *(a5 + 168);
  ++*(a1 + 40);
  return v8 + 16;
}

uint64_t re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 200 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 200 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 200 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 200 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v46, 0, 36);
          *&v46[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v46, v9, v8);
          v11 = *v46;
          *v46 = *a1;
          *a1 = v11;
          v12 = *&v46[16];
          *&v46[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v46[24];
          *&v46[24] = *(a1 + 24);
          v13 = *&v46[32];
          *(a1 + 24) = v14;
          ++*&v46[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 96;
            do
            {
              v18 = *&v46[16] + v17;
              if ((*(*&v46[16] + v17 - 96) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v18 - 88) % *(a1 + 24));
                v20 = *(v18 - 88);
                *(v19 + 48) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 32) = 0;
                *(v19 + 8) = v20;
                *(v19 + 16) = 0;
                v21 = *(v18 - 72);
                *(v19 + 16) = *(v18 - 80);
                *(v19 + 24) = v21;
                *(v18 - 80) = 0;
                *(v18 - 72) = 0;
                v22 = *(v19 + 32);
                *(v19 + 32) = *(v18 - 64);
                *(v18 - 64) = v22;
                v23 = *(v19 + 48);
                *(v19 + 48) = *(v18 - 48);
                *(v18 - 48) = v23;
                ++*(v18 - 56);
                ++*(v19 + 40);
                *(v19 + 72) = 0u;
                *(v19 + 56) = 0u;
                *(v19 + 80) = *(v18 - 16);
                v24 = *(v18 - 32);
                *(v19 + 56) = *(v18 - 40);
                *(v18 - 40) = 0;
                v25 = *(v18 - 24);
                *(v18 - 16) = 0;
                v27 = *(v19 + 64);
                v26 = *(v19 + 72);
                *(v19 + 64) = v24;
                *(v19 + 72) = v25;
                *(v18 - 32) = v27;
                *(v18 - 24) = v26;
                *(v19 + 104) = 0u;
                *(v19 + 88) = 0u;
                *(v19 + 112) = *(v18 + 16);
                v28 = *v18;
                *(v19 + 88) = *(v18 - 8);
                *(v18 - 8) = 0;
                v29 = *(v18 + 8);
                *(v18 + 16) = 0;
                v31 = *(v19 + 96);
                v30 = *(v19 + 104);
                *(v19 + 96) = v28;
                *(v19 + 104) = v29;
                *v18 = v31;
                *(v18 + 8) = v30;
                *(v19 + 136) = 0u;
                *(v19 + 120) = 0u;
                *(v19 + 144) = *(v18 + 48);
                v32 = *(v18 + 32);
                *(v19 + 120) = *(v18 + 24);
                *(v18 + 24) = 0;
                v33 = *(v18 + 40);
                *(v18 + 48) = 0;
                v35 = *(v19 + 128);
                v34 = *(v19 + 136);
                *(v19 + 128) = v32;
                *(v19 + 136) = v33;
                *(v18 + 32) = v35;
                *(v18 + 40) = v34;
                *(v19 + 168) = 0u;
                *(v19 + 152) = 0u;
                *(v19 + 176) = *(v18 + 80);
                v36 = *(v18 + 64);
                *(v19 + 152) = *(v18 + 56);
                *(v18 + 56) = 0;
                v37 = *(v18 + 72);
                *(v18 + 80) = 0;
                v39 = *(v19 + 160);
                v38 = *(v19 + 168);
                *(v19 + 160) = v36;
                *(v19 + 168) = v37;
                *(v18 + 64) = v39;
                *(v18 + 72) = v38;
                *(v19 + 184) = *(v18 + 88);
                v15 = *&v46[32];
              }

              ++v16;
              v17 += 200;
            }

            while (v16 < v15);
          }

          re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v46);
        }
      }

      else
      {
        if (v8)
        {
          v42 = 2 * v7;
        }

        else
        {
          v42 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v40 = *(a1 + 16);
    v41 = *(v40 + 200 * v4);
  }

  else
  {
    v40 = *(a1 + 16);
    v41 = *(v40 + 200 * v4);
    *(a1 + 36) = v41 & 0x7FFFFFFF;
  }

  v43 = 200 * v4;
  *(v40 + v43) = v41 | 0x80000000;
  v44 = *(a1 + 8);
  *(v40 + v43) = *(v44 + 4 * a2) | 0x80000000;
  *(v44 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v40 + 200 * v4;
}

void re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 200 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  free(*(a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v60, 0, 36);
          *&v60[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v60, v9, v8);
          v11 = *v60;
          *v60 = *a1;
          *a1 = v11;
          v12 = *&v60[16];
          *&v60[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v60[24];
          *&v60[24] = *(a1 + 24);
          v13 = *&v60[32];
          *(a1 + 24) = v14;
          ++*&v60[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 424;
            do
            {
              v18 = *&v60[16] + v17;
              if ((*(*&v60[16] + v17 - 424) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v18 + 352) % *(a1 + 24));
                *(v19 + 24) = 0u;
                *(v19 + 8) = 0u;
                *(v19 + 8) = *(v18 - 416);
                *(v18 - 416) = 0;
                v20 = *(v18 - 400);
                *(v19 + 32) = *(v18 - 392);
                *(v18 - 392) = 0;
                v22 = *(v19 + 16);
                v21 = *(v19 + 24);
                v23 = *(v18 - 408);
                *(v19 + 24) = v20;
                *(v18 - 400) = v21;
                *(v19 + 16) = v23;
                *(v18 - 408) = v22;
                *(v19 + 40) = 0u;
                *(v19 + 56) = 0u;
                *(v19 + 40) = *(v18 - 384);
                *(v18 - 384) = 0;
                v24 = *(v18 - 368);
                *(v19 + 64) = *(v18 - 360);
                *(v18 - 360) = 0;
                v26 = *(v19 + 48);
                v25 = *(v19 + 56);
                v27 = *(v18 - 376);
                *(v19 + 56) = v24;
                *(v18 - 368) = v25;
                *(v19 + 48) = v27;
                *(v18 - 376) = v26;
                *(v19 + 88) = 0u;
                *(v19 + 72) = 0u;
                *(v19 + 72) = *(v18 - 352);
                *(v18 - 352) = 0;
                v28 = *(v18 - 336);
                *(v19 + 96) = *(v18 - 328);
                *(v18 - 328) = 0;
                v30 = *(v19 + 80);
                v29 = *(v19 + 88);
                v31 = *(v18 - 344);
                *(v19 + 88) = v28;
                *(v18 - 336) = v29;
                *(v19 + 80) = v31;
                *(v18 - 344) = v30;
                *(v19 + 120) = 0u;
                *(v19 + 104) = 0u;
                *(v19 + 104) = *(v18 - 320);
                *(v18 - 320) = 0;
                v32 = *(v18 - 304);
                *(v19 + 128) = *(v18 - 296);
                *(v18 - 296) = 0;
                v34 = *(v19 + 112);
                v33 = *(v19 + 120);
                v35 = *(v18 - 312);
                *(v19 + 120) = v32;
                *(v18 - 304) = v33;
                *(v19 + 112) = v35;
                *(v18 - 312) = v34;
                *(v19 + 136) = 0;
                *(v19 + 144) = 0;
                *(v19 + 152) = 0;
                *(v19 + 144) = *(v18 - 280);
                *(v18 - 280) = 0;
                v36 = *(v19 + 136);
                *(v19 + 136) = 0;
                *(v19 + 136) = *(v18 - 288);
                *(v18 - 288) = v36;
                v37 = *(v19 + 152);
                *(v19 + 152) = *(v18 - 272);
                *(v18 - 272) = v37;
                *(v19 + 160) = 0;
                *(v19 + 168) = 0;
                *(v19 + 176) = 0;
                *(v19 + 168) = *(v18 - 256);
                *(v18 - 256) = 0;
                v38 = *(v19 + 160);
                *(v19 + 160) = 0;
                *(v19 + 160) = *(v18 - 264);
                *(v18 - 264) = v38;
                v39 = *(v19 + 176);
                *(v19 + 176) = *(v18 - 248);
                *(v18 - 248) = v39;
                re::MaterialParameterData::MaterialParameterData(v19 + 184, v18 - 240);
                *(v19 + 456) = 0;
                *(v19 + 448) = 0;
                *(v19 + 432) = 0;
                *(v19 + 440) = 0;
                *(v19 + 424) = 0;
                v40 = *(v18 + 8);
                *(v19 + 424) = *v18;
                *(v19 + 432) = v40;
                *v18 = 0;
                *(v18 + 8) = 0;
                v41 = *(v19 + 440);
                *(v19 + 440) = *(v18 + 16);
                *(v18 + 16) = v41;
                v42 = *(v19 + 456);
                *(v19 + 456) = *(v18 + 32);
                *(v18 + 32) = v42;
                ++*(v18 + 24);
                ++*(v19 + 448);
                *(v19 + 496) = 0;
                *(v19 + 472) = 0;
                *(v19 + 480) = 0;
                *(v19 + 464) = 0;
                *(v19 + 488) = 0;
                v43 = *(v18 + 48);
                *(v19 + 464) = *(v18 + 40);
                *(v19 + 472) = v43;
                *(v18 + 40) = 0;
                *(v18 + 48) = 0;
                v44 = *(v19 + 480);
                *(v19 + 480) = *(v18 + 56);
                *(v18 + 56) = v44;
                v45 = *(v19 + 496);
                *(v19 + 496) = *(v18 + 72);
                *(v18 + 72) = v45;
                ++*(v18 + 64);
                ++*(v19 + 488);
                *(v19 + 504) = 0u;
                *(v19 + 520) = 0u;
                *(v19 + 536) = 0;
                *(v19 + 540) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 504), (v18 + 80));
                *(v19 + 552) = 0u;
                *(v19 + 568) = 0u;
                *(v19 + 584) = 0x7FFFFFFF00000000;
                *(v19 + 592) = 0;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 552), (v18 + 128));
                *(v19 + 632) = 0;
                *(v19 + 624) = 0;
                *(v19 + 616) = 0;
                *(v19 + 608) = 0;
                *(v19 + 600) = 0;
                v46 = *(v18 + 184);
                *(v19 + 600) = *(v18 + 176);
                *(v19 + 608) = v46;
                *(v18 + 176) = 0;
                *(v18 + 184) = 0;
                v47 = *(v19 + 616);
                *(v19 + 616) = *(v18 + 192);
                *(v18 + 192) = v47;
                v48 = *(v19 + 632);
                *(v19 + 632) = *(v18 + 208);
                *(v18 + 208) = v48;
                ++*(v18 + 200);
                ++*(v19 + 624);
                *(v19 + 672) = 0;
                *(v19 + 640) = 0u;
                *(v19 + 656) = 0u;
                *(v19 + 676) = 0x7FFFFFFFLL;
                *(v19 + 640) = *(v18 + 216);
                *(v18 + 216) = 0;
                v49 = *(v19 + 648);
                *(v19 + 648) = *(v18 + 224);
                *(v18 + 224) = v49;
                v50 = *(v19 + 656);
                *(v19 + 656) = *(v18 + 232);
                *(v18 + 232) = v50;
                *(v19 + 664) = *(v18 + 240);
                *(v18 + 240) = 0;
                LODWORD(v50) = *(v19 + 668);
                *(v19 + 668) = *(v18 + 244);
                *(v18 + 244) = v50;
                LODWORD(v50) = *(v19 + 672);
                *(v19 + 672) = *(v18 + 248);
                *(v18 + 248) = v50;
                LODWORD(v50) = *(v19 + 676);
                *(v19 + 676) = *(v18 + 252);
                *(v18 + 252) = v50;
                ++*(v19 + 680);
                *(v19 + 720) = 0;
                *(v19 + 688) = 0;
                *(v19 + 704) = 0;
                *(v19 + 696) = 0;
                *(v19 + 712) = 0;
                v51 = *(v18 + 272);
                *(v19 + 688) = *(v18 + 264);
                *(v19 + 696) = v51;
                *(v18 + 264) = 0;
                *(v18 + 272) = 0;
                v52 = *(v19 + 704);
                *(v19 + 704) = *(v18 + 280);
                *(v18 + 280) = v52;
                v53 = *(v19 + 720);
                *(v19 + 720) = *(v18 + 296);
                *(v18 + 296) = v53;
                ++*(v18 + 288);
                ++*(v19 + 712);
                *(v19 + 728) = 0u;
                *(v19 + 744) = 0u;
                *(v19 + 760) = 0;
                *(v19 + 764) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 728), (v18 + 304));
                v15 = *&v60[32];
              }

              ++v16;
              v17 += 784;
            }

            while (v16 < v15);
          }

          re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v60);
        }
      }

      else
      {
        if (v8)
        {
          v56 = 2 * v7;
        }

        else
        {
          v56 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v54 = *(a1 + 16);
    v55 = *(v54 + 784 * v5);
  }

  else
  {
    v54 = *(a1 + 16);
    v55 = *(v54 + 784 * v5);
    *(a1 + 36) = v55 & 0x7FFFFFFF;
  }

  v57 = v54 + 784 * v5;
  *v57 = v55 | 0x80000000;
  v58 = *(a1 + 8);
  *v57 = *(v58 + 4 * a2) | 0x80000000;
  *(v58 + 4 * a2) = v5;
  *(v57 + 776) = a3;
  ++*(a1 + 28);
  return v54 + 784 * v5;
}

double re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 784;
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

void re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 10);
    re::DynamicString::deinit((a1 + 2));

    re::MaterialDefinitionFile::~MaterialDefinitionFile(v2);
  }
}

BOOL re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  result = re::DynamicString::operator==(v10 + 464 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 464 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 464 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 464 * v12) & 0x7FFFFFFF;
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

uint64_t re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v56, 0, 36);
          *&v56[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v56, v9, v8);
          v11 = *v56;
          *v56 = *a1;
          *a1 = v11;
          v12 = *&v56[16];
          v13 = *(a1 + 16);
          *&v56[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v56[24];
          *&v56[24] = *(a1 + 24);
          v14 = *&v56[32];
          *(a1 + 24) = v15;
          ++*&v56[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v19[57] % *(a1 + 24));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v56[16];
                v25 = *&v56[16] + v17;
                *(v20 + 56) = 0u;
                *(v20 + 40) = 0u;
                *(v20 + 64) = *(v25 + 64);
                v26 = *(v25 + 48);
                *(v20 + 40) = *(v25 + 40);
                *(v25 + 40) = 0;
                v27 = *(v25 + 56);
                *(v25 + 64) = 0;
                v29 = *(v20 + 48);
                v28 = *(v20 + 56);
                *(v20 + 48) = v26;
                *(v20 + 56) = v27;
                *(v25 + 48) = v29;
                *(v25 + 56) = v28;
                *(v20 + 72) = 0;
                *(v20 + 80) = 0;
                *(v20 + 88) = 0;
                *(v20 + 80) = *(v25 + 80);
                *(v25 + 80) = 0;
                v30 = *(v20 + 72);
                *(v20 + 72) = 0;
                *(v20 + 72) = *(v25 + 72);
                *(v25 + 72) = v30;
                v31 = *(v20 + 88);
                *(v20 + 88) = *(v25 + 88);
                *(v25 + 88) = v31;
                re::MaterialParameterData::MaterialParameterData(v20 + 96, v25 + 96);
                *(v20 + 336) = 0u;
                *(v20 + 352) = 0u;
                *(v20 + 368) = 0x7FFFFFFF00000000;
                *(v20 + 376) = 0;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v20 + 336), (v25 + 336));
                v32 = *(v25 + 384);
                *(v20 + 384) = v32;
                if (v32 == 1)
                {
                  *(v20 + 385) = *(v25 + 385);
                }

                v33 = *(v25 + 386);
                *(v20 + 386) = v33;
                if (v33 == 1)
                {
                  *(v20 + 387) = *(v13 + v17 + 387);
                }

                v34 = v13 + v17;
                v35 = *(v13 + v17 + 388);
                *(v20 + 388) = v35;
                if (v35 == 1)
                {
                  *(v20 + 389) = *(v34 + 389);
                }

                v36 = *(v34 + 390);
                *(v20 + 390) = v36;
                if (v36 == 1)
                {
                  *(v20 + 391) = *(v13 + v17 + 391);
                }

                v37 = v13 + v17;
                v38 = *(v13 + v17 + 392);
                *(v20 + 392) = v38;
                if (v38 == 1)
                {
                  *(v20 + 393) = *(v37 + 393);
                }

                v39 = *(v37 + 394);
                *(v20 + 394) = v39;
                if (v39 == 1)
                {
                  *(v20 + 395) = *(v13 + v17 + 395);
                }

                v40 = v13 + v17;
                v41 = *(v13 + v17 + 396);
                *(v20 + 396) = v41;
                if (v41 == 1)
                {
                  *(v20 + 397) = *(v40 + 397);
                }

                v42 = *(v40 + 398);
                *(v20 + 398) = v42;
                if (v42 == 1)
                {
                  *(v20 + 399) = *(v13 + v17 + 399);
                }

                v43 = v13 + v17;
                v44 = *(v13 + v17 + 400);
                *(v20 + 400) = v44;
                if (v44 == 1)
                {
                  *(v20 + 401) = *(v43 + 401);
                }

                v45 = *(v43 + 402);
                *(v20 + 402) = v45;
                if (v45 == 1)
                {
                  *(v20 + 403) = *(v13 + v17 + 403);
                }

                v46 = v13 + v17;
                *(v20 + 440) = 0;
                *(v20 + 416) = 0;
                *(v20 + 424) = 0;
                *(v20 + 408) = 0;
                *(v20 + 432) = 0;
                v47 = *(v13 + v17 + 416);
                *(v20 + 408) = *(v13 + v17 + 408);
                *(v20 + 416) = v47;
                *(v46 + 408) = 0;
                *(v46 + 416) = 0;
                v48 = *(v20 + 424);
                *(v20 + 424) = *(v13 + v17 + 424);
                *(v46 + 424) = v48;
                v49 = *(v20 + 440);
                *(v20 + 440) = *(v13 + v17 + 440);
                *(v46 + 440) = v49;
                *(v46 + 432) = *(v13 + v17 + 432) + 1;
                ++*(v20 + 432);
                *(v20 + 448) = *(v13 + v17 + 448);
              }

              ++v18;
              v17 += 464;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v56);
        }
      }

      else
      {
        if (v8)
        {
          v52 = 2 * v7;
        }

        else
        {
          v52 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v50 = *(a1 + 16);
    v51 = *(v50 + 464 * v5);
  }

  else
  {
    v50 = *(a1 + 16);
    v51 = *(v50 + 464 * v5);
    *(a1 + 36) = v51 & 0x7FFFFFFF;
  }

  v53 = v50 + 464 * v5;
  *v53 = v51 | 0x80000000;
  v54 = *(a1 + 8);
  *v53 = *(v54 + 4 * a2) | 0x80000000;
  *(v54 + 4 * a2) = v5;
  *(v53 + 456) = a3;
  ++*(a1 + 28);
  return v50 + 464 * v5;
}

void re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 464 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

double re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 464;
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

double re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v3 = (a1 + 72);
    re::DynamicString::deinit((a1 + 8));
    re::DynamicArray<re::FunctionLink>::deinit(a1 + 408);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 336));
    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 288));
    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 240));
    re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 192));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 144));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 96));
    re::AssetHandle::~AssetHandle(v3);

    return re::DynamicString::deinit((a1 + 40));
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialDefinitionFile *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v31[16];
                *(v20 + 40) = *(*&v31[16] + v17 + 40);
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 56 * v5;
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 48) = a3;
  ++*(a1 + 28);
  return v25 + 56 * v5;
}

uint64_t re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v32[16];
                v25 = *&v32[16] + v17;
                *(v20 + 40) = *(*&v32[16] + v17 + 40);
                *(v25 + 40) = 0;
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 56 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 56 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 56 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 48) = a3;
  ++*(a1 + 28);
  return v26 + 56 * v5;
}

double re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 56;
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

void re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::DynamicString::deinit((a1 + 8));
    v2 = *(a1 + 40);
    if (v2)
    {

      *(a1 + 40) = 0;
    }
  }
}

void *re::DynamicArray<re::PSOToolRenderDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PSOToolRenderDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE8uLL))
        {
          v2 = 232 * a2;
          result = (*(*result + 32))(result, 232 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 232, a2);
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
        v10 = 232 * v9;
        v11 = v7;
        do
        {
          re::PSOToolRenderDescriptor::PSOToolRenderDescriptor(v11, v8);
          re::DynamicArray<unsigned long>::deinit(v8 + 192);
          re::DynamicArray<unsigned long>::deinit(v8 + 152);
          re::DynamicString::deinit((v8 + 112));
          re::DynamicArray<unsigned long>::deinit(v8 + 72);
          v8 += 232;
          v11 += 232;
          v10 -= 232;
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

double re::PSOToolRenderDescriptor::PSOToolRenderDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  v5 = *(a2 + 68);
  *(a1 + 68) = v5;
  if (v5 == 1)
  {
    *(a1 + 69) = *(a2 + 69);
  }

  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v7 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v7;
  v8 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v8;
  ++*(a2 + 96);
  ++*(a1 + 96);
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 136) = *(a2 + 136);
  v10 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  v11 = *(a2 + 128);
  *(a2 + 136) = 0;
  v13 = *(a1 + 120);
  v12 = *(a1 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a2 + 120) = v13;
  *(a2 + 128) = v12;
  LOWORD(v11) = *(a2 + 144);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 144) = v11;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  v14 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v14;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v15 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v15;
  v16 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v16;
  ++*(a2 + 176);
  ++*(a1 + 176);
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  v17 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v17;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v18 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v18;
  v19 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v19;
  ++*(a2 + 216);
  ++*(a1 + 216);
  return result;
}

void *re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = v8 + 40 * v9;
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
          *(v11 + 16) = *(v8 + 32);
          re::DynamicString::deinit(v8);
          v8 += 40;
          v11 += 5;
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

void *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(_WORD *__dst, uint64_t a2, uint64_t a3)
{
  v4 = __dst;
  if (*(a2 + 8) > 0x15u)
  {
    __dst[11] = 3077;
    v5 = *(a2 + 8);
    *__dst = v5;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a3, (v5 + 1));
    v4[1] = v6;
    v4 = v6;
  }

  else
  {
    __dst[11] = 7173;
    *(__dst + 21) = 21 - *(a2 + 8);
  }

  result = memcpy(v4, *a2, *(a2 + 8));
  *(v4 + *(a2 + 8)) = 0;
  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = **(a1 + 16);
  v5 = v4[1];
  v6 = v5 + v3;
  if (v5 + v3 <= *v4)
  {
LABEL_3:
    result = v4 + v5 + 24;
    v4[1] = v6;
    return result;
  }

  if (*a1 <= v3)
  {
    v8 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = *a1;
  }

  if (rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk(a1, v8))
  {
    v4 = **(a1 + 16);
    v5 = v4[1];
    v6 = v5 + v3;
    goto LABEL_3;
  }

  return 0;
}

size_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    operator new();
  }

  result = a2 + 24;
  if (a2 != -24)
  {
    result = malloc_type_malloc(result, 0x61671F57uLL);
    if (result)
    {
      *result = a2;
      *(result + 8) = 0;
      v5 = *(a1 + 16);
      *(result + 16) = *v5;
      *v5 = result;
      return 1;
    }
  }

  return result;
}

__n128 rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(int *a1, __int128 *a2, __n128 *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  if (*a1 >= v8)
  {
    if (v8)
    {
      v9 = v8 + ((v8 + 1) >> 1);
    }

    else
    {
      v9 = 16;
    }

    if (v8 < v9)
    {
      *(a1 + 1) = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc(a4, *(a1 + 1), 48 * v8, 48 * v9);
      a1[1] = v9;
      v7 = *a1;
    }
  }

  v10 = *(a1 + 1) + 48 * v7;
  v11 = *a2;
  *(v10 + 16) = *(a2 + 2);
  *v10 = v11;
  *(a2 + 11) = 0;
  result = *a3;
  *(v10 + 40) = a3[1].n128_u64[0];
  *(v10 + 24) = result;
  a3[1].n128_u16[3] = 0;
  ++*a1;
  return result;
}

char *rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a2;
      v5 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
      v6 = (a4 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v6 <= v5)
      {
        return v4;
      }

      v7 = **(a1 + 16);
      v8 = v7[1];
      if (v7 + v8 - v5 + 24 == v4)
      {
        v9 = v8 + v6 - v5;
        if (v9 <= *v7)
        {
          v7[1] = v9;
          return v4;
        }
      }

      v10 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a1, v6);
      if (v10)
      {
        if (v5)
        {

          return memcpy(v10, v4, v5);
        }

        return v10;
      }
    }

    return 0;
  }

  return rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a1, a4);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,false>(uint64_t result, uint64_t a2, char *a3, uint64_t a4, char a5)
{
  v6 = a3;
  v7 = result;
  v231 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2;
  v214 = a2 - 104;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = v8 - v9;
    v11 = 0x4EC4EC4EC4EC4EC5 * (v10 >> 3);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v214, v6);
        case 4:
          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v7 + 208, v214, v6);
        case 5:
          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v7 + 208, v7 + 312, v214, v6);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      v8 = a2;
      if (v11 == 2)
      {
        if (*v6 == 1)
        {
          if (*(a2 - 96))
          {
            v81 = *(a2 - 88);
          }

          else
          {
            v81 = (a2 - 95);
          }

          if (*(v7 + 8))
          {
            v82 = *(v7 + 16);
          }

          else
          {
            v82 = (v7 + 9);
          }

          result = strcmp(v81, v82);
          if ((result & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (*(a2 - 70) >= *(v7 + 34))
        {
          return result;
        }

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v214);
      }
    }

    if (v10 <= 2495)
    {
      if (a5)
      {
        if (v7 == v8)
        {
          return result;
        }

        v83 = v7 + 104;
        if (v7 + 104 == a2)
        {
          return result;
        }

        v84 = 0;
        v85 = v7;
LABEL_187:
        v86 = v85;
        v85 = v83;
        if (*v6 == 1)
        {
          if (*(v86 + 112))
          {
            v87 = *(v86 + 120);
          }

          else
          {
            v87 = (v86 + 113);
          }

          if (*(v86 + 8))
          {
            v88 = *(v86 + 16);
          }

          else
          {
            v88 = (v86 + 9);
          }

          result = strcmp(v87, v88);
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_215;
          }
        }

        else if (*(v86 + 138) >= *(v86 + 34))
        {
          goto LABEL_215;
        }

        v224 = 0u;
        v225 = 0u;
        v89 = *(v86 + 104);
        *(v86 + 104) = 0;
        v90 = v225;
        v91 = *(v85 + 24);
        *&v225 = *(v85 + 16);
        *(v85 + 16) = v90;
        *(&v225 + 1) = v91;
        *(v85 + 24) = 0;
        v92 = *(v85 + 8);
        *&v224 = v89;
        *(&v224 + 1) = v92;
        *(v85 + 8) = 0;
        v93 = *(v86 + 136);
        v230 = *(v86 + 200);
        v94 = *(v86 + 184);
        v228 = *(v86 + 168);
        v229 = v94;
        v95 = *(v86 + 152);
        v226 = v93;
        v227 = v95;
        re::DynamicString::operator=(v85, v86);
        v96 = v86 + 32;
        v97 = *(v86 + 80);
        *(v85 + 64) = *(v86 + 64);
        *(v85 + 80) = v97;
        *(v85 + 96) = *(v86 + 96);
        v98 = *(v86 + 48);
        *(v85 + 32) = *(v86 + 32);
        *(v85 + 48) = v98;
        if (v86 != v7)
        {
          v99 = v84;
          do
          {
            v100 = v7 + v99;
            if (*v6 == 1)
            {
              if (BYTE8(v224))
              {
                v101 = v225;
              }

              else
              {
                v101 = &v224 + 9;
              }

              if (*(v100 - 96))
              {
                v102 = *(v100 - 88);
              }

              else
              {
                v102 = (v100 - 95);
              }

              if ((strcmp(v101, v102) & 0x80000000) == 0)
              {
                v86 = v7 + v99;
                v96 = v7 + v99 + 32;
LABEL_212:
                re::DynamicString::operator=(v86, &v224);
                *v96 = v226;
                v106 = v227;
                v107 = v228;
                v108 = v229;
                *(v96 + 64) = v230;
                *(v96 + 32) = v107;
                *(v96 + 48) = v108;
                *(v96 + 16) = v106;
                result = v224;
                if (v224 && (BYTE8(v224) & 1) != 0)
                {
                  result = (*(*v224 + 40))();
                }

LABEL_215:
                v83 = v85 + 104;
                v84 += 104;
                if (v85 + 104 == a2)
                {
                  return result;
                }

                goto LABEL_187;
              }
            }

            else if (WORD1(v226) >= *(v100 - 70))
            {
              goto LABEL_212;
            }

            re::DynamicString::operator=((v7 + v99), (v100 - 104));
            v103 = v7 + v99;
            v96 = v86 - 72;
            v104 = *(v7 + v99 - 56);
            v105 = *(v7 + v99 - 24);
            *(v103 + 64) = *(v7 + v99 - 40);
            *(v103 + 80) = v105;
            *(v103 + 96) = *(v7 + v99 - 8);
            *(v103 + 32) = *(v7 + v99 - 72);
            *(v103 + 48) = v104;
            v86 -= 104;
            v6 = a3;
            v99 -= 104;
          }

          while (v99);
          v96 = v7 + 32;
        }

        v86 = v7;
        goto LABEL_212;
      }

      if (v7 == v8)
      {
        return result;
      }

      v192 = v7 + 104;
      if (v7 + 104 == a2)
      {
        return result;
      }

      v193 = v7 + 136;
      while (2)
      {
        v194 = v7;
        v7 = v192;
        if (*v6 == 1)
        {
          if (*(v194 + 112))
          {
            v195 = *(v194 + 120);
          }

          else
          {
            v195 = (v194 + 113);
          }

          if (*(v194 + 8))
          {
            v196 = *(v194 + 16);
          }

          else
          {
            v196 = (v194 + 9);
          }

          result = strcmp(v195, v196);
          v197 = a2;
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_356;
          }
        }

        else
        {
          v197 = a2;
          if (*(v194 + 138) >= *(v194 + 34))
          {
            goto LABEL_356;
          }
        }

        v224 = 0u;
        v225 = 0u;
        *&v224 = *v7;
        *v7 = 0;
        v198 = v225;
        v199 = *(v7 + 24);
        *&v225 = *(v7 + 16);
        *(v7 + 16) = v198;
        *(&v225 + 1) = v199;
        *(v7 + 24) = 0;
        *(&v224 + 1) = *(v7 + 8);
        *(v7 + 8) = 0;
        v200 = *(v194 + 152);
        v201 = *(v194 + 184);
        v228 = *(v194 + 168);
        v229 = v201;
        v230 = *(v194 + 200);
        v226 = *(v194 + 136);
        v227 = v200;
        v202 = v193;
LABEL_341:
        re::DynamicString::operator=((v202 - 32), (v202 - 136));
        v203 = *(v202 - 104);
        *(v202 + 64) = *(v202 - 40);
        v204 = *(v202 - 56);
        *(v202 + 32) = *(v202 - 72);
        *(v202 + 48) = v204;
        v205 = *(v202 - 88);
        *v202 = v203;
        *(v202 + 16) = v205;
        if (*v6 == 1)
        {
          if (BYTE8(v224))
          {
            v206 = v225;
          }

          else
          {
            v206 = &v224 + 9;
          }

          if (*(v202 - 232))
          {
            v207 = *(v202 - 224);
          }

          else
          {
            v207 = (v202 - 231);
          }

          if ((strcmp(v206, v207) & 0x80000000) == 0)
          {
            goto LABEL_352;
          }
        }

        else if (WORD1(v226) >= *(v202 - 206))
        {
LABEL_352:
          re::DynamicString::operator=((v202 - 136), &v224);
          *(v202 - 104) = v226;
          v208 = v227;
          v209 = v228;
          v210 = v229;
          *(v202 - 40) = v230;
          *(v202 - 56) = v210;
          *(v202 - 72) = v209;
          *(v202 - 88) = v208;
          result = v224;
          if (v224 && (BYTE8(v224) & 1) != 0)
          {
            result = (*(*v224 + 40))();
          }

          v197 = a2;
LABEL_356:
          v192 = v7 + 104;
          v193 += 104;
          if (v7 + 104 == v197)
          {
            return result;
          }

          continue;
        }

        break;
      }

      v202 -= 104;
      goto LABEL_341;
    }

    if (!a4)
    {
      break;
    }

    v13 = v11 >> 1;
    v14 = v7 + 104 * (v11 >> 1);
    if (v10 < 0x3401)
    {
      v6 = a3;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v14, v7, v214, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v14, v214, a3);
      v15 = 104 * v13;
      v16 = v15 + v7 - 104;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7 + 104, v16, a2 - 208, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v7 + 208, v7 + 104 + v15, a2 - 312, a3);
      v17 = v7 + 104 + v15;
      v6 = a3;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(v16, v14, v17, a3);
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v14);
    }

    v18 = *v6;
    v212 = a4 - 1;
    if ((a5 & 1) == 0)
    {
      if (*v6)
      {
        if (*(v7 - 96))
        {
          v19 = *(v7 - 88);
        }

        else
        {
          v19 = (v7 - 95);
        }

        if (*(v7 + 8))
        {
          v20 = *(v7 + 16);
        }

        else
        {
          v20 = (v7 + 9);
        }

        if ((strcmp(v19, v20) & 0x80000000) == 0)
        {
LABEL_94:
          v224 = 0u;
          v225 = 0u;
          *&v224 = *v7;
          *v7 = 0;
          v51 = v225;
          v52 = *(v7 + 24);
          *&v225 = *(v7 + 16);
          *(v7 + 16) = v51;
          *(&v225 + 1) = v52;
          *(v7 + 24) = 0;
          *(&v224 + 1) = *(v7 + 8);
          *(v7 + 8) = 0;
          v226 = *(v7 + 32);
          v53 = *(v7 + 48);
          v54 = *(v7 + 64);
          v55 = *(v7 + 80);
          v230 = *(v7 + 96);
          v228 = v54;
          v229 = v55;
          v227 = v53;
          if (v18)
          {
            v56 = v225;
            v57 = BYTE8(v224) & 1;
            if (BYTE8(v224))
            {
              v58 = v225;
            }

            else
            {
              v58 = &v224 + 9;
            }

            if (*(v8 - 96))
            {
              v59 = *(v8 - 88);
            }

            else
            {
              v59 = (a2 - 95);
            }

            if (strcmp(v58, v59) < 0)
            {
              v60 = WORD1(v226);
              goto LABEL_105;
            }

LABEL_117:
            v9 = v7 + 104;
            if (v7 + 104 < v8)
            {
              v63 = WORD1(v226);
              if (BYTE8(v224))
              {
                v64 = v225;
              }

              else
              {
                v64 = &v224 + 9;
              }

              do
              {
                if (v18)
                {
                  if (*(v9 + 8))
                  {
                    v65 = *(v9 + 16);
                  }

                  else
                  {
                    v65 = (v9 + 9);
                  }

                  if (strcmp(v64, v65) < 0)
                  {
                    break;
                  }
                }

                else if (v63 < *(v9 + 34))
                {
                  break;
                }

                v9 += 104;
              }

              while (v9 < v8);
            }
          }

          else
          {
            v60 = WORD1(v226);
            if (WORD1(v226) >= *(v8 - 70))
            {
              goto LABEL_117;
            }

            v56 = v225;
            v57 = BYTE8(v224) & 1;
LABEL_105:
            if (v57)
            {
              v61 = v56;
            }

            else
            {
              v61 = &v224 + 9;
            }

            v9 = v7 + 104;
            if ((v18 & 1) == 0)
            {
              goto LABEL_114;
            }

            while (1)
            {
              v62 = (*(v9 + 8) & 1) != 0 ? *(v9 + 16) : (v9 + 9);
              if (strcmp(v61, v62) < 0)
              {
                break;
              }

              while (1)
              {
                v9 += 104;
                if (v18)
                {
                  break;
                }

LABEL_114:
                if (v60 < *(v9 + 34))
                {
                  goto LABEL_129;
                }
              }
            }
          }

LABEL_129:
          v66 = v8;
          if (v9 < v8)
          {
            v67 = WORD1(v226);
            if (BYTE8(v224))
            {
              v68 = v225;
            }

            else
            {
              v68 = &v224 + 9;
            }

            v66 = a2 - 104;
            if ((v18 & 1) == 0)
            {
              goto LABEL_139;
            }

            while (1)
            {
              v69 = (*(v66 + 8) & 1) != 0 ? *(v66 + 16) : (v66 + 9);
              if ((strcmp(v68, v69) & 0x80000000) == 0)
              {
                break;
              }

              while (1)
              {
                v66 -= 104;
                if (v18)
                {
                  break;
                }

LABEL_139:
                if (v67 >= *(v66 + 34))
                {
                  goto LABEL_142;
                }
              }
            }
          }

LABEL_142:
          if (v9 >= v66)
          {
            v6 = a3;
          }

          else
          {
            v6 = a3;
            do
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v9, v66);
              v70 = *a3;
              v71 = WORD1(v226);
              if (BYTE8(v224))
              {
                v72 = v225;
              }

              else
              {
                v72 = &v224 + 9;
              }

              do
              {
                while (1)
                {
                  v9 += 104;
                  if (v70)
                  {
                    break;
                  }

                  if (v71 < *(v9 + 34))
                  {
                    goto LABEL_156;
                  }
                }

                if (*(v9 + 8))
                {
                  v73 = *(v9 + 16);
                }

                else
                {
                  v73 = (v9 + 9);
                }
              }

              while ((strcmp(v72, v73) & 0x80000000) == 0);
              do
              {
LABEL_156:
                while (1)
                {
                  v66 -= 104;
                  if (v70)
                  {
                    break;
                  }

                  if (v71 >= *(v66 + 34))
                  {
                    goto LABEL_161;
                  }
                }

                if (*(v66 + 8))
                {
                  v74 = *(v66 + 16);
                }

                else
                {
                  v74 = (v66 + 9);
                }
              }

              while (strcmp(v72, v74) < 0);
LABEL_161:
              ;
            }

            while (v9 < v66);
          }

          if (v9 - 104 != v7)
          {
            re::DynamicString::operator=(v7, (v9 - 104));
            *(v7 + 32) = *(v9 - 72);
            v75 = *(v9 - 56);
            v76 = *(v9 - 40);
            v77 = *(v9 - 24);
            *(v7 + 96) = *(v9 - 8);
            *(v7 + 64) = v76;
            *(v7 + 80) = v77;
            *(v7 + 48) = v75;
          }

          re::DynamicString::operator=((v9 - 104), &v224);
          *(v9 - 72) = v226;
          v78 = v227;
          v79 = v228;
          v80 = v229;
          *(v9 - 8) = v230;
          *(v9 - 24) = v80;
          *(v9 - 40) = v79;
          *(v9 - 56) = v78;
          result = v224;
          a4 = v212;
          if (v224 && (BYTE8(v224) & 1) != 0)
          {
            result = (*(*v224 + 40))();
          }

LABEL_93:
          a5 = 0;
          continue;
        }

        v18 = 1;
      }

      else
      {
        if (*(v7 - 70) >= *(v7 + 34))
        {
          goto LABEL_94;
        }

        v18 = 0;
      }
    }

    v21 = 0;
    v224 = 0u;
    v225 = 0u;
    *&v224 = *v7;
    *v7 = 0;
    v22 = v225;
    v23 = *(v7 + 24);
    *&v225 = *(v7 + 16);
    *(v7 + 16) = v22;
    *(&v225 + 1) = v23;
    *(v7 + 24) = 0;
    *(&v224 + 1) = *(v7 + 8);
    *(v7 + 8) = 0;
    LODWORD(v22) = *(v7 + 96);
    v25 = *(v7 + 64);
    v24 = *(v7 + 80);
    v227 = *(v7 + 48);
    v228 = v25;
    v229 = v24;
    v230 = v22;
    v226 = *(v7 + 32);
    v26 = WORD1(v226);
    if (BYTE8(v224))
    {
      v27 = v225;
    }

    else
    {
      v27 = &v224 + 9;
    }

    while (1)
    {
      v28 = v7 + v21;
      if (v18)
      {
        break;
      }

      if (*(v28 + 138) >= v26)
      {
        goto LABEL_38;
      }

LABEL_37:
      v21 += 104;
    }

    v29 = *(v28 + 112);
    v30 = *(v28 + 120);
    v31 = (v28 + 113);
    if (v29)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (strcmp(v32, v27) < 0)
    {
      goto LABEL_37;
    }

LABEL_38:
    v33 = v7 + v21 + 104;
    v34 = a2 - 104;
    if (!v21)
    {
      v34 = v8;
      if (v33 >= v8)
      {
        goto LABEL_62;
      }

      v34 = a2 - 104;
      if ((v18 & 1) == 0)
      {
        goto LABEL_56;
      }

      while (1)
      {
        if (*(v34 + 8))
        {
          v36 = *(v34 + 16);
        }

        else
        {
          v36 = (v34 + 9);
        }

        if (strcmp(v36, v27) < 0 || v33 >= v34)
        {
          goto LABEL_62;
        }

        while (1)
        {
          v34 -= 104;
          if (v18)
          {
            break;
          }

LABEL_56:
          if (*(v34 + 34) < v26 || v33 >= v34)
          {
            goto LABEL_62;
          }
        }
      }
    }

    if (v18)
    {
      goto LABEL_40;
    }

    while (*(v34 + 34) >= v26)
    {
      while (1)
      {
        v34 -= 104;
        if ((v18 & 1) == 0)
        {
          break;
        }

LABEL_40:
        if (*(v34 + 8))
        {
          v35 = *(v34 + 16);
        }

        else
        {
          v35 = (v34 + 9);
        }

        if (strcmp(v35, v27) < 0)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_62:
    if (v33 >= v34)
    {
      v9 = v7 + v21 + 104;
    }

    else
    {
      v38 = v34;
      v9 = v7 + v21 + 104;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v9, v38);
        v39 = *v6;
        v40 = WORD1(v226);
        if (BYTE8(v224))
        {
          v41 = v225;
        }

        else
        {
          v41 = &v224 + 9;
        }

        do
        {
          while (1)
          {
            v9 += 104;
            if (v39)
            {
              break;
            }

            if (*(v9 + 34) >= v40)
            {
              goto LABEL_76;
            }
          }

          if (*(v9 + 8))
          {
            v42 = *(v9 + 16);
          }

          else
          {
            v42 = (v9 + 9);
          }
        }

        while (strcmp(v42, v41) < 0);
        do
        {
LABEL_76:
          while (1)
          {
            v38 -= 104;
            if (v39)
            {
              break;
            }

            if (*(v38 + 34) < v40)
            {
              goto LABEL_81;
            }
          }

          if (*(v38 + 8))
          {
            v43 = *(v38 + 16);
          }

          else
          {
            v43 = (v38 + 9);
          }
        }

        while ((strcmp(v43, v41) & 0x80000000) == 0);
LABEL_81:
        ;
      }

      while (v9 < v38);
    }

    if (v9 - 104 != v7)
    {
      re::DynamicString::operator=(v7, (v9 - 104));
      *(v7 + 32) = *(v9 - 72);
      v44 = *(v9 - 56);
      v45 = *(v9 - 40);
      v46 = *(v9 - 24);
      *(v7 + 96) = *(v9 - 8);
      *(v7 + 64) = v45;
      *(v7 + 80) = v46;
      *(v7 + 48) = v44;
    }

    re::DynamicString::operator=((v9 - 104), &v224);
    *(v9 - 72) = v226;
    v47 = v227;
    v48 = v228;
    v49 = v229;
    *(v9 - 8) = v230;
    *(v9 - 24) = v49;
    *(v9 - 40) = v48;
    *(v9 - 56) = v47;
    v8 = a2;
    a4 = v212;
    if (v224 && (BYTE8(v224) & 1) != 0)
    {
      (*(*v224 + 40))();
    }

    if (v33 < v34)
    {
LABEL_92:
      result = std::__introsort<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,false>(v7, v9 - 104, v6, v212, a5 & 1);
      goto LABEL_93;
    }

    v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *>(v7, v9 - 104, v6);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *>(v9, a2, v6);
    if (result)
    {
      a2 = v9 - 104;
      if (v50)
      {
        return result;
      }

      goto LABEL_2;
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  if (v7 == v8)
  {
    return result;
  }

  v109 = v12 >> 1;
  v110 = v12 >> 1;
  while (2)
  {
    v111 = v110;
    if (v109 < v110)
    {
      goto LABEL_274;
    }

    v112 = v7 + 104 * v110;
    v113 = (2 * v110) | 1;
    v114 = v7 + 104 * v113;
    v213 = v110;
    if (2 * v110 + 2 >= v11)
    {
      if (*v6)
      {
        goto LABEL_232;
      }

LABEL_242:
      v6 = a3;
      if (*(v114 + 34) < *(v112 + 34))
      {
        goto LABEL_274;
      }

LABEL_243:
      v224 = 0u;
      v225 = 0u;
      *&v224 = *v112;
      *v112 = 0;
      v119 = v225;
      *&v225 = *(v112 + 16);
      *(v112 + 16) = v119;
      *(&v225 + 1) = *(v112 + 24);
      *(v112 + 24) = 0;
      v120 = *(&v224 + 1);
      *(&v224 + 1) = *(v112 + 8);
      *(v112 + 8) = v120;
      v121 = *(v112 + 48);
      v122 = *(v112 + 64);
      v123 = *(v112 + 80);
      v230 = *(v112 + 96);
      v228 = v122;
      v229 = v123;
      v227 = v121;
      v226 = *(v112 + 32);
      re::DynamicString::operator=(v112, v114);
      v124 = v114 + 32;
      *(v112 + 32) = *(v114 + 32);
      v125 = *(v114 + 48);
      v126 = *(v114 + 64);
      v127 = *(v114 + 80);
      *(v112 + 96) = *(v114 + 96);
      *(v112 + 64) = v126;
      *(v112 + 80) = v127;
      *(v112 + 48) = v125;
      if (v109 < v113)
      {
LABEL_244:
        v128 = v114;
LABEL_270:
        re::DynamicString::operator=(v128, &v224);
        *v124 = v226;
        v137 = v227;
        v138 = v228;
        v139 = v229;
        *(v124 + 64) = v230;
        *(v124 + 32) = v138;
        *(v124 + 48) = v139;
        *(v124 + 16) = v137;
        if (v224 && (BYTE8(v224) & 1) != 0)
        {
          (*(*v224 + 40))();
        }

        v6 = a3;
        v111 = v213;
        goto LABEL_274;
      }

      while (1)
      {
        v129 = (2 * v113) | 1;
        v128 = v7 + 104 * v129;
        v113 = 2 * v113 + 2;
        if (v113 >= v11)
        {
          v113 = v129;
          if ((*a3 & 1) == 0)
          {
            goto LABEL_268;
          }
        }

        else
        {
          if ((*a3 & 1) == 0)
          {
            if (*(v128 + 34) < *(v128 + 138))
            {
              v128 += 104;
            }

            else
            {
              v113 = v129;
            }

LABEL_268:
            if (*(v128 + 34) < WORD1(v226))
            {
              goto LABEL_244;
            }

            goto LABEL_269;
          }

          if (*(v128 + 8))
          {
            v130 = *(v128 + 16);
          }

          else
          {
            v130 = (v128 + 9);
          }

          if (*(v128 + 112))
          {
            v131 = *(v128 + 120);
          }

          else
          {
            v131 = (v128 + 113);
          }

          if (strcmp(v130, v131) < 0)
          {
            v128 += 104;
          }

          else
          {
            v113 = v129;
          }
        }

        if (*(v128 + 8))
        {
          v132 = *(v128 + 16);
        }

        else
        {
          v132 = (v128 + 9);
        }

        if (BYTE8(v224))
        {
          v133 = v225;
        }

        else
        {
          v133 = &v224 + 9;
        }

        if (strcmp(v132, v133) < 0)
        {
          goto LABEL_244;
        }

LABEL_269:
        re::DynamicString::operator=(v114, v128);
        v124 = v128 + 32;
        *(v114 + 32) = *(v128 + 32);
        v134 = *(v128 + 48);
        v135 = *(v128 + 64);
        v136 = *(v128 + 80);
        *(v114 + 96) = *(v128 + 96);
        *(v114 + 64) = v135;
        *(v114 + 80) = v136;
        *(v114 + 48) = v134;
        v114 = v128;
        if (v109 < v113)
        {
          goto LABEL_270;
        }
      }
    }

    if ((*v6 & 1) == 0)
    {
      if (*(v114 + 34) < *(v114 + 138))
      {
        v113 = 2 * v110 + 2;
        v114 += 104;
      }

      goto LABEL_242;
    }

    if (*(v114 + 8))
    {
      v115 = *(v114 + 16);
    }

    else
    {
      v115 = (v114 + 9);
    }

    if (*(v114 + 112))
    {
      v116 = *(v114 + 120);
    }

    else
    {
      v116 = (v114 + 113);
    }

    if (strcmp(v115, v116) < 0)
    {
      v113 = 2 * v111 + 2;
      v114 += 104;
    }

LABEL_232:
    if (*(v114 + 8))
    {
      v117 = *(v114 + 16);
    }

    else
    {
      v117 = (v114 + 9);
    }

    if (*(v112 + 8))
    {
      v118 = *(v112 + 16);
    }

    else
    {
      v118 = (v112 + 9);
    }

    v6 = a3;
    if ((strcmp(v117, v118) & 0x80000000) == 0)
    {
      goto LABEL_243;
    }

LABEL_274:
    v110 = v111 - 1;
    if (v111)
    {
      continue;
    }

    break;
  }

  v140 = 0x4EC4EC4EC4EC4EC5 * (v10 >> 3);
  while (2)
  {
    v141 = 0;
    v217 = 0u;
    v218 = 0u;
    *&v217 = *v7;
    *v7 = 0;
    v142 = v218;
    v143 = *(v7 + 24);
    *&v218 = *(v7 + 16);
    *(v7 + 16) = v142;
    *(&v218 + 1) = v143;
    *(v7 + 24) = 0;
    *(&v217 + 1) = *(v7 + 8);
    *(v7 + 8) = 0;
    v144 = *(v7 + 48);
    v145 = *(v7 + 64);
    v146 = *(v7 + 80);
    v223 = *(v7 + 96);
    v221 = v145;
    v222 = v146;
    v220 = v144;
    v219 = *(v7 + 32);
    v147 = v7;
    while (2)
    {
      v148 = v147;
      v149 = v147 + 104 * v141;
      v147 = v149 + 104;
      v150 = 2 * v141;
      v141 = (2 * v141) | 1;
      v151 = v150 + 2;
      if (v150 + 2 < v140)
      {
        if (*a3 == 1)
        {
          if (*(v149 + 112))
          {
            v152 = *(v149 + 120);
          }

          else
          {
            v152 = (v149 + 113);
          }

          if (*(v149 + 216))
          {
            v153 = *(v149 + 224);
          }

          else
          {
            v153 = (v149 + 217);
          }

          if ((strcmp(v152, v153) & 0x80000000) == 0)
          {
            goto LABEL_289;
          }
        }

        else if (*(v149 + 138) >= *(v149 + 242))
        {
          goto LABEL_289;
        }

        v147 = v149 + 208;
        v141 = v151;
      }

LABEL_289:
      re::DynamicString::operator=(v148, v147);
      *(v148 + 32) = *(v147 + 32);
      v154 = *(v147 + 48);
      v155 = *(v147 + 64);
      v156 = *(v147 + 80);
      *(v148 + 96) = *(v147 + 96);
      *(v148 + 64) = v155;
      *(v148 + 80) = v156;
      *(v148 + 48) = v154;
      if (v141 <= ((v140 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    if (v147 == a2 - 104)
    {
      re::DynamicString::operator=(v147, &v217);
      *(v147 + 32) = v219;
      v169 = v220;
      v170 = v221;
      v171 = v222;
      *(v147 + 96) = v223;
      *(v147 + 64) = v170;
      *(v147 + 80) = v171;
      *(v147 + 48) = v169;
    }

    else
    {
      re::DynamicString::operator=(v147, (a2 - 104));
      *(v147 + 32) = *(a2 - 72);
      v157 = *(a2 - 56);
      v158 = *(a2 - 40);
      v159 = *(a2 - 24);
      *(v147 + 96) = *(a2 - 8);
      *(v147 + 64) = v158;
      *(v147 + 80) = v159;
      *(v147 + 48) = v157;
      re::DynamicString::operator=((a2 - 104), &v217);
      *(a2 - 72) = v219;
      v160 = v220;
      v161 = v221;
      v162 = v222;
      *(a2 - 8) = v223;
      *(a2 - 24) = v162;
      *(a2 - 40) = v161;
      *(a2 - 56) = v160;
      v163 = v147 - v7 + 104;
      if (v163 >= 105)
      {
        v164 = 0x4EC4EC4EC4EC4EC5 * (v163 >> 3) - 2;
        v165 = v164 >> 1;
        v166 = v7 + 104 * (v164 >> 1);
        if (*a3 == 1)
        {
          if (*(v166 + 8))
          {
            v167 = *(v166 + 16);
          }

          else
          {
            v167 = (v166 + 9);
          }

          if (*(v147 + 8))
          {
            v168 = *(v147 + 16);
          }

          else
          {
            v168 = (v147 + 9);
          }

          if (strcmp(v167, v168) < 0)
          {
LABEL_309:
            v224 = 0u;
            v225 = 0u;
            *&v224 = *v147;
            *v147 = 0;
            v173 = v225;
            v174 = *(v147 + 24);
            *&v225 = *(v147 + 16);
            *(v147 + 16) = v173;
            *(&v225 + 1) = v174;
            *(v147 + 24) = 0;
            *(&v224 + 1) = *(v147 + 8);
            *(v147 + 8) = 0;
            v175 = *(v147 + 48);
            v176 = *(v147 + 64);
            v177 = *(v147 + 80);
            v230 = *(v147 + 96);
            v228 = v176;
            v229 = v177;
            v227 = v175;
            v226 = *(v147 + 32);
            re::DynamicString::operator=(v147, (v7 + 104 * (v164 >> 1)));
            v178 = v166 + 32;
            *(v147 + 32) = *(v166 + 32);
            v179 = *(v166 + 48);
            v180 = *(v166 + 64);
            v181 = *(v166 + 80);
            *(v147 + 96) = *(v166 + 96);
            *(v147 + 64) = v180;
            *(v147 + 80) = v181;
            *(v147 + 48) = v179;
            if (v164 >= 2)
            {
              while (1)
              {
                v183 = v165 - 1;
                v165 = (v165 - 1) >> 1;
                v182 = v7 + 104 * v165;
                if (*a3 == 1)
                {
                  if (*(v182 + 8))
                  {
                    v184 = *(v182 + 16);
                  }

                  else
                  {
                    v184 = (v182 + 9);
                  }

                  if (BYTE8(v224))
                  {
                    v185 = v225;
                  }

                  else
                  {
                    v185 = &v224 + 9;
                  }

                  if ((strcmp(v184, v185) & 0x80000000) == 0)
                  {
                    break;
                  }
                }

                else if (*(v182 + 34) >= WORD1(v226))
                {
                  break;
                }

                re::DynamicString::operator=(v166, (v7 + 104 * v165));
                v178 = v182 + 32;
                *(v166 + 32) = *(v182 + 32);
                v186 = *(v182 + 48);
                v187 = *(v182 + 64);
                v188 = *(v182 + 80);
                *(v166 + 96) = *(v182 + 96);
                *(v166 + 64) = v187;
                *(v166 + 80) = v188;
                *(v166 + 48) = v186;
                v166 = v7 + 104 * v165;
                if (v183 <= 1)
                {
                  goto LABEL_322;
                }
              }
            }

            v182 = v166;
LABEL_322:
            re::DynamicString::operator=(v182, &v224);
            *v178 = v226;
            v189 = v227;
            v190 = v228;
            v191 = v229;
            *(v178 + 64) = v230;
            *(v178 + 32) = v190;
            *(v178 + 48) = v191;
            *(v178 + 16) = v189;
            if (v224 && (BYTE8(v224) & 1) != 0)
            {
              (*(*v224 + 40))();
            }
          }
        }

        else if (*(v166 + 34) < *(v147 + 34))
        {
          goto LABEL_309;
        }
      }
    }

    a2 -= 104;
    result = v217;
    if (v217 && (BYTE8(v217) & 1) != 0)
    {
      result = (*(*v217 + 40))();
    }

    if (v140-- > 2)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v14 = *(a1 + 24);
  v13 = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *(a1 + 80);
  v17 = *(a1 + 64);
  v18 = v3;
  v19 = *(a1 + 96);
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v4;
  v5 = re::DynamicString::operator=(a1, a2);
  *(v5 + 2) = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  *(v5 + 24) = *(a2 + 96);
  *(v5 + 4) = v7;
  *(v5 + 5) = v8;
  *(v5 + 3) = v6;
  re::DynamicString::operator=(a2, &v12);
  v9 = v18;
  *(a2 + 64) = v17;
  *(a2 + 80) = v9;
  *(a2 + 96) = v19;
  v10 = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v10;
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = result;
  if (*a4 == 1)
  {
    if (*(a2 + 8))
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = (a2 + 9);
    }

    if (*(result + 8))
    {
      v9 = *(result + 16);
    }

    else
    {
      v9 = (result + 9);
    }

    v10 = strcmp(v8, v9);
    if (*(a3 + 8))
    {
      v11 = *(a3 + 16);
    }

    else
    {
      v11 = (a3 + 9);
    }

    result = strcmp(v11, v8);
    if (v10 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
LABEL_13:
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, a2);
        if (*a4 == 1)
        {
          if (*(a3 + 8))
          {
            v12 = *(a3 + 16);
          }

          else
          {
            v12 = (a3 + 9);
          }

          if (*(a2 + 8))
          {
            v13 = *(a2 + 16);
          }

          else
          {
            v13 = (a2 + 9);
          }

          result = strcmp(v12, v13);
          if ((result & 0x80000000) == 0)
          {
            return result;
          }
        }

        else if (*(a3 + 34) >= *(a2 + 34))
        {
          return result;
        }

        v16 = a2;
        goto LABEL_39;
      }

LABEL_24:
      v16 = v7;
LABEL_39:
      v19 = a3;
LABEL_42:

      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v16, v19);
    }

    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    v14 = *(a2 + 34);
    v15 = *(a3 + 34);
    if (v14 < *(result + 34))
    {
      if (v15 >= v14)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

    if (v15 >= v14)
    {
      return result;
    }
  }

  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
  if (*a4 != 1)
  {
    if (*(a2 + 34) >= *(v7 + 34))
    {
      return result;
    }

    goto LABEL_41;
  }

  if (*(a2 + 8))
  {
    v17 = *(a2 + 16);
  }

  else
  {
    v17 = (a2 + 9);
  }

  if (*(v7 + 8))
  {
    v18 = *(v7 + 16);
  }

  else
  {
    v18 = (v7 + 9);
  }

  result = strcmp(v17, v18);
  if ((result & 0x80000000) != 0)
  {
LABEL_41:
    v16 = v7;
    v19 = a2;
    goto LABEL_42;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a2, a3, a5);
  if (*a5 != 1)
  {
    if (*(a4 + 34) >= *(a3 + 34))
    {
      return result;
    }

LABEL_11:
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a3, a4);
    if (*a5 == 1)
    {
      if (*(a3 + 8))
      {
        v13 = *(a3 + 16);
      }

      else
      {
        v13 = (a3 + 9);
      }

      if (*(a2 + 8))
      {
        v14 = *(a2 + 16);
      }

      else
      {
        v14 = (a2 + 9);
      }

      result = strcmp(v13, v14);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a3 + 34) >= *(a2 + 34))
    {
      return result;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
    if (*a5 == 1)
    {
      if (*(a2 + 8))
      {
        v15 = *(a2 + 16);
      }

      else
      {
        v15 = (a2 + 9);
      }

      if (*(a1 + 8))
      {
        v16 = *(a1 + 16);
      }

      else
      {
        v16 = (a1 + 9);
      }

      result = strcmp(v15, v16);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a2 + 34) >= *(a1 + 34))
    {
      return result;
    }

    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, a2);
  }

  if (*(a4 + 8))
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = (a4 + 9);
  }

  if (*(a3 + 8))
  {
    v12 = *(a3 + 16);
  }

  else
  {
    v12 = (a3 + 9);
  }

  result = strcmp(v11, v12);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a2, a3, a4, a6);
  if (*a6 != 1)
  {
    if (*(a5 + 34) >= *(a4 + 34))
    {
      return result;
    }

LABEL_11:
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a4, a5);
    if (*a6 == 1)
    {
      if (*(a4 + 8))
      {
        v15 = *(a4 + 16);
      }

      else
      {
        v15 = (a4 + 9);
      }

      if (*(a3 + 8))
      {
        v16 = *(a3 + 16);
      }

      else
      {
        v16 = (a3 + 9);
      }

      result = strcmp(v15, v16);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a4 + 34) >= *(a3 + 34))
    {
      return result;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a3, a4);
    if (*a6 == 1)
    {
      if (*(a3 + 8))
      {
        v17 = *(a3 + 16);
      }

      else
      {
        v17 = (a3 + 9);
      }

      if (*(a2 + 8))
      {
        v18 = *(a2 + 16);
      }

      else
      {
        v18 = (a2 + 9);
      }

      result = strcmp(v17, v18);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a3 + 34) >= *(a2 + 34))
    {
      return result;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
    if (*a6 == 1)
    {
      if (*(a2 + 8))
      {
        v19 = *(a2 + 16);
      }

      else
      {
        v19 = (a2 + 9);
      }

      if (*(a1 + 8))
      {
        v20 = *(a1 + 16);
      }

      else
      {
        v20 = (a1 + 9);
      }

      result = strcmp(v19, v20);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (*(a2 + 34) >= *(a1 + 34))
    {
      return result;
    }

    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, a2);
  }

  if (*(a5 + 8))
  {
    v13 = *(a5 + 16);
  }

  else
  {
    v13 = (a5 + 9);
  }

  if (*(a4 + 8))
  {
    v14 = *(a4 + 16);
  }

  else
  {
    v14 = (a4 + 9);
  }

  result = strcmp(v13, v14);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v47 = *MEMORY[0x1E69E9840];
  v6 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a1 + 104, a2 - 104, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a1 + 104, a1 + 208, a2 - 104, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a1 + 104, a1 + 208, a1 + 312, a2 - 104, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (*a3 == 1)
      {
        if (*(a2 - 96))
        {
          v7 = *(a2 - 88);
        }

        else
        {
          v7 = (a2 - 95);
        }

        if (*(a1 + 8))
        {
          v8 = *(a1 + 16);
        }

        else
        {
          v8 = (a1 + 9);
        }

        if ((strcmp(v7, v8) & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (*(a2 - 70) >= *(a1 + 34))
      {
        return 1;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, v4 - 104);
      return 1;
    }
  }

  v9 = a1 + 208;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, a1 + 104, a1 + 208, a3);
  v10 = a1 + 312;
  if (a1 + 312 == v4)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  v36 = v4;
  while (2)
  {
    if (*a3 == 1)
    {
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      if (v13)
      {
        v15 = *(v10 + 16);
      }

      else
      {
        v15 = (v10 + 9);
      }

      if (*(v9 + 8))
      {
        v16 = *(v9 + 16);
      }

      else
      {
        v16 = (v9 + 9);
      }

      if ((strcmp(v15, v16) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      v37 = v12;
    }

    else
    {
      if (*(v10 + 34) >= *(v9 + 34))
      {
        goto LABEL_49;
      }

      v37 = v12;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
    }

    v17 = *v10;
    v18 = *(v10 + 24);
    v40 = v14;
    v41 = v18;
    v38 = v17;
    v39 = v13;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *v10 = 0;
    *(v10 + 8) = 0;
    v19 = *(v10 + 80);
    v44 = *(v10 + 64);
    v45 = v19;
    v46 = *(v10 + 96);
    v20 = *(v10 + 48);
    v42 = *(v10 + 32);
    v43 = v20;
    re::DynamicString::operator=(v10, v9);
    v21 = v9 + 32;
    v22 = *(v9 + 80);
    *(v10 + 64) = *(v9 + 64);
    *(v10 + 80) = v22;
    *(v10 + 96) = *(v9 + 96);
    v23 = *(v9 + 48);
    *(v10 + 32) = *(v9 + 32);
    *(v10 + 48) = v23;
    v24 = v11;
    while (1)
    {
      v25 = a1 + v24;
      if (*a3 == 1)
      {
        if (v39)
        {
          v26 = v40;
        }

        else
        {
          v26 = &v39 + 1;
        }

        if (*(v25 + 112))
        {
          v27 = *(v25 + 120);
        }

        else
        {
          v27 = (v25 + 113);
        }

        if ((strcmp(v26, v27) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      if (WORD1(v42) >= *(v25 + 138))
      {
        break;
      }

LABEL_42:
      re::DynamicString::operator=((v25 + 208), (v25 + 104));
      v28 = a1 + v24;
      v21 = v9 - 72;
      v29 = *(a1 + v24 + 152);
      v30 = *(a1 + v24 + 184);
      *(v28 + 272) = *(a1 + v24 + 168);
      *(v28 + 288) = v30;
      *(v28 + 304) = *(a1 + v24 + 200);
      *(v28 + 240) = *(a1 + v24 + 136);
      *(v28 + 256) = v29;
      v24 -= 104;
      v9 -= 104;
      if (v24 == -208)
      {
        v21 = a1 + 32;
        v9 = a1;
        goto LABEL_45;
      }
    }

    v21 = a1 + v24 + 240;
    v9 = a1 + v24 + 208;
LABEL_45:
    re::DynamicString::operator=(v9, &v38);
    *v21 = v42;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    *(v21 + 64) = v46;
    *(v21 + 32) = v32;
    *(v21 + 48) = v33;
    *(v21 + 16) = v31;
    v12 = v37 + 1;
    v4 = v36;
    if (v37 != 7)
    {
      if (v38 && (v39 & 1) != 0)
      {
        (*(*v38 + 40))();
      }

LABEL_49:
      v9 = v10;
      v11 += 104;
      v10 += 104;
      if (v10 == v4)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  v34 = v10 + 104 == v36;
  if (v38 && (v39 & 1) != 0)
  {
    (*(*v38 + 40))();
  }

  return v34;
}

uint64_t re::DynamicArray<re::DynamicString>::DynamicArray(uint64_t a1, re::DynamicString *a2, unint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a3)
  {
    re::DynamicArray<re::DynamicString>::setCapacity(a1, a3);
    ++*(a1 + 24);
    re::DynamicArray<re::DynamicString>::copy(a1, 0, a2, a3);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicArray<re::DynamicString> const&>(uint64_t a1, uint64_t a2, const char **a3, uint64_t *a4)
{
  v7 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  re::DynamicArray<re::DynamicString>::DynamicArray(v7 + 40, a4);
  ++*(a1 + 40);
  return v7 + 40;
}

void *rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::MemoryPoolAllocator(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (!a3)
  {
    operator new();
  }

  a1[1] = a3;
  v4 = malloc_type_malloc(0x38uLL, 0x61671F57uLL);
  a1[2] = v4;
  v4[4] = 0;
  *v4 = v4 + 4;
  v4[1] = 0;
  v4[5] = 0;
  v4[6] = 0;
  *(v4 + 24) = 1;
  v4[2] = 1;
  return a1;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(void *a1)
{
  if (a1[4])
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Destroy(a1);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy((a1 + 5));
  return a1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 < 2)
    {
      rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear(a1);
      v4 = *(a1 + 16);
      v5 = *(v4 + 8);
      if (*(v4 + 24) == 1)
      {
        free(v4);
      }

      if (v5)
      {
        MEMORY[0x1E6906520](v5, 0xC400A2AC0F1);
      }
    }

    else
    {
      *(v2 + 16) = v3 - 1;
    }
  }

  return a1;
}