__n128 re::DynamicArray<re::ImportedScene>::add(uint64_t a1, __n128 *a2)
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

        re::DynamicArray<re::ImportedScene>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ImportedScene>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 160 * v5;
  result = *a2;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *v11 = result;
  *(v11 + 40) = a2[2].n128_u64[1];
  v13 = a2[1].n128_u64[1];
  *(v11 + 16) = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  v14 = a2[2].n128_u64[0];
  a2[2].n128_u64[1] = 0;
  v16 = *(v11 + 24);
  v15 = *(v11 + 32);
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;
  a2[1].n128_u64[1] = v16;
  a2[2].n128_u64[0] = v15;
  *(v11 + 48) = a2[3].n128_u64[0];
  *(v11 + 72) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 80) = a2[5].n128_u64[0];
  v17 = a2[4].n128_u64[0];
  *(v11 + 56) = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = 0;
  v18 = a2[4].n128_u64[1];
  a2[5].n128_u64[0] = 0;
  v20 = *(v11 + 64);
  v19 = *(v11 + 72);
  *(v11 + 64) = v17;
  *(v11 + 72) = v18;
  a2[4].n128_u64[0] = v20;
  a2[4].n128_u64[1] = v19;
  *(v11 + 88) = a2[5].n128_u8[8];
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = a2[6].n128_u64[1];
  a2[6].n128_u64[1] = 0;
  v21 = *(v11 + 96);
  *(v11 + 96) = 0;
  *(v11 + 96) = a2[6].n128_u64[0];
  a2[6].n128_u64[0] = v21;
  v22 = *(v11 + 112);
  *(v11 + 112) = a2[7].n128_u64[0];
  a2[7].n128_u64[0] = v22;
  *(v11 + 152) = 0;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 144) = 0;
  v23 = a2[8].n128_u64[0];
  *(v11 + 120) = a2[7].n128_u64[1];
  *(v11 + 128) = v23;
  a2[7].n128_u64[1] = 0;
  a2[8].n128_u64[0] = 0;
  v24 = *(v11 + 136);
  *(v11 + 136) = a2[8].n128_u64[1];
  a2[8].n128_u64[1] = v24;
  v25 = *(v11 + 152);
  *(v11 + 152) = a2[9].n128_u64[1];
  a2[9].n128_u64[1] = v25;
  ++a2[9].n128_u32[0];
  ++*(v11 + 144);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::importSceneWithUSDScene(uint64_t a1, id *a2, uint64_t a3)
{
  v375 = *MEMORY[0x1E69E9840];
  v5 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v287, 2004, a2);
  if (*(a3 + 40))
  {
    v6 = *(a3 + 48);
  }

  else
  {
    v6 = (a3 + 41);
  }

  v7 = *(a3 + 72);
  v254 = *a3;
  v8 = *(a3 + 8);
  v255 = v8;
  v256 = *(a3 + 16);
  v257 = *(a3 + 18);
  v258 = *(a3 + 19);
  if (v258 == 1)
  {
    v259 = *(a3 + 20);
  }

  *v260 = *(a3 + 21);
  v230 = a3;
  *&v260[7] = *(a3 + 28);
  v261 = 0;
  memset(&v262[1], 0, 24);
  re::DynamicString::setCapacity(v262, 0);
  memset(&v262[4], 0, 3);
  v263 = 0;
  v264 = 257;
  v265 = (a1 + 104);
  v266 = 0u;
  v267 = 0u;
  v268 = 0;
  v269 = 0x7FFFFFFFLL;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = *(a1 + 36) <= 3u ? 3 : *(a1 + 36);
    re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(&v266, v9, v10);
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = 0;
      v13 = 288;
      do
      {
        v14 = *(a1 + 24) + v13;
        if ((*(v14 - 288) & 0x80000000) != 0)
        {
          v15 = re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v266, *(v14 + 32) % DWORD2(v267), *(v14 + 32));
          re::DynamicString::DynamicString((v15 + 8), (*(a1 + 24) + v13 - 280));
          v16 = (*(a1 + 24) + v13);
          re::TextureProvider::TextureProvider((v15 + 40), (v16 - 248));
          *(v15 + 40) = &unk_1F5CC4C98;
          re::DynamicString::DynamicString((v15 + 288), v16);
          *(v15 + 40) = &unk_1F5D0B5C8;
          v11 = *(a1 + 40);
        }

        ++v12;
        v13 += 328;
      }

      while (v12 < v11);
    }
  }

  v270 = 0;
  v271 = v7;
  v272 = 1;
  memset(v273, 0, sizeof(v273));
  v275 = 0x7FFFFFFFLL;
  memset(v276, 0, sizeof(v276));
  v274 = 0;
  v277 = 0;
  v278 = 0x7FFFFFFFLL;
  v279 = 0u;
  v280 = 0u;
  v281 = 0;
  v282 = 0x7FFFFFFFLL;
  memset(v283, 0, sizeof(v283));
  v284 = 0;
  v285 = 0x7FFFFFFFLL;
  v286 = 0;
  if (v6)
  {
    v17 = strlen(v6);
    v316.n128_u64[0] = v6;
    v316.n128_u64[1] = v17;
    re::DynamicString::operator=(v262, &v316);
  }

  *&__dst = *MEMORY[0x1E696E0A8];
  v316.n128_u64[0] = MEMORY[0x1E695E110];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v316 forKeys:&__dst count:1];
  v19 = v263;
  v263 = v18;

  LOBYTE(v262[4]) = *(v230 + 64);
  *(&v262[4] + 1) = *(v230 + 65);
  BYTE1(v272) = *(v230 + 73);
  HIWORD(v272) = *(v230 + 74);
  LOBYTE(v264) = *(v230 + 76);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v273, v230 + 88);
  v270 = *(v230 + 78);
  v286 = *(v230 + 79);
  LOBYTE(v272) = *(v230 + 80);
  v20 = *a2;
  v21 = [v20 metadata];
  v22 = [v21 allKeys];
  if ([v22 containsObject:@"autoPlay"])
  {
    v23 = *a2;
    v24 = [v23 metadataWithKey:@"autoPlay"];

    v25 = a2;
    if (!v24)
    {
      goto LABEL_22;
    }

    v20 = *a2;
    v21 = [v20 metadataWithKey:@"autoPlay"];
    *(a1 + 329) = [v21 BOOLValue];
  }

  else
  {

    v25 = a2;
  }

LABEL_22:
  v26 = *v25;
  v27 = [v26 metadataWithKey:@"timeCodesPerSecond"];

  if (v27)
  {
    v28 = *v25;
    v29 = [v28 metadataWithKey:@"timeCodesPerSecond"];
    [v29 doubleValue];
    v31 = v30;

    if (v31 <= 0.0)
    {
      v32 = 0.0416666667;
    }

    else
    {
      v32 = 1.0 / v31;
    }
  }

  else
  {
    v32 = 0.0416666667;
  }

  v33 = *v25;
  v34 = [v33 metadataWithKey:@"startTimeCode"];

  if (v34)
  {
    v35 = *v25;
    v36 = [v35 metadataWithKey:@"startTimeCode"];
    [v36 floatValue];
    v38 = v32 * v37;
    v225 = v38;

    v228 = 1;
  }

  else
  {
    v228 = 0;
  }

  v39 = *v25;
  v40 = [v39 metadataWithKey:@"endTimeCode"];

  if (v40)
  {
    v41 = *v25;
    v42 = [v41 metadataWithKey:@"endTimeCode"];
    [v42 floatValue];
    v44 = v32 * v43;
    v224 = v44;

    v227 = 1;
  }

  else
  {
    v227 = 0;
  }

  v45 = *v25;
  v46 = [v45 metadataWithKey:@"upAxis"];

  if (v46)
  {
    v47 = *v25;
    v48 = [v47 metadataWithKey:@"upAxis"];
    v49 = [v48 stringValue];

    v50 = [v49 isEqualToString:@"Z"];
    if (v50)
    {
      v51 = 1065353216;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = 0;
    }

    else
    {
      v52 = 0x3F80000000000000;
    }

    v25 = a2;
    *&v53 = v52;
    *(&v53 + 1) = v51;
  }

  else
  {
    v53 = xmmword_1E3047680;
  }

  v229 = v53;
  v252 = 0;
  v249 = 0;
  v250 = 0;
  v248 = 0;
  v251 = 0;
  v54 = *v25;
  v55 = [v54 nodeIterator];
  v56 = [v55 nextObject];
  v245 = a1;
  if (v56)
  {
    v57 = v56;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    do
    {
      v61 = [v57 metadataWithKey:@"kind"];
      v62 = [v61 stringValue];
      v63 = [v62 isEqual:@"sceneLibrary"];

      if (v63)
      {
        v64 = [v57 loadedChildIterator];
        v65 = [v64 nextObject];
        while (v65)
        {
          if (v60 >= v249)
          {
            re::DynamicArray<USKNode * {__strong}>::growCapacity(&v248, v60 + 1);
            v60 = v250;
            v59 = v252;
          }

          v66 = v65;
          v59[v60] = v66;
          v60 = ++v250;
          v58 = ++v251;
          v65 = [v64 nextObject];
        }
      }

      v67 = [v55 nextObject];

      v57 = v67;
    }

    while (v67);
    a1 = v245;
    if (v60)
    {
      v68 = v252;
      goto LABEL_58;
    }
  }

  else
  {
    v58 = 0;
  }

  v69 = [v54 rootNode];
  if (v249)
  {
    v70 = 0;
  }

  else
  {
    re::DynamicArray<USKNode * {__strong}>::growCapacity(&v248, 1uLL);
    v70 = v250;
    v58 = v251;
  }

  v68 = v252;
  v71 = v69;
  v68[v70] = v71;
  v60 = v70 + 1;
  v250 = v60;
  v251 = v58 + 1;

LABEL_58:
  if (v60)
  {
    v226 = &v68[v60];
    v72 = *MEMORY[0x1E69DEE38];
    v73 = vmulq_f32(v229, v229);
    v74 = vaddv_f32(*v73.f32);
    v75 = fabsf(v73.f32[2] + v74);
    *&v76 = v73.f32[2] + v74;
    *v73.f32 = vrsqrte_f32(v76);
    *v73.f32 = vmul_f32(*v73.f32, vrsqrts_f32(v76, vmul_f32(*v73.f32, *v73.f32)));
    v223 = vmulq_n_f32(v229, vmul_f32(*v73.f32, vrsqrts_f32(v76, vmul_f32(*v73.f32, *v73.f32))).f32[0]);
    v77 = vrsqrte_f32(1065353216);
    v78 = vmul_f32(v77, vrsqrts_f32(1065353216, vmul_f32(v77, v77)));
    v232 = vmulq_n_f32(xmmword_1E3047680, vmul_f32(v78, vrsqrts_f32(1065353216, vmul_f32(v78, v78))).f32[0]);
    v222 = vextq_s8(vuzp1q_s32(v232, v232), v232, 0xCuLL);
    v233 = *MEMORY[0x1E69DEE38];
    while (1)
    {
      v79 = *v68;
      re::ImportedScene::ImportedScene(&v316);
      re::DynamicArray<re::ImportedScene>::add(a1 + 288, &v316);
      re::DynamicArray<re::AssetHandle>::deinit(&v324);
      re::AssetHandle::~AssetHandle(&v322);
      if (v320)
      {
        if (BYTE8(v320))
        {
          (*(*v320 + 40))();
        }

        v321 = 0u;
        v320 = 0u;
      }

      v238 = v68;
      if (v317 && (v318 & 1) != 0)
      {
        (*(*v317 + 40))();
      }

      v80 = *(a1 + 320);
      v81 = *(a1 + 304);
      v82 = [v79 metadataWithKey:@"sceneName"];
      if (!v82)
      {
        v82 = [v79 customMetadataWithKey:@"sceneName"];
      }

      v83 = v80 + 160 * v81;
      v84 = v82;
      v85 = [v82 stringValue];
      v86 = [v85 UTF8String];

      if (v86)
      {
        v87 = [v84 stringValue];
        v88 = [v87 UTF8String];
        v89 = strlen(v88);
        v316.n128_u64[0] = v88;
        v316.n128_u64[1] = v89;
        v72 = v233;
        re::DynamicString::operator=((v83 - 144), &v316);
      }

      v237 = v84;
      isRootNodeByPath = re::isRootNodeByPath(v79);
      v91 = [v79 specifier];
      *(v83 - 72) = [v91 isEqual:v72];

      if (isRootNodeByPath)
      {
        *(v83 - 72) = 1;
      }

      else
      {
        v92 = [v79 setSpecifier:v72];
      }

      v93 = re::globalAllocators(v92);
      v94 = (*(*v93[2] + 32))(v93[2], 40, 8);
      *v94 = 0u;
      *(v94 + 16) = 0u;
      *(v94 + 32) = 0;
      v242 = v94;
      *(v83 - 112) = v94;
      v95 = *a2;
      v246 = *(v230 + 68);
      v96 = BYTE1(*(v230 + 76)) & 1;
      v97 = *(v230 + 67);
      v98 = v95;
      v99 = v79;
      v236 = v83;
      if (v97 == 1)
      {
        HIBYTE(v264) = 0;
        v100 = re::USDImportContext::USDImportContext(&v316);
        v290[0] = v228;
        if (v228)
        {
          v291 = v225;
        }

        v288[0] = v227;
        if (v227)
        {
          v289 = v224;
        }

        v101 = re::USDImportContext::pushNodeLevel(&v316, "", "", "", 0);
      }

      else
      {
        v102 = re::USDImportContext::USDImportContext(&v316);
        v290[0] = v228;
        if (v228)
        {
          v291 = v225;
        }

        v103 = v98;
        v288[0] = v227;
        if (v227)
        {
          v289 = v224;
        }

        v104 = [v99 name];
        v105 = [v104 stringValue];
        v106 = [v105 UTF8String];
        v107 = [v99 path];
        v108 = [v107 stringValue];
        v101 = re::USDImportContext::pushNodeLevel(&v316, v106, "(default)", [v108 UTF8String], 1);

        v98 = v103;
      }

      v109 = v229;
      v110 = v229;
      if (v75 >= 1.0e-10)
      {
        v109 = v223;
        v110 = v223;
      }

      v111 = vmulq_f32(v109, v232);
      v111.f32[0] = v111.f32[2] + vaddv_f32(*v111.f32);
      if (v111.f32[0] == -1.0 || (v112 = ((fabsf(v111.f32[0]) + 1.0) + 1.0) * 0.00001, v111.f32[0] = v111.f32[0] + 1.0, fabsf(v111.f32[0]) < v112))
      {
        if (fabsf(v109.f32[2]) >= 0.00001)
        {
          v113.i32[0] = 0;
          v113.f32[1] = -v109.f32[2];
          v113.i64[1] = v109.u32[1];
        }

        else
        {
          v113 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v109.f32[1]), v109);
        }

        v114 = vmulq_f32(v113, v113);
        *&v115 = v114.f32[2] + vaddv_f32(*v114.f32);
        *v114.f32 = vrsqrte_f32(v115);
        *v114.f32 = vmul_f32(*v114.f32, vrsqrts_f32(v115, vmul_f32(*v114.f32, *v114.f32)));
        v116 = vmulq_n_f32(v113, vmul_f32(*v114.f32, vrsqrts_f32(v115, vmul_f32(*v114.f32, *v114.f32))).f32[0]);
        v117 = 0.0;
      }

      else
      {
        v161 = vmlaq_f32(vmulq_f32(v222, vnegq_f32(v110)), v232, vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL));
        v111.f32[0] = sqrtf(v111.f32[0] + v111.f32[0]);
        v117 = v111.f32[0] * 0.5;
        v116 = vdivq_f32(vextq_s8(vuzp1q_s32(v161, v161), v161, 0xCuLL), vdupq_lane_s32(*v111.f32, 0));
      }

      v116.f32[3] = v117;
      v243 = v116;
      v118 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v335, *(v348 + 8 * v346 - 8));
      *(v118 + 432) = vdupq_lane_s32(v246, 0);
      *(v118 + 448) = v243;
      *(v118 + 464) = 0;
      *(v118 + 472) = 0;
      v119 = v98;
      v120 = v99;
      re::loadUSKSkeletalAnimationNodes(v120, &v316);
      re::loadUSKSkeletonNodes(v120, &v316);
      re::loadUSKBlendShapeNodes(v120, &v316);
      re::loadTransformAndMeshNodes(v119, v120, &v316, 1);
      re::loadUSKDeformerStackNodes(v119, v120, &v316);
      v234 = v119;

      re::loadUSKPhysicsNodes(v120, &v316);
      v235 = v120;

      --v346;
      ++v347;
      if ((v97 & 1) == 0)
      {
        while (v101 < v337)
        {
          v121 = re::USDImportContext::setNodeAsEntity(&v316, v101++);
        }
      }

      v122 = v322;
      if (v322 && *(v319 + 96) == 1)
      {
        v123 = 0;
        do
        {
          v124 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](&v320, v123);
          v125 = v265;
          v126 = *(re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](&v320, v123) + 8);
          v127 = strlen(v126);
          v128 = re::globalAllocators(v127);
          v129 = (*(*v128[2] + 32))(v128[2], 272, 8);
          re::StringID::StringID(&__dst, v124 + 1);
          re::FixedArray<re::StringID>::FixedArray(&v359, &v124[2]);
          re::FixedArray<unsigned int>::FixedArray(&v360 + 1, &v124[3].var1);
          re::FixedArray<re::GenericSRT<float>>::FixedArray(&v362, &v124[5]);
          re::SkeletonAsset::SkeletonAsset(v129, &__dst);
          v131 = re::SkeletonAsset::assetType(v130);
          re::ImportAssetTable::addAsset(v125, v126, v127, v129, v131);
          if (v362)
          {
            if (*(&v362 + 1))
            {
              (*(*v362 + 40))();
              *(&v362 + 1) = 0;
              *&v363 = 0;
            }

            *&v362 = 0;
          }

          if (*(&v360 + 1))
          {
            if (v361)
            {
              (*(**(&v360 + 1) + 40))();
              v361 = 0uLL;
            }

            *(&v360 + 1) = 0;
          }

          v121 = re::FixedArray<re::StringID>::deinit(&v359);
          if (__dst)
          {
            if (__dst)
            {
            }
          }

          ++v123;
        }

        while (v122 != v123);
      }

      v132 = v340;
      v313 = 0;
      v312 = 0;
      v314 = 0;
      v310 = 0;
      v308 = 0u;
      v309 = 0u;
      v311 = 0x7FFFFFFFLL;
      a1 = v245;
      v134 = v335;
      if (v132)
      {
        break;
      }

LABEL_173:
      v162 = *(v242 + 16);
      if (v162)
      {
        v163 = *(v242 + 32);
        v164 = 112 * v162;
        do
        {
          re::addPhysicsFromImportContext(&v316, &v253, v163);
          v163 += 112;
          v164 -= 112;
        }

        while (v164);
      }

      v165.n128_f64[0] = re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v308);
      if (v312)
      {
        v166 = v313 == 0;
      }

      else
      {
        v166 = 1;
      }

      if (!v166)
      {
        (*(*v312 + 40))(v165);
      }

      if (v337)
      {
        for (i = 0; i < v337; ++i)
        {
          v168 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v335, i);
          if (*(v168 + 20) != -1)
          {
            v169 = *(v168 + 6);
            v170 = *(v168 + 4);
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1 + 56, v169, &__dst);
            if (__dst)
            {
              if (BYTE8(__dst))
              {
                (*(*__dst + 40))();
              }
            }
          }
        }
      }

      re::USDImportContext::deinit(&v316);
      v171.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v349);
      if (v344)
      {
        if (v348)
        {
          (*(*v344 + 40))(v171.n128_f64[0]);
        }

        v348 = 0;
        v345 = 0;
        v346 = 0;
        v344 = 0;
        ++v347;
      }

      if (v342)
      {
        if (BYTE8(v342))
        {
          (*(*v342 + 40))(v171);
        }

        v342 = 0u;
        v343 = 0u;
      }

      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v341);
      re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v338);
      if (v338[0])
      {
        v172 = v339;
        if ((v339 & 1) == 0)
        {
          (*(*v338[0] + 40))();
          v172 = v339;
        }

        v338[0] = 0;
        v338[1] = 0;
        v339 = (v172 | 1) + 2;
      }

      re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::deinit(v335);
      if (v335[0])
      {
        v173 = v336;
        if ((v336 & 1) == 0)
        {
          (*(*v335[0] + 40))();
          v173 = v336;
        }

        v335[0] = 0;
        v335[1] = 0;
        v336 = (v173 | 1) + 2;
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v334);
      re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::deinit(v332);
      if (v332[0])
      {
        v174 = v333;
        if ((v333 & 1) == 0)
        {
          (*(*v332[0] + 40))();
          v174 = v333;
        }

        v332[0] = 0;
        v332[1] = 0;
        v333 = (v174 | 1) + 2;
      }

      re::USDImportContext::PhysicsColliderTable::~PhysicsColliderTable(&v331);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v330);
      re::BucketArray<re::USDImportContextBlendShapeData,8ul>::deinit(v328);
      if (v328[0])
      {
        v175 = v329;
        if ((v329 & 1) == 0)
        {
          (*(*v328[0] + 40))();
          v175 = v329;
        }

        v328[0] = 0;
        v328[1] = 0;
        v329 = (v175 | 1) + 2;
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v327);
      re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::deinit(v325);
      if (v325[0])
      {
        v176 = v326;
        if ((v326 & 1) == 0)
        {
          (*(*v325[0] + 40))();
          v176 = v326;
        }

        v325[0] = 0;
        v325[1] = 0;
        v326 = (v176 | 1) + 2;
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v323);
      re::BucketArray<re::USDImportContextSkeletonData,4ul>::deinit(&v320);
      if (v320 && (v321 & 1) == 0)
      {
        (*(*v320 + 40))();
      }

      v177 = [v235 path];
      v178 = [v177 stringValue];
      v179 = [v178 UTF8String];
      v180 = strlen(v179);
      v316.n128_u64[0] = v179;
      v316.n128_u64[1] = v180;
      re::DynamicString::operator=((v236 - 104), &v316);

      v68 = v238 + 1;
      v72 = v233;
      if (v238 + 1 == v226)
      {
        goto LABEL_273;
      }
    }

    v135 = 0;
    v136 = v338;
    do
    {
      v137 = v313;
      if (v313 <= v135)
      {
        p_dst = 0;
        v361 = 0u;
        v362 = 0u;
        v359 = 0u;
        v360 = 0u;
        __dst = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v350[0]) = 136315906;
        *(v350 + 4) = "operator[]";
        WORD2(v350[1]) = 1024;
        *(&v350[1] + 6) = 468;
        WORD1(v350[2]) = 2048;
        *(&v350[2] + 4) = v135;
        WORD2(v350[3]) = 2048;
        *(&v350[3] + 6) = v137;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_308:
        p_dst = 0;
        v137 = v350;
        v361 = 0u;
        v362 = 0u;
        v359 = 0u;
        v360 = 0u;
        __dst = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v350[0]) = 136315906;
        *(v350 + 4) = "operator[]";
        WORD2(v350[1]) = 1024;
        *(&v350[1] + 6) = 789;
        WORD1(v350[2]) = 2048;
        *(&v350[2] + 4) = v132;
        WORD2(v350[3]) = 2048;
        *(&v350[3] + 6) = v134;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_309;
      }

      if ((*(v135 + v314) & 1) == 0)
      {
        v138 = re::BucketArray<unsigned long,32ul>::operator[](v338, v135);
        v139 = v265;
        v140 = v316.n128_i64[1];
        v141 = *(re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v335, *v138) + 32);
        v137 = strlen(v141);
        *&__dst = v141;
        *(&__dst + 1) = v137;
        v350[0] = v139;
        memset(&v350[2], 0, 24);
        if (v137)
        {
          v142 = v137 + 1;
        }

        else
        {
          v142 = 0;
        }

        re::DynamicString::setCapacity(&v350[1], v142);
        re::DynamicString::operator=(&v350[1], &__dst);
        v350[5] = v140;
        *(&v351 + 1) = 0;
        *&v352 = 0;
        LODWORD(v351) = -8388609;
        DWORD2(v352) = 1;
        *&v354 = 0;
        v353 = 0uLL;
        DWORD2(v354) = 0;
        p_dst = 0;
        v300 = &str_67;
        v305 = 0;
        v302 = 0;
        v303 = 0;
        v301 = 0;
        v304 = 0;
        v306 = 0;
        memset(v307, 0, sizeof(v307));
        v293 = 0;
        v292 = 0;
        LODWORD(v294) = 1;
        v296 = 0;
        v297 = 0;
        v295 = 0;
        v298 = 0;
        *re::BucketArray<re::TimelineGroupBuilder *,8ul>::addUninitialized(&v292) = v350;
        re::createEntityFromImportContext(&__dst, &v316, &v253, v135, &v292, &p_dst, &v312, &v308, 1);
        if (__dst == 1)
        {
          re::DynamicArray<re::ecs2::EntityAssetData>::add(v242, &__dst + 8);
          if (__dst)
          {
            re::ecs2::EntityAssetData::~EntityAssetData((&__dst + 8));
          }
        }

        v143 = v297;
        if (v297)
        {
          v137 = 0;
          do
          {
            re::BucketArray<unsigned long,8ul>::operator[](&v292, v137++);
          }

          while (v143 != v137);
        }

        while (v293)
        {
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v292);
        }

        if (v292 && (v294 & 1) == 0)
        {
          (*(*v292 + 40))();
        }

        re::AssetHandle::~AssetHandle(v307);
        v144 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(&v301);
        if (p_dst)
        {
          if (p_dst)
          {
          }
        }

        re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::deinit(&v351 + 8);
        if (*(&v351 + 1))
        {
          v145 = DWORD2(v352);
          if ((BYTE8(v352) & 1) == 0)
          {
            (*(**(&v351 + 1) + 40))();
            v145 = DWORD2(v352);
          }

          *(&v351 + 1) = 0;
          *&v352 = 0;
          DWORD2(v352) = (v145 | 1) + 2;
        }

        v133 = v350[1];
        if (v350[1] && (v350[2] & 1) != 0)
        {
          v133 = (*(*v350[1] + 40))();
        }
      }

      v135 = (v135 + 1);
    }

    while (v135 != v132);
    a1 = v245;
    if (!HIDWORD(v309))
    {
      goto LABEL_173;
    }

    v146 = v265;
    v147 = re::MeshDeformationAsset::assetType(v133);
    v148 = *v146;
    v293 = 0;
    v294 = 0;
    LODWORD(v295) = 0;
    v296 = 0;
    v292 = v148;
    re::DynamicArray<float *>::setCapacity(&v292, 0);
    v150 = v295 + 1;
    LODWORD(v295) = v295 + 1;
    v151 = *(v146 + 5);
    if (v151)
    {
      v136 = 0;
      while (1)
      {
        v152 = *(v146 + 5);
        if (v152 <= v136)
        {
          break;
        }

        v137 = v136 >> 5;
        v135 = *(v146 + 1);
        if (v135 <= v136 >> 5)
        {
          goto LABEL_310;
        }

        v153 = v146 + 24;
        if ((*(v146 + 16) & 1) == 0)
        {
          v153 = *(v146 + 4);
        }

        v135 = (*(v153 + 8 * v137) + 48 * (v136 & 0x1F));
        v154 = strlen(v147[1]);
        v155 = re::DynamicString::find(v135, v147[1], v154, 0, &__dst);
        if (__dst == 1)
        {
          v156 = v294;
          if (v294 >= v293)
          {
            v137 = v294 + 1;
            if (v293 < v294 + 1)
            {
              if (v292)
              {
                v157 = 2 * v293;
                if (!v293)
                {
                  v157 = 8;
                }

                if (v157 <= v137)
                {
                  v158 = v294 + 1;
                }

                else
                {
                  v158 = v157;
                }

                re::DynamicArray<float *>::setCapacity(&v292, v158);
                v150 = v295;
              }

              else
              {
                re::DynamicArray<float *>::setCapacity(&v292, v137);
                v150 = v295 + 1;
              }
            }

            v156 = v294;
          }

          *(v296 + 8 * v156) = v135;
          v294 = v156 + 1;
          LODWORD(v295) = ++v150;
        }

        ++v136;
        a1 = v245;
        if (v151 == v136)
        {
          goto LABEL_162;
        }
      }

LABEL_309:
      re::internal::assertLog(6, v149, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v136, v152, v283, &v279);
      _os_crash();
      __break(1u);
LABEL_310:
      p_dst = 0;
      v361 = 0u;
      v362 = 0u;
      v359 = 0u;
      v360 = 0u;
      __dst = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v350[0]) = 136315906;
      *(v350 + 4) = "operator[]";
      WORD2(v350[1]) = 1024;
      *(&v350[1] + 6) = 866;
      WORD1(v350[2]) = 2048;
      *(&v350[2] + 4) = v137;
      WORD2(v350[3]) = 2048;
      *(&v350[3] + 6) = v135;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_162:
    v244 = v310;
    if (v310)
    {
      v136 = 0;
      v159 = v309;
      do
      {
        v160 = *v159;
        v159 += 14;
        if (v160 < 0)
        {
          goto LABEL_169;
        }

        ++v136;
      }

      while (v310 != v136);
      v136 = v310;
    }

    else
    {
      v136 = 0;
    }

LABEL_169:
    if (v136 == v310)
    {
      goto LABEL_170;
    }

    v181 = v309;
    v240 = v296;
    v241 = v294;
    v239 = v296 + 8 * v294;
LABEL_222:
    if (!v241)
    {
      goto LABEL_256;
    }

    v182 = v181 + 56 * v136;
    v183 = v240;
    while (1)
    {
      v184 = *(*v183 + 40);
      v185 = v184[7];
      if (v185)
      {
        break;
      }

LABEL_239:
      v183 += 8;
      a1 = v245;
      if (v183 == v239)
      {
        goto LABEL_256;
      }
    }

    v135 = v184[9];
    v186 = &v135[6 * v185];
    while (1)
    {
      if (!re::StringID::operator==(v135 + 1, (v182 + 8)))
      {
        goto LABEL_238;
      }

      v132 = v135[5];
      v134 = v184[2];
      if (v134 <= v132)
      {
        goto LABEL_308;
      }

      v187 = v184[4] + 40 * v132;
      v188 = *(v182 + 40);
      if (v188 < 0xFFFFFFFFFFFFFFFELL || (v188 & 1) != 0)
      {
        if (v188 > 1)
        {
          goto LABEL_234;
        }

        v189 = *(v182 + 48);
        if (!v189)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v189 = *(v182 + 48);
      }

      if (!*v189)
      {
        v372 = 0u;
        v373 = 0u;
        v370 = 0u;
        v371 = 0u;
        v368 = 0u;
        v369 = 0u;
        v366 = 0u;
        v367 = 0u;
        v364 = 0u;
        v365 = 0u;
        v362 = 0u;
        v363 = 0u;
        v360 = 0u;
        v361 = 0u;
        __dst = 0u;
        v359 = 0u;
        v374 = -1;
        v199 = v187;
        v200 = strlcpy(&__dst, *(v182 + 16), 0x80uLL);
        v350[0] = 0x4425D6C2BB3546C6;
        v350[1] = "FenceDeformer";
        p_dst = &__dst;
        v300 = 257;
        memset(&v350[2], 0, 24);
        re::FixedArray<unsigned char>::copy(&v350[2], &p_dst);
        re::DynamicArray<re::DeformationDefinition>::add(v199, v350);
        v201 = v350[2];
        a1 = v245;
        if (v350[2])
        {
          if (v350[3])
          {
            v201 = (*(*v350[2] + 40))();
            v350[3] = 0;
            v350[4] = 0;
          }

          v350[2] = 0;
        }

        if (v350[0])
        {
          if (v350[0])
          {
          }
        }

        goto LABEL_256;
      }

LABEL_234:
      v247 = (v184[4] + 40 * v132);
      v190 = *(v187 + 16);
      if (v190)
      {
        v191 = 0;
        v192 = v247[4];
        v193 = 2;
        while (!re::StringID::operator==((v192 + 40 * v191), (v182 + 40)))
        {
          v191 = v193++ - 1;
          if (v190 <= v191)
          {
            goto LABEL_238;
          }
        }

        v372 = 0u;
        v373 = 0u;
        v370 = 0u;
        v371 = 0u;
        v368 = 0u;
        v369 = 0u;
        v366 = 0u;
        v367 = 0u;
        v364 = 0u;
        v365 = 0u;
        v362 = 0u;
        v363 = 0u;
        v360 = 0u;
        v361 = 0u;
        __dst = 0u;
        v359 = 0u;
        v374 = -1;
        v194 = strlcpy(&__dst, *(v182 + 16), 0x80uLL);
        v350[0] = 0x4425D6C2BB3546C6;
        v350[1] = "FenceDeformer";
        p_dst = &__dst;
        v300 = 257;
        memset(&v350[2], 0, 24);
        re::FixedArray<unsigned char>::copy(&v350[2], &p_dst);
        re::DynamicArray<re::DeformationDefinition>::insert(v247, v193 - 1, v350);
        v195 = v350[2];
        a1 = v245;
        if (v350[2])
        {
          if (v350[3])
          {
            v195 = (*(*v350[2] + 40))();
            v350[3] = 0;
            v350[4] = 0;
          }

          v350[2] = 0;
        }

        if (v350[0])
        {
          if (v350[0])
          {
          }
        }

        if (v247[2] > v193)
        {
          memset(v356, 0, sizeof(v356));
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v351 = 0u;
          memset(v350, 0, sizeof(v350));
          v357 = -1;
          v196 = strlcpy(v356, *(v182 + 32), 0x80uLL);
          v357 = 13;
          p_dst = 0x4425D6C2BB3546C6;
          v300 = "FenceDeformer";
          v315[0] = v350;
          v315[1] = 257;
          v302 = 0;
          v303 = 0;
          v301 = 0;
          re::FixedArray<unsigned char>::copy(&v301, v315);
          re::DynamicArray<re::DeformationDefinition>::insert(v247, v193, &p_dst);
          v197 = v301;
          if (v301)
          {
            if (v302)
            {
              v197 = (*(*v301 + 40))();
              v302 = 0;
              v303 = 0;
            }

            v301 = 0;
          }

          if (p_dst)
          {
            if (p_dst)
            {
            }
          }
        }

LABEL_256:
        if (v310 <= v136 + 1)
        {
          v198 = (v136 + 1);
        }

        else
        {
          v198 = v310;
        }

        v181 = v309;
        while (v198 - 1 != v136)
        {
          v136 = (v136 + 1);
          if ((*(v309 + 56 * v136) & 0x80000000) != 0)
          {
            goto LABEL_264;
          }
        }

        v136 = v198;
LABEL_264:
        if (v136 == v244)
        {
LABEL_170:
          if (v292 && v296)
          {
            (*(*v292 + 40))();
          }

          goto LABEL_173;
        }

        goto LABEL_222;
      }

LABEL_238:
      v135 += 6;
      if (v135 == v186)
      {
        goto LABEL_239;
      }
    }
  }

LABEL_273:
  v202 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:HIDWORD(v280)];
  v203 = v281;
  if (v281)
  {
    v204 = 0;
    v205 = v280;
    while (1)
    {
      v206 = *v205;
      v205 += 20;
      if (v206 < 0)
      {
        break;
      }

      if (v281 == ++v204)
      {
        LODWORD(v204) = v281;
        break;
      }
    }
  }

  else
  {
    LODWORD(v204) = 0;
  }

  if (v204 != v281)
  {
    v207 = v280;
    do
    {
      v208 = v207 + 80 * v204;
      if (*(v208 + 48))
      {
        v209 = *(v208 + 56);
      }

      else
      {
        v209 = v208 + 49;
      }

      v210 = v208 + 8;
      v211 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v209];
      if (*(v210 + 8))
      {
        v212 = *(v210 + 16);
      }

      else
      {
        v212 = v210 + 9;
      }

      v213 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v212];
      [v202 setObject:v211 forKeyedSubscript:v213];

      if (v281 <= v204 + 1)
      {
        v214 = v204 + 1;
      }

      else
      {
        v214 = v281;
      }

      v207 = v280;
      while (v214 - 1 != v204)
      {
        LODWORD(v204) = v204 + 1;
        if ((*(v280 + 80 * v204) & 0x80000000) != 0)
        {
          goto LABEL_295;
        }
      }

      LODWORD(v204) = v214;
LABEL_295:
      ;
    }

    while (v204 != v203);
  }

  v215 = [v202 copy];
  re::ObjCObject::operator=((a1 + 336), v215);

  v216 = v248;
  if (v248)
  {
    v217 = v252;
    if (v252)
    {
      if (v250)
      {
        v218 = 8 * v250;
        v219 = v252;
        do
        {
          v220 = *v219++;

          v218 -= 8;
        }

        while (v218);
      }

      (*(*v216 + 40))(v216, v217);
    }
  }

  re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v283);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v279);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v276);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v273);
  re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v266);

  if (v262[0])
  {
    if (v262[1])
    {
      (*(*v262[0] + 40))();
    }

    memset(v262, 0, 32);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v287);
  return 1;
}

uint64_t re::buildTexturesTable(uint64_t a1, id *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v142[5] = *MEMORY[0x1E69E9840];
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v126 = a4;
  re::DynamicArray<re::ImportedTexturesTable::Entry>::setCapacity(&v126, 0);
  ++v129;
  v96 = [*a2 loadedNodeIterator];
  v5 = [v96 nextObject];
  if (v5)
  {
    v95 = *MEMORY[0x1E69DEE68];
    do
    {
      v6 = v5;
      v7 = [v5 type];
      v8 = [v7 isEqualToString:v95];

      if (v8)
      {
        v94 = v6;
        re::gatherMaterialTextureProperties(v6, &v112);
        v9 = HIDWORD(v115);
        if (HIDWORD(v115))
        {
          v10 = 0;
          v11 = *(&v113 + 1);
          while (1)
          {
            v12 = *v11;
            v11 += 14;
            if (v12 < 0)
            {
              break;
            }

            if (HIDWORD(v115) == ++v10)
            {
              LODWORD(v10) = HIDWORD(v115);
              break;
            }
          }
        }

        else
        {
          LODWORD(v10) = 0;
        }

        if (v10 != HIDWORD(v115))
        {
          v13 = *(&v113 + 1);
          v98 = HIDWORD(v115);
          while (2)
          {
            v14 = v13 + 56 * v10;
            v15 = *(v14 + 40);
            ResourcePathAndColorSpaceForTextureProperty = re::getResourcePathAndColorSpaceForTextureProperty(v15);
            v18 = ResourcePathAndColorSpaceForTextureProperty;
            if (!ResourcePathAndColorSpaceForTextureProperty)
            {
              goto LABEL_121;
            }

            v19 = v17;
            v20 = [ResourcePathAndColorSpaceForTextureProperty path];
            v21 = [v18 resolvedPath];
            v22 = v21;
            if (v21 && (v21 = [(re *)v21 length]) != 0)
            {
              v101 = v19;
              v109 = v20;
              v23 = v14 + 8;
              v24 = *(v14 + 24);
              v25 = *(v14 + 16) & 1;
              v26 = (v14 + 17);
              if (v25)
              {
                v27 = *(v14 + 24);
              }

              else
              {
                v27 = (v14 + 17);
              }

              v100 = strcmp(v27, "textureRMAS");
              if (v100)
              {
                if (!strcmp(v27, "textureBaseColor") && ((v119 & 1) != 0 || (v119 & 0x100) != 0))
                {
                  v99 = 0;
                  v105 = 5;
                  v106 = 4;
                  v107 = 3;
                  v108 = 2;
                  goto LABEL_52;
                }

                v103 = v26;
                v29 = [v15 name];
                v30 = [v29 stringValue];

                v32 = re::swizzleForTextureOutputProperty(v30, v31);
                v107 = BYTE1(v32);
                v108 = v32;
                v105 = HIBYTE(v32);
                v106 = BYTE2(v32);
                v99 = 1;
              }

              else
              {
                v103 = v26;
                if (*&v116[12])
                {
                  v34 = [*&v116[12] name];
                  v97 = [v34 stringValue];
                }

                else
                {
                  v97 = 0;
                }

                if (v117)
                {
                  v35 = [v117 name];
                  v36 = [v35 stringValue];
                }

                else
                {
                  v36 = 0;
                }

                if (*(&v117 + 1))
                {
                  v37 = [*(&v117 + 1) name];
                  v38 = [v37 stringValue];
                }

                else
                {
                  v38 = 0;
                }

                if (v118)
                {
                  [v118 name];
                  v40 = v39 = v36;
                  v41 = [v40 stringValue];

                  v36 = v39;
                }

                else
                {
                  v41 = 0;
                }

                if (v97)
                {
                  v42 = re::swizzleForTextureOutputProperty(v97, v28);
                }

                else
                {
                  v42 = 1;
                }

                v108 = v42;
                if (v36)
                {
                  v43 = re::swizzleForTextureOutputProperty(v36, v28);
                }

                else
                {
                  v43 = 1;
                }

                v107 = v43;
                if (v38)
                {
                  v44 = re::swizzleForTextureOutputProperty(v38, v28);
                }

                else
                {
                  v44 = 1;
                }

                v106 = v44;
                if (v41)
                {
                  v45 = re::swizzleForTextureOutputProperty(v41, v28);
                }

                else
                {
                  v45 = 1;
                }

                v105 = v45;

                v99 = 2;
                v30 = v97;
              }

              v24 = *(v23 + 16);
              v25 = *(v23 + 8) & 1;
              v26 = v103;
LABEL_52:
              if (v25)
              {
                v46 = v24;
              }

              else
              {
                v46 = v26;
              }

              if (!strcmp(v46, "textureNormal"))
              {
                v49 = 0;
                v50 = 5;
                v47 = v109;
              }

              else
              {
                v47 = v109;
                if (!strcmp(v46, "textureEmissive"))
                {
                  v49 = 0;
                  v50 = 4;
                }

                else if (!strcmp(v46, "textureBaseColor"))
                {
                  v49 = 0;
                  v50 = 3;
                }

                else if (v108 == 2 && ((v48 = strcmp(v46, "textureOpacity"), !strcmp(v46, "textureMetallic")) || !strcmp(v46, "textureRoughness") || !strcmp(v46, "textureSpecular") || !strcmp(v46, "textureAmbientOcclusion") || !strcmp(v46, "textureClearcoat") || !strcmp(v46, "textureClearcoatRoughness") || !v48))
                {
                  v49 = v48 != 0;
                  v50 = 2;
                }

                else
                {
                  v49 = 0;
                  v50 = 6;
                }
              }

              v51 = [v47 UTF8String];
              v52 = strlen(v51);
              v53 = [(re *)v22 UTF8String];
              if (a3[66] != 1 || ((v125[0] & 1) != 0 ? (v55 = v125[1]) : (v55 = v125 + 1), (v125[0] & 1) != 0 ? (v56 = v125[0] >> 1) : (v56 = LOBYTE(v125[0]) >> 1), isPackageRelativePath = re::isPackageRelativePath(v55, v56), isPackageRelativePath))
              {
                v104 = v49;
                v57 = re::TextureAsset::assetType(isPackageRelativePath);
                re::ImportAssetTable::compiledAssetPath(v51, v52, v57, &v131);
                v58 = v130;
                v59 = v128;
                if (v128)
                {
                  v60 = 96 * v128;
                  v61 = v130;
                  while (!re::DynamicString::operator==(v61, &v131))
                  {
                    v61 += 96;
                    v60 -= 96;
                    if (!v60)
                    {
                      goto LABEL_83;
                    }
                  }
                }

                else
                {
LABEL_83:
                  v63 = re::DynamicString::DynamicString(&buf, &v131);
                  *&v137 = 0x600000000;
                  DWORD2(v137) = 67305984;
                  BYTE12(v137) = 5;
                  v138 = 0;
                  v139 = 0u;
                  v140 = 0u;
                  v64 = re::DynamicString::setCapacity(&v139, 0);
                  v141 = 0;
                  if (v59 >= v127)
                  {
                    if (v127 < v59 + 1)
                    {
                      if (v126)
                      {
                        v65 = 8;
                        if (v127)
                        {
                          v65 = 2 * v127;
                        }

                        if (v65 <= v59 + 1)
                        {
                          v66 = v59 + 1;
                        }

                        else
                        {
                          v66 = v65;
                        }

                        re::DynamicArray<re::ImportedTexturesTable::Entry>::setCapacity(&v126, v66);
                      }

                      else
                      {
                        re::DynamicArray<re::ImportedTexturesTable::Entry>::setCapacity(&v126, v59 + 1);
                        ++v129;
                      }
                    }

                    v59 = v128;
                    v58 = v130;
                  }

                  v67 = v58 + 96 * v59;
                  *v67 = 0u;
                  *(v67 + 16) = 0u;
                  *v67 = buf;
                  *&buf = 0;
                  v68 = *(v67 + 16);
                  *(v67 + 16) = v135;
                  v135 = v68;
                  *(v67 + 24) = v136;
                  v136 = 0;
                  v69 = *(v67 + 8);
                  *(v67 + 8) = *(&buf + 1);
                  *(&buf + 1) = v69;
                  v70 = v137;
                  *(v67 + 48) = v138;
                  *(v67 + 32) = v70;
                  *(v67 + 72) = 0u;
                  *(v67 + 56) = 0u;
                  *(v67 + 56) = v139;
                  *&v139 = 0;
                  v71 = *(v67 + 72);
                  *(v67 + 72) = v140;
                  *&v140 = v71;
                  *(v67 + 80) = *(&v140 + 1);
                  *(&v140 + 1) = 0;
                  v72 = *(v67 + 64);
                  *(v67 + 64) = *(&v139 + 1);
                  *(&v139 + 1) = v72;
                  *(v67 + 88) = v141;
                  v73 = v59 + 1;
                  v128 = v73;
                  ++v129;
                  if (v139)
                  {
                    if (BYTE8(v139))
                    {
                      (*(*v139 + 40))();
                    }

                    v140 = 0u;
                    v139 = 0u;
                  }

                  if (buf && (BYTE8(buf) & 1) != 0)
                  {
                    (*(*buf + 40))();
                  }

                  v61 = v58 + 96 * v73 - 96;
                }

                if (v131 && (v132 & 1) != 0)
                {
                  (*(*v131 + 40))();
                }

                v74 = *(v61 + 32);
                if (v74 == 1)
                {
                  SemanticPriority = re::getSemanticPriority(v50);
                  if (SemanticPriority > re::getSemanticPriority(*(v61 + 36)))
                  {
                    *(v61 + 36) = v50;
                    *(v61 + 40) = v104;
                  }

                  if (v100)
                  {
                    if (*(v61 + 41) == ((v106 << 16) | (v105 << 24) | (v107 << 8) | v108) || *(v61 + 48) == 2)
                    {
                      goto LABEL_116;
                    }

                    *(v61 + 41) = 84148994;
                    v76 = 3;
                  }

                  else
                  {
                    *(v61 + 41) = v108;
                    *(v61 + 42) = v107;
                    *(v61 + 43) = v106;
                    *(v61 + 44) = v105;
                    v76 = 2;
                  }

                  *(v61 + 48) = v76;
                  goto LABEL_116;
                }

                if (v74)
                {
                  re::internal::assertLog(4, v62, "assertion failure: '%s' (%s:line %i) Unexpected imported texture source", "!Unreachable code", "buildTexturesTable", 5961);
                  _os_crash();
                  __break(1u);
                }

                *(v61 + 32) = 1;
                re::DynamicString::operator=((v61 + 56), &v124);
                *(v61 + 41) = v108;
                *(v61 + 42) = v107;
                *(v61 + 43) = v106;
                *(v61 + 44) = v105;
                *(v61 + 48) = v99;
                *(v61 + 36) = v50;
                *(v61 + 40) = v104;
                *(v61 + 88) = v101;
              }

LABEL_116:
              if (v124 && (v125[0] & 1) != 0)
              {
                (*(*v124 + 40))();
              }

              v9 = v98;
              v20 = v109;
            }

            else
            {
              v33 = *re::pipelineLogObjects(v21);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v20;
                _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to resolve reference to texture '%@'", &buf, 0xCu);
              }
            }

LABEL_121:
            if (HIDWORD(v115) <= (v10 + 1))
            {
              v77 = v10 + 1;
            }

            else
            {
              v77 = HIDWORD(v115);
            }

            v13 = *(&v113 + 1);
            while (v77 - 1 != v10)
            {
              LODWORD(v10) = v10 + 1;
              if ((*(*(&v113 + 1) + 56 * v10) & 0x80000000) != 0)
              {
                goto LABEL_129;
              }
            }

            LODWORD(v10) = v77;
LABEL_129:
            if (v10 == v9)
            {
              break;
            }

            continue;
          }
        }

        re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v112);
        v6 = v94;
      }

      v5 = [v96 nextObject];
    }

    while (v5);
  }

  v110 = v128;
  if (v128)
  {
    v78 = 0;
    v79 = v130;
    v80 = 96 * v128;
    do
    {
      v81 = v79 + v78;
      if (*(v79 + v78 + 32) == 1)
      {
        v82 = *(v81 + 88);
        v83 = a3[64];
        v84 = a3[65];
        v112 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
        v123 = 0u;
        v120 = 0u;
        v117 = 0u;
        *&v116[4] = 0u;
        v113 = 0u;
        v115 = 0;
        *v116 = 0;
        v116[8] = 0;
        v114 = 1;
        DWORD2(v117) = 6;
        v118 = 0;
        v119 = 0;
        *&v120 = 0;
        DWORD2(v120) = -65536;
        v121 = 0;
        v122 = 0;
        BYTE8(v123) = 0;
        *&v123 = 0;
        [v112 setResourceOptions_];
        DWORD2(v117) = *(v81 + 36);
        if (DWORD2(v117) == 6)
        {
          if (v113 == 2)
          {
            LODWORD(v113) = 0;
          }

          if (DWORD1(v113) == 3)
          {
            DWORD1(v113) = 0;
          }
        }

        else
        {
          *&v113 = 0x300000002;
        }

        objc_storeStrong(&v118, v82);
        if (v84)
        {
          BYTE4(v117) = 1;
        }

        v85 = *(v81 + 36);
        if (v85 != 2 && v83)
        {
          LODWORD(v113) = 1;
          if ((v85 - 3) >= 2)
          {
            v86 = 204;
          }

          else
          {
            v86 = 186;
          }

          [v112 setPixelFormat_];
          LODWORD(v115) = 3;
        }

        if (*(v79 + v78 + 40) == 1)
        {
          LODWORD(v113) = 1;
          [v112 setPixelFormat_];
        }

        if (*(v79 + v78 + 41) != 84148994)
        {
          [v112 setSwizzle_];
        }

        v87 = a3[65];
        re::DynamicString::DynamicString(v111, (v81 + 56));
        re::USKTextureProvider::USKTextureProvider(&buf, a3, v87, v111);
        if (*&v111[0])
        {
          if (BYTE8(v111[0]))
          {
            (*(**&v111[0] + 40))();
          }

          memset(v111, 0, sizeof(v111));
        }

        re::TextureProvider::setTemplateDescriptor(&buf, &v112, 0);
        re::TextureProvider::setOptions(&buf, &v113);
        re::DynamicString::operator=((&buf + 8), (v81 + 56));
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v88 = re::Hash<re::DynamicString>::operator()(&v124, v79 + v78);
        re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v131, a1 + 8, v79 + v78, v88);
        if (HIDWORD(v132) == 0x7FFFFFFF)
        {
          v89 = re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 8, v132, v131);
          re::DynamicString::DynamicString((v89 + 8), (v79 + v78));
          re::TextureProvider::TextureProvider((v89 + 40), &buf);
          *(v89 + 40) = &unk_1F5CC4C98;
          re::DynamicString::DynamicString((v89 + 288), v142);
          *(v89 + 40) = &unk_1F5D0B5C8;
          ++*(a1 + 48);
        }

        *&buf = &unk_1F5CC4C98;
        if (v142[0])
        {
          if (v142[1])
          {
            (*(*v142[0] + 40))();
          }

          memset(v142, 0, 32);
        }

        re::TextureProvider::~TextureProvider(&buf);
        if (v121)
        {
          if (v122)
          {
            (*(*v121 + 40))();
            v122 = 0;
            *&v123 = 0;
          }

          v121 = 0;
        }

        if (v112)
        {
        }
      }

      v78 += 96;
    }

    while (v80 != v78);
  }

  result = v126;
  if (v126)
  {
    v91 = v130;
    if (v130)
    {
      if (v110)
      {
        v92 = 96 * v110;
        do
        {
          re::DynamicString::deinit((v91 + 56));
          re::DynamicString::deinit(v91);
          v91 += 96;
          v92 -= 96;
        }

        while (v92);
        result = v126;
        v91 = v130;
      }

      return (*(*result + 40))(result, v91);
    }
  }

  return result;
}

id re::getResourcePathAndColorSpaceForTextureProperty(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = [a1 parentNode];
  v2 = [MEMORY[0x1E69DED88] shaderNodeType:v1];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69DEEC8]];

  if (v3)
  {
    v4 = [v1 property:@"inputs:file"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 metadataWithKey:@"colorSpace"];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 stringValue];
        if (!re::CGColorSpaceNameFromOCIOString(v8, v9))
        {
          v10 = *re::pipelineLogObjects(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138412290;
            v19 = v8;
            _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Warning, no suitable convertion to CGColorSpace found for OpenColorIO tag: %@.", &v18, 0xCu);
          }
        }
      }

      v12 = [v5 type];
      v13 = [v12 isEqualToString:*MEMORY[0x1E69DEE18]];

      if (v13)
      {
        v14 = [v5 resourcePath];
        v15 = [v14 path];
        v16 = v15;
        if (v15 && [v15 length])
        {
          v11 = v14;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t re::swizzleForTextureOutputProperty(re *this, NSString *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  if (([(re *)v2 isEqualToString:@"outputs:r"]& 1) != 0)
  {
    v3 = 0x1000000;
    v4 = 0x20000;
    v5 = 512;
LABEL_3:
    v6 = 2;
    goto LABEL_10;
  }

  if (([(re *)v2 isEqualToString:@"outputs:g"]& 1) != 0)
  {
    v3 = 0x1000000;
    v4 = 196608;
    v5 = 768;
    v6 = 3;
    goto LABEL_10;
  }

  if (([(re *)v2 isEqualToString:@"outputs:b"]& 1) != 0)
  {
    v3 = 0x1000000;
    v4 = 0x40000;
    v5 = 1024;
    v6 = 4;
    goto LABEL_10;
  }

  if (([(re *)v2 isEqualToString:@"outputs:a"]& 1) != 0)
  {
    v3 = 0x1000000;
    v4 = 327680;
    v5 = 1280;
    v6 = 5;
    goto LABEL_10;
  }

  if (([(re *)v2 isEqualToString:@"outputs:rgb"]& 1) != 0)
  {
    v3 = 0x1000000;
LABEL_15:
    v4 = 0x40000;
    v5 = 768;
    goto LABEL_3;
  }

  v8 = [(re *)v2 isEqualToString:@"outputs:rgba"];
  if (v8)
  {
    v3 = 83886080;
    goto LABEL_15;
  }

  v9 = *re::pipelineLogObjects(v8);
  v6 = 2;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_debug_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEBUG, "Unexpected texture output property '%@' during scene import", &v10, 0xCu);
  }

  v3 = 83886080;
  v4 = 0x40000;
  v5 = 768;
LABEL_10:

  return v5 | v6 | v4 | v3;
}

uint64_t re::isRootNodeByPath(void *a1)
{
  v1 = [a1 path];
  v2 = [v1 stringValue];
  v3 = [v2 isEqual:@"/"];

  return v3;
}

void re::convertActionAssetsToAssetPaths(id *a1@<X0>, const re::AssetPath *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v18 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v21 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:{v10, v18}];
        v29 = 0;
        memset(v30, 0, sizeof(v30));
        v12 = re::DynamicString::setCapacity(v30, 0);
        v32 = 0u;
        v31 = 0u;
        re::DynamicString::setCapacity(&v31, 0);
        v33 = 0;
        v13 = re::AssetPath::parse(&v29, [(_anonymous_namespace_ *)v11 UTF8String], a2, *(a3 + 1808), *(a3 + 1904), v26);
        if ((v26[0] & 1) == 0 && v27)
        {
          if (BYTE8(v27))
          {
            (*(*v27 + 40))(v13);
          }

          v28 = 0u;
          v27 = 0u;
        }

        v14 = MEMORY[0x1E696AEC0];
        v24 = 0;
        v25 = 0;
        v23 = 0;
        v22 = v30[0];
        re::DynamicString::setCapacity(&v22, 0);
        re::AssetPath::fullAssetPath(&v29, &v22);
        if (v23)
        {
          v15 = v24;
        }

        else
        {
          v15 = &v23 + 1;
        }

        v16 = [v14 stringWithUTF8String:v15];
        [v21 setObject:v16 forKeyedSubscript:v10];

        if (v22 && (v23 & 1) != 0)
        {
          (*(*v22 + 40))();
        }

        if (v31)
        {
          if (BYTE8(v31))
          {
            (*(*v31 + 40))();
          }

          v32 = 0u;
          v31 = 0u;
        }

        if (v30[0] && (v30[1] & 1) != 0)
        {
          (*(*v30[0] + 40))();
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  v17 = [v21 copy];
  *v18 = v17;
}

_anonymous_namespace_ *re::registerImportedScene(re *this, re::SceneImportResult *a2, const re::mtl::Device *a3, const re::AssetPath *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = *this;
  v50 = *a3;
  re::DynamicString::DynamicString(v51, (a3 + 8));
  re::DynamicString::DynamicString(v52, (a3 + 40));
  v52[4] = *(a3 + 9);
  v7 = *(this + 18);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](this + 104, i);
      v62 = 0;
      v63 = 0u;
      v64 = 0u;
      v10 = re::DynamicString::setCapacity(&v63, 0);
      v66 = 0u;
      v65 = 0u;
      re::DynamicString::setCapacity(&v65, 0);
      v67 = 0;
      if (*(v9 + 1))
      {
        v11 = *(v9 + 2);
      }

      else
      {
        v11 = v9 + 9;
      }

      v12.n128_f64[0] = re::AssetPath::parse(&v62, v11, &v50, *(v6 + 1808), *(v6 + 1904), &v58);
      if ((v58 & 1) == 0 && v60)
      {
        if (BYTE8(v60))
        {
          (*(*v60 + 40))(v12.n128_f64[0]);
        }

        v12 = 0uLL;
        v61 = 0u;
        v60 = 0u;
      }

      v13 = (**v6)(&v56, v6, &v62, v12);
      if (v57 && (v14 = atomic_load((v57 + 896)), v14 == 2))
      {
        v15 = *re::pipelineLogObjects(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v30 = v15;
          v54 = 0;
          v55 = 0;
          v53 = v63;
          re::DynamicString::setCapacity(&v53, 0);
          re::AssetPath::fullAssetPath(&v62, &v53);
          v31 = &v53 + 9;
          if (BYTE8(v53))
          {
            v31 = v54;
          }

          *buf = 136315138;
          v69 = v31;
          _os_log_debug_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEBUG, "Ignoring loaded asset '%s' since it is already loaded", buf, 0xCu);

          if (v53 && (BYTE8(v53) & 1) != 0)
          {
            (*(*v53 + 40))();
          }
        }

        v16 = *(v6 + 1808);
        *&v53 = *(v9 + 4);
        v17 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v16, &v53);
        (*(**v17 + 128))(*v17);
        (*(**v17 + 16))(*v17, *(v9 + 5));
        *(v9 + 5) = 0;
      }

      else
      {
        re::AssetHandle::internalForceUnloadAsync(&v56);
        v18 = (*(*v6 + 200))(v6, *(v9 + 5), &v56, 0, 0);
        if (v57 && (v19 = atomic_load((v57 + 896)), v19 == 2))
        {
          v20 = *(v9 + 4);
          v21 = re::AudioFileAsset::assetType(v18);
          if (v20 == v21)
          {
            v22 = re::AudioFileAsset::assetType(v21);
            v23 = re::AssetHandle::assetWithType(&v56, v22, 0);
            if (v23)
            {
              v24 = v23;
              v25 = *(v6 + 1808);
              *&v53 = *(v9 + 4);
              v26 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v25, &v53);
              (*(**v26 + 128))(*v26);
              re::AudioFileAsset::completeLoad(v24, *(*v26 + 8));
            }
          }
        }

        else
        {
          v27 = *re::pipelineLogObjects(v18);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = v27;
            v54 = 0;
            v55 = 0;
            v53 = v63;
            re::DynamicString::setCapacity(&v53, 0);
            re::AssetPath::fullAssetPath(&v62, &v53);
            v29 = &v53 + 9;
            if (BYTE8(v53))
            {
              v29 = v54;
            }

            *buf = 136315138;
            v69 = v29;
            _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "Asset failed to load: %s", buf, 0xCu);

            if (v53 && (BYTE8(v53) & 1) != 0)
            {
              (*(*v53 + 40))();
            }
          }
        }
      }

      re::DynamicArray<re::AssetHandle>::add((this + 248), &v56);
      re::AssetHandle::~AssetHandle(&v56);
      if (v65)
      {
        if (BYTE8(v65))
        {
          (*(*v65 + 40))();
        }

        v66 = 0u;
        v65 = 0u;
      }

      if (v63 && (BYTE8(v63) & 1) != 0)
      {
        (*(*v63 + 40))();
      }
    }
  }

  if (v52[0])
  {
    if (v52[1])
    {
      (*(*v52[0] + 40))();
    }

    memset(v52, 0, 32);
  }

  result = v51[0];
  if (v51[0])
  {
    if (v51[1])
    {
      result = (*(*v51[0] + 40))();
    }

    memset(v51, 0, sizeof(v51));
  }

  if (*(this + 38))
  {
    v33 = 0;
    v34 = 48;
    do
    {
      v35 = *(this + 40);
      v62 = 0;
      v63 = 0u;
      v64 = 0u;
      v36 = re::DynamicString::setCapacity(&v63, 0);
      v66 = 0u;
      v65 = 0u;
      re::DynamicString::setCapacity(&v65, 0);
      v67 = 0;
      v53 = 0uLL;
      v54 = 0;
      if (*(this + 38) == 1)
      {
        v62 = *a3;
        re::DynamicString::operator=(&v63, (a3 + 8));
        re::DynamicString::operator=(&v65, (a3 + 40));
        v67 = *(a3 + 9);
        (**v6)(&v58, v6, a3);
      }

      else
      {
        re::DynamicString::format("scene%02zu.compiledscene", &v58, v33);
        if (BYTE8(v58))
        {
          v37 = v59;
        }

        else
        {
          v37 = &v58 + 9;
        }

        v38.n128_f64[0] = re::AssetPath::parse(&v62, v37, a3, *(v6 + 1808), *(v6 + 1904), v47);
        if ((v47[0] & 1) == 0 && v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))(v38.n128_f64[0]);
          }

          v38 = 0uLL;
          v49 = 0u;
          v48 = 0u;
        }

        if (v58 && (BYTE8(v58) & 1) != 0)
        {
          (*(*v58 + 40))(v38);
        }

        (**v6)(&v58, v6, &v62, v38);
      }

      v39 = v53;
      v53 = v58;
      v58 = v39;
      v40 = v54;
      v54 = v59;
      v59 = v40;
      re::AssetHandle::~AssetHandle(&v58);
      if (!*(&v53 + 1) || (v41 = atomic_load((*(&v53 + 1) + 896)), v41 != 2))
      {
        re::AssetHandle::internalForceUnloadAsync(&v53);
        v42 = *(v35 + v34);
        v44 = re::SceneAsset::assetType(v43);
        (*(*v6 + 192))(&v58, v6, v42, v44, &v62);
        v45 = v53;
        v53 = v58;
        v58 = v45;
        v46 = v54;
        v54 = v59;
        v59 = v46;
        re::AssetHandle::~AssetHandle(&v58);
      }

      re::AssetHandle::operator=(v35 + v34 + 48, &v53);
      re::AssetHandle::~AssetHandle(&v53);
      if (v65)
      {
        if (BYTE8(v65))
        {
          (*(*v65 + 40))();
        }

        v66 = 0u;
        v65 = 0u;
      }

      result = v63;
      if (v63 && (BYTE8(v63) & 1) != 0)
      {
        result = (*(*v63 + 40))();
      }

      ++v33;
      v34 += 160;
    }

    while (v33 < *(this + 38));
  }

  *(this + 328) = 1;
  return result;
}

uint64_t re::estimateSceneMemoryCost(uint64_t a1, uint64_t a2, id *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v6 = [v4 URLWithString:v5];

  v50 = 0;
  v42 = v6;
  v7 = [v6 getResourceValue:&v50 forKey:*MEMORY[0x1E695DB50] error:0];
  v8 = v50;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v40 = [v8 unsignedIntValue];
  }

  else
  {
    v40 = 0;
  }

  v41 = v8;
  v9 = getpagesize();
  v11 = *(a2 + 8);
  if (!v11)
  {
    v12 = 0;
LABEL_31:
    v36 = *re::pipelineLogObjects(v9);
    v34 = v42;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      *&buf[22] = 2048;
      *&buf[24] = v40;
      _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_INFO, "Preflight for scene '%@' estimates '%zu' bytes will be used for textures and the file at the url takes '%zu' bytes.", buf, 0x20u);
    }

    v35 = v12 + v40;
    goto LABEL_34;
  }

  v12 = 0;
  v13 = *a2;
  key = *MEMORY[0x1E696DED8];
  v14 = vcnt_s8(v9);
  v14.i16[0] = vaddlv_u8(v14);
  v47 = v14.u32[0];
  v48 = *MEMORY[0x1E696DEC8];
  v44 = v9;
  v45 = -v9;
  v46 = v9 - 1;
  v15 = 8 * v11;
  while (1)
  {
    v16 = *v13;
    re::TextureProvider::lazyFetchProperties(*v13, v10);
    v18 = v16[27];
    if (!v18)
    {
      break;
    }

    v19 = CFDictionaryGetValue(v16[27], key);
    v20 = v19;
    v21 = v19 ? [v19 intValue] : -1;
    v22 = CFDictionaryGetValue(v18, v48);
    v23 = v22;
    v24 = v22 ? [v22 intValue] : -1;

    if (v21 == -1 || v24 == -1)
    {
      break;
    }

    v9 = [v16[5] pixelFormat];
    if (v9)
    {
      v53 = 0;
      v52 = 0u;
      memset(buf, 0, sizeof(buf));
      v25 = v16[5];
      v26 = *a3;
      [v25 pixelFormat];
      MTLPixelFormatGetInfoForDevice();

      v27 = 4;
      if ((*&buf[8] & 0x400) == 0)
      {
        v27 = *&buf[24];
      }
    }

    else
    {
      v27 = 4;
    }

    v28 = v27 * v24 * v21;
    if (*(v16 + 17) == 2)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = 1.3333;
    }

    v30 = v46 + (v29 * v28);
    v31 = v30 / v44 * v44;
    v32 = v30 & v45;
    if (v47 != 1)
    {
      v32 = v31;
    }

    v12 += v32;
    ++v13;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_31;
    }
  }

  v33 = *re::pipelineLogObjects(v17);
  v34 = v42;
  if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v35 = 0;
LABEL_34:
    v37 = v41;
    goto LABEL_35;
  }

  v37 = v41;
  if (v16[2])
  {
    v39 = v16[3];
  }

  else
  {
    v39 = v16 + 17;
  }

  *buf = 136315138;
  *&buf[4] = v39;
  _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to retrieve image properties from CGImageSource for '%s' during scene memory estimation", buf, 0xCu);
  v35 = 0;
LABEL_35:

  return v35;
}

uint64_t re::ImportAssetTable::addAssetWithPath(uint64_t a1, const re::DynamicString *a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  re::DynamicString::DynamicString(&v23, a2);
  *&v27 = a4;
  *(&v27 + 1) = a3;
  v9 = *(a1 + 40);
  v10 = *(a1 + 8);
  if (v9 + 1 > 32 * v10)
  {
    re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::setBucketsCapacity(a1, (v9 + 32) >> 5);
    v10 = *(a1 + 8);
  }

  if (v10 <= v9 >> 5)
  {
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    v32 = 858;
    v33 = 2048;
    v34 = v9 >> 5;
    v35 = 2048;
    v36 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (*(a1 + 16))
  {
    v11 = a1 + 24;
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = *(v11 + 8 * (v9 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v13 = v12 + 48 * (v9 & 0x1F);
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *v13 = v23;
  v23 = 0;
  v14 = *(v13 + 16);
  *(v13 + 16) = v25;
  v25 = v14;
  *(v13 + 24) = v26;
  v26 = 0;
  v15 = *(v13 + 8);
  *(v13 + 8) = v24;
  v24 = v15;
  *(v13 + 32) = v27;
  if (v23 && (v24 & 1) != 0)
  {
    (*(*v23 + 40))();
  }

  v16 = *(a1 + 40);
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](a1, v16 - 1);
  v37 = 0uLL;
  *&v38 = 0;
  v18 = re::Hash<re::DynamicString>::operator()(&v23, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 56, a2, v18, &v37);
  if (HIDWORD(v37) == 0x7FFFFFFF)
  {
    v20 = re::HashTable<re::DynamicString,re::AssetHandle const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 56, DWORD2(v37), v37);
    re::DynamicString::DynamicString((v20 + 8), a2);
    *(v20 + 40) = v17;
    ++*(a1 + 96);
  }

  v21 = *(a1 + 40);
  if (!v21)
  {
LABEL_17:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](a1, v21 - 1);
}

re::ImportedScene *re::ImportedScene::ImportedScene(re::ImportedScene *this)
{
  *(this + 2) = 0u;
  *(this + 1) = 0u;
  v2 = (this + 16);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  re::DynamicString::setCapacity(this + 7, 0);
  *(this + 88) = 0;
  *(this + 19) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  v4 = [MEMORY[0x1E696AFB0] UUID];
  [v4 getUUIDBytes:this];

  return this;
}

void re::SceneImportResult::~SceneImportResult(re::SceneImportResult *this)
{
  if ((*(this + 328) & 1) == 0)
  {
    v2 = *this;
    if (*this)
    {
      v3 = re::SceneAsset::assetType(this);
      v4 = *(v2 + 1808);
      v32 = v3;
      v5 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v4, &v32);
      (*(**v5 + 128))(*v5);
      v6 = *(this + 38);
      if (v6)
      {
        v7 = *v5;
        v8 = 160 * v6;
        v9 = (*(this + 40) + 48);
        do
        {
          v10 = *v9;
          v9 += 20;
          (*(*v7 + 16))(v7, v10);
          v8 -= 160;
        }

        while (v8);
        v11 = *(this + 38);
        v12 = *(this + 40);
        *(this + 38) = 0;
        if (v11)
        {
          v13 = 160 * v11;
          v14 = v12 + 120;
          do
          {
            re::DynamicArray<re::AssetHandle>::deinit(v14);
            re::AssetHandle::~AssetHandle((v14 - 24));
            re::DynamicString::deinit((v14 - 64));
            re::DynamicString::deinit((v14 - 104));
            v14 += 160;
            v13 -= 160;
          }

          while (v13);
        }
      }

      ++*(this + 78);
      v15 = *(this + 18);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          v17 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](this + 104, i);
          v18 = *(v2 + 1808);
          v32 = *(v17 + 32);
          v19 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v18, &v32);
          (*(**v19 + 128))(*v19);
          (*(**v19 + 16))(*v19, *(v17 + 40));
        }
      }
    }
  }

  v20 = *(this + 36);
  if (v20)
  {
    v21 = *(this + 40);
    if (v21)
    {
      v22 = *(this + 38);
      if (v22)
      {
        v23 = 160 * v22;
        v24 = v21 + 120;
        do
        {
          re::DynamicArray<re::AssetHandle>::deinit(v24);
          re::AssetHandle::~AssetHandle((v24 - 24));
          re::DynamicString::deinit((v24 - 64));
          re::DynamicString::deinit((v24 - 104));
          v24 += 160;
          v23 -= 160;
        }

        while (v23);
        v20 = *(this + 36);
        v21 = *(this + 40);
      }

      (*(*v20 + 40))(v20, v21);
    }

    *(this + 40) = 0;
    *(this + 37) = 0;
    *(this + 38) = 0;
    *(this + 36) = 0;
    ++*(this + 78);
  }

  re::DynamicArray<re::AssetHandle>::deinit(this + 248);
  v25 = *(this + 26);
  if (v25)
  {
    v26 = *(this + 30);
    if (v26)
    {
      v27 = *(this + 28);
      if (v27)
      {
        v28 = 208 * v27;
        do
        {
          re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v26 + 168);
          re::DynamicArray<unsigned long>::deinit(v26 + 120);
          re::DynamicArray<re::MeshAssetSkeleton>::deinit(v26 + 80);
          re::DynamicArray<re::MeshAssetInstance>::deinit(v26 + 40);
          re::DynamicArray<re::MeshAssetModel>::deinit(v26);
          v26 += 208;
          v28 -= 208;
        }

        while (v28);
        v25 = *(this + 26);
        v26 = *(this + 30);
      }

      (*(*v25 + 40))(v25, v26);
    }

    *(this + 30) = 0;
    *(this + 27) = 0;
    *(this + 28) = 0;
    *(this + 26) = 0;
    ++*(this + 58);
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 20);
  v29 = *(this + 18);
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      v31 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](this + 104, j);
      re::DynamicString::deinit(v31);
    }
  }

  while (*(this + 14))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 13);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 104);
  *(this + 18) = 0;
  ++*(this + 38);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 104);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 7);
  re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 1);
}

unsigned int *re::MaterialParameterData::operator=(unsigned int *a1, uint64_t a2)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 12), a2 + 48);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 24, a2 + 96);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 36), a2 + 144);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 48), a2 + 192);
  return a1;
}

_BYTE *re::MaterialRenderFlags::operator=(_BYTE *result, _BYTE *a2)
{
  if (*result)
  {
    if ((*a2 & 1) == 0)
    {
      *result = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*a2 & 1) == 0)
    {
      goto LABEL_7;
    }

    *result = 1;
  }

  result[1] = a2[1];
LABEL_7:
  if (result[2])
  {
    if ((a2[2] & 1) == 0)
    {
      result[2] = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((a2[2] & 1) == 0)
    {
      goto LABEL_13;
    }

    result[2] = 1;
  }

  result[3] = a2[3];
LABEL_13:
  if (result[4])
  {
    if ((a2[4] & 1) == 0)
    {
      result[4] = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((a2[4] & 1) == 0)
    {
      goto LABEL_19;
    }

    result[4] = 1;
  }

  result[5] = a2[5];
LABEL_19:
  if (result[6])
  {
    if ((a2[6] & 1) == 0)
    {
      result[6] = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if ((a2[6] & 1) == 0)
    {
      goto LABEL_25;
    }

    result[6] = 1;
  }

  result[7] = a2[7];
LABEL_25:
  if (result[8])
  {
    if ((a2[8] & 1) == 0)
    {
      result[8] = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if ((a2[8] & 1) == 0)
    {
      goto LABEL_31;
    }

    result[8] = 1;
  }

  result[9] = a2[9];
LABEL_31:
  if (result[10])
  {
    if ((a2[10] & 1) == 0)
    {
      result[10] = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if ((a2[10] & 1) == 0)
    {
      goto LABEL_37;
    }

    result[10] = 1;
  }

  result[11] = a2[11];
LABEL_37:
  if (result[12])
  {
    if ((a2[12] & 1) == 0)
    {
      result[12] = 0;
      goto LABEL_43;
    }
  }

  else
  {
    if ((a2[12] & 1) == 0)
    {
      goto LABEL_43;
    }

    result[12] = 1;
  }

  result[13] = a2[13];
LABEL_43:
  if (result[14])
  {
    if ((a2[14] & 1) == 0)
    {
      result[14] = 0;
      goto LABEL_49;
    }
  }

  else
  {
    if ((a2[14] & 1) == 0)
    {
      goto LABEL_49;
    }

    result[14] = 1;
  }

  result[15] = a2[15];
LABEL_49:
  if (result[16])
  {
    if ((a2[16] & 1) == 0)
    {
      result[16] = 0;
      goto LABEL_55;
    }
  }

  else
  {
    if ((a2[16] & 1) == 0)
    {
      goto LABEL_55;
    }

    result[16] = 1;
  }

  result[17] = a2[17];
LABEL_55:
  if (result[18])
  {
    if ((a2[18] & 1) == 0)
    {
      result[18] = 0;
      return result;
    }

LABEL_61:
    result[19] = a2[19];
    return result;
  }

  if (a2[18])
  {
    result[18] = 1;
    goto LABEL_61;
  }

  return result;
}

uint64_t re::DynamicArray<re::FunctionLink>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::FunctionLink>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = 0;
          v8 = *(a1 + 32);
          v9 = 272 * v6;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v8 + v7 + 232);
            re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + v7 + 184));
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + v7 + 136));
            re::DynamicArray<unsigned long>::deinit(v8 + v7 + 96);
            re::AssetHandle::~AssetHandle((v8 + v7 + 72));
            re::DynamicString::deinit((v8 + v7 + 40));
            re::DynamicString::deinit((v8 + v7 + 8));
            v7 += 272;
          }

          while (v9 != v7);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::FunctionLink>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::FunctionLink>::copy(a1, a2);
    }
  }

  return a1;
}

unsigned int *re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(unsigned int *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (a1[6] < v4)
        {
          re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++a1[10];
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

        re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

re::DynamicString *re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
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

        re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

re::DynamicString *re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
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

        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

unsigned int *re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(unsigned int *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % *(v4 + 24), *(v7 + v5 + 80));
        re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        v9 = *(a2 + 16) + v5;
        *(v8 + 40) = 0;
        v8 += 40;
        *(v8 + 32) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(v8, v9 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

void re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 88 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 80) = a3;
  ++*(a1 + 28);
  return v7 + 88 * v5;
}

unsigned int *std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = result[8];
  if (v4 != -1)
  {
    result = off_1F5CD02F8[v4](&v7, result);
  }

  v3[8] = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CD0308[v5])(&v6, a2);
    v3[8] = v5;
  }

  return result;
}

unsigned int *re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(unsigned int *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % v4[6]);
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = *(a2 + 16) + v5;
        *(v8 + 40) = 0;
        v8 += 40;
        *(v8 + 32) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v8, v14 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

unsigned int *std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = result[8];
  if (v4 != -1)
  {
    result = off_1F5CD02F8[v4](&v7, result);
  }

  v3[8] = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CD0318[v5])(&v6, a2);
    v3[8] = v5;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicString,re::AssetHandle> &&>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 24) = a2[3];
  v4 = a2[1];
  *v2 = *a2;
  *a2 = 0;
  v5 = a2[2];
  a2[3] = 0;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  a2[1] = v7;
  a2[2] = v6;
  return result;
}

uint64_t **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicString,re::AssetHandle> &&>(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v2[1] = a2[1];
  a2[1] = 0;
  v3 = *v2;
  *v2 = 0;
  *v2 = *a2;
  *a2 = v3;
  v4 = v2[2];
  v2[2] = a2[2];
  a2[2] = v4;
  return result;
}

void re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 160 * v10, 16);
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

re::DynamicString *re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v7 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3, *(v6 + v4 + 152) % *(v3 + 24), *(v6 + v4 + 152));
        re::DynamicString::DynamicString((v7 + 8), (*(a2 + 16) + v4 + 8));
        v8 = *(a2 + 16) + v4;
        *(v7 + 40) = 0;
        *(v7 + 72) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>((v7 + 40), v8 + 40);
        re::DynamicString::DynamicString((v7 + 80), (v8 + 80));
        result = re::DynamicString::DynamicString((v7 + 112), (v8 + 112));
        v9 = *(v8 + 144);
        *(v7 + 144) = v9;
        if (v9 == 1)
        {
          *(v7 + 148) = *(v8 + 148);
        }
      }

      ++v5;
      v4 += 160;
    }

    while (v5 < *(a2 + 32));
  }

  return result;
}

void re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 160;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 160 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 160 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 160 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 152) = a3;
  ++*(a1 + 28);
  return v7 + 160 * v5;
}

unsigned int *re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(unsigned int *result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = 80;
    do
    {
      v6 = *(a2 + 16) + v5;
      if ((*(v6 - 80) & 0x80000000) != 0)
      {
        v7 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3, *(v6 + 72) % v3[6]);
        v8 = *(a2 + 16) + v5;
        *(v7 + 24) = 0u;
        *(v7 + 8) = 0u;
        *(v7 + 32) = *(v8 - 48);
        v9 = *(v8 - 64);
        *(v7 + 8) = *(v8 - 72);
        *(v8 - 72) = 0;
        v10 = *(v8 - 56);
        *(v8 - 48) = 0;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        *(v7 + 16) = v9;
        *(v7 + 24) = v10;
        *(v8 - 64) = v12;
        *(v8 - 56) = v11;
        v13 = *(a2 + 16) + v5;
        *(v7 + 40) = 0;
        *(v7 + 72) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>((v7 + 40), v13 - 40);
        *(v7 + 80) = 0u;
        *(v7 + 96) = 0u;
        *(v7 + 104) = *(v13 + 24);
        v14 = *(v13 + 8);
        *(v7 + 80) = *v13;
        *v13 = 0;
        v15 = *(v13 + 16);
        *(v13 + 24) = 0;
        v17 = *(v7 + 88);
        v16 = *(v7 + 96);
        *(v7 + 88) = v14;
        *(v7 + 96) = v15;
        *(v13 + 8) = v17;
        *(v13 + 16) = v16;
        *(v7 + 112) = 0u;
        *(v7 + 128) = 0u;
        *(v7 + 136) = *(v13 + 56);
        v18 = *(v13 + 40);
        *(v7 + 112) = *(v13 + 32);
        *(v13 + 32) = 0;
        v19 = *(v13 + 48);
        *(v13 + 56) = 0;
        v21 = *(v7 + 120);
        v20 = *(v7 + 128);
        *(v7 + 120) = v18;
        *(v7 + 128) = v19;
        *(v13 + 40) = v21;
        *(v13 + 48) = v20;
        LODWORD(v19) = *(v13 + 64);
        *(v7 + 144) = v19;
        if (v19 == 1)
        {
          *(v7 + 148) = *(v13 + 68);
        }
      }

      ++v4;
      v5 += 160;
    }

    while (v4 < *(a2 + 32));
  }

  return result;
}

void re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 152 * v10, 16);
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

re::DynamicString *re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = *(a2 + 16);
    v6 = 72;
    do
    {
      if ((*(v5 + v6 - 72) & 0x80000000) != 0)
      {
        v7 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3, *(v5 + v6 + 72) % *(v3 + 24), *(v5 + v6 + 72));
        result = re::DynamicString::DynamicString((v7 + 8), (*(a2 + 16) + v6 - 64));
        v5 = *(a2 + 16);
        v8 = v5 + v6;
        *(v7 + 40) = *(v5 + v6 - 32);
        v9 = *(v5 + v6 - 31);
        *(v7 + 41) = v9;
        if (v9 == 1)
        {
          *(v7 + 42) = *(v8 - 30);
        }

        v10 = *(v8 - 29);
        *(v7 + 43) = v10;
        if (v10 == 1)
        {
          *(v7 + 44) = *(v5 + v6 - 28);
        }

        v11 = v5 + v6;
        v12 = *(v5 + v6 - 24);
        *(v7 + 48) = v12;
        if (v12 == 1)
        {
          *(v7 + 52) = *(v11 - 20);
        }

        v13 = *(v11 - 16);
        *(v7 + 56) = v13;
        if (v13 == 1)
        {
          *(v7 + 60) = *(v5 + v6 - 12);
        }

        v14 = *(v5 + v6 - 8);
        *(v7 + 64) = v14;
        if (v14 == 1)
        {
          *(v7 + 68) = *(v5 + v6 - 4);
        }

        v15 = *(v5 + v6);
        *(v7 + 72) = v15;
        if (v15 == 1)
        {
          *(v7 + 76) = *(v5 + v6 + 4);
        }

        v16 = v5 + v6;
        v17 = *(v5 + v6 + 8);
        *(v7 + 80) = v17;
        if (v17 == 1)
        {
          *(v7 + 84) = *(v16 + 12);
        }

        v18 = *(v16 + 16);
        *(v7 + 88) = v18;
        if (v18 == 1)
        {
          *(v7 + 92) = *(v5 + v6 + 20);
        }

        v19 = v5 + v6;
        v20 = *(v5 + v6 + 24);
        *(v7 + 96) = v20;
        if (v20 == 1)
        {
          *(v7 + 100) = *(v19 + 28);
        }

        v21 = *(v19 + 32);
        *(v7 + 104) = v21;
        if (v21 == 1)
        {
          *(v7 + 108) = *(v5 + v6 + 36);
        }

        v22 = v5 + v6;
        v23 = *(v5 + v6 + 40);
        *(v7 + 112) = v23;
        if (v23 == 1)
        {
          *(v7 + 116) = *(v22 + 44);
        }

        v24 = *(v22 + 48);
        *(v7 + 120) = v24;
        if (v24 == 1)
        {
          *(v7 + 124) = *(v5 + v6 + 52);
        }

        v25 = *(v5 + v6 + 56);
        *(v7 + 128) = v25;
        if (v25 == 1)
        {
          *(v7 + 136) = *(v5 + v6 + 64);
        }
      }

      ++v4;
      v6 += 152;
    }

    while (v4 < *(a2 + 32));
  }

  return result;
}

void re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
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
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 152;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 152 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 152 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 152 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 144) = a3;
  ++*(a1 + 28);
  return v7 + 152 * v5;
}

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = *(a2 + 16);
    v6 = 72;
    do
    {
      if ((*(v5 + v6 - 72) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3, *(v5 + v6 + 72) % *(v3 + 24));
        v7 = *(a2 + 16) + v6;
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *(v7 - 40);
        v8 = *(v7 - 56);
        *(result + 8) = *(v7 - 64);
        *(v7 - 64) = 0;
        v9 = *(v7 - 48);
        *(v7 - 40) = 0;
        v11 = *(result + 16);
        v10 = *(result + 24);
        *(result + 16) = v8;
        *(result + 24) = v9;
        *(v7 - 56) = v11;
        *(v7 - 48) = v10;
        v5 = *(a2 + 16);
        v12 = v5 + v6;
        *(result + 40) = *(v5 + v6 - 32);
        LODWORD(v8) = *(v5 + v6 - 31);
        *(result + 41) = v8;
        if (v8 == 1)
        {
          *(result + 42) = *(v12 - 30);
        }

        v13 = *(v12 - 29);
        *(result + 43) = v13;
        if (v13 == 1)
        {
          *(result + 44) = *(v5 + v6 - 28);
        }

        v14 = v5 + v6;
        v15 = *(v5 + v6 - 24);
        *(result + 48) = v15;
        if (v15 == 1)
        {
          *(result + 52) = *(v14 - 20);
        }

        v16 = *(v14 - 16);
        *(result + 56) = v16;
        if (v16 == 1)
        {
          *(result + 60) = *(v5 + v6 - 12);
        }

        v17 = *(v5 + v6 - 8);
        *(result + 64) = v17;
        if (v17 == 1)
        {
          *(result + 68) = *(v5 + v6 - 4);
        }

        v18 = *(v5 + v6);
        *(result + 72) = v18;
        if (v18 == 1)
        {
          *(result + 76) = *(v5 + v6 + 4);
        }

        v19 = v5 + v6;
        v20 = *(v5 + v6 + 8);
        *(result + 80) = v20;
        if (v20 == 1)
        {
          *(result + 84) = *(v19 + 12);
        }

        v21 = *(v19 + 16);
        *(result + 88) = v21;
        if (v21 == 1)
        {
          *(result + 92) = *(v5 + v6 + 20);
        }

        v22 = v5 + v6;
        v23 = *(v5 + v6 + 24);
        *(result + 96) = v23;
        if (v23 == 1)
        {
          *(result + 100) = *(v22 + 28);
        }

        v24 = *(v22 + 32);
        *(result + 104) = v24;
        if (v24 == 1)
        {
          *(result + 108) = *(v5 + v6 + 36);
        }

        v25 = v5 + v6;
        v26 = *(v5 + v6 + 40);
        *(result + 112) = v26;
        if (v26 == 1)
        {
          *(result + 116) = *(v25 + 44);
        }

        v27 = *(v25 + 48);
        *(result + 120) = v27;
        if (v27 == 1)
        {
          *(result + 124) = *(v5 + v6 + 52);
        }

        v28 = *(v5 + v6 + 56);
        *(result + 128) = v28;
        if (v28 == 1)
        {
          *(result + 136) = *(v5 + v6 + 64);
        }
      }

      ++v4;
      v6 += 152;
    }

    while (v4 < *(a2 + 32));
  }

  return result;
}

void re::DynamicArray<re::FunctionLink>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::FunctionLink>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::FunctionLink *,re::FunctionLink *,re::FunctionLink *>(&v15, *(a2 + 32), *(a2 + 32) + 272 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 272 * v9;
      v13 = 272 * v4;
      do
      {
        *(v11 + v12) = *(v10 + v12);
        re::DynamicString::DynamicString((v11 + v12 + 8), (v10 + v12 + 8));
        re::DynamicString::DynamicString((v11 + v12 + 40), (v10 + v12 + 40));
        re::AssetHandle::AssetHandle((v11 + v12 + 72), (v10 + v12 + 72));
        re::DynamicArray<re::ShaderAPIFlags::Values>::DynamicArray(v11 + v12 + 96, (v10 + v12 + 96));
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v11 + v12 + 136, v10 + v12 + 136);
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v11 + v12 + 184, v10 + v12 + 184);
        re::DynamicArray<BOOL>::DynamicArray(v11 + v12 + 232, (v10 + v12 + 232));
        v13 -= 272;
        v10 += 272;
        v11 += 272;
      }

      while (v12 != v13);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::FunctionLink *,re::FunctionLink *,re::FunctionLink *>(&v14, *(a2 + 32), *(a2 + 32) + 272 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4];
      v7 = 272 * v4;
      v8 = 272 * v5;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + v7 + 232);
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v6 + v7 + 184));
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v6 + v7 + 136));
        re::DynamicArray<unsigned long>::deinit(v6 + v7 + 96);
        re::AssetHandle::~AssetHandle((v6 + v7 + 72));
        re::DynamicString::deinit((v6 + v7 + 40));
        re::DynamicString::deinit((v6 + v7 + 8));
        v8 -= 272;
        v6 += 272;
      }

      while (v7 != v8);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::FunctionLink>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FunctionLink>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x110uLL))
        {
          v2 = 272 * a2;
          result = (*(*result + 32))(result, 272 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 272, a2);
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
        v10 = 272 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::FunctionLink>(v8, v11);
          v8 += 272;
          v11 += 272;
          v10 -= 272;
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

double re::ObjectHelper::move<re::FunctionLink>(char *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v5 = (a1 + 8);
  *(a2 + 8) = *(a1 + 1);
  *(a1 + 1) = 0;
  *(a2 + 32) = *(a1 + 4);
  *(a1 + 4) = 0;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a1 + 3);
  *(a2 + 16) = *(a1 + 2);
  *(a2 + 24) = v8;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v9 = (a1 + 40);
  *(a2 + 40) = *(a1 + 5);
  *(a1 + 5) = 0;
  *(a2 + 64) = *(a1 + 8);
  *(a1 + 8) = 0;
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v12 = *(a1 + 7);
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 56) = v12;
  *(a1 + 6) = v11;
  *(a1 + 7) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 80) = *(a1 + 10);
  *(a1 + 10) = 0;
  v13 = *(a2 + 72);
  *(a2 + 72) = 0;
  v15 = (a1 + 72);
  v14 = *(a1 + 9);
  *a2 = v4;
  *(a2 + 72) = v14;
  *(a1 + 9) = v13;
  v16 = *(a2 + 88);
  *(a2 + 88) = *(a1 + 11);
  *(a1 + 11) = v16;
  *(a2 + 128) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  v17 = (a1 + 96);
  v18 = *(a1 + 13);
  *(a2 + 96) = *(a1 + 12);
  *(a1 + 12) = 0;
  *(a2 + 104) = v18;
  *(a1 + 13) = 0;
  v19 = *(a2 + 112);
  *(a2 + 112) = *(a1 + 14);
  *(a1 + 14) = v19;
  v20 = *(a2 + 128);
  *(a2 + 128) = *(a1 + 16);
  *(a1 + 16) = v20;
  ++*(a1 + 30);
  ++*(a2 + 120);
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  *(a2 + 136) = 0u;
  *(a2 + 172) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a2 + 136), a1 + 17);
  *(v2 + 184) = 0u;
  v2 += 184;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v2, a1 + 23);
  *(v2 + 80) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
  v21 = *(a1 + 30);
  *(v2 + 48) = *(a1 + 29);
  *(v2 + 56) = v21;
  *(a1 + 29) = 0;
  *(a1 + 30) = 0;
  v22 = *(v2 + 64);
  *(v2 + 64) = *(a1 + 31);
  *(a1 + 31) = v22;
  v23 = *(v2 + 80);
  *(v2 + 80) = *(a1 + 33);
  *(a1 + 33) = v23;
  ++*(a1 + 64);
  ++*(v2 + 72);
  re::DynamicArray<unsigned long>::deinit((a1 + 232));
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 23);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 17);
  re::DynamicArray<unsigned long>::deinit(v17);
  re::AssetHandle::~AssetHandle(v15);
  re::DynamicString::deinit(v9);

  return re::DynamicString::deinit(v5);
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::FunctionLink *,re::FunctionLink *,re::FunctionLink *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a2 + v7;
    *(a4 + v7) = *(a2 + v7);
    re::DynamicString::operator=((a4 + v7 + 8), (a2 + v7 + 8));
    re::DynamicString::operator=((a4 + v7 + 40), (a2 + v7 + 40));
    re::AssetHandle::operator=(a4 + v7 + 72, (a2 + v7 + 72));
    re::DynamicArray<re::ShaderAPIFlags::Values>::operator=(a4 + v7 + 96, (a2 + v7 + 96));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a4 + v7 + 136), a2 + v7 + 136);
    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a4 + v7 + 184), a2 + v7 + 184);
    re::DynamicArray<BOOL>::operator=(a4 + v7 + 232, (a2 + v7 + 232));
    v7 += 272;
  }

  while (v8 + 272 != v6);
  return v6;
}

uint64_t re::DynamicArray<re::ShaderAPIFlags::Values>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ShaderAPIFlags::Values>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::EvaluationCommand>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ShaderAPIFlags::Values>::copy(a1, a2);
    }
  }

  return a1;
}

re::DynamicString *re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
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

        re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void **re::DynamicArray<re::ShaderAPIFlags::Values>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::EvaluationCommand>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 4 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 4 * v5, (*(a2 + 32) + 4 * v5), 4 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 4 * v4);
  }

  v3[2] = v4;
  return result;
}

re::DynamicString *re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24), *(v7 + v5 + 56));
        result = re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        *(v8 + 40) = *(*(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

void re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
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
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 64;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

uint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        *(result + 40) = *(*(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::ShaderAPIFlags::Values>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::EvaluationCommand>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ShaderAPIFlags::Values>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 328 * v7 + 40;
  }
}

BOOL re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  result = re::DynamicString::operator==(v10 + 328 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 328 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 328 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 328 * v12) & 0x7FFFFFFF;
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

void re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::DynamicString::deinit((a1 + 2));
    *(a1 + 5) = &unk_1F5CC4C98;
    re::DynamicString::deinit((a1 + 72));

    re::TextureProvider::~TextureProvider((a1 + 10));
  }
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureParam const&>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = 0;
  v7 += 40;
  *(v7 + 32) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(v7, a4);
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureBlockData const&>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = 0;
  *(v7 + 72) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>((v7 + 40), a4);
  re::DynamicString::DynamicString((v7 + 80), (a4 + 40));
  re::DynamicString::DynamicString((v7 + 112), (a4 + 72));
  v8 = *(a4 + 104);
  *(v7 + 144) = v8;
  if (v8 == 1)
  {
    *(v7 + 148) = *(a4 + 108);
  }

  ++*(a1 + 40);
  return v7 + 40;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + 160 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 160 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 160 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 160 * v12) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::OptionalMaterialSamplerData const&>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = *a4;
  result = v7 + 40;
  v9 = *(a4 + 1);
  *(v7 + 41) = v9;
  if (v9 == 1)
  {
    *(v7 + 42) = *(a4 + 2);
  }

  v10 = *(a4 + 3);
  *(v7 + 43) = v10;
  if (v10 == 1)
  {
    *(v7 + 44) = *(a4 + 4);
  }

  v11 = *(a4 + 8);
  *(v7 + 48) = v11;
  if (v11 == 1)
  {
    *(v7 + 52) = *(a4 + 12);
  }

  v12 = *(a4 + 16);
  *(v7 + 56) = v12;
  if (v12 == 1)
  {
    *(v7 + 60) = *(a4 + 20);
  }

  v13 = *(a4 + 24);
  *(v7 + 64) = v13;
  if (v13 == 1)
  {
    *(v7 + 68) = *(a4 + 28);
  }

  v14 = *(a4 + 32);
  *(v7 + 72) = v14;
  if (v14 == 1)
  {
    *(v7 + 76) = *(a4 + 36);
  }

  v15 = *(a4 + 40);
  *(v7 + 80) = v15;
  if (v15 == 1)
  {
    *(v7 + 84) = *(a4 + 44);
  }

  v16 = *(a4 + 48);
  *(v7 + 88) = v16;
  if (v16 == 1)
  {
    *(v7 + 92) = *(a4 + 52);
  }

  v17 = *(a4 + 56);
  *(v7 + 96) = v17;
  if (v17 == 1)
  {
    *(v7 + 100) = *(a4 + 60);
  }

  v18 = *(a4 + 64);
  *(v7 + 104) = v18;
  if (v18 == 1)
  {
    *(v7 + 108) = *(a4 + 68);
  }

  v19 = *(a4 + 72);
  *(v7 + 112) = v19;
  if (v19 == 1)
  {
    *(v7 + 116) = *(a4 + 76);
  }

  v20 = *(a4 + 80);
  *(v7 + 120) = v20;
  if (v20 == 1)
  {
    *(v7 + 124) = *(a4 + 84);
  }

  v21 = *(a4 + 88);
  *(v7 + 128) = v21;
  if (v21 == 1)
  {
    *(v7 + 136) = *(a4 + 96);
  }

  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + 152 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 152 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 152 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 152 * v12) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

BOOL re::hasPhysicsMaterialAPI(void *a1)
{
  v1 = a1;
  if (re::isRootNodeByPath(v1))
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 property:@"preliminary:physics:material:restitution"];
    v2 = v3 != 0;
  }

  return v2;
}

void re::USDImportContext::GeomText3D::~GeomText3D(re::USDImportContext::GeomText3D *this)
{
  re::DynamicString::deinit((this + 160));
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

void re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 328 * v10, 16);
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

re::ecs2::TransformComponent *re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 208, 0);
  v4 = re::ecs2::TransformComponent::TransformComponent(v3);
  v6.n128_u64[0] = *((*(*v4 + 40))(v4) + 24) >> 1;
  v6.n128_u64[1] = v3;
  v7 = 1;
  re::DynamicArray<re::BufferView>::add(v1, &v6);
  return v3;
}

uint64_t re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshDeformationComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 448, 0);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CD0348;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = -1;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0u;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0u;
  inited = objc_initWeak((v4 + 384), 0);
  *(v3 + 392) = 0;
  *(v3 + 424) = re::globalAllocators(inited)[2];
  *(v3 + 432) = 0;
  *(v3 + 440) = 0;
  v7.n128_u64[0] = *((*(*v3 + 40))(v3) + 24) >> 1;
  v7.n128_u64[1] = v3;
  v8 = 1;
  re::DynamicArray<re::BufferView>::add(v1, &v7);
  return v3;
}

double re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 496, 0);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  v3[18] = 0u;
  v3[19] = 0u;
  v3[20] = 0u;
  v3[21] = 0u;
  v3[22] = 0u;
  v3[23] = 0u;
  v3[24] = 0u;
  v3[25] = 0u;
  v3[26] = 0u;
  v3[27] = 0u;
  v3[28] = 0u;
  v3[29] = 0u;
  v3[30] = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CD0438;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 76) = 0u;
  *(v4 + 192) = -1;
  *(v4 + 248) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 1;
  *(v4 + 312) = 0;
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  *(v4 + 304) = 0;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0u;
  *(v4 + 384) = 0u;
  *(v4 + 400) = 0u;
  *(v4 + 416) = 0u;
  *(v3 + 428) = 0u;
  *(v4 + 444) = 0x7FFFFFFFLL;
  *(v4 + 464) = 0;
  *(v4 + 472) = 0;
  *(v4 + 456) = 0;
  *(v4 + 480) = 0;
  objc_initWeak((v4 + 488), 0);
  v6.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1;
  v6.n128_u64[1] = v3;
  v7 = 1;
  *&result = re::DynamicArray<re::BufferView>::add(v1, &v6).n128_u64[0];
  return result;
}

double re::ecs2::EntityAssetData::addComponent<re::ecs2::BlendShapeWeightsComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 368, 0);
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 13) = 0u;
  *(v3 + 14) = 0u;
  *(v3 + 15) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 21) = 0u;
  *(v3 + 22) = 0u;
  *(v3 + 9) = 0u;
  v4 = (v3 + 144);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *v5 = &unk_1F5CD04C0;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0;
  *(v5 + 88) = 0u;
  *(v5 + 116) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0;
  *(v5 + 216) = 0;
  *(v5 + 224) = v5 + 104;
  *(v5 + 232) = v4;
  *(v5 + 240) = 0;
  *(v5 + 248) = -1;
  *(v5 + 360) = 0;
  *(v5 + 352) = 0;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  v7.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1;
  v7.n128_u64[1] = v5;
  v8 = 1;
  *&result = re::DynamicArray<re::BufferView>::add(v1, &v7).n128_u64[0];
  return result;
}

double re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 3952, 0);
  bzero(v3, 0xF70uLL);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD0548;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0;
  *(v3 + 416) = 0;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 456) = 0;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  *(v3 + 464) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *(v3 + 480) = -1;
  *(v3 + 744) = 0;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 752) = -1;
  *(v3 + 816) = 0;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  re::EvaluationContextManager::EvaluationContextManager((v3 + 824));
  *(v3 + 3824) = 0u;
  *(v3 + 3792) = 0;
  *(v3 + 3800) = 0u;
  *(v3 + 3816) = 0;
  *(v3 + 3840) = 1;
  *(v3 + 3944) = 0;
  *(v3 + 3848) = 0u;
  *(v3 + 3864) = 0u;
  *(v3 + 3880) = 0u;
  *(v3 + 3896) = 0;
  *(v3 + 3904) = 0u;
  *(v3 + 3920) = 0u;
  *(v3 + 3936) = 0;
  v5.n128_u64[0] = *((*(*v3 + 40))(v3) + 24) >> 1;
  v5.n128_u64[1] = v3;
  v6 = 1;
  *&result = re::DynamicArray<re::BufferView>::add(v1, &v5).n128_u64[0];
  return result;
}

id *re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType + 7), 496, 0);
  v4 = re::ecs2::MeshComponent::MeshComponent(v3);
  v6.n128_u64[0] = *((*(*v4 + 5))(v4) + 24) >> 1;
  v6.n128_u64[1] = v3;
  v7 = 1;
  re::DynamicArray<re::BufferView>::add(v1, &v6);
  return v3;
}

uint64_t re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationLibraryComponent>(_DWORD *a1)
{
  v1 = (a1 + 8);
  if (!*(a1 + 4))
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v1, 0);
    ++a1[14];
  }

  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 120, 0);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CD07B8;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 76) = 0u;
  *(v4 + 92) = 0x7FFFFFFFLL;
  *(v4 + 104) = 0;
  *(v4 + 112) = -1;
  v6.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1;
  v6.n128_u64[1] = v4;
  v7 = 1;
  re::DynamicArray<re::BufferView>::add(v1, &v6);
  return v3;
}

void re::ecs2::MeshDeformationComponent::~MeshDeformationComponent(re::ecs2::MeshDeformationComponent *this)
{
  *this = &unk_1F5CD0348;
  v2 = (this + 32);
  re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::~FramePersistentPtr(this + 48);
  re::FixedArray<re::MeshDeformationRuntimeData::DeformationMapping>::deinit(this + 45);
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::FixedArray<CoreIKTransform>::deinit(this + 36);
  re::FixedArray<CoreIKTransform>::deinit(this + 33);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(this + 192);
  re::DynamicArray<re::DeformationStackDefinition>::deinit(this + 152);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(this + 112);
  re::DynamicArray<re::DeformationStackDefinition>::deinit(this + 72);
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD0348;
  v2 = (this + 32);
  re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::~FramePersistentPtr(this + 48);
  re::FixedArray<re::MeshDeformationRuntimeData::DeformationMapping>::deinit(this + 45);
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::FixedArray<CoreIKTransform>::deinit(this + 36);
  re::FixedArray<CoreIKTransform>::deinit(this + 33);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(this + 192);
  re::DynamicArray<re::DeformationStackDefinition>::deinit(this + 152);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(this + 112);
  re::DynamicArray<re::DeformationStackDefinition>::deinit(this + 72);
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

id *re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD03D0;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

re *re::internal::destroyPersistent<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData>(re *result, uint64_t a2, re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData::~BuiltMeshDeformationData(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD03D0;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD03D0;
  return result;
}

void re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData::~BuiltMeshDeformationData(re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData *this)
{
  re::FixedArray<re::DeformationBufferAllocator>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  re::FixedArray<CoreIKTransform>::deinit(this + 7);
  re::FixedArray<CoreIKTransform>::deinit(this + 4);
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

void *re::FixedArray<re::DeformationBufferAllocator>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = &v4[6 * v2];
      do
      {
        re::FixedArray<re::DeformationBufferAllocator::DeformationStackAllocation>::deinit(v4);
        re::FixedArray<re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>>::deinit(v4 + 3);
        re::FixedArray<re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>>::deinit(v4 + 3);
        re::FixedArray<re::DeformationBufferAllocator::DeformationStackAllocation>::deinit(v4);
        v4 += 6;
      }

      while (v4 != v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 56 * v2;
      do
      {
        re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::deinit(v4);
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
        v4 += 56;
        v5 -= 56;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](a1, i);
      re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::deinit(v4 + 16);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4 + 16);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 72 * (a2 & 3);
}

uint64_t re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a1, i);
      v5 = *(v4 + 48);
      if (v5 != -1)
      {
        (off_1F5CD0418[v5])(&v7, v4 + 24);
      }

      *(v4 + 48) = -1;
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + ((a2 & 3) << 6);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + ((a2 & 3) << 6);
}

void *re::FixedArray<re::DeformationBufferAllocator::DeformationStackAllocation>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 72 * v2;
      v5 = result[2] + 16;
      do
      {
        re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::deinit(v5);
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v5);
        v5 += 72;
        v4 -= 72;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::ecs2::RigComponent::~RigComponent(re::ecs2::RigComponent *this)
{
  re::ecs2::RigComponent::~RigComponent(this);

  JUMPOUT(0x1E6906520);
}

{
  objc_destroyWeak(this + 61);
  *(this + 61) = 0;
  re::FixedArray<re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>>::deinit(this + 57);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 51);
  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 48);
  re::BindNode::deinit((this + 344));
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(this + 280);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 280);
  re::FixedArray<re::RigEvaluation>::deinit(this + 31);
  re::FixedArray<CoreIKTransform>::deinit(this + 28);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 25);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(this + 144);
  re::DynamicArray<re::StringID>::deinit(this + 104);
  re::DynamicArray<re::RigDefinition>::deinit(this + 64);
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void re::ecs2::BlendShapeWeightsComponent::~BlendShapeWeightsComponent(re::ecs2::BlendShapeWeightsComponent *this)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 328);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::FixedArray<CoreIKTransform>::deinit(this + 32);
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(this + 144);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(this + 104);
  re::DynamicArray<re::BlendShapeWeights>::deinit(this + 56);
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 328);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::FixedArray<CoreIKTransform>::deinit(this + 32);
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(this + 144);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(this + 104);
  re::DynamicArray<re::BlendShapeWeights>::deinit(this + 56);
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::BlendShapeWeights>::deinit(uint64_t a1)
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
        v5 = 32 * v4;
        do
        {
          re::BlendShapeWeights::~BlendShapeWeights(v3);
          v3 = (v3 + 32);
          v5 -= 32;
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

void re::ecs2::SkeletalPoseComponent::~SkeletalPoseComponent(re::ecs2::SkeletalPoseComponent *this)
{
  re::ecs2::SkeletalPoseComponent::~SkeletalPoseComponent(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CD0548;
  v2 = (this + 32);
  re::DynamicArray<re::SkeletalPose>::deinit(this + 3912);
  re::DynamicArray<unsigned long>::deinit(this + 3872);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3824);
  re::FixedArray<re::BindPoint>::deinit(this + 474);
  re::EvaluationContextManager::~EvaluationContextManager((this + 824));
  std::unique_ptr<re::EvaluationModelBase,std::function<void ()(re::EvaluationModelBase*)>>::~unique_ptr[abi:nn200100](this + 98);
  re::FixedArray<re::EvaluationRigState>::deinit(this + 95);
  re::FixedArray<CoreIKTransform>::deinit(this + 88);
  re::FixedArray<CoreIKTransform>::deinit(this + 85);
  re::FixedArray<CoreIKTransform>::deinit(this + 82);
  re::FixedArray<CoreIKTransform>::deinit(this + 79);
  re::FixedArray<CoreIKTransform>::deinit(this + 76);
  re::FixedArray<CoreIKTransform>::deinit(this + 73);
  re::FixedArray<CoreIKTransform>::deinit(this + 70);
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::FixedArray<CoreIKTransform>::deinit(this + 64);
  re::FixedArray<CoreIKTransform>::deinit(this + 61);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(this + 432);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 392);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 352);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(this + 312);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(this + 272);
  re::DynamicArray<re::StringID>::deinit(this + 232);
  re::DynamicArray<re::StringID>::deinit(this + 192);
  re::DynamicArray<re::AssetHandle>::deinit(this + 152);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 96);
  re::DynamicArray<re::SkeletalPose>::deinit(this + 56);
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

id *re::ecs2::MeshComponent::MeshComponent(id *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD05D0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 136) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 104) = 0;
  *(v2 + 128) = 0;
  *(v2 + 144) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  inited = objc_initWeak((v2 + 152), 0);
  this[20] = 0;
  this[24] = re::globalAllocators(inited)[2];
  this[25] = 0;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  v4 = objc_initWeak(this + 30, 0);
  this[31] = 0;
  this[35] = re::globalAllocators(v4)[2];
  this[36] = 0;
  v5 = objc_initWeak(this + 37, 0);
  this[38] = 0;
  this[42] = re::globalAllocators(v5)[2];
  this[43] = 0;
  v6 = objc_initWeak(this + 44, 0);
  this[45] = 0;
  this[49] = re::globalAllocators(v6)[2];
  this[50] = 0;
  *(this + 26) = xmmword_1E3047670;
  *(this + 27) = xmmword_1E3047680;
  *(this + 28) = xmmword_1E30476A0;
  *(this + 29) = xmmword_1E30474D0;
  *(this + 120) = 1065353216;
  this[61] = 0;
  *(this + 36) = atomic_fetch_add(re::ecs2::MeshComponent::MeshComponent(void)::s_atomicCounter, 1u);
  return this;
}

void re::ecs2::MeshComponent::~MeshComponent(id *this)
{
  *this = &unk_1F5CD05D0;
  v2 = (this + 4);
  re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::~FramePersistentPtr(this + 44);
  re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::~FramePersistentPtr(this + 37);
  re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::~FramePersistentPtr(this + 30);
  re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::~FramePersistentPtr(this + 19);
  re::DynamicArray<re::ecs2::EntityHandle>::deinit((this + 13));
  re::DynamicArray<re::AssetHandle>::deinit((this + 7));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5CD05D0;
  v2 = (this + 4);
  re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::~FramePersistentPtr(this + 44);
  re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::~FramePersistentPtr(this + 37);
  re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::~FramePersistentPtr(this + 30);
  re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::~FramePersistentPtr(this + 19);
  re::DynamicArray<re::ecs2::EntityHandle>::deinit((this + 13));
  re::DynamicArray<re::AssetHandle>::deinit((this + 7));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

id *re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD0658;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::MeshComponent::CombinedRenderMeshParts>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

re *re::internal::destroyPersistent<re::ecs2::MeshComponent::CombinedRenderMeshParts>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit(a3 + 96);
    re::DynamicArray<unsigned long>::deinit(a3 + 56);
    re::BucketArray<re::MeshPart,8ul>::deinit(a3);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshComponent::CombinedRenderMeshParts*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD0658;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshComponent::CombinedRenderMeshParts*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD0658;
  return result;
}

uint64_t re::BucketArray<re::MeshPart,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::MeshPart,8ul>::operator[](a1, i);
      re::StringID::destroyString((v4 + 61));
      re::FixedArray<re::StringID>::deinit(v4 + 41);
      re::AttributeTable::~AttributeTable(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::MeshPart,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 544 * (a2 & 7);
}

id *re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD06B0;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::MeshComponent::StaticBoundingBoxData>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

re *re::internal::destroyPersistent<re::ecs2::MeshComponent::StaticBoundingBoxData>(re *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a3 + 24));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a3 + 15));
    re::FixedArray<CoreIKTransform>::deinit(a3 + 6);
    re::FixedArray<CoreIKTransform>::deinit(a3 + 3);
    re::AssetHandle::~AssetHandle(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshComponent::StaticBoundingBoxData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD06B0;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshComponent::StaticBoundingBoxData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD06B0;
  return result;
}

id *re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD0708;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::MeshComponent::MaterialData>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

re *re::internal::destroyPersistent<re::ecs2::MeshComponent::MaterialData>(re *result, uint64_t a2, re::ecs2::MeshComponent::MaterialData *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::ecs2::MeshComponent::MaterialData::~MaterialData(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshComponent::MaterialData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD0708;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshComponent::MaterialData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD0708;
  return result;
}

void re::ecs2::MeshComponent::MaterialData::~MaterialData(re::ecs2::MeshComponent::MaterialData *this)
{
  re::BucketArray<re::SharedPtr<re::UnlitParameterTable>,8ul>::deinit(this + 584);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 584);
  re::BucketArray<re::SharedPtr<re::UnlitParameterTable>,8ul>::deinit(this + 528);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 528);
  re::BucketArray<re::SharedPtr<re::UnlitParameterTable>,8ul>::deinit(this + 472);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 472);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 56);
  re::BucketArray<NS::SharedPtr<MTL::Buffer>,8ul>::deinit(this + 392);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 392);
  re::FixedArray<CoreIKTransform>::deinit(this + 43);
  re::FixedArray<CoreIKTransform>::deinit(this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 37);
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::FixedArray<CoreIKTransform>::deinit(this + 31);
  re::FixedArray<CoreIKTransform>::deinit(this + 28);
  re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::deinit(this + 22);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 88);
  re::DynamicArray<re::TextureHandle>::deinit(this + 48);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 3);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this);
}

uint64_t re::BucketArray<re::SharedPtr<re::UnlitParameterTable>,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<unsigned long,8ul>::operator[](a1, i);
      if (*v4)
      {
        v5 = v4;

        *v5 = 0;
      }
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<NS::SharedPtr<MTL::Buffer>,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<unsigned long,8ul>::operator[](a1, i);
      if (*v4)
      {

        *v4 = 0;
      }
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

double re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2] + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          re::FixedArray<re::ArgumentBufferBufferRecord>::deinit((v6 + 56));
          re::FixedArray<re::ArgumentBufferTextureRecord>::deinit((v6 + 32));
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

void *re::FixedArray<re::ArgumentBufferBufferRecord>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 16 * v2;
      v5 = (result[2] + 8);
      do
      {
        v6 = *v5;
        v5 += 2;

        v4 -= 16;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::ArgumentBufferTextureRecord>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 32 * v2;
      do
      {
        re::ArgumentBufferTextureRecord::destroyTexture(v4);
        v4 = (v4 + 32);
        v5 -= 32;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::TextureHandle>::deinit(uint64_t a1)
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
        v5 = 16 * v4;
        do
        {
          re::TextureHandle::invalidate(v3);
          v3 = (v3 + 16);
          v5 -= 16;
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

id *re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD0760;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::MeshComponent::CachedMeshData>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

re *re::internal::destroyPersistent<re::ecs2::MeshComponent::CachedMeshData>(re *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::FixedArray<CoreIKTransform>::deinit(a3 + 6);
    re::FixedArray<CoreIKTransform>::deinit(a3 + 3);
    re::FixedArray<CoreIKTransform>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshComponent::CachedMeshData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD0760;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshComponent::CachedMeshData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD0760;
  return result;
}

uint64_t re::DynamicArray<re::ecs2::EntityHandle>::deinit(uint64_t a1)
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
        v5 = 24 * v4;
        do
        {
          re::ecs2::EntityHandle::reset(v3);
          objc_destroyWeak(v3);
          *v3 = 0;
          v3 = (v3 + 24);
          v5 -= 24;
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

void re::ecs2::AnimationLibraryComponent::~AnimationLibraryComponent(re::ecs2::AnimationLibraryComponent *this)
{
  re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(this + 7);
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(this + 7);
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::SkeletalPoseSampledAnimation>::deinit(uint64_t a1)
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
        v5 = &v3[15 * v4];
        v6 = *(a1 + 32);
        do
        {
          *v3 = &unk_1F5CAEFA8;
          re::FixedArray<re::SkeletalPose>::deinit(v3 + 11);
          *v3 = &unk_1F5CAD3A8;
          re::DynamicString::deinit((v3 + 5));
          re::StringID::destroyString((v3 + 3));
          v6 += 120;
          v3 += 15;
        }

        while (v3 != v5);
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

uint64_t re::DynamicArray<re::ModelIOSkinningData>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 224 * v4;
        do
        {
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 200));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 176));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 152));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 128));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 104));
          re::DynamicString::deinit((v3 + v5 + 72));
          v5 += 224;
        }

        while (v6 != v5);
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

uint64_t re::DynamicArray<re::ModelIOSkeleton>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 168 * v4;
        do
        {
          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v3 + v5 + 120));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 96));
          re::FixedArray<re::StringID>::deinit((v3 + v5 + 72));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 48));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 24));
          re::StringID::destroyString((v3 + v5));
          v5 += 168;
        }

        while (v6 != v5);
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

void re::loadMDLObject(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v188 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 name];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1F5D319D0;
  }

  v10 = [(__CFString *)v9 UTF8String];
  v173[0].super.isa = 0;
  v173[1].super.isa = &str_67;
  v11 = re::StringID::operator=((a3 + 8), v173);
  if (v173[0].super.isa)
  {
    if (v173[0].super.isa)
    {
    }
  }

  v12 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(a3);
  v13 = [v7 transform];
  v14 = v13;
  v139 = v9;
  if (v13)
  {
    [v13 matrix];
    *(v12 + 4) = v23.columns[3];
    v15 = vmulq_f32(v23.columns[0], v23.columns[0]);
    v133 = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(LODWORD(v133));
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(LODWORD(v133), vmul_f32(*v15.f32, *v15.f32)));
    v131 = v23.columns[0];
    v132 = v23.columns[1];
    v23.columns[0] = vmulq_n_f32(v23.columns[0], vmul_f32(*v15.f32, vrsqrts_f32(LODWORD(v133), vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    v16 = vmulq_f32(v23.columns[1], v23.columns[0]);
    v17 = v16.f32[2] + vaddv_f32(*v16.f32);
    v23.columns[3] = vmulq_f32(v23.columns[0], v23.columns[0]);
    v18 = vmulq_f32(v23.columns[2], v23.columns[0]);
    *v23.columns[3].f32 = vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v23.columns[3], v23.columns[3], 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v23.columns[3].f32), vzip2_s32(*v18.i8, *v23.columns[3].f32)));
    v23.columns[1] = vsubq_f32(v23.columns[1], vmulq_n_f32(v23.columns[0], v17 / v23.columns[3].f32[1]));
    v19 = vmulq_f32(v23.columns[1], v23.columns[1]);
    *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
    *v19.f32 = vrsqrte_f32(v20);
    *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
    v23.columns[1] = vmulq_n_f32(v23.columns[1], vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
    v21 = vmulq_f32(v23.columns[2], v23.columns[1]);
    v22 = vmulq_f32(v23.columns[1], v23.columns[1]);
    *v21.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v21.i8, *v22.i8), vzip2_s32(*v21.i8, *v22.i8)));
    v135 = v23.columns[2];
    v23.columns[3] = vsubq_f32(vsubq_f32(v23.columns[2], vmulq_n_f32(v23.columns[0], v23.columns[3].f32[0] / v23.columns[3].f32[1])), vmulq_n_f32(v23.columns[1], vdiv_f32(*v21.i8, vdup_lane_s32(*v21.i8, 1)).f32[0]));
    v24 = vmulq_f32(v23.columns[3], v23.columns[3]);
    v25 = v24.f32[2] + vaddv_f32(*v24.f32);
    v26 = vrsqrte_f32(LODWORD(v25));
    v27 = vmul_f32(v26, vrsqrts_f32(LODWORD(v25), vmul_f32(v26, v26)));
    v23.columns[2] = vmulq_n_f32(v23.columns[3], vmul_f32(v27, vrsqrts_f32(LODWORD(v25), vmul_f32(v27, v27))).f32[0]);
    *(v12 + 6) = simd_quaternion(v23);
    *(v12 + 7) = v28;
    v29 = vmulq_f32(v131, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v135, v135, 0xCuLL), v135, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v132, v132), v132, 0xCuLL))), vextq_s8(vuzp1q_s32(v135, v135), v135, 0xCuLL), vextq_s8(vextq_s8(v132, v132, 0xCuLL), v132, 8uLL)));
    v30 = vaddv_f32(*v29.f32);
    v31 = -1.0;
    if ((v29.f32[2] + v30) > 0.0)
    {
      v31 = 1.0;
    }

    v32 = vmulq_f32(v132, v132);
    *v32.f32 = vsqrt_f32(__PAIR64__(v32.f32[2] + vaddv_f32(*v32.f32), LODWORD(v133)));
    v33 = vmulq_f32(v135, v135);
    v32.i32[2] = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
    *(v12 + 2) = vmulq_n_f32(v32, v31);
  }

  else
  {
    *(v12 + 4) = 0x3F8000003F800000;
    *(v12 + 5) = 1065353216;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0x3F80000000000000;
    *(v12 + 8) = 0;
    *(v12 + 9) = 0;
  }

  v34 = v7;
  objc_opt_class();
  v36 = 1;
  v138 = v14;
  if (objc_opt_isKindOfClass())
  {
    v37 = v34;
    v38 = [v37 name];
    *&buf[2] = 257;
    buf[4] = 1;
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = &stru_1F5D319D0;
    }

    *&buf[5] = 0;
    *&buf[9] = 0;
    buf[11] = 1;
    v186 = 0u;
    v187 = 0u;
    *&buf[16] = 0u;
    DWORD1(v187) = 0x7FFFFFFF;
    buf[1] = *(a1 + 161);
    buf[6] = *(a1 + 164);
    buf[14] = buf[6];
    *&buf[12] = 0;
    buf[0] = 0;
    v160 = 0u;
    v161 = 0u;
    re::DynamicString::setCapacity(&v160, 0);
    re::GeomModel::GeomModel(v173);
    v136 = v37;
    *&v162 = v136;
    re::convertMDLMeshToGeomModel(&v162, v173, a4, a5, &buf[10]);

    MeshAssetDataWithGeomModel = re::makeMeshAssetDataWithGeomModel(v173, 0, 0, &v162);
    *&v146 = 0;
    *&v145 = 0;
    v144 = 0uLL;
    DWORD2(v145) = 0;
    v41 = *(a6 + 136);
    if (v41)
    {
      v42 = (*(a6 + 152) + 16);
      v43 = 32 * v41;
      do
      {
        v44 = *(v42 - 1);
        if (v44)
        {
          v45 = *v42;
        }

        else
        {
          v45 = v42 - 7;
        }

        v46 = v44 >> 1;
        v47 = v44 >> 1;
        if (*(v42 - 1))
        {
          v48 = v46;
        }

        else
        {
          v48 = v47;
        }

        v49 = re::TimelineAsset::assetType(MeshAssetDataWithGeomModel);
        re::ImportAssetTable::compiledAssetPath(v45, v48, v49, v150);
        v50 = re::DynamicArray<re::DynamicString>::add(&v144, v150);
        MeshAssetDataWithGeomModel = *v150;
        if (*v150 && (v150[8] & 1) != 0)
        {
          MeshAssetDataWithGeomModel = (*(**v150 + 40))(v50);
        }

        v42 += 4;
        v43 -= 32;
      }

      while (v43);
    }

    if (v162)
    {
      re::DynamicArray<re::MeshAssetModel>::DynamicArray(v150, &v162 + 1);
      re::DynamicArray<re::MeshAssetInstance>::DynamicArray(&v151 + 8, v166);
      re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(&v154, &v167 + 1);
      re::DynamicArray<float>::DynamicArray(&v156 + 8, v170);
      LODWORD(v159[0]) = v171;
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(v159 + 8, v172);
    }

    else
    {
      v158 = 0u;
      memset(v159, 0, sizeof(v159));
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v151 = 0u;
      memset(v150, 0, sizeof(v150));
    }

    v51 = re::AnimationLibraryAsset::buildAsset(v150, a6 + 120, a6 + 80, a6 + 40, &v144);
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v159 + 8);
    if (*(&v156 + 1))
    {
      if (*(&v158 + 1))
      {
        (*(**(&v156 + 1) + 40))();
      }

      *(&v158 + 1) = 0;
      v157 = 0uLL;
      *(&v156 + 1) = 0;
      LODWORD(v158) = v158 + 1;
    }

    v134 = v51;
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v154);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v151 + 8);
    v52 = re::DynamicArray<re::MeshAssetModel>::deinit(v150);
    v53 = v162;
    v54 = re::globalAllocators(v52);
    v55 = (*(*v54[2] + 32))(v54[2], 1272, 8);
    v56 = v55;
    if (v53 == 1)
    {
      re::MeshAsset::MeshAsset(v55, &v162 + 8);
    }

    else
    {
      re::MeshAsset::MeshAsset(v55);
    }

    if (a4 && a5 && *(a4 + 16))
    {
      v57 = *(a5 + 16);
      re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshDeformationComponent>(a3);
      re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(a3);
      if (v57)
      {
        re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(a3);
      }
    }

    else
    {
      re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshDeformationComponent>(a3);
      re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(a3);
    }

    re::ecs2::EntityAssetData::addComponent<re::ecs2::BlendShapeWeightsComponent>(a3);
    v58 = [(__CFString *)v39 UTF8String];
    for (i = 1; ; i = (i + 1))
    {
      v61 = *(a1 + 104);
      v62 = (v150[8] & 1) != 0 ? *&v150[16] : &v150[9];
      v63 = (v150[8] & 1) != 0 ? *&v150[8] >> 1 : v150[8] >> 1;
      v64 = re::MeshAsset::assetType(v59);
      if (!re::ImportAssetTable::importedAsset(v61, v62, v63, v64))
      {
        break;
      }

      re::DynamicString::format("%s-%d", &v148, [(__CFString *)v39 UTF8String], i);
      re::DynamicString::operator=(v150, &v148);
      v59 = v148;
      if (v148)
      {
        if (v149[0])
        {
          v59 = (*(*v148 + 40))();
        }
      }
    }

    v65 = *(a1 + 104);
    v66 = [(__CFString *)v39 UTF8String];
    v67 = strlen(v66);
    v68 = re::MeshAsset::assetType(v67);
    v69 = re::ImportAssetTable::addAsset(v65, v66, v67, v56, v68);
    re::DynamicString::operator=(&v160, v69);
    if (v134)
    {
      v70 = re::DynamicString::format("%s_animationlibrary", &v148, *(a3 + 16));
      v71 = *(a1 + 104);
      v72 = (v149[0] & 1) != 0 ? v149[1] : (v149 + 1);
      v73 = (v149[0] & 1) != 0 ? v149[0] >> 1 : LOBYTE(v149[0]) >> 1;
      v74 = re::AnimationLibraryAsset::assetType(v70);
      v75 = re::ImportAssetTable::addAsset(v71, v72, v73, v134, v74);
      v76 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationLibraryComponent>(a3);
      v77 = v76;
      v78 = (*(v75 + 8) & 1) != 0 ? *(v75 + 16) : (v75 + 9);
      if (v148)
      {
        if (v149[0])
        {
          (*(*v148 + 40))();
        }
      }
    }

    if (*v150 && (v150[8] & 1) != 0)
    {
      (*(**v150 + 40))();
    }

    re::DynamicArray<re::DynamicString>::deinit(&v144);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v162);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v184);
    if (v182 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v183);
    }

    if (v180 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v181);
    }

    if (v177)
    {
      if (*(&v179 + 1))
      {
        (*(*v177 + 40))();
      }

      *(&v179 + 1) = 0;
      v178 = 0uLL;
      v177 = 0;
      LODWORD(v179) = v179 + 1;
    }

    re::DynamicArray<re::GeomMesh>::deinit(v175);
    if (v173[0].super.isa && (v173[1].super.isa & 1) != 0)
    {
      (*(*v173[0].super.isa + 40))();
    }

    *&v165 = 0;
    v163 = 0;
    v162 = 0uLL;
    LODWORD(v164) = 0;
    v79 = v136;
    *v150 = v79;
    *v175 = 0;
    *&v173[0].super.isa = 0u;
    v174 = 0u;
    *&v175[4] = 0x7FFFFFFFLL;
    re::collectMeshMaterialsFromMDLMesh(v150, v173, *(a1 + 164));
    re::createMaterialAssetsFromMaterialTable(a1, v173, &v162);
    re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v173);

    v80 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(a3);
    v81 = v80;
    if (BYTE8(v160))
    {
      v82 = v161;
    }

    else
    {
      v82 = (&v160 | 9);
    }

    re::DynamicArray<re::AssetHandle>::operator=((v81 + 7), &v162);
    v36 = !re::objectIsBlendShapeRoot(v79, v83);
    re::DynamicArray<re::AssetHandle>::deinit(&v162);
    if (v160 && (BYTE8(v160) & 1) != 0)
    {
      (*(*v160 + 40))();
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&buf[16]);

    v14 = v138;
  }

  if (re::hasTransformAnimation(v34, v35))
  {
    re::TimelineAssetData::TimelineAssetData(v173, 33);
    LOWORD(v177) = 256;
    HIDWORD(v177) = 1023969417;
    v181[0] = 0;
    v178 = 0u;
    v179 = 0u;
    v180 = 0;
    v173[0].super.isa = &unk_1F5CC0788;
    LOBYTE(v162) = 1;
    re::importSRTSampledAnimation(v34, v173, 0.016667, v150);
    v84 = re::Result<re::Unit,re::DetailedError>::operator=(&v162, v150);
    if ((v150[0] & 1) == 0)
    {
      v84 = *&v150[24];
      if (*&v150[24])
      {
        if (v151)
        {
          v84 = (*(**&v150[24] + 40))();
        }
      }
    }

    if (v162 == 1)
    {
      v85 = [v34 name];
      v86 = [v85 UTF8String];

      v88 = re::globalAllocators(v87);
      v89 = (*(*v88[2] + 32))(v88[2], 128, 8);
      re::SampledAnimationAssetData<re::GenericSRT<float>>::SampledAnimationAssetData(v89, v173);
      *v90 = &unk_1F5CC0788;
      *v150 = "Transform.transform";
      *&v150[8] = 19;
      re::DynamicString::operator=((v90 + 5), v150);
      TimelineAsset = re::AssetHelper::makeTimelineAsset(v89, v91);
      v93 = *(a1 + 104);
      v94 = strlen(v86);
      v95 = re::TimelineAsset::assetType(v94);
      v96 = re::ImportAssetTable::addAsset(v93, v86, v94, TimelineAsset, v95);
      *&v151 = 0;
      memset(v150, 0, 28);
      v97 = re::DynamicArray<re::DynamicString>::add(v150, buf);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))(v97);
      }

      *&v186 = 0;
      memset(buf, 0, 28);
      re::DynamicArray<re::DynamicString>::add(buf, v96);
      v98 = re::AnimationLibraryAsset::buildAsset(v150, buf);
      if (v98)
      {
        v99 = v98;
        v100 = re::DynamicString::format("%s_animationlibrary", &v144, *(a3 + 16));
        v101 = *(a1 + 104);
        v102 = (BYTE8(v144) & 1) != 0 ? v145 : (&v144 + 9);
        v103 = (BYTE8(v144) & 1) != 0 ? *(&v144 + 1) >> 1 : BYTE8(v144) >> 1;
        v104 = re::AnimationLibraryAsset::assetType(v100);
        v105 = re::ImportAssetTable::addAsset(v101, v102, v103, v99, v104);
        v106 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationLibraryComponent>(a3);
        v107 = v106;
        v108 = (*(v105 + 8) & 1) != 0 ? *(v105 + 16) : (v105 + 9);
        if (v144)
        {
          if (BYTE8(v144))
          {
            (*(*v144 + 40))();
          }
        }
      }

      re::DynamicArray<re::DynamicString>::deinit(buf);
      re::DynamicArray<re::DynamicString>::deinit(v150);
    }

    else
    {
      v109 = *re::pipelineLogObjects(v84);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(v150, (&v162 + 8));
        v129 = v150[23] >= 0 ? v150 : *v150;
        v130 = (v165 & 1) != 0 ? *(&v165 + 1) : (&v165 + 1);
        *buf = 136315394;
        *&buf[4] = v129;
        *&buf[12] = 2080;
        *&buf[14] = v130;
        _os_log_error_impl(&dword_1E1C61000, v109, OS_LOG_TYPE_ERROR, "Error: %s\nDetails:\n%s", buf, 0x16u);
        if ((v150[23] & 0x80000000) != 0)
        {
          operator delete(*v150);
        }
      }
    }

    if (v162 & 1) == 0 && v164 && (v165)
    {
      (*(*v164 + 40))();
    }

    v173[0].super.isa = &unk_1F5CC07F8;
    if (*(&v178 + 1))
    {
      if (v181[0])
      {
        (*(**(&v178 + 1) + 40))();
      }

      v181[0] = 0;
      v179 = 0uLL;
      *(&v178 + 1) = 0;
      ++v180;
    }

    v173[0].super.isa = &unk_1F5CC3608;
    v110 = *&v175[8];
    if (*&v175[8])
    {
      if (v175[16])
      {
        v110 = (*(**&v175[8] + 40))();
      }

      v176 = 0u;
      *&v175[8] = 0u;
    }

    if (BYTE8(v174))
    {
      if (BYTE8(v174))
      {
      }
    }
  }

  v111 = [v34 componentConformingToProtocol:&unk_1F5D590E0];
  if (v111)
  {
    v112 = -1;
    do
    {
      v113 = [v111 targetShapes];
      v114 = [v113 count];

      ++v112;
    }

    while (v114 > v112);
  }

  v115 = v139;
  if (v36)
  {
    v137 = v34;
    v116 = [v34 componentConformingToProtocol:&unk_1F5D59140];
    v117 = v116;
    if (v116)
    {
      v186 = 0u;
      v187 = 0u;
      memset(buf, 0, sizeof(buf));
      v118 = [v116 countByEnumeratingWithState:buf objects:v173 count:16];
      if (v118)
      {
        v119 = v118;
        v120 = **&buf[16];
        do
        {
          for (j = 0; j != v119; ++j)
          {
            if (**&buf[16] != v120)
            {
              objc_enumerationMutation(v117);
            }

            v122 = *(*&buf[8] + 8 * j);
            v169 = 0;
            v168 = 0;
            memset(v166, 0, sizeof(v166));
            v162 = 0u;
            v163 = &str_67;
            v164 = 1;
            v165 = 0uLL;
            *&v166[0] = 0;
            DWORD2(v166[0]) = 0;
            v167 = 0u;
            re::DynamicArray<re::ecs2::EntityAssetData>::add(a3 + 72, &v162);
            re::ecs2::EntityAssetData::~EntityAssetData(&v162);
            re::loadMDLObject(a1, v122, *(a3 + 104) + 112 * *(a3 + 88) - 112, a4, a5, a6);
          }

          v119 = [v117 countByEnumeratingWithState:buf objects:v173 count:16];
        }

        while (v119);
      }
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v123 = [v34 children];
    v124 = [v123 countByEnumeratingWithState:&v144 objects:&v162 count:16];
    if (v124)
    {
      v125 = v124;
      v126 = *v145;
      do
      {
        for (k = 0; k != v125; ++k)
        {
          if (*v145 != v126)
          {
            objc_enumerationMutation(v123);
          }

          v128 = *(*(&v144 + 1) + 8 * k);
          v155 = 0uLL;
          v152 = 0u;
          *v150 = 0u;
          *&v150[16] = &str_67;
          *&v150[24] = 1;
          v151 = 0uLL;
          *&v152 = 0;
          DWORD2(v152) = 0;
          v153 = 0u;
          v154 = 0u;
          LODWORD(v155) = 0;
          re::DynamicArray<re::ecs2::EntityAssetData>::add(a3 + 72, v150);
          re::ecs2::EntityAssetData::~EntityAssetData(v150);
          re::loadMDLObject(a1, v128, *(a3 + 104) + 112 * *(a3 + 88) - 112, a4, a5, a6);
        }

        v125 = [v123 countByEnumeratingWithState:&v144 objects:&v162 count:16];
      }

      while (v125);
    }

    v14 = v138;
    v115 = v139;
    v34 = v137;
  }
}

double re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v9 = (v8 + 10);
          re::DynamicString::deinit((v8 + 2));
          re::DynamicArray<re::AssetHandle>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 88;
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

void *re::DynamicArray<re::ImportedTexturesTable::Entry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ImportedTexturesTable::Entry>::setCapacity(v5, a2);
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
        v10 = v8 + 96 * v9;
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
          v16 = *(v8 + 32);
          *(v11 + 12) = *(v8 + 48);
          *(v11 + 2) = v16;
          *(v11 + 9) = 0u;
          *(v11 + 7) = 0u;
          v11[7] = *(v8 + 56);
          *(v8 + 56) = 0;
          v11[10] = *(v8 + 80);
          *(v8 + 80) = 0;
          v18 = v11[8];
          v17 = v11[9];
          v19 = *(v8 + 72);
          v11[8] = *(v8 + 64);
          v11[9] = v19;
          *(v8 + 64) = v18;
          *(v8 + 72) = v17;
          v11[11] = *(v8 + 88);
          re::DynamicString::deinit((v8 + 56));
          re::DynamicString::deinit(v8);
          v11 += 12;
          v8 += 96;
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

uint64_t re::getSemanticPriority(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1E306A2E8[a1];
  }
}

double re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
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

void re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::DynamicString::deinit((a1 + 8));
    v3 = *(a1 + 40);
  }
}

uint64_t re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 328 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 328 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 328 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 320) = a3;
  ++*(a1 + 28);
  return v7 + 328 * v5;
}

void re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 320) % *(v4 + 24));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = (*(a2 + 16) + v5);
        result = re::TextureProvider::TextureProvider(v8 + 40, (v14 + 5));
        *(v8 + 288) = 0u;
        *(v8 + 304) = 0u;
        *(v8 + 312) = v14[39];
        v15 = v14[37];
        *(v8 + 288) = v14[36];
        v14[36] = 0;
        v16 = v14[38];
        v14[39] = 0;
        v18 = *(v8 + 296);
        v17 = *(v8 + 304);
        *(v8 + 296) = v15;
        *(v8 + 304) = v16;
        v14[37] = v18;
        v14[38] = v17;
        *(v8 + 40) = &unk_1F5D0B5C8;
        v2 = *(a2 + 32);
      }

      v5 += 328;
    }
  }

  return result;
}

void *re::DynamicArray<USKNode * {__strong}>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

re::USDImportContext *re::USDImportContext::USDImportContext(re::USDImportContext *this)
{
  *this = 0;
  *(this + 1) = 0xFF7FFFFF7F7FFFFFLL;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 1;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0u;
  *(this + 18) = 1;
  *(this + 10) = 0;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 10) = 0u;
  *(this + 44) = 1;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 0;
  *(this + 252) = 0x7FFFFFFFLL;
  *(this + 264) = 0u;
  *(this + 70) = 1;
  *(this + 38) = 0;
  *(this + 78) = 0;
  *(this + 18) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 0;
  *(this + 356) = 0x7FFFFFFFLL;
  *(this + 23) = 0u;
  *(this + 96) = 1;
  *(this + 392) = 0u;
  *(this + 104) = 0;
  *(this + 51) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 114) = 0;
  *(this + 460) = 0x7FFFFFFFLL;
  *(this + 126) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 508) = 0x7FFFFFFFLL;
  *(this + 520) = 0u;
  *(this + 134) = 1;
  *(this + 34) = 0u;
  *(this + 142) = 0;
  *(this + 70) = 0;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 152) = 0;
  *(this + 612) = 0x7FFFFFFFLL;
  *(this + 39) = 0u;
  *(this + 160) = 1;
  *(this + 168) = 0;
  *(this + 83) = 0;
  *(this + 648) = 0u;
  *(this + 680) = 0u;
  *(this + 174) = 1;
  *(this + 182) = 0;
  *(this + 90) = 0;
  *(this + 44) = 0u;
  *(this + 192) = 0;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 772) = 0x7FFFFFFFLL;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  re::DynamicString::setCapacity(this + 98, 0);
  *(this + 210) = 0;
  *(this + 104) = 0;
  *(this + 51) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 876) = 0u;
  *(this + 892) = 0x7FFFFFFFLL;
  return this;
}

void re::loadUSKSkeletalAnimationNodes(void *a1, uint64_t a2)
{
  v43[6] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 type];
  v5 = *MEMORY[0x1E69DEE78];

  if (v4 != v5)
  {
    goto LABEL_2;
  }

  re::importSkeletalAnimation(v3, *(a2 + 32), v33, *a2);
  if (v33[0])
  {
    v14 = [v3 name];
    v15 = [v14 stringValue];
    v16 = [v15 UTF8String];

    if (!v16 || !*v16)
    {
      v16 = "(UnnamedAnimation)";
    }

    v17 = [v3 path];
    v18 = [v17 stringValue];
    v19 = [v18 UTF8String];
    *buf = 0;
    *&buf[8] = &str_67;
    v30 = 0;
    v31 = &str_67;
    re::USDImportContext::addSkeletalAnimation(a2, buf, &v30, &v34);
    if (v30)
    {
      if (v30)
      {
      }
    }

    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *buf = 0;
    *&buf[8] = &str_67;

    goto LABEL_19;
  }

  v22 = *re::pipelineLogObjects(v13);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v26 = v22;
    v17 = [v3 path];
    v27 = [v17 stringValue];
    v28 = [v27 UTF8String];
    if (v36)
    {
      v29 = v38;
    }

    else
    {
      v29 = v37;
    }

    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = v29;
    _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Skeletal Animation (%s) import error: %s.", buf, 0x16u);

LABEL_19:
  }

  if (v33[0] != 1)
  {
    v25 = v35;
    if (!v35 || (v36 & 1) == 0)
    {
      goto LABEL_2;
    }

    v24 = v38;
LABEL_32:
    (*(*v25 + 40))(v25, v24);
    goto LABEL_2;
  }

  re::DynamicArray<re::StringID>::deinit(v43);
  re::AssetHandle::~AssetHandle(&v42);
  v34 = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v41);
  v34 = &unk_1F5CC3608;
  v23 = v39;
  if (v39)
  {
    if (BYTE8(v39))
    {
      v23 = (*(*v39 + 40))();
    }

    v39 = 0u;
    v40 = 0u;
  }

  if (v36)
  {
    if (v36)
    {
      v24 = v38;
      goto LABEL_32;
    }
  }

LABEL_2:
  v6 = [v3 childIterator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [v3 metadataWithKey:@"kind"];
      v10 = [v9 stringValue];
      v11 = [v10 isEqual:@"sceneLibrary"];

      if ((v11 & 1) == 0)
      {
        re::loadUSKSkeletalAnimationNodes(v8, a2);
      }

      v12 = [v6 nextObject];

      v8 = v12;
    }

    while (v12);
  }
}

void re::loadUSKSkeletonNodes(void *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 type];
  v5 = *MEMORY[0x1E69DEE80];

  if (v4 != v5)
  {
    goto LABEL_2;
  }

  re::importSkeleton(v3, v27);
  if (v27[0])
  {
    v14 = [v3 path];
    v15 = [v14 stringValue];
    v16 = [v15 UTF8String];
    *buf = 0;
    *&buf[8] = &str_67;
    v17 = re::USDImportContext::addSkeleton(a2, buf, v28);
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *buf = 0;
    *&buf[8] = &str_67;

    goto LABEL_13;
  }

  v18 = *re::pipelineLogObjects(v13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v23 = v18;
    v14 = [v3 path];
    v24 = [v14 stringValue];
    v25 = [v24 UTF8String];
    if (v30)
    {
      v26 = v32;
    }

    else
    {
      v26 = v31;
    }

    *buf = 136315394;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Skeleton (%s) import error: %s.", buf, 0x16u);

LABEL_13:
  }

  if (v27[0] != 1)
  {
    v22 = v29;
    if (!v29 || (v30 & 1) == 0)
    {
      goto LABEL_2;
    }

    v21 = v32;
LABEL_34:
    (*(*v22 + 40))(v22, v21);
    goto LABEL_2;
  }

  v19.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v42);
  if (v39)
  {
    if (v40)
    {
      (*(*v39 + 40))(v19.n128_f64[0]);
      v40 = 0;
      v41 = 0;
    }

    v39 = 0;
  }

  if (v36)
  {
    if (v37)
    {
      (*(*v36 + 40))(v19);
      v37 = 0;
      v38 = 0;
    }

    v36 = 0;
  }

  if (v33)
  {
    if (v34)
    {
      (*(*v33 + 40))(v19);
      v34 = 0;
      v35 = 0;
    }

    v33 = 0;
  }

  v20 = re::FixedArray<re::StringID>::deinit(&v29);
  if (v28[0])
  {
    if (v28[0])
    {
      v21 = v28[1];
      goto LABEL_34;
    }
  }

LABEL_2:
  v6 = [v3 childIterator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [v3 metadataWithKey:@"kind"];
      v10 = [v9 stringValue];
      v11 = [v10 isEqual:@"sceneLibrary"];

      if ((v11 & 1) == 0)
      {
        re::loadUSKSkeletonNodes(v8, a2);
      }

      v12 = [v6 nextObject];

      v8 = v12;
    }

    while (v12);
  }
}

void re::loadUSKBlendShapeNodes(void *a1, uint64_t a2)
{
  v116 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [v4 type];
  v6 = *MEMORY[0x1E69DEE40];

  if (v5 == v6)
  {
    v95 = 0;
    v96 = &str_67;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0;
    v7 = [v4 name];
    v8 = [v7 stringValue];
    v9 = [v8 UTF8String];

    if (v93)
    {
      v11 = *&v94[7];
    }

    else
    {
      v11 = v94;
    }

    *buf = 0;
    *&buf[8] = &str_67;
    v13 = *buf;
    v14 = *&buf[8];
    *buf = 0;
    *&buf[8] = &str_67;
    v15 = v95;
    v16 = v96;
    v95 = v13;
    v96 = v14;
    if (v15)
    {
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }
    }

    v18 = [v4 property:@"normalOffsets"];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 data];
      v21 = [v20 dataNoCopy];
      v22 = [v21 length];
      v23 = 3 * [v20 arraySize];

      if (v22 == 4 * v23)
      {
        v25 = [v20 dataNoCopy];
        v26 = [v25 bytes];
        v27 = 3 * [v20 arraySize];

        if (v27 >= 3)
        {
          v30 = 0;
          v31 = v99;
          if (v27 / 3 <= 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = v27 / 3;
          }

          v33 = (*(&v99 + 1) + 4);
          v34 = (v26 + 4);
          v35 = 2;
          do
          {
            v36 = v35 - 2;
            if (v27 <= v35 - 2)
            {
              goto LABEL_79;
            }

            v37 = v35 - 1;
            if (v27 <= v35 - 1)
            {
              goto LABEL_80;
            }

            if (v27 <= v35)
            {
              goto LABEL_81;
            }

            if (v31 == v30)
            {
              goto LABEL_82;
            }

            v38 = *v34;
            v39 = v34[1];
            ++v30;
            *(v33 - 1) = *(v34 - 1);
            *v33 = v38;
            v33[1] = v39;
            v35 += 3;
            v33 += 3;
            v34 += 3;
          }

          while (v32 != v30);
        }
      }

      else
      {
        v40 = *re::pipelineLogObjects(v24);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v86 = v40;
          v87 = [v20 arraySize];
          *buf = 134217984;
          *&buf[4] = v87;
          _os_log_error_impl(&dword_1E1C61000, v86, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }
      }
    }

    v41 = [v4 property:@"offsets"];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 data];
      v44 = [v43 dataNoCopy];
      v45 = [v44 length];
      v46 = 3 * [v43 arraySize];

      if (v45 == 4 * v46)
      {
        v48 = [v43 dataNoCopy];
        v49 = [v48 bytes];
        v31 = 3 * [v43 arraySize];

        if (v31 >= 3)
        {
          v52 = 0;
          v2 = *(&v97 + 1);
          if (v31 / 3 <= 1)
          {
            v53 = 1;
          }

          else
          {
            v53 = v31 / 3;
          }

          v54 = (v98 + 4);
          v55 = (v49 + 4);
          v56 = 2;
          do
          {
            v57 = v56 - 2;
            if (v31 <= v56 - 2)
            {
              goto LABEL_83;
            }

            v58 = v56 - 1;
            if (v31 <= v56 - 1)
            {
              goto LABEL_84;
            }

            if (v31 <= v56)
            {
              goto LABEL_85;
            }

            if (v2 == v52)
            {
              goto LABEL_86;
            }

            v59 = *v55;
            v60 = v55[1];
            ++v52;
            *(v54 - 1) = *(v55 - 1);
            *v54 = v59;
            v54[1] = v60;
            v56 += 3;
            v54 += 3;
            v55 += 3;
          }

          while (v53 != v52);
        }
      }

      else
      {
        v61 = *re::pipelineLogObjects(v47);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v88 = v61;
          v89 = [v43 arraySize];
          *buf = 134217984;
          *&buf[4] = v89;
          _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }
      }
    }

    v62 = [v4 property:@"pointIndices"];
    v63 = v62;
    if (v62)
    {
      v64 = [v62 data];
      v65 = [v64 dataNoCopy];
      v66 = [v65 length];
      v67 = [v64 arraySize];

      if (v66 == 4 * v67)
      {
        v69 = [v64 dataNoCopy];
        v27 = [v69 bytes];
        v31 = [v64 arraySize];

        if (v31)
        {
          v71 = 0;
          v2 = *(&v100 + 1);
          v72 = v101;
          while (v2 != v71)
          {
            *(v72 + 4 * v71) = *(v27 + 4 * v71);
            if (v31 == ++v71)
            {
              goto LABEL_50;
            }
          }

          v102 = 0;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v103 = 136315906;
          v104 = "operator[]";
          v105 = 1024;
          v106 = 468;
          v107 = 2048;
          v108 = v2;
          v109 = 2048;
          v110 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_79:
          re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v27);
          _os_crash();
          __break(1u);
LABEL_80:
          re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v37, v27);
          _os_crash();
          __break(1u);
LABEL_81:
          re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v27);
          _os_crash();
          __break(1u);
LABEL_82:
          v102 = 0;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v103 = 136315906;
          v104 = "operator[]";
          v105 = 1024;
          v106 = 468;
          v107 = 2048;
          v108 = v31;
          v109 = 2048;
          v110 = v31;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_83:
          re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v57, v31);
          _os_crash();
          __break(1u);
LABEL_84:
          re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v58, v31);
          _os_crash();
          __break(1u);
LABEL_85:
          re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v56, v31);
          _os_crash();
          __break(1u);
LABEL_86:
          v102 = 0;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v103 = 136315906;
          v104 = "operator[]";
          v105 = 1024;
          v106 = 468;
          v107 = 2048;
          v108 = v2;
          v109 = 2048;
          v110 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

      else
      {
        v73 = *re::pipelineLogObjects(v68);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v90 = v73;
          v91 = [v64 arraySize];
          *buf = 134217984;
          *&buf[4] = v91;
          _os_log_error_impl(&dword_1E1C61000, v90, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }
      }

LABEL_50:
    }

    v74 = [v4 path];
    v75 = [v74 stringValue];
    v76 = [v75 UTF8String];
    *buf = 0;
    *&buf[8] = &str_67;
    v77 = re::USDImportContext::addBlendShape(a2, buf, &v95);
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *buf = 0;
    *&buf[8] = &str_67;

    if (v92 && (v93 & 1) != 0)
    {
      (*(*v92 + 40))();
    }

    if (v100)
    {
      if (*(&v100 + 1))
      {
        (*(*v100 + 40))();
        *(&v100 + 1) = 0;
        v101 = 0;
      }

      *&v100 = 0;
    }

    if (*(&v98 + 1))
    {
      if (v99)
      {
        (*(**(&v98 + 1) + 40))();
        v99 = 0uLL;
      }

      *(&v98 + 1) = 0;
    }

    v78 = v97;
    if (v97)
    {
      if (*(&v97 + 1))
      {
        v78 = (*(*v97 + 40))();
        *(&v97 + 1) = 0;
        *&v98 = 0;
      }

      *&v97 = 0;
    }

    if (v95)
    {
      if (v95)
      {
      }
    }
  }

  v79 = [v4 childIterator];
  v80 = [v79 nextObject];
  if (v80)
  {
    v81 = v80;
    do
    {
      v82 = [v4 metadataWithKey:@"kind"];
      v83 = [v82 stringValue];
      v84 = [v83 isEqual:@"sceneLibrary"];

      if ((v84 & 1) == 0)
      {
        re::loadUSKBlendShapeNodes(v81, a2);
      }

      v85 = [v79 nextObject];

      v81 = v85;
    }

    while (v85);
  }
}

void re::loadUSKDeformerStackNodes(void *a1, void *a2, re::USDImportContext *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 typeName];
  v8 = [v7 stringValue];
  if ([v8 isEqualToString:@"Preliminary_DeformerStack"])
  {
  }

  else
  {
    v9 = [v6 typeName];
    v10 = [v9 stringValue];
    v11 = [v10 isEqualToString:@"DeformerStack"];

    if (!v11)
    {
      goto LABEL_44;
    }
  }

  v81 = 0;
  v82 = &str_67;
  v12 = [v6 properties];
  v13 = [v12 objectForKeyedSubscript:@"mesh"];

  if (v13)
  {
    v14 = [v6 property:@"mesh"];
    v15 = [v14 objectPath];
  }

  else
  {
    v68 = [v6 parent];
    if (!v68)
    {
      goto LABEL_7;
    }

    v69 = v68;
    v70 = [v6 parent];
    v71 = [v70 typeName];
    v72 = [v71 stringValue];
    v73 = [v72 isEqualToString:@"Mesh"];

    if (!v73)
    {
      goto LABEL_7;
    }

    v14 = [v6 parent];
    v15 = [v14 path];
  }

  v16 = v15;
  v17 = [v15 stringValue];
  v18 = [v17 UTF8String];
  v88 = 0;
  v89 = &str_67;
  v81 = v88;
  v82 = v89;
  v88 = 0;
  v89 = &str_67;

LABEL_7:
  v19 = re::USDImportContext::meshNodeItemIndex(a3, &v81, v79);
  if (v79[0] == 1)
  {
    v75 = a3;
    v20 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a3 + 624, v80);
    v74 = v6;
    v77 = [v6 childIterator];
    v21 = [v77 nextObject];
    if (v21)
    {
      v22 = v21;
      v76 = v5;
      do
      {
        v23 = v5;
        v24 = v22;
        v25 = [v24 typeName];
        v26 = [v25 stringValue];
        v78 = v24;
        if ([v26 isEqualToString:@"Preliminary_Deformer"])
        {
        }

        else
        {
          v27 = [v24 typeName];
          v28 = [v27 stringValue];
          v29 = [v28 isEqualToString:@"Deformer"];

          v24 = v78;
          if (!v29)
          {
            goto LABEL_39;
          }
        }

        v88 = 0;
        v89 = &str_67;
        v90 = 0;
        v91 = &str_67;
        memset(v92, 0, sizeof(v92));
        v93 = 0;
        v94 = 0u;
        v95 = 0u;
        v96 = 0;
        v98 = 0;
        v99 = 0;
        v97 = 0;
        v102 = 0;
        v103 = 0;
        v101 = 0;
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v100 = 1;
        v107 = 1;
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v108 = 0;
        v112 = 0;
        v113 = 0;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v115 = 0;
        v119 = 0;
        v120 = 0;
        v114 = 1;
        v121 = 1;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v122 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 1;
        v129 = 0;
        v130 = 0;
        v132 = 0;
        v131 = 0;
        v133 = 0;
        v134 = 0;
        v135 = 1;
        v136 = 0;
        v137 = 0;
        v139 = 0;
        v138 = 0;
        v30 = [v24 name];
        v31 = [v30 stringValue];
        v32 = [v31 UTF8String];
        v83 = 0;
        v84 = &str_67;
        v34 = v83;
        v35 = v84;
        v83 = 0;
        v84 = &str_67;
        v36 = v88;
        v37 = v89;
        v88 = v34;
        v89 = v35;
        if (v36)
        {
          if (v83)
          {
            if (v83)
            {
            }
          }
        }

        v83 = 0;
        v84 = &str_67;

        v39 = [v78 property:@"info:id"];
        v40 = [v39 stringValue];
        v41 = [v40 UTF8String];
        v83 = 0;
        v84 = &str_67;
        v43 = v83;
        v44 = v84;
        v83 = 0;
        v84 = &str_67;
        v45 = v90;
        v46 = v91;
        v90 = v43;
        v91 = v44;
        if (v45)
        {
          if (v83)
          {
            if (v83)
            {
            }
          }
        }

        v83 = 0;
        v84 = &str_67;

        re::loadUSKDeformerAttributes(v23, v78, &v88, v92, v20);
        v48 = [v78 childIterator];
        v49 = [v48 nextObject];
        if (v49)
        {
          while (1)
          {
            v50 = [v49 typeName];
            v51 = [v50 stringValue];
            if ([v51 isEqualToString:@"Preliminary_DeformerAffector"])
            {
              break;
            }

            v52 = [v49 typeName];
            v53 = [v52 stringValue];
            v54 = [v53 isEqualToString:@"DeformerAffector"];

            if (v54)
            {
              goto LABEL_25;
            }

LABEL_37:
            v63 = [v48 nextObject];

            v49 = v63;
            if (!v63)
            {
              goto LABEL_38;
            }
          }

LABEL_25:
          v87 = 0;
          v84 = 0;
          v85 = 0;
          v83 = 0;
          v86 = 0;
          re::loadUSKDeformerAttributes(v23, v49, &v88, &v83, v20);
          v56 = *(&v95 + 1);
          if (*(&v95 + 1) >= v95)
          {
            v57 = *(&v95 + 1) + 1;
            if (v95 < *(&v95 + 1) + 1)
            {
              if (*(&v94 + 1))
              {
                v58 = 8;
                if (v95)
                {
                  v58 = 2 * v95;
                }

                if (v58 <= v57)
                {
                  v59 = *(&v95 + 1) + 1;
                }

                else
                {
                  v59 = v58;
                }

                re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(&v94 + 1, v59);
              }

              else
              {
                re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(&v94 + 1, v57);
                ++v96;
              }
            }

            v56 = *(&v95 + 1);
          }

          v60 = v97 + 40 * v56;
          *(v60 + 32) = 0;
          *(v60 + 8) = 0;
          *(v60 + 16) = 0;
          *v60 = 0;
          *(v60 + 24) = 0;
          *v60 = v83;
          v83 = 0;
          *(v60 + 8) = v84;
          v84 = 0;
          v61 = *(v60 + 16);
          *(v60 + 16) = v85;
          v85 = v61;
          v62 = *(v60 + 32);
          *(v60 + 32) = v87;
          v87 = v62;
          ++v86;
          ++*(v60 + 24);
          ++*(&v95 + 1);
          ++v96;
          re::DynamicArray<re::GeomDeformer::Attribute>::deinit(&v83);
          goto LABEL_37;
        }

LABEL_38:
        re::DynamicArray<re::GeomDeformer>::add((v20 + 1024), &v88);

        re::GeomDeformer::~GeomDeformer(&v88);
        v5 = v76;
        v24 = v78;
LABEL_39:

        v22 = [v77 nextObject];
      }

      while (v22);
    }

    v6 = v74;
    a3 = v75;
  }

  if (v81)
  {
    if (v81)
    {
    }
  }

LABEL_44:
  v64 = [v6 childIterator];
  v65 = [v64 nextObject];
  if (v65)
  {
    v66 = v65;
    do
    {
      re::loadUSKDeformerStackNodes(v5, v66, a3);
      v67 = [v64 nextObject];

      v66 = v67;
    }

    while (v67);
  }
}