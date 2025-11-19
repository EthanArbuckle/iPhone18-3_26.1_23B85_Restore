uint64_t re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(void *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
}

uint64_t re::ecs2::MeshComponentHelper::techniqueMappingOverlayNameHashForMeshScene(re::ecs2::MeshComponentHelper *this, float a2)
{
  v2 = this;
  v4 = &re::introspect_BOOL(BOOL)::info;
  {
    v4 = &re::introspect_BOOL(BOOL)::info;
    if (this)
    {
      re::Defaults::BOOLValue("disableFadeTechniqueMappingOverride", v7, v8);
      useFadeTechniqueMappingOverride(void)::kUseFadeTechniqueMappingOverride = v8[0] & v8[1] ^ 1;
      v4 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  if (v4[2872] == 1 && (re::useDitherFade(this) & 1) == 0)
  {
    if (a2 < 1.0 || (v2 & 1) != 0)
    {
      goto LABEL_5;
    }
  }

  else if (v2)
  {
LABEL_5:
    if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
    }

    v5 = &re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
    return *v5;
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  v5 = &re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  return *v5;
}

uint64_t re::ecs2::getHighestLightspillNodeRequirements(re::ecs2 *this, const re::ecs2::MeshComponent *a2)
{
  if (this)
  {
    v2 = a2;
    v3 = 0;
    v4 = (a2 + 24 * this);
    do
    {
      v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v2);
      if (v5)
      {
        v6 = *(v5 + 1776);
        if (v6)
        {
          if (*(v5 + 1842) == 7)
          {
            v7 = v6[32];
            if (v7)
            {
              v8 = 200 * v7;
              v9 = (v6[33] + 48);
              do
              {
                if (*v9)
                {
                  re::sg::CachedCompilationMaterial::getMaterial(*v9, &v19);
                  v10 = [v19 hasConnectedLightSpillNodes];

                  if (v10)
                  {
                    re::sg::CachedCompilationMaterial::getMaterial(*v9, &v19);
                    hasConnectedLightSpillNodesWithRoughness = re::sg::Material::hasConnectedLightSpillNodesWithRoughness(&v19);

                    if (hasConnectedLightSpillNodesWithRoughness)
                    {
                      v3 = 2;
                      break;
                    }

                    v3 = 1;
                  }
                }

                v9 += 25;
                v8 -= 200;
              }

              while (v8);
            }

            v12 = v6[35];
            if (!v12)
            {
              goto LABEL_24;
            }

            v13 = v6[36];
            v14 = 200 * v12;
            v15 = (v13 + 48);
            do
            {
              if (*v15)
              {
                re::sg::CachedCompilationMaterial::getMaterial(*v15, &v19);
                v16 = [v19 hasConnectedLightSpillNodes];

                if (v16)
                {
                  re::sg::CachedCompilationMaterial::getMaterial(*v15, &v19);
                  v17 = re::sg::Material::hasConnectedLightSpillNodesWithRoughness(&v19);

                  if (v17)
                  {
                    v3 = 2;
                    break;
                  }

                  v3 = 1;
                }
              }

              v15 += 25;
              v14 -= 200;
            }

            while (v14);
          }
        }
      }

LABEL_24:
      v2 = (v2 + 24);
    }

    while (v2 != v4);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t re::ecs2::containsShaderGraphMaterialWithModelPositionOffset(re::ecs2 *this, const re::ecs2::MeshComponent *a2)
{
  v2 = *(this + 9);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 11);
  v4 = (v3 + 24 * v2);
  while (1)
  {
    v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v3);
    if (v5)
    {
      v6 = *(v5 + 1776);
      if (v6)
      {
        if (*(v5 + 1842) == 7)
        {
          v7 = *(v6 + 256);
          if (v7)
          {
            break;
          }
        }
      }
    }

LABEL_11:
    v3 = (v3 + 24);
    if (v3 == v4)
    {
      return 0;
    }
  }

  v8 = 200 * v7;
  v9 = (*(v6 + 264) + 48);
  while (1)
  {
    if (*v9)
    {
      re::sg::CachedCompilationMaterial::getMaterial(*v9, &v12);
      hasGeometryModifierWithModelPositionOffset = re::sg::Material::hasGeometryModifierWithModelPositionOffset(&v12);

      if (hasGeometryModifierWithModelPositionOffset)
      {
        return 1;
      }
    }

    v9 += 25;
    v8 -= 200;
    if (!v8)
    {
      goto LABEL_11;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 7168 * v6 + 16;
  }
}

void re::ecs2::MeshComponentHelper::generateSceneForPortalCrossing(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v173 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 48) & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = *a2;
  re::TransformService::worldMatrix(a3, *a2, 0, &v141);
  v8 = *(a2 + 16);
  v174.columns[0] = v141;
  v174.columns[1] = v142;
  v174.columns[2] = v143;
  v121 = vaddq_f32(v144, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v8.f32[0]), v142, *v8.f32, 1), v143, v8, 2));
  v9.i64[0] = 0;
  v9.i64[1] = *(a2 + 52);
  v10 = vaddq_f32(v8, v9);
  v117 = vaddq_f32(v144, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v10.f32[0]), v142, *v10.f32, 1), v143, v10, 2));
  v119 = vdupq_laneq_s32(v121, 3);
  v114 = vdupq_laneq_s32(v117, 3);
  v175 = __invert_f3(v174);
  v11 = vdupq_laneq_s32(v175.columns[1], 2);
  v12 = vzip1q_s32(vzip1q_s32(v175.columns[0], v175.columns[2]), v175.columns[1]);
  v175.columns[1] = vtrn2q_s32(v175.columns[0], v175.columns[1]);
  v175.columns[1].i32[2] = v175.columns[2].i32[1];
  v13 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(a2 + 32))), v175.columns[1], *(a2 + 32), 1), vzip1q_s32(vzip2q_s32(v175.columns[0], v175.columns[2]), v11), *(a2 + 32), 2);
  v175.columns[1] = vmulq_f32(v13, v13);
  v14 = v175.columns[1].f32[2] + vaddv_f32(*v175.columns[1].f32);
  if (fabsf(v14) < 1.0e-10)
  {
    v18 = xmmword_1E30476A0;
  }

  else
  {
    v15 = v14;
    v16 = vrsqrte_f32(LODWORD(v14));
    v17 = vmul_f32(v16, vrsqrts_f32(LODWORD(v15), vmul_f32(v16, v16)));
    v18 = vmulq_n_f32(v13, vmul_f32(v17, vrsqrts_f32(LODWORD(v15), vmul_f32(v17, v17))).f32[0]);
  }

  v19 = vdivq_f32(v121, v119);
  v20 = vdivq_f32(v117, v114);
  v21 = vnegq_f32(v18);
  v22 = *(a2 + 56);
  if ((v22->i8[0] & 1) == 0)
  {
    v22->i8[0] = 1;
  }

  v22[1] = v20;
  v22[2] = v21;
  v120 = v19;
  v122 = v18;
  v23 = vmulq_f32(v19, v18);
  v24 = v18;
  v24.f32[3] = -(v23.f32[2] + vaddv_f32(*v23.f32));
  v140 = v24;
  re::AABB::transform(*(a1 + 392), *(a1 + 408), v139);
  if ((re::AABB::intersects(v139, &v140) & 0xFFFFFFFD) == 0)
  {
    goto LABEL_20;
  }

  v26 = *(a1 + 16);
  v118 = v26 != 0;
  v113 = v7;
  if (v26)
  {
    v27 = *(a1 + 72);
    v28 = *a2;
    v115 = *(a1 + 392);
    v29 = *(a1 + 408);
    v30 = *(v27 + 192);
    if (v30)
    {
      v31 = re::ecs2::containsShaderGraphMaterialWithModelPositionOffset(*(v27 + 192), v25);
    }

    else
    {
      v31 = 0;
    }

    v32 = (*(*v26 + 24))(v26, v27, v28);
    v33 = re::ecs2::EntityComponentCollection::get((v27 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v34 = re::ecs2::EntityComponentCollection::get((v27 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v30 && v32 && v33 && (!v34 || !*(v34 + 48)))
    {
      v112 = v32[11].i32[2];
      goto LABEL_22;
    }

    v35 = re::ecs2::MeshComponentHelper::clippingDataForClippingParameterData(v32, v115, v29, v26, v31);
    if (!BYTE5(v35))
    {
      v112 = v35;
      v118 = HIDWORD(v35) & 1;
LABEL_22:
      v7 = v113;
      goto LABEL_23;
    }

LABEL_20:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 1;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    return;
  }

  v112 = 0;
LABEL_23:
  v36 = *(a1 + 40);
  if (v36)
  {
    (*(*v36 + 56))(__src);
    *&v135[5] = 1;
    v136 = 0;
    v37 = v135;
    if (LOBYTE(__src[0]))
    {
      v37 = (__src + 4);
    }

    v38 = v37[1];
    v137 = *v37;
    v138 = v38;
    v39 = *(a1 + 40);
    if (v39)
    {
      __src[0] = *(a1 + 56);
      v40 = *(a1 + 408);
      *&__src[1] = *(a1 + 72);
      *(&__src[1] + 1) = v40;
      *&__src[2] = *(a1 + 392);
      (*(*v39 + 64))(v135);
      v41 = BYTE2(v135[0]);
      if (!LOBYTE(v135[0]))
      {
        v41 = 0;
      }

      v116 = v135[0] & HIBYTE(v135[0]);
      v42 = v135[0] & BYTE1(v135[0]);
      v111 = v135[0] & LOBYTE(v135[1]);
    }

    else
    {
      v116 = 0;
      v41 = 0;
      v42 = 0;
      v111 = 0;
    }
  }

  else
  {
    v116 = 0;
    v41 = 0;
    v42 = 0;
    v111 = 0;
    *(&v138 + 4) = 1;
    WORD6(v138) = 0;
  }

  v43 = ((v41 << 8) >> 8) & 1;
  v44 = *(a1 + 620);
  v45 = re::ecs2::MeshComponentHelper::depthMitigationMaskForMeshScene(v7, *(a1 + 24));
  v46 = *(a1 + 32);
  if (v46)
  {
    LODWORD(v47) = (*(*v46 + 24))(v46, v7);
    v49 = v48;
    v50 = v47;
  }

  else
  {
    v49 = 0;
    v50 = 1.0;
  }

  v51 = v44 & v43;
  v52 = v50 * *(a1 + 416);
  re::ecs2::OcclusionStateMachine::getOcclusionEntityReactivateTransitionFactor(&v137);
  v54 = v52 * v53;
  v55 = *(a1 + 424);
  v56 = re::ecs2::MeshComponentHelper::renderPassGroupDataForMeshScene(v7, *(a1 + 608), *(a1 + 8), *(a1 + 610), *(a1 + 456), *(a1 + 464));
  if ((*(a1 + 608) & 1) == 0)
  {
    v58 = *(a1 + 448);
    v59 = *(a1 + 609);
    if (!v58)
    {
      v59 = v57;
      v58 = v56;
    }

    if (v55)
    {
      v60 = v55;
    }

    else
    {
      v60 = v49;
    }

    v61 = *(a2 + 8);
    *&__src[0] = *(a1 + 632);
    *(&__src[0] + 1) = v61;
    v62 = *(a1 + 408);
    *&__src[1] = *(a1 + 392);
    *(&__src[1] + 1) = v62;
    *&__src[2] = v60;
    *(&__src[2] + 1) = v58;
    LOBYTE(__src[3]) = v59 & 1;
    BYTE1(__src[3]) = *(a1 + 610);
    re::ecs2::MeshComponentHelper::addRenderPassGroupBoundsTable(__src);
  }

  v63 = re::ecs2::MeshComponentHelper::techniqueMappingOverlayNameHashForMeshScene(v118, v54);
  v64 = re::ecs2::MeshComponentHelper::environmentLightingWeightForMeshScene(*(a1 + 72), *a1);
  v65 = *(a1 + 88);
  v123[0] = *(a1 + 72);
  v123[1] = v65;
  v124 = *(a1 + 520);
  v125 = v45;
  v126 = v51;
  v127 = v43;
  v128 = v42;
  v129 = *(a1 + 112);
  v130 = *(a1 + 120);
  v131 = v64;
  v132 = 1;
  v133 = 3;
  v134 = *(a1 + 48);
  re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene(v123, v135);
  v66 = *(a1 + 184);
  v67 = *(a1 + 144);
  __src[0] = *(a1 + 128);
  __src[1] = v66;
  __src[2] = *(a1 + 200);
  __src[3] = v67;
  __src[4] = *(a1 + 160);
  v68 = *(a1 + 392);
  v69 = *(a1 + 400);
  v70 = v68[1];
  __src[5] = *v68;
  __src[6] = v70;
  *&__src[7] = *(a1 + 176);
  *(&__src[7] + 1) = v69;
  v71 = *(a1 + 408);
  v72 = v71[3];
  v74 = *v71;
  v73 = v71[1];
  __src[10] = v71[2];
  __src[11] = v72;
  __src[8] = v74;
  __src[9] = v73;
  v75 = *(a1 + 216);
  v76 = *(a1 + 304);
  __src[12] = *(a1 + 288);
  __src[13] = v75;
  v77 = *(a1 + 248);
  __src[14] = *(a1 + 232);
  __src[15] = v77;
  __src[16] = *(a1 + 264);
  LOBYTE(__src[17]) = *(a1 + 280);
  *(&__src[17] + 8) = v76;
  v78 = *(a1 + 336);
  *(&__src[18] + 8) = *(a1 + 320);
  *(&__src[19] + 8) = v78;
  *(&__src[20] + 8) = *(a1 + 352);
  *(&__src[21] + 1) = *(a1 + 368);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&v146, v135);
  v154 = v112;
  v155 = *(a1 + 488);
  if (v155 == 1)
  {
    v156 = *(a1 + 496);
  }

  v157[0] = *(a1 + 504);
  *&v157[8] = **(a1 + 512);
  *&v157[24] = v63;
  *&v158 = v54;
  DWORD1(v158) = *(a1 + 432);
  *(&v158 + 2) = v64;
  v159 = *(a1 + 376);
  *v160 = *(a1 + 476);
  *&v160[8] = *(*(a1 + 72) + 312);
  *&v160[16] = *(a2 + 64);
  v160[18] = 0;
  *&v160[20] = *(a1 + 440);
  *&v160[24] = *(a1 + 436);
  v160[28] = v45;
  v161 = 1;
  v162 = v120;
  v163 = v122;
  v164 = v113[39];
  v165 = *(a1 + 528);
  if (v165 == 1)
  {
    v79 = *(a1 + 560);
    v166 = *(a1 + 544);
    v167 = v79;
    v80 = *(a1 + 592);
    v168 = *(a1 + 576);
    v169 = v80;
  }

  LOBYTE(v170) = *(a1 + 623);
  *(&v170 + 1) = *(a1 + 612);
  DWORD2(v170) = *(a1 + 616);
  re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(&v137);
  HIDWORD(v170) = v81;
  re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(&v137);
  LODWORD(v171) = v82;
  OcclusionTransitionFactor = re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(&v137);
  DWORD1(v171) = v84;
  _S0 = DWORD2(v138);
  __asm { FCVT            H0, S0 }

  WORD4(v171) = _S0;
  BYTE10(v171) = v42;
  BYTE11(v171) = *(a1 + 622);
  WORD6(v171) = *(a1 + 608);
  BYTE14(v171) = BYTE12(v138);
  HIBYTE(v171) = v116;
  LOBYTE(v172) = v111;
  HIBYTE(v172) = *(a1 + 624);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 40) = 0;
  *(a4 + 32) = 0;
  re::DynamicOverflowArray<re::MeshScene,2ul>::setCapacity(a4, 1uLL);
  v90 = *(a4 + 16);
  *(a4 + 16) = v90 + 2;
  if (v90)
  {
    v91 = a4 + 32;
  }

  else
  {
    v91 = *(a4 + 40);
  }

  v92 = v91 + 736 * *(a4 + 8);
  memcpy(v92, __src, 0x160uLL);
  *(v92 + 352) = 0u;
  *(v92 + 368) = 0u;
  *(v92 + 384) = 0u;
  *(v92 + 400) = 0u;
  *(v92 + 408) = v153;
  v153 = 0;
  v93 = *(v92 + 352);
  *(v92 + 352) = v146;
  v146 = v93;
  v94 = *(v92 + 360);
  *(v92 + 360) = v147;
  v147 = v94;
  *(v92 + 368) = v148;
  v148 = 0;
  v95 = *(v92 + 392);
  *(v92 + 392) = v151;
  v151 = v95;
  v96 = *(v92 + 400);
  *(v92 + 400) = v152;
  v152 = v96;
  v97 = *(v92 + 376);
  *(v92 + 376) = v149;
  v149 = v97;
  v98 = *(v92 + 384);
  *(v92 + 384) = v150;
  v150 = v98;
  *(v92 + 416) = v154;
  LODWORD(v98) = v155;
  *(v92 + 424) = v155;
  if (v98 == 1)
  {
    *(v92 + 432) = v156;
  }

  v99 = *&v157[16];
  *(v92 + 440) = *v157;
  *(v92 + 456) = v99;
  v100 = v158;
  v101 = v159;
  v102 = *v160;
  *(v92 + 517) = *&v160[13];
  *(v92 + 488) = v101;
  *(v92 + 504) = v102;
  *(v92 + 472) = v100;
  v103 = v161;
  *(v92 + 544) = v161;
  if (v103 == 1)
  {
    v104 = v163;
    *(v92 + 560) = v162;
    *(v92 + 576) = v104;
  }

  *(v92 + 592) = v164;
  v105 = v165;
  *(v92 + 608) = v165;
  if (v105 == 1)
  {
    v106 = v166;
    v107 = v167;
    v108 = v169;
    *(v92 + 656) = v168;
    *(v92 + 672) = v108;
    *(v92 + 624) = v106;
    *(v92 + 640) = v107;
  }

  v109 = v170;
  v110 = v171;
  *(v92 + 720) = v172;
  *(v92 + 688) = v109;
  *(v92 + 704) = v110;
  ++*(a4 + 8);
  *(a4 + 16) += 2;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v146);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v135);
}

id re::ecs2::fetchBuffer(uint64_t a1, uint64_t a2, re::DirectBuffer *this, unint64_t a4, uint64_t a5, uint64_t a6, _anonymous_namespace_ *a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  v110 = *MEMORY[0x1E69E9840];
  if (!*this || !*(a5 + 8))
  {
    return 0;
  }

  v17 = v96;
  re::DirectBuffer::getResourceId(this, &src);
  re::DynamicArray<re::DirectResourceId>::add(a9, &src);
  if (!*(a5 + 8))
  {
LABEL_92:
    *v98 = 0;
    *(v17 + 160) = 0u;
    *(v17 + 176) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 112) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v96 = 136315906;
    *(v17 + 4) = "operator[]";
    *&v96[12] = 1024;
    *(v17 + 14) = 476;
    *&v96[18] = 2048;
    *(v17 + 20) = 0;
    *&v96[28] = 2048;
    *(v17 + 30) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_93:
    *v98 = 0;
    v22 = v96;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    src = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v96 = 136315906;
    *&v96[4] = "operator[]";
    *&v96[12] = 1024;
    *&v96[14] = 858;
    *&v96[18] = 2048;
    *&v96[20] = a4;
    *&v96[28] = 2048;
    *&v96[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_94;
  }

  v18 = *(a5 + 16);
  if (v18[17])
  {
    v19 = 1;
  }

  else
  {
    v19 = v18[22] != 0;
  }

  v91 = 0;
  v92 = &v91;
  v93 = 0x2000000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2000000000;
  v90 = 0;
  v86 = 0;
  if (!v19)
  {
    v30 = re::RenderFrameBox::get((*(a1 + 112) + 328), *(*(a1 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(a1 + 144) + 16) << 60));
    v31 = *(re::RenderFrame::currentCommandBuffer(v30) + 2);
    v85[0] = v31;
    re::DirectBuffer::readUsing(v85, &src);
    NS::SharedPtr<MTL::Texture>::operator=(&v86, &src);
    if (src)
    {

      *&src = 0;
    }

    v32 = [v86 length];
    v88[3] = v32;
    v33 = [v86 contents];
    v92[3] = v33;
    goto LABEL_79;
  }

  v75 = a6;
  v76 = a7;
  v85[1] = MEMORY[0x1E69E9820];
  v85[2] = 0x40000000;
  v85[3] = ___ZN2re4ecs211fetchBufferERKNS_13RenderManagerEPKNS0_5SceneERKNS_12DirectBufferERKNS0_24DirectParameterResourcesERKNS_10FixedArrayINS_14LinkedFunctionEEERNS_11BucketArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEERNS_12DynamicArrayINS_13TextureHandleEEERNSQ_ISN_EERNSQ_INS_16DirectResourceIdEEERNS_7HashSetINS_29UnresolvedArgumentBufferEntryENS_4HashIS10_EENS_7EqualToIS10_EELb1ELb0EEERb_block_invoke;
  v85[4] = &unk_1E871C7A0;
  v85[5] = &v91;
  v85[6] = &v87;
  DRBufferRead();
  *&src = [*(a1 + 208) newBufferWithBytesNoCopy:v92[3] length:v88[3] options:0 deallocator:&__block_literal_global_23];
  NS::SharedPtr<MTL::Texture>::operator=(&v86, &src);
  v21 = src;
  if (src)
  {
  }

  v22 = *(a4 + 40);
  v81 = *(a4 + 80);
  *&v96[32] = 0u;
  v97 = 0u;
  v23 = v88[3];
  *v96 = v92[3];
  *&v96[8] = v23;
  *&v96[24] = v22;
  if (v22)
  {
    if (v22 >> 59)
    {
LABEL_94:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, v22);
      _os_crash();
      __break(1u);
      goto LABEL_95;
    }

    *&v96[32] = v24;
    if (!v24)
    {
LABEL_95:
      re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_96;
    }

    v27 = v24;
    v28 = v24;
    v29 = v22 - 1;
    if (v22 != 1)
    {
      v28 = v24;
      do
      {
        *v28 = 0;
        *(v28 + 1) = 0;
        v28 = (v28 + 32);
        --v29;
      }

      while (v29);
    }

    *v28 = 0;
    *(v28 + 1) = 0;
  }

  else
  {
    v27 = 0;
  }

  v35 = v81;
  *&v97 = v81;
  v77 = a8;
  v78 = v27;
  if (v81)
  {
    if (v81 >> 60)
    {
LABEL_96:
      re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v35);
      _os_crash();
      __break(1u);
LABEL_97:
      re::internal::assertLog(4, v39, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v36 = a1;
    v37 = 16 * v81;
    *(&v97 + 1) = v38;
    if (!v38)
    {
      goto LABEL_97;
    }

    v40 = v38;
    if (v81 == 1)
    {
      v35 = 1;
    }

    else
    {
      bzero(v38, v37 - 16);
      v35 = v81;
      v40 = (v40 + v37 - 16);
    }

    a1 = v36;
    *v40 = 0;
    v40[1] = 0;
    v27 = v78;
  }

  if (v22)
  {
    v41 = 0;
    v80 = a1;
    while (1)
    {
      v42 = *(a4 + 40);
      if (v42 <= v41)
      {
        break;
      }

      if (v22 <= v41)
      {
        goto LABEL_89;
      }

      v43 = v18[17];
      if (v43)
      {
        v44 = (*(a4 + 56) + 32 * v41);
        v45 = v27 + 32 * v41;
        v46 = *(v44 + 3);
        v47 = v18[19];
        while (*(v47 + 8) != v46)
        {
          v47 += 16;
          if (!--v43)
          {
            goto LABEL_54;
          }
        }

        v48 = re::AssetHandle::loadedAsset<re::TextureAsset>(v44);
        v49 = *v47;
        if (v48 && (v50 = v48, *(v48 + 348) == v49))
        {
          if (a2 && (v51 = *(a2 + 376), (v51 & 0xFFFFFF00000000) != 0))
          {
            v52 = HIDWORD(v51);
            v53 = *(a2 + 56);
            if (v53)
            {
              v54 = *((*(*v53 + 304))(v53, *(a2 + 376)) + 8) == 2;
            }

            else
            {
              v54 = 0;
            }
          }

          else
          {
            LODWORD(v52) = 0;
            v54 = 0;
            LODWORD(v51) = -1;
          }

          v56 = v51 | (v52 << 32);
          v50[8] = v56;
          v57 = v50[7];
          if (v57 && !re::DrawableQueue::shouldPerformUpdate(v50[7], v56, v54))
          {
            re::DrawableQueue::setActiveRealityRendererScene(v57, v56);
          }

          re::TextureHandle::TextureHandle(v83, (v50 + 1));
          v58 = *v47;
          re::TextureHandle::operator=(v45, v83);
          *(v45 + 28) = 0;
          *(v45 + 24) = v58;
          *(v45 + 16) = v46;
          re::TextureHandle::invalidate(v83);
          re::DynamicArray<re::TextureHandle>::add(v76, (v50 + 1));
          a8 = v77;
          v27 = v78;
          a1 = v80;
          v35 = v81;
        }

        else
        {
          a1 = v80;
          re::TextureManager::stockTextureForType(*(v80 + 56), v49, &src);
          v84 = src;
          v55 = *v47;
          NS::SharedPtr<MTL::Buffer>::operator=(v27 + 4 * v41, &v84);
          *(v45 + 28) = 1;
          *(v45 + 24) = v55;
          *(v45 + 16) = v46;
          if (v84)
          {

            v84 = 0;
          }

          *a11 = 1;
          if (src)
          {
          }

          v35 = v81;
        }
      }

LABEL_54:
      if (++v41 == v22)
      {
        goto LABEL_57;
      }
    }

    v95 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    src = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    v100 = 797;
    v101 = 2048;
    v102 = v41;
    v103 = 2048;
    v104 = v42;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_89:
    v95 = 0;
    v17 = v96;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    src = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    v100 = 468;
    v101 = 2048;
    v102 = v41;
    v103 = 2048;
    v104 = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_90;
  }

LABEL_57:
  if (v35)
  {
    v22 = 0;
    while (1)
    {
      v17 = *(a4 + 80);
      if (v17 <= v22)
      {
        break;
      }

      v17 = v97;
      if (v97 <= v22)
      {
        goto LABEL_91;
      }

      v59 = v18[22];
      if (v59)
      {
        v60 = *(a4 + 96) + 16 * v22;
        v61 = *(&v97 + 1) + 16 * v22;
        v62 = v18[24];
        while (1)
        {
          v63 = *v62++;
          if (v63 == *(v60 + 8))
          {
            break;
          }

          if (!--v59)
          {
            goto LABEL_69;
          }
        }

        re::DirectBuffer::getResourceId((*(a4 + 96) + 16 * v22), &src);
        re::DynamicArray<re::DirectResourceId>::add(a9, &src);
        objc_storeStrong((v61 + 8), *v60);
        *v61 = *(v60 + 8);
        v64 = re::RenderFrameBox::get((*(a1 + 112) + 328), *(*(a1 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(a1 + 144) + 16) << 60));
        v65 = *(re::RenderFrame::currentCommandBuffer(v64) + 2);
        v82 = v65;
        re::DirectBuffer::readUsing(&v82, &src);
        v66 = *(a8 + 16);
        if (v66 >= *(a8 + 8))
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(a8, v66 + 1);
          v66 = *(a8 + 16);
        }

        *(*(a8 + 32) + 8 * v66) = src;
        *(a8 + 16) = v66 + 1;
        ++*(a8 + 24);

        v35 = v81;
      }

LABEL_69:
      if (++v22 == v35)
      {
        goto LABEL_70;
      }
    }

LABEL_90:
    v95 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    src = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    v100 = 797;
    v101 = 2048;
    v102 = v22;
    v103 = 2048;
    v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_91:
    v95 = 0;
    a4 = v96;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    src = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    v100 = 468;
    v101 = 2048;
    v102 = v22;
    v103 = 2048;
    v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_92;
  }

LABEL_70:
  v67 = *(a10 + 24);
  if (!v67)
  {
    LODWORD(v68) = 0;
    a6 = v75;
    goto LABEL_77;
  }

  v68 = *v96 % v67;
  v69 = *(*(a10 + 8) + 4 * (*v96 % v67));
  a6 = v75;
  if (v69 == 0x7FFFFFFF)
  {
LABEL_77:
    re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::addAsMove(a10, v68, *v96, v96);
    ++*(a10 + 40);
    goto LABEL_78;
  }

  v70 = *(a10 + 16);
  while (*(v70 + 80 * v69 + 16) != *v96)
  {
    LODWORD(v69) = *(v70 + 80 * v69 + 8) & 0x7FFFFFFF;
    if (v69 == 0x7FFFFFFF)
    {
      goto LABEL_77;
    }
  }

LABEL_78:
  re::FixedArray<re::ArgumentBufferBufferRecord>::deinit(&v96[40]);
  re::FixedArray<re::ArgumentBufferTextureRecord>::deinit(&v96[16]);
LABEL_79:
  v71 = *(a6 + 40);
  v17 = *(a6 + 8);
  if (v71 + 1 > 8 * v17)
  {
    re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(a6, (v71 + 8) >> 3);
    v17 = *(a6 + 8);
  }

  a4 = v71 >> 3;
  if (v17 <= v71 >> 3)
  {
    goto LABEL_93;
  }

  v72 = *(a6 + 32);
  if (*(a6 + 16))
  {
    v72 = a6 + 24;
  }

  v73 = *(v72 + 8 * a4);
  ++*(a6 + 40);
  ++*(a6 + 48);
  *(v73 + 8 * (v71 & 7)) = v86;
  v20 = v86;
  if (v86)
  {
  }

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  return v20;
}

void re::DynamicArray<re::DirectResourceId>::add(uint64_t a1, unsigned __int8 *src)
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

        re::DynamicArray<re::DirectResourceId>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::DirectResourceId>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  uuid_copy((*(a1 + 32) + 16 * v5), src);
  ++*(a1 + 16);
  ++*(a1 + 24);
}

uint64_t ___ZN2re4ecs211fetchBufferERKNS_13RenderManagerEPKNS0_5SceneERKNS_12DirectBufferERKNS0_24DirectParameterResourcesERKNS_10FixedArrayINS_14LinkedFunctionEEERNS_11BucketArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEERNS_12DynamicArrayINS_13TextureHandleEEERNSQ_ISN_EERNSQ_INS_16DirectResourceIdEEERNS_7HashSetINS_29UnresolvedArgumentBufferEntryENS_4HashIS10_EENS_7EqualToIS10_EELb1ELb0EEERb_block_invoke(re *a1, const void *a2, size_t a3)
{
  v6 = re::globalAllocators(a1);
  if (!a3)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = a3 + 16;
  if (a3 < 0xFFFFFFFFFFFFFFF0)
  {
    v8 = (*(*v6[2] + 32))(v6[2], v7, 0);
    v9 = v8 + 2;
    *v8 = a3;
    v8[1] = v8;
    bzero(v8 + 2, a3);
LABEL_5:
    *(*(*(a1 + 4) + 8) + 24) = v9;
    result = memcpy(*(*(*(a1 + 4) + 8) + 24), a2, a3);
    *(*(*(a1 + 5) + 8) + 24) = a3;
    return result;
  }

  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 1, a3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *___ZN2re4ecs211fetchBufferERKNS_13RenderManagerEPKNS0_5SceneERKNS_12DirectBufferERKNS0_24DirectParameterResourcesERKNS_10FixedArrayINS_14LinkedFunctionEEERNS_11BucketArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEERNS_12DynamicArrayINS_13TextureHandleEEERNSQ_ISN_EERNSQ_INS_16DirectResourceIdEEERNS_7HashSetINS_29UnresolvedArgumentBufferEntryENS_4HashIS10_EENS_7EqualToIS10_EELb1ELb0EEERb_block_invoke_2(re *a1, uint64_t a2)
{
  result = re::globalAllocators(a1);
  if (a2)
  {
    v4 = *(*result[2] + 40);

    return v4();
  }

  return result;
}

re::TextureHandle *re::DynamicArray<re::TextureHandle>::add(_anonymous_namespace_ *this, re::TextureHandle *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TextureHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::TextureHandle::TextureHandle((*(this + 4) + 16 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::ecs2::MeshComponent::updateMaterialData(re::ecs2::MeshComponent *this, const re::ecs2::MeshSystem *a2, const re::MeshAsset *a3, re::ecs2::Entity *a4, const re::DirectResourceAssetTracker *a5)
{
  v230 = *MEMORY[0x1E69E9840];
  v167 = *(a2 + 29);
  v10 = *(v167 + 4);
  v11 = *(this + 31);
  if (v11)
  {
    v165 = *(v11 + 388);
  }

  else
  {
    v165 = 0;
  }

  v12 = *(v167 + 18);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  inited = objc_initWeak(&location, v13);
  v15 = re::globalAllocators(inited);
  v16 = (*(*v15[2] + 32))(v15[2], 640, 8);
  bzero(v16, 0x280uLL);
  *(v16 + 212) = 0x7FFFFFFF;
  *(v16 + 392) = 0u;
  *(v16 + 224) = 0u;
  *(v16 + 240) = 0u;
  *(v16 + 256) = 0u;
  *(v16 + 272) = 0u;
  *(v16 + 288) = 0u;
  *(v16 + 304) = 0u;
  *(v16 + 320) = 0u;
  *(v16 + 336) = 0u;
  *(v16 + 352) = 0u;
  *(v16 + 368) = 0;
  *(v16 + 384) = 0;
  *(v16 + 388) = 0;
  *(v16 + 408) = 1;
  *(v16 + 416) = 0;
  *(v16 + 424) = 0u;
  *(v16 + 440) = 0;
  *(v16 + 480) = 0;
  *(v16 + 448) = 0u;
  *(v16 + 464) = 0u;
  *(v16 + 488) = 1;
  *(v16 + 512) = 0;
  *(v16 + 520) = 0;
  *(v16 + 496) = 0u;
  *(v16 + 528) = 0u;
  *(v16 + 544) = 1;
  *(v16 + 568) = 0;
  *(v16 + 576) = 0;
  *(v16 + 552) = 0u;
  *(v16 + 584) = 0u;
  *(v16 + 600) = 1;
  *(v16 + 624) = 0;
  *(v16 + 632) = 0;
  *(v16 + 608) = 0u;
  *&v227 = 0;
  v225 = 0u;
  v226 = 0u;
  *(&v226 + 1) = re::globalAllocators(v17)[2];
  *&v227 = 0;
  re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset(this + 30, &location, v16, &v225);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v225);
  objc_destroyWeak(&location);
  location = 0;
  v18 = *(a2 + 111);
  v166 = a4;
  if (v18 && (*(a4 + 304) & 0x40) != 0)
  {
    v31 = (*(*v18 + 80))(v18);
    re::ecs2::MeshComponentHelper::overrideMaterials(a3, v10, v31, (*(this + 31) + 224), (*(this + 31) + 272), (*(this + 31) + 472));
    goto LABEL_125;
  }

  v19 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v19)
  {
    goto LABEL_21;
  }

  if (*(v19 + 42) == 2)
  {
    v20 = *(this + 9);
    if (v20)
    {
      v21 = *(a2 + 38);
      v22 = (*(this + 11) + 8);
      v23 = 24 * v20 - 24;
      do
      {
        v25 = *v22;
        v22 += 3;
        v24 = v25;
        v26 = v25 != v21 || v23 == 0;
        v23 -= 24;
      }

      while (!v26);
      if (v24 != v21)
      {
        goto LABEL_21;
      }
    }

    re::DynamicArray<re::AssetHandle>::clear((this + 56));
  }

  if (*(this + 9))
  {
LABEL_21:
    v27 = 296;
    goto LABEL_22;
  }

  v27 = 320;
LABEL_22:
  re::AssetHandle::AssetHandle(v211, (a2 + v27));
  re::ecs2::MeshComponentHelper::repairedMaterialHandles(a3, v10, v211, *(this + 11), *(this + 9), &v214);
  if (!*(this + 15))
  {
    v32 = *(this + 31);
    if (*(v32 + 304))
    {
      re::FixedArray<CoreIKTransform>::deinit((v32 + 296));
    }

    goto LABEL_67;
  }

  v5 = *&v217[2];
  v30 = *(this + 31);
  if (v30[38] == *&v217[2])
  {
    if (!*&v217[2])
    {
      goto LABEL_67;
    }

    goto LABEL_35;
  }

  v30[38] = v5;
  if (v5)
  {
    if (v5 >> 60)
    {
LABEL_317:
      re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v5);
      _os_crash();
      __break(1u);
LABEL_318:
      re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v30[39] = v33;
    if (!v33)
    {
      goto LABEL_318;
    }

    v34 = v33;
    if (v5 != 1)
    {
      bzero(v33, 16 * v5 - 16);
      v34 += 2 * v5 - 2;
    }

    *v34 = 0;
    v34[1] = 0;
LABEL_35:
    v16 = 0;
    v35 = 1;
    while (*(this + 15) > v16 && !re::ecs2::EntityHandle::isNull((*(this + 17) + 24 * v16)))
    {
      a4 = *(this + 15);
      if (a4 <= v16)
      {
        goto LABEL_299;
      }

      v36 = (*(**(a2 + 120) + 56))(*(a2 + 120), *(*(this + 17) + 24 * v16 + 8));
      if (!v36)
      {
        break;
      }

      v37 = *v36;
      if (v37 == 1)
      {
        v38 = *(v36 + 1);
        if (!v38)
        {
          break;
        }

        v46 = v38 + 1;
        a4 = *&v217[2];
        if (*&v217[2] <= v16)
        {
          goto LABEL_309;
        }

        re::AssetHandle::operator=(*&v219[2] + 24 * v16, v38 + 10);
        re::UnlitMaterial::parameterTable(v38, v167, v210);
        v47 = *(this + 31);
        a4 = *(v47 + 304);
        if (a4 <= v16)
        {
          goto LABEL_311;
        }

        v41 = v210[0];
        *(*(v47 + 312) + 16 * v16) = vaddq_s64(vdupq_n_s64(v210[0]), xmmword_1E3087420);
        v48 = *(this + 31);
        v49 = *(v48 + 624);
        a4 = *(v48 + 592);
        if (v49 + 1 > 8 * a4)
        {
          v50 = v41;
          re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity((v48 + 584), (v49 + 8) >> 3);
          v41 = v50;
          a4 = *(v48 + 592);
        }

        v16 = v49 >> 3;
        if (a4 <= v49 >> 3)
        {
          goto LABEL_313;
        }

        if (*(v48 + 600))
        {
          v51 = v48 + 608;
        }

        else
        {
          v51 = *(v48 + 616);
        }

        v55 = *(v51 + 8 * v16);
        v56 = v49 & 7;
        ++*(v48 + 624);
        ++*(v48 + 632);
      }

      else
      {
        if (v37 != 2)
        {
          break;
        }

        v38 = *(v36 + 1);
        if (!v38)
        {
          break;
        }

        v39 = v38 + 1;
        a4 = *&v217[2];
        if (*&v217[2] <= v16)
        {
          goto LABEL_310;
        }

        re::AssetHandle::operator=(*&v219[2] + 24 * v16, v38 + 66);
        re::PbrMaterial::parameterTable(v38, v167, v210);
        v40 = *(this + 31);
        a4 = *(v40 + 304);
        if (a4 <= v16)
        {
          goto LABEL_312;
        }

        v41 = v210[0];
        *(*(v40 + 312) + 16 * v16) = vaddq_s64(vdupq_n_s64(v210[0]), xmmword_1E3087430);
        v42 = *(this + 31);
        v43 = *(v42 + 568);
        a4 = *(v42 + 536);
        if (v43 + 1 > 8 * a4)
        {
          v44 = v41;
          re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity((v42 + 528), (v43 + 8) >> 3);
          v41 = v44;
          a4 = *(v42 + 536);
        }

        v16 = v43 >> 3;
        if (a4 <= v43 >> 3)
        {
          goto LABEL_314;
        }

        if (*(v42 + 544))
        {
          v45 = v42 + 552;
        }

        else
        {
          v45 = *(v42 + 560);
        }

        v55 = *(v45 + 8 * v16);
        v56 = v43 & 7;
        ++*(v42 + 568);
        ++*(v42 + 576);
      }

      *(v55 + 8 * v56) = v41;

LABEL_60:
      v16 = v35;
      v54 = v5 > v35;
      v35 = (v35 + 1);
      if (!v54)
      {
        goto LABEL_67;
      }
    }

    v52 = *(this + 31);
    a4 = *(v52 + 304);
    if (a4 <= v16)
    {
      goto LABEL_295;
    }

    v53 = (*(v52 + 312) + 16 * v16);
    *v53 = 0;
    v53[1] = 0;
    goto LABEL_60;
  }

LABEL_67:
  v57 = *(v166 + 26);
  if (v57)
  {
    re::ecs2::MeshComponentHelper::fixLegacyParametersColorGamut(v167, &v214, *(v166 + 26));
    *&v225 = *&v219[2];
    *(&v225 + 1) = *&v217[2];
    v58 = *(v57 + 88);
    *v220 = *(v57 + 104);
    *&v220[8] = v58;
    re::MaterialAssetHelper::extractMaterialDataFromMaterialParameterBlocks(&v225, v220, (*(this + 31) + 224), (*(this + 31) + 248), *(this + 31) + 472);
  }

  *&v225 = *&v219[2];
  *(&v225 + 1) = *&v217[2];
  isUnderHighFidelityVisualProxyTree = re::ecs2::VisualProxyCaptureHelper::isUnderHighFidelityVisualProxyTree(v166, v29);
  re::MaterialAssetHelper::extractMaterialDataFromMaterialAssetHandles(&v225, isUnderHighFidelityVisualProxyTree, (*(this + 31) + 224), (*(this + 31) + 272), *(this + 31) + 472);
  v35 = *(*(this + 20) + 80);
  v60 = *(this + 31);
  v60[57] = v35;
  if (v35)
  {
    if (v35 >= 0xAAAAAAAAAAAAAABLL)
    {
LABEL_306:
      re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, v35);
      _os_crash();
      __break(1u);
      goto LABEL_307;
    }

    v5 = 24 * v35;
    v60[58] = v62;
    if (!v62)
    {
LABEL_307:
      re::internal::assertLog(4, v64, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_308;
    }

    v16 = v62;
    if (v35 != 1)
    {
      v5 -= 24;
      bzero(v62, v5);
      v16 += v5;
    }

    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
  }

  v65 = *(this + 31);
  v65[41] = v35;
  if (v35)
  {
    v5 = 16 * v35;
    v65[42] = v67;
    if (!v67)
    {
LABEL_308:
      re::internal::assertLog(4, v68, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_309:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 789;
      v221 = 2048;
      v222 = v16;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_310:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 789;
      v221 = 2048;
      v222 = v16;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_311:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 468;
      v221 = 2048;
      v222 = v16;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_312:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 468;
      v221 = 2048;
      v222 = v16;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_313:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 858;
      v221 = 2048;
      v222 = v16;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_314:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 858;
      v221 = 2048;
      v222 = v16;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_315;
    }

    v16 = v67;
    if (v35 != 1)
    {
      v69 = v5 - 16;
      bzero(v67, v69);
      v16 += v69;
    }

    v70 = 0;
    v71 = 0;
    v5 = 0;
    *v16 = 0;
    *(v16 + 8) = 0;
    do
    {
      v72 = *(this + 20);
      v73 = *(v72 + 80);
      if (v73 <= v5)
      {
        goto LABEL_291;
      }

      v74 = re::DataArray<re::MeshInstance>::get((v10 + 9), *(*(v72 + 72) + 8 * v5));
      v207 = *&v219[2];
      v208 = *&v217[2];
      v75 = *(v74 + 128);
      v210[0] = *(v74 + 136);
      v210[1] = v75;
      v76 = *(this + 31);
      a4 = *(v76 + 456);
      if (a4 <= v5)
      {
        goto LABEL_292;
      }

      re::MaterialAssetHelper::extractMaterialDataFromMeshInstanceParameterBlocks(&v207, v210, (*(v76 + 464) + v71), v76 + 472);
      v77 = *(this + 31);
      a4 = v77[57];
      if (a4 <= v5)
      {
        goto LABEL_293;
      }

      a4 = v77[41];
      if (a4 <= v5)
      {
        goto LABEL_294;
      }

      v78 = *(v77[58] + v71 + 8);
      v79 = *(v77[58] + v71 + 16);
      v80 = (v77[42] + v70);
      *v80 = v79;
      v80[1] = v78;
      ++v5;
      v71 += 24;
      v70 += 16;
    }

    while (v35 != v5);
  }

  v16 = v166;
  v81 = *(v166 + 33);
  if (v81)
  {
    v82 = *(this + 31);
    a4 = *(v81 + 48);
    v82[44] = a4;
    if (a4)
    {
      if (a4 >= 0xCCCCCCCCCCCCCCDLL)
      {
LABEL_315:
        re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 20, a4);
        _os_crash();
        __break(1u);
        goto LABEL_316;
      }

      v82[45] = v84;
      if (!v84)
      {
LABEL_316:
        re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
        goto LABEL_317;
      }

      v86 = a4 - 1;
      if (a4 != 1)
      {
        do
        {
          *v84 = 0;
          v84[2] = 0;
          v84[4] = 0;
          v84[6] = 0;
          v84[8] = 0;
          v84[10] = 0;
          v84[12] = 0;
          v84[14] = 0;
          v84[16] = 0;
          v84[18] = 0;
          v84 += 20;
          --v86;
        }

        while (v86);
      }

      *v84 = 0;
      v84[2] = 0;
      v84[4] = 0;
      v84[6] = 0;
      v84[8] = 0;
      v84[10] = 0;
      v84[12] = 0;
      v84[14] = 0;
      v84[16] = 0;
      v84[18] = 0;
    }

    v66 = memcpy(*(*(this + 31) + 360), *(v81 + 64), 20 * *(v81 + 48));
  }

  v35 = *(v166 + 34);
  if (v35)
  {
    v87 = *(this + 31);
    v88 = v87[29] >= *(v35 + 48) ? *(v35 + 48) : v87[29];
    v89 = *(this + 31);
    if (v88)
    {
      v5 = 0;
      while (1)
      {
        v91 = *(this + 31);
        a4 = *(v91 + 232);
        if (a4 <= v5)
        {
          break;
        }

        a4 = *(this + 9);
        if (a4 <= v5)
        {
          goto LABEL_297;
        }

        v92 = *(*(v91 + 240) + 8 * v5);
        v93 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(this + 11) + 24 * v5));
        a4 = *(v35 + 48);
        if (a4 <= v5)
        {
          goto LABEL_298;
        }

        if (v93 && (*(v93 + 1842) & 0xFE) == 6)
        {
          v16 = *(v35 + 64) + 32 * v5;
          if (*(v92 + 256))
          {
            v94 = *v16 == 0;
          }

          else
          {
            v94 = 1;
          }

          if (!v94)
          {
            v95 = *(this + 31);
            a4 = *(v95 + 232);
            v96 = v166;
            if (a4 <= v5)
            {
              goto LABEL_302;
            }

            do
            {
              v97 = v96;
              v96 = *(v96 + 4);
            }

            while (v96);
            Buffer = re::ecs2::fetchBuffer(v167, *(v97 + 3), v16, *(v16 + 8), *(*(v95 + 240) + 8 * v5) + 248, v95 + 392, (v95 + 48), v95 + 88, v95 + 136, v95 + 176, (v95 + 128));
            v208 = 0;
            v207 = 0;
            v209 = 0;
            v98 = *(this + 31);
            a4 = *(v98 + 8);
            if (a4 <= v5)
            {
              goto LABEL_303;
            }

            re::FixedArray<float>::operator=((*(v98 + 16) + 24 * v5), &v207);
            if (v207 && v208)
            {
              (*(*v207 + 40))();
            }
          }

          if (*(v92 + 280) && *(v16 + 16))
          {
            v99 = *(this + 31);
            a4 = *(v99 + 232);
            if (a4 <= v5)
            {
              goto LABEL_304;
            }

            v100 = v166;
            do
            {
              v101 = v100;
              v100 = *(v100 + 4);
            }

            while (v100);
            Buffer = re::ecs2::fetchBuffer(v167, *(v101 + 3), (v16 + 16), *(v16 + 24), *(*(v99 + 240) + 8 * v5) + 272, v99 + 392, (v99 + 48), v99 + 88, v99 + 136, v99 + 176, (v99 + 128));
            v208 = 0;
            v207 = 0;
            v209 = 0;
            v102 = *(this + 31);
            a4 = *(v102 + 32);
            if (a4 <= v5)
            {
              goto LABEL_305;
            }

            re::FixedArray<float>::operator=((*(v102 + 40) + 24 * v5), &v207);
            if (v207 && v208)
            {
              (*(*v207 + 40))();
            }
          }
        }

        if (++v5 == v88)
        {
          goto LABEL_124;
        }
      }

LABEL_296:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 468;
      v221 = 2048;
      v222 = v5;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_297:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 789;
      v221 = 2048;
      v222 = v5;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_298:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 797;
      v221 = 2048;
      v222 = v5;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_299:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 789;
      v221 = 2048;
      v222 = v16;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_300:
      re::internal::assertLog(6, v117, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a4);
      _os_crash();
      __break(1u);
LABEL_301:
      re::internal::assertLog(4, v118, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_302:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 468;
      v221 = 2048;
      v222 = v5;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_303:
      v210[0] = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 468;
      v221 = 2048;
      v222 = v5;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_304:
      v207 = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 468;
      v221 = 2048;
      v222 = v5;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_305:
      v210[0] = 0;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v225 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v220 = 136315906;
      *&v220[4] = "operator[]";
      *&v220[12] = 1024;
      *&v220[14] = 468;
      v221 = 2048;
      v222 = v5;
      v223 = 2048;
      v224 = a4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_306;
    }
  }

LABEL_124:
  re::DynamicArray<re::AssetHandle>::deinit(&v214);
  re::AssetHandle::~AssetHandle(v211);
  a4 = v166;
LABEL_125:
  if ((*(a2 + 392) & 1) == 0)
  {
    v103 = *(re::AssetHandle::loadedAsset<re::MaterialAsset>((a2 + 296)) + 1776);
    if (v103)
    {
      v104 = *(this + 31);
      v105 = *(v104 + 232);
      if (!v105)
      {
        return 0;
      }

      v106 = *(v104 + 240);
      v107 = 8 * v105;
      while (*v106 == v103)
      {
        ++v106;
        v107 -= 8;
        if (!v107)
        {
          return 0;
        }
      }
    }
  }

  v109 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v109)
  {
    goto LABEL_136;
  }

  do
  {
    v123 = a4;
    a4 = *(a4 + 4);
  }

  while (a4);
  v124 = re::ecs2::ComponentHelper::privateSceneDataEntity(*(v123 + 3), 0);
  if (v124)
  {
    v109 = re::ecs2::EntityComponentCollection::get((v124 + 48), re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v109)
    {
LABEL_136:
      v110 = *(v109 + 40);
      if ((v110 & 1) != 0 ? v110 >> 1 : v110 >> 1)
      {
        DebugTechnique = re::Hash<re::DynamicString>::operator()(&v225, v109 + 32);
        v113 = *(this + 31);
        if ((*(v113 + 368) & 1) == 0)
        {
          *(v113 + 368) = 1;
        }

        *(v113 + 376) = DebugTechnique;
        v114 = *(this + 31);
        v115 = *(v114 + 232);
        if (v115)
        {
          v5 = *(v114 + 240);
          v35 = v5 + 8 * v115;
          while (1)
          {
            v116 = *v5;
            if (!*(*v5 + 96))
            {
              a4 = *(v116 + 10);
              *(v116 + 13) = a4;
              if (a4)
              {
                if (a4 >= 0x666666666666667)
                {
                  goto LABEL_300;
                }

                *(v116 + 14) = DebugTechnique;
                if (!DebugTechnique)
                {
                  goto LABEL_301;
                }

                v119 = a4 - 1;
                if (a4 != 1)
                {
                  do
                  {
                    *DebugTechnique = 0;
                    *(DebugTechnique + 32) = 0;
                    DebugTechnique += 40;
                    --v119;
                  }

                  while (v119);
                }

                *DebugTechnique = 0;
                *(DebugTechnique + 32) = 0;
              }
            }

            if (*(v116 + 10))
            {
              break;
            }

LABEL_157:
            v5 += 8;
            if (v5 == v35)
            {
              goto LABEL_162;
            }
          }

          v120 = 0;
          v16 = 0;
          while (1)
          {
            a4 = *(v116 + 13);
            if (a4 <= v16)
            {
              break;
            }

            if (!*(*(v116 + 14) + v120))
            {
              v121 = **(*(v116 + 11) + v120);
              if (*(v121 + 2632) == 1)
              {
                v122 = *(v116 + 2);
                *&v225 = *(v121 + 2640);
                DebugTechnique = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find((v122 + 184), &v225);
                if (DebugTechnique != -1)
                {
                  DebugTechnique = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((*(v122 + 192) + 72 * DebugTechnique + 8), (*(this + 31) + 376));
                  if (DebugTechnique != -1)
                  {
                    DebugTechnique = re::MaterialManager::generateDebugTechnique(*(v167 + 3), v116, v16);
                  }
                }
              }
            }

            ++v16;
            v120 += 40;
            if (*(v116 + 10) <= v16)
            {
              goto LABEL_157;
            }
          }

          *v220 = 0;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v225 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          *v217 = 468;
          *&v217[4] = 2048;
          *&v217[6] = v16;
          v218 = 2048;
          *v219 = a4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_291:
          re::internal::assertLog(6, v68, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v73);
          _os_crash();
          __break(1u);
LABEL_292:
          Buffer = 0;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v225 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v220 = 136315906;
          *&v220[4] = "operator[]";
          *&v220[12] = 1024;
          *&v220[14] = 468;
          v221 = 2048;
          v222 = v5;
          v223 = 2048;
          v224 = a4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_293:
          v207 = 0;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v225 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v220 = 136315906;
          *&v220[4] = "operator[]";
          *&v220[12] = 1024;
          *&v220[14] = 468;
          v221 = 2048;
          v222 = v5;
          v223 = 2048;
          v224 = a4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_294:
          v207 = 0;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v225 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v220 = 136315906;
          *&v220[4] = "operator[]";
          *&v220[12] = 1024;
          *&v220[14] = 468;
          v221 = 2048;
          v222 = v5;
          v223 = 2048;
          v224 = a4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_295:
          v207 = 0;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v225 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v220 = 136315906;
          *&v220[4] = "operator[]";
          *&v220[12] = 1024;
          *&v220[14] = 468;
          v221 = 2048;
          v222 = v16;
          v223 = 2048;
          v224 = a4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_296;
        }
      }
    }
  }

LABEL_162:
  v125 = *(this + 31);
  v126 = *(v125 + 232);
  if (v126)
  {
    v127 = 8 * v126;
    v128 = *(v125 + 240);
    do
    {
      v129 = *v128;
      v130 = *(a2 + 43);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v130, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        *(*(this + 31) + 384) = 1;
      }

      v131 = *(a2 + 44);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v131, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        *(*(this + 31) + 384) = 257;
      }

      v132 = *(a2 + 45);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v132, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        goto LABEL_184;
      }

      v133 = *(a2 + 46);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v133, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        goto LABEL_184;
      }

      v134 = *(a2 + 47);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v134, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        goto LABEL_184;
      }

      v135 = *(a2 + 48);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v135, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
LABEL_184:
        *(*(this + 31) + 386) = 1;
      }

      ++v128;
      v127 -= 8;
    }

    while (v127);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F68))
  {
    qword_1EE1A5F60 = re::hashStringWithLength("Occlusion", 9);
    __cxa_guard_release(&qword_1EE1A5F68);
  }

  v136 = *(this + 11);
  v137 = *(this + 9);
  if (v137)
  {
    v138 = 24 * v137;
    while (1)
    {
      v139 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v136);
      if (v139)
      {
        v140 = *(v139 + 1776);
        if (v140)
        {
          v141 = *(v140 + 16);
          if (v141)
          {
            re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v141 + 16, &qword_1EE1A5F60, qword_1EE1A5F60, &v225);
            if (HIDWORD(v225) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

      v136 = (v136 + 24);
      v138 -= 24;
      if (!v138)
      {
        LOBYTE(v137) = 0;
        goto LABEL_195;
      }
    }

    LOBYTE(v137) = 1;
LABEL_195:
    v142 = *(this + 9);
    v136 = *(this + 11);
  }

  else
  {
    v142 = 0;
  }

  *(*(this + 31) + 387) = v137;
  HighestLightspillNodeRequirements = re::ecs2::getHighestLightspillNodeRequirements(v142, v136);
  *(*(this + 31) + 388) = HighestLightspillNodeRequirements;
  if (v165 != HighestLightspillNodeRequirements)
  {
    v144 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    v145 = *(v166 + 49);
    if (*(v166 + 49))
    {
      v146 = (re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
      v147 = *(v166 + 13);
      v148 = vld1q_dup_s16(v146);
      v149 = 1;
      while (1)
      {
        v150 = vandq_s8(vceqq_s16(v148, *v147), xmmword_1E306AC00);
        v150.i16[0] = vmaxvq_u16(v150);
        if (v150.i32[0])
        {
          break;
        }

        v149 -= 8;
        ++v147;
        if (!--v145)
        {
          goto LABEL_202;
        }
      }

      LODWORD(v145) = v150.u16[0] - v149 < *(v166 + 48);
      if (!HighestLightspillNodeRequirements)
      {
        goto LABEL_286;
      }
    }

    else
    {
LABEL_202:
      if (!HighestLightspillNodeRequirements)
      {
LABEL_286:
        if (v145)
        {
          re::ecs2::EntityComponentCollection::remove((v166 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        }

        return 1;
      }
    }

    if ((v145 & 1) == 0)
    {
      v151 = re::ecs2::EntityComponentCollection::add((v166 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      *&v204.var0 = 0xFFFDBC97C8B59A5ELL;
      v204.var1 = "REVideoAttachmentChannelID1TextureSpill";
      v205 = 0;
      v206 = &str_67;
      v152 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v204);
      if (v205)
      {
        if (v205)
        {
        }
      }

      v206 = &str_67;
      v205 = 0;
      if (*&v204.var0)
      {
        if (*&v204.var0)
        {
        }
      }

      *&v204.var0 = 0;
      v204.var1 = &str_67;
      *&v201.var0 = 0x76CA5FD80552008;
      v201.var1 = "REVideoAttachmentSpillSpecular";
      v202 = 0;
      v203 = &str_67;
      v153 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v201);
      if (v202)
      {
        if (v202)
        {
        }
      }

      v202 = 0;
      v203 = &str_67;
      if (*&v201.var0)
      {
        if (*&v201.var0)
        {
        }
      }

      *&v201.var0 = 0;
      v201.var1 = &str_67;
      *&v198.var0 = 0x61C86E215C086A2ALL;
      v198.var1 = "REVideoAttachmentWorldToPlaneUVsTransformMatrix";
      v199 = 0;
      v200 = &str_67;
      v154 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v198);
      if (v199)
      {
        if (v199)
        {
        }
      }

      v199 = 0;
      v200 = &str_67;
      if (*&v198.var0)
      {
        if (*&v198.var0)
        {
        }
      }

      *&v198.var0 = 0;
      v198.var1 = &str_67;
      *&v195.var0 = 0xA29F54C4473E75D8;
      v195.var1 = "REVideoAttachmentContentPlaneWidthWorldspace";
      v196 = 0;
      v197 = &str_67;
      v155 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v195);
      if (v196)
      {
        if (v196)
        {
        }
      }

      v196 = 0;
      v197 = &str_67;
      if (*&v195.var0)
      {
        if (*&v195.var0)
        {
        }
      }

      *&v195.var0 = 0;
      v195.var1 = &str_67;
      *&v192.var0 = 0xEAE20DCE6A8B6752;
      v192.var1 = "REVideoAttachmentContentPlaneHeightWorldspace";
      v193 = 0;
      v194 = &str_67;
      v156 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v192);
      if (v193)
      {
        if (v193)
        {
        }
      }

      v193 = 0;
      v194 = &str_67;
      if (*&v192.var0)
      {
        if (*&v192.var0)
        {
        }
      }

      *&v192.var0 = 0;
      v192.var1 = &str_67;
      *&v189.var0 = 0x85AE1CBDDAF0F1D6;
      v189.var1 = "REVideoAttachmentContentBrightnessScale";
      v190 = 0;
      v191 = &str_67;
      v157 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v189);
      if (v190)
      {
        if (v190)
        {
        }
      }

      v190 = 0;
      v191 = &str_67;
      if (*&v189.var0)
      {
        if (*&v189.var0)
        {
        }
      }

      *&v189.var0 = 0;
      v189.var1 = &str_67;
      *&v186.var0 = 0x8E6804010C9F587CLL;
      v186.var1 = "REVideoAttachmentTransitionAlpha";
      v187 = 0;
      v188 = &str_67;
      v158 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v186);
      if (v187)
      {
        if (v187)
        {
        }
      }

      v187 = 0;
      v188 = &str_67;
      if (*&v186.var0)
      {
        if (*&v186.var0)
        {
        }
      }

      *&v186.var0 = 0;
      v186.var1 = &str_67;
      *&v183.var0 = 0xF3ADD9F5BAC06862;
      v183.var1 = "REVideoAttachmentAverageColor";
      v184 = 0;
      v185 = &str_67;
      v159 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v183);
      if (v184)
      {
        if (v184)
        {
        }
      }

      v184 = 0;
      v185 = &str_67;
      if (*&v183.var0)
      {
        if (*&v183.var0)
        {
        }
      }

      *&v183.var0 = 0;
      v183.var1 = &str_67;
      *&v180.var0 = 0xDE000BD2E5A280BELL;
      v180.var1 = "REVideoAttachmentDockingRegionHeight";
      v181 = 0;
      v182 = &str_67;
      v160 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v180);
      if (v181)
      {
        if (v181)
        {
        }
      }

      v181 = 0;
      v182 = &str_67;
      if (*&v180.var0)
      {
        if (*&v180.var0)
        {
        }
      }

      *&v180.var0 = 0;
      v180.var1 = &str_67;
      *&v177.var0 = 0xD59CE79B746D6F1CLL;
      v177.var1 = "REVideoAttachmentDockingRegionWidth";
      v178 = 0;
      v179 = &str_67;
      v161 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v177);
      if (v178)
      {
        if (v178)
        {
        }
      }

      v178 = 0;
      v179 = &str_67;
      if (*&v177.var0)
      {
        if (*&v177.var0)
        {
        }
      }

      *&v177.var0 = 0;
      v177.var1 = &str_67;
      *&v174.var0 = 0x4DD58DF13CA60C76;
      v174.var1 = "REVideoAttachmentPFRMMaskOffset";
      v175 = 0;
      v176 = &str_67;
      v162 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v174);
      if (v175)
      {
        if (v175)
        {
        }
      }

      v175 = 0;
      v176 = &str_67;
      if (*&v174.var0)
      {
        if (*&v174.var0)
        {
        }
      }

      *&v174.var0 = 0;
      v174.var1 = &str_67;
      *&v171.var0 = 0xFD26950F2B3B9752;
      v171.var1 = "REVideoAttachmentPFRMMaskSize";
      v172 = 0;
      v173 = &str_67;
      v163 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v171);
      if (v172)
      {
        if (v172)
        {
        }
      }

      v172 = 0;
      v173 = &str_67;
      if (*&v171.var0)
      {
        if (*&v171.var0)
        {
        }
      }

      *&v171.var0 = 0;
      v171.var1 = &str_67;
      *&v168.var0 = 0x186F8F7E8364D330;
      v168.var1 = "REVideoAttachmentDisplaySize";
      v169 = 0;
      v170 = &str_67;
      v164 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v168);
      if (v169)
      {
        if (v169)
        {
        }
      }

      v169 = 0;
      v170 = &str_67;
      if (*&v168.var0)
      {
        if (*&v168.var0)
        {
        }
      }

      *&v168.var0 = 0;
      v168.var1 = &str_67;
      v144 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    }

    *(re::ecs2::EntityComponentCollection::get((v166 + 48), v144) + 72) = *(*(this + 31) + 388) == 2;
  }

  return 1;
}

uint64_t re::MaterialParameterTable::tryGetPassTechniqueMapping(re::MaterialParameterTable *this, unint64_t a2, uint64_t a3)
{
  v7 = a3;
  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1032, &v7);
  if (result)
  {
    if (!*result)
    {
      return 0;
    }

    v5 = *(*(result + 8) + 4 * (a2 % *(result + 24)));
    if (v5 == 0x7FFFFFFF)
    {
      return 0;
    }

    else
    {
      v6 = *(result + 16);
      while (*(v6 + 24 * v5 + 8) != a2)
      {
        v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      return v6 + 24 * v5 + 16;
    }
  }

  return result;
}

void *re::ecs2::MeshComponent::updateStaticBoundingBoxData(void *this, const re::ecs2::Entity *a2, const re::RenderManager *a3)
{
  v40[5] = *MEMORY[0x1E69E9840];
  if (!this[38])
  {
    v5 = this;
    this = re::AssetHandle::loadedAsset<re::MeshAsset>((this + 4));
    if (this)
    {
      v6 = this;
      if (a3)
      {
        goto LABEL_7;
      }

      v7 = a2;
      do
      {
        v8 = v7;
        v7 = *(v7 + 4);
      }

      while (v7);
      v9 = (*(**(*(v8 + 3) + 56) + 32))(*(*(v8 + 3) + 56));
      this = re::ServiceLocator::serviceOrNull<re::RenderManager>(v9);
      a3 = this;
      if (this)
      {
LABEL_7:
        v10 = *(a3 + 18);
        if (v10)
        {
          v11 = (v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        inited = objc_initWeak(&location, v11);
        v13 = re::globalAllocators(inited);
        v14 = (*(*v13[2] + 32))(v13[2], 248, 8);
        *(v14 + 128) = 0u;
        *(v14 + 144) = 0u;
        *v14 = 0u;
        *(v14 + 16) = 0u;
        *(v14 + 32) = 0u;
        *(v14 + 48) = 0u;
        *(v14 + 64) = 0u;
        *(v14 + 80) = 0u;
        *(v14 + 96) = 0u;
        *(v14 + 112) = 0u;
        *(v14 + 160) = 0u;
        *(v14 + 176) = 0u;
        *(v14 + 192) = 0u;
        *(v14 + 208) = 0u;
        *(v14 + 224) = 0u;
        *(v14 + 240) = 0;
        *(v14 + 136) = 1;
        *(v14 + 144) = 0;
        *(v14 + 152) = 0;
        *(v14 + 176) = 0u;
        *(v14 + 192) = 0u;
        *(v14 + 208) = 1;
        *(v14 + 216) = 0;
        *(v14 + 224) = 0;
        memset(v40, 0, 24);
        v40[3] = re::globalAllocators(v14)[2];
        v40[4] = 0;
        re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::reset(v5 + 37, &location, v14, v40);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v40);
        objc_destroyWeak(&location);
        location = 0;
        v15 = v5[38];
        v16 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v16)
        {
          v17 = *(v16 + 81);
          if (v17)
          {
            v19 = v17 + 128;
            v17 = *(v17 + 128);
            v18 = *(v19 + 8);
          }

          else
          {
            v18 = 0;
          }

          v15[9] = v18;
          v15[10] = v17;
          v22 = *(v16 + 81);
          if (v22)
          {
            v23 = v22 + 152;
            v22 = *(v22 + 152);
            v21 = *(v23 + 8);
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v16 = re::AssetHandle::operator=(v15, v5 + 4);
          v20 = v6[143];
          v15[9] = v6[144];
          v15[10] = v20;
          v21 = v6[147];
          v22 = v6[146];
        }

        v15[11] = v21;
        v15[12] = v22;
        if (*(v5 + 24) != 0.0)
        {
          re::FixedArray<re::AABB>::operator=((v15 + 3), (v15 + 9));
          v25 = v15[4];
          v24 = v15[5];
          if (v25)
          {
            v26 = &v24[2 * v25];
            do
            {
              v27 = (v5 + 12);
              v28 = vld1q_dup_f32(v27);
              v29 = v24[1];
              *v24 = vsubq_f32(*v24, v28);
              v30 = vld1q_dup_f32(v27);
              v24[1] = vaddq_f32(v29, v30);
              v24 += 2;
            }

            while (v24 != v26);
            v25 = v15[4];
            v24 = v15[5];
          }

          v15[9] = v24;
          v15[10] = v25;
          v16 = re::FixedArray<re::AABB>::operator=((v15 + 6), (v15 + 11));
          v32 = v15[7];
          v31 = v15[8];
          if (v32)
          {
            v33 = &v31[2 * v32];
            do
            {
              v34 = (v5 + 12);
              v35 = vld1q_dup_f32(v34);
              v36 = v31[1];
              *v31 = vsubq_f32(*v31, v35);
              v37 = vld1q_dup_f32(v34);
              v31[1] = vaddq_f32(v36, v37);
              v31 += 2;
            }

            while (v31 != v33);
            v32 = v15[7];
            v31 = v15[8];
          }

          v15[11] = v31;
          v15[12] = v32;
        }
      }
    }
  }

  return this;
}

_anonymous_namespace_ *re::FixedArray<re::AABB>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::AABB>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::ecs2::MeshComponentStateImpl::MeshComponentStateImpl(uint64_t a1, uint64_t a2)
{
  v5[11] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CED3F0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x7FFFFFFFLL;
  *(a1 + 72) = a2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[3] = re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[4] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[5] = re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[6] = re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[7] = re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[8] = re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[9] = re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[10] = re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 11;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 80), v4);
  return a1;
}

void re::ecs2::MeshComponentStateImpl::didDependentComponentChange(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v51 = a3;
  if (*(a3 + 387))
  {
    return;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
  {
    re::ecs2::MeshComponentStateImpl::markEntityHierarchyDirty(a2, a3);
    goto LABEL_43;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4 && re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
  {
    v14 = *(a3 + 192);
    if (v14)
    {
      if (re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
      {
        v23 = 24;
        v24 = 0xFFFFFFFFLL;
        do
        {
          v25 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v23), v14);
          if (v25 != -1 && (v26 & 0xFFFFFF00000000) != 0)
          {
            v28 = v25;
            v24 = v26;
            goto LABEL_42;
          }

          v23 += 8;
        }

        while (v23 != 56);
        v28 = -1;
LABEL_42:
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a2, v28, v24, 0);
      }

      else if (re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
      {
        re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v15 = re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
        if (re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
        {
          *(v14 + 224) = 0u;
          *(v14 + 208) = 0;
          v48 = re::ecs2::EntityComponentCollection::get((a3 + 48), v15);
          if (v48)
          {
            *(v14 + 208) = *(v48 + 25);
            *(v14 + 224) = *(v48 + 320);
          }
        }

        else if (re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
        {
          inited = objc_initWeak(&location, 0);
          v55 = 0uLL;
          *&v56[0] = 0;
          *(&v56[0] + 1) = re::globalAllocators(inited)[2];
          *&v56[1] = 0;
          re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset((v14 + 240), &location, 0, &v55);
          re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v55);
          objc_destroyWeak(&location);
          location = 0;
        }
      }
    }

    goto LABEL_43;
  }

  v10 = *(a2 + 8);
  memset(v56, 0, sizeof(v56));
  v55 = 0u;
  DWORD1(v56[1]) = 0x7FFFFFFF;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v52, a1 + 104, v10, v11 ^ (v11 >> 31));
  if (HIDWORD(v53) == 0x7FFFFFFF)
  {
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1 + 104, v53, v52);
    *(v12 + 16) = 0u;
    v13 = v12 + 16;
    *(v12 + 8) = v10;
    *(v12 + 56) = 0;
    v55 = 0u;
    *(v12 + 32) = 0;
    *&v56[0] = 0;
    *(v12 + 40) = xmmword_1E3058120;
    *(v56 + 8) = xmmword_1E3058120;
    ++*(a1 + 144);
  }

  else
  {
    v13 = *(a1 + 120) + 72 * HIDWORD(v53) + 16;
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v55);
  v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v18 = v17 ^ (v17 >> 31);
  v19 = *(v13 + 24);
  if (!v19)
  {
    LODWORD(v20) = 0;
    goto LABEL_32;
  }

  v20 = v18 % v19;
  v21 = *(*(v13 + 8) + 4 * (v18 % v19));
  if (v21 == 0x7FFFFFFF)
  {
LABEL_32:
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(v13, v20, v18, &v51, &v51);
    ++*(v13 + 40);
    goto LABEL_43;
  }

  v22 = *(v13 + 16);
  while (*(v22 + 24 * v21 + 16) != a3)
  {
    LODWORD(v21) = *(v22 + 24 * v21 + 8) & 0x7FFFFFFF;
    if (v21 == 0x7FFFFFFF)
    {
      goto LABEL_32;
    }
  }

LABEL_43:
  if (re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
  {
    v29 = v51;
    v30 = v51;
    do
    {
      v31 = v30;
      v30 = *(v30 + 4);
    }

    while (v30);
    if (v29 == re::ecs2::ComponentHelper::privateSceneDataEntity(*(v31 + 3), 0))
    {
      v32 = v51;
      do
      {
        v33 = v32;
        v32 = *(v32 + 4);
      }

      while (v32);
      v34 = *(v33 + 3);
      v35 = *(v34 + 128);
      if (v35)
      {
        v36 = *(v34 + 144);
        v37 = &v36[v35];
        v38 = xmmword_1E306AC00;
        do
        {
          v39 = *v36;
          v40 = *(*v36 + 192);
          if (v40)
          {
            v41 = *(v39 + 98);
            if (!*(v39 + 98))
            {
              goto LABEL_58;
            }

            v42 = (re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
            v43 = *(v39 + 104);
            v44 = vld1q_dup_s16(v42);
            v45 = 1;
            while (1)
            {
              v46 = vandq_s8(vceqq_s16(v44, *v43), v38);
              v46.i16[0] = vmaxvq_u16(v46);
              if (v46.i32[0])
              {
                break;
              }

              v45 -= 8;
              ++v43;
              if (!--v41)
              {
                goto LABEL_58;
              }
            }

            if (v46.u16[0] - v45 >= *(v39 + 96))
            {
LABEL_58:
              v47 = objc_initWeak(&v49, 0);
              v55 = 0u;
              memset(v56, 0, 24);
              *(&v56[0] + 1) = re::globalAllocators(v47)[2];
              *&v56[1] = 0;
              re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset((v40 + 240), &v49, 0, &v55);
              re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v55);
              objc_destroyWeak(&v49);
              v38 = xmmword_1E306AC00;
              v49 = 0;
            }
          }

          ++v36;
        }

        while (v36 != v37);
      }
    }
  }
}

unint64_t re::ecs2::MeshComponentStateImpl::markEntityHierarchyDirty(unint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[24];
  if (v4)
  {
    v5 = 3;
    v6 = 0xFFFFFFFFLL;
    do
    {
      v7 = re::ecs2::ComponentBucketsBase::componentHandle(v3[2], v3[v5], v4);
      if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
      {
        v10 = v7;
        v6 = v8;
        goto LABEL_10;
      }

      ++v5;
    }

    while (v5 != 7);
    v10 = -1;
LABEL_10:
    result = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(v3, v10, v6, 0);
  }

  v11 = a2[43];
  if (v11)
  {
    v12 = a2[45];
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      result = re::ecs2::MeshComponentStateImpl::markEntityHierarchyDirty(v3, v14);
      v13 -= 8;
    }

    while (v13);
  }

  return result;
}

void re::ecs2::MeshComponentStateImpl::didSetDirty(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::ComponentBucketsBase::component(*(a2 + 16), a3, a4);
    if (v4)
    {
      v5 = v4;
      inited = objc_initWeak(&location, 0);
      memset(v8, 0, 24);
      v8[3] = re::globalAllocators(inited)[2];
      v8[4] = 0;
      re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::reset((v5 + 296), &location, 0, v8);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v8);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t re::ecs2::MeshComponentStateImpl::checkRenderOptionChanges(uint64_t a1, void *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v41 = a2[39];
  result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a4, &v41);
  if (result)
  {
    return result;
  }

  v9 = a2[39];
  v41 = v9;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v11 = v10 ^ (v10 >> 31);
  v12 = *(a4 + 24);
  if (!v12)
  {
    LODWORD(v13) = 0;
    goto LABEL_9;
  }

  v13 = v11 % v12;
  v14 = *(*(a4 + 8) + 4 * (v11 % v12));
  if (v14 == 0x7FFFFFFF)
  {
LABEL_9:
    result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(a4, v13, v11, &v41, &v41);
    ++*(a4 + 40);
    goto LABEL_10;
  }

  v15 = *(a4 + 16);
  while (*(v15 + 24 * v14 + 16) != v9)
  {
    LODWORD(v14) = *(v15 + 24 * v14 + 8) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = a2[24];
  if (v16)
  {
    v17 = re::ecs2::RenderOptions::forEntity(a3, a2);
    v18 = *v17;
    LOWORD(v41) = *v17;
    BYTE2(v41) = v17[2];
    if (BYTE2(v41) == 1)
    {
      BYTE3(v41) = v17[3];
    }

    BYTE4(v41) = v17[4];
    if (BYTE4(v41) == 1)
    {
      BYTE5(v41) = v17[5];
    }

    BYTE6(v41) = v17[6];
    if (BYTE6(v41) == 1)
    {
      HIBYTE(v41) = v17[7];
    }

    v42 = v17[8];
    v19 = *(v17 + 9);
    v44 = v17[11];
    v43 = v19;
    v45 = v17[12];
    if (v45 == 1)
    {
      v46 = v17[13];
    }

    v47 = v17[14];
    if (v47 == 1)
    {
      v48 = v17[15];
    }

    v49 = v17[16];
    if (v49 == 1)
    {
      v50 = v17[17];
    }

    v51 = v17[18];
    if (v51 == 1)
    {
      v52 = v17[19];
    }

    v53 = v17[20];
    if (v53 == 1)
    {
      v54 = *(v17 + 11);
    }

    v20 = *(v17 + 6);
    v56 = v17[28];
    v55 = v20;
    for (i = 24; i != 56; i += 8)
    {
      v22 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v16);
      if (v22 != -1 && (v23 & 0xFFFFFF00000000) != 0)
      {
        v25 = v22;
        goto LABEL_35;
      }
    }

    v25 = -1;
LABEL_35:
    v26 = *(a1 + 32);
    result = re::HierarchicalMeshOverrideFlags::flattenToOverrideFlags((&v41 + 2));
    v27 = *(v16 + 20);
    if (v27)
    {
      v28 = *(v27 + 96);
      LODWORD(v27) = *(v27 + 100);
    }

    else
    {
      v28 = 0;
    }

    if ((v26 != v25) != v18 || v28 != result || v27 != HIDWORD(result))
    {
      v31 = 24;
      v32 = 0xFFFFFFFFLL;
      do
      {
        v33 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + v31), v16);
        if (v33 != -1 && (v34 & 0xFFFFFF00000000) != 0)
        {
          v36 = v33;
          v32 = v34;
          goto LABEL_53;
        }

        v31 += 8;
      }

      while (v31 != 56);
      v36 = -1;
LABEL_53:
      result = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a1, v36, v32, 0);
    }
  }

  v37 = a2[43];
  if (v37)
  {
    v38 = a2[45];
    v39 = 8 * v37;
    do
    {
      v40 = *v38++;
      result = re::ecs2::MeshComponentStateImpl::checkRenderOptionChanges(a1, v40, a3, a4);
      v39 -= 8;
    }

    while (v39);
  }

  return result;
}

uint64_t re::ecs2::MeshComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 72) + 272);
  if (v5)
  {
    v22 = (*(*v5 + 16))(v5);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
    v9 = v19;
    v10 = v20;
    v11 = v20;
    v19 = a4;
    v20 = v9;
    v21 = v10;
    if (v9 != a5 || v11 != 0xFFFFFFFFLL)
    {
      do
      {
        v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
        v14 = *re::ecs2::RenderOptions::forEntity(&v22, *(v13 + 16));
        v15 = v19;
        v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        if (v14)
        {
          v17 = 40;
        }

        else
        {
          v17 = 32;
        }

        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v15, v16, *(a3 + v17));
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
      }

      while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
    }

    return *(a5 + 40) != 0;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Components should not be processed in headless mode.", "m_meshSystem->m_renderOptionsService", "processDirtyComponents", 1939);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL re::ecs2::MeshComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  v87 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 72);
  v78 = *(v9 + 232);
  if ((*(**(v9 + 240) + 360))(*(v9 + 240)))
  {
    v11 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(v8 + 72) + 296));
    if (!v11 || *(v11 + 1768) == 1)
    {
      re::AssetHandle::loadAsync((*(v8 + 72) + 296));
    }

    v12 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(v8 + 72) + 320));
    if (!v12 || *(v12 + 1768) == 1)
    {
      re::AssetHandle::loadAsync((*(v8 + 72) + 320));
    }
  }

  v13 = *(*(v8 + 72) + 272);
  if (!v13)
  {
    goto LABEL_92;
  }

  v83 = (*(*v13 + 16))(v13);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v84, a5, 0);
  v80 = a4;
  v81 = v84;
  v82 = DWORD2(v84);
  v14 = v78;
  if (v84 != a5 || DWORD2(v84) != 0xFFFFFFFFLL)
  {
    v76 = a3;
    v77 = v8;
    do
    {
      v15 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v80);
      if (!re::ecs2::MeshComponentHelper::areRequiredAssetsLoaded(v15, v16))
      {
        goto LABEL_81;
      }

      v17 = *(v15 + 16);
      v18 = *(v8 + 72);
      v19 = *(v18 + 888);
      if (v19 && (v17[304] & 0x40) != 0)
      {
        v20 = (*(*v19 + 80))(v19);
        re::AssetHandle::AssetHandle(&v84, v20);
        if (!*(&v84 + 1) || (v21 = atomic_load((*(&v84 + 1) + 896)), v21 != 2))
        {
          re::AssetHandle::loadAsync(&v84);
          re::AssetHandle::~AssetHandle(&v84);
          goto LABEL_81;
        }

        re::AssetHandle::~AssetHandle(&v84);
        v18 = *(v8 + 72);
      }

      v22 = *(v18 + 224);
      if (v22 && (*(v22 + 432) & 0x10) == 0)
      {
        goto LABEL_80;
      }

      v23 = re::AssetHandle::loadedAsset<re::MeshAsset>((v15 + 32));
      v24 = *(v14 + 144);
      if (v24)
      {
        v25 = (v24 + 8);
      }

      else
      {
        v25 = 0;
      }

      inited = objc_initWeak(&location, v25);
      v27 = re::globalAllocators(inited);
      v28 = (*(*v27[2] + 32))(v27[2], 104, 8);
      *v28 = 0u;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 0u;
      *(v28 + 64) = 0u;
      *(v28 + 80) = 0u;
      *(v28 + 96) = 0;
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      *(&v85 + 1) = re::globalAllocators(v28)[2];
      v86 = 0;
      re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::reset((v15 + 152), &location, v28, &v84);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v84);
      objc_destroyWeak(&location);
      location = 0;
      v29 = re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v29)
      {
        v30 = v29;
        v31 = re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v29, *(v14 + 32));
        v33 = v30[81];
        if (v33)
        {
          v34 = *(v33 + 32);
          v35 = *(v33 + 16);
          v36 = v15 + 160;
          v37 = *(v15 + 160);
          if (*v37)
          {
            goto LABEL_28;
          }

          if (v35)
          {
LABEL_28:
            if (*(v37 + 8) != v35)
            {
              goto LABEL_90;
            }

            if (v35)
            {
              memmove(*(v37 + 16), v34, 8 * v35);
            }
          }
        }

        else
        {
          v36 = v15 + 160;
          v40 = *(v15 + 160);
          if (*v40 && v40[1])
          {
LABEL_90:
            re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
            _os_crash();
            __break(1u);
LABEL_91:
            re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
            _os_crash();
            __break(1u);
LABEL_92:
            re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Components should not be processed in headless mode.", "m_meshSystem->m_renderOptionsService", "processPreparingComponents", 1983);
            _os_crash();
            __break(1u);
LABEL_93:
            re::internal::assertLog(4, v39, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
            _os_crash();
            __break(1u);
LABEL_94:
            re::internal::assertLog(4, v56, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
            _os_crash();
            __break(1u);
LABEL_95:
            re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
            _os_crash();
            __break(1u);
          }
        }

        v41 = v30[81];
        if (v41)
        {
          v42 = *(v41 + 72);
          v41 = *(v41 + 56);
        }

        else
        {
          v42 = 0;
        }

        *&v84 = v42;
        *(&v84 + 1) = v41;
        v43 = re::FixedArray<re::MeshRangeGroup>::operator=((*v36 + 24), &v84);
        v45 = v30[81];
        if (v45)
        {
          v46 = *(v45 + 112);
          v47 = *(v45 + 96);
          v48 = *v36;
          v49 = (*v36 + 48);
          if (*v49)
          {
            goto LABEL_45;
          }

          if (v47)
          {
LABEL_45:
            if (*(v48 + 56) != v47)
            {
              goto LABEL_91;
            }

            if (v47)
            {
              memmove(*(v48 + 64), v46, 8 * v47);
            }
          }
        }

        else if (*(*v36 + 48) && *(*v36 + 56))
        {
          goto LABEL_91;
        }

        v50 = v30[24];
        v51 = *v36;
        *(v51 + 72) = v30[26];
        *(v51 + 80) = v50;
        v52 = v30 + 27;
        a3 = v76;
        v8 = v77;
        v14 = v78;
        goto LABEL_75;
      }

      v36 = v15 + 160;
      v38 = *(v15 + 160);
      if (v38 != v23 + 1064)
      {
        v39 = *(v23 + 1064);
        if (*v38)
        {
          if (!v39)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (!v39)
          {
            goto LABEL_56;
          }

          re::FixedArray<re::MeshPart const*>::init<>(*(v15 + 160), v39, *(v23 + 1072));
        }

        v53 = *(v23 + 1072);
        if (*(v38 + 8) != v53)
        {
          goto LABEL_93;
        }

        if (v53)
        {
          memmove(*(v38 + 16), *(v23 + 1080), 8 * v53);
        }
      }

LABEL_56:
      v54 = *v36;
      v55 = (*v36 + 24);
      if (v55 == (v23 + 1088))
      {
        goto LABEL_65;
      }

      v56 = *(v23 + 1088);
      if (*v55)
      {
        if (!v56)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (!v56)
        {
          goto LABEL_65;
        }

        re::FixedArray<re::MeshRangeGroup>::init<>(v55, v56, *(v23 + 1096));
      }

      v57 = *(v23 + 1096);
      if (*(v54 + 32) != v57)
      {
        goto LABEL_94;
      }

      if (v57)
      {
        memmove(*(v54 + 40), *(v23 + 1104), 96 * v57);
      }

LABEL_65:
      v58 = *v36;
      v59 = (*v36 + 48);
      if (v59 != (v23 + 1112))
      {
        v60 = *(v23 + 1112);
        if (*v59)
        {
          if (v60)
          {
            goto LABEL_71;
          }
        }

        else if (v60)
        {
          re::FixedArray<re::MeshPart const*>::init<>(v59, v60, *(v23 + 1120));
LABEL_71:
          v61 = *(v23 + 1120);
          if (*(v58 + 56) != v61)
          {
            goto LABEL_95;
          }

          if (v61)
          {
            memmove(*(v58 + 64), *(v23 + 1128), 8 * v61);
          }
        }
      }

      v62 = *(v23 + 568);
      v63 = *v36;
      *(v63 + 72) = *(v23 + 584);
      *(v63 + 80) = v62;
      v52 = (v23 + 640);
LABEL_75:
      v64 = *v36;
      *(v64 + 88) = v52;
      if (*(v64 + 80))
      {
        v65 = re::ecs2::RenderOptions::forEntity(&v83, v17);
        *(*(v15 + 160) + 96) = re::HierarchicalMeshOverrideFlags::flattenToOverrideFlags((v65 + 2));
        updated = re::ecs2::MeshComponent::updateMaterialData(v15, *(v8 + 72), v23, v17, v66);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v8 + 24);
        if (updated)
        {
          re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          *(v15 + 224) = 0u;
          *(v15 + 208) = 0;
          v68 = re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v68)
          {
            *(v15 + 208) = *(v68 + 25);
            *(v15 + 224) = *(v68 + 320);
          }

          re::ecs2::MeshComponent::updateStaticBoundingBoxData(v15, v17, v14);
          v69 = v80;
          v70 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v81);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v69, v70, *(a3 + 48));
          v8 = v77;
          goto LABEL_81;
        }

LABEL_80:
        v71 = v80;
        v72 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v81);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v71, v72, *(a3 + 32));
      }

LABEL_81:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v81);
    }

    while (v81 != a5 || v82 != 0xFFFF || HIWORD(v82) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

_anonymous_namespace_ *re::FixedArray<re::MeshRangeGroup>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::MeshRangeGroup>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 32;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

uint64_t re::ecs2::MeshComponentStateImpl::processUpdatingComponents(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v560 = v6;
  v7 = v1;
  v768 = *MEMORY[0x1E69E9840];
  v8 = *(*(v1 + 72) + 232);
  v9 = *(v8 + 44);
  if (v9)
  {
    (*(*v9 + 40))(__src, *(v8 + 44));
    (*(*v9 + 32))(v731, v9);
    v10 = *&__src[0];
    if (*&__src[0])
    {
      _ZF = *v731 == 0;
    }

    else
    {
      _ZF = 1;
    }

    v12 = !_ZF;
    v514 = v12;
    if (*v731)
    {

      v10 = *&__src[0];
    }

    if (v10)
    {
    }

    v8 = *(*(v7 + 72) + 232);
  }

  else
  {
    v514 = 0;
  }

  v13 = *(v560 + 8);
  v571 = v8;
  v14 = re::RenderManager::perFrameAllocator(v8);
  v675 = (*(**(*(v7 + 72) + 256) + 24))(*(*(v7 + 72) + 256));
  v673 = 0;
  v671 = 0u;
  v672 = 0u;
  v674 = 0x7FFFFFFFLL;
  v608 = v14;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v671, v14, 3);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(__src, v3, 0);
  v15 = *&__src[0];
  v16 = DWORD2(__src[0]);
  v598 = v5;
  *&__src[0] = v5;
  *(&__src[0] + 1) = v15;
  LODWORD(__src[1]) = v16;
  if (v15 != v3 || v16 != 0xFFFFFFFFLL)
  {
    do
    {
      re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(__src);
      (*(*v675 + 8))(v731);
      if (v731[0])
      {
        v17 = *&v731[8];
      }

      else
      {
        v17 = 0;
      }

      *v731 = v17;
      *&v761 = 0;
      v18 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v671, v731, &v761);
      ++*v18;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(__src + 4);
    }

    while (*(&__src[0] + 1) != v3 || LOWORD(__src[1]) != 0xFFFF || WORD1(__src[1]) != 0xFFFF);
  }

  v669 = 0;
  memset(v668, 0, sizeof(v668));
  v670 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v668, v14, 3);
  v19 = re::ecs2::SceneComponentTable::get((v13 + 200), re::ecs2::ComponentImpl<re::ecs2::PortalComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v19)
  {
    v20 = *(v19 + 384);
    if (v20)
    {
      v21 = *(v19 + 400);
      v22 = 8 * v20;
      do
      {
        v21 += 8;
        (*(*v675 + 8))(__src);
        if (LOBYTE(__src[0]))
        {
          v23 = *(&__src[0] + 1);
        }

        else
        {
          v23 = 0;
        }

        *&__src[0] = v23;
        *v731 = 0;
        v24 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v668, __src, v731);
        ++*v24;
        v22 -= 8;
      }

      while (v22);
    }
  }

  v607 = v7;
  v664 = 0u;
  v665 = 0u;
  v666 = 0;
  v667 = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v664, v608, SHIDWORD(v672));
  v602 = v3;
  v606 = v13;
  v610 = v673;
  if (v673)
  {
    v25 = 0;
    v26 = v672;
    while (1)
    {
      v27 = *v26;
      v26 += 8;
      if (v27 < 0)
      {
        break;
      }

      if (v673 == ++v25)
      {
        LODWORD(v25) = v673;
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 != v673)
  {
    v38 = v672;
    while (1)
    {
      v39 = v38 + 32 * v25;
      v40 = *(v39 + 16);
      memset(__src + 8, 0, 20);
      *&v682 = 0;
      *&__src[0] = v608;
      re::DynamicArray<re::MeshScene>::setCapacity(__src, v40);
      ++DWORD2(__src[1]);
      *&v683[0] = 0;
      DWORD2(v683[0]) = 0;
      *&v683[1] = 0;
      DWORD2(v683[1]) = 0;
      v718 = 0u;
      v719 = 0u;
      v720 = 0;
      v721 = 0x7FFFFFFFLL;
      v722 = 0;
      *&v726 = 0;
      v724 = 0uLL;
      v725 = 0;
      v723 = v608;
      re::DynamicArray<re::BlurPlaneData>::setCapacity(&v723, 0);
      ++v725;
      v729 = 0;
      v727 = 0uLL;
      v728 = 0;
      *(&v726 + 1) = v608;
      re::DynamicArray<re::BlurPlaneData>::setCapacity(&v726 + 1, 0);
      v43 = *(v39 + 8);
      v42 = (v39 + 8);
      v41 = v43;
      v44 = ++v728;
      v730 = 0;
      v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) >> 27));
      v46 = v45 ^ (v45 >> 31);
      if (!v664)
      {
        break;
      }

      v47 = v46 % DWORD2(v665);
      v48 = *(*(&v664 + 1) + 4 * v47);
      if (v48 == 0x7FFFFFFF)
      {
        goto LABEL_50;
      }

      while (*(v665 + 7168 * v48 + 8) != v41)
      {
        LODWORD(v48) = *(v665 + 7168 * v48) & 0x7FFFFFFF;
        if (v48 == 0x7FFFFFFF)
        {
          goto LABEL_50;
        }
      }

      v51 = v665 + 7168 * v48 + 16;
      if (!*(&v726 + 1))
      {
        goto LABEL_52;
      }

      if (v729)
      {
        (*(**(&v726 + 1) + 40))();
        v44 = v728;
      }

      v729 = 0;
      v727 = 0uLL;
      v53 = &v728;
      *(&v726 + 1) = 0;
LABEL_51:
      *v53 = v44 + 1;
LABEL_52:
      if (v723)
      {
        if (v726)
        {
          (*(*v723 + 40))();
        }

        *&v726 = 0;
        v724 = 0uLL;
        v723 = 0;
        ++v725;
      }

      re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashTable(v683);
      re::DynamicArray<re::MeshScene>::deinit(__src);
      if (re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v668, v42))
      {
        *&__src[0] = v608;
        DWORD2(__src[0]) = 0;
        *&__src[1] = 0;
        DWORD2(__src[1]) = 0;
        memset(v715, 0, sizeof(v715));
        v716 = 0;
        v717 = 0x7FFFFFFFLL;
        if ((v51 + 48) != __src)
        {
          if (*(v51 + 7020) || *(v51 + 64) || *(v51 + 6992))
          {
            re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(v51 + 64);
            re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v51 + 6992);
            v54 = 0;
            v55 = 0;
            v56 = *&__src[0];
            v57 = DWORD2(__src[0]);
          }

          else
          {
            v57 = 0;
            v55 = *(v51 + 48);
            v54 = *(v51 + 56);
            v56 = v608;
          }

          *(v51 + 48) = v56;
          *&__src[0] = v55;
          *(v51 + 56) = v57;
          DWORD2(__src[0]) = v54;
          *v731 = 0;
          *&v731[8] = 0;
          re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move(v731, (v51 + 64));
          re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move((v51 + 64), &__src[1]);
          ++*(v51 + 72);
          re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move(&__src[1], v731);
          ++DWORD2(__src[1]);
          re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(v731);
          *v731 = *(v51 + 6992);
          *(v51 + 6992) = 0u;
          *&v731[16] = *(v51 + 7008);
          *(v51 + 7008) = 0;
          *&v731[24] = *(v51 + 7016);
          *(v51 + 7016) = xmmword_1E3058120;
          *&v731[40] = 1;
          re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(v51 + 6992, v715);
          re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(v715, v731);
          re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v731);
        }

        re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashTable(__src);
      }

      *(v51 + 7040) = 0;
      if (v673 <= v25 + 1)
      {
        v58 = v25 + 1;
      }

      else
      {
        v58 = v673;
      }

      v38 = v672;
      while (v58 - 1 != v25)
      {
        LODWORD(v25) = v25 + 1;
        if ((*(v672 + 32 * v25) & 0x80000000) != 0)
        {
          goto LABEL_72;
        }
      }

      LODWORD(v25) = v58;
LABEL_72:
      if (v25 == v610)
      {
        goto LABEL_37;
      }
    }

    LODWORD(v47) = 0;
LABEL_50:
    v49 = re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v664, v47, v46);
    v50 = *v42;
    *(v49 + 16) = *&__src[0];
    v51 = v49 + 16;
    *(v49 + 8) = v50;
    *&__src[0] = 0;
    *(v49 + 24) = *(__src + 8);
    *(__src + 8) = 0u;
    *(v49 + 48) = v682;
    *&v682 = 0;
    ++DWORD2(__src[1]);
    *(v49 + 40) = 1;
    re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::SmallHashTable(v49 + 64);
    *(v51 + 7040) = v722;
    *(v51 + 7048) = v723;
    v723 = 0;
    *(v51 + 7056) = v724;
    v724 = 0u;
    ++v725;
    *(v51 + 7080) = v726;
    *(v51 + 7072) = 1;
    v52 = v727;
    v727 = 0u;
    *(v51 + 7096) = v52;
    v726 = 0u;
    *(v51 + 7120) = v729;
    v729 = 0;
    ++v728;
    *(v51 + 7112) = 1;
    *(v51 + 7128) = v730;
    v53 = &v667 + 1;
    v44 = HIDWORD(v667);
    goto LABEL_51;
  }

LABEL_37:
  v28 = v7;
  v29 = (*(**(*(v7 + 72) + 40) + 32))(*(*(v7 + 72) + 40));
  v30 = re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(v29);
  v660 = 0u;
  v661 = 0u;
  v662 = 0;
  v663 = 0x7FFFFFFFLL;
  v32 = v673;
  v508 = v30;
  if (v673)
  {
    v33 = 0;
    v34 = v672;
    v35 = v13;
    while (1)
    {
      v36 = *v34;
      v34 += 8;
      if (v36 < 0)
      {
        break;
      }

      if (v673 == ++v33)
      {
        LODWORD(v33) = v673;
        break;
      }
    }

    v37 = v602;
  }

  else
  {
    LODWORD(v33) = 0;
    v37 = v602;
    v35 = v13;
  }

  if (v33 != v673)
  {
    v59 = v672;
    do
    {
      v60 = v59 + 32 * v33;
      LODWORD(v682) = 0;
      memset(__src, 0, sizeof(__src));
      *(&v682 + 4) = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v660, (v60 + 8), __src);
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(__src);
      if (v673 <= v33 + 1)
      {
        v61 = v33 + 1;
      }

      else
      {
        v61 = v673;
      }

      v59 = v672;
      while (v61 - 1 != v33)
      {
        LODWORD(v33) = v33 + 1;
        if ((*(v672 + 32 * v33) & 0x80000000) != 0)
        {
          goto LABEL_90;
        }
      }

      LODWORD(v33) = v61;
LABEL_90:
      ;
    }

    while (v33 != v32);
  }

  v62 = v571;
  v63 = *(v571 + 14);
  if (v63)
  {
    v64 = re::RenderFrameBox::get((v63 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v64 = 0;
  }

  v605 = v64;
  re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v35, 0, v64, &v659);
  if (!re::s_debugSettingsManager)
  {
    goto LABEL_99;
  }

  *&__src[0] = 0x24602E277FE387A2;
  *(&__src[0] + 1) = "perceptualBlendingMode";
  *v731 = 0;
  v65 = re::DebugSettingsManager::getWithErrorCode<int>(re::s_debugSettingsManager, __src, v731);
  if (v65)
  {
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

LABEL_99:
    if ((atomic_load_explicit(&qword_1EE1A5F88, memory_order_acquire) & 1) == 0)
    {
      v496 = __cxa_guard_acquire(&qword_1EE1A5F88);
      if (v496)
      {
        __cxa_guard_release(&qword_1EE1A5F88);
      }
    }

    if (re::internal::perceptual_alpha::never_use_this::g_enablePerceptualAlpha)
    {
      v66 = 2;
    }

    else
    {
      v66 = 0;
    }

    v513 = v66;
    goto LABEL_104;
  }

  v513 = *v731;
  if (__src[0])
  {
    if (__src[0])
    {
    }
  }

LABEL_104:
  v67 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(__src, v37, 0);
  v656 = v598;
  v657 = *&__src[0];
  v658 = DWORD2(__src[0]);
  if (*&__src[0] != v37 || DWORD2(__src[0]) != 0xFFFFFFFFLL)
  {
    v72 = 1.0e-10;
    while (1)
    {
      v73 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v656);
      v655 = *(v73 + 16);
      v75 = re::AssetHandle::loadedAsset<re::MeshAsset>((v73 + 32));
      v76 = *(v73 + 248);
      v614 = v73;
      if (!v76)
      {
        goto LABEL_120;
      }

      v77 = *(v76 + 152);
      if (v77)
      {
        v78 = *(v76 + 168);
        v79 = 16 * v77;
        while (1)
        {
          uuid_copy(v731, v78);
          if (re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::contains(v28 + 24, v731))
          {
            break;
          }

          v78 += 16;
          v79 -= 16;
          if (!v79)
          {
            goto LABEL_119;
          }
        }

        inited = objc_initWeak(&location, 0);
        *&v682 = 0;
        memset(__src, 0, sizeof(__src));
        *(&__src[1] + 1) = re::globalAllocators(inited)[2];
        *&v682 = 0;
        re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset((v614 + 240), &location, 0, __src);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(__src);
        objc_destroyWeak(&location);
        location = 0;
      }

LABEL_119:
      v73 = v614;
      v81 = *(v614 + 248);
      if (!v81)
      {
LABEL_120:
        updated = re::ecs2::MeshComponent::updateMaterialData(v73, *(v28 + 72), v75, v655, v74);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v28 + 24);
        if (!updated)
        {
          v98 = v656;
          v99 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v657);
          re::ecs2::ComponentBucketsBase::moveComponent(*(v560 + 16), v98, v99, *(v560 + 32));
          goto LABEL_246;
        }

        v81 = *(v73 + 248);
      }

      if (*(v81 + 204))
      {
        v83 = *(v62 + 3);
        *&__src[0] = *(v655 + 39);
        *v731 = v81 + 176;
        re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(v83 + 1200, __src, v731);
      }

      v84 = *(v73 + 160);
      v85 = *(v84 + 8);
      v86 = *(v84 + 16);
      InstanceCounts = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (InstanceCounts)
      {
        v88 = InstanceCounts;
        InstanceDataBuffers = re::ecs2::MeshPartInstancesComponent::getInstanceDataBuffers(InstanceCounts, v608);
        v600 = v89;
        InstanceCounts = re::ecs2::MeshPartInstancesComponent::getInstanceCounts(v88, v608);
        v91 = InstanceCounts;
        v599 = v90;
        v92 = v85 >= v90 ? v90 : v85;
        if (v92)
        {
          v93 = 0;
          for (i = 0; i != v92; ++i)
          {
            v95 = *&v86[8 * i];
            v96 = *(v95 + 448);
            v97 = *(v95 + 452);
            if (v96 > v97)
            {
              v97 = v96;
            }

            v93 += *(InstanceCounts + i) * v97;
          }

          v73 = v614;
          if (v93 >= 0x989681)
          {
LABEL_245:
            v37 = v602;
            goto LABEL_246;
          }
        }

        else
        {
          v73 = v614;
        }
      }

      else
      {
        InstanceDataBuffers = 0;
        v600 = 0;
        v91 = 0;
        v599 = 0;
      }

      v100 = *(v73 + 160);
      v102 = v100[4];
      v101 = v100[5];
      v583 = v100[8];
      v582 = v100[7];
      if (re::DeformerFeatureFlags::enableLowLevelMeshDeformations(InstanceCounts))
      {
        v103 = *(v655 + 49);
        if (!*(v655 + 49))
        {
          break;
        }

        v104 = (re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 16);
        v105 = *(v655 + 13);
        v106 = vld1q_dup_s16(v104);
        v107 = 1;
        while (1)
        {
          v108 = vandq_s8(vceqq_s16(v106, *v105), xmmword_1E306AC00);
          v108.i16[0] = vmaxvq_u16(v108);
          if (v108.i32[0])
          {
            break;
          }

          v107 -= 8;
          ++v105;
          if (!--v103)
          {
            goto LABEL_169;
          }
        }

        if (v108.u16[0] - v107 >= *(v655 + 48))
        {
          break;
        }
      }

      v109 = *(v655 + 25);
      if (!v109)
      {
        goto LABEL_219;
      }

      v595 = *(v109 + 440);
      if (!v595)
      {
        goto LABEL_219;
      }

      v576 = v102;
      v578 = v101;
      v588 = v85;
      v580 = v91;
      v611 = *(v62 + 18);
      v110 = *(v73 + 160);
      v111 = v110[1];
      v591 = v110[5];
      v603 = v110[4];
      v650.i64[0] = v110[2];
      v650.i64[1] = v111;
      v112 = *(v73 + 360);
      if (v112 && v112[9] == v111 && v112[14] == v603)
      {
        v28 = v607;
        if (!v603)
        {
          goto LABEL_216;
        }

        v91 = 0;
        while (1)
        {
          m = v112[14];
          if (m <= v91)
          {
            goto LABEL_645;
          }

          v114 = (v591 + 96 * v91);
          v115 = (v112[16] + 96 * v91);
          if (v114->i64[0] != v115->i64[0])
          {
            break;
          }

          v116 = v114->u64[1];
          if (v116 != v115->i64[1] || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v114[2], v115[2]), vceqq_f32(v114[1], v115[1])), vandq_s8(vceqq_f32(v114[3], v115[3]), vceqq_f32(v114[4], v115[4])))) & 0x80000000) == 0)
          {
            break;
          }

          v117 = re::Slice<re::internal::BindPointImplBase const*>::range(&v650, v114->i64[0], v116);
          m = v118;
          v119 = v112[9];
          *&__src[0] = v112[11];
          *(&__src[0] + 1) = v119;
          v121 = re::Slice<re::internal::BindPointImplBase const*>::range(__src, v115->i64[0], v115->u64[1]);
          v122 = v120;
          if (v91 >= *(v595 + 8))
          {
            v125 = 0;
            v124 = 0;
            if (m)
            {
LABEL_160:
              for (j = 0; j != m; ++j)
              {
                if (j >= v125 || (v127 = v124, !*v124))
                {
                  v127 = (v117 + 8 * j);
                }

                if (v122 == j)
                {
                  goto LABEL_642;
                }

                if (!re::AttributeTable::operator==(*(v121 + 8 * j), *v127))
                {
                  goto LABEL_172;
                }

                ++v124;
              }
            }
          }

          else
          {
            v123 = *(v595 + 16) + 24 * v91;
            v125 = *(v123 + 8);
            v124 = *(v123 + 16);
            if (m)
            {
              goto LABEL_160;
            }
          }

          ++v91;
          v28 = v607;
          if (v91 == v603)
          {
            goto LABEL_216;
          }
        }
      }

LABEL_172:
      v136 = *(v595 + 8);
      v28 = v607;
      v91 = v580;
      v85 = v588;
      v101 = v578;
      v102 = v576;
      v73 = v614;
      if (v136)
      {
        v137 = 0;
        v138 = *(v595 + 16);
        v139 = v138 + 24 * v136;
        do
        {
          while (1)
          {
            v140 = *(v138 + 8);
            if (!v140)
            {
              break;
            }

            v141 = *(v138 + 16);
            v142 = 8 * v140;
            while (!*v141)
            {
              ++v141;
              v142 -= 8;
              if (!v142)
              {
                goto LABEL_178;
              }
            }

            v138 += 24;
            v137 = 1;
            if (v138 == v139)
            {
              goto LABEL_183;
            }
          }

LABEL_178:
          v138 += 24;
        }

        while (v138 != v139);
        if ((v137 & 1) == 0)
        {
          goto LABEL_218;
        }

LABEL_183:
        v143 = objc_initWeak(&v646, (v611 + 8));
        v144 = re::globalAllocators(v143);
        v145 = (*(*v144[2] + 32))(v144[2], 136, 8);
        *(v145 + 32) = 0u;
        *(v145 + 48) = 0u;
        *(v145 + 64) = 0u;
        *(v145 + 80) = 0u;
        *(v145 + 96) = 0u;
        *(v145 + 112) = 0u;
        *v145 = 0u;
        *(v145 + 16) = 0u;
        *(v145 + 16) = 1;
        *(v145 + 24) = 0;
        *(v145 + 32) = 0;
        *(v145 + 40) = 0;
        *(v145 + 48) = 0;
        *(v145 + 56) = 0;
        *(v145 + 64) = 0;
        *(v145 + 72) = 0;
        *(v145 + 80) = 0;
        *(v145 + 128) = 0;
        *(v145 + 120) = 0;
        *(v145 + 104) = 0u;
        *(v145 + 88) = 0u;
        memset(__src, 0, 24);
        *(&__src[1] + 1) = re::globalAllocators(v145)[2];
        *&v682 = 0;
        re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::reset((v614 + 352), &v646, v145, __src);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(__src);
        objc_destroyWeak(&v646);
        *&v646 = 0;
        v146 = *(v614 + 360);
        re::StackScratchAllocator::StackScratchAllocator(__src);
        LODWORD(v763) = 0;
        v762 = 0u;
        v761 = 0u;
        *(&v763 + 4) = 0x7FFFFFFFLL;
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v761, __src, 2 * v650.i32[2]);
        v147 = v595;
        if (v603)
        {
          for (k = 0; k != v603; k = (k + 1))
          {
            v149 = v591 + 96 * k;
            m = re::Slice<re::internal::BindPointImplBase const*>::range(&v650, *v149, *(v149 + 8));
            v122 = v150;
            if (k >= *(v147 + 8))
            {
              v612 = 0;
              v91 = 0;
            }

            else
            {
              v151 = *(v147 + 16) + 24 * k;
              v91 = *(v151 + 8);
              v612 = *(v151 + 16);
            }

            v152 = *(v146 + 72);
            v153 = v152;
            if (v150)
            {
              v584 = *(v146 + 72);
              v586 = v591 + 96 * k;
              v589 = k;
              v154 = 0;
              do
              {
                v155 = *(m + 8 * v154);
                if (v154 < v91 && (v156 = *(v612 + 8 * v154)) != 0)
                {
                  v157 = *(v146 + 40);
                  j = *(v146 + 8);
                  if (v157 + 1 > 8 * j)
                  {
                    re::BucketArray<re::MeshPart,8ul>::setBucketsCapacity(v146, (v157 + 8) >> 3);
                    j = *(v146 + 8);
                  }

                  if (j <= v157 >> 3)
                  {
                    *&v630.var0 = 0;
                    memset(v731, 0, 80);
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v676 = 136315906;
                    *&v676[4] = "operator[]";
                    v677 = 1024;
                    *v678 = 858;
                    *&v678[4] = 2048;
                    *&v678[6] = v157 >> 3;
                    *&v678[14] = 2048;
                    *&v678[16] = j;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_631:
                    re::internal::assertLog(6, v165, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, j, v165);
                    _os_crash();
                    __break(1u);
LABEL_632:
                    *&v630.var0 = 0;
                    memset(v731, 0, 80);
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v676 = 136315906;
                    *&v676[4] = "operator[]";
                    v677 = 1024;
                    *v678 = 476;
                    *&v678[4] = 2048;
                    *&v678[6] = j;
                    *&v678[14] = 2048;
                    *&v678[16] = v157;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_633:
                    re::internal::assertLog(6, v172, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, j, v172);
                    _os_crash();
                    __break(1u);
LABEL_634:
                    *&v630.var0 = 0;
                    memset(v731, 0, 80);
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v676 = 136315906;
                    *&v676[4] = "operator[]";
                    v677 = 1024;
                    *v678 = 476;
                    *&v678[4] = 2048;
                    *&v678[6] = j;
                    *&v678[14] = 2048;
                    *&v678[16] = v157;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_635:
                    *&v761 = 0;
                    memset(v683, 0, 32);
                    v682 = 0u;
                    memset(__src, 0, sizeof(__src));
                    v325 = MEMORY[0x1E69E9C10];
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v731 = 136315906;
                    *&v731[4] = "operator[]";
                    *&v731[12] = 1024;
                    *&v731[14] = 468;
                    *&v731[18] = 2048;
                    *&v731[20] = m;
                    *&v731[28] = 2048;
                    *&v731[30] = j;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_636:
                    re::internal::assertLog(6, v326, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v325, v157);
                    _os_crash();
                    __break(1u);
LABEL_637:
                    *v676 = 0;
                    memset(v683, 0, 32);
                    v682 = 0u;
                    memset(__src, 0, sizeof(__src));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v731 = 136315906;
                    *&v731[4] = "operator[]";
                    *&v731[12] = 1024;
                    *&v731[14] = 858;
                    *&v731[18] = 2048;
                    *&v731[20] = v157;
                    *&v731[28] = 2048;
                    *&v731[30] = v91;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_638:
                    re::internal::assertLog(4, v475, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                    _os_crash();
                    __break(1u);
LABEL_639:
                    m = v480 >> 2;
                    *v676 = 0;
                    memset(v683, 0, 32);
                    v682 = 0u;
                    memset(__src, 0, sizeof(__src));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v731 = 136315906;
                    *&v731[4] = "operator[]";
                    *&v731[12] = 1024;
                    *&v731[14] = 858;
                    *&v731[18] = 2048;
                    *&v731[20] = m;
                    *&v731[28] = 2048;
                    *&v731[30] = v91;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_640:
                    re::internal::assertLog(4, v364, "assertion failure: '%s' (%s:line %i) ", "referencingPortalComponent != nullptr", "processUpdatingComponents", 2906);
                    _os_crash();
                    __break(1u);
LABEL_641:
                    *&v761 = 0;
                    memset(v683, 0, 32);
                    v682 = 0u;
                    memset(__src, 0, sizeof(__src));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v731 = 136315906;
                    *&v731[4] = "operator[]";
                    *&v731[12] = 1024;
                    *&v731[14] = 468;
                    *&v731[18] = 2048;
                    *&v731[20] = m;
                    *&v731[28] = 2048;
                    *&v731[30] = j;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_642:
                    re::internal::assertLog(6, v120, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v122, v122);
                    _os_crash();
                    __break(1u);
LABEL_643:
                    re::internal::assertLog(6, v208, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, j);
                    _os_crash();
                    __break(1u);
LABEL_644:
                    re::internal::assertLog(4, v211, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                    _os_crash();
                    __break(1u);
LABEL_645:
                    *&v761 = 0;
                    memset(v683, 0, 32);
                    v682 = 0u;
                    memset(__src, 0, sizeof(__src));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v731 = 136315906;
                    *&v731[4] = "operator[]";
                    *&v731[12] = 1024;
                    *&v731[14] = 789;
                    *&v731[18] = 2048;
                    *&v731[20] = v91;
                    *&v731[28] = 2048;
                    *&v731[30] = m;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_646:
                    re::internal::assertLog(6, v455, v456, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
                    _os_crash();
                    __break(1u);
                  }

                  v158 = v146 + 24;
                  if ((*(v146 + 16) & 1) == 0)
                  {
                    v158 = *(v146 + 32);
                  }

                  v159 = *(v158 + 8 * (v157 >> 3));
                  ++*(v146 + 40);
                  ++*(v146 + 48);
                  v160 = v159 + 544 * (v157 & 7);
                  *(v160 + 256) = 0u;
                  *(v160 + 272) = 0u;
                  *(v160 + 224) = 0u;
                  *(v160 + 240) = 0u;
                  *(v160 + 192) = 0u;
                  *(v160 + 208) = 0u;
                  *(v160 + 160) = 0u;
                  *(v160 + 176) = 0u;
                  *(v160 + 128) = 0u;
                  *(v160 + 144) = 0u;
                  *(v160 + 96) = 0u;
                  *(v160 + 112) = 0u;
                  *(v160 + 64) = 0u;
                  *(v160 + 80) = 0u;
                  *(v160 + 32) = 0u;
                  *(v160 + 48) = 0u;
                  *v160 = 0u;
                  *(v160 + 16) = 0u;
                  *(v160 + 200) = 1;
                  *(v160 + 216) = 0;
                  *(v160 + 224) = 0;
                  *(v160 + 208) = 0;
                  *(v160 + 232) = 0;
                  *(v160 + 248) = 0;
                  *(v160 + 256) = 0;
                  *(v160 + 240) = 0;
                  *(v160 + 264) = 0;
                  *(v160 + 272) = 0u;
                  *(v160 + 288) = 0u;
                  *(v160 + 288) = 0u;
                  *(v160 + 304) = 0u;
                  *(v160 + 304) = 0;
                  *(v160 + 320) = 0;
                  *(v160 + 328) = 0;
                  *(v160 + 336) = 0;
                  *(v160 + 344) = 0;
                  *(v160 + 352) = xmmword_1E3047670;
                  *(v160 + 368) = xmmword_1E3047680;
                  *(v160 + 384) = xmmword_1E30476A0;
                  *(v160 + 400) = xmmword_1E30474D0;
                  v161.i64[0] = 0x7F0000007FLL;
                  v161.i64[1] = 0x7F0000007FLL;
                  *(v160 + 416) = vnegq_f32(v161);
                  *(v160 + 432) = v161;
                  v157 = (v160 + 460);
                  *(v160 + 456) = 0;
                  *(v160 + 448) = 0;
                  *(v160 + 458) = 0;
                  *(v160 + 488) = 0;
                  *(v160 + 496) = &str_67;
                  *(v160 + 512) = 0;
                  *(v160 + 520) = 3;
                  *(v160 + 524) = 0x180197E00000001;
                  *(v160 + 460) = -1;
                  *(v160 + 468) = -1;
                  *(v160 + 473) = -1;
                  re::FixedArray<re::StringID>::operator=((v160 + 328), v155 + 328);
                  v162 = *(v155 + 432);
                  *(v160 + 416) = *(v155 + 416);
                  *(v160 + 432) = v162;
                  *(v160 + 456) = *(v155 + 456);
                  *(v160 + 458) = *(v155 + 458);
                  v163 = *(v155 + 473);
                  *(v160 + 460) = *(v155 + 460);
                  *(v160 + 473) = v163;
                  re::StringID::operator=((v160 + 488), (v155 + 488));
                  *(v160 + 504) = *(v155 + 504);
                  *(v160 + 520) = *(v155 + 520);
                  *(v160 + 524) = *(v155 + 524);
                  *(v160 + 528) = *(v155 + 528);
                  *(v160 + 512) = *(v155 + 512);
                  *v160 = *v156;
                  re::FixedArray<re::VertexBufferFormat>::operator=((v160 + 16), (v156 + 2));
                  re::BufferTable::operator=(v160 + 40, (v156 + 5));
                  j = *(v155 + 460);
                  v164 = re::AttributeTable::buffers(v156);
                  if (v165 <= j)
                  {
                    goto LABEL_631;
                  }

                  v166 = *(v164 + 6 * j + 5);
                  v167 = v156;
                  do
                  {
                    v168 = v167;
                    v167 = *v167;
                    v157 = v168[3];
                    if (v167)
                    {
                      v169 = v157 == 0;
                    }

                    else
                    {
                      v169 = 0;
                    }
                  }

                  while (v169);
                  if (v157 <= j)
                  {
                    goto LABEL_632;
                  }

                  v170 = *(v168[4] + 8 * j);
                  *(v160 + 456) = v170 != 2;
                  *(v160 + 448) = v166 / v170;
                  j = *(v155 + 461);
                  v171 = re::AttributeTable::buffers(v156);
                  if (v172 <= j)
                  {
                    goto LABEL_633;
                  }

                  do
                  {
                    v173 = v156;
                    v156 = *v156;
                    v157 = v173[3];
                    if (v156)
                    {
                      v174 = v157 == 0;
                    }

                    else
                    {
                      v174 = 0;
                    }
                  }

                  while (v174);
                  if (v157 <= j)
                  {
                    goto LABEL_634;
                  }

                  *(v160 + 452) = *(v171 + 6 * j + 5) / *(v173[4] + 8 * j);
                  *v731 = v160;
                }

                else
                {
                  *v731 = *(m + 8 * v154);
                }

                re::DynamicArray<re::TransitionCondition *>::add((v146 + 56), v731);
                ++v154;
              }

              while (v154 != v122);
              v153 = *(v146 + 72);
              v147 = v595;
              k = v589;
              v149 = v586;
              v152 = v584;
            }

            *v731 = v152;
            *&v731[8] = v153;
            v175 = *(v149 + 16);
            v176 = *(v149 + 32);
            v177 = *(v149 + 64);
            *&v731[48] = *(v149 + 48);
            *&v731[64] = v177;
            *&v731[16] = v175;
            *&v731[32] = v176;
            *&v731[80] = 0;
            *&v731[88] = 0;
            re::DynamicArray<re::RigJoint>::add((v146 + 96), v731);
            v28 = v607;
          }
        }

        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v761);
        re::StackScratchAllocator::~StackScratchAllocator(__src);
LABEL_216:
        v73 = v614;
        v178 = *(v614 + 360);
        v132 = (v178 + 88);
        v133 = (v178 + 72);
        v134 = (v178 + 128);
        v135 = (v178 + 112);
        v62 = v571;
        v91 = v580;
LABEL_217:
        v86 = *v132;
        v85 = *v133;
        v101 = *v134;
        v102 = *v135;
        goto LABEL_219;
      }

LABEL_218:
      v179 = objc_initWeak(&v648, 0);
      memset(__src, 0, 24);
      *(&__src[1] + 1) = re::globalAllocators(v179)[2];
      *&v682 = 0;
      re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::reset((v614 + 352), &v648, 0, __src);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(__src);
      objc_destroyWeak(&v648);
      v62 = v571;
LABEL_219:
      HighestLightspillNodeRequirements = re::ecs2::getHighestLightspillNodeRequirements(*(v73 + 72), *(v73 + 88));
      if (HighestLightspillNodeRequirements)
      {
        v180 = *(v73 + 16);
        do
        {
          v181 = v180;
          v180 = *(v180 + 32);
        }

        while (v180);
        ReflectionContentComponent = re::ecs2::ImageBasedReflectionSystem::findReflectionContentComponent(*(v181 + 24), 0);
      }

      else
      {
        ReflectionContentComponent = 0;
      }

      (*(*v675 + 8))(__src);
      if (LOBYTE(__src[0]))
      {
        v182 = *(&__src[0] + 1);
      }

      else
      {
        v182 = 0;
      }

      v596 = v182;
      v604 = re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v664, v182);
      re::TransformService::worldMatrixForRendering(*(*(v28 + 72) + 288), v655, 1, &v650);
      re::ecs2::DynamicBoundingBoxComponent::lastKnownBoundsHelper(v655, &v648);
      re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v183 = *(v73 + 160);
      if (v183)
      {
        v184 = *(v183 + 96);
        v185 = v184;
        v592 = HIDWORD(v184);
      }

      else
      {
        v185 = 0;
        v592 = 0;
      }

      v186 = re::ecs2::MeshComponentHelper::clippingDataForMeshScene(v655, &v648, &v650, *(*(v28 + 72) + 896));
      if (BYTE5(v186))
      {
        goto LABEL_245;
      }

      v575 = v186;
      if ((atomic_load_explicit(&qword_1EE1A5F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F90))
      {
        re::Defaults::BOOLValue("VisualDepthCustomMaterial.enforceVisualDepthCustomMaterial", v463, __src);
        if (LOBYTE(__src[0]))
        {
          v464 = BYTE1(__src[0]);
        }

        else
        {
          v464 = 1;
        }

        _MergedGlobals_224 = v464;
        __cxa_guard_release(&qword_1EE1A5F90);
      }

      v187 = *(v28 + 72);
      if (_MergedGlobals_224 == 1)
      {
        v188 = *(v187 + 1000);
        if (v188)
        {
          v561 = (*(*v188 + 32))(v188, v655);
          v187 = *(v28 + 72);
        }

        else
        {
          v561 = 0;
        }
      }

      else
      {
        v561 = 1;
      }

      v189 = *(v187 + 912);
      if (v189)
      {
        (*(*v189 + 40))(__src);
        *&v731[20] = 1;
        *&v731[28] = 0;
        v190 = __src + 4;
        if (!LOBYTE(__src[0]))
        {
          v190 = v731;
        }

        v191 = *(v190 + 1);
        v646 = *v190;
        v647 = v191;
        v192 = *(*(v28 + 72) + 912);
        if (v192)
        {
          *&__src[0] = v606;
          *(&__src[0] + 1) = &v675;
          *&__src[1] = v655;
          *(&__src[1] + 1) = &v650;
          *&v682 = &v648;
          (*(*v192 + 48))(v731);
          v193 = v731[2];
          if (!v731[0])
          {
            v193 = 0;
          }

          v573 = v731[0] & v731[1];
          if (v731[0] && (v731[5] & 1) != 0)
          {
            goto LABEL_245;
          }
        }

        else
        {
          v573 = 0;
          v193 = 0;
        }
      }

      else
      {
        v573 = 0;
        v193 = 0;
        *(&v647 + 4) = 1;
        WORD6(v647) = 0;
      }

      v551 = v193;
      v563 = v185;
      _S15 = DWORD2(v647);
      re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(&v646);
      v196 = v195;
      re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(&v646);
      v198 = v197;
      re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(&v646);
      v200 = v199;
      v570 = re::ecs2::MeshComponentHelper::depthMitigationMaskForMeshScene(v655, *(*(v28 + 72) + 984));
      v201 = v655;
      v202 = *(v73 + 304);
      m = v202 + 104;
      v203 = v202 + 176;
      v204 = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      if (v204)
      {
        v205 = *(v204 + 96);
        if (v205)
        {
          m = v205 + 80;
        }

        v206 = *(v204 + 152);
        if (v206)
        {
          v203 = v206 + 40;
        }
      }

      v207 = re::ecs2::EntityComponentCollection::get((v201 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v207)
      {
        v209 = *(v207 + 160);
        m = v209 + 48;
        v203 = v209 + 120;
      }

      v546 = v203;
      v547 = m;
      v122 = *(v614 + 248);
      v613 = *(v122 + 30);
      v609 = *(v122 + 29);
      v544 = *(v122 + 32);
      v545 = *(v122 + 33);
      v542 = *(v122 + 35);
      v543 = *(v122 + 36);
      v540 = *(v122 + 41);
      v541 = *(v122 + 42);
      j = *(v122 + 38);
      v590 = v85;
      v579 = v101;
      v577 = v102;
      if (j)
      {
        if (j >> 61)
        {
          goto LABEL_643;
        }

        m = 8 * j;
        v210 = (*(*v608 + 32))(v608, 8 * j, 8);
        if (!v210)
        {
          goto LABEL_644;
        }

        v157 = v210;
        v212 = v210;
        if (j != 1)
        {
          v213 = m - 8;
          bzero(v210, v213);
          v212 = (v157 + v213);
        }

        *v212 = 0;
        v214 = *(v122 + 38);
        if (v214)
        {
          v215 = 0;
          for (m = 0; v214 != m; ++m)
          {
            v216 = (*(v122 + 39) + v215);
            if (*v216 || v216[1])
            {
              if (j <= m)
              {
                goto LABEL_635;
              }
            }

            else
            {
              if (j <= m)
              {
                goto LABEL_641;
              }

              v216 = 0;
            }

            *(v157 + m) = v216;
            v215 += 16;
          }
        }

        v538 = v157;
        (*(*v608 + 40))(v608, v157);
      }

      else
      {
        v538 = 0;
      }

      *v676 = *(v614 + 16);
      v217 = *(*(v28 + 72) + 232);
      *&__src[0] = 0;
      DWORD2(__src[0]) = 0;
      v218 = v217[3];
      v219 = *(*v676 + 312);
      HasSystemMaterialParameterBlock = re::MaterialManager::entityHasSystemMaterialParameterBlock(v218, v219);
      v221 = HasSystemMaterialParameterBlock;
      if (HasSystemMaterialParameterBlock)
      {
        v222 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v218, v219);
        if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v223))
        {
          v224 = *&__src[0];
          *(&__src[1] + *&__src[0]) = v222;
          *&__src[0] = v224 + 1;
          ++DWORD2(__src[0]);
        }
      }

      v539 = j;
      v225 = *(*(v28 + 72) + 952);
      if (v225)
      {
        v226 = (*(*v225 + 24))(v225, v606);
        v227 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v226, v676);
        if (v227)
        {
          v228 = re::ecs2::EntityHandle::resolve((*v227 + 32), v606);
          if (v228)
          {
            v229 = re::ecs2::EntityComponentCollection::get((v228 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v229)
            {
              v231 = v229;
              if (*(v229 + 152) == 1)
              {
                if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v230))
                {
                  v232 = *&__src[0];
                  *(&__src[1] + *&__src[0]) = v231 + 160;
                  *&__src[0] = v232 + 1;
                  ++DWORD2(__src[0]);
                }
              }
            }
          }
        }
      }

      v233 = *(v614 + 72);
      if (v233)
      {
        v234 = v91;
        v235 = 0;
        v236 = *(v614 + 88);
        v237 = (v236 + 24 * v233);
        do
        {
          v238 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v236);
          if (v238)
          {
            v239 = v238;
            v240 = *(*(v28 + 72) + 968);
            if (v240)
            {
              v241 = *(v238 + 1842);
              if (v241 == 7)
              {
                v242 = *(v238 + 1968);
                if (v242)
                {
                  v243 = (v242 + 8);
                  *(*(*(v607 + 72) + 968) + 165) |= re::sg::CachedCompilationMaterial::getHasTimeVaryingFeatures(v242);
                  v244 = (v242 + 8);
                  v28 = v607;
                }

                else
                {
                  *(v240 + 165) = 1;
                  v28 = v607;
                }
              }

              else if (v241 == 6)
              {
                *(v240 + 165) = 1;
              }
            }

            v245 = *(v239 + 392);
            if (v245)
            {
              v246 = *(v239 + 408);
              v247 = v246 + 272 * v245;
              do
              {
                v248 = 4 * *(v246 + 112) + 4;
                v249 = v235;
                do
                {
                  v235 = v249;
                  v249 = 1;
                  v248 -= 4;
                }

                while (v248);
                v246 += 272;
              }

              while (v246 != v247);
            }
          }

          v236 = (v236 + 24);
        }

        while (v236 != v237);
        v91 = v234;
        if (v235)
        {
          v250 = re::ecs2::TransformComponent::rootAnchorComponent(*v676);
          if (v250)
          {
            v251 = v250;
            v252 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v217[3], *(*v676 + 312));
            v630.var0 = v251[11];
            *&v761 = 0x284C61CF2B0;
            re::MaterialParameterBlock::setConstant(v252, &v761, 4uLL, &v630, 3, v731);
            *v731 = 0;
            if (!v221)
            {
              if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v253))
              {
                v254 = *&__src[0];
                *(&__src[1] + *&__src[0]) = v252;
                *&__src[0] = v254 + 1;
                ++DWORD2(__src[0]);
              }
            }
          }
        }
      }

      v255 = re::RenderManager::perFrameAllocator(v217);
      if (*&__src[0])
      {
        v256 = v614;
        if (*&__src[0] == 1)
        {
          v257 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(*&__src[1], v255);
        }

        else
        {
          v257 = re::MaterialParameterBlock::copyParametersFromArray(v255, &__src[1], *&__src[0]);
        }

        v537 = v257;
      }

      else
      {
        v537 = 0;
        v256 = v614;
      }

      v258 = *(v256 + 248);
      v535 = *(v258 + 8);
      v536 = *(v258 + 16);
      v533 = *(v258 + 32);
      v534 = *(v258 + 40);
      v531 = *(v258 + 64);
      v532 = *(v258 + 80);
      v529 = *(v258 + 104);
      v530 = *(v258 + 120);
      v528 = *(v258 + 128);
      v259 = v655;
      v260 = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v261 = v260;
      v262 = *(re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
      if (*(v606 + 28) <= v262)
      {
        v264 = v614;
      }

      else
      {
        v263 = *(*(v606 + 30) + 8 * v262);
        v264 = v614;
        if (v263 && !v260 && *(v263 + 384))
        {
          v265 = re::ecs2::ImageBasedReflectionSystem::findReflectionContentComponent(v606, 0);
          if (v265 && (v266 = v265, re::ecs2::EntityComponentCollection::get((v259 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)))
          {
            v261 = re::ecs2::EntityComponentCollection::get((*(v266 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          }

          else
          {
            v261 = 0;
          }
        }
      }

      v267 = v655;
      v268 = *(v655 + 4);
      if (!v268 || (*(v268 + 304) & 0x80) != 0)
      {
        v524 = 0;
      }

      else
      {
        v524 = re::ecs2::EntityComponentCollection::get((v268 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v267 = v655;
      }

      v269 = *(v267 + 28);
      v270 = *(v264 + 248);
      v527 = *(v270 + 368);
      if (v527 == 1)
      {
        v509 = *(v270 + 376);
      }

      v568 = *(v267 + 28);
      if (v269 && (*(v269 + 136) & 1) != 0)
      {
        v271 = 6;
      }

      else
      {
        v271 = *(v264 + 208);
      }

      v572 = v271;
      v645 = *(v264 + 224);
      v272 = *(*(v28 + 72) + 904);
      if (v272)
      {
        LODWORD(v273) = (*(*v272 + 24))(v272);
        v275 = v274;
      }

      else
      {
        v275 = 0;
        v273 = 1.0;
      }

      v276 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v264 + 432), v651), vceqq_f32(*(v264 + 416), v650)), vandq_s8(vceqq_f32(*(v264 + 448), v652), vceqq_f32(*(v264 + 464), v653))));
      if ((v276 & 0x80000000) == 0)
      {
        v277 = v651;
        *(v264 + 416) = v650;
        *(v264 + 432) = v277;
        v278 = v653;
        *(v264 + 448) = v652;
        *(v264 + 464) = v278;
      }

      v279 = v273;
      if (*(v264 + 480) == v273)
      {
        v280 = v276 >= 0;
      }

      else
      {
        *(v264 + 480) = v273;
        v280 = 1;
      }

      v526 = v273;
      if (*(v264 + 488) != v275)
      {
        *(v264 + 488) = v275;
        v280 = 1;
      }

      v281 = *(*(v28 + 72) + 968);
      if (v281)
      {
        re::FrameAnalysisManager::reportRenderedEntity(v281, v655, v280, v279 > 0.0);
      }

      v516 = re::ecs2::MeshComponentHelper::techniqueMappingOverlayNameHashForMeshScene((HIDWORD(v575) & 1), v279);
      v282 = v655;
      v283 = *(*(v28 + 72) + 920);
      *v731 = v655;
      v284 = (*(*v283 + 16))(v283);
      v285 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v282 ^ (v282 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v282 ^ (v282 >> 30))) >> 27));
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v284, v731, v285 ^ (v285 >> 31), __src);
      v286 = 1.0;
      if (HIDWORD(__src[0]) != 0x7FFFFFFF)
      {
        v286 = *(*(v284 + 16) + 32 * HIDWORD(__src[0]) + 16);
      }

      if (*(v655 + 33))
      {
        *&v523 = *(*(v264 + 248) + 360);
        *(&v523 + 1) = *(*(v264 + 248) + 352);
      }

      else
      {
        v523 = 0uLL;
      }

      v644 = *(v655 + 39);
      v287 = *(*(v28 + 72) + 936);
      *&__src[0] = v655;
      v288 = (*(*v287 + 16))(v287);
      v289 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v288, __src);
      if (v289)
      {
        v290 = *v289;
      }

      else
      {
        v290 = 1;
      }

      v522 = v290;
      v521 = *(v264 + 144);
      v291 = re::ecs2::MeshComponentHelper::environmentLightingWeightForMeshScene(v655, *(*(v28 + 72) + 928));
      v292 = *(*(v28 + 72) + 952);
      if (v292 && (v293 = (*(*v292 + 24))(v292, v606), (v294 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v293, &v655)) != 0) && (v295 = re::ecs2::EntityHandle::resolve((*v294 + 32), v606)) != 0)
      {
        v519 = re::ecs2::EntityComponentCollection::get((v295 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      else
      {
        v519 = 0;
      }

      v296 = *(*(v28 + 72) + 248);
      v297 = v655;
      v298 = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v299 = re::ecs2::EntityComponentCollection::get((v297 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v300 = 0;
      if (v298)
      {
        v301 = v614;
        if (v299)
        {
          if (v296)
          {
            (*(*v296 + 80))(__src, v296, v299 + 32, &v650);
          }

          else
          {
            __src[0] = xmmword_1E3047670;
            __src[1] = xmmword_1E3047680;
            v682 = xmmword_1E30476A0;
            v683[0] = xmmword_1E30474D0;
          }

          *&v678[1] = __src[0];
          *&v678[17] = __src[1];
          v679 = v682;
          v680 = v683[0];
          v300 = 1;
        }
      }

      else
      {
        v301 = v614;
      }

      v557 = v275;
      v520 = v300;
      v525 = v261;
      v581 = v91;
      v302 = *(v301 + 248);
      v91 = v302[384];
      v553 = v302[385];
      v574 = v302[386];
      v303 = *(*(v28 + 72) + 1008);
      v304 = v655;
      v305 = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
      v306 = re::ecs2::EntityComponentCollection::get((v304 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v306)
      {
        v307 = v306;
        v308 = *(v306 + 25);
        v309 = *(v306 + 26);
        v305 = *(v306 + 27);
        v310 = *(v306 + 28);
        v311 = *(v306 + 32);
        if (v303 && (v312 = (*(*v303 + 40))(v303, v304)) != 0)
        {
          v313 = *(v312 + 32);
        }

        else
        {
          LOBYTE(v313) = 0;
        }

        v157 = v609;
        v314 = *(v307 + 40);
        v315 = v314 & (1 << v313);
        if (v314)
        {
          v316 = v315 == 0;
        }

        else
        {
          v316 = 0;
        }

        if (v316)
        {
          v305 = 0;
        }

        v317 = (v310 << 24) | (v311 << 32);
        v318 = v309 << 8;
      }

      else
      {
        v308 = 0;
        v317 = 0x3F80000001000000;
        v318 = 256;
        v157 = v609;
      }

      if (v305)
      {
        v319 = 0x10000;
      }

      else
      {
        v319 = 0;
      }

      v320 = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicLightShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v320)
      {
        v321 = *(v320 + 25);
      }

      else
      {
        v321 = 1;
      }

      if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
      {
        dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
      }

      v548 = v321;
      if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1 && (v322 = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0)
      {
        v515 = *(v322 + 25);
      }

      else
      {
        v515 = 0;
      }

      v510 = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v518 = v510 != 0;
      v122 = v614;
      v323 = re::ecs2::MeshComponentHelper::renderPassGroupDataForMeshScene(v655, 0, *(*(v607 + 72) + 992), *(*(v614 + 248) + 387), &v659, *(v605 + 48));
      v566 = v323;
      *&v554[8] = v324;
      if (*(v614 + 72))
      {
        j = 0;
        v325 = 0;
        do
        {
          v323 = re::AssetHandle::isAnyDependencyMutated((*(v122 + 11) + j), __src);
          if (LOBYTE(__src[0]) == 1 && (BYTE1(__src[0]) & 1) != 0)
          {
            if (v157 <= v325)
            {
              goto LABEL_636;
            }

            atomic_store(1u, (*(v613 + 8 * v325) + 1448));
          }

          ++v325;
          v122 = v614;
          j += 24;
        }

        while (v325 < *(v614 + 72));
      }

      v327 = v604;
      v517 = v318 | v308 | v317 | v319;
      if (v517)
      {
        *(v604 + 7040) = 1;
      }

      v328 = *(*(v614 + 248) + 387);
      v329 = v644;
      v122 = v596;
      v330 = v553;
      if (v91)
      {
        *(v604 + 7128) = 1;
        __src[0] = v650;
        __src[1] = v651;
        v682 = v652;
        v683[0] = v653;
        v683[1] = v648;
        v683[2] = v649;
        *&v731[7] = v645;
        v331 = *(v604 + 883);
        v332 = *(v604 + 882);
        if (v331 >= v332)
        {
          v333 = v331 + 1;
          if (v332 < v331 + 1)
          {
            v334 = v328;
            if (*(v604 + 881))
            {
              v335 = 2 * v332;
              _ZF = v332 == 0;
              v336 = 8;
              if (!_ZF)
              {
                v336 = v335;
              }

              if (v336 <= v333)
              {
                v337 = v333;
              }

              else
              {
                v337 = v336;
              }

              re::DynamicArray<re::BlurPlaneData>::setCapacity(v604 + 881, v337);
              v327 = v604;
            }

            else
            {
              v330 = v553;
              re::DynamicArray<re::BlurPlaneData>::setCapacity(v604 + 881, v333);
              v327 = v604;
              ++*(v604 + 1768);
            }

            v328 = v334;
          }

          v331 = *(v327 + 883);
        }

        v346 = *(v327 + 885) + 144 * v331;
        *(v346 + 80) = v683[2];
        *(v346 + 64) = v683[1];
        *(v346 + 48) = v683[0];
        *(v346 + 32) = v682;
        *v346 = __src[0];
        *(v346 + 16) = __src[1];
        *(v346 + 96) = v329;
        *(v346 + 104) = v572;
        *(v346 + 105) = *v731;
        *(v346 + 120) = *&v731[15];
        *(v346 + 128) = v330;
        *(v346 + 129) = v574;
        ++*(v327 + 883);
        ++*(v327 + 1768);
        v338 = v566;
      }

      else
      {
        v338 = v566;
        if (v574)
        {
          __src[0] = v648;
          __src[1] = v649;
          v682 = v650;
          v683[0] = v651;
          v683[1] = v652;
          v683[2] = v653;
          *&v731[15] = v645;
          v339 = *(v604 + 888);
          v340 = *(v604 + 887);
          if (v339 >= v340)
          {
            v341 = v339 + 1;
            if (v340 < v339 + 1)
            {
              v342 = v328;
              if (*(v604 + 886))
              {
                v343 = 2 * v340;
                _ZF = v340 == 0;
                v344 = 8;
                if (!_ZF)
                {
                  v344 = v343;
                }

                if (v344 <= v341)
                {
                  v345 = v341;
                }

                else
                {
                  v345 = v344;
                }

                re::DynamicArray<re::BlurPlaneData>::setCapacity(v604 + 886, v345);
                v327 = v604;
              }

              else
              {
                v330 = v553;
                re::DynamicArray<re::BlurPlaneData>::setCapacity(v604 + 886, v341);
                v327 = v604;
                ++*(v604 + 1778);
              }

              v328 = v342;
            }

            v339 = *(v327 + 888);
            v338 = v566;
          }

          v462 = *(v327 + 890) + 144 * v339;
          *(v462 + 16) = __src[1];
          *v462 = __src[0];
          *(v462 + 80) = v683[2];
          *(v462 + 64) = v683[1];
          *(v462 + 48) = v683[0];
          *(v462 + 32) = v682;
          *(v462 + 96) = v572;
          *(v462 + 97) = *v731;
          *(v462 + 112) = *&v731[15];
          *(v462 + 128) = v329;
          ++*(v327 + 888);
          ++*(v327 + 1778);
          if (!v330)
          {
            goto LABEL_422;
          }

LABEL_421:
          *(v604 + 7129) = 1;
          goto LABEL_422;
        }
      }

      if (v330)
      {
        goto LABEL_421;
      }

LABEL_422:
      *v554 = v563 | (v592 << 32);
      *&__src[0] = &v660;
      *(&__src[0] + 1) = v596;
      __asm { FCVT            H15, S15 }

      *&__src[1] = &v648;
      *(&__src[1] + 1) = &v650;
      v552 = ((v551 << 8) >> 8) & 1;
      v562 = v514 & (v561 | v552);
      v615 = HIDWORD(v317);
      v351 = v548 & 1;
      *&v682 = v557;
      *(&v682 + 1) = v338;
      LOBYTE(v683[0]) = v554[8] & 1;
      BYTE1(v683[0]) = v328;
      v352 = v328;
      v353 = re::ecs2::MeshComponentHelper::addRenderPassGroupBoundsTable(__src);
      v28 = v607;
      v91 = (*(**(*(v607 + 72) + 944) + 24))(*(*(v607 + 72) + 944), v655, v353);
      if (!v568)
      {
        v356 = v352;
        var0 = 0;
        *&v630.var0 = 0;
        v358 = *(v607 + 72);
        v359 = v609;
        if (*(v358 + 256) && (((v563 ^ 0x180197E) & ~v592 | v592 & v563) & 0x80) != 0)
        {
          v360 = *(v358 + 992);
          *v731 = *(v358 + 928);
          *&v731[8] = v360;
          v361 = *(v358 + 984);
          *&v731[16] = *(v358 + 896);
          *&v731[24] = v361;
          v362 = *(v358 + 904);
          *&v731[72] = v655;
          *&v731[104] = v510;
          *(&v733 + 1) = v557;
          *&v731[392] = &v648;
          *&v732 = v546;
          *(&v732 + 1) = &v650;
          *&v733 = v526;
          *&v734 = __PAIR64__(v521, LODWORD(v286));
          DWORD2(v734) = v522;
          v735 = v566;
          v736 = &v659;
          v737 = *(v605 + 48);
          *v738 = (v563 ^ 0x180197E) & ~v592 | v592 & v563;
          *&v731[64] = &v675;
          *&v731[96] = v519;
          *&v731[32] = v362;
          *&v731[48] = v608;
          *&v731[56] = v606;
          *&v731[80] = v525;
          *&v731[88] = v524;
          v731[120] = 0;
          *&v731[112] = 0;
          *&v731[128] = v86;
          *&v731[136] = v590;
          *&v731[144] = v579;
          *&v731[152] = v577;
          *&v731[160] = v583;
          *&v731[168] = v582;
          *&v731[176] = v547;
          *&v731[184] = v581;
          *&v731[192] = v599;
          *&v731[200] = InstanceDataBuffers;
          *&v731[208] = v600;
          *&v731[216] = v536;
          *&v731[224] = v535;
          *&v731[232] = v534;
          *&v731[240] = v533;
          *&v731[248] = v532;
          *&v731[256] = v531;
          *&v731[264] = v530;
          *&v731[272] = v529;
          v731[280] = v528;
          *&v731[288] = v613;
          *&v731[296] = v609;
          *&v731[304] = v545;
          *&v731[312] = v544;
          *&v731[320] = v543;
          *&v731[328] = v542;
          *&v731[336] = v541;
          *&v731[344] = v540;
          *&v731[352] = v538;
          *&v731[360] = v539;
          *&v731[368] = v537;
          *&v731[376] = v523;
          *&v738[4] = v563 | (v592 << 32);
          v738[16] = v527;
          if (v527)
          {
            *&v738[24] = v509;
          }

          LOBYTE(v739) = v572;
          *(&v739 + 1) = &v645;
          LODWORD(v740) = v513;
          BYTE8(v740) = v520;
          if (v520)
          {
            *&v741[8] = *&v678[1];
            *&v741[24] = *&v678[17];
            v742 = v679;
            v743 = v680;
          }

          LOWORD(v744) = *&v554[7] & 0x100;
          BYTE2(v744) = v356;
          BYTE3(v744) = v554[9] & 1;
          DWORD1(v744) = v517 & 0x1010101;
          DWORD2(v744) = v615;
          WORD6(v744) = 0;
          BYTE14(v744) = v548 & 1;
          HIBYTE(v744) = v574;
          LOBYTE(v745) = v510 != 0;
          v746 = &v660;
          v363 = (*(*v675 + 40))(v675, v596);
          m = v363;
          j = *(v363 + 32);
          if (j)
          {
            v365 = 0;
            v366 = (*(v363 + 16) + 8);
            while (1)
            {
              v367 = *v366;
              v366 += 6;
              if (v367 < 0)
              {
                break;
              }

              if (j == ++v365)
              {
                LODWORD(v365) = *(v363 + 32);
                break;
              }
            }
          }

          else
          {
            LODWORD(v365) = 0;
          }

          if (v365 != j)
          {
            v392 = *(v363 + 16);
            do
            {
              v393 = *(v392 + 24 * v365 + 16);
              if (!v393)
              {
                goto LABEL_640;
              }

              v394 = *(v393 + 16);
              v395 = *(*(v28 + 72) + 288);
              v396 = *(v393 + 112);
              *(v629 + 5) = *(v393 + 96);
              v628 = v396;
              v397 = *(v393 + 129);
              (*(*v675 + 8))(__src);
              if (LOBYTE(__src[0]))
              {
                v398 = *(&__src[0] + 1);
              }

              else
              {
                v398 = 0;
              }

              v399 = re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v664, v398);
              if (v399)
              {
                v122 = v399;
                *&v761 = v394;
                *(&v761 + 1) = v398;
                v762 = *(v629 + 5);
                v763 = v628;
                v764 = v397;
                v765 = 0;
                v766 = &v630;
                v767 = v91;
                re::ecs2::MeshComponentHelper::generateSceneForPortalCrossing(v731, &v761, v395, __src);
                if (__src[1])
                {
                  v400 = &v682;
                }

                else
                {
                  v400 = *(&v682 + 1);
                }

                if (*(&__src[0] + 1))
                {
                  v401 = 736 * *(&__src[0] + 1);
                  do
                  {
                    if (*v122)
                    {
                      re::DynamicArray<re::MeshScene>::add(v122, v400);
                    }

                    v400 += 736;
                    v401 -= 736;
                  }

                  while (v401);
                }

                re::DynamicOverflowArray<re::MeshScene,2ul>::deinit(__src);
              }

              v402 = *(m + 32);
              v392 = *(m + 16);
              if (v402 <= v365 + 1)
              {
                v402 = v365 + 1;
              }

              v28 = v607;
              v359 = v609;
              while (v402 - 1 != v365)
              {
                LODWORD(v365) = v365 + 1;
                if ((*(v392 + 24 * v365 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_486;
                }
              }

              LODWORD(v365) = v402;
LABEL_486:
              ;
            }

            while (v365 != j);
          }

          var0 = v630.var0;
          v62 = v571;
          v354 = v590;
          v351 = v548 & 1;
        }

        else
        {
          v62 = v571;
          v354 = v590;
        }

        goto LABEL_539;
      }

      v629[0] = re::ecs2::PortalComponent::targetWorldRootToken(v568, *(*(v607 + 72) + 40));
      v62 = v571;
      v354 = v590;
      if (v629[0] != v596)
      {
        re::ecs2::WorldRootProvider::worldIds(&v675, __src);
        if (HIDWORD(v683[4]))
        {
          v355 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(&v683[3], v629);
          re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(__src);
          if (v355)
          {
            goto LABEL_445;
          }
        }

        else
        {
          v368 = &v682;
          v369 = (&v683[-1] + 8 * *&__src[1]);
          if (*&__src[1])
          {
            v370 = 8 * *&__src[1];
            while (*v368 != v629[0])
            {
              v368 = (v368 + 8);
              v370 -= 8;
              if (!v370)
              {
                goto LABEL_443;
              }
            }
          }

          else
          {
LABEL_443:
            v368 = (&v683[-1] + 8 * *&__src[1]);
          }

          re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(__src);
          if (v368 != v369)
          {
LABEL_445:
            v597 = v200;
            v371 = v198;
            v372 = v196;
            re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v606, v629[0], v605, &v630);
            v633[0] = v655;
            v633[1] = v525;
            v633[2] = v524;
            v633[3] = v519;
            v634 = v513;
            v635 = v570;
            v636 = v562;
            v637 = v552;
            v638 = v573;
            v639 = ReflectionContentComponent;
            v640 = HighestLightspillNodeRequirements != 0;
            v641 = v291;
            v642 = 0;
            v643 = v608;
            re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene(v633, &v761);
            v769.columns[1] = v651;
            v769.columns[2] = v652;
            v769.columns[0] = v650;
            v770 = __invert_f3(v769);
            v373 = vdupq_laneq_s32(v770.columns[1], 2);
            v374 = vzip1q_s32(vzip1q_s32(v770.columns[0], v770.columns[2]), v770.columns[1]);
            v770.columns[1] = vtrn2q_s32(v770.columns[0], v770.columns[1]);
            v770.columns[1].i32[2] = v770.columns[2].i32[1];
            v375 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v374, COERCE_FLOAT(*(v568 + 80))), v770.columns[1], *(v568 + 80), 1), vzip1q_s32(vzip2q_s32(v770.columns[0], v770.columns[2]), v373), *(v568 + 80), 2);
            v770.columns[1] = vmulq_f32(v375, v375);
            v376 = v770.columns[1].f32[2] + vaddv_f32(*v770.columns[1].f32);
            v567 = v72;
            v377 = xmmword_1E306DD20;
            if (fabsf(v376) >= v72)
            {
              v378 = v376;
              v379 = vrsqrte_f32(LODWORD(v376));
              v380 = vmul_f32(v379, vrsqrts_f32(LODWORD(v378), vmul_f32(v379, v379)));
              v377 = vmulq_n_f32(vnegq_f32(v375), vmul_f32(v380, vrsqrts_f32(LODWORD(v378), vmul_f32(v380, v380))).f32[0]);
            }

            v593 = v377;
            v564 = *(v568 + 64);
            v555 = v653;
            v558 = v652;
            v381 = *(v568 + 128);
            if (*(v568 + 128))
            {
              v382 = -1;
            }

            else
            {
              v382 = 0;
            }

            v383 = *(v568 + 132);
            v549 = v651;
            v384 = vmulq_f32(v650, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v652, v652, 0xCuLL), v652, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v651, v651), v651, 0xCuLL))), vextq_s8(vuzp1q_s32(v652, v652), v652, 0xCuLL), vextq_s8(vextq_s8(v651, v651, 0xCuLL), v651, 8uLL)));
            v511 = v650;
            v385 = vmulq_f32(v650, v650);
            v386 = sqrtf(v385.f32[2] + vaddv_f32(*v385.f32));
            if ((v384.f32[2] + vaddv_f32(*v384.f32)) <= 0.0)
            {
              v387 = -v386;
            }

            else
            {
              v387 = v386;
            }

            re::StringID::StringID(v731, &v630);
            *&v731[16] = v644;
            *&v731[32] = v86;
            *&v731[40] = v590;
            *&v731[48] = v581;
            *&v731[56] = v599;
            *&v731[64] = InstanceDataBuffers;
            *&v731[72] = v600;
            *&v731[80] = v579;
            *&v731[88] = v577;
            *&v731[96] = v583;
            *&v731[112] = v648;
            *&v731[128] = v649;
            *&v731[104] = v582;
            *&v731[144] = v547;
            *&v731[192] = v652;
            *&v731[208] = v653;
            *&v731[160] = v650;
            *&v731[176] = v651;
            *&v731[152] = v546;
            *&v731[224] = v613;
            *&v731[232] = v609;
            *&v731[240] = v536;
            *&v731[248] = v535;
            *&v731[256] = v534;
            *&v731[264] = v533;
            *&v731[272] = v532;
            *&v731[280] = v531;
            *&v731[288] = v530;
            v731[304] = v528;
            *&v731[296] = v529;
            *&v731[312] = v545;
            *&v731[320] = v544;
            *&v731[328] = v543;
            *&v731[336] = v542;
            *&v731[344] = v541;
            *&v731[352] = v540;
            *&v731[360] = v538;
            *&v731[368] = v539;
            *&v731[376] = v537;
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&v731[384], &v761);
            LODWORD(v735) = v575;
            LOBYTE(v736) = v527;
            if (v527)
            {
              v737 = v509;
            }

            v738[0] = v572;
            *&v738[8] = v645;
            *&v738[24] = v516;
            *&v739 = __PAIR64__(LODWORD(v286), LODWORD(v526));
            *(&v739 + 2) = v291;
            v740 = v523;
            *v741 = *v554;
            *&v741[8] = v644;
            *&v741[16] = v91;
            v741[18] = 0;
            *&v741[20] = v522;
            *&v741[24] = v521;
            v741[28] = v570;
            LOBYTE(v742) = 0;
            v745 = 0;
            v747 = v520;
            if (v520)
            {
              v748 = *&v678[1];
              v749 = *&v678[17];
              v750 = v679;
              v751 = v680;
            }

            v507 = vbslq_s8(vdupq_n_s32(v382), v593, v507);
            LOBYTE(v752) = v574;
            *(&v752 + 1) = v517 & 0x1010101;
            *(&v752 + 1) = __PAIR64__(v371, v615);
            *&v753 = __PAIR64__(v372, v597);
            WORD4(v753) = _H15;
            BYTE10(v753) = v573;
            *(&v753 + 11) = v351;
            BYTE13(v753) = v515 & 1;
            HIWORD(v753) = 0;
            LOBYTE(v754) = 0;
            HIBYTE(v754) = v518;
            v388 = (*(*v675 + 32))(v675, v629[0]);
            LOBYTE(v755) = v388;
            HIBYTE(v755) = *(v568 + 128);
            v756 = *(v568 + 132) > 0.0;
            v757 = v381;
            if (v381)
            {
              v389 = vaddq_f32(v555, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v511, v564.f32[0]), v549, *v564.f32, 1), v558, v564, 2));
              v758 = vdivq_f32(v389, vdupq_laneq_s32(v389, 3));
              v759 = v507;
            }

            v390 = v383 * v387;
            v760 = v390;
            if (*(v604 + 1755))
            {
              v391 = v604 + 6992;
              goto LABEL_461;
            }

            v403 = *(v604 + 8);
            v569 = (v604 + 64);
            if (!v403)
            {
              goto LABEL_511;
            }

            v404 = 864 * v403;
            v405 = (v604 + 80);
            v406 = 864 * v403;
            do
            {
              if (*v405 == v644)
              {
                goto LABEL_532;
              }

              v405 += 108;
              v406 -= 864;
            }

            while (v406);
            v407 = v604;
            if ((v403 & 0xFFFFFFF8) != 0)
            {
              v408 = v351;
              v391 = v604 + 6992;
              if (*(v604 + 874))
              {
LABEL_498:
                v410 = 0;
                do
                {
                  v411 = v407 + v410;
                  memset(__src, 0, 24);
                  v412 = (v407 + v410 + 80);
                  v413 = 0xBF58476D1CE4E5B9 * (*v412 ^ (*v412 >> 30));
                  re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(v391, v412, (0x94D049BB133111EBLL * (v413 ^ (v413 >> 27))) ^ ((0x94D049BB133111EBLL * (v413 ^ (v413 >> 27))) >> 31), __src);
                  if (HIDWORD(__src[0]) == 0x7FFFFFFF)
                  {
                    v414 = re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(v391, DWORD2(__src[0]), *&__src[0]);
                    *(v414 + 8) = *v412;
                    v415 = *(v411 + 12);
                    *(v414 + 16) = *(v414 + 16) & 0xFFFFFFFFFFFFFFFELL | v415 & 1;
                    *(v414 + 16) = *(v411 + 12) & 0xFFFFFFFFFFFFFFFELL | v415 & 1;
                    *(v414 + 24) = *(v411 + 13);
                    *(v411 + 12) = 0;
                    *(v411 + 13) = &str_67;
                    *(v414 + 32) = *(v411 + 14);
                    memcpy((v414 + 48), v411 + 128, 0x160uLL);
                    *(v414 + 400) = 0u;
                    *(v414 + 416) = 0u;
                    *(v414 + 432) = 0u;
                    *(v414 + 448) = 0u;
                    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v414 + 400), v411 + 60);
                    *(v414 + 464) = *(v411 + 136);
                    v416 = v411[552];
                    *(v414 + 472) = v416;
                    if (v416 == 1)
                    {
                      *(v414 + 480) = *(v604 + v410 + 560);
                    }

                    v417 = v604 + v410;
                    v418 = *(v604 + v410 + 584);
                    *(v414 + 488) = *(v604 + v410 + 568);
                    *(v414 + 504) = v418;
                    v419 = *(v604 + v410 + 600);
                    v420 = *(v604 + v410 + 616);
                    v421 = *(v604 + v410 + 632);
                    *(v414 + 565) = *(v604 + v410 + 645);
                    *(v414 + 536) = v420;
                    *(v414 + 552) = v421;
                    *(v414 + 520) = v419;
                    v422 = *(v604 + v410 + 672);
                    *(v414 + 592) = v422;
                    if (v422 == 1)
                    {
                      v423 = *(v417 + 44);
                      *(v414 + 608) = *(v417 + 43);
                      *(v414 + 624) = v423;
                    }

                    *(v414 + 640) = *(v417 + 90);
                    v424 = v417[736];
                    *(v414 + 656) = v424;
                    if (v424 == 1)
                    {
                      v425 = *(v604 + v410 + 752);
                      v426 = *(v604 + v410 + 768);
                      v427 = *(v604 + v410 + 800);
                      *(v414 + 704) = *(v604 + v410 + 784);
                      *(v414 + 720) = v427;
                      *(v414 + 672) = v425;
                      *(v414 + 688) = v426;
                    }

                    v428 = v604 + v410;
                    v429 = *(v604 + v410 + 816);
                    v430 = *(v604 + v410 + 832);
                    *(v414 + 768) = *(v604 + v410 + 848);
                    *(v414 + 736) = v429;
                    *(v414 + 752) = v430;
                    v431 = *(v604 + v410 + 866);
                    *(v414 + 784) = *(v604 + v410 + 864);
                    *(v414 + 786) = v431;
                    v432 = *(v604 + v410 + 880);
                    *(v414 + 800) = v432;
                    if (v432 == 1)
                    {
                      v433 = *(v428 + 57);
                      *(v414 + 816) = *(v428 + 56);
                      *(v414 + 832) = v433;
                    }

                    *(v414 + 848) = *(v428 + 232);
                    ++*(v604 + 1758);
                    v354 = v590;
                  }

                  v410 += 864;
                  v407 = v604;
                }

                while (v404 != v410);
              }

              else
              {
                v409 = *(v604 + 6);
                if (!v409)
                {
                }

                re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v391, v409, 16);
                v407 = v604;
                if (*v569)
                {
                  v404 = 864 * *v569;
                  goto LABEL_498;
                }
              }

              re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(v569);
              v351 = v408;
LABEL_461:
              re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addNew(v391, &v644, v731);
            }

            else
            {
LABEL_511:
              v594 = v351;
              v434 = *&v731[8];
              *&__src[0] = v644;
              v565 = *v731;
              *&__src[1] = *v731;
              *&v731[8] = &str_67;
              *v731 = 0;
              v559 = v434;
              *(&__src[1] + 1) = v434;
              v556 = *&v731[16];
              *&v682 = *&v731[16];
              memcpy(v683, &v731[32], sizeof(v683));
              v550 = *&v731[384];
              v512 = *&v731[392];
              v684 = *&v731[384];
              v504 = *(&v734 + 1);
              v506 = v734;
              v687 = v734;
              v505 = *(&v732 + 1);
              v503 = v732;
              v685 = v732;
              *&v731[384] = 0u;
              v732 = 0u;
              v500 = *(&v733 + 1);
              v502 = v733;
              v686 = v733;
              v733 = 0u;
              v734 = 0u;
              v501 = v735;
              LODWORD(v688) = v735;
              LOBYTE(v689) = v736;
              v436 = v736;
              if (v736 == 1)
              {
                v498 = v737;
                v691 = v737;
              }

              v694 = v739;
              v695 = v740;
              *v696 = *v741;
              *&v696[13] = *&v741[13];
              v692 = *v738;
              v693 = *&v738[16];
              v437 = v742;
              LOBYTE(v697) = v742;
              if (v742 == 1)
              {
                v698 = v743;
                v699 = v744;
              }

              v499 = v745;
              *&v700 = v745;
              LOBYTE(v701) = v747;
              v438 = v747;
              if (v747 == 1)
              {
                v702 = v748;
                v703 = v749;
                v704 = v750;
                v705 = v751;
              }

              v706 = v752;
              v707 = v753;
              v708 = v754;
              v709 = v755;
              v710 = v756;
              v711 = v381;
              if (v381)
              {
                v712 = v758;
                v713 = v759;
              }

              v714 = v390;
              v439 = *v569;
              if (*v569 >= 8)
              {
                re::internal::assertLog(4, v435, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
                result = _os_crash();
                __break(1u);
                return result;
              }

              v440 = v604 + 864 * v439;
              *(v440 + 10) = v644;
              v441 = v440 + 80;
              *(v441 + 2) = v565;
              *(v441 + 3) = v559;
              *(&__src[1] + 1) = &str_67;
              *&__src[1] = 0;
              *(v441 + 4) = v556;
              memcpy(v441 + 48, v683, 0x160uLL);
              *(v441 + 57) = v504;
              *(&v687 + 1) = 0;
              *(v441 + 50) = v550;
              *&v684 = 0;
              *(v441 + 51) = v512;
              *(&v684 + 1) = 0;
              *(v441 + 52) = v503;
              *&v685 = 0;
              *(v441 + 55) = v500;
              *(&v686 + 1) = 0;
              *(v441 + 56) = v506;
              *&v687 = 0;
              *(v441 + 53) = v505;
              *(&v685 + 1) = 0;
              *(v441 + 54) = v502;
              *&v686 = 0;
              *(v441 + 116) = v501;
              v441[472] = v436;
              if (v436)
              {
                *(v441 + 60) = v498;
              }

              v442 = v693;
              *(v441 + 488) = v692;
              *(v441 + 504) = v442;
              v443 = v694;
              v444 = v695;
              v445 = *v696;
              *(v441 + 565) = *&v696[13];
              *(v441 + 536) = v444;
              *(v441 + 552) = v445;
              *(v441 + 520) = v443;
              v441[592] = v437;
              if (v437)
              {
                v446 = v699;
                *(v441 + 38) = v698;
                *(v441 + 39) = v446;
              }

              *(v441 + 80) = v499;
              v441[656] = v438;
              v351 = v594;
              if (v438)
              {
                v447 = v702;
                v448 = v703;
                v449 = v705;
                *(v441 + 44) = v704;
                *(v441 + 45) = v449;
                *(v441 + 42) = v447;
                *(v441 + 43) = v448;
              }

              v450 = v706;
              v451 = v707;
              *(v441 + 384) = v708;
              *(v441 + 46) = v450;
              *(v441 + 47) = v451;
              v452 = v709;
              v441[786] = v710;
              *(v441 + 392) = v452;
              v441[800] = v381;
              if (v381)
              {
                v453 = v713;
                *(v441 + 51) = v712;
                *(v441 + 52) = v453;
              }

              *(v441 + 212) = v390;
              *(v604 + 8) = v439 + 1;
              ++*(v604 + 18);
              v456 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v684);
              if (__src[1])
              {
                if (__src[1])
                {
                }
              }

              v28 = v607;
              v354 = v590;
              if (!*v569)
              {
                goto LABEL_646;
              }
            }

LABEL_532:
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v731[384]);
            if (v731[0])
            {
              if (v731[0])
              {
              }
            }

            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v761);
            v62 = v571;
            v72 = v567;
            v196 = v372;
            v359 = v609;
            if (*&v630.var0)
            {
              if (*&v630.var0)
              {
              }
            }

            var0 = 0;
            *&v630.var0 = 0;
            v198 = v371;
            v200 = v597;
LABEL_539:
            v616[0] = v655;
            v616[1] = v525;
            v616[2] = v524;
            v616[3] = v519;
            v617 = v513;
            v618 = v570;
            v619 = v562;
            v620 = v552;
            v621 = v573;
            v622 = ReflectionContentComponent;
            v623 = HighestLightspillNodeRequirements != 0;
            v624 = v291;
            v625 = var0;
            if (var0)
            {
              v626 = 2;
            }

            v627 = v608;
            v459 = re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene(v616, v731);
            v460 = v655;
            if (v655)
            {
              if (!re::LateLatch::shouldApplyAnchorLateLatching(v459))
              {
                goto LABEL_547;
              }

              v461 = re::ecs2::TransformComponent::rootAnchorComponent(v460);
              v460 = v461;
              if (v461)
              {
                if (re::ecs2::EntityComponentCollection::get((*(v461 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) && *(v460 + 184) == 1)
                {
                  LOBYTE(v460) = re::LateLatchingManager::trackAnchorPose(*(v62 + 23), *(v460 + 24), *(*(v62 + 18) + 24) & 0xFFFFFFFFFFFFFFFLL, v460 + 3);
                  goto LABEL_548;
                }

LABEL_547:
                LOBYTE(v460) = 0;
              }
            }

LABEL_548:
            *&__src[0] = v86;
            *(&__src[0] + 1) = v354;
            *&__src[1] = v581;
            *(&__src[1] + 1) = v599;
            *&v682 = InstanceDataBuffers;
            *(&v682 + 1) = v600;
            *&v683[0] = v579;
            *(&v683[0] + 1) = v577;
            *&v683[1] = v583;
            *(&v683[1] + 1) = v582;
            v683[2] = v648;
            v683[3] = v649;
            *&v683[4] = v547;
            *(&v683[4] + 1) = v546;
            v683[7] = v652;
            v683[8] = v653;
            v683[5] = v650;
            v683[6] = v651;
            *&v683[9] = v613;
            *(&v683[9] + 1) = v359;
            *&v683[10] = v536;
            *(&v683[10] + 1) = v535;
            *&v683[11] = v534;
            *(&v683[11] + 1) = v533;
            *&v683[12] = v532;
            *(&v683[12] + 1) = v531;
            *&v683[13] = v530;
            *(&v683[13] + 1) = v529;
            LOBYTE(v683[14]) = v528;
            *(&v683[14] + 1) = v545;
            *&v683[15] = v544;
            *(&v683[15] + 1) = v543;
            *&v683[16] = v542;
            *(&v683[16] + 1) = v541;
            *&v683[17] = v540;
            *(&v683[17] + 1) = v538;
            *&v683[18] = v539;
            *(&v683[18] + 1) = v537;
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&v683[19], v731);
            LODWORD(v685) = v575;
            BYTE8(v685) = v527;
            if (v527)
            {
              *&v686 = v509;
            }

            BYTE8(v686) = v572;
            v687 = v645;
            v688 = v516;
            v689 = v526;
            v690 = v286;
            *&v691 = v291;
            v692 = v523;
            *&v693 = *v554;
            *(&v693 + 1) = v644;
            LOWORD(v694) = v91;
            BYTE2(v694) = v460;
            *(&v694 + 4) = __PAIR64__(v521, v522);
            BYTE12(v694) = v570;
            BYTE8(v695) = v630.var0;
            v37 = v602;
            if (v630.var0 == 1)
            {
              *&v696[8] = v631;
              *&v696[24] = v632;
            }

            v697 = 0;
            LOBYTE(v698) = v520;
            if (v520)
            {
              v699 = *&v678[1];
              v700 = *&v678[17];
              v701 = v679;
              v702 = v680;
            }

            LOBYTE(v703) = v574;
            *(&v703 + 1) = v517 & 0x1010101;
            *(&v703 + 1) = __PAIR64__(v198, v615);
            *&v704 = __PAIR64__(v196, v200);
            WORD4(v704) = _H15;
            BYTE10(v704) = v573;
            *(&v704 + 11) = v351;
            BYTE13(v704) = v515 & 1;
            HIWORD(v704) = 0;
            LOBYTE(v705) = 0;
            BYTE1(v705) = v518;
            if (*v604)
            {
              re::DynamicArray<re::MeshScene>::add(v604, __src);
            }

            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v683[19]);
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v731);
            goto LABEL_246;
          }
        }
      }

      v37 = v602;
LABEL_246:
      v67 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v657);
      if (v657 == v37 && v658 == 0xFFFF && HIWORD(v658) == 0xFFFF)
      {
        goto LABEL_106;
      }
    }

LABEL_169:
    v128 = re::ecs2::EntityComponentCollection::get((v655 + 48), re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v128)
    {
      goto LABEL_219;
    }

    v129 = v128;
    v130 = (*(**(*(v28 + 72) + 40) + 32))(*(*(v28 + 72) + 40));
    v131 = re::ecs2::DeformedDirectMeshComponent::combinedDeformedRenderMeshParts(v129, v130, v86, v85, v101, v102);
    if (!v131)
    {
      goto LABEL_219;
    }

    v132 = (v131 + 32);
    v133 = (v131 + 16);
    v134 = (v131 + 56);
    v135 = (v131 + 48);
    goto LABEL_217;
  }

LABEL_106:
  v68 = v666;
  if (v666)
  {
    v69 = 0;
    v70 = v665;
    v71 = v605;
    while ((*v70 & 0x80000000) == 0)
    {
      v70 += 1792;
      if (v666 == ++v69)
      {
        LODWORD(v69) = v666;
        break;
      }
    }
  }

  else
  {
    LODWORD(v69) = 0;
    v71 = v605;
  }

  if (v69 != v666)
  {
    v465 = v665;
    do
    {
      v466 = v465 + 7168 * v69;
      v122 = (v466 + 16);
      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v606, *(v466 + 8), v71, &v761);
      if (*(v466 + 32))
      {
        *&__src[0] = v761 >> 1;
        v467 = **(re::RenderFrameData::stream((v71 + 264), __src) + 48);
        (*(v467 + 504))();
      }

      if (*(v466 + 7036) || *(v466 + 80))
      {
        *&__src[0] = v761 >> 1;
        v468 = **(re::RenderFrameData::stream((v71 + 264), __src) + 48);
        (*(v468 + 808))();
      }

      v650.i64[0] = v761 >> 1;
      v469 = re::RenderFrameData::stream((v71 + 264), &v650);
      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v469, v676, __src);
      if (HIDWORD(__src[0]) == 0x7FFFFFFF)
      {
        v470 = *(*(v469 + 48) + 8);
        v471 = (*(*v470 + 32))(v470, 56, 8);
        *v471 = 0;
        *(v471 + 8) = 0;
        *(v471 + 16) = 1;
        *(v471 + 32) = 0;
        *(v471 + 40) = 0;
        *(v471 + 24) = 0;
        *(v471 + 48) = 0;
        v472 = re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul>::init(v471, v470, 1uLL);
        *(&__src[0] + 1) = v471;
        *&__src[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul> *>::__handle[abi:nn200100];
        *(&v683[0] + 1) = re::globalAllocators(v472)[2];
        *&v683[1] = 0;
        v473 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v469, v676, __src);
        if (*&v683[1])
        {
          *v731 = __src;
          (*(**&v683[1] + 16))(*&v683[1], v731);
        }

        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v682);
        if (*&__src[0])
        {
          (*&__src[0])(0, __src, 0, 0, 0);
        }
      }

      else
      {
        v473 = (*(v469 + 16) + 96 * HIDWORD(__src[0]) + 16);
      }

      j = *v474;
      v476 = *(v466 + 7056);
      v477 = *(*v474 + 40);
      v91 = *(*v474 + 8);
      if (v477 + 1 > 4 * v91)
      {
        re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul>::setBucketsCapacity(*v474, (v477 + 4) >> 2);
        v91 = *(j + 8);
      }

      v157 = (v477 >> 2);
      if (v91 <= v477 >> 2)
      {
        goto LABEL_637;
      }

      if (*(j + 16))
      {
        v478 = j + 24;
      }

      else
      {
        v478 = *(j + 32);
      }

      v479 = *(v478 + 8 * v157);
      v480 = *(j + 40);
      *(j + 40) = v480 + 1;
      ++*(j + 48);
      *(v479 + (v477 & 3)) = v476;
      if (v480 == -1)
      {
        goto LABEL_638;
      }

      if (v91 <= v480 >> 2)
      {
        goto LABEL_639;
      }

      *&__src[0] = v761 >> 1;
      v71 = v605;
      v481 = **(re::RenderFrameData::stream((v605 + 264), __src) + 48);
      v67 = (*(v481 + 408))();
      if (v761)
      {
        if (v761)
        {
        }
      }

      if (v666 <= v69 + 1)
      {
        v482 = v69 + 1;
      }

      else
      {
        v482 = v666;
      }

      v465 = v665;
      while (v482 - 1 != v69)
      {
        LODWORD(v69) = v69 + 1;
        if ((*(v665 + 7168 * v69) & 0x80000000) != 0)
        {
          goto LABEL_600;
        }
      }

      LODWORD(v69) = v482;
LABEL_600:
      ;
    }

    while (v69 != v68);
  }

  v483 = v662;
  if (v662)
  {
    v484 = 0;
    v485 = v661;
    v486 = v602;
    v487 = v508;
    while (1)
    {
      v488 = *v485;
      v485 += 18;
      if (v488 < 0)
      {
        break;
      }

      if (v662 == ++v484)
      {
        LODWORD(v484) = v662;
        break;
      }
    }

    v489 = v606;
  }

  else
  {
    LODWORD(v484) = 0;
    v486 = v602;
    v489 = v606;
    v487 = v508;
  }

  if (v484 != v662)
  {
    v490 = v661;
    v491 = v662;
    do
    {
      v492 = v490 + 72 * v484;
      if (*(v492 + 44))
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v489, *(v490 + 72 * v484 + 8), v71, __src);
        v67 = (*(*v487 + 40))(v487, __src, *(v71 + 48), v492 + 16);
        if (__src[0])
        {
          if (__src[0])
          {
          }
        }

        v491 = v662;
        v490 = v661;
      }

      if (v491 <= v484 + 1)
      {
        v493 = v484 + 1;
      }

      else
      {
        v493 = v491;
      }

      while (v493 - 1 != v484)
      {
        LODWORD(v484) = v484 + 1;
        if ((*(v490 + 72 * v484) & 0x80000000) != 0)
        {
          goto LABEL_622;
        }
      }

      LODWORD(v484) = v493;
LABEL_622:
      ;
    }

    while (v484 != v483);
  }

  v494 = *(v486 + 40);
  if (v659)
  {
    if (v659)
    {
    }
  }

  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v660);
  re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v664);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v668);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v671);
  return v494 != 0;
}

BOOL re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::contains(uint64_t a1, unsigned __int8 *uu2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v5 = *(*(a1 + 8) + 4 * (((*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  while (1)
  {
    v7 = uuid_compare((v6 + 32 * v5 + 12), uu2);
    v6 = *(a1 + 16);
    if (!v7)
    {
      break;
    }

    v5 = *(v6 + 32 * v5 + 8) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return uuid_compare((v6 + 32 * v5 + 12), uu2) == 0;
}

unint64_t re::ecs2::MeshComponentHelper::clippingDataForMeshScene(uint64_t a1, const re::ecs2::MeshComponent *a2, float32x4_t *a3, uint64_t a4)
{
  v19 = a1;
  if (a4)
  {
    v7 = *(a1 + 192);
    if (v7)
    {
      v8 = re::ecs2::containsShaderGraphMaterialWithModelPositionOffset(*(a1 + 192), a2);
    }

    else
    {
      v8 = 0;
    }

    v13 = (*(*a4 + 16))(a4);
    v14 = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v13, &v19);
    v15 = re::ecs2::EntityComponentCollection::get((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v16 = re::ecs2::EntityComponentCollection::get((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v7 || (v14 ? (v17 = v15 == 0) : (v17 = 1), v17 || v16 && *(v16 + 48)))
    {
      v9 = re::ecs2::MeshComponentHelper::clippingDataForClippingParameterData(v14, a2, a3, a4, v8);
      v10 = v9 >> 16;
      v11 = BYTE4(v9);
      v12 = BYTE5(v9);
    }

    else
    {
      v12 = 0;
      LOWORD(v9) = v14[11].i16[4];
      LOWORD(v10) = v14[11].i16[5];
      v11 = 1;
    }
  }

  else
  {
    LOWORD(v9) = 0;
    LOWORD(v10) = 0;
    v11 = 0;
    v12 = 0;
  }

  return (v11 << 32) | (v12 << 40) | (v10 << 16) | v9;
}

unsigned __int8 *re::ecs2::MeshComponentHelper::depthMitigationMaskForMeshScene(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = a1;
  if (a1 && a2)
  {
    v4 = (*(*a2 + 16))(a2);
    result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v4, &v5);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

float re::ecs2::MeshComponentHelper::environmentLightingWeightForMeshScene(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v2 = 1.0;
  if (a2)
  {
    v3 = (*(*a2 + 16))(a2);
    v4 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v3, &v6);
    if (v4)
    {
      return *v4;
    }
  }

  return v2;
}

uint64_t re::ecs2::MeshComponentHelper::renderPassGroupDataForMeshScene(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a1;
  if (!a3)
  {
    return 0;
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v11, &v15);
  if ((*(*a3 + 56))(a3, v15, a5, a6, 0, a4))
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return *v12;
}

uint64_t re::ecs2::MeshComponentStateImpl::directResourceDidUpdateEvent(uint64_t a1, int a2, unsigned __int8 *uu2)
{
  v5 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
  v6 = *(a1 + 48);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 32) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v7, v5, uu2, uu2);
    ++*(a1 + 64);
    return 0;
  }

  v9 = *(a1 + 40);
  while (uuid_compare((v9 + 32 * v8 + 12), uu2))
  {
    v9 = *(a1 + 40);
    v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(v9, a2);
  updated = re::EventBus::subscribe<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v9);
  return updated;
}

uint64_t re::ecs2::MeshComponentStateImpl::handleSceneEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  do
  {
    v3 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v4 = *(v3 + 24);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v8, a1 + 104, v4, v5 ^ (v5 >> 31));
  if (v9 != 0x7FFFFFFF)
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(*(a1 + 120) + 72 * v9 + 16, &v7);
  }

  return 0;
}

uint64_t re::ecs2::MeshComponentStateImpl::handleComponentWillRemove(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 72) + 232) + 24);
  v4 = *(a2 + 312);
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v2 + 1200, &v4);
  return 0;
}

unint64_t re::ecs2::MeshComponentHelper::clippingDataForClippingParameterData(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, char a5)
{
  if (!a1)
  {
    LOWORD(v6) = 0;
    v8 = 0;
    v9 = 0;
    return v9 | (v8 << 16) | v6;
  }

  v6 = a1[9].i64[1];
  if (!v6)
  {
LABEL_16:
    v8 = 0;
    v9 = 0;
    return v9 | (v8 << 16) | v6;
  }

  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v16 = (*(*a4 + 32))(a4);
    v17 = v12;
    v7 = re::determineClippingNeeds(&a1[9], &v16, a1[11].u16[6], a1 + 7, a2, a3);
  }

  if (re::s_debugSettingsManager)
  {
    v15 = 1;
    v16 = 0x6EE8238E760161F0;
    v17 = "overrides:enableclipping";
    v13 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, &v16, &v15);
    if (v16)
    {
      if (v16)
      {
      }
    }

    if (v15 != 1)
    {
      LOWORD(v6) = 0;
      goto LABEL_16;
    }
  }

  if (v7 > 1)
  {
    LOWORD(v6) = 0;
    v8 = 0;
    v9 = (v7 == 3) << 40;
  }

  else
  {
    LODWORD(v6) = a1[11].i32[2];
    v8 = WORD1(v6);
    v9 = (v7 == 0) << 32;
  }

  return v9 | (v8 << 16) | v6;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 224 * v6 + 16;
  }
}

_anonymous_namespace_ *re::ecs2::MeshSystem::willAddSystemToECSService(re::ecs2::MeshSystem *this)
{
  v40 = *MEMORY[0x1E69E9840];
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 111) = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 112) = re::ServiceLocator::serviceOrNull<re::ecs2::ClippingService>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 113) = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 114) = re::ServiceLocator::serviceOrNull<re::ecs2::OcclusionService>(v5);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 115) = re::ServiceLocator::serviceOrNull<re::ecs2::TintService>(v6);
  v7 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 118) = re::ServiceLocator::serviceOrNull<re::ecs2::LightService>(v7);
  v8 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 116) = re::ServiceLocator::serviceOrNull<re::ecs2::EnvironmentLightingService>(v8);
  v9 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 119) = re::ServiceLocator::serviceOrNull<re::ecs2::ImageBasedLightService>(v9);
  v10 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 117) = re::ServiceLocator::serviceOrNull<re::ecs2::VisualProxyScopeService>(v10);
  v11 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 120) = re::ServiceLocator::serviceOrNull<re::MaterialParametersService>(v11);
  v12 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 122) = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(v12);
  v13 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 123) = re::ServiceLocator::serviceOrNull<re::ecs2::DepthMitigationStateService>(v13);
  v14 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 124) = re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(v14);
  v15 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 125) = re::ServiceLocator::serviceOrNull<re::ecs2::VisualDepthCustomMaterialService>(v15);
  v16 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ShadowScopeService>(v16);
  *(this + 126) = result;
  if (*(this + 30))
  {
    re::Defaults::BOOLValue("renderMissingMaterials", v18, v32);
    if (v32[0] == 1 && v32[1] != 1)
    {
      (*(**(this + 30) + 8))(&v36);
      v24 = *(this + 296);
      *(this + 296) = v36;
      v36 = v24;
      v25 = *(this + 39);
      *(this + 39) = v37;
      v37 = v25;
      re::AssetHandle::~AssetHandle(&v36);
      re::AssetHandle::operator=(this + 320, this + 37);
      v23 = 0;
    }

    else
    {
      (*(**(this + 30) + 8))(&v36);
      v19 = *(this + 296);
      *(this + 296) = v36;
      v36 = v19;
      v20 = *(this + 39);
      *(this + 39) = v37;
      v37 = v20;
      re::AssetHandle::~AssetHandle(&v36);
      (*(**(this + 30) + 8))(&v36);
      v21 = *(this + 20);
      *(this + 20) = v36;
      v36 = v21;
      v22 = *(this + 42);
      *(this + 42) = v37;
      v37 = v22;
      re::AssetHandle::~AssetHandle(&v36);
      v23 = 1;
    }

    *(this + 392) = v23;
    if ((*(**(this + 30) + 360))(*(this + 30)))
    {
      re::AssetHandle::loadAsync((this + 296));
      re::AssetHandle::loadAsync((this + 320));
    }

    MurmurHash3_x64_128("SFBPassthroughDownsample2D", 0x1AuLL, 0, &v36);
    *(this + 43) = (*(&v36 + 1) + (v36 << 6) + (v36 >> 2) - 0x61C8864680B583E9) ^ v36;
    MurmurHash3_x64_128("SFBCopyTextureBilinear", 0x16uLL, 0, &v36);
    *(this + 44) = (*(&v36 + 1) + (v36 << 6) + (v36 >> 2) - 0x61C8864680B583E9) ^ v36;
    MurmurHash3_x64_128("Opaque", 6uLL, 0, &v36);
    *(this + 45) = (*(&v36 + 1) + (v36 << 6) + (v36 >> 2) - 0x61C8864680B583E9) ^ v36;
    MurmurHash3_x64_128("Transparent", 0xBuLL, 0, &v36);
    *(this + 46) = (*(&v36 + 1) + (v36 << 6) + (v36 >> 2) - 0x61C8864680B583E9) ^ v36;
    MurmurHash3_x64_128("StencilIncrement", 0x10uLL, 0, &v36);
    *(this + 47) = (*(&v36 + 1) + (v36 << 6) + (v36 >> 2) - 0x61C8864680B583E9) ^ v36;
    MurmurHash3_x64_128("Occlusion", 9uLL, 0, &v36);
    *(this + 48) = (*(&v36 + 1) + (v36 << 6) + (v36 >> 2) - 0x61C8864680B583E9) ^ v36;
    v26 = (*(**(this + 5) + 32))(*(this + 5));
    v27 = re::ServiceLocator::serviceOrNull<re::FrameAnalysisService>(v26);
    if (v27)
    {
      *(this + 121) = v27;
    }

    v28 = re::globalAllocators(v27)[2];
    v38 = v28;
    v29 = (*(*v28 + 32))(v28, 32, 0);
    *v29 = &unk_1F5CED4D8;
    v29[1] = this + 640;
    v29[2] = re::ecs2::MeshComponentStateImpl::directResourceDidUpdateEvent;
    v29[3] = 0;
    v39 = v29;
    v30 = *(*(*(this + 89) + 224) + 1512);
    v34 = v28;
    v35 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(v33, &v36);
    *(this + 81) = re::EventBus::subscribe<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(v30, v33, 0, 0);
    *(this + 82) = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v33);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(&v36);
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::TintService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::TintService>(BOOL)::info = re::ecs2::introspect_TintService(0);
  }

  v2 = re::introspect<re::ecs2::TintService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::MaterialParametersService>(uint64_t a1)
{
  {
    re::introspect<re::MaterialParametersService>(BOOL)::info = re::introspect_MaterialParametersService(0);
  }

  v2 = re::introspect<re::MaterialParametersService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::ShadowScopeService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::ShadowScopeService>(BOOL)::info = re::ecs2::introspect_ShadowScopeService(0);
  }

  v2 = re::introspect<re::ecs2::ShadowScopeService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::FrameAnalysisService>(uint64_t a1)
{
  {
    re::introspect<re::FrameAnalysisService>(BOOL)::info = re::introspect_FrameAnalysisService(0);
  }

  v2 = re::introspect<re::FrameAnalysisService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

double re::ecs2::MeshSystem::willRemoveSystemFromECSService(re::ecs2::MeshSystem *this)
{
  re::EventBus::unsubscribe(*(*(*(this + 89) + 224) + 1512), *(this + 81), *(this + 82));
  v2 = *(this + 296);
  v3 = *(this + 39);
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 37) = 0;
  v7 = v2;
  v8 = v3;
  re::AssetHandle::~AssetHandle(&v7);
  v4 = *(this + 20);
  v5 = *(this + 42);
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 40) = 0;
  v7 = v4;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  *(this + 119) = 0;
  result = 0.0;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  return result;
}

re *re::ecs2::MeshSystem::willAddSceneToECSService(re::ecs2::MeshSystem *this, re::EventBus **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  result = re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::addScene(this + 400, a2);
  v14 = a2;
  v5 = a2[36];
  if (v5)
  {
    v6 = re::globalAllocators(result)[2];
    v22 = v6;
    v7 = (*(*v6 + 32))(v6, 32, 0);
    *v7 = &unk_1F5CED530;
    v7[1] = this + 640;
    v7[2] = re::ecs2::MeshComponentStateImpl::handleSceneEntityWillRemove;
    v7[3] = 0;
    v23 = v7;
    v19 = v6;
    v20 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(v18, v21);
    *&v15 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v5, v18, 0, 0);
    *(&v15 + 1) = v8;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v18);
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 792, &v14, &v15);
    v9 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v21);
    v10 = re::globalAllocators(v9)[2];
    v22 = v10;
    v11 = (*(*v10 + 32))(v10, 32, 0);
    *v11 = &unk_1F5CED588;
    v11[1] = this + 640;
    v11[2] = re::ecs2::MeshComponentStateImpl::handleComponentWillRemove;
    v11[3] = 0;
    v23 = v11;
    v16 = v10;
    v17 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>(&v15, v21);
    *&v13 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v5, &v15, re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType, 0);
    *(&v13 + 1) = v12;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(&v15);
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 840, &v14, &v13);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v21);
  }

  return result;
}

void re::ecs2::MeshSystem::willRemoveSceneFromECSService(re::ecs2::MeshSystem *this, re::ecs2::Scene *a2)
{
  v26 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 57, &v26);
  if (v4 != -1)
  {
    v5 = *(this + 58) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 520, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 568, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 400, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 456, &v26);
  }

  v25 = a2;
  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 792, &v25);
    if (v17)
    {
      re::EventBus::unsubscribe(v16, *v17, *(v17 + 8));
    }

    v18 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 840, &v25);
    if (v18)
    {
      re::EventBus::unsubscribe(v16, *v18, *(v18 + 8));
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 792, &v25);
  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 840, &v25);
  v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v26, this + 744, v25, v19 ^ (v19 >> 31));
  v20 = v28;
  if (v28 != 0x7FFFFFFF)
  {
    v21 = *(this + 95);
    v22 = (v21 + 72 * v28);
    v23 = *v22 & 0x7FFFFFFF;
    if (v29 == 0x7FFFFFFF)
    {
      *(*(this + 94) + 4 * v27) = v23;
    }

    else
    {
      *(v21 + 72 * v29) = *(v21 + 72 * v29) & 0x80000000 | v23;
    }

    v24 = *v22;
    if ((*v22 & 0x80000000) != 0)
    {
      *v22 = v24 & 0x7FFFFFFF;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22 + 2);
      v21 = *(this + 95);
      v24 = *(v21 + 72 * v20);
    }

    *(v21 + 72 * v20) = *(this + 195) | v24 & 0x80000000;
    *(this + 195) = v20;
    --*(this + 193);
    ++*(this + 196);
  }
}

uint64_t re::ecs2::MeshSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v50[0] = a2;
  v50[1] = a3;
  v3 = *(result + 224);
  if (v3 && (*(v3 + 432) & 0x10) != 0)
  {
    v5 = result;
    v6 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v49);
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = 0;
      v9 = *(a3 + 216);
      v10 = 8 * v7;
      do
      {
        v6 = re::ecs2::SceneComponentTable::get((*v9 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
        if (v6)
        {
          v11 = v6[48];
        }

        else
        {
          v11 = 0;
        }

        v8 += v11;
        v9 += 8;
        v10 -= 8;
      }

      while (v10);
    }

    else
    {
      v8 = 0;
    }

    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v6);
    if (isStatisticCollectionEnabled)
    {
      v13 = re::profilerThreadContext(isStatisticCollectionEnabled);
      v14 = *(v13 + 152);
      if (v14)
      {
        v15 = v14[760].u64[0];
        if (v15 >= v8)
        {
          v15 = v8;
        }

        v14[760].i64[0] = v15;
        v16 = v14[760].u64[1];
        if (v16 <= v8)
        {
          v16 = v8;
        }

        v14[760].i64[1] = v16;
        v17 = vdupq_n_s64(1uLL);
        v17.i64[0] = v8;
        v14[761] = vaddq_s64(v14[761], v17);
        *(v13 + 184) = 0;
      }
    }

    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v48, 3011, v5);
    v51[0] = (*(**(*(v5 + 712) + 272) + 16))(*(*(v5 + 712) + 272));
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    v64 = 0x7FFFFFFFLL;
    v18 = *(v5 + 776);
    if (v18)
    {
      v19 = 0;
      v20 = *(v5 + 760);
      while (1)
      {
        v21 = *v20;
        v20 += 18;
        if (v21 < 0)
        {
          break;
        }

        if (v18 == ++v19)
        {
          LODWORD(v19) = *(v5 + 776);
          break;
        }
      }
    }

    else
    {
      LODWORD(v19) = 0;
    }

    while (v19 != v18)
    {
      v22 = *(v5 + 760) + 72 * v19;
      v56 = *(v22 + 8);
      v23 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v5 + 456), &v56);
      if (v23 != -1)
      {
        v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v5 + 400, *(*(v5 + 464) + 16 * v23 + 8));
        v25 = *(v22 + 48);
        if (v25)
        {
          v26 = 0;
          v27 = (*(v22 + 32) + 8);
          while (1)
          {
            v28 = *v27;
            v27 += 6;
            if (v28 < 0)
            {
              break;
            }

            if (v25 == ++v26)
            {
              LODWORD(v26) = *(v22 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v26) = 0;
        }

LABEL_38:
        while (v26 != v25)
        {
          re::ecs2::MeshComponentStateImpl::checkRenderOptionChanges(v24, *(*(v22 + 32) + 24 * v26 + 16), v51, v62);
          v29 = *(v22 + 48);
          if (v29 <= v26 + 1)
          {
            v29 = v26 + 1;
          }

          while (v29 - 1 != v26)
          {
            LODWORD(v26) = v26 + 1;
            if ((*(*(v22 + 32) + 24 * v26 + 8) & 0x80000000) != 0)
            {
              goto LABEL_38;
            }
          }

          LODWORD(v26) = v29;
        }
      }

      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v22 + 16);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v62);
      v30 = *(v5 + 776);
      if (v30 <= v19 + 1)
      {
        v30 = v19 + 1;
      }

      while (v30 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(*(v5 + 760) + 72 * v19) & 0x80000000) != 0)
        {
          goto LABEL_45;
        }
      }

      LODWORD(v19) = v30;
LABEL_45:
      ;
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v62);
    re::StackScratchAllocator::StackScratchAllocator(v62);
    v58 = 1;
    v59 = 0;
    v60 = 0;
    v56 = v62;
    v57 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v56, 0);
    v58 += 2;
    v31 = *(v5 + 608);
    if ((v31 & 0x3F) != 0)
    {
      v32 = (v31 >> 6) + 1;
    }

    else
    {
      v32 = v31 >> 6;
    }

    v61 = *(v5 + 608);
    v51[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v56, v32, v51);
    v33 = *(a3 + 200);
    if (v33)
    {
      v34 = *(a3 + 216);
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v51[0] = v36;
        v37 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v5 + 456), v51);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v56, *(*(v5 + 464) + 16 * v37 + 8));
        v35 -= 8;
      }

      while (v35);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v56, v5 + 568);
    v52 = 1;
    v53 = 0;
    v54 = 0;
    v51[0] = v62;
    v51[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v51, 0);
    v52 += 2;
    v38 = *(v5 + 608);
    if ((v38 & 0x3F) != 0)
    {
      v39 = (v38 >> 6) + 1;
    }

    else
    {
      v39 = v38 >> 6;
    }

    v55 = *(v5 + 608);
    v65 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v51, v39, &v65);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v5 + 568, &v56);
    v40 = v60;
    if (v58)
    {
      v40 = &v59;
    }

    v41 = v57;
    if ((v57 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v42 = 0;
      while (1)
      {
        v44 = *v40++;
        v43 = v44;
        if (v44)
        {
          break;
        }

        v42 -= 64;
        if (!--v41)
        {
          goto LABEL_68;
        }
      }

      v45 = __clz(__rbit64(v43));
      if (v45 + 1 != v42)
      {
        FirstBitSet = v45 - v42;
        do
        {
          v47 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v5 + 400, FirstBitSet);
          if (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::update(v47, v50, 0))
          {
            re::DynamicBitset<unsigned long long,64ul>::setBit(v51, FirstBitSet);
          }

          else
          {
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v51, FirstBitSet);
          }

          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v56, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_68:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(v5 + 568, v51);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v5 + 400);
    if (v51[0] && (v52 & 1) == 0)
    {
      (*(*v51[0] + 40))();
    }

    if (v56)
    {
      if ((v58 & 1) == 0)
      {
        (*(*v56 + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v62);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v48);
    return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v49);
  }

  return result;
}

void *re::ecs2::allocInfo_MeshComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5FC0, "MeshComponent");
    __cxa_guard_release(&qword_1EE1A5F70);
  }

  return &unk_1EE1A5FC0;
}

void re::ecs2::initInfo_MeshComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v26[0] = 0xDD4C76EC162562E0;
  v26[1] = "MeshComponent";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1A5F78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A5F78);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A5F98 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "materials";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x3800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A5FA0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "mesh";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A5FA8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "boundsMargin";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x6000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A5FB0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "materialParameters";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x6800000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A5FB8 = v24;
      __cxa_guard_release(&qword_1EE1A5F78);
    }
  }

  *(this + 2) = 0x1F000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A5F98;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs213MeshComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v25 = v27;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::info) = &unk_1F5CED620;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::ecs2::introspect_EntityHandle(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::info, 0);
    qword_1EE186B00 = 0x2800000003;
    dword_1EE186B08 = v8;
    word_1EE186B0C = 0;
    *&xmmword_1EE186B10 = 0;
    *(&xmmword_1EE186B10 + 1) = 0xFFFFFFFFLL;
    qword_1EE186B20 = v7;
    unk_1EE186B28 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::info = &unk_1F5CED620;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186B10 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_MeshSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6050, "MeshSystem");
    __cxa_guard_release(&qword_1EE1A5F80);
  }

  return &unk_1EE1A6050;
}

void re::ecs2::initInfo_MeshSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xF19CF6A8ED538;
  v6[1] = "MeshSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x3F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::MeshSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[80] = &unk_1F5CED3F0;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 105);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 99);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 93);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 90);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a3 + 83);
  re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(a3 + 50);
  re::AssetHandle::~AssetHandle((a3 + 40));
  re::AssetHandle::~AssetHandle((a3 + 37));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshSystem>(uint64_t *a1)
{
  a1[80] = &unk_1F5CED3F0;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 105);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 99);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 93);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 90);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a1 + 83);
  re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(a1 + 50);
  re::AssetHandle::~AssetHandle((a1 + 40));
  re::AssetHandle::~AssetHandle((a1 + 37));

  re::ecs2::System::~System(a1);
}

void re::ecs2::MeshSystem::~MeshSystem(re::ecs2::MeshSystem *this)
{
  *(this + 80) = &unk_1F5CED3F0;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 105);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 99);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 93);
  re::FixedArray<CoreIKTransform>::deinit(this + 90);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 83);
  re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(this + 50);
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));

  re::ecs2::System::~System(this);
}

{
  *(this + 80) = &unk_1F5CED3F0;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 105);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 99);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 93);
  re::FixedArray<CoreIKTransform>::deinit(this + 90);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 83);
  re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(this + 50);
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AttributeTable::operator==(void *a1, void *a2)
{
  result = re::DynamicArray<re::BufferView>::operator==((a1 + 13), (a2 + 13));
  if (result)
  {
    result = re::FixedArray<re::VertexBufferFormat>::operator==((a1 + 2), (a2 + 2));
    if (result)
    {
      if (a1[1] == a2[1])
      {
        result = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::operator==((a1 + 5), a2 + 5);
        if (result)
        {
          return *a1 == *a2;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::BufferView>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  v5 = 24 * v2 - 24;
  do
  {
    result = re::BufferView::operator==(v3, v4);
    if (!result)
    {
      break;
    }

    v3 += 6;
    v4 += 6;
    v7 = v5;
    v5 -= 24;
  }

  while (v7);
  return result;
}

BOOL re::FixedArray<re::VertexBufferFormat>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = 16 * v2 - 16;
  do
  {
    result = re::VertexBufferFormat::operator==(v3, v4);
    if (!result)
    {
      break;
    }

    v3 += 8;
    v4 += 8;
    v7 = v5;
    v5 -= 16;
  }

  while (v7);
  return result;
}

uint64_t re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::operator==(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  if (*(a1 + 40) == a2[5] && *(a1 + 48) == a2[6])
  {
    v17[0] = a1;
    v5 = *(a1 + 16);
    if (v5 < 0x10)
    {
      return 1;
    }

    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v17[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return 1;
      }
    }

    v11 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v12 = v11 - v6;
    v18 = v11 - v6;
    if (v11 + 1 == v6)
    {
      return 1;
    }

    while (1)
    {
      v13 = *(v17[0] + 8) + 16 * v12;
      v15 = *v13;
      v16 = *(v13 + 8);
      v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, &v15);
      if (v14 == -1 || *(a2[1] + 16 * v14 + 8) != v16)
      {
        break;
      }

      re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v17);
      v12 = v18;
      if (v18 == -1)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *re::FixedArray<re::VertexBufferFormat>::operator=(void *a1, uint64_t a2)
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
      re::FixedArray<re::VertexBufferFormat>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::VertexBufferFormat>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 72 * v6 + 16;
  }
}

void *re::DynamicArray<re::BlurPlaneData>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
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
            memcpy(v7, v5[4], 144 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
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
      }

      else
      {
        result = re::DynamicArray<re::BlurPlaneData>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void anonymous namespace::getPerceptualBlendingMode(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  re::Defaults::intValue("perceptualBlendingMode", a2, v3);
  v2 = v3[0];
  if (!v4)
  {
    v2 = 0;
  }

  re::internal::perceptual_alpha::never_use_this::g_enablePerceptualAlpha = v2;
}

uint64_t re::DebugSettingsManager::getWithErrorCode<int>(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*(a1 + 112) != 1)
  {
    return 3;
  }

  if (!a3)
  {
    return 4;
  }

  std::mutex::lock((a1 + 48));
  v6 = re::DebugSettingsManager::contains<int>(a1, a2);
  if (!v6)
  {
    v7 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v13);
    v8 = *(a1 + 16) + 40 * v14;
    v10 = *(v8 + 24);
    v9 = v8 + 24;
    if (v10 == 1)
    {
      v11 = *(v9 + 4);
      if (!HIDWORD(v11))
      {
        *a3 = v11;
      }

      v6 = HIDWORD(v11) != 0;
    }

    else
    {
      v6 = 5;
    }
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

uint64_t re::DebugSettingsManager::contains<int>(uint64_t a1, void *a2)
{
  if (*(a1 + 112) != 1)
  {
    return 3;
  }

  v12 = v2;
  v13 = v3;
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v10);
  if (v11 == 0x7FFFFFFF)
  {
    return 1;
  }

  v7 = *(a1 + 16) + 40 * v11;
  v9 = *(v7 + 24);
  v8 = v7 + 24;
  if (v9 == 1 && *(v8 + 8))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CED4D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CED4D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CED530;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CED530;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CED588;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshComponentStateImpl,REEventHandlerResult (re::ecs2::MeshComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CED588;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::resize(a1, 1);
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
  v16 = v13 + 16 * v11;
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(a1, v17);
  return *(a1 + 8) + 16 * v16 + 8;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(a1, v17);
  return *(a1 + 8) + 16 * v16 + 8;
}

double re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
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

  return re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*(a2 + 8) ^ (*(a2 + 8) >> 30));
  v5 = v3 ^ *(result + 40);
  v6 = *(result + 48) ^ v3 ^ ((v3 << 6) + (v3 >> 2) + ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) - 0x61C8864680B583E9);
  *(result + 40) = v5;
  *(result + 48) = v6;
  return result;
}

double re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}