void re::LightContextBuilder::prepare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v365 = *MEMORY[0x1E69E9840];
  MainCameraView = re::LightContextBuilder::getMainCameraView(a5, a6, a7);
  if (!MainCameraView)
  {
    return;
  }

  v10 = MainCameraView;
  v11 = 1;
  if (!*(a1 + 16))
  {
    v12 = *(a1 + 2940);
    if (v12)
    {
      v13 = a1 + 2912;
      v14 = *(a1 + 2944);
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 2928);
        while ((*v16 & 0x80000000) == 0)
        {
          v16 += 88;
          if (v14 == ++v15)
          {
            LODWORD(v15) = *(a1 + 2944);
            break;
          }
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

      v17 = a1 + 2912;
    }

    else
    {
      v13 = a1 + 96;
      v14 = *(a1 + 80);
      LODWORD(v15) = 352;
      v17 = a1 + 96 + 352 * v14;
    }

    v11 = 0;
    while (1)
    {
LABEL_13:
      if (v12)
      {
        if (v14 == v15)
        {
          goto LABEL_30;
        }

        v18 = (*(v13 + 16) + 352 * v15 + 8);
      }

      else
      {
        if (v13 == v17)
        {
          goto LABEL_30;
        }

        v18 = (v13 + 8);
      }

      if (v18[12])
      {
        break;
      }

      if (v18[19])
      {
        break;
      }

      if (v18[26])
      {
        break;
      }

      if (v12)
      {
        v20 = v15 + 1;
        if (*(v13 + 32) <= (v15 + 1))
        {
          LODWORD(v15) = v15 + 1;
        }

        else
        {
          LODWORD(v15) = *(v13 + 32);
        }

        while (v15 != v20)
        {
          v21 = v20;
          v22 = *(*(v13 + 16) + 352 * v20++);
          if (v22 < 0)
          {
            LODWORD(v15) = v21;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v13 += 352;
      }
    }

    v11 = 1;
  }

LABEL_30:
  LOWORD(v340[0]) = 0;
  v278 = 0;
  v275 = 0u;
  v276 = 1u;
  v277 = 0uLL;
  v281 = 0;
  v284 = 0;
  v279 = 0u;
  v280 = 1;
  v282 = 0;
  v283 = 0;
  v285 = 0;
  v287 = 1;
  v286 = 0u;
  v288 = 0;
  v289 = 0;
  v290 = 0;
  v291 = 0;
  v297 = 0;
  v293 = 1;
  v292 = 0u;
  v294 = 0;
  v295 = 0;
  v296 = 0;
  v303 = 0;
  v299 = 1;
  v298 = 0u;
  v300 = 0;
  v301 = 0;
  v302 = 0;
  v305 = 1;
  v304 = 0u;
  v306 = 0;
  v307 = 0;
  v308 = 0;
  v309 = 0;
  v310 = 0;
  re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(a1 + 64, v340, &v275);
  re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v304);
  if (v304)
  {
    v23 = v305;
    if ((v305 & 1) == 0)
    {
      (*(*v304 + 40))(v304, v307);
      v23 = v305;
    }

    v304 = 0uLL;
    LODWORD(v305) = (v23 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v298);
  if (v298)
  {
    v24 = v299;
    if ((v299 & 1) == 0)
    {
      (*(*v298 + 40))(v298, v301);
      v24 = v299;
    }

    v298 = 0uLL;
    LODWORD(v299) = (v24 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v292);
  if (v292)
  {
    v25 = v293;
    if ((v293 & 1) == 0)
    {
      (*(*v292 + 40))(v292, v295);
      v25 = v293;
    }

    v292 = 0uLL;
    LODWORD(v293) = (v25 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v286);
  if (v286)
  {
    v26 = v287;
    if ((v287 & 1) == 0)
    {
      (*(*v286 + 40))();
      v26 = v287;
    }

    v286 = 0uLL;
    LODWORD(v287) = (v26 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v279);
  if (v279)
  {
    v27 = v280;
    if ((v280 & 1) == 0)
    {
      (*(*v279 + 40))();
      v27 = v280;
    }

    v279 = 0uLL;
    v280 = (v27 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v275);
  if (v275 && (v276 & 1) == 0)
  {
    (*(*v275 + 40))();
  }

  v30 = 0;
  m = v340;
  v32 = v323;
  do
  {
    f32 = v315[v30].f32;
    *f32 = 0;
    *(f32 + 1) = 0;
    *(f32 + 16) = 0;
    v30 += 2;
  }

  while (v30 != 16);
  *&v275 = a2;
  DWORD2(v275) = 0;
  *&v276 = 0;
  DWORD2(v276) = 0;
  v311 = 0u;
  v312 = 0u;
  v313 = 0;
  v314 = 0x7FFFFFFFLL;
  v261 = a1;
  v250 = v10;
  if (v11)
  {
    v34 = *(a1 + 2940);
    if (!v34)
    {
      v34 = *(a1 + 80);
    }

    memset(v360, 0, 24);
    re::FixedArray<unsigned short>::init<>(v360, a2, v34);
    v38 = *(a1 + 2940);
    if (v38)
    {
      v39 = a1 + 2912;
      v40 = *(a1 + 2944);
      if (v40)
      {
        v41 = 0;
        v42 = *(a1 + 2928);
        do
        {
          if ((*v42 & 0x80000000) != 0)
          {
            goto LABEL_66;
          }

          v42 += 88;
          ++v41;
        }

        while (v40 != v41);
        LODWORD(v41) = *(a1 + 2944);
      }

      else
      {
        LODWORD(v41) = 0;
      }

LABEL_66:
      v43 = a1 + 2912;
    }

    else
    {
      v39 = a1 + 96;
      v40 = *(a1 + 80);
      LODWORD(v41) = 352;
      v43 = a1 + 96 + 352 * v40;
    }

    v44 = 0;
    v45 = *&v360[8];
    v46 = *&v360[16];
    if (!v38)
    {
      goto LABEL_76;
    }

    while (v40 != v41)
    {
      if (v44 == v45)
      {
        goto LABEL_378;
      }

      v47 = *(v39 + 16);
      v46[v44] = *(v47 + 352 * v41 + 4);
      v48 = v41 + 1;
      if (*(v39 + 32) <= (v41 + 1))
      {
        LODWORD(v41) = v41 + 1;
      }

      else
      {
        LODWORD(v41) = *(v39 + 32);
      }

      do
      {
        if (v41 == v48)
        {
          goto LABEL_79;
        }

        v49 = v48;
        v35 = *(v47 + 352 * v48++);
      }

      while ((v35 & 0x80000000) == 0);
      LODWORD(v41) = v49;
LABEL_79:
      while (1)
      {
        ++v44;
        if (v38)
        {
          break;
        }

LABEL_76:
        if (v39 == v43)
        {
          goto LABEL_81;
        }

        if (v44 == v45)
        {
          goto LABEL_378;
        }

        v46[v44] = *v39;
        v39 += 352;
      }
    }

LABEL_81:
    *&v340[0] = 0;
    DWORD2(v340[0]) = 0;
    *&v340[1] = 0;
    DWORD2(v340[1]) = 0;
    v50 = v340;
    v355 = 0u;
    v356 = 0u;
    v357 = 0;
    v358 = 0x7FFFFFFFLL;
    if (v45)
    {
      v51 = &v46[v45];
      v52.i64[0] = 0x7F0000007FLL;
      v52.i64[1] = 0x7F0000007FLL;
      v268 = vnegq_f32(v52);
      do
      {
        if (!HIDWORD(v356))
        {
          if (!*&v340[1])
          {
            LOWORD(v58) = *v46;
LABEL_113:
            v71 = &v341 + 3 * *&v340[1];
            *v71 = v58;
            *(v71 + 2) = v324.i64[0];
            *(v71 + 1) = *(v324.i64 + 6);
            *&v72 = 0x7F0000007FLL;
            *(&v72 + 1) = 0x7F0000007FLL;
            v71[1] = v268;
            v71[2] = v72;
            v73 = *&v340[1];
            ++DWORD2(v340[1]);
            ++*&v340[1];
            if (v73 == -1)
            {
              goto LABEL_381;
            }

            goto LABEL_114;
          }

          v57 = 48 * *&v340[1];
          v58 = *v46;
          v59 = 2;
          v60 = 48 * *&v340[1];
          do
          {
            if (LOWORD(v340[v59]) == v58)
            {
              goto LABEL_114;
            }

            v59 += 3;
            v60 -= 48;
          }

          while (v60);
          if ((v340[1] & 0xFFFFFFF8) == 0)
          {
            if (*&v340[1] >= 8uLL)
            {
              re::internal::assertLog(4, v36, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
              _os_crash();
              __break(1u);
              return;
            }

            goto LABEL_113;
          }

          if (v355)
          {
            goto LABEL_99;
          }

          v61 = *&v340[0];
          if (!*&v340[0])
          {
          }

          re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(&v355, v61, 16);
          if (*&v340[1])
          {
            v57 = 48 * *&v340[1];
LABEL_99:
            v62 = (&v341 + v57);
            v63 = &v341;
            while (2)
            {
              v64 = *v63;
              v65 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v64) ^ ((0xBF58476D1CE4E5B9 * v64) >> 27));
              v66 = v65 ^ (v65 >> 31);
              if (v355)
              {
                v67 = v66 % DWORD2(v356);
                v68 = *(*(&v355 + 1) + 4 * v67);
                if (v68 != 0x7FFFFFFF)
                {
                  while (*(v356 + 48 * v68 + 4) != v64)
                  {
                    LODWORD(v68) = *(v356 + 48 * v68) & 0x7FFFFFFF;
                    if (v68 == 0x7FFFFFFF)
                    {
                      goto LABEL_106;
                    }
                  }

LABEL_107:
                  v63 += 3;
                  if (v63 == v62)
                  {
                    goto LABEL_108;
                  }

                  continue;
                }
              }

              else
              {
                LODWORD(v67) = 0;
              }

              break;
            }

LABEL_106:
            v35 = re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(&v355, v67, v66);
            *(v35 + 4) = *v63;
            v69 = v63[2];
            *(v35 + 16) = v63[1];
            *(v35 + 32) = v69;
            ++HIDWORD(v358);
            goto LABEL_107;
          }

LABEL_108:
          *&v340[1] = 0;
          ++DWORD2(v340[1]);
        }

        v53 = *v46;
        v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v53) ^ ((0xBF58476D1CE4E5B9 * v53) >> 27));
        v55 = v54 ^ (v54 >> 31);
        if (v355)
        {
          v36 = v55 % DWORD2(v356);
          v56 = *(*(&v355 + 1) + 4 * v36);
          if (v56 != 0x7FFFFFFF)
          {
            while (*(v356 + 48 * v56 + 4) != v53)
            {
              LODWORD(v56) = *(v356 + 48 * v56) & 0x7FFFFFFF;
              if (v56 == 0x7FFFFFFF)
              {
                goto LABEL_110;
              }
            }

            goto LABEL_114;
          }
        }

        else
        {
          LODWORD(v36) = 0;
        }

LABEL_110:
        v35 = re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(&v355, v36, v55);
        *(v35 + 4) = *v46;
        *&v70 = 0x7F0000007FLL;
        *(&v70 + 1) = 0x7F0000007FLL;
        *(v35 + 16) = v268;
        *(v35 + 32) = v70;
        ++HIDWORD(v358);
LABEL_114:
        ++v46;
      }

      while (v46 != v51);
    }

    v74 = *(a3 + 40);
    if (!v74)
    {
      v76.i64[0] = 0x7F0000007FLL;
      v76.i64[1] = 0x7F0000007FLL;
      v77 = vnegq_f32(v76);
LABEL_143:
      v94 = vcgtq_f32(v77, v76);
      v94.i32[3] = v94.i32[2];
      if ((vmaxvq_u32(v94) & 0x80000000) != 0)
      {
        v100 = 0;
        v338 = 0u;
        v339 = 0u;
        v336 = 0u;
        v337 = 0u;
        v334 = 0u;
        v335 = 0u;
        v332 = 0u;
        v333 = 0u;
        v330 = 0u;
        v331 = 0u;
        v328 = 0u;
        v329 = 0u;
        v326 = 0u;
        v327 = 0u;
        v324 = 0u;
        v325 = 0u;
        do
        {
          v101 = &v324 + v100;
          v100 += 32;
          *v101 = 0;
          *(v101 + 1) = 0;
          v101[16] = 0;
        }

        while (v100 != 256);
      }

      else
      {
        for (i = 0; i != 256; i += 32)
        {
          v96 = &v324 + i;
          *v96 = 0;
          *(v96 + 1) = 0;
          v96[16] = 0;
        }

        v97 = 0;
        v98 = &v325;
        do
        {
          *&v37 = vbsl_s8(vceqz_s32(vand_s8(vdup_n_s32(v97), 0x200000001)), *v77.f32, *v76.f32);
          if (v97 >= 4)
          {
            v99 = v76.f32[2];
          }

          else
          {
            v99 = v77.f32[2];
          }

          *(&v37 + 2) = v99;
          *(v98 - 1) = v37;
          *v98 = 0;
          v98 += 2;
          ++v97;
        }

        while (v97 != 8);
      }

      v315[12] = v336;
      v315[13] = v337;
      v315[14] = v338;
      v315[15] = v339;
      v315[8] = v332;
      v315[9] = v333;
      v315[10] = v334;
      v315[11] = v335;
      v315[4] = v328;
      v315[5] = v329;
      v315[6] = v330;
      v315[7] = v331;
      v315[0] = v324;
      v315[1] = v325;
      v315[2] = v326;
      v315[3] = v327;
      v102 = HIDWORD(v356);
      if (!HIDWORD(v356))
      {
        v105 = &v341;
        v263 = &v341 + 3 * *&v340[1];
        v271 = v263;
        goto LABEL_164;
      }

      v271 = v357;
      v50 = 0;
      if (v357)
      {
        v103 = v356;
        do
        {
          v104 = *v103;
          v103 += 12;
          if (v104 < 0)
          {
            goto LABEL_162;
          }

          v50 = (v50 + 1);
        }

        while (v357 != v50);
        v105 = &v355;
        LODWORD(v50) = v357;
      }

      else
      {
        v271 = 0;
LABEL_162:
        v105 = &v355;
      }

      v263 = &v355;
      while (1)
      {
LABEL_164:
        if (v102)
        {
          if (v271 == v50)
          {
            goto LABEL_194;
          }

          v106 = *(v105 + 2) + 48 * v50;
          v107 = (v106 + 4);
          v108 = (v106 + 16);
        }

        else
        {
          if (v105 == v263)
          {
LABEL_194:
            *&v340[1] = 0;
            ++DWORD2(v340[1]);
            m = &v355;
            re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(&v355);
            *&v340[0] = 0;
            DWORD2(v340[0]) = 0;
            v124 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(&v355);
            if (*v360 && *&v360[8])
            {
              (*(**v360 + 40))(v124);
            }

            a1 = v261;
            v10 = v250;
            goto LABEL_198;
          }

          v108 = (v105 + 1);
          v107 = v105;
        }

        v362[0].i16[0] = *v107;
        v109 = *v108;
        v110 = v108[1];
        v111 = vcgtq_f32(*v108, v110);
        v111.i32[3] = v111.i32[2];
        if ((vmaxvq_u32(v111) & 0x80000000) != 0)
        {
          v119 = 0;
          v338 = 0u;
          v339 = 0u;
          v336 = 0u;
          v337 = 0u;
          v334 = 0u;
          v335 = 0u;
          v332 = 0u;
          v333 = 0u;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v326 = 0u;
          v327 = 0u;
          v324 = 0u;
          v325 = 0u;
          do
          {
            v120 = &v324 + v119;
            v119 += 32;
            *v120 = 0;
            *(v120 + 1) = 0;
            v120[16] = 0;
          }

          while (v119 != 256);
        }

        else
        {
          for (j = 0; j != 256; j += 32)
          {
            v113 = &v324 + j;
            *v113 = 0;
            *(v113 + 1) = 0;
            v113[16] = 0;
          }

          v114 = 0;
          v115 = &v325;
          do
          {
            if (v114)
            {
              *v111.i32 = v110.f32[0];
            }

            else
            {
              *v111.i32 = v109.f32[0];
            }

            if ((v114 & 2) != 0)
            {
              v116 = 20;
            }

            else
            {
              v116 = 4;
            }

            v117 = (v108 + v116);
            if (v114 >= 4)
            {
              v118 = 6;
            }

            else
            {
              v118 = 2;
            }

            v111.i32[1] = *v117;
            v111.i32[2] = v108->i32[v118];
            v115[-1] = v111;
            v115->i8[0] = 0;
            v115 += 2;
            ++v114;
          }

          while (v114 != 8);
        }

        re::SmallHashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,8ul,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false>::add(&v275, v362, &v324);
        if (v102)
        {
          v121 = v50 + 1;
          if (*(v105 + 8) <= (v50 + 1))
          {
            LODWORD(v50) = v50 + 1;
          }

          else
          {
            LODWORD(v50) = *(v105 + 8);
          }

          while (v50 != v121)
          {
            v122 = v121;
            v123 = *(*(v105 + 2) + 48 * v121++);
            if (v123 < 0)
            {
              LODWORD(v50) = v122;
              goto LABEL_164;
            }
          }
        }

        else
        {
          v105 += 3;
        }
      }
    }

    v75 = 0;
    v76.i64[0] = 0x7F0000007FLL;
    v76.i64[1] = 0x7F0000007FLL;
    v77 = vnegq_f32(v76);
    LODWORD(v50) = 736;
    while (1)
    {
      v265 = v77;
      v269 = v76;
      v78 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](a3, v75);
      v80 = *(v78 + 16);
      if (v80)
      {
        break;
      }

      v77 = v265;
      v76 = v269;
LABEL_140:
      if (++v75 == v74)
      {
        goto LABEL_143;
      }
    }

    v81 = *(v78 + 32);
    v82 = &v81[46 * v80];
    v77 = v265;
    v76 = v269;
    while (1)
    {
      if ((v81[43].i8[1] & 1) == 0 && v81[44].i8[11] != 1)
      {
        goto LABEL_137;
      }

      v266 = v77;
      v270 = v76;
      re::MeshScene::meshSceneBoundingBox(v81, v79, &v324);
      re::AABB::transform(&v324, v81 + 8, v362);
      v77 = v266;
      v76 = v270;
      if (v81[43].i8[1] == 1)
      {
        v77.i32[3] = 0;
        v83 = v362[0];
        v84 = v362[1];
        v83.i32[3] = 0;
        v77 = vminnmq_f32(v77, v83);
        v76.i32[3] = 0;
        v84.i32[3] = 0;
        v76 = vmaxnmq_f32(v76, v84);
      }

      if (v81[44].i8[11] != 1)
      {
        goto LABEL_137;
      }

      v85 = v81[32].u16[4];
      if (HIDWORD(v356))
      {
        break;
      }

      if (*&v340[1])
      {
        v88 = 48 * *&v340[1];
        v89 = &v342;
        while (v89[-1].u16[0] != v85)
        {
          v89 += 3;
          v88 -= 48;
          if (!v88)
          {
            goto LABEL_137;
          }
        }

LABEL_136:
        v90 = *v89;
        v91 = v89[1];
        v90.i32[3] = 0;
        v92 = v362[0];
        v92.i32[3] = 0;
        *v89 = vminnmq_f32(v90, v92);
        v93 = v362[1];
        v91.i32[3] = 0;
        v93.i32[3] = 0;
        v89[1] = vmaxnmq_f32(v91, v93);
      }

LABEL_137:
      v81 += 46;
      if (v81 == v82)
      {
        goto LABEL_140;
      }
    }

    if (!v355)
    {
      goto LABEL_137;
    }

    v86 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v85) ^ ((0xBF58476D1CE4E5B9 * v85) >> 27));
    v87 = *(*(&v355 + 1) + 4 * ((v86 ^ (v86 >> 31)) % DWORD2(v356)));
    if (v87 == 0x7FFFFFFF)
    {
      goto LABEL_137;
    }

    while (*(v356 + 48 * v87 + 4) != v85)
    {
      LODWORD(v87) = *(v356 + 48 * v87) & 0x7FFFFFFF;
      if (v87 == 0x7FFFFFFF)
      {
        goto LABEL_137;
      }
    }

    v89 = (v356 + 48 * v87 + 16);
    goto LABEL_136;
  }

LABEL_198:
  v125 = *(a1 + 2940);
  if (v125)
  {
    v126 = a1 + 2912;
    v28 = *(a1 + 2944);
    if (v28)
    {
      v29 = 0;
      v127 = *(a1 + 2928);
      while ((*v127 & 0x80000000) == 0)
      {
        v127 += 88;
        if (v28 == ++v29)
        {
          v29 = *(a1 + 2944);
          break;
        }
      }
    }

    else
    {
      v29 = 0;
    }

    v249 = a1 + 2912;
  }

  else
  {
    v126 = a1 + 96;
    v249 = a1 + 96 + 352 * *(a1 + 80);
  }

  v262 = (v340 | 0xC);
  v264 = (&v324 | 0xC);
  v252 = v28;
  v248 = *(a1 + 2940);
  while (1)
  {
LABEL_208:
    v253 = v29;
    if (v125)
    {
      if (v28 == v29)
      {
        goto LABEL_365;
      }

      v128 = *(v126 + 16) + 352 * v29;
      v129 = (v128 + 4);
      v259 = (v128 + 8);
    }

    else
    {
      if (v126 == v249)
      {
        goto LABEL_365;
      }

      v259 = (v126 + 8);
      v129 = v126;
    }

    v274 = *v129;
    if (*(a1 + 16))
    {
      v130 = re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::addUninitialized((v259 + 7));
      m = v130;
      *(v130 + 32) = 0;
      *(v130 + 8) = 0;
      *(v130 + 16) = 0;
      *v130 = 0;
      *(v130 + 24) = 0;
      if (*a1)
      {
        v131 = *(a1 + 16);
        *v130 = *a1;
        re::DynamicArray<re::DirectionalLightInfo>::setCapacity(v130, v131);
        ++*(m + 6);
        re::DynamicArray<re::DirectionalLightInfo>::copy(m, a1);
      }

      *(m + 5) = 0;
      *(m + 6) = 0;
      *(m + 7) = 0;
      v132 = *(a1 + 40);
      if (v132)
      {
        re::FixedArray<re::FixedArray<re::LightContextBuilder::ShadowTileInfo>>::init<>(m + 5, v132, *(a1 + 48));
        v134 = *(a1 + 48);
        if (*(m + 6) != v134)
        {
          goto LABEL_380;
        }

        if (v134)
        {
          v135 = *(a1 + 56);
          m = *(m + 7);
          for (k = 24 * v134; k; k -= 24)
          {
            if (v135 != m)
            {
              v137 = *v135;
              if (*m)
              {
                if (v137)
                {
                  goto LABEL_226;
                }
              }

              else if (v137)
              {
                re::FixedArray<re::LightContextBuilder::ShadowTileInfo>::init<>(m, v137, *(v135 + 8));
LABEL_226:
                v138 = *(v135 + 8);
                if (*(m + 1) != v138)
                {
                  goto LABEL_379;
                }

                if (v138)
                {
                  memmove(*(m + 2), *(v135 + 16), 96 * v138 - 8);
                }
              }
            }

            v135 += 24;
            m = (m + 24);
          }
        }
      }
    }

    if (HIDWORD(v312))
    {
      v32 = v323;
      if (!v311 || (v139 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v274) ^ ((0xBF58476D1CE4E5B9 * v274) >> 27)), v140 = *(*(&v311 + 1) + 4 * ((v139 ^ (v139 >> 31)) % DWORD2(v312))), v140 == 0x7FFFFFFF))
      {
LABEL_235:
        v141 = 0;
        v353 = 0u;
        v354 = 0u;
        v351 = 0u;
        v352 = 0u;
        v349 = 0u;
        v350 = 0u;
        v347 = 0u;
        v348 = 0u;
        v345 = 0u;
        v346 = 0u;
        v343 = 0u;
        v344 = 0u;
        v341 = 0u;
        v342 = 0u;
        memset(v340, 0, sizeof(v340));
        do
        {
          v142 = &v340[v141];
          *v142 = 0;
          *(v142 + 1) = 0;
          *(v142 + 16) = 0;
          v141 += 2;
        }

        while (v141 != 16);
        v143 = re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::add(&v311, &v274, v340);
      }

      else
      {
        while (*(v312 + 272 * v140 + 4) != v274)
        {
          LODWORD(v140) = *(v312 + 272 * v140) & 0x7FFFFFFF;
          if (v140 == 0x7FFFFFFF)
          {
            goto LABEL_235;
          }
        }

        v143 = (v312 + 272 * v140 + 16);
      }

      v144 = v259;
    }

    else
    {
      v32 = v323;
      v144 = v259;
      if (v276)
      {
        v145 = 272 * v276;
        v143 = &v278;
        while (v143[-1].u16[0] != v274)
        {
          v143 += 17;
          v145 -= 272;
          if (!v145)
          {
            goto LABEL_242;
          }
        }
      }

      else
      {
LABEL_242:
        v146 = 0;
        v353 = 0u;
        v354 = 0u;
        v351 = 0u;
        v352 = 0u;
        v349 = 0u;
        v350 = 0u;
        v347 = 0u;
        v348 = 0u;
        v345 = 0u;
        v346 = 0u;
        v343 = 0u;
        v344 = 0u;
        v341 = 0u;
        v342 = 0u;
        memset(v340, 0, sizeof(v340));
        do
        {
          v147 = &v340[v146];
          *v147 = 0;
          *(v147 + 1) = 0;
          *(v147 + 16) = 0;
          v146 += 2;
        }

        while (v146 != 16);
        v143 = re::SmallHashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,8ul,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false>::add(&v275, &v274, v340);
      }
    }

    v267 = v143;
    if (v144[12] | v144[19])
    {
      break;
    }

LABEL_341:
    v228 = v144[26];
    if (v228)
    {
      for (m = 0; m != v228; m = (m + 1))
      {
        v229 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[]((v144 + 21), m);
        v231 = *(v229 + 16);
        if (v231)
        {
          v232 = *(v229 + 32) + 116;
          v233 = 240 * v231;
          do
          {
            if (*(v232 + 108) == 1)
            {
              v230.i64[0] = *(v232 - 52);
              v230.i32[2] = *(v232 - 44);
              v234 = vmulq_f32(v230, v230);
              *&v235 = v234.f32[2] + vaddv_f32(*v234.f32);
              *v234.f32 = vrsqrte_f32(v235);
              *v234.f32 = vmul_f32(*v234.f32, vrsqrts_f32(v235, vmul_f32(*v234.f32, *v234.f32)));
              v236 = vmulq_n_f32(vnegq_f32(v230), vmul_f32(*v234.f32, vrsqrts_f32(v235, vmul_f32(*v234.f32, *v234.f32))).f32[0]);
              v237.i64[0] = 0x3F0000003F000000;
              v237.i64[1] = 0x3F0000003F000000;
              v238 = vmulq_f32(vsubq_f32(vmulq_f32(vaddq_f32(*v267, v267[14]), v237), *(v232 - 36)), v236);
              v239 = v238.f32[2] + vaddv_f32(*v238.f32);
              v240 = tan(*(v232 + 92) * 0.5);
              v230.f32[0] = fabsf(v239);
              if (*v232 >= v230.f32[0])
              {
                v230.i32[0] = *v232;
              }

              v241 = 1.0 / ((((v230.f32[0] * v240) + ((((v230.f32[0] * v240) + (v230.f32[0] * v240)) / 506.0) * 3.0)) * v240) / (v230.f32[0] * v240));
              *(v232 + 32) = v241;
              *(v232 + 12) = v241;
            }

            v232 += 240;
            v233 -= 240;
          }

          while (v233);
        }

        v144 = v259;
      }
    }

    if (v125)
    {
      v242 = *(v126 + 32);
      LODWORD(v28) = v252;
      v243 = v253 + 1;
      if (v242 <= v253 + 1)
      {
        v29 = (v253 + 1);
      }

      else
      {
        v29 = v242;
      }

      while (v29 != v243)
      {
        v244 = v243;
        v245 = *(*(v126 + 16) + 352 * v243++);
        if (v245 < 0)
        {
          v29 = v244;
          goto LABEL_208;
        }
      }
    }

    else
    {
      v126 += 352;
      LODWORD(v28) = v252;
      v29 = v253;
    }
  }

  v148 = *(v10 + 112);
  v326 = *(v10 + 96);
  v327 = v148;
  v328.i16[0] = *(v10 + 128);
  v149 = *(v10 + 80);
  v324 = *(v10 + 64);
  v325 = v149;
  v329.i8[0] = *(v10 + 144);
  if (v329.u8[0] == 1)
  {
    v150 = *(v10 + 176);
    v330 = *(v10 + 160);
    v331 = v150;
    v151 = *(v10 + 208);
    v332 = *(v10 + 192);
    v333 = v151;
  }

  v334.i8[0] = *(v10 + 224);
  if (v334.u8[0] == 1)
  {
    v152 = *(v10 + 256);
    v335 = *(v10 + 240);
    v336 = v152;
    v153 = *(v10 + 288);
    v337 = *(v10 + 272);
    v338 = v153;
  }

  re::RenderCamera::computeLocalTransform((v10 + 32), v320);
  v316 = a1;
  v317 = v320;
  v318 = v267;
  v319 = v315;
  v154 = v340;
  if ((atomic_load_explicit(&qword_1EE1C0980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0980))
  {
    re::Defaults::BOOLValue("clipLightFrustumToSceneBounds", v246, v340);
    if (LOBYTE(v340[0]))
    {
      v247 = BYTE1(v340[0]);
    }

    else
    {
      v247 = 0;
    }

    byte_1EE1C0963 = v247;
    __cxa_guard_release(&qword_1EE1C0980);
  }

  if (byte_1EE1C0963 == 1)
  {
    v155 = vmulq_f32(*v267, *v267);
    v156 = fabsf(v155.f32[2] + vaddv_f32(*v155.f32)) < 1.0e-10;
    v157 = *&v324.i32[1];
    if (!v156)
    {
      v158 = 0;
      v159 = vmulq_f32(v321, v321);
      *&v160 = v159.f32[2] + vaddv_f32(*v159.f32);
      v157 = vrsqrte_f32(v160);
      v161 = vmul_f32(v157, vrsqrts_f32(v160, vmul_f32(v157, v157)));
      v162 = vrsqrts_f32(v160, vmul_f32(v161, v161));
      v163 = -INFINITY;
      v157.i32[0] = 2139095040;
      v164 = vmulq_n_f32(vnegq_f32(v321), vmul_f32(v161, v162).f32[0]);
      do
      {
        v165 = vmulq_f32(vsubq_f32(v267[v158], v322), v164);
        v166 = vaddv_f32(*v165.f32);
        if (v157.f32[0] > (v165.f32[2] + v166))
        {
          v157.f32[0] = v165.f32[2] + v166;
        }

        if (v163 < (v165.f32[2] + v166))
        {
          v163 = v165.f32[2] + v166;
        }

        v158 += 2;
      }

      while (v158 != 16);
      v157.f32[1] = v163;
    }

    if (vcgt_f32(*&v324.i32[1], v157).u8[0])
    {
      v167 = v324.f32[1];
    }

    else
    {
      v167 = v157.f32[0];
    }

    if (v157.f32[1] <= v324.f32[2])
    {
      v168 = v157.f32[1];
    }

    else
    {
      v168 = v324.f32[2];
    }

    if (v324.i32[0])
    {
      v324.f32[1] = v167;
    }

    else
    {
      v169 = atan2f((v325.f32[0] - v324.f32[3]) * 0.5, v324.f32[1]);
      v324.f32[1] = v167;
      re::Projection::setFovX(&v324, v169 + v169);
    }

    v324.f32[2] = v168;
    re::Projection::cullingProjectionMatrix(&v324, v340);
    if ((v329.i8[0] & 1) == 0)
    {
      v329.i8[0] = 1;
    }

    v330 = v340[0];
    v331 = v340[1];
    v332 = v341;
    v333 = v342;
    if ((v334.i8[0] & 1) == 0)
    {
      re::Projection::decompose(&v324, v340);
    }
  }

  v251 = v126;
  v254 = v144[12];
  if (v254)
  {
    v170 = 0;
    do
    {
      v255 = v170;
      v171 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v144 + 7), v170);
      if (v171[2])
      {
        v172 = v171;
        v45 = 0;
        v272 = v317;
        v257 = v319;
        do
        {
          v173 = (v172[4] + 160 * v45);
          if (v173[8].i8[6] == 1)
          {
            if (v173[8].i8[8])
            {
              v174 = v324.i64[0];
              v175 = v324.f32[2];
              v176 = *((&v324 | 0xC) + 0x10);
              v361.columns[0] = *v264;
              v361.columns[1] = v176;
              v361.columns[2] = *((&v324 | 0xC) + 0x20);
              *(&v361.columns[2].i64[1] + 6) = *((&v324 | 0xC) + 0x2E);
              v10 = v329.u8[0];
              if (v329.u8[0] == 1)
              {
                *(v362 + 15) = v330;
                *(&v362[1] + 15) = v331;
                *(&v362[2] + 15) = v332;
                *(&v362[3] + 15) = v333;
              }

              v154 = v334.u8[0];
              if (v334.u8[0] == 1)
              {
                *&v360[15] = v335;
                *&v360[31] = v336;
                *&v360[47] = v337;
                *&v360[63] = v338;
              }

              if (v324.f32[2] > v173[7].f32[3])
              {
                v175 = v173[7].f32[3];
              }

              if (byte_1EE1C0963)
              {
                v177 = v175;
              }

              else
              {
                v177 = v173[7].f32[3];
              }

              if (v173[8].i8[7] == 1)
              {
                m = v172[6];
                if (m <= v45)
                {
                  goto LABEL_372;
                }

                v32 = (v172[7] + 24 * v45);
                v178 = re::TextureAtlas::requestTile(*(a1 + 2960), 1024, 1024, 0.0);
                if (!*(v32 + 1))
                {
                  goto LABEL_374;
                }

                *(*(v32 + 2) + 80) = v178;
                if (!*(v32 + 1))
                {
                  goto LABEL_375;
                }

                m = *(v32 + 2);
                v179 = v316;
                *&v340[0] = v174;
                *(v340 + 2) = v177;
                v180 = v361.columns[1];
                *v262 = v361.columns[0];
                *((v340 | 0xC) + 0x10) = v180;
                *((v340 | 0xC) + 0x20) = v361.columns[2];
                *((v340 | 0xC) + 0x2E) = *(&v361.columns[2].i64[1] + 6);
                LOBYTE(v344) = v10;
                if (v10)
                {
                  v345 = *(v362 + 15);
                  v346 = *(&v362[1] + 15);
                  v347 = *(&v362[2] + 15);
                  v348 = *(&v362[3] + 15);
                }

                LOBYTE(v349) = v154;
                if (v154)
                {
                  v350 = *&v360[15];
                  v351 = *&v360[31];
                  v352 = *&v360[47];
                  v353 = *&v360[63];
                }

                re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(&v364, v340, v272, v257, v173 + 2, 1, *(v179 + 3008), 1);
                *v323 = v364.columns[0];
                *&v323[12] = *(v364.columns + 12);
                memset(&v364, 0, sizeof(v364));
                if (*(v179 + 3008) == 1)
                {
                  re::LightContextBuilder::computeProjectionForGlobalDirectionalLight(&v364, v257, v323, m);
                }

                else
                {
                  LODWORD(v195) = 0;
                  *(&v195 + 1) = 2.0 / (*&v323[16] + *&v323[16]);
                  v196.i64[0] = 0;
                  v196.i32[3] = 0;
                  v196.f32[2] = 1.0 / (*&v323[24] - *&v323[20]);
                  v197.i64[0] = 0;
                  v197.i64[1] = __PAIR64__(1.0, *&v323[24] / (*&v323[24] - *&v323[20]));
                  v364.columns[0] = HIDWORD(v195);
                  v364.columns[1] = v195;
                  v364.columns[2] = v196;
                  v364.columns[3] = v197;
                  *m = *v323;
                }

                a1 = v261;
                v154 = v340;
                v363 = *v173[2].i8;
                v198 = *m;
                v198.i32[3] = v363.columns[3].i32[3];
                v363.columns[3] = v198;
                re::LightContextBuilder::snapDirectionalLightProjectionToTexel(&v364, &v363);
                v359 = v364;
                if (!*(v32 + 1))
                {
                  goto LABEL_376;
                }

                v199 = *(v32 + 2);
                v200 = v359.columns[1];
                v199[1] = v359.columns[0];
                v199[2] = v200;
                v201 = v359.columns[3];
                v199[3] = v359.columns[2];
                v199[4] = v201;
              }

              else
              {
                v186 = (*(*a2 + 32))(a2, 240, 16);
                if (!v186)
                {
                  goto LABEL_371;
                }

                v32 = v186;
                *(v186 + 80) = 0;
                *(v186 + 160) = 0;
                *v186 = v174;
                *(v186 + 8) = v177;
                *(v186 + 12) = v361.columns[0];
                *(v186 + 28) = v361.columns[1];
                *(v186 + 44) = v361.columns[2];
                *(v186 + 58) = *(&v361.columns[2].i64[1] + 6);
                if (v10)
                {
                  *(v186 + 80) = 1;
                  v188 = *(&v362[1] + 15);
                  *(v186 + 96) = *(v362 + 15);
                  *(v186 + 112) = v188;
                  v189 = *(&v362[3] + 15);
                  *(v186 + 128) = *(&v362[2] + 15);
                  *(v186 + 144) = v189;
                }

                if (v154)
                {
                  *(v186 + 160) = 1;
                  v190 = *&v360[31];
                  *(v186 + 176) = *&v360[15];
                  *(v186 + 192) = v190;
                  v191 = *&v360[63];
                  *(v186 + 208) = *&v360[47];
                  *(v186 + 224) = v191;
                }

                m = v172[6];
                if (m <= v45)
                {
                  goto LABEL_373;
                }

                m = (v172[7] + 24 * v45);
                v192 = *(m + 1);
                v154 = v340;
                if (v192)
                {
                  v10 = 0;
                  m = *(m + 2);
                  v193 = 96 * v192;
                  v194 = 1;
                  do
                  {
                    *(m + 10) = re::TextureAtlas::requestTile(*(v261 + 2960), 1024, 1024, 0.0);
                    if ((v194 & 1) == 0)
                    {
                      goto LABEL_377;
                    }

                    re::LightContextBuilder::computeDirectionalLightProjections(re::PerFrameAllocator *,re::CameraView const&,re::LightContextBuilder::LightArrays &,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul> const&,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>&)const::$_0::operator()<re::DirectionalLightInfo>(v340, &v316, v173, v173[8].u8[7], m, &v32[240 * v10]);
                    v194 = 0;
                    m[1] = v340[0];
                    m[2] = v340[1];
                    m[3] = v341;
                    m[4] = v342;
                    m += 6;
                    v10 = 1;
                    v193 -= 96;
                  }

                  while (v193);
                }

                v171 = (*(*a2 + 40))(a2, v32);
                a1 = v261;
              }

              v32 = v323;
            }

            else
            {
              v181 = v172[6];
              if (v181 <= v45)
              {
                *v360 = 0;
                v342 = 0u;
                v343 = 0u;
                v341 = 0u;
                memset(v340, 0, sizeof(v340));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v362[0].i32[0] = 136315906;
                *(v362[0].i64 + 4) = "operator[]";
                v362[0].i16[6] = 1024;
                *(&v362[0].i32[3] + 2) = 468;
                v362[1].i16[1] = 2048;
                *(v362[1].i64 + 4) = v45;
                v362[1].i16[6] = 2048;
                *(&v362[1].i64[1] + 6) = v181;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_368:
                *v360 = 0;
                v342 = 0u;
                v343 = 0u;
                v341 = 0u;
                memset(v340, 0, sizeof(v340));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v362[0].i32[0] = 136315906;
                *(v362[0].i64 + 4) = "operator[]";
                v362[0].i16[6] = 1024;
                *(&v362[0].i32[3] + 2) = 468;
                v362[1].i16[1] = 2048;
                *(v362[1].i64 + 4) = 0;
                v362[1].i16[6] = 2048;
                *(&v362[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_369:
                *v360 = 0;
                v342 = 0u;
                v343 = 0u;
                v341 = 0u;
                memset(v340, 0, sizeof(v340));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v362[0].i32[0] = 136315906;
                *(v362[0].i64 + 4) = "operator[]";
                v362[0].i16[6] = 1024;
                *(&v362[0].i32[3] + 2) = 468;
                v362[1].i16[1] = 2048;
                *(v362[1].i64 + 4) = 0;
                v362[1].i16[6] = 2048;
                *(&v362[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_370:
                v364.columns[0].i64[0] = 0;
                memset(v362, 0, sizeof(v362));
                m = MEMORY[0x1E69E9C10];
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v361.columns[0].i32[0] = 136315906;
                *(v361.columns[0].i64 + 4) = "operator[]";
                v361.columns[0].i16[6] = 1024;
                *(&v361.columns[0].i32[3] + 2) = 468;
                v361.columns[1].i16[1] = 2048;
                *(v361.columns[1].i64 + 4) = 0;
                v361.columns[1].i16[6] = 2048;
                *(&v361.columns[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_371:
                re::internal::assertLog(4, v187, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                _os_crash();
                __break(1u);
LABEL_372:
                v363.columns[0].i64[0] = 0;
                v342 = 0u;
                v343 = 0u;
                v341 = 0u;
                memset(v340, 0, sizeof(v340));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v364.columns[0].i32[0] = 136315906;
                *(v364.columns[0].i64 + 4) = "operator[]";
                v364.columns[0].i16[6] = 1024;
                *(&v364.columns[0].i32[3] + 2) = 468;
                v364.columns[1].i16[1] = 2048;
                *(v364.columns[1].i64 + 4) = v45;
                v364.columns[1].i16[6] = 2048;
                *(&v364.columns[1].i64[1] + 6) = m;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_373:
                v363.columns[0].i64[0] = 0;
                v342 = 0u;
                v343 = 0u;
                v341 = 0u;
                memset(v340, 0, sizeof(v340));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v364.columns[0].i32[0] = 136315906;
                *(v364.columns[0].i64 + 4) = "operator[]";
                v364.columns[0].i16[6] = 1024;
                *(&v364.columns[0].i32[3] + 2) = 468;
                v364.columns[1].i16[1] = 2048;
                *(v364.columns[1].i64 + 4) = v45;
                v364.columns[1].i16[6] = 2048;
                *(&v364.columns[1].i64[1] + 6) = m;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_374:
                v363.columns[0].i64[0] = 0;
                v342 = 0u;
                v343 = 0u;
                v341 = 0u;
                memset(v340, 0, sizeof(v340));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v364.columns[0].i32[0] = 136315906;
                *(v364.columns[0].i64 + 4) = "operator[]";
                v364.columns[0].i16[6] = 1024;
                *(&v364.columns[0].i32[3] + 2) = 468;
                v364.columns[1].i16[1] = 2048;
                *(v364.columns[1].i64 + 4) = 0;
                v364.columns[1].i16[6] = 2048;
                *(&v364.columns[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_375:
                v363.columns[0].i64[0] = 0;
                v342 = 0u;
                v343 = 0u;
                v341 = 0u;
                memset(v340, 0, sizeof(v340));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v364.columns[0].i32[0] = 136315906;
                *(v364.columns[0].i64 + 4) = "operator[]";
                v364.columns[0].i16[6] = 1024;
                *(&v364.columns[0].i32[3] + 2) = 468;
                v364.columns[1].i16[1] = 2048;
                *(v364.columns[1].i64 + 4) = 0;
                v364.columns[1].i16[6] = 2048;
                *(&v364.columns[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_376:
                v363.columns[0].i64[0] = 0;
                *(v154 + 48) = 0u;
                *(v154 + 64) = 0u;
                *(v154 + 16) = 0u;
                *(v154 + 32) = 0u;
                *v154 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v364.columns[0].i32[0] = 136315906;
                *(v364.columns[0].i64 + 4) = "operator[]";
                v364.columns[0].i16[6] = 1024;
                *(&v364.columns[0].i32[3] + 2) = 468;
                v364.columns[1].i16[1] = 2048;
                *(v364.columns[1].i64 + 4) = 0;
                v364.columns[1].i16[6] = 2048;
                *(&v364.columns[1].i64[1] + 6) = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_377:
                v363.columns[0].i64[0] = 0;
                *(v154 + 48) = 0u;
                *(v154 + 64) = 0u;
                *(v154 + 16) = 0u;
                *(v154 + 32) = 0u;
                *v154 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v364.columns[0].i32[0] = 136315906;
                *(v364.columns[0].i64 + 4) = "operator[]";
                v364.columns[0].i16[6] = 1024;
                *(&v364.columns[0].i32[3] + 2) = 468;
                v364.columns[1].i16[1] = 2048;
                *(v364.columns[1].i64 + 4) = v10;
                v364.columns[1].i16[6] = 2048;
                *(&v364.columns[1].i64[1] + 6) = 1;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_378:
                v362[0].i64[0] = 0;
                *(v32 + 21) = 0u;
                *(v32 + 22) = 0u;
                *(v32 + 19) = 0u;
                *(v32 + 20) = 0u;
                *(v32 + 18) = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *(v32 + 8) = 136315906;
                *(v32 + 36) = "operator[]";
                v324.i16[6] = 1024;
                *(v32 + 46) = 468;
                v325.i16[1] = 2048;
                *(v32 + 52) = v45;
                v325.i16[6] = 2048;
                *(v32 + 62) = v45;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_379:
                re::internal::assertLog(4, v137, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
                _os_crash();
                __break(1u);
LABEL_380:
                re::internal::assertLog(4, v133, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
                _os_crash();
                __break(1u);
LABEL_381:
                re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v73, 0);
                _os_crash();
                __break(1u);
              }

              m = (v172[7] + 24 * v45);
              v182 = re::TextureAtlas::requestTile(*(a1 + 2960), 1024, 1024, 0.0);
              if (!*(m + 1))
              {
                goto LABEL_368;
              }

              *(*(m + 2) + 80) = v182;
              if (!*(m + 1))
              {
                goto LABEL_369;
              }

              v183 = v173[8].u8[7];
              v184 = *(m + 2);
              LODWORD(v340[0]) = 0;
              *(v340 + 4) = xmmword_1E30806D0;
              *(&v340[1] + 4) = 0xBDCCCCCD3DCCCCCDLL;
              BYTE12(v340[1]) = 0;
              v341 = xmmword_1E30476A0;
              v342.i32[0] = 1;
              v342.i64[1] = 0;
              LOWORD(v343) = 0;
              LOBYTE(v344) = 0;
              LOBYTE(v349) = 0;
              re::LightContextBuilder::computeDirectionalLightProjections(re::PerFrameAllocator *,re::CameraView const&,re::LightContextBuilder::LightArrays &,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul> const&,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>&)const::$_0::operator()<re::DirectionalLightInfo>(v360, &v316, v173, v183, v184, v340);
              if (!*(m + 1))
              {
                goto LABEL_370;
              }

              v185 = *(m + 2);
              v185[1] = *v360;
              v185[2] = *&v360[16];
              v185[3] = *&v360[32];
              v185[4] = *&v360[48];
            }
          }

          ++v45;
        }

        while (v45 < v172[2]);
      }

      v170 = v255 + 1;
      v144 = v259;
    }

    while (v255 + 1 != v254);
  }

  v256 = v144[19];
  if (!v256)
  {
LABEL_340:
    v10 = v250;
    v126 = v251;
    a1 = v261;
    v125 = v248;
    goto LABEL_341;
  }

  v202 = 0;
  v203 = v317;
  v204 = v318;
  while (1)
  {
    v258 = v202;
    v205 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[]((v144 + 14), v202);
    m = v205[2];
    if (v205[2])
    {
      break;
    }

LABEL_339:
    v202 = v258 + 1;
    v144 = v259;
    if (v258 + 1 == v256)
    {
      goto LABEL_340;
    }
  }

  v206 = 0;
  m = 0;
  v207 = 140;
  while (1)
  {
    v208 = v329.u8[0];
    if (v329.u8[0] == 1)
    {
      *(v362 + 15) = v330;
      *(&v362[1] + 15) = v331;
      *(&v362[2] + 15) = v332;
      *(&v362[3] + 15) = v333;
    }

    v209 = v334.u8[0];
    if (v334.u8[0] == 1)
    {
      *&v360[15] = v335;
      *&v360[31] = v336;
      *&v360[47] = v337;
      *&v360[63] = v338;
    }

    v210 = v205[4];
    v211 = v210 + v207;
    if (*(v210 + v207 - 6) == 1)
    {
      v212 = *(v211 - 16);
      *&v340[0] = v324.i64[0];
      DWORD2(v340[0]) = v212;
      v213 = *((&v324 | 0xC) + 0x10);
      *v262 = *v264;
      *((v340 | 0xC) + 0x10) = v213;
      *((v340 | 0xC) + 0x20) = *((&v324 | 0xC) + 0x20);
      *((v340 | 0xC) + 0x2E) = *((&v324 | 0xC) + 0x2E);
      LOBYTE(v344) = v208;
      if (v208)
      {
        v345 = *(v362 + 15);
        v346 = *(&v362[1] + 15);
        v347 = *(&v362[2] + 15);
        v348 = *(&v362[3] + 15);
      }

      LOBYTE(v349) = v209;
      if (v209)
      {
        v350 = *&v360[15];
        v351 = *&v360[31];
        v352 = *&v360[47];
        v353 = *&v360[63];
      }

      re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(&v361, v340, v203, v204, (v210 + v207 - 108), 0, 0, *(v210 + v207));
      v214 = v361.columns[0];
      v215 = v361.columns[1].f32[1];
      v216 = v361.columns[1].f32[0];
      v217 = v361.columns[1].f32[2];
    }

    else
    {
      v214 = *(v211 - 60);
      v216 = *(v211 - 4) * 0.5;
      v215 = *(v211 - 24);
      v217 = *(v211 - 20);
    }

    v218 = v217 - v215;
    *&v219 = 2.0 / (v216 + v216);
    LODWORD(v220) = 0;
    *(&v220 + 1) = *&v219;
    v221.i64[0] = 0;
    v221.i32[3] = 0;
    v221.f32[2] = 1.0 / v218;
    *&v222 = v217 / v218;
    v223.i64[0] = 0;
    v223.i64[1] = __PAIR64__(1.0, v222);
    v361.columns[0] = v219;
    v361.columns[1] = v220;
    v361.columns[2] = v221;
    v361.columns[3] = v223;
    v224 = v210 + v207;
    v364 = *(v224 - 108);
    v273 = v214;
    v225 = v214;
    v225.i32[3] = v364.columns[3].i32[3];
    v364.columns[3] = v225;
    re::LightContextBuilder::snapDirectionalLightProjectionToTexel(&v361, &v364);
    v363 = v361;
    v226 = v205[10];
    if (v226 <= m)
    {
      break;
    }

    *(v205[11] + v206) = v363;
    v227 = v273;
    v227.i32[3] = *(v224 - 48);
    *(v224 - 60) = v227;
    m = (m + 1);
    v206 += 64;
    v207 += 144;
    if (m >= v205[2])
    {
      goto LABEL_339;
    }
  }

  v364.columns[0].i64[0] = 0;
  v342 = 0u;
  v343 = 0u;
  v341 = 0u;
  memset(v340, 0, sizeof(v340));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v361.columns[0].i32[0] = 136315906;
  *(v361.columns[0].i64 + 4) = "operator[]";
  v361.columns[0].i16[6] = 1024;
  *(&v361.columns[0].i32[3] + 2) = 468;
  v361.columns[1].i16[1] = 2048;
  *(v361.columns[1].i64 + 4) = m;
  v361.columns[1].i16[6] = 2048;
  *(&v361.columns[1].i64[1] + 6) = v226;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_365:
  *&v276 = 0;
  ++DWORD2(v276);
  re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::deinit(&v311);
  *&v275 = 0;
  DWORD2(v275) = 0;
  re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::deinit(&v311);
}

uint64_t re::LightContextBuilder::build@<X0>(unint64_t a1@<X0>, re::Allocator *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v537 = *MEMORY[0x1E69E9840];
  if (!re::LightContextBuilder::getMainCameraView(a5, a6, a7))
  {

    return re::LightContextBuilder::Result::Result(a9, a2);
  }

  v419 = a8;
  v420 = a9;
  v448 = a2;
  v421 = a4;
  if (!re::s_debugSettingsManager)
  {
    v470 = 0;
    v468 = 0;
    *&v469 = 0;
    DWORD2(v469) = 0;
    v467 = a2;
    re::DynamicArray<re::SingleCullingFrustum>::setCapacity(&v467, 0);
    ++DWORD2(v469);
    if (!a5)
    {
      goto LABEL_19;
    }

LABEL_13:
    v20 = *(a5 + 40);
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v22 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](a5, i);
        v28 = *(v22 + 16);
        if (v28)
        {
          v29 = 1552 * v28;
          v30 = (*(v22 + 32) + 64);
          do
          {
            re::computeCullingPlanes(v30 - 2, v30, 1, &buf, v23, v24, v25, v26, v27);
            re::computeFrustumCorners(v30 - 2, v30, 1, &v519, v31, v32, v33, v34);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v467, &buf);
            v30 = (v30 + 1552);
            v29 -= 1552;
          }

          while (v29);
        }
      }
    }

    goto LABEL_19;
  }

  v480[0] = 0;
  buf.columns[0].i64[0] = 0xF53EA7863F1002DELL;
  buf.columns[0].i64[1] = "overrides:disablelightfrustumculling";
  v16 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, &buf, v480);
  if (buf.columns[0].i8[0])
  {
    if (buf.columns[0].i8[0])
    {
    }
  }

  v17 = v480[0];
  v470 = 0;
  v468 = 0;
  *&v469 = 0;
  DWORD2(v469) = 0;
  v467 = a2;
  re::DynamicArray<re::SingleCullingFrustum>::setCapacity(&v467, 0);
  ++DWORD2(v469);
  if (v17)
  {
    goto LABEL_40;
  }

  if (a5)
  {
    goto LABEL_13;
  }

LABEL_19:
  if (a6)
  {
    v35 = *(a6 + 40);
    if (v35)
    {
      for (j = 0; j != v35; ++j)
      {
        v37 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](a6, j);
        v43 = *(v37 + 16);
        if (v43)
        {
          v44 = 3120 * v43;
          v45 = (*(v37 + 32) + 1616);
          do
          {
            re::computeCullingPlanes(v45 - 99, (v45 - 1552), 1, &buf, v38, v39, v40, v41, v42);
            re::computeFrustumCorners(v45 - 99, v45 - 1552, 1, &v519, v46, v47, v48, v49);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v467, &buf);
            re::computeCullingPlanes(v45 - 2, v45, 1, &buf, v50, v51, v52, v53, v54);
            re::computeFrustumCorners(v45 - 2, v45, 1, &v519, v55, v56, v57, v58);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v467, &buf);
            v45 = (v45 + 3120);
            v44 -= 3120;
          }

          while (v44);
        }
      }
    }
  }

  v59 = *(a7 + 40);
  if (v59)
  {
    for (k = 0; k != v59; ++k)
    {
      v61 = *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](a7, k);
      if (v61)
      {
        v67 = *(v61 + 16);
        if (v67)
        {
          v68 = 1552 * v67;
          v69 = (*(v61 + 32) + 64);
          do
          {
            re::computeCullingPlanes(v69 - 2, v69, 1, &buf, v62, v63, v64, v65, v66);
            re::computeFrustumCorners(v69 - 2, v69, 1, &v519, v70, v71, v72, v73);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v467, &buf);
            v69 = (v69 + 1552);
            v68 -= 1552;
          }

          while (v68);
        }
      }
    }
  }

  a8 = *(a7 + 96);
  if (a8)
  {
    v74 = 0;
    do
    {
      v75 = *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](a7 + 56, v74);
      if (v75)
      {
        v81 = *(v75 + 16);
        if (v81)
        {
          v82 = 3120 * v81;
          v83 = (*(v75 + 32) + 1616);
          do
          {
            re::computeCullingPlanes(v83 - 99, (v83 - 1552), 1, &buf, v76, v77, v78, v79, v80);
            re::computeFrustumCorners(v83 - 99, v83 - 1552, 1, &v519, v84, v85, v86, v87);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v467, &buf);
            re::computeCullingPlanes(v83 - 2, v83, 1, &buf, v88, v89, v90, v91, v92);
            re::computeFrustumCorners(v83 - 2, v83, 1, &v519, v93, v94, v95, v96);
            re::DynamicArray<re::SingleCullingFrustum>::add(&v467, &buf);
            v83 = (v83 + 3120);
            v82 -= 3120;
          }

          while (v82);
        }
      }

      ++v74;
    }

    while (v74 != a8);
  }

LABEL_40:
  v454 = v470;
  v97 = v469;
  v98 = a1;
  v99 = *(a1 + 2940);
  if (v99)
  {
    v100 = a1 + 2912;
    v101 = *(a1 + 2944);
    if (v101)
    {
      v18 = 0;
      v102 = *(a1 + 2928);
      v428 = *(a1 + 2944);
      while ((*v102 & 0x80000000) == 0)
      {
        v102 += 88;
        if (v101 == ++v18)
        {
          v18 = *(a1 + 2944);
          break;
        }
      }
    }

    else
    {
      v18 = 0;
      v428 = 0;
    }

    v423 = a1 + 2912;
  }

  else
  {
    v100 = a1 + 96;
    v423 = a1 + 96 + 352 * *(a1 + 80);
    v428 = v423;
  }

  v103 = a1 + 2992;
  v450 = (a1 + 3000);
  v452 = 240 * v469 - 240;
  v104 = v480;
  v431 = *(a1 + 2940);
  while (1)
  {
LABEL_50:
    v436 = v18;
    v439 = v100;
    if (v99)
    {
      if (v428 == v18)
      {
        goto LABEL_105;
      }

      a8 = *(v100 + 16) + 352 * v18 + 8;
    }

    else
    {
      if (v100 == v423)
      {
        goto LABEL_105;
      }

      a8 = v100 + 8;
    }

    v105 = *(a8 + 152);
    if (v105)
    {
      for (m = 0; m != v105; ++m)
      {
        v107 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a8 + 112, m);
        *(v107 + 64) = *(v107 + 16);
        v108 = *(v107 + 48);
        if (v108 >= 1)
        {
          memset(*(v107 + 56), 1, v108);
        }
      }
    }

    v443 = a8;
    v442 = *(a8 + 264);
    if (v442)
    {
      break;
    }

LABEL_76:
    v103 = a1 + 2992;
    v460 = *(a8 + 208);
    if (v460)
    {
      v123 = 0;
      while (1)
      {
        v124 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a8 + 168, v123);
        *(v124 + 64) = 0;
        a8 = v124 + 64;
        if (*(v124 + 16))
        {
          break;
        }

LABEL_93:
        ++v123;
        a8 = v443;
        if (v123 == v460)
        {
          goto LABEL_94;
        }
      }

      v125 = v124;
      v113 = 0;
      while (2)
      {
        v126 = v125[4] + 240 * v113;
        v539 = __invert_f4(*(v126 + 32));
        v127 = 0;
        v128 = *(v126 + 128);
        v129 = *(v126 + 144);
        v130 = *(v126 + 160);
        v131 = *(v126 + 176);
        *v480 = v539;
        do
        {
          buf.columns[v127 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v128, COERCE_FLOAT(*&v480[v127])), v129, *&v480[v127], 1), v130, *&v480[v127], 2), v131, *&v480[v127], 3);
          v127 += 16;
        }

        while (v127 != 64);
        *v504 = buf;
        v540 = __invert_f4(buf);
        v471 = v540.columns[0];
        v472 = v540.columns[1];
        v473 = v540.columns[2];
        v474 = v540.columns[3];
        re::buildCullingFrustum(v504, &v471, &buf);
        if (v97)
        {
          v132 = v452;
          v133 = v454;
          do
          {
            v134 = re::approxFrustumIntersectFrustum(v133, &buf);
            if (v134)
            {
              break;
            }

            v133 += 15;
            v135 = v132;
            v132 -= 240;
          }

          while (v135);
          v98 = v125[6];
          if (v98 <= v113)
          {
            goto LABEL_104;
          }

          *(v125[7] + v113) = v134;
          v136 = a8;
          if (v134)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v98 = v125[6];
          if (v98 <= v113)
          {
            goto LABEL_104;
          }

          *(v125[7] + v113) = 0;
        }

        v136 = (a1 + 2992);
LABEL_92:
        ++*v136;
        if (++v113 >= v125[2])
        {
          goto LABEL_93;
        }

        continue;
      }
    }

LABEL_94:
    v99 = v431;
    if (v431)
    {
      v100 = v439;
      v137 = *(v439 + 32);
      v138 = v436 + 1;
      if (v137 <= v436 + 1)
      {
        v18 = (v436 + 1);
      }

      else
      {
        v18 = v137;
      }

      v98 = a1;
      while (v18 != v138)
      {
        v139 = v138;
        v140 = *(*(v439 + 16) + 352 * v138++);
        if (v140 < 0)
        {
          v18 = v139;
          goto LABEL_50;
        }
      }
    }

    else
    {
      v18 = v436;
      v100 = v439 + 352;
      v98 = a1;
    }
  }

  v109 = 0;
  while (1)
  {
    v446 = v109;
    v110 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a8 + 224, v109);
    v110[8] = 0;
    v113 = (v110 + 8);
    if (v110[2])
    {
      break;
    }

LABEL_75:
    a8 = v443;
    v109 = v446 + 1;
    if (v446 + 1 == v442)
    {
      goto LABEL_76;
    }
  }

  v114 = v110;
  a8 = 0;
  v103 = v110[4];
  v98 = v110[7];
  while (!v97)
  {
    v121 = v114[6];
    if (v121 <= a8)
    {
      goto LABEL_103;
    }

    *(v98 + a8) = 0;
LABEL_73:
    v122 = (a1 + 3000);
LABEL_74:
    ++*v122;
    if (++a8 >= v114[2])
    {
      goto LABEL_75;
    }
  }

  v115 = v103 + 224 * a8;
  v116 = *(v115 + 80);
  v116.i32[3] = *(v115 + 200);
  v459 = v116;
  v117 = v452;
  v118 = v454;
  do
  {
    buf.columns[0] = v459;
    isBoundingSphereIntersectingFrustumPlanes = re::isBoundingSphereIntersectingFrustumPlanes(&buf, v118, *v459.i64, v111, v112);
    if (isBoundingSphereIntersectingFrustumPlanes)
    {
      break;
    }

    v118 += 30;
    v120 = v117;
    v117 -= 240;
  }

  while (v120);
  v121 = v114[6];
  if (v121 > a8)
  {
    *(v98 + a8) = isBoundingSphereIntersectingFrustumPlanes;
    v122 = v113;
    if (isBoundingSphereIntersectingFrustumPlanes)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_103:
  *v504 = 0;
  v515 = 0u;
  memset(&buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v480 = 136315906;
  *&v480[4] = "operator[]";
  *&v480[12] = 1024;
  *&v480[14] = 468;
  *&v480[18] = 2048;
  *&v480[20] = a8;
  *&v480[28] = 2048;
  *&v480[30] = v121;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_104:
  v476[0] = 0;
  memset(v480, 0, 80);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v499 = 136315906;
  *&v499[4] = "operator[]";
  *&v499[12] = 1024;
  *&v499[14] = 468;
  v500 = 2048;
  v501 = v113;
  v502 = 2048;
  v503 = v98;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_105:
  v141 = v467;
  if (v467 && v470)
  {
    if (v469)
    {
      v142 = &v470[15 * v469];
      v143 = v470;
      do
      {
        v143->i64[0] = 0;
        ++v143->i32[2];
        v143 += 15;
      }

      while (v143 != v142);
    }

    v141 = (*(*v141 + 40))(v141);
  }

  *(v98 + 2976) = *(v98 + 2992) + *(v98 + 2984) + *(v98 + 3000);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v141);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v145 = *(isStatisticCollectionEnabled + 152);
    if (v145)
    {
      v146 = *(v98 + 2984);
      v147 = v145[840].u64[0];
      if (v147 >= v146)
      {
        v147 = *(v98 + 2984);
      }

      v145[840].i64[0] = v147;
      v148 = v145[840].u64[1];
      if (v148 <= v146)
      {
        v148 = v146;
      }

      v145[840].i64[1] = v148;
      v149 = vdupq_n_s64(1uLL);
      v149.i64[0] = v146;
      v145[841] = vaddq_s64(v145[841], v149);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v150 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v150)
  {
    v150 = re::profilerThreadContext(v150);
    v151 = *(v150 + 152);
    if (v151)
    {
      v152 = *v103;
      v153 = v151[824].u64[0];
      if (v153 >= *v103)
      {
        v153 = *v103;
      }

      v151[824].i64[0] = v153;
      v154 = v151[824].u64[1];
      if (v154 <= v152)
      {
        v154 = v152;
      }

      v151[824].i64[1] = v154;
      v155 = vdupq_n_s64(1uLL);
      v155.i64[0] = v152;
      v151[825] = vaddq_s64(v151[825], v155);
      *(v150 + 184) = 0;
    }
  }

  v156 = re::ProfilerConfig::isStatisticCollectionEnabled(v150);
  if (v156)
  {
    v156 = re::profilerThreadContext(v156);
    v157 = *(v156 + 152);
    if (v157)
    {
      v158 = *v450;
      v159 = v157[808].u64[0];
      if (v159 >= *v450)
      {
        v159 = *v450;
      }

      v157[808].i64[0] = v159;
      v160 = v157[808].u64[1];
      if (v160 <= v158)
      {
        v160 = v158;
      }

      v157[808].i64[1] = v160;
      v161 = vdupq_n_s64(1uLL);
      v161.i64[0] = v158;
      v157[809] = vaddq_s64(v157[809], v161);
      *(v156 + 184) = 0;
    }
  }

  v162 = re::ProfilerConfig::isStatisticCollectionEnabled(v156);
  if (v162)
  {
    v163 = re::profilerThreadContext(v162);
    v164 = *(v163 + 152);
    if (v164)
    {
      v165 = *(v98 + 2976);
      v166 = v164[776].u64[0];
      if (v166 >= v165)
      {
        v166 = *(v98 + 2976);
      }

      v164[776].i64[0] = v166;
      v167 = v164[776].u64[1];
      if (v167 <= v165)
      {
        v167 = v165;
      }

      v164[776].i64[1] = v167;
      v168 = vdupq_n_s64(1uLL);
      v168.i64[0] = v165;
      v164[777] = vaddq_s64(v164[777], v168);
      *(v163 + 184) = 0;
    }
  }

  re::LightContextBuilder::Result::Result(v420, v448);
  v169 = *(v98 + 2960);
  v461 = *(v169 + 72);
  v455 = *(v169 + 168);
  *v480 = 0u;
  *&v480[16] = 1;
  memset(&v480[24], 0, 28);
  re::BucketArray<re::LightContext,16ul>::init(v480, v448, 1uLL);
  v481 = 0;
  memset(&v480[56], 0, 32);
  v482 = 0x7FFFFFFFLL;
  v483 = v448;
  v484 = 0u;
  v486 = 0u;
  v485 = v448;
  v487 = v448;
  v488 = 0u;
  v490 = 0u;
  v489 = v448;
  v491 = v448;
  v492 = 0u;
  v493 = v448;
  v494 = 0u;
  v495 = 0u;
  v496 = 0;
  *&v170 = v455;
  *(&v170 + 1) = v461;
  v497 = v170;
  v498 = 0;
  v171 = *(v98 + 2940);
  if (v171)
  {
    v172 = (v98 + 2912);
    a8 = *(v98 + 2944);
    if (a8)
    {
      v104 = 0;
      v173 = *(v98 + 2928);
      while ((*v173 & 0x80000000) == 0)
      {
        v173 += 88;
        v104 = (v104 + 1);
        if (a8 == v104)
        {
          LODWORD(v104) = *(v98 + 2944);
          break;
        }
      }
    }

    else
    {
      LODWORD(v104) = 0;
    }

    v174 = v98 + 2912;
  }

  else
  {
    v172 = (v98 + 96);
    v174 = v98 + 96 + 352 * *(v98 + 80);
  }

  v175 = 0;
  v176.i64[0] = 0x7F0000007FLL;
  v176.i64[1] = 0x7F0000007FLL;
  v462 = vnegq_f32(v176);
LABEL_149:
  while (2)
  {
    if (v171)
    {
      if (a8 == v104)
      {
        goto LABEL_191;
      }

      v177 = *(v172 + 2) + 352 * v104;
      v178 = (v177 + 4);
      v179 = (v177 + 8);
LABEL_154:
      if (v179[26] || v179[33])
      {
        v175 = 1;
        goto LABEL_157;
      }

      v183 = *v178;
      *&v184 = 0x7F0000007FLL;
      *(&v184 + 1) = 0x7F0000007FLL;
      *v504 = v462;
      *&v504[16] = v184;
      re::LightContextBuilder::buildLightContext(&buf, *(a1 + 2960), v448, v179, v504);
      v185 = v523;
      v186 = *&v480[40];
      re::BucketArray<re::LightContext,16ul>::add(v480, &buf);
      v187 = v498 | v185;
      v103 = v504;
      LOBYTE(v498) = v187 & 1;
      memset(&v504[8], 0, 36);
      *&v504[44] = 0x7FFFFFFFLL;
      *v504 = v186;
      v188 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v183) ^ ((0xBF58476D1CE4E5B9 * v183) >> 27));
      v189 = v188 ^ (v188 >> 31);
      if (*&v480[56])
      {
        v190 = v189 % *&v480[80];
        v191 = *(*&v480[64] + 4 * v190);
        if (v191 != 0x7FFFFFFF)
        {
          while (*(*&v480[72] + 72 * v191 + 4) != v183)
          {
            LODWORD(v191) = *(*&v480[72] + 72 * v191) & 0x7FFFFFFF;
            if (v191 == 0x7FFFFFFF)
            {
              goto LABEL_171;
            }
          }

          goto LABEL_172;
        }
      }

      else
      {
        LODWORD(v190) = 0;
      }

LABEL_171:
      v192 = re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(&v480[56], v190, v189);
      *(v192 + 4) = v183;
      *(v192 + 8) = v186;
      *(v192 + 16) = 0u;
      *(v192 + 32) = 0u;
      *(v192 + 48) = 0;
      *(v192 + 52) = 0x7FFFFFFFLL;
      ++HIDWORD(v482);
LABEL_172:
      v193.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v504[8]);
      if (v519.i64[1])
      {
        if (v520)
        {
          (*(*v519.i64[1] + 40))(v193.n128_f64[0]);
          v520 = 0;
          v521 = 0;
        }

        v519.i64[1] = 0;
      }

      if (v517 && v518)
      {
        (*(*v517 + 40))(v193);
      }

      if (*(&v515 + 1) && v516)
      {
        (*(**(&v515 + 1) + 40))(v193);
      }

      if (buf.columns[3].i64[0] && buf.columns[3].i64[1])
      {
        (*(*buf.columns[3].i64[0] + 40))(v193);
      }

      if (buf.columns[1].i64[1] && buf.columns[2].i64[0])
      {
        (*(*buf.columns[1].i64[1] + 40))(v193);
      }

      if (buf.columns[0].i64[0] && buf.columns[0].i64[1])
      {
        (*(*buf.columns[0].i64[0] + 40))(v193);
      }

LABEL_157:
      if (v171)
      {
        v180 = v104 + 1;
        if (*(v172 + 8) <= (v104 + 1))
        {
          LODWORD(v104) = v104 + 1;
        }

        else
        {
          LODWORD(v104) = *(v172 + 8);
        }

        while (v104 != v180)
        {
          v181 = v180;
          v182 = *(*(v172 + 2) + 352 * v180++);
          if (v182 < 0)
          {
            LODWORD(v104) = v181;
            goto LABEL_149;
          }
        }
      }

      else
      {
        v172 += 176;
      }

      continue;
    }

    break;
  }

  if (v172 != v174)
  {
    v179 = v172 + 4;
    v178 = v172;
    goto LABEL_154;
  }

LABEL_191:
  if ((v175 & 1) == 0)
  {
    goto LABEL_311;
  }

  buf.columns[0].i64[0] = v448;
  buf.columns[0].i32[2] = 0;
  buf.columns[1].i64[0] = 0;
  buf.columns[1].i32[2] = 0;
  v533 = 0u;
  v534 = 0u;
  v535 = 0;
  v536 = 0x7FFFFFFFLL;
  v194 = v421;
  if (v421)
  {
    v463 = *(v421 + 40);
    if (v463)
    {
      v195 = 0;
      p_buf = &buf;
      v103 = 0x7FFFFFFFLL;
      while (1)
      {
        v197 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v194, v195);
        v198 = *(v197 + 16);
        if (v198)
        {
          break;
        }

LABEL_219:
        ++v195;
        v194 = v421;
        if (v195 == v463)
        {
          goto LABEL_220;
        }
      }

      v199 = *(v197 + 32);
      v104 = &v199[64 * v198];
      while (2)
      {
        v200 = re::AABB::transform(v199 + 5, v199 + 8, &v471);
        v202 = v199[32].u64[0];
        v473.i64[0] = v202;
        v473.i16[4] = v199[32].i16[4];
        if (HIDWORD(v534))
        {
LABEL_198:
          memset(v504, 0, 24);
          if (*&v504[12] == 0x7FFFFFFF)
          {
            v203 = re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(&v533, *&v504[8], *v504);
            *(v203 + 8) = v199[32].i64[0];
            v204 = v473;
            *(v203 + 32) = v472;
            *(v203 + 48) = v204;
            *(v203 + 16) = v471;
            ++HIDWORD(v536);
          }

          goto LABEL_218;
        }

        if (buf.columns[1].i64[0])
        {
          v205 = buf.columns[1].i64[0] << 6;
          v206 = (buf.columns[1].i64[0] << 6) | 0x20;
          v207 = 2;
          do
          {
            if (buf.columns[v207].i64[0] == v202)
            {
              goto LABEL_218;
            }

            v207 += 4;
            v205 -= 64;
          }

          while (v205);
          if ((buf.columns[1].i32[0] & 0xFFFFFFF0) != 0)
          {
            if (v533)
            {
LABEL_210:
              v209 = v206 - 32;
              v210 = &buf.columns[2];
              do
              {
                memset(v504, 0, 24);
                if (*&v504[12] == 0x7FFFFFFF)
                {
                  v211 = re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(&v533, *&v504[8], *v504);
                  *(v211 + 8) = v210->i64[0];
                  v212 = v210[1];
                  v213 = v210[3];
                  *(v211 + 32) = v210[2];
                  *(v211 + 48) = v213;
                  *(v211 + 16) = v212;
                  ++HIDWORD(v536);
                }

                v210 += 4;
                v209 -= 64;
              }

              while (v209);
            }

            else
            {
              v208 = buf.columns[0].i64[0];
              if (!buf.columns[0].i64[0])
              {
              }

              re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v533, v208, 32);
              if (buf.columns[1].i64[0])
              {
                v206 = (buf.columns[1].i64[0] << 6) | 0x20;
                goto LABEL_210;
              }
            }

            buf.columns[1].i64[0] = 0;
            ++buf.columns[1].i32[2];
            v202 = v199[32].u64[0];
            goto LABEL_198;
          }

          *&v504[8] = v471;
          *&v504[24] = v472;
          *&v504[40] = v473;
          if (buf.columns[1].i64[0] >= 0x10uLL)
          {
            re::internal::assertLog(4, v201, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
            result = _os_crash();
            __break(1u);
            return result;
          }
        }

        else
        {
          *&v504[8] = v471;
          *&v504[24] = v472;
          *&v504[40] = v473;
        }

        v214 = &buf.columns[4 * buf.columns[1].i64[0] + 2];
        v215 = *&v504[16];
        *(v214 + 40) = *&v504[32];
        *(v214 + 8) = *v504;
        v214->i64[0] = v202;
        v214[3].i64[1] = *&v504[48];
        *(v214 + 24) = v215;
        ++buf.columns[1].i32[2];
        v216 = __CFADD__(buf.columns[1].i64[0], 1);
        v217 = ++buf.columns[1].i64[0];
        if (v216)
        {
          goto LABEL_464;
        }

LABEL_218:
        v199 += 64;
        if (v199 == v104)
        {
          goto LABEL_219;
        }

        continue;
      }
    }
  }

LABEL_220:
  v218 = a1;
  v456 = *(a3 + 40);
  if (v456)
  {
    v219 = 0;
    LODWORD(v104) = 0x7FFFFFFF;
    while (1)
    {
      v220 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](a3, v219);
      v221 = *(v220 + 16);
      if (v221)
      {
        break;
      }

LABEL_266:
      if (++v219 == v456)
      {
        goto LABEL_267;
      }
    }

    v222 = *(v220 + 32);
    v223 = &v222[46 * v221];
    while (2)
    {
      v224 = v222[32].u16[4];
      v225 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::tryGet(v218 + 64, v222[32].u16[4]);
      if (v225)
      {
        v227 = v225;
        re::MeshScene::meshSceneBoundingBox(v222, v226, v504);
        re::AABB::transform(v504, v222 + 8, &v471);
        v228 = HIDWORD(v534);
        if (HIDWORD(v534))
        {
          if (*&v504[12] != 0x7FFFFFFF)
          {
            v229 = (v534 + (*&v504[12] << 6) + 16);
            goto LABEL_228;
          }
        }

        else if (buf.columns[1].i64[0])
        {
          v237 = buf.columns[1].i64[0] << 6;
          v229 = &buf.columns[3];
          while (v229[-1].i64[0] != v222[32].i64[0])
          {
            v229 += 4;
            v237 -= 64;
            if (!v237)
            {
              goto LABEL_247;
            }
          }

LABEL_228:
          v230 = v471;
          v231 = v472;
          v230.i32[3] = 0;
          v232 = *v229;
          v233 = v229[1];
          v232.i32[3] = 0;
          v231.i32[3] = 0;
          v233.i32[3] = 0;
          v471 = vminnmq_f32(v230, v232);
          v472 = vmaxnmq_f32(v231, v233);
          if (v228)
          {
            v234 = *&v504[12];
            if (*&v504[12] != 0x7FFFFFFF)
            {
              v235 = (v534 + (*&v504[12] << 6));
              v236 = *v235 & 0x7FFFFFFF;
              if (*&v504[16] == 0x7FFFFFFF)
              {
                *(*(&v533 + 1) + 4 * *&v504[8]) = v236;
                v228 = HIDWORD(v534);
              }

              else
              {
                *(v534 + (*&v504[16] << 6)) = *(v534 + (*&v504[16] << 6)) & 0x80000000 | v236;
              }

              *v235 = v536;
              HIDWORD(v534) = v228 - 1;
              v536 = __PAIR64__(HIDWORD(v536), v234) + 0x100000000;
            }
          }

          else if (buf.columns[1].i64[0])
          {
            v238 = 0;
            v239 = &buf.columns[2];
            while (v239->i64[0] != v222[32].i64[0])
            {
              ++v238;
              v239 += 4;
              if (buf.columns[1].i64[0] == v238)
              {
                goto LABEL_247;
              }
            }

            v240 = buf.columns[1].i64[0] - 1;
            if (buf.columns[1].i64[0] - 1 > v238)
            {
              v241 = &v513[64 * buf.columns[1].i64[0]];
              v242 = *v241;
              v243 = v241[1];
              v244 = v241[3];
              v239[2] = v241[2];
              v239[3] = v244;
              *v239 = v242;
              v239[1] = v243;
              v240 = buf.columns[1].i64[0] - 1;
            }

            buf.columns[1].i64[0] = v240;
            ++buf.columns[1].i32[2];
          }
        }

LABEL_247:
        v218 = a1;
        re::LightContextBuilder::buildLightContext(v504, *(a1 + 2960), v448, v227, &v471);
        re::LightContexts::addPerMeshLightContext(v480, v224, v222[32].u64[0], v504);
        if (v510 && v511)
        {
          (*(*v510 + 40))(v510, v512);
          v511 = 0;
          v512 = 0;
        }

        if (v507 && v508)
        {
          (*(*v507 + 40))(v507, v509);
        }

        if (*&v504[72] && v505)
        {
          (*(**&v504[72] + 40))(*&v504[72], v506);
        }

        if (*&v504[48] && *&v504[56])
        {
          (*(**&v504[48] + 40))(*&v504[48], *&v504[64]);
        }

        if (*&v504[24] && *&v504[32])
        {
          (*(**&v504[24] + 40))(*&v504[24], *&v504[40]);
        }

        if (*v504 && *&v504[8])
        {
          (*(**v504 + 40))(*v504, *&v504[16]);
        }
      }

      v222 += 46;
      if (v222 == v223)
      {
        goto LABEL_266;
      }

      continue;
    }
  }

LABEL_267:
  v245 = HIDWORD(v534);
  if (HIDWORD(v534))
  {
    LODWORD(v218) = v535;
    if (v535)
    {
      v104 = 0;
      v246 = v534;
      while (1)
      {
        v247 = *v246;
        v246 += 16;
        if (v247 < 0)
        {
          break;
        }

        v104 = (v104 + 1);
        if (v535 == v104)
        {
          v248 = &v533;
          LODWORD(v104) = v535;
          goto LABEL_276;
        }
      }
    }

    else
    {
      LODWORD(v104) = 0;
    }

    v248 = &v533;
LABEL_276:
    v249 = &v533;
  }

  else
  {
    v248 = &buf.columns[2];
    v249 = &buf.columns[4 * buf.columns[1].i64[0] + 2];
  }

  v103 = v504;
LABEL_278:
  while (2)
  {
    if (v245)
    {
      if (v218 == v104)
      {
        break;
      }

      v250 = v248[1].i64[0] + (v104 << 6) + 16;
      goto LABEL_283;
    }

    if (v248 != v249)
    {
      v250 = &v248[1];
LABEL_283:
      v251 = *(v250 + 40);
      v252 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::tryGet(a1 + 64, *(v250 + 40));
      if (v252)
      {
        re::LightContextBuilder::buildLightContext(v504, *(a1 + 2960), v448, v252, v250);
        re::LightContexts::addPerMeshLightContext(v480, v251, *(v250 + 32), v504);
        if (v510 && v511)
        {
          (*(*v510 + 40))(v510, v512);
          v511 = 0;
          v512 = 0;
        }

        if (v507 && v508)
        {
          (*(*v507 + 40))(v507, v509);
        }

        if (*&v504[72] && v505)
        {
          (*(**&v504[72] + 40))(*&v504[72], v506);
        }

        if (*&v504[48] && *&v504[56])
        {
          (*(**&v504[48] + 40))(*&v504[48], *&v504[64]);
        }

        if (*&v504[24] && *&v504[32])
        {
          (*(**&v504[24] + 40))(*&v504[24], *&v504[40]);
        }

        if (*v504 && *&v504[8])
        {
          (*(**v504 + 40))(*v504, *&v504[16]);
        }
      }

      if (v245)
      {
        v253 = v104 + 1;
        if (v248[2].i32[0] <= (v104 + 1))
        {
          LODWORD(v104) = v104 + 1;
        }

        else
        {
          LODWORD(v104) = v248[2].i32[0];
        }

        while (v104 != v253)
        {
          v254 = v253;
          v255 = *(v248[1].i64[0] + (v253++ << 6));
          if (v255 < 0)
          {
            LODWORD(v104) = v254;
            goto LABEL_278;
          }
        }
      }

      else
      {
        v248 += 4;
      }

      continue;
    }

    break;
  }

  buf.columns[1].i64[0] = 0;
  ++buf.columns[1].i32[2];
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v533);
  buf.columns[0].i64[0] = 0;
  buf.columns[0].i32[2] = 0;
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v533);
LABEL_311:
  re::BucketArray<re::BufferSlice,8ul>::operator=((v420 + 80), v480);
  re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(v420 + 136, &v480[56]);
  re::FixedArray<float>::operator=((v420 + 184), &v483);
  re::FixedArray<float>::operator=((v420 + 208), &v485);
  re::FixedArray<float>::operator=((v420 + 232), &v487);
  re::FixedArray<float>::operator=((v420 + 256), &v489);
  re::FixedArray<float>::operator=((v420 + 280), &v491);
  re::FixedArray<float>::operator=((v420 + 304), &v493);
  *(v420 + 328) = v495;
  *(v420 + 344) = v496;
  *(v420 + 352) = v497;
  *(v420 + 368) = v498;
  p_buf = a1;
  if (v493)
  {
    if (v494)
    {
      (*(*v493 + 40))(v493, *(&v494 + 1));
      v494 = 0uLL;
    }

    v493 = 0;
  }

  if (v491)
  {
    if (v492)
    {
      (*(*v491 + 40))(v491, *(&v492 + 1));
      v492 = 0uLL;
    }

    v491 = 0;
  }

  if (v489)
  {
    if (v490)
    {
      (*(*v489 + 40))(v489, *(&v490 + 1));
      v490 = 0uLL;
    }

    v489 = 0;
  }

  if (v487)
  {
    if (v488)
    {
      (*(*v487 + 40))(v487, *(&v488 + 1));
      v488 = 0uLL;
    }

    v487 = 0;
  }

  if (v485)
  {
    if (v486)
    {
      (*(*v485 + 40))(v485, *(&v486 + 1));
      v486 = 0uLL;
    }

    v485 = 0;
  }

  if (v483)
  {
    if (v484)
    {
      (*(*v483 + 40))(v483, *(&v484 + 1));
      v484 = 0uLL;
    }

    v483 = 0;
  }

  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(&v480[56]);
  re::BucketArray<re::LightContext,16ul>::deinit(v480);
  if (*v480 && (v480[16] & 1) == 0)
  {
    (*(**v480 + 40))(*v480, *&v480[32]);
  }

  v473.i64[0] = 0;
  v472.i64[0] = 0;
  v472.i32[2] = 0;
  v471 = v448;
  re::DynamicArray<re::ShadowView>::setCapacity(&v471, 0);
  ++v472.i32[2];
  v258 = *(a1 + 2940);
  if (v258)
  {
    v259 = (a1 + 2912);
    v256 = *(a1 + 2944);
    if (v256)
    {
      v257 = 0;
      v260 = *(a1 + 2928);
      while ((*v260 & 0x80000000) == 0)
      {
        v260 += 88;
        if (v256 == ++v257)
        {
          v257 = *(a1 + 2944);
          break;
        }
      }
    }

    else
    {
      v257 = 0;
    }

    v424 = a1 + 2912;
  }

  else
  {
    v259 = (a1 + 96);
    v424 = a1 + 96 + 352 * *(a1 + 80);
  }

  LODWORD(v442) = 136315138;
  v422 = *(a1 + 2940);
  v418 = v256;
LABEL_348:
  while (2)
  {
    v426 = v257;
    v429 = v259;
    if (v258)
    {
      if (v256 == v257)
      {
        goto LABEL_455;
      }

      v261 = *(v259 + 2) + 352 * v257;
      v262 = (v261 + 4);
      v263 = (v261 + 8);
    }

    else
    {
      if (v259 == v424)
      {
        goto LABEL_455;
      }

      v263 = v259 + 4;
      v262 = v259;
    }

    v264 = *v262;
    v440 = v263;
    v464 = v263[12];
    if (v464)
    {
      for (n = 0; n != v464; ++n)
      {
        v266 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v263 + 7), n);
        v267 = *(v266 + 16);
        if (v267)
        {
          v268 = v266;
          for (ii = 0; ii < v267; ++ii)
          {
            v103 = v268[4] + 160 * ii;
            if (*(v103 + 134) == 1)
            {
              v270 = v268[6];
              if (v270 <= ii)
              {
                goto LABEL_451;
              }

              v271 = v268[7] + 24 * ii;
              v272 = *(v271 + 8);
              if (v272)
              {
                v273 = *(v271 + 16);
                v274 = 96 * v272;
                do
                {
                  v275 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 8, *(v273 + 10));
                  LOBYTE(v467) = 1;
                  v469 = *v273;
                  v276 = *(v103 + 135);
                  v478[0] = *(v103 + 132);
                  if (v478[0] == 1)
                  {
                    v478[1] = *(v103 + 133);
                  }

                  re::LightContextBuilder::buildShadowViews(re::PerFrameAllocator *)const::$_0::operator()(v448, v103, v275, v273 + 1, &v467, v276, v264, v478, &v471);
                  v273 += 6;
                  v274 -= 96;
                }

                while (v274);
                v267 = v268[2];
              }
            }
          }
        }

        v263 = v440;
      }
    }

    v457 = v263[19];
    if (v457)
    {
      v277 = 0;
      while (1)
      {
        v465 = v277;
        v278 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v263 + 14), v277);
        v279 = *(v278 + 16);
        if (v279)
        {
          break;
        }

LABEL_379:
        v277 = v465 + 1;
        v263 = v440;
        if (v465 + 1 == v457)
        {
          goto LABEL_380;
        }
      }

      v280 = v278;
      v103 = 0;
      v281 = 0;
      ii = 0;
      while (1)
      {
        v270 = v280[6];
        if (v270 <= ii)
        {
          break;
        }

        if (*(v280[7] + ii) == 1)
        {
          v270 = v280[13];
          if (v270 <= ii)
          {
            goto LABEL_453;
          }

          v282 = v280[4];
          v283 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 8, *(v280[14] + 8 * ii));
          v284 = v280[10];
          if (v284 <= ii)
          {
            goto LABEL_454;
          }

          buf = *(v280[11] + v281);
          v499[0] = 0;
          v477[0] = *(v282 + v103 + 132);
          if (v477[0] == 1)
          {
            v477[1] = *(v282 + v103 + 133);
          }

          re::LightContextBuilder::buildShadowViews(re::PerFrameAllocator *)const::$_0::operator()(v448, v282 + v103, v283, &buf, v499, 0, v264, v477, &v471);
          v279 = v280[2];
        }

        ++ii;
        v281 += 64;
        v103 += 144;
        if (ii >= v279)
        {
          goto LABEL_379;
        }
      }

LABEL_450:
      *v504 = 0;
      v515 = 0u;
      memset(&buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v480 = 136315906;
      *&v480[4] = "operator[]";
      *&v480[12] = 1024;
      *&v480[14] = 476;
      *&v480[18] = 2048;
      *&v480[20] = ii;
      *&v480[28] = 2048;
      *&v480[30] = v270;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_451:
      *v504 = 0;
      v515 = 0u;
      memset(&buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v480 = 136315906;
      *&v480[4] = "operator[]";
      *&v480[12] = 1024;
      *&v480[14] = 476;
      *&v480[18] = 2048;
      *&v480[20] = ii;
      *&v480[28] = 2048;
      *&v480[30] = v270;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_452:
      *v504 = 0;
      v515 = 0u;
      memset(&buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v480 = 136315906;
      *&v480[4] = "operator[]";
      *&v480[12] = 1024;
      *&v480[14] = 476;
      *&v480[18] = 2048;
      *&v480[20] = ii;
      *&v480[28] = 2048;
      *&v480[30] = v270;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_453:
      *v504 = 0;
      v515 = 0u;
      memset(&buf, 0, sizeof(buf));
      v284 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v480 = 136315906;
      *&v480[4] = "operator[]";
      *&v480[12] = 1024;
      *&v480[14] = 476;
      *&v480[18] = 2048;
      *&v480[20] = ii;
      *&v480[28] = 2048;
      *&v480[30] = v270;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_454:
      *v504 = 0;
      v515 = 0u;
      memset(&buf, 0, sizeof(buf));
      p_buf = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v480 = 136315906;
      *&v480[4] = "operator[]";
      *&v480[12] = 1024;
      *&v480[14] = 476;
      *&v480[18] = 2048;
      *&v480[20] = ii;
      *&v480[28] = 2048;
      *&v480[30] = v284;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_455:
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v420, &v471);
      re::DynamicArray<re::ShadowView>::deinit(&v471);
      *&v504[32] = 0;
      *&v504[16] = 0;
      *&v504[24] = 0;
      *v504 = v448;
      re::DynamicArray<re::FilterView>::setCapacity(v504, 0);
      ++*&v504[24];
      v322 = *(p_buf + 2940);
      if (!v322)
      {
        goto LABEL_462;
      }

      v323 = p_buf + 2912;
      v324 = *(p_buf + 2944);
      if (v324)
      {
        v321 = 0;
        v325 = *(p_buf + 2928);
        LODWORD(v430) = *(p_buf + 2944);
        while ((*v325 & 0x80000000) == 0)
        {
          v325 += 88;
          if (v324 == ++v321)
          {
            v321 = *(p_buf + 2944);
            goto LABEL_466;
          }
        }

        goto LABEL_466;
      }

LABEL_465:
      v321 = 0;
      LODWORD(v430) = 0;
LABEL_466:
      v427 = v323;
      goto LABEL_467;
    }

LABEL_380:
    v458 = v263[26];
    if (!v458)
    {
LABEL_393:
      v432 = v263[33];
      if (!v432)
      {
LABEL_439:
        v258 = v422;
        if (v422)
        {
          v259 = v429;
          v316 = *(v429 + 8);
          v317 = v426 + 1;
          if (v316 <= v426 + 1)
          {
            v257 = (v426 + 1);
          }

          else
          {
            v257 = v316;
          }

          p_buf = a1;
          LODWORD(v256) = v418;
          while (v257 != v317)
          {
            v318 = v317;
            v319 = *(*(v429 + 2) + 352 * v317++);
            if (v319 < 0)
            {
              v257 = v318;
              goto LABEL_348;
            }
          }
        }

        else
        {
          v257 = v426;
          v259 = v429 + 176;
          p_buf = a1;
          LODWORD(v256) = v418;
        }

        continue;
      }

      v293 = 0;
LABEL_395:
      v434 = v293;
      v294 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v263 + 28), v293);
      v295 = *(v294 + 16);
      if (!v295)
      {
        goto LABEL_438;
      }

      v296 = v294;
      v270 = 0;
      v103 = 0;
LABEL_397:
      ii = v296[4] + 224 * v103;
      if (*(ii + 215) != 1)
      {
        goto LABEL_437;
      }

      p_buf = v296[6];
      if (p_buf <= v103)
      {
        *v504 = 0;
        v515 = 0u;
        memset(&buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v480 = 136315906;
        *&v480[4] = "operator[]";
        *&v480[12] = 1024;
        *&v480[14] = 476;
        *&v480[18] = 2048;
        *&v480[20] = v103;
        *&v480[28] = 2048;
        *&v480[30] = p_buf;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_464:
        re::internal::assertLog(6, v201, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, v217);
        _os_crash();
        __break(1u);
        goto LABEL_465;
      }

      if (*(v296[7] + v103) != 1)
      {
        goto LABEL_437;
      }

      for (jj = 0; jj != 144; jj += 24)
      {
        v298 = &v480[jj];
        *v298 = 0;
        *(v298 + 1) = 0;
        *(v298 + 4) = 0;
        *(v298 + 10) = -1;
      }

      v299 = 0;
      v437 = v270;
      do
      {
        v300 = v296[13];
        if (v300 <= v103)
        {
          v479 = 0;
          v515 = 0u;
          memset(&buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v504 = 136315906;
          *&v504[4] = "operator[]";
          *&v504[12] = 1024;
          *&v504[14] = 476;
          *&v504[18] = 2048;
          *&v504[20] = v103;
          *&v504[28] = 2048;
          *&v504[30] = v300;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_449:
          re::internal::assertLog(6, v306, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v300, v458);
          _os_crash();
          __break(1u);
          goto LABEL_450;
        }

        v301 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 8, *(v270 + v296[14]));
        v302 = &v480[v299];
        *v302 = *v301;
        *(v302 + 14) = *(v301 + 14);
        v299 += 24;
        v270 = (v270 + 8);
      }

      while (v299 != 144);
      v453 = *(ii + 212);
      if (v453 == 1)
      {
        LOBYTE(v443) = *(ii + 213);
      }

      PointLightFaceLookatOrientations = re::getPointLightFaceLookatOrientations(v301);
      v451 = PointLightFaceLookatOrientations;
      v458 = v304;
      v300 = 0;
      v305 = v480;
      while (1)
      {
        if (*(v305 + 10) == -1)
        {
          v314 = *re::graphicsLogObjects(PointLightFaceLookatOrientations);
          PointLightFaceLookatOrientations = os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT);
          if (PointLightFaceLookatOrientations)
          {
            v315 = ii + 9;
            if (*(ii + 8))
            {
              v315 = *(ii + 16);
            }

            buf.columns[0].i32[0] = 136315138;
            *(buf.columns[0].i64 + 4) = v315;
            _os_log_impl(&dword_1E1C61000, v314, OS_LOG_TYPE_DEFAULT, "Failed to allocate shadow map face for point light %s: not enough free space in shadow map atlas.", &buf, 0xCu);
          }

          goto LABEL_435;
        }

        v270 = v448;
        re::ShadowView::ShadowView(&buf, v448);
        if (v458 <= v300)
        {
          goto LABEL_449;
        }

        v307 = *&v451[v300];
        v308 = *(&v451[v300] + 1);
        buf.columns[2] = *(ii + 80);
        buf.columns[3].i64[0] = v307;
        buf.columns[3].i64[1] = v308;
        v309 = ii + 9;
        if (*(ii + 8))
        {
          v309 = *(ii + 16);
        }

        re::DynamicString::format(v448, "%s_face%u", v504, v309, v300);
        re::DynamicString::operator=(&buf, v504);
        if (*v504 && (v504[8] & 1) != 0)
        {
          (*(**v504 + 40))();
        }

        v310 = atan2f(*v305, (*v305 - 3));
        *&v504[15] = *(ii + 128);
        *&v504[31] = *(ii + 144);
        *&v504[47] = *(ii + 160);
        *&v504[63] = *(ii + 176);
        if (v522)
        {
          v311 = *(ii + 128);
          v312 = *(ii + 144);
          v313 = *(ii + 176);
          v525 = *(ii + 160);
          v526 = v313;
          v523 = v311;
          v524 = v312;
        }

        else
        {
          v522 = 1;
          v523 = *&v504[15];
          v524 = *&v504[31];
          v525 = *&v504[47];
          v526 = *&v504[63];
        }

        if ((v527 & 1) == 0)
        {
          re::Projection::decompose(&v515, ii + 128);
        }

        re::Projection::setFovY(&v515, v310 + v310);
        if ((v530 & 1) == 0)
        {
          v530 = 1;
        }

        v531 = v264;
        if (v529[0])
        {
          if (v453)
          {
            goto LABEL_431;
          }

          v529[0] = 0;
        }

        else if (v453)
        {
          v529[0] = 1;
LABEL_431:
          v529[1] = v443;
        }

        *v528 = *v305;
        *&v528[14] = *(v305 + 14);
        re::DynamicArray<re::ShadowView>::add(&v471, &buf);
        PointLightFaceLookatOrientations = buf.columns[0].i64[0];
        if (buf.columns[0].i64[0] && (buf.columns[0].i8[8] & 1) != 0)
        {
          PointLightFaceLookatOrientations = (*(*buf.columns[0].i64[0] + 40))();
        }

LABEL_435:
        ++v300;
        v305 += 24;
        if (v300 == 6)
        {
          v295 = v296[2];
          v270 = v437;
LABEL_437:
          ++v103;
          v270 = (v270 + 48);
          if (v103 >= v295)
          {
LABEL_438:
            v293 = v434 + 1;
            v263 = v440;
            if (v434 + 1 == v432)
            {
              goto LABEL_439;
            }

            goto LABEL_395;
          }

          goto LABEL_397;
        }
      }
    }

    break;
  }

  v285 = 0;
  while (1)
  {
    v466 = v285;
    v286 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v263 + 21), v285);
    v287 = *(v286 + 16);
    if (v287)
    {
      break;
    }

LABEL_392:
    v285 = v466 + 1;
    v263 = v440;
    if (v466 + 1 == v458)
    {
      goto LABEL_393;
    }
  }

  p_buf = v286;
  v288 = 0;
  ii = 0;
  while (2)
  {
    v289 = *(p_buf + 32);
    v103 = v289 + v288;
    if (*(v289 + v288 + 224) != 1)
    {
      goto LABEL_391;
    }

    v270 = *(p_buf + 48);
    if (v270 <= ii)
    {
      goto LABEL_452;
    }

    if (*(*(p_buf + 56) + ii) != 1)
    {
LABEL_391:
      ++ii;
      v288 += 240;
      if (ii >= v287)
      {
        goto LABEL_392;
      }

      continue;
    }

    break;
  }

  v290 = *(p_buf + 104);
  if (v290 > ii)
  {
    v291 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 8, *(*(p_buf + 112) + 8 * ii));
    v292 = v289 + v288;
    LOBYTE(v476[0]) = 0;
    v475[0] = *(v289 + v288 + 220);
    if (v475[0] == 1)
    {
      v475[1] = *(v292 + 221);
    }

    re::LightContextBuilder::buildShadowViews(re::PerFrameAllocator *)const::$_0::operator()(v448, v289 + v288, v291, (v292 + 128), v476, 0, v264, v475, &v471);
    v287 = *(p_buf + 16);
    goto LABEL_391;
  }

  *v504 = 0;
  v515 = 0u;
  memset(&buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v480 = 136315906;
  *&v480[4] = "operator[]";
  *&v480[12] = 1024;
  *&v480[14] = 476;
  *&v480[18] = 2048;
  *&v480[20] = ii;
  *&v480[28] = 2048;
  *&v480[30] = v290;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_462:
  v323 = p_buf + 96;
  v427 = p_buf + 96 + 352 * *(p_buf + 80);
  v430 = *(p_buf + 80);
LABEL_467:
  v433 = v322;
  while (1)
  {
LABEL_468:
    v435 = v321;
    v438 = v323;
    if (v322)
    {
      if (v430 == v321)
      {
        goto LABEL_562;
      }

      v326 = *(v323 + 16) + 352 * v321 + 8;
    }

    else
    {
      if (v323 == v427)
      {
        goto LABEL_562;
      }

      v326 = v323 + 8;
    }

    v444 = *(v326 + 208);
    v447 = v326;
    if (v444)
    {
      break;
    }

LABEL_515:
    v387 = a1;
    v441 = *(v326 + 264);
    if (v441)
    {
      v320 = 0;
      do
      {
        v445 = v320;
        v388 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[](v326 + 224, v320);
        v389 = *(v388 + 16);
        if (v389)
        {
          v390 = v388;
          p_buf = 0;
          v330 = 128;
          do
          {
            v391 = v390[4];
            if (*(v391 + v330 + 86) == 1)
            {
              v331 = v390[6];
              if (v331 <= p_buf)
              {
                goto LABEL_559;
              }

              if (*(v390[7] + p_buf) == 1)
              {
                v331 = v390[10];
                if (v331 <= p_buf)
                {
                  goto LABEL_561;
                }

                v392 = re::DataArray<re::TextureAtlasTile>::get(*(v387 + 2960) + 104, *(v390[11] + 8 * p_buf));
                v393 = *v392;
                *v499 = *(v392 + 4);
                v394 = *(v392 + 20);
                v103 = v391 + v330;
                v395 = *(v391 + v330 + 64);
                v396 = re::getPointLightFaceLookatOrientations(v392);
                if (v394 == 0xFFFF)
                {
                  v404 = *re::graphicsLogObjects(v396);
                  v387 = a1;
                  if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
                  {
                    v405 = v391 + v330 - 119;
                    if (*(v391 + v330 - 120))
                    {
                      v405 = *(v391 + v330 - 112);
                    }

                    buf.columns[0].i32[0] = v442;
                    *(buf.columns[0].i64 + 4) = v405;
                    _os_log_impl(&dword_1E1C61000, v404, OS_LOG_TYPE_DEFAULT, "Failed to allocate filter map face for point light %s: not enough free space in filter map atlas.", &buf, 0xCu);
                  }
                }

                else
                {
                  re::FilterView::FilterView(&buf, v448);
                  v532 = v395;
                  buf.columns[2] = *(v103 - 48);
                  buf.columns[3].i64[1] = 0x3F80000000000000;
                  buf.columns[3].i64[0] = 0;
                  re::DynamicString::format("_face%u", &v471, 0);
                  re::DynamicString::operator+((v391 + v330 - 128), &v471, v480);
                  if (v480[8])
                  {
                    v397 = *&v480[16];
                  }

                  else
                  {
                    v397 = &v480[9];
                  }

                  v398 = strlen(v397);
                  v467 = v397;
                  v468 = v398;
                  re::DynamicString::operator=(&buf, &v467);
                  if (*v480)
                  {
                    if (v480[8])
                    {
                      (*(**v480 + 40))();
                    }

                    memset(v480, 0, 32);
                  }

                  if (v471.i64[0] && (v471.i8[8] & 1) != 0)
                  {
                    (*(*v471.i64[0] + 40))();
                  }

                  v399 = atan2f(v393, (v393 - 3));
                  v400 = (v391 + v330);
                  *&v480[15] = *(v391 + v330);
                  *&v480[31] = *(v391 + v330 + 16);
                  *&v480[47] = *(v391 + v330 + 32);
                  *&v480[63] = *(v391 + v330 + 48);
                  if (v522)
                  {
                    v401 = *v400;
                    v402 = v400[1];
                    v403 = v400[3];
                    v525 = v400[2];
                    v526 = v403;
                    v523 = v401;
                    v524 = v402;
                  }

                  else
                  {
                    v522 = 1;
                    v523 = *&v480[15];
                    v524 = *&v480[31];
                    v525 = *&v480[47];
                    v526 = *&v480[63];
                  }

                  if ((v527 & 1) == 0)
                  {
                    re::Projection::decompose(&v515, v400);
                  }

                  re::Projection::setFovY(&v515, v399 + v399);
                  *v528 = v393;
                  *&v528[4] = *v499;
                  *&v528[20] = v394;
                  re::DynamicArray<re::FilterView>::add(v504, &buf);
                  re::DynamicArray<re::MeshScene>::deinit(v529);
                  if (buf.columns[0].i64[0] && (buf.columns[0].i8[8] & 1) != 0)
                  {
                    (*(*buf.columns[0].i64[0] + 40))();
                  }

                  v387 = a1;
                }

                v389 = v390[2];
              }
            }

            ++p_buf;
            v330 += 224;
          }

          while (p_buf < v389);
        }

        v320 = v445 + 1;
        v326 = v447;
      }

      while (v445 + 1 != v441);
    }

    v322 = v433;
    if (v433)
    {
      v323 = v438;
      v406 = *(v438 + 32);
      v407 = v435 + 1;
      if (v406 <= v435 + 1)
      {
        v321 = (v435 + 1);
      }

      else
      {
        v321 = v406;
      }

      while (v321 != v407)
      {
        v408 = v407;
        v409 = *(*(v438 + 16) + 352 * v407++);
        if (v409 < 0)
        {
          v321 = v408;
          goto LABEL_468;
        }
      }
    }

    else
    {
      v321 = v435;
      v323 = v438 + 352;
    }
  }

  v103 = 0;
  while (1)
  {
    v327 = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[](v326 + 168, v103);
    if (*(v327 + 16))
    {
      break;
    }

LABEL_514:
    ++v103;
    v326 = v447;
    if (v103 == v444)
    {
      goto LABEL_515;
    }
  }

  v328 = v327;
  v329 = 0;
  v330 = 0;
  while (2)
  {
    v331 = v328[4];
    v332 = (v331 + v329);
    if (*(v331 + v329 + 223) != 1)
    {
LABEL_513:
      ++v330;
      v329 += 240;
      if (v330 >= v328[2])
      {
        goto LABEL_514;
      }

      continue;
    }

    break;
  }

  p_buf = v328[6];
  if (p_buf > v330)
  {
    if (*(v328[7] + v330) == 1)
    {
      p_buf = v328[10];
      if (p_buf <= v330)
      {
        goto LABEL_560;
      }

      v333 = re::DataArray<re::TextureAtlasTile>::get(*(a1 + 2960) + 104, *(v328[11] + 8 * v330));
      if (v333[10] == -1)
      {
        v369 = *re::graphicsLogObjects(v333);
        if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
        {
          v370 = v331 + v329 + 9;
          if (*(v331 + v329 + 8))
          {
            v370 = *(v331 + v329 + 16);
          }

          buf.columns[0].i32[0] = v442;
          *(buf.columns[0].i64 + 4) = v370;
          _os_log_impl(&dword_1E1C61000, v369, OS_LOG_TYPE_DEFAULT, "Failed to allocate filter map for light %s: not enough free space in filter map atlas.", &buf, 0xCu);
        }
      }

      else
      {
        p_buf = v333;
        v334 = v331 + v329;
        v335 = *(v334 + 192);
        re::FilterView::FilterView(&buf, v448);
        v532 = v335;
        re::DynamicString::operator=(&buf, v332);
        v336 = *p_buf;
        *&v528[14] = *(p_buf + 14);
        *v528 = v336;
        v338 = *(v334 + 32);
        v337 = *(v334 + 36);
        v339 = *(v334 + 40);
        v340 = *(v334 + 48);
        v341 = *(v334 + 52);
        v342 = *(v334 + 56);
        v343 = *(v334 + 64);
        v344 = *(v334 + 68);
        v345 = *(v334 + 72);
        v346 = (v338 + v341) + v345;
        if (v346 >= 0.0)
        {
          v371 = sqrtf(v346 + 1.0);
          v372 = v371 + v371;
          v373 = vrecpe_f32(COERCE_UNSIGNED_INT(v371 + v371));
          v374 = vmul_f32(v373, vrecps_f32(COERCE_UNSIGNED_INT(v371 + v371), v373));
          v375 = vmul_f32(v374, vrecps_f32(COERCE_UNSIGNED_INT(v371 + v371), v374)).f32[0];
          v380.f32[0] = (v342 - v344) * v375;
          v381 = (v343 - v339) * v375;
          v382 = (v337 - v340) * v375;
          v383 = v372 * 0.25;
        }

        else if (v338 < v341 || v338 < v345)
        {
          v348 = 1.0 - v338;
          v349 = v341 < v345;
          v350 = v341 < v345;
          v351 = sqrtf((v348 - v341) + v345);
          *&v352 = v351 + v351;
          v353 = vrecpe_f32(v352);
          v354 = vmul_f32(v353, vrecps_f32(v352, v353));
          v355 = vmul_f32(v354, vrecps_f32(v352, v354)).f32[0];
          v356 = (v339 + v343) * v355;
          v357 = v342 + v344;
          v358 = v357 * v355;
          v359 = *&v352 * 0.25;
          v360 = (v337 - v340) * v355;
          v361 = sqrtf(v341 + (v348 - v345));
          *&v362 = v361 + v361;
          v363 = vrecpe_f32(v362);
          v364 = vmul_f32(v363, vrecps_f32(v362, v363));
          v365 = vmul_f32(v364, vrecps_f32(v362, v364)).f32[0];
          v366 = (v337 + v340) * v365;
          v367 = *&v362 * 0.25;
          v368 = v357 * v365;
          v383 = (v343 - v339) * v365;
          if (v349)
          {
            v380.f32[0] = v356;
          }

          else
          {
            v380.f32[0] = v366;
          }

          if (v350)
          {
            v381 = v358;
          }

          else
          {
            v381 = v367;
          }

          if (v350)
          {
            v382 = v359;
          }

          else
          {
            v382 = v368;
          }

          if (v350)
          {
            v383 = v360;
          }
        }

        else
        {
          v376 = sqrtf(v338 + ((1.0 - v341) - v345));
          *&v377 = v376 + v376;
          v378 = vrecpe_f32(v377);
          v379 = vmul_f32(v378, vrecps_f32(v377, v378));
          v379.f32[0] = vmul_f32(v379, vrecps_f32(v377, v379)).f32[0];
          v380.f32[0] = *&v377 * 0.25;
          v381 = (v337 + v340) * v379.f32[0];
          v382 = (v339 + v343) * v379.f32[0];
          v383 = (v342 - v344) * v379.f32[0];
        }

        v380.f32[1] = v381;
        v380.i64[1] = __PAIR64__(LODWORD(v383), LODWORD(v382));
        buf.columns[2] = *(v334 + 80);
        buf.columns[3] = v380;
        *&v480[15] = *(v334 + 128);
        *&v480[31] = *(v334 + 144);
        *&v480[47] = *(v334 + 160);
        *&v480[63] = *(v334 + 176);
        if (v522)
        {
          v384 = *(v334 + 128);
          v385 = *(v334 + 144);
          v386 = *(v334 + 176);
          v525 = *(v334 + 160);
          v526 = v386;
          v523 = v384;
          v524 = v385;
        }

        else
        {
          v522 = 1;
          v523 = *&v480[15];
          v524 = *&v480[31];
          v525 = *&v480[47];
          v526 = *&v480[63];
        }

        if ((v527 & 1) == 0)
        {
          re::Projection::decompose(&v515, v334 + 128);
        }

        *&v528[12] = vadd_s32(*&v528[12], 0x300000003);
        *v528 = vadd_s32(*v528, 0x500000005);
        re::DynamicArray<re::FilterView>::add(v504, &buf);
        re::DynamicArray<re::MeshScene>::deinit(v529);
        if (buf.columns[0].i64[0] && (buf.columns[0].i8[8] & 1) != 0)
        {
          (*(*buf.columns[0].i64[0] + 40))(buf.columns[0].i64[0], buf.columns[1].i64[0]);
        }
      }
    }

    goto LABEL_513;
  }

  v471.i64[0] = 0;
  v515 = 0u;
  memset(&buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v480 = 136315906;
  *&v480[4] = "operator[]";
  *&v480[12] = 1024;
  *&v480[14] = 476;
  *&v480[18] = 2048;
  *&v480[20] = v330;
  *&v480[28] = 2048;
  *&v480[30] = p_buf;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_559:
  v471.i64[0] = 0;
  v515 = 0u;
  memset(&buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v480 = 136315906;
  *&v480[4] = "operator[]";
  *&v480[12] = 1024;
  *&v480[14] = 476;
  *&v480[18] = 2048;
  *&v480[20] = p_buf;
  *&v480[28] = 2048;
  *&v480[30] = v331;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_560:
  v471.i64[0] = 0;
  v515 = 0u;
  memset(&buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v480 = 136315906;
  *&v480[4] = "operator[]";
  *&v480[12] = 1024;
  *&v480[14] = 476;
  *&v480[18] = 2048;
  *&v480[20] = v330;
  *&v480[28] = 2048;
  *&v480[30] = p_buf;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_561:
  v471.i64[0] = 0;
  v515 = 0u;
  memset(&buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v480 = 136315906;
  *&v480[4] = "operator[]";
  *&v480[12] = 1024;
  *&v480[14] = 476;
  *&v480[18] = 2048;
  *&v480[20] = p_buf;
  *&v480[28] = 2048;
  *&v480[30] = v331;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_562:
  v410 = *(v419 + 40);
  if (v410)
  {
    for (kk = 0; kk != v410; ++kk)
    {
      v412 = *(v419 + 40);
      if (v412 <= kk)
      {
        re::internal::assertLog(6, v320, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, kk, v412);
        _os_crash();
        __break(1u);
LABEL_580:
        v471.i64[0] = 0;
        v515 = 0u;
        memset(&buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v480 = 136315906;
        *&v480[4] = "operator[]";
        *&v480[12] = 1024;
        *&v480[14] = 866;
        *&v480[18] = 2048;
        *&v480[20] = p_buf;
        *&v480[28] = 2048;
        *&v480[30] = v103;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      p_buf = kk >> 2;
      v103 = *(v419 + 8);
      if (v103 <= kk >> 2)
      {
        goto LABEL_580;
      }

      v413 = *(v419 + 32);
      if (*(v419 + 16))
      {
        v413 = v419 + 24;
      }

      v414 = *(v413 + 8 * p_buf) + 40 * (kk & 3);
      v415 = *(v414 + 16);
      if (v415)
      {
        v416 = *(v414 + 32);
        v103 = v416 + 736 * v415;
        do
        {
          if (*&v504[16])
          {
            p_buf = *&v504[32] + 640;
            v417 = 688 * *&v504[16];
            do
            {
              if (*(p_buf + 40) == *(v416 + 512) && *p_buf)
              {
                re::DynamicArray<re::MeshScene>::add(p_buf, v416);
              }

              p_buf += 688;
              v417 -= 688;
            }

            while (v417);
          }

          v416 += 736;
        }

        while (v416 != v103);
      }
    }
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v420 + 40, v504);
  return re::DynamicArray<re::FilterView>::deinit(v504);
}

uint64_t *re::FixedArray<re::FixedArray<re::LightContextBuilder::ShadowTileInfo>>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void re::Projection::setFovX(re::Projection *this, float a2)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  v5 = *(this + 5);
  v6 = *(this + 6);
  v7 = (v3 - v4) / (v5 - v6);
  v8 = (v3 + v4) * 0.5;
  v9 = (v5 + v6) * 0.5;
  v10 = *(this + 1);
  v11 = tanf(a2 * 0.5) * v10;
  *(this + 5) = v9 + (v11 / v7);
  *(this + 6) = v9 - (v11 / v7);
  *(this + 3) = v8 - v11;
  *(this + 4) = v8 + v11;
  re::Projection::cullingProjectionMatrix(this, v14);
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  v12 = v14[1];
  *(this + 6) = v14[0];
  *(this + 7) = v12;
  v13 = v14[3];
  *(this + 8) = v14[2];
  *(this + 9) = v13;
  if ((*(this + 160) & 1) == 0)
  {
    re::Projection::decompose(this, v14);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::ShadowView>::add(_anonymous_namespace_ *result, uint64_t a2)
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

        result = re::DynamicArray<re::ShadowView>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::ShadowView>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 656 * v5;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = *(a2 + 24);
  v12 = *(a2 + 8);
  *v11 = *a2;
  *a2 = 0;
  v13 = *(a2 + 16);
  *(a2 + 24) = 0;
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  v16 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v16;
  v18 = *(a2 + 96);
  v17 = *(a2 + 112);
  v19 = *(a2 + 80);
  *(v11 + 128) = *(a2 + 128);
  *(v11 + 96) = v18;
  *(v11 + 112) = v17;
  *(v11 + 80) = v19;
  *(v11 + 64) = *(a2 + 64);
  LODWORD(v13) = *(a2 + 144);
  *(v11 + 144) = v13;
  if (v13 == 1)
  {
    v20 = *(a2 + 160);
    v21 = *(a2 + 176);
    v22 = *(a2 + 208);
    *(v11 + 192) = *(a2 + 192);
    *(v11 + 208) = v22;
    *(v11 + 160) = v20;
    *(v11 + 176) = v21;
  }

  v23 = *(a2 + 224);
  *(v11 + 224) = v23;
  if (v23 == 1)
  {
    v24 = *(a2 + 240);
    v25 = *(a2 + 256);
    v26 = *(a2 + 288);
    *(v11 + 272) = *(a2 + 272);
    *(v11 + 288) = v26;
    *(v11 + 240) = v24;
    *(v11 + 256) = v25;
  }

  v27 = *(a2 + 304);
  *(v11 + 320) = *(a2 + 320);
  *(v11 + 304) = v27;
  v28 = *(a2 + 336);
  v29 = *(a2 + 352);
  v30 = *(a2 + 384);
  *(v11 + 368) = *(a2 + 368);
  *(v11 + 384) = v30;
  *(v11 + 336) = v28;
  *(v11 + 352) = v29;
  v32 = *(a2 + 432);
  v31 = *(a2 + 448);
  v33 = *(a2 + 416);
  *(v11 + 464) = *(a2 + 464);
  *(v11 + 432) = v32;
  *(v11 + 448) = v31;
  *(v11 + 416) = v33;
  *(v11 + 400) = *(a2 + 400);
  v34 = *(a2 + 480);
  *(v11 + 480) = v34;
  if (v34 == 1)
  {
    v35 = *(a2 + 496);
    v36 = *(a2 + 512);
    v37 = *(a2 + 544);
    *(v11 + 528) = *(a2 + 528);
    *(v11 + 544) = v37;
    *(v11 + 496) = v35;
    *(v11 + 512) = v36;
  }

  v38 = *(a2 + 560);
  *(v11 + 560) = v38;
  if (v38 == 1)
  {
    v39 = *(a2 + 576);
    v40 = *(a2 + 592);
    v41 = *(a2 + 624);
    *(v11 + 608) = *(a2 + 608);
    *(v11 + 624) = v41;
    *(v11 + 576) = v39;
    *(v11 + 592) = v40;
  }

  v42 = *(a2 + 640);
  *(v11 + 640) = v42;
  if (v42 == 1)
  {
    *(v11 + 641) = *(a2 + 641);
  }

  v43 = *(a2 + 644);
  *(v11 + 644) = v43;
  if (v43 == 1)
  {
    *(v11 + 648) = *(a2 + 648);
  }

  *(v11 + 652) = *(a2 + 652);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

re::ShadowView *re::ShadowView::ShadowView(re::ShadowView *this, re::Allocator *a2)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = a2;
  *(this + 1) = 0;
  re::DynamicString::setCapacity(this, 0);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0x3F80000000000000;
  *(this + 16) = 0;
  *(this + 68) = xmmword_1E30806D0;
  *(this + 84) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 92) = 0;
  *(this + 6) = xmmword_1E30476A0;
  *(this + 28) = 1;
  *(this + 15) = 0;
  *(this + 64) = 0;
  *(this + 144) = 0;
  *(this + 224) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 162) = -1;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 0;
  *(this + 404) = xmmword_1E30806D0;
  *(this + 420) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 428) = 0;
  *(this + 27) = xmmword_1E30476A0;
  *(this + 112) = 1;
  *(this + 57) = 0;
  *(this + 232) = 0;
  *(this + 480) = 0;
  *(this + 560) = 0;
  *(this + 640) = 0;
  *(this + 644) = 0;
  *(this + 652) = 0;
  return this;
}

void re::Projection::setFovY(re::Projection *this, float a2)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  v5 = *(this + 5);
  v6 = *(this + 6);
  v7 = (v3 - v4) / (v5 - v6);
  v8 = (v3 + v4) * 0.5;
  v9 = (v5 + v6) * 0.5;
  v10 = *(this + 1);
  v11 = tanf(a2 * 0.5) * v10;
  *(this + 5) = v9 + v11;
  *(this + 6) = v9 - v11;
  *(this + 3) = v8 - (v11 * v7);
  *(this + 4) = v8 + (v11 * v7);
  re::Projection::cullingProjectionMatrix(this, v14);
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  v12 = v14[1];
  *(this + 6) = v14[0];
  *(this + 7) = v12;
  v13 = v14[3];
  *(this + 8) = v14[2];
  *(this + 9) = v13;
  if ((*(this + 160) & 1) == 0)
  {
    re::Projection::decompose(this, v14);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::FilterView>::add(_anonymous_namespace_ *result, uint64_t a2)
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

        result = re::DynamicArray<re::FilterView>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::FilterView>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 688 * v5;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = *(a2 + 24);
  v12 = *(a2 + 8);
  *v11 = *a2;
  *a2 = 0;
  v13 = *(a2 + 16);
  *(a2 + 24) = 0;
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  v16 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v16;
  v18 = *(a2 + 96);
  v17 = *(a2 + 112);
  v19 = *(a2 + 80);
  *(v11 + 128) = *(a2 + 128);
  *(v11 + 96) = v18;
  *(v11 + 112) = v17;
  *(v11 + 80) = v19;
  *(v11 + 64) = *(a2 + 64);
  LODWORD(v13) = *(a2 + 144);
  *(v11 + 144) = v13;
  if (v13 == 1)
  {
    v20 = *(a2 + 160);
    v21 = *(a2 + 176);
    v22 = *(a2 + 208);
    *(v11 + 192) = *(a2 + 192);
    *(v11 + 208) = v22;
    *(v11 + 160) = v20;
    *(v11 + 176) = v21;
  }

  v23 = *(a2 + 224);
  *(v11 + 224) = v23;
  if (v23 == 1)
  {
    v24 = *(a2 + 240);
    v25 = *(a2 + 256);
    v26 = *(a2 + 288);
    *(v11 + 272) = *(a2 + 272);
    *(v11 + 288) = v26;
    *(v11 + 240) = v24;
    *(v11 + 256) = v25;
  }

  v27 = *(a2 + 304);
  *(v11 + 320) = *(a2 + 320);
  *(v11 + 304) = v27;
  v28 = *(a2 + 336);
  v29 = *(a2 + 352);
  v30 = *(a2 + 384);
  *(v11 + 368) = *(a2 + 368);
  *(v11 + 384) = v30;
  *(v11 + 336) = v28;
  *(v11 + 352) = v29;
  v32 = *(a2 + 432);
  v31 = *(a2 + 448);
  v33 = *(a2 + 416);
  *(v11 + 464) = *(a2 + 464);
  *(v11 + 432) = v32;
  *(v11 + 448) = v31;
  *(v11 + 416) = v33;
  *(v11 + 400) = *(a2 + 400);
  v34 = *(a2 + 480);
  *(v11 + 480) = v34;
  if (v34 == 1)
  {
    v35 = *(a2 + 496);
    v36 = *(a2 + 512);
    v37 = *(a2 + 544);
    *(v11 + 528) = *(a2 + 528);
    *(v11 + 544) = v37;
    *(v11 + 496) = v35;
    *(v11 + 512) = v36;
  }

  v38 = *(a2 + 560);
  *(v11 + 560) = v38;
  if (v38 == 1)
  {
    v39 = *(a2 + 576);
    v40 = *(a2 + 592);
    v41 = *(a2 + 624);
    *(v11 + 608) = *(a2 + 608);
    *(v11 + 624) = v41;
    *(v11 + 576) = v39;
    *(v11 + 592) = v40;
  }

  *(v11 + 672) = 0;
  *(v11 + 640) = 0;
  *(v11 + 656) = 0;
  *(v11 + 648) = 0;
  *(v11 + 664) = 0;
  *(v11 + 640) = *(a2 + 640);
  *(a2 + 640) = 0;
  *(v11 + 648) = *(a2 + 648);
  *(a2 + 648) = 0;
  v42 = *(v11 + 656);
  *(v11 + 656) = *(a2 + 656);
  *(a2 + 656) = v42;
  v43 = *(v11 + 672);
  *(v11 + 672) = *(a2 + 672);
  *(a2 + 672) = v43;
  ++*(a2 + 664);
  ++*(v11 + 664);
  *(v11 + 680) = *(a2 + 680);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::FilterView::FilterView(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *a1 = a2;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x3F80000000000000;
  *(a1 + 64) = 0;
  *(a1 + 68) = xmmword_1E30806D0;
  *(a1 + 84) = 0xBDCCCCCD3DCCCCCDLL;
  *(a1 + 92) = 0;
  *(a1 + 96) = xmmword_1E30476A0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 224) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 324) = -1;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 404) = xmmword_1E30806D0;
  *(a1 + 420) = 0xBDCCCCCD3DCCCCCDLL;
  *(a1 + 428) = 0;
  *(a1 + 432) = xmmword_1E30476A0;
  *(a1 + 448) = 1;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 480) = 0;
  *(a1 + 560) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 640) = a2;
  re::DynamicArray<re::MeshScene>::setCapacity((a1 + 640), 0);
  ++*(a1 + 664);
  *(a1 + 680) = 0;
  return a1;
}

__n128 re::BucketArray<re::LightContext,16ul>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 16 * v5)
  {
    re::BucketArray<re::LightContext,16ul>::setBucketsCapacity(a1, (v4 + 16) >> 4);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 4));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 168 * (v4 & 0xF));
  v8->n128_u64[0] = 0;
  v8->n128_u64[1] = 0;
  v8[1].n128_u64[0] = 0;
  v9 = a2->n128_u64[1];
  v8->n128_u64[0] = a2->n128_u64[0];
  v8->n128_u64[1] = v9;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  v10 = v8[1].n128_u64[0];
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v10;
  v8[1].n128_u64[1] = 0;
  v8[2].n128_u64[0] = 0;
  v8[2].n128_u64[1] = 0;
  v11 = a2[2].n128_u64[0];
  v8[1].n128_u64[1] = a2[1].n128_u64[1];
  v8[2].n128_u64[0] = v11;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  v12 = v8[2].n128_u64[1];
  v8[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v12;
  v8[3].n128_u64[0] = 0;
  v8[3].n128_u64[1] = 0;
  v8[4].n128_u64[0] = 0;
  v13 = a2[3].n128_u64[1];
  v8[3].n128_u64[0] = a2[3].n128_u64[0];
  v8[3].n128_u64[1] = v13;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  v14 = v8[4].n128_u64[0];
  v8[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v14;
  v8[4].n128_u64[1] = 0;
  v8[5].n128_u64[0] = 0;
  v8[5].n128_u64[1] = 0;
  v15 = a2[5].n128_u64[0];
  v8[4].n128_u64[1] = a2[4].n128_u64[1];
  v8[5].n128_u64[0] = v15;
  a2[4].n128_u64[1] = 0;
  a2[5].n128_u64[0] = 0;
  v16 = v8[5].n128_u64[1];
  v8[5].n128_u64[1] = a2[5].n128_u64[1];
  a2[5].n128_u64[1] = v16;
  v8[6].n128_u64[0] = 0;
  v8[6].n128_u64[1] = 0;
  v8[7].n128_u64[0] = 0;
  v17 = a2[6].n128_u64[1];
  v8[6].n128_u64[0] = a2[6].n128_u64[0];
  v8[6].n128_u64[1] = v17;
  a2[6].n128_u64[0] = 0;
  a2[6].n128_u64[1] = 0;
  v18 = v8[7].n128_u64[0];
  v8[7].n128_u64[0] = a2[7].n128_u64[0];
  a2[7].n128_u64[0] = v18;
  v8[7].n128_u64[1] = 0;
  v8[8].n128_u64[0] = 0;
  v8[8].n128_u64[1] = 0;
  v19 = a2[8].n128_u64[0];
  v8[7].n128_u64[1] = a2[7].n128_u64[1];
  v8[8].n128_u64[0] = v19;
  a2[7].n128_u64[1] = 0;
  a2[8].n128_u64[0] = 0;
  v20 = v8[8].n128_u64[1];
  v8[8].n128_u64[1] = a2[8].n128_u64[1];
  a2[8].n128_u64[1] = v20;
  result = a2[9];
  v8[10].n128_u8[0] = a2[10].n128_u8[0];
  v8[9] = result;
  return result;
}

uint64_t re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>@<X0>(uint64_t result@<X0>, unsigned __int16 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  v8 = *a2;
  if (*(v7 + 72 * v6 + 4) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v9 = *(v7 + 72 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 72 * v9 + 4) == v8)
      {
        break;
      }

      v9 = *(v7 + 72 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::LightContextBuilder::Result::Result(uint64_t a1, re::Allocator *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  re::DynamicArray<re::ShadowView>::setCapacity(a1, 0);
  ++*(a1 + 24);
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = a2;
  re::DynamicArray<re::FilterView>::setCapacity((a1 + 40), 0);
  ++*(a1 + 64);
  re::LightContexts::LightContexts((a1 + 80), a2);
  return a1;
}

_anonymous_namespace_ *re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!*(a1 + 2876))
  {
    v8 = (a1 + 16);
    v7 = *(a1 + 16);
    if (!v7)
    {
LABEL_20:
      LOWORD(v24) = *a2;
      v25 = 0;
      v26 = 0;
      v27 = 1;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      v31 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v25, a3);
      v32 = 0;
      v33 = 0;
      v34 = 1;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v38 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v32, a3 + 56);
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v43 = 0;
      v44 = 0;
      v42 = 0;
      v45 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v39, a3 + 112);
      v46 = 0;
      v47 = 0;
      v48 = 1;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      v52 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v46, a3 + 168);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      v57 = 0;
      v58 = 0;
      v56 = 0;
      v59 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v53, a3 + 224);
      v60 = 0;
      v61 = 0;
      v62 = 1;
      v64 = 0;
      v65 = 0;
      v63 = 0;
      v66 = 0;
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(&v60, a3 + 280);
      v67 = *(a3 + 336);
      if (*v8 < 8uLL)
      {
        v17 = a1 + 32 + 352 * *v8;
        *v17 = v24;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 1;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 32) = 0;
        *(v17 + 56) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 8, &v25);
        *(v17 + 64) = 0;
        *(v17 + 72) = 0;
        *(v17 + 80) = 1;
        *(v17 + 96) = 0;
        *(v17 + 104) = 0;
        *(v17 + 88) = 0;
        *(v17 + 112) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 64, &v32);
        *(v17 + 120) = 0;
        *(v17 + 128) = 0;
        *(v17 + 136) = 1;
        *(v17 + 152) = 0;
        *(v17 + 160) = 0;
        *(v17 + 144) = 0;
        *(v17 + 168) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 120, &v39);
        *(v17 + 176) = 0;
        *(v17 + 184) = 0;
        *(v17 + 192) = 1;
        *(v17 + 208) = 0;
        *(v17 + 216) = 0;
        *(v17 + 200) = 0;
        *(v17 + 224) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 176, &v46);
        *(v17 + 232) = 0;
        *(v17 + 240) = 0;
        v17 += 232;
        *(v17 + 16) = 1;
        *(v17 + 32) = 0;
        *(v17 + 40) = 0;
        *(v17 + 24) = 0;
        *(v17 + 48) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17, &v53);
        *(v17 + 56) = 0;
        *(v17 + 64) = 0;
        *(v17 + 72) = 1;
        *(v17 + 88) = 0;
        *(v17 + 96) = 0;
        *(v17 + 80) = 0;
        *(v17 + 104) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v17 + 56, &v60);
        *(v17 + 112) = v67;
        ++*(a1 + 16);
        ++*(a1 + 24);
        re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v60);
        if (v60)
        {
          v18 = v62;
          if ((v62 & 1) == 0)
          {
            (*(*v60 + 40))();
            v18 = v62;
          }

          v60 = 0;
          v61 = 0;
          v62 = (v18 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v53);
        if (v53)
        {
          v19 = v55;
          if ((v55 & 1) == 0)
          {
            (*(*v53 + 40))();
            v19 = v55;
          }

          v53 = 0;
          v54 = 0;
          v55 = (v19 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v46);
        if (v46)
        {
          v20 = v48;
          if ((v48 & 1) == 0)
          {
            (*(*v46 + 40))();
            v20 = v48;
          }

          v46 = 0;
          v47 = 0;
          v48 = (v20 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v39);
        if (v39)
        {
          v21 = v41;
          if ((v41 & 1) == 0)
          {
            (*(*v39 + 40))();
            v21 = v41;
          }

          v39 = 0;
          v40 = 0;
          v41 = (v21 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v32);
        if (v32)
        {
          v22 = v34;
          if ((v34 & 1) == 0)
          {
            (*(*v32 + 40))();
            v22 = v34;
          }

          v32 = 0;
          v33 = 0;
          v34 = (v22 | 1) + 2;
        }

        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v25);
        if (v25 && (v27 & 1) == 0)
        {
          (*(*v25 + 40))();
        }

        if (*v8)
        {
          return (a1 + 32 + 352 * (*v8 - 1) + 8);
        }

        re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, *v8 - 1, 0);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v9 = 352 * v7;
    result = (a1 + 40);
    v10 = 352 * v7;
    do
    {
      if (*(result - 4) == *a2)
      {
        return result;
      }

      result = (result + 352);
      v10 -= 352;
    }

    while (v10);
    if ((v7 & 0xFFFFFFF8) == 0)
    {
      goto LABEL_20;
    }

    if (!*(a1 + 2848))
    {
      v11 = *a1;
      if (!*a1)
      {
      }

      re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::init(a1 + 2848, v11, 16);
      if (!*v8)
      {
        goto LABEL_19;
      }

      v9 = 352 * *v8;
    }

    v12 = 0;
    do
    {
      v13 = a1 + v12;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v14 = 0xBF58476D1CE4E5B9 * *(a1 + v12 + 32);
      re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(&v24, a1 + 2848, (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31));
      if (HIDWORD(v25) == 0x7FFFFFFF)
      {
        v15 = re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::allocEntry(a1 + 2848, v25, v24);
        *(v15 + 4) = *(v13 + 32);
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *(v15 + 24) = 1;
        *(v15 + 56) = 0;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 32) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 8, v13 + 40);
        *(v15 + 64) = 0;
        *(v15 + 72) = 0;
        *(v15 + 80) = 1;
        *(v15 + 96) = 0;
        *(v15 + 104) = 0;
        *(v15 + 88) = 0;
        *(v15 + 112) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 64, v13 + 96);
        *(v15 + 120) = 0;
        *(v15 + 128) = 0;
        *(v15 + 136) = 1;
        *(v15 + 152) = 0;
        *(v15 + 160) = 0;
        *(v15 + 144) = 0;
        *(v15 + 168) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 120, v13 + 152);
        *(v15 + 176) = 0;
        *(v15 + 184) = 0;
        *(v15 + 192) = 1;
        *(v15 + 208) = 0;
        *(v15 + 216) = 0;
        *(v15 + 200) = 0;
        *(v15 + 224) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 176, v13 + 208);
        *(v15 + 232) = 0;
        *(v15 + 240) = 0;
        v15 += 232;
        *(v15 + 16) = 1;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 24) = 0;
        *(v15 + 48) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15, v13 + 264);
        *(v15 + 56) = 0;
        *(v15 + 64) = 0;
        *(v15 + 72) = 1;
        *(v15 + 88) = 0;
        *(v15 + 96) = 0;
        *(v15 + 80) = 0;
        *(v15 + 104) = 0;
        re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v15 + 56, v13 + 320);
        *(v15 + 112) = *(v13 + 376);
        ++*(a1 + 2888);
      }

      v12 += 352;
    }

    while (v9 != v12);
LABEL_19:
    re::DynamicInlineArray<re::KeyValuePair<unsigned short,re::LightContextBuilder::LightArrays>,8ul>::clear((a1 + 16));
  }

  return re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::add(a1 + 2848, a2, a3);
}

uint64_t re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::add(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(&v10, a1, v6 ^ (v6 >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 352 * HIDWORD(v11) + 8;
  }

  v7 = re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::allocEntry(a1, v11, v10);
  *(v7 + 4) = *a2;
  *(v7 + 8) = 0;
  v8 = v7 + 8;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 8, a3);
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 88) = 0;
  *(v7 + 112) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 64, a3 + 56);
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 1;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 120, a3 + 112);
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 1;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  *(v7 + 200) = 0;
  *(v7 + 224) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 176, a3 + 168);
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  v7 += 232;
  *(v7 + 16) = 1;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  *(v7 + 48) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7, a3 + 224);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 1;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  *(v7 + 104) = 0;
  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v7 + 56, a3 + 280);
  *(v7 + 112) = *(a3 + 336);
  ++*(a1 + 40);
  return v8;
}

void re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 352 * v10, 16);
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

uint64_t re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *a2;
  v4 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v3 = a3 % *(a2 + 24);
  v5 = *(*(a2 + 8) + 4 * v3);
  if (v5 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v6 = *(a2 + 16);
  v7 = 0xBF58476D1CE4E5B9 * *(v6 + 352 * v5 + 4);
  if (((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31)) == a3)
  {
    v4 = *(*(a2 + 8) + 4 * v3);
LABEL_5:
    v5 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v6 + 352 * v5) & 0x7FFFFFFF;
  v4 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      v10 = 0xBF58476D1CE4E5B9 * *(v6 + 352 * v8 + 4);
      if (((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31)) == a3)
      {
        break;
      }

      v8 = *(v6 + 352 * v9) & 0x7FFFFFFF;
      v5 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v5 = v9;
        goto LABEL_6;
      }
    }

    v4 = v9;
  }

LABEL_6:
  *result = a3;
  *(result + 8) = v3;
  *(result + 12) = v4;
  *(result + 16) = v5;
  return result;
}

uint64_t re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v13 + 4)) ^ ((0xBF58476D1CE4E5B9 * *(v13 + 4)) >> 27));
                v19 = re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::allocEntry(a1, (v18 ^ (v18 >> 31)) % *(a1 + 24));
                *(v19 + 4) = *(v13 + 4);
                *(v19 + 8) = 0;
                *(v19 + 16) = 0;
                *(v19 + 24) = 1;
                *(v19 + 56) = 0;
                *(v19 + 40) = 0;
                *(v19 + 48) = 0;
                *(v19 + 32) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 8, v13 + 8);
                *(v19 + 64) = 0;
                *(v19 + 72) = 0;
                *(v19 + 80) = 1;
                *(v19 + 96) = 0;
                *(v19 + 104) = 0;
                *(v19 + 88) = 0;
                *(v19 + 112) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 64, v13 + 64);
                *(v19 + 120) = 0;
                *(v19 + 128) = 0;
                *(v19 + 136) = 1;
                *(v19 + 152) = 0;
                *(v19 + 160) = 0;
                *(v19 + 144) = 0;
                *(v19 + 168) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 120, v13 + 120);
                *(v19 + 176) = 0;
                *(v19 + 184) = 0;
                *(v19 + 192) = 1;
                *(v19 + 208) = 0;
                *(v19 + 216) = 0;
                *(v19 + 200) = 0;
                *(v19 + 224) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 176, v13 + 176);
                *(v19 + 232) = 0;
                *(v19 + 240) = 0;
                v19 += 232;
                *(v19 + 16) = 1;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 48) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19, v13 + 232);
                *(v19 + 56) = 0;
                *(v19 + 64) = 0;
                *(v19 + 72) = 1;
                *(v19 + 88) = 0;
                *(v19 + 96) = 0;
                *(v19 + 80) = 0;
                *(v19 + 104) = 0;
                re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(v19 + 56, v13 + 288);
                *(v19 + 112) = *(v13 + 344);
              }

              ++v17;
              v13 += 352;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 352 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 352 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 352 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 352 * v4;
}

uint64_t re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::swap(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v9 = 0;
  v10 = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a1 + 8))
    {
      re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::move(v7, a1);
    }

    else
    {
      v7[0] = *a1;
      *(a1 + 16) = v4 + 2;
      v8 = 3;
    }
  }

  else
  {
    v8 = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(v7, a1);
  }

  re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::operator=(a1, a2);
  re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::operator=(a2, v7);
  result = v7[0];
  if (v7[0] && (v8 & 1) == 0)
  {
    result = (*(*v7[0] + 40))();
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  ++*(a1 + 48);
  ++*(a2 + 48);
  return result;
}

uint64_t re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::operator=(uint64_t a1, uint64_t a2)
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
        re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::move(a1, a2);
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

void *re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(a1, v4);
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

void *re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v4, a2);
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

void *re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 160, 0);
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

              result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v13 + 1);
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
    re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void re::FixedArray<re::FixedArray<re::LightContextBuilder::ShadowTileInfo>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}

uint64_t re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
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

void *re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

              result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v13 + 1);
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
    re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void re::DynamicArray<re::DirectionalLightInfo>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::DirectionalLightInfo>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::DirectionalLightInfo *,re::DirectionalLightInfo *,re::DirectionalLightInfo *>(*(a2 + 32), *(a2 + 32) + 160 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 160 * v8;
      v12 = 160 * v4;
      do
      {
        v13 = v9 + v11;
        v14 = re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        v15 = *(v9 + v11 + 48);
        *(v14 + 2) = *(v9 + v11 + 32);
        *(v14 + 3) = v15;
        v16 = *(v9 + v11 + 64);
        v17 = *(v9 + v11 + 80);
        v18 = *(v9 + v11 + 96);
        *(v14 + 108) = *(v9 + v11 + 108);
        *(v14 + 5) = v17;
        *(v14 + 6) = v18;
        *(v14 + 4) = v16;
        *(v14 + 124) = *(v9 + v11 + 124);
        v19 = *(v9 + v11 + 132);
        *(v14 + 132) = v19;
        if (v19 == 1)
        {
          *(v14 + 133) = *(v13 + 133);
        }

        v20 = *(v13 + 134);
        *(v14 + 75) = *(v13 + 150);
        *(v14 + 134) = v20;
        v9 += 160;
        v12 -= 160;
        v10 += 160;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::DirectionalLightInfo *,re::DirectionalLightInfo *,re::DirectionalLightInfo *>(*(a2 + 32), *(a2 + 32) + 160 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + 160 * v4);
      v7 = 160 * v5 - 160 * v4;
      do
      {
        re::DynamicString::deinit(v6);
        v6 = (v6 + 160);
        v7 -= 160;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::DirectionalLightInfo>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 160 * v2;
    do
    {
      re::DynamicString::deinit(v3);
      v3 = (v3 + 160);
      v4 -= 160;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::DirectionalLightInfo *,re::DirectionalLightInfo *,re::DirectionalLightInfo *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = re::DynamicString::operator=((a3 + v6), (a1 + v6));
      v8 = *(a1 + v6 + 48);
      *(v7 + 2) = *(a1 + v6 + 32);
      *(v7 + 3) = v8;
      v9 = *(a1 + v6 + 64);
      v10 = *(a1 + v6 + 80);
      v11 = *(a1 + v6 + 96);
      *(v7 + 108) = *(a1 + v6 + 108);
      *(v7 + 5) = v10;
      *(v7 + 6) = v11;
      *(v7 + 4) = v9;
      *(v7 + 124) = *(a1 + v6 + 124);
      if (*(v7 + 132))
      {
        if (*(a1 + v6 + 132))
        {
          *(a3 + v6 + 133) = *(a1 + v6 + 133);
        }

        else
        {
          *(v7 + 132) = 0;
        }
      }

      else if (*(a1 + v6 + 132))
      {
        *(v7 + 132) = 1;
        *(a3 + v6 + 133) = *(a1 + v6 + 133);
      }

      v12 = a3 + v6;
      result = *(a1 + v6 + 134);
      *(v12 + 150) = *(a1 + v6 + 150);
      *(v12 + 134) = result;
      v6 += 160;
    }

    while (a1 + v6 != a2);
  }

  return result;
}

void *re::FixedArray<re::DataArrayHandle<re::TextureAtlasTile>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 8 * a3, 8);
  v4[2] = result;
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
      *result++ = 0xFFFFFFFFLL;
      --v6;
    }

    while (v6);
  }

  *result = 0xFFFFFFFFLL;
  return result;
}

void *re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 480, 0);
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

              result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, v13 + 1);
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
    re::DynamicOverflowArray<re::LightContextBuilder::AmbientLightBucket *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
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

uint64_t re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v13 + 4)) ^ ((0xBF58476D1CE4E5B9 * *(v13 + 4)) >> 27));
                v18 = re::HashTable<unsigned short,re::AABB,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(a1, (v17 ^ (v17 >> 31)) % *(a1 + 24));
                *(v18 + 4) = *(v13 + 4);
                v19 = *(v13 + 32);
                *(v18 + 16) = *(v13 + 16);
                *(v18 + 32) = v19;
              }

              v13 += 48;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 48 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 48 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 48 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 48 * v4;
}

_anonymous_namespace_ *re::SmallHashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,8ul,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false>::add(uint64_t a1, unsigned __int16 *a2, __int128 *a3)
{
  __src[34] = *MEMORY[0x1E69E9840];
  if (*(a1 + 2236))
  {
LABEL_2:

    return re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::add(a1 + 2208, a2, a3);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 272 * v7;
    v9 = (a1 + 32);
    v10 = *a2;
    result = (a1 + 48);
    v11 = 272 * v7;
    do
    {
      if (*(result - 8) == v10)
      {
        return result;
      }

      result = (result + 272);
      v11 -= 272;
    }

    while (v11);
    if ((v7 & 0xFFFFFFF8) != 0)
    {
      if (!*(a1 + 2208))
      {
        v12 = *a1;
        if (!*a1)
        {
        }

        re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(a1 + 2208, v12, 16);
        v13 = *(a1 + 16);
        if (!v13)
        {
          goto LABEL_18;
        }

        v8 = 272 * v13;
      }

      do
      {
        memset(__src, 0, 24);
        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *v9) ^ ((0xBF58476D1CE4E5B9 * *v9) >> 27));
        re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::findEntry<unsigned short>(__src, a1 + 2208, *v9, v14 ^ (v14 >> 31));
        if (HIDWORD(__src[1]) == 0x7FFFFFFF)
        {
          v15 = re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(a1 + 2208, __src[1], __src[0]);
          *(v15 + 4) = *v9;
          v16 = *(v9 + 13);
          v17 = *(v9 + 14);
          v18 = *(v9 + 16);
          *(v15 + 240) = *(v9 + 15);
          *(v15 + 256) = v18;
          *(v15 + 208) = v16;
          *(v15 + 224) = v17;
          v19 = *(v9 + 9);
          v20 = *(v9 + 10);
          v21 = *(v9 + 12);
          *(v15 + 176) = *(v9 + 11);
          *(v15 + 192) = v21;
          *(v15 + 144) = v19;
          *(v15 + 160) = v20;
          v22 = *(v9 + 5);
          v23 = *(v9 + 6);
          v24 = *(v9 + 8);
          *(v15 + 112) = *(v9 + 7);
          *(v15 + 128) = v24;
          *(v15 + 80) = v22;
          *(v15 + 96) = v23;
          v25 = *(v9 + 1);
          v26 = *(v9 + 2);
          v27 = *(v9 + 4);
          *(v15 + 48) = *(v9 + 3);
          *(v15 + 64) = v27;
          *(v15 + 16) = v25;
          *(v15 + 32) = v26;
          ++*(a1 + 2248);
        }

        v9 += 136;
        v8 -= 272;
      }

      while (v8);
LABEL_18:
      *(a1 + 16) = 0;
      ++*(a1 + 24);
      goto LABEL_2;
    }

    v36 = a3[13];
    *(&__src[25] + 6) = a3[12];
    *(&__src[27] + 6) = v36;
    v37 = a3[15];
    *(&__src[29] + 6) = a3[14];
    *(&__src[31] + 6) = v37;
    v38 = a3[9];
    *(&__src[17] + 6) = a3[8];
    *(&__src[19] + 6) = v38;
    v39 = a3[11];
    *(&__src[21] + 6) = a3[10];
    *(&__src[23] + 6) = v39;
    v40 = a3[5];
    *(&__src[9] + 6) = a3[4];
    *(&__src[11] + 6) = v40;
    v41 = a3[7];
    *(&__src[13] + 6) = a3[6];
    *(&__src[15] + 6) = v41;
    v42 = a3[1];
    *(&__src[1] + 6) = *a3;
    *(&__src[3] + 6) = v42;
    v43 = a3[3];
    *(&__src[5] + 6) = a3[2];
    *(&__src[7] + 6) = v43;
    if (v7 >= 8)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      result = _os_crash();
      __break(1u);
      return result;
    }
  }

  else
  {
    v28 = a3[13];
    *(&__src[25] + 6) = a3[12];
    *(&__src[27] + 6) = v28;
    v29 = a3[15];
    *(&__src[29] + 6) = a3[14];
    *(&__src[31] + 6) = v29;
    v30 = a3[9];
    *(&__src[17] + 6) = a3[8];
    *(&__src[19] + 6) = v30;
    v31 = a3[11];
    *(&__src[21] + 6) = a3[10];
    *(&__src[23] + 6) = v31;
    v32 = a3[5];
    *(&__src[9] + 6) = a3[4];
    *(&__src[11] + 6) = v32;
    v33 = a3[7];
    *(&__src[13] + 6) = a3[6];
    *(&__src[15] + 6) = v33;
    v34 = a3[1];
    *(&__src[1] + 6) = *a3;
    *(&__src[3] + 6) = v34;
    v35 = a3[3];
    *(&__src[5] + 6) = a3[2];
    LOWORD(v10) = *a2;
    *(&__src[7] + 6) = v35;
  }

  v44 = (a1 + 32 + 272 * v7);
  *v44 = v10;
  memcpy(v44 + 1, __src, 0x10EuLL);
  v46 = *(a1 + 16);
  ++*(a1 + 24);
  *(a1 + 16) = v46 + 1;
  if (v46 == -1)
  {
    re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
    _os_crash();
    __break(1u);
  }

  return (a1 + 32 + 272 * v46 + 16);
}

uint64_t re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::add(uint64_t a1, unsigned __int16 *a2, __int128 *a3)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::findEntry<unsigned short>(&v21, a1, *a2, v6 ^ (v6 >> 31));
  if (HIDWORD(v22) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 272 * HIDWORD(v22) + 16;
  }

  v7 = re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(a1, v22, v21);
  *(v7 + 4) = *a2;
  result = v7 + 16;
  v9 = a3[12];
  v10 = a3[13];
  v11 = a3[15];
  *(v7 + 240) = a3[14];
  *(v7 + 256) = v11;
  *(v7 + 208) = v9;
  *(v7 + 224) = v10;
  v12 = a3[8];
  v13 = a3[9];
  v14 = a3[11];
  *(v7 + 176) = a3[10];
  *(v7 + 192) = v14;
  *(v7 + 144) = v12;
  *(v7 + 160) = v13;
  v15 = a3[4];
  v16 = a3[5];
  v17 = a3[7];
  *(v7 + 112) = a3[6];
  *(v7 + 128) = v17;
  *(v7 + 80) = v15;
  *(v7 + 96) = v16;
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v20;
  *(v7 + 16) = v18;
  *(v7 + 32) = v19;
  ++*(a1 + 40);
  return result;
}

void re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 272 * v10, 16);
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

uint64_t re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::findEntry<unsigned short>(uint64_t result, uint64_t a2, unsigned __int16 a3, unint64_t a4)
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
  if (*(v7 + 272 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 272 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 272 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 272 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v37, 0, 36);
          *&v37[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::init(v37, v9, v8);
          v11 = *v37;
          *v37 = *a1;
          *a1 = v11;
          v12 = *&v37[16];
          v13 = *(a1 + 16);
          *&v37[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v37[24];
          *&v37[24] = *(a1 + 24);
          v14 = *&v37[32];
          *(a1 + 24) = v15;
          ++*&v37[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v13 + 4)) ^ ((0xBF58476D1CE4E5B9 * *(v13 + 4)) >> 27));
                v18 = re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::allocEntry(a1, (v17 ^ (v17 >> 31)) % *(a1 + 24));
                *(v18 + 4) = *(v13 + 4);
                v19 = *(v13 + 208);
                v20 = *(v13 + 224);
                v21 = *(v13 + 256);
                *(v18 + 240) = *(v13 + 240);
                *(v18 + 256) = v21;
                *(v18 + 208) = v19;
                *(v18 + 224) = v20;
                v22 = *(v13 + 144);
                v23 = *(v13 + 160);
                v24 = *(v13 + 192);
                *(v18 + 176) = *(v13 + 176);
                *(v18 + 192) = v24;
                *(v18 + 144) = v22;
                *(v18 + 160) = v23;
                v25 = *(v13 + 80);
                v26 = *(v13 + 96);
                v27 = *(v13 + 128);
                *(v18 + 112) = *(v13 + 112);
                *(v18 + 128) = v27;
                *(v18 + 80) = v25;
                *(v18 + 96) = v26;
                v28 = *(v13 + 16);
                v29 = *(v13 + 32);
                v30 = *(v13 + 64);
                *(v18 + 48) = *(v13 + 48);
                *(v18 + 64) = v30;
                *(v18 + 16) = v28;
                *(v18 + 32) = v29;
              }

              v13 += 272;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::deinit(v37);
        }
      }

      else
      {
        if (v8)
        {
          v33 = 2 * v7;
        }

        else
        {
          v33 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v31 = *(a1 + 16);
    v32 = *(v31 + 272 * v4);
  }

  else
  {
    v31 = *(a1 + 16);
    v32 = *(v31 + 272 * v4);
    *(a1 + 36) = v32 & 0x7FFFFFFF;
  }

  v34 = 272 * v4;
  *(v31 + v34) = v32 | 0x80000000;
  v35 = *(a1 + 8);
  *(v31 + v34) = *(v35 + 4 * a2) | 0x80000000;
  *(v35 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v31 + 272 * v4;
}

double re::HashTable<unsigned short,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,false,false>::deinit(uint64_t *a1)
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

        v4 += 68;
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

uint64_t re::FixedArray<re::LightContextBuilder::ShadowTileInfo>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 96 * a3, 16);
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
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *result = 0uLL;
      *(result + 80) = 0xFFFFFFFFLL;
      result += 96;
      --v6;
    }

    while (v6);
  }

  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 80) = 0xFFFFFFFFLL;
  return result;
}

uint64_t re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 2)) + 120 * (a2 & 3);
}

void re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
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

uint64_t re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v28, v9, v8);
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
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = re::HashTable<unsigned long long,re::LightContextBuilder::buildLightContexts(re::PerFrameAllocator *,re::MeshSceneArrays const&,re::BucketArray<re::DynamicArray<re::VFXScene>,4ul> const*)::VFXInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                *(v19 + 8) = *v17;
                v20 = *(v17 + 8);
                v21 = *(v17 + 40);
                *(v19 + 32) = *(v17 + 24);
                *(v19 + 48) = v21;
                *(v19 + 16) = v20;
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(v28);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + (v4 << 6));
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + (v4 << 6));
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v4 << 6;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + (v4 << 6);
}

void *re::DynamicArray<re::SingleCullingFrustum>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SingleCullingFrustum>::setCapacity(v5, a2);
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
        v10 = v8 + 240 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 2) = 0;
          re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, v8);
          v12 = *(v8 + 112);
          v13 = *(v8 + 128);
          v14 = *(v8 + 160);
          *(v11 + 9) = *(v8 + 144);
          *(v11 + 10) = v14;
          *(v11 + 7) = v12;
          *(v11 + 8) = v13;
          v15 = *(v8 + 176);
          v16 = *(v8 + 192);
          v17 = *(v8 + 224);
          *(v11 + 13) = *(v8 + 208);
          *(v11 + 14) = v17;
          *(v11 + 11) = v15;
          *(v11 + 12) = v16;
          *v8 = 0;
          ++*(v8 + 8);
          v8 += 240;
          v11 += 30;
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

uint64_t re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 2)) + 8 * (a2 & 3);
}

void re::StencilPtInjectionNode::execute(re::StencilPtInjectionNode *this, re::RenderGraphContext *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken != -1)
  {
    dispatch_once(&re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken, &__block_literal_global_36);
  }

  if ((re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder & 1) == 0)
  {
    v4 = &v47;
    v5 = re::RenderGraphDataStore::tryGet<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
    v6 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
    v42[0] = 0;
    if ((*(v6 + 862) & 1) == 0)
    {
      re::RenderGraphContext::acquireManagedRenderCommandEncoder(buf, a2, 0);
      LOBYTE(v47) = 1;
      v48 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      re::Optional<re::mtl::RenderCommandEncoder>::operator=(v42, &v47);
      if (v47 == 1)
      {
        re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v48);
      }

      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(buf);
      (v44[20])(*v44, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Portal" encoding:4]);
    }

    v41 = 256;
    if (*(this + 264) == 1)
    {
      re::buildCullingFrustum(v6 + 64, (v6 + 144), *(v6 + 890), &v41, &v47, v7, v8);
      if (!v5)
      {
        goto LABEL_70;
      }
    }

    else
    {
      bzero(&v47, 0x230uLL);
      if (!v5)
      {
        goto LABEL_70;
      }
    }

    if (*(v5 + 16))
    {
      v9 = *(v5 + 24);
    }

    else
    {
      v9 = (v5 + 17);
    }

    v10 = strlen(v9);
    if (v10)
    {
      MurmurHash3_x64_128(v9, v10, 0, buf);
      v10 = ((*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf);
    }

    RenderGraphDataPipe = re::RenderGraphContext::tryGetRenderGraphDataPipe(a2, v10);
    if (RenderGraphDataPipe)
    {
      v12 = (*(*RenderGraphDataPipe + 832))(RenderGraphDataPipe);
      v33 = *(v12 + 40);
      v34 = v12;
      if (!v33)
      {
LABEL_64:
        v4 = &v47;
        if (v42[0] == 1)
        {
          (v44[21])(*v44, sel_popDebugGroup);
        }

        goto LABEL_70;
      }

      v13 = 0;
      v14 = 0;
      v36 = this;
      v38 = this + 272;
      LODWORD(v40) = this + 272;
LABEL_20:
      v35 = v14;
      isBoundingBoxInsidePlanes = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v34, v14);
      v17 = *(isBoundingBoxInsidePlanes + 6972);
      if (v17)
      {
        v18 = isBoundingBoxInsidePlanes + 6944;
        v40 = *(isBoundingBoxInsidePlanes + 6976);
        v4 = 0;
        if (v40)
        {
          v19 = *(isBoundingBoxInsidePlanes + 6960);
          do
          {
            if ((*v19 & 0x80000000) != 0)
            {
              goto LABEL_28;
            }

            v19 += 216;
            ++v4;
          }

          while (v40 != v4);
          v4 = *(isBoundingBoxInsidePlanes + 6976);
        }

        else
        {
          LODWORD(v40) = 0;
        }

LABEL_28:
        v37 = isBoundingBoxInsidePlanes + 6944;
      }

      else
      {
        v18 = isBoundingBoxInsidePlanes + 32;
        v37 = isBoundingBoxInsidePlanes + 32 + 864 * *(isBoundingBoxInsidePlanes + 16);
      }

      v39 = *(isBoundingBoxInsidePlanes + 6972);
      while (1)
      {
LABEL_30:
        if (v17)
        {
          if (v40 == v4)
          {
            goto LABEL_63;
          }

          v20 = (*(v18 + 16) + 864 * v4 + 16);
        }

        else
        {
          if (v18 == v37)
          {
LABEL_63:
            v14 = v35 + 1;
            if (v35 + 1 != v33)
            {
              goto LABEL_20;
            }

            goto LABEL_64;
          }

          v20 = (v18 + 16);
        }

        if ((v20[34].i32[3] & *(v6 + 904)) != 0)
        {
          if (*(this + 264) == 1)
          {
            if (v47 == 1)
            {
              *&v46 = v49;
              *(&v46 + 1) = *(&v48 + 1);
              re::MeshScene::meshSceneBoundingBox(v20 + 2, v16, buf);
              isBoundingBoxInsidePlanes = re::isBoundingBoxInsidePlanes(buf, &v46, v20 + 10);
              v17 = v39;
              if (!isBoundingBoxInsidePlanes)
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v47 != 2)
              {
                goto LABEL_55;
              }

              *&v46 = v49;
              *(&v46 + 1) = *(&v48 + 1);
              re::MeshScene::meshSceneBoundingBox(v20 + 2, v16, buf);
              isBoundingBoxInsidePlanes = re::isBoundingBoxInsidePlanes(buf, &v46, v20 + 10);
              if (!isBoundingBoxInsidePlanes)
              {
                if (v47 <= 1)
                {
                  re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v47);
                  _os_crash();
                  __break(1u);
                  goto LABEL_80;
                }

                v45[0] = v50;
                v45[1] = v49[12];
                re::MeshScene::meshSceneBoundingBox(v20 + 2, v21, buf);
                isBoundingBoxInsidePlanes = re::isBoundingBoxInsidePlanes(buf, v45, v20 + 10);
                v17 = v39;
                if ((isBoundingBoxInsidePlanes & 1) == 0)
                {
                  goto LABEL_55;
                }
              }
            }
          }

          if (re::PortalUserDefaults::maximumPortalCount(void)::onceToken != -1)
          {
            dispatch_once(&re::PortalUserDefaults::maximumPortalCount(void)::onceToken, &__block_literal_global_30);
          }

          if (re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount && v13 >= re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount)
          {
            v4 = &v47;
            if ((atomic_exchange(re::StencilPtInjectionNode::execute(re::RenderGraphContext &)::__FILE____LINE___logged, 1u) & 1) == 0)
            {
              v18 = *re::graphicsLogObjects(isBoundingBoxInsidePlanes);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                if (re::PortalUserDefaults::maximumPortalCount(void)::onceToken == -1)
                {
LABEL_69:
                  v27 = re::PortalUserDefaults::maximumPortalCount(void)::maximumPortalCount;
                  *(v4 + 560) = 67109120;
                  *(v4 + 564) = v27;
                  break;
                }

LABEL_80:
                dispatch_once(&re::PortalUserDefaults::maximumPortalCount(void)::onceToken, &__block_literal_global_30);
                goto LABEL_69;
              }
            }

            break;
          }

          if ((v42[0] & 1) == 0)
          {
            re::RenderGraphContext::acquireManagedRenderCommandEncoder(&v46, a2, 0);
            buf[0] = 1;
            *&buf[8] = v46;
            v46 = 0uLL;
            re::Optional<re::mtl::RenderCommandEncoder>::operator=(v42, buf);
            if (buf[0] == 1)
            {
              re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&buf[8]);
            }

            re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v46);
            (v44[20])(*v44, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Portal" encoding:4]);
            this = v36;
          }

          ++v13;
          v22 = v38;
          if (!*(this + 36))
          {
            v22 = 0;
          }

          buf[0] = *(this + 264);
          buf[1] = 0;
          buf[2] = *(this + 312);
          buf[3] = 0;
          buf[4] = *(this + 314);
          *&buf[5] = 1;
          buf[7] = 0;
          *&buf[8] = 0;
          *&buf[16] = v22;
          v53 = 0;
          v54 = 0;
          isBoundingBoxInsidePlanes = re::StencilPtInjectionNode::executeForPortal(v20, a2, *(this + 2), *(this + 3), *(this + 4), buf);
          v17 = v39;
        }

LABEL_55:
        if (v17)
        {
          v23 = *(v18 + 32);
          v24 = v4 + 1;
          if (v23 <= v4 + 1)
          {
            v4 = (v4 + 1);
          }

          else
          {
            v4 = v23;
          }

          while (v4 != v24)
          {
            v25 = v24;
            v26 = *(*(v18 + 16) + 864 * v24++);
            if (v26 < 0)
            {
              v4 = v25;
              goto LABEL_30;
            }
          }
        }

        else
        {
          v18 += 864;
        }
      }
    }

LABEL_70:
    v28 = *(v4 + 240);
    if (v28)
    {
      v29 = &v50[144 * v28 + 112];
      v30 = &v51;
      do
      {
        *v30 = 0;
        ++*(v30 + 2);
        v30 += 18;
      }

      while (v30 != v29);
    }

    if (v47)
    {
      v31 = &v49[14 * v47];
      v32 = &v48 + 8;
      do
      {
        *v32 = 0;
        ++*(v32 + 2);
        v32 += 112;
      }

      while (v32 != v31);
    }

    if (v42[0] == 1)
    {
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v43);
    }
  }
}

uint64_t re::Optional<re::mtl::RenderCommandEncoder>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::mtl::RenderCommandEncoder::operator=(v3, (a2 + 8));
    }

    else
    {
      re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v4;
    *(a2 + 16) = 0;
  }

  return a1;
}

uint64_t re::StencilPtInjectionNode::executeForPortal(uint64_t a1, re::Allocator **a2, uint64_t a3, char *__s, _OWORD *a5, uint64_t a6)
{
  v137 = a3;
  v242[6] = *MEMORY[0x1E69E9840];
  v11 = strlen(__s);
  if (v11)
  {
    MurmurHash3_x64_128(__s, v11, 0, &v223);
    v12 = (v224 - 0x61C8864680B583E9 + (v223 << 6) + (v223 >> 2)) ^ v223;
  }

  else
  {
    v12 = 0;
  }

  *v140 = a6;
  v13 = strlen(a5);
  v135 = 0x9E3779B97F4A7C17;
  v14 = 0x9E3779B97F4A7C17;
  if (v13)
  {
    MurmurHash3_x64_128(a5, v13, 0, &v223);
    v14 = ((v224 - 0x61C8864680B583E9 + (v223 << 6) + (v223 >> 2)) ^ v223) - 0x61C8864680B583E9;
  }

  v133 = re::RenderGraphDataStore::get<re::SceneScope>(a2[146], ((v12 >> 2) + (v12 << 6) + v14) ^ v12);
  re::CameraData::CameraData(&v223, *(*a2 + 4));
  v15 = *(a1 + 8);
  v16 = *(*a2 + 4);
  v17 = &unk_1F5D06A20;
  v176 = &unk_1F5D06A20;
  re::DynamicString::DynamicString(&v177, v15, v16);
  v173 = &unk_1F5D03570;
  *&v174 = 134217472;
  *(&v174 + 1) = 134217472;
  v18 = strlen(*(a1 + 8));
  v19 = 0x9E3779B97F4A7C17;
  if (v18)
  {
    MurmurHash3_x64_128(*(a1 + 8), v18, 0, v199);
    v19 = ((*(&v199[0] + 1) - 0x61C8864680B583E9 + (*&v199[0] << 6) + (*&v199[0] >> 2)) ^ *&v199[0]) - 0x61C8864680B583E9;
  }

  v20 = re::RenderGraphDataStore::get<re::CameraData>(a2[146], *(a2[5] + 6));
  re::DynamicString::operator=(&v224, (v20 + 8));
  re::DynamicInlineArray<re::RenderCamera,2ul>::operator=(&v226, (v20 + 48));
  if (&v223 != v20)
  {
    re::DynamicInlineArray<re::Projection,2ul>::copy(&v229, (v20 + 128));
    ++v230;
  }

  re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::operator=(&v232, (v20 + 624));
  re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(&v234, (v20 + 768));
  v22 = *(v20 + 832);
  v21 = *(v20 + 848);
  v23 = *(v20 + 816);
  *&v238[10] = *(v20 + 858);
  *v238 = v21;
  v236 = v23;
  v237 = v22;
  if ((v239 & 1) == 0)
  {
    if ((*(v20 + 876) & 1) == 0)
    {
      goto LABEL_16;
    }

    v239 = 1;
LABEL_15:
    v240 = *(v20 + 880);
    goto LABEL_16;
  }

  if (*(v20 + 876))
  {
    goto LABEL_15;
  }

  v239 = 0;
LABEL_16:
  v24 = *(v20 + 884);
  *&v241[13] = *(v20 + 897);
  *v241 = v24;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v242, v20 + 920);
  v25 = strlen(a5);
  *&v199[0] = a5;
  *(&v199[0] + 1) = v25;
  re::DynamicString::operator=(&v224, v199);
  if ((atomic_load_explicit(&qword_1EE1C0990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0990))
  {
    _MergedGlobals_532 = re::hashString("MeshScenes", v106);
    __cxa_guard_release(&qword_1EE1C0990);
  }

  v26 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(a2[146], (v19 + (_MergedGlobals_532 << 6) + (_MergedGlobals_532 >> 2)) ^ _MergedGlobals_532);
  v27 = v26 + 8;
  if (!v26)
  {
    v27 = 0;
  }

  *(&v237 + 1) = v27;
  MurmurHash3_x64_128("VFXScenes", 9uLL, 0, v199);
  v28 = (*(&v199[0] + 1) - 0x61C8864680B583E9 + (*&v199[0] << 6) + (*&v199[0] >> 2)) ^ *&v199[0];
  v29 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>>>(a2[146], (v19 + (v28 << 6) + (v28 >> 2)) ^ v28);
  v30 = v29 + 8;
  if (!v29)
  {
    v30 = 0;
  }

  *v238 = v30;
  if (*(a6 + 4) == 1)
  {
    *&v174 = 50364417;
    *(&v174 + 1) = 50364417;
    v175 = 0x80;
  }

  else
  {
    v175 = 0;
    v174 = xmmword_1E31082A8;
  }

  v218 = &unk_1F5D12920;
  v219 = 0;
  if (*(a1 + 784) == 1)
  {
    v219 = 1;
    v31 = *(a1 + 816);
    v220 = *(a1 + 800);
    v221 = v31;
  }

  v134 = v19;
  v222 = *(a1 + 832);
  v171 = &unk_1F5D10F80;
  v172 = 0;
  re::CameraMatrices::CameraMatrices(v207, *(*a2 + 4), v241[6]);
  if ((atomic_load_explicit(&qword_1EE1C09A0, memory_order_acquire) & 1) == 0)
  {
    v107 = __cxa_guard_acquire(&qword_1EE1C09A0);
    if (v107)
    {
      qword_1EE1C0998 = re::getCombinedScopeHash(v107, v108, v109);
      __cxa_guard_release(&qword_1EE1C09A0);
    }
  }

  v32 = re::RenderGraphDataStore::get<re::RendererGlobals>(a2[146], qword_1EE1C0998);
  if ((atomic_load_explicit(&qword_1EE1C09B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09B0))
  {
    qword_1EE1C09A8 = re::hashString("DynamicFunctionConstants", v110);
    __cxa_guard_release(&qword_1EE1C09B0);
  }

  v132 = a1;
  v33 = qword_1EE1C09A8;
  v34 = strlen(a5);
  v35 = 0x9E3779B97F4A7C17;
  if (v34)
  {
    MurmurHash3_x64_128(a5, v34, 0, v199);
    v35 = ((*(&v199[0] + 1) - 0x61C8864680B583E9 + (*&v199[0] << 6) + (*&v199[0] >> 2)) ^ *&v199[0]) - 0x61C8864680B583E9;
  }

  v36 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a2[146], ((v33 >> 2) + (v33 << 6) + v35) ^ v33);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(a2[146], *(a2[5] + 6));
  v39 = (*(**(*a2 + 4) + 32))(*(*a2 + 4), 48, 8);
  v40 = *(*a2 + 4);
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v39, v40, 3);
  v172 = v39;
  if (v241[6])
  {
    v42 = 0;
    v43 = &v231;
    v44 = &v228;
    while (v229 > v42)
    {
      if (*(v43 + 80) == 1)
      {
        v45 = *(v43 + 7);
        v199[0] = *(v43 + 6);
        v199[1] = v45;
        v46 = *(v43 + 9);
        v199[2] = *(v43 + 8);
        v199[3] = v46;
      }

      else
      {
        re::Projection::cullingProjectionMatrix(v43, v199);
      }

      re::DynamicArray<re::Matrix4x4<float>>::add(v210, v199);
      v48 = v229;
      if (v229 <= v42)
      {
        goto LABEL_154;
      }

      re::Projection::cullingProjectionMatrix(v43, v199);
      re::DynamicArray<re::Matrix4x4<float>>::add(v214, v199);
      v50 = v226;
      if (v226 <= v42)
      {
        goto LABEL_155;
      }

      re::RenderCamera::computeInverseTransform(v44, v199);
      re::DynamicArray<re::Matrix4x4<float>>::add(v208, v199);
      ++v42;
      v44 += 2;
      v43 += 30;
      if (v42 >= v241[6])
      {
        goto LABEL_42;
      }
    }

    re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v42, v229);
    _os_crash();
    __break(1u);
LABEL_154:
    re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v42, v48);
    _os_crash();
    __break(1u);
LABEL_155:
    v126 = v42;
    v127 = v50;
    v124 = "operator[]";
    v125 = 381;
    re::internal::assertLog(6, v49, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size");
    v60 = _os_crash();
    __break(1u);
    goto LABEL_156;
  }

LABEL_42:
  v130 = &unk_1F5D06A20;
  v131 = a5;
  a5 = v199;
  v51 = *(*a2 + 4);
  *v141 = 0u;
  *v142 = 0u;
  *v143 = 0;
  *&v143[4] = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v141, v51, 3);
  *&v199[0] = a2;
  *(&v199[0] + 1) = &v223;
  *&v199[1] = v207;
  *(&v199[1] + 1) = &v176;
  *&v199[2] = v32;
  *(&v199[2] + 1) = &v171;
  *&v199[3] = v38;
  *(&v199[3] + 1) = v141;
  v17 = *v140;
  LOBYTE(v200) = **v140;
  *(&v200 + 1) = 0;
  BYTE4(v200) = 0;
  v201 = v37;
  re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(v199, v52, v53, v54, v55, v56);
  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v141);
  if ((atomic_load_explicit(&qword_1EE1C09B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09B8))
  {
    qword_1EE1C0A78 = 0x2476C06B76;
    unk_1EE1C0A80 = "VCABlur";
    qword_1EE1C0A88 = 5231452;
    unk_1EE1C0A90 = "True";
    __cxa_guard_release(&qword_1EE1C09B8);
  }

  v57 = v134;
  if ((atomic_load_explicit(&qword_1EE1C09C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09C0))
  {
    qword_1EE1C0A98 = 0x4CB6D3AA6EABE92CLL;
    unk_1EE1C0AA0 = "Transparent_BackCompat";
    qword_1EE1C0AA8 = 5231452;
    unk_1EE1C0AB0 = "True";
    __cxa_guard_release(&qword_1EE1C09C0);
  }

  if ((atomic_load_explicit(&qword_1EE1C09C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09C8))
  {
    re::StringID::StringID(v199, &qword_1EE1C0A78);
    re::StringID::StringID(&v199[1], &qword_1EE1C0A88);
    qword_1EE1C0AB8 = *&v199[0];
    unk_1EE1C0AC0 = *(v199 + 8);
    *(&v199[0] + 1) = &str_67;
    *&v199[0] = 0;
    qword_1EE1C0AD0 = *(&v199[1] + 1);
    *(&v199[1] + 1) = &str_67;
    *&v199[1] = 0;
    re::StringID::destroyString(&v199[1]);
    re::StringID::destroyString(v199);
    __cxa_guard_release(&qword_1EE1C09C8);
  }

  if ((atomic_load_explicit(&qword_1EE1C09D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09D0))
  {
    re::StringID::StringID(v199, &qword_1EE1C0A98);
    re::StringID::StringID(&v199[1], &qword_1EE1C0AA8);
    re::StringID::StringID(&v199[2], &qword_1EE1C0A78);
    re::StringID::StringID(&v199[3], &qword_1EE1C0A88);
    xmmword_1EE1C0B00 = v199[0];
    qword_1EE1C0B10 = *&v199[1];
    *(&v199[0] + 1) = &str_67;
    *&v199[0] = 0;
    v111 = *(&v199[1] + 8);
    *(&v199[1] + 1) = &str_67;
    *&v199[1] = 0;
    xmmword_1EE1C0B18 = v111;
    unk_1EE1C0B28 = *(&v199[2] + 8);
    *(&v199[2] + 1) = &str_67;
    *&v199[2] = 0;
    qword_1EE1C0B38 = *(&v199[3] + 1);
    v112 = 16;
    *(&v199[3] + 1) = &str_67;
    *&v199[3] = 0;
    do
    {
      re::StringID::destroyString(&v198[v112 / 2]);
      re::StringID::destroyString(&v196[v112]);
      v112 -= 8;
    }

    while (v112 * 4);
    __cxa_guard_release(&qword_1EE1C09D0);
    v17 = *v140;
    v57 = v134;
  }

  if (*(v17 + 5) == 1)
  {
    *&v199[0] = &xmmword_1EE1C0B00;
    *(&v199[0] + 1) = 2;
    v37 = re::Slice<re::TechniqueTagFilter>::range(v199, 0, 1uLL);
    v129 = v58;
    v138 = 0;
    v139 = 0;
  }

  else
  {
    v139 = &qword_1EE1C0AB8;
    v37 = &xmmword_1EE1C0B00;
    v129 = 2;
    v138 = 1;
  }

  if (*(v17 + 6) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C0A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A60))
    {
      qword_1EE1C0A58 = re::hashString("PlattersOnly", v114);
      __cxa_guard_release(&qword_1EE1C0A60);
    }

    MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(&v171, qword_1EE1C0A58);
    v38 = *(*a2 + 4);
    v197 = 0;
    v195 = 0;
    v194[0] = 0;
    v194[1] = 0;
    v196[0] = 0;
    *&v162 = 0;
    DWORD2(v162) = 0;
    if (MeshPartBucket)
    {
      *&v199[0] = MeshPartBucket;
      BYTE8(v199[0]) = 0;
      *(v199 + 14) = 65280;
      BYTE2(v199[1]) = 0;
      re::DynamicInlineArray<re::FilteredMeshPass,2ul>::add(&v162, v199);
      v32 = v162;
    }

    else
    {
      v32 = 0;
    }

    v44 = v163;
    v180 = v163;
    *v181 = v32;
    v60 = (a2 + 169);
    if (!*(a2 + 338))
    {
      v61 = a2 + 169;
      v62 = 0;
LABEL_56:
      *&v199[0] = 0;
      *(&v199[0] + 1) = v139;
      *&v199[1] = v138;
      *(a5 + 24) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(&v200 + 1) = re::globalAllocators(v60)[2];
      v201 = 0;
      LOWORD(v202) = 1;
      BYTE4(v202) = 0;
      v206 = 0;
      re::RenderGraphMeshNodeBase::sortMeshParts(0, v44, v32, a2, v62, v199, v38, v141, v122, v123, SHIDWORD(v123), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, 0x9E3779B97F4A7C17, v137, v138, v139, v140[0], v141[0], v141[1], v142[0], v142[1], *v143, *&v143[16], v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163[0], v164, v165, v166, v167, v168[0], v169, v170, v171, v172, v173);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v194, v141);
      v57 = v134;
      if (v141[0])
      {
        if (*v143)
        {
          (*(*v141[0] + 40))();
        }

        *v143 = 0;
        v141[1] = 0;
        v142[0] = 0;
        v141[0] = 0;
        ++LODWORD(v142[1]);
      }

      re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v199[2] + 8);
      if (v195)
      {
        v63 = (*(*v38 + 32))(v38, 328, 8);
        v198[0] = re::DrawTable::DrawTable(v63, v38, (v195 + 127) >> 7);
        v179 = re::RenderGraphDataStore::tryGet<re::VCARenderData>(a2[146], *(a2[5] + 6));
        if (*(v63 + 320) != 1)
        {
          (**(v63 + 280))(v63 + 280);
        }

        *(v63 + 280) = &unk_1F5D14BB8;
        *(v63 + 288) = v17;
        *(v63 + 296) = &v179;
        *(v63 + 304) = v198;
        *(v63 + 320) = 0;
        LOBYTE(v141[0]) = 0;
        BYTE4(v142[0]) = 0;
        *&v143[20] = 0;
        LOBYTE(v145) = 0;
        memset(v143, 0, 17);
        re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(&v180, v197, v195, a2, v63, v211, v207, 0, v62, v141);
        v57 = v134;
        if (*(v198[0] + 40))
        {
          re::DrawTableSlice::DrawTableSlice(v199, v198[0]);
          v64 = 0;
          v184 = "StencilBlurSetStencil";
          *&v185 = v199;
          *(&v185 + 1) = v209;
          v186 = v213;
          v187 = 0;
          v188 = v217;
          v189 = 2;
          *v190 = 256;
          *&v190[2] = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kWriteStInfo;
          v191 = 0;
          if (*v61)
          {
            v64 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v61, v17[1], "StencilBlurSetStencil");
          }

          v192 = v64;
          v193 = 0;
          re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v183);
          re::RenderGraphContext::encodeDrawCalls(a2, v183, &v184);
        }
      }

      else
      {
        re::RenderGraphContext::acquireManagedRenderCommandEncoder(v199, a2, 0);
        re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v199);
      }

      if (v194[0] && v197)
      {
        (*(*v194[0] + 40))();
      }

      goto LABEL_71;
    }

LABEL_156:
    v61 = v60;
    v60 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v60, v17[1], "BlurPlatterMeshDraw");
    v62 = v60;
    goto LABEL_56;
  }

LABEL_71:
  if ((atomic_load_explicit(&qword_1EE1C09E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09E0))
  {
    qword_1EE1C09D8 = re::hashString("SceneIndex", v113);
    __cxa_guard_release(&qword_1EE1C09E0);
  }

  *&v162 = re::RenderGraphContext::tryGetPipelineCompilationData(a2, *(a2[5] + 6));
  *(&v162 + 1) = &v176;
  *v163 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(a2[146], (v57 + (qword_1EE1C09D8 << 6) + (qword_1EE1C09D8 >> 2)) ^ qword_1EE1C09D8);
  v164 = &v173;
  v165 = re::RenderGraphDataStore::tryGet<re::ViewportData>(a2[146], *(a2[5] + 6));
  v166 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(a2[146], *(a2[5] + 6));
  v167 = re::RenderGraphDataStore::tryGet<re::TintContextData>(a2[146], *(a2[5] + 6));
  *v168 = re::RenderGraphDataStore::tryGet<re::VRRData>(a2[146], *(a2[5] + 6));
  v65 = re::RenderGraphDataStore::tryGet<re::TriangleFillModeData>(a2[146], *(a2[5] + 6));
  v169 = v65;
  v170 = &v218;
  v66 = v131;
  if (*(v17 + 4) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C09F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C09F0))
    {
      qword_1EE1C09E8 = re::hashString("StencilIncrement", v115);
      __cxa_guard_release(&qword_1EE1C09F0);
    }

    v141[0] = v132;
    v141[1] = v133;
    v142[0] = v131;
    v142[1] = "StencilIncrement";
    *v143 = qword_1EE1C09E8;
    v67 = *(v17 + 26);
    v68 = *(v17 + 27);
    *&v143[8] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kIncrementStInfo;
    LOBYTE(v144) = v68 | 0x80;
    v143[9] = v67;
    v143[17] = v67;
    v145 = a2;
    LOBYTE(v146) = 0;
    v200 = 0u;
    memset(v199, 0, sizeof(v199));
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v199);
    v65 = re::encodeMeshPassForPortal(v199, v141);
    if (*(v17 + 4))
    {
      if ((atomic_load_explicit(&qword_1EE1C0A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A00))
      {
        qword_1EE1C09F8 = re::hashString("PortalOcclusion", v120);
        __cxa_guard_release(&qword_1EE1C0A00);
      }

      v65 = re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(a2[146], *(a2[5] + 6));
      if (v65)
      {
        v65 = re::MeshPassInfoData::getMeshPartBucket(v65, qword_1EE1C09F8);
        if (v65)
        {
          v69 = v65;
          if (*(a2 + 338))
          {
            v70 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, "StencilPortalOcclusion", "PortalOcclusion");
          }

          else
          {
            v70 = 0;
          }

          if ((atomic_load_explicit(&qword_1EE1C0A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A70))
          {
            qword_1EE1C0A68 = re::hashString("RenderGraphDataPipeData", v121);
            __cxa_guard_release(&qword_1EE1C0A70);
          }

          v71 = qword_1EE1C0A68;
          if (*(v133 + 16))
          {
            v72 = *(v133 + 24);
          }

          else
          {
            v72 = (v133 + 17);
          }

          v73 = strlen(v72);
          if (v73)
          {
            MurmurHash3_x64_128(v72, v73, 0, v199);
            v135 = (((*(&v199[0] + 1) - 0x61C8864680B583E9 + (*&v199[0] << 6) + (*&v199[0] >> 2)) ^ *&v199[0]) - 0x61C8864680B583E9);
          }

          v65 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(a2[146], (v135 + 64 * v71 + (v71 >> 2)) ^ v71);
          if (v65)
          {
            v74 = v65;
            v75 = 0xBF58476D1CE4E5B9 * (*(v132 + 16) ^ (*(v132 + 16) >> 30));
            v65 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v65 + 48, (v132 + 16), (0x94D049BB133111EBLL * (v75 ^ (v75 >> 27))) ^ ((0x94D049BB133111EBLL * (v75 ^ (v75 >> 27))) >> 31), v199);
            if (HIDWORD(v199[0]) != 0x7FFFFFFF)
            {
              v76 = *(v74 + 8) + 40 * HIDWORD(v199[0]);
              v78 = *(v76 + 16);
              v77 = (v76 + 16);
              if (v78)
              {
                v65 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>>(a2[146], *(a2[5] + 6));
                if (v65)
                {
                  v65 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v65 + 8, v77);
                  if (v65)
                  {
                    v79 = v65;
                    v80 = re::RenderGraphDataStore::get<re::CameraMatrices>(a2[146], *(a2[5] + 6));
                    v180 = v69;
                    v181[0] = 0;
                    *&v181[6] = 65280;
                    v182 = 1;
                    v198[0] = &v180;
                    v198[1] = 1;
                    v81 = *(*a2 + 4);
                    *&v200 = 0;
                    memset(v199, 0, sizeof(v199));
                    *(&v200 + 1) = re::globalAllocators(v80)[2];
                    v201 = 0;
                    LOWORD(v202) = 1;
                    v82 = *v79;
                    v83 = *(v79 + 4);
                    v84 = *(v79 + 10);
                    BYTE4(v202) = 1;
                    v203 = v82;
                    v204 = v83;
                    v205 = v84;
                    v206 = 0;
                    re::RenderGraphMeshNodeBase::sortMeshParts(1, &v180, 1uLL, a2, v70, v199, v81, v194, v122, v123, SHIDWORD(v123), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v37, v137, v138, v139, v140[0], v141[0], v141[1], v142[0], v142[1], *v143, *&v143[16], v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163[0], v164, v165, v166, v167, v168[0], v169, v170, v171, v172, v173);
                    re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v199[2] + 8);
                    v85 = (*(*v81 + 32))(v81, 328, 8);
                    re::DrawTable::DrawTable(v85, v81, (v195 + 127) >> 7);
                    v86 = *(v80 + 64);
                    LOBYTE(v141[0]) = 0;
                    BYTE4(v142[0]) = 0;
                    *&v143[20] = 0;
                    LOBYTE(v145) = 0;
                    memset(v143, 0, 17);
                    re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v198, v197, v195, a2, v85, v86, v80, 0, v70, v141);
                    if (*(v85 + 5))
                    {
                      *(a2 + 1553) = 2;
                      re::DrawTableSlice::DrawTableSlice(v199, v85);
                      v184 = "StencilPortalOcclusion";
                      *&v185 = v199;
                      v87 = *(v80 + 80);
                      *(&v185 + 1) = *(v80 + 40);
                      v186 = v87;
                      v187 = 0;
                      v188 = *(v80 + 160);
                      v189 = 0;
                      *v190 = -2147417856;
                      *&v190[4] = 640;
                      *&v190[6] = 0x10000;
                      *&v190[10] = 41975809;
                      *&v190[14] = 0x10000;
                      v191 = 128;
                      v192 = v70;
                      v193 = 0;
                      re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v183);
                      re::RenderGraphContext::encodeDrawCalls(a2, v183, &v184);
                      *(a2 + 1553) = 0;
                    }

                    v65 = v194[0];
                    if (v194[0] && v197)
                    {
                      v65 = (*(*v194[0] + 40))();
                    }

                    v37 = v136;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(v17 + 4) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C0A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A10))
    {
      qword_1EE1C0A08 = re::hashString("DepthBufferClear", v116);
      __cxa_guard_release(&qword_1EE1C0A10);
    }

    if ((atomic_load_explicit(&qword_1EE1C0A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A20))
    {
      qword_1EE1C0A18 = re::hashString("DepthBufferClearNoColor", v117);
      __cxa_guard_release(&qword_1EE1C0A20);
    }

    v88 = *(v17 + 3) == 0;
    v89 = &qword_1EE1C0A18;
    if (!*(v17 + 3))
    {
      v89 = &qword_1EE1C0A08;
    }

    v90 = *v89;
    v91 = "DepthBufferClear";
    v141[0] = v132;
    v141[1] = v133;
    if (!v88)
    {
      v91 = "DepthBufferClearNoColor";
    }

    v142[0] = v66;
    v142[1] = v91;
    *v143 = v90;
    *&v143[8] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kDepthClearStInfo;
    LOBYTE(v144) = 0x80;
    v143[9] = 0x80;
    v143[17] = 0x80;
    v145 = a2;
    LOBYTE(v146) = 0;
    v200 = 0u;
    memset(v199, 0, sizeof(v199));
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v199);
    v65 = re::encodeMeshPassForPortal(v199, v141);
  }

  v92 = v17[2];
  if (v92)
  {
    v93 = a2;
    if (*(v92 + 2))
    {
      v94 = 0;
      v95 = 0;
      do
      {
        v96 = *(v92 + 4) + v94;
        if (*(v96 + 8))
        {
          v97 = *(v96 + 16);
        }

        else
        {
          v97 = (v96 + 9);
        }

        re::DynamicString::operator+(v199, v97, v141);
        if (*&v199[0] && (BYTE8(v199[0]) & 1) != 0)
        {
          (*(**&v199[0] + 40))();
        }

        v98 = strlen(v97);
        if (v98)
        {
          MurmurHash3_x64_128(v97, v98, 0, v199);
          v98 = (*(&v199[0] + 1) - 0x61C8864680B583E9 + (*&v199[0] << 6) + (*&v199[0] >> 2)) ^ *&v199[0];
        }

        v99 = re::MeshPassInfoData::getMeshPartBucket(&v171, v98);
        if (v99)
        {
          v184 = v99;
          LOBYTE(v185) = 0;
          *(&v185 + 6) = 65280;
          BYTE10(v185) = 1;
          *&v199[0] = &v162;
          *(&v199[0] + 1) = v137;
          if (v141[1])
          {
            v100 = v142[0];
          }

          else
          {
            v100 = &v141[1] + 1;
          }

          *&v199[1] = v100;
          *(&v199[1] + 1) = &v184;
          *&v199[2] = 1;
          *(&v199[2] + 1) = v139;
          *&v199[3] = v138;
          *(&v199[3] + 1) = v207;
          LODWORD(v200) = 2;
          WORD2(v200) = 2;
          *(&v200 + 1) = a2;
          LOBYTE(v201) = 1;
          v202 = 0;
          re::encodeMaterialPassForPortalScene(v199);
        }

        v65 = v141[0];
        if (v141[0] && (v141[1] & 1) != 0)
        {
          v65 = (*(*v141[0] + 40))();
        }

        ++v95;
        v92 = *(*v140 + 16);
        v94 += 32;
      }

      while (*(v92 + 2) > v95);
    }
  }

  else
  {
    v141[0] = 0;
    LODWORD(v141[1]) = 0;
    re::rendergraph_helper::getOcclusionMeshPasses(v199);
    re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v171, v141, v199);
    *&v199[0] = &v162;
    *(&v199[0] + 1) = v137;
    *&v199[1] = "Portal_Occlusion";
    *(&v199[1] + 1) = v142;
    *&v199[2] = v141[0];
    *(&v199[2] + 1) = v139;
    *&v199[3] = v138;
    *(&v199[3] + 1) = v207;
    LODWORD(v200) = 1;
    WORD2(v200) = 0;
    *(&v200 + 1) = a2;
    LOBYTE(v201) = 1;
    v202 = 0;
    re::encodeMaterialPassForPortalScene(v199);
    v141[0] = 0;
    LODWORD(v141[1]) = 0;
    re::rendergraph_helper::getOpaqueMeshPasses(v199);
    re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v171, v141, v199);
    *&v199[0] = &v162;
    *(&v199[0] + 1) = v137;
    *&v199[1] = "Portal_Opaque";
    *(&v199[1] + 1) = v142;
    *&v199[2] = v141[0];
    *(&v199[2] + 1) = v139;
    *&v199[3] = v138;
    *(&v199[3] + 1) = v207;
    LODWORD(v200) = 1;
    WORD2(v200) = 2;
    *(&v200 + 1) = a2;
    LOBYTE(v201) = 1;
    v202 = 0;
    re::encodeMaterialPassForPortalScene(v199);
    v141[0] = 0;
    LODWORD(v141[1]) = 0;
    re::rendergraph_helper::getSkyboxMeshPasses(v199);
    re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v171, v141, v199);
    *&v199[0] = &v162;
    *(&v199[0] + 1) = v137;
    *&v199[1] = "Portal_Skybox";
    *(&v199[1] + 1) = v142;
    *&v199[2] = v141[0];
    *(&v199[2] + 1) = v139;
    *&v199[3] = v138;
    *(&v199[3] + 1) = v207;
    LODWORD(v200) = 1;
    WORD2(v200) = 2;
    *(&v200 + 1) = a2;
    LOBYTE(v201) = 1;
    v202 = 0;
    re::encodeMaterialPassForPortalScene(v199);
    v141[0] = 0;
    LODWORD(v141[1]) = 0;
    re::rendergraph_helper::getTransparentMeshPasses(v199);
    re::rendergraph_helper::populateMeshPassArray<7ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,7ul>>(&v171, v141, v199);
    *&v199[0] = &v162;
    *(&v199[0] + 1) = v137;
    *&v199[1] = "Portal_Transparent";
    *(&v199[1] + 1) = v142;
    *&v199[2] = v141[0];
    *(&v199[2] + 1) = v37;
    *&v199[3] = v129;
    *(&v199[3] + 1) = v207;
    LODWORD(v200) = 2;
    WORD2(v200) = 2;
    *(&v200 + 1) = a2;
    LOBYTE(v201) = 1;
    v202 = 0;
    re::encodeMaterialPassForPortalScene(v199);
    v141[0] = 0;
    LODWORD(v141[1]) = 0;
    re::rendergraph_helper::getRenderOnTopMeshPasses(v199);
    re::rendergraph_helper::populateMeshPassArray<8ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,8ul>>(&v171, v141, v199);
    *&v199[0] = &v162;
    *(&v199[0] + 1) = v137;
    *&v199[1] = "Portal_RenderOnTop";
    *(&v199[1] + 1) = v142;
    *&v199[2] = v141[0];
    *(&v199[2] + 1) = v37;
    *&v199[3] = v129;
    *(&v199[3] + 1) = v207;
    LODWORD(v200) = 2;
    WORD2(v200) = 2;
    v93 = a2;
    *(&v200 + 1) = a2;
    LOBYTE(v201) = 1;
    v202 = 0;
    re::encodeMaterialPassForPortalScene(v199);
  }

  if (*(*v140 + 4) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C0A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A30))
    {
      qword_1EE1C0A28 = re::hashString("DepthBufferPatchAndStencilDecrement", v118);
      __cxa_guard_release(&qword_1EE1C0A30);
    }

    if ((atomic_load_explicit(&qword_1EE1C0A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A40))
    {
      qword_1EE1C0A38 = re::hashString("DepthBufferPatchAndStencilDecrementNoFragmentFunction", v119);
      __cxa_guard_release(&qword_1EE1C0A40);
    }

    v101 = *(*v140 + 2) == 0;
    v102 = &qword_1EE1C0A38;
    if (!*(*v140 + 2))
    {
      v102 = &qword_1EE1C0A28;
    }

    v103 = *v102;
    v104 = "DepthBufferPatchAndStencilDecrement";
    v141[0] = v132;
    v141[1] = v133;
    if (!v101)
    {
      v104 = "DepthBufferPatchAndStencilDecrementNoFragmentFunction";
    }

    v142[0] = v131;
    v142[1] = v104;
    *v143 = v103;
    *&v143[8] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kDecrementStInfo;
    LOBYTE(v144) = 0x80;
    v143[9] = 0x80;
    v143[17] = 0x80;
    v145 = v93;
    LOBYTE(v146) = 0;
    v200 = 0u;
    memset(v199, 0, sizeof(v199));
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(v93, v199);
    re::encodeMeshPassForPortal(v199, v141);
  }

  if (v214[0])
  {
    if (v216)
    {
      (*(*v214[0] + 40))();
    }

    v216 = 0;
    memset(v214, 0, sizeof(v214));
    ++v215;
  }

  if (v210[0])
  {
    if (v213)
    {
      (*(*v210[0] + 40))();
    }

    v213 = 0;
    v210[1] = 0;
    v211 = 0;
    v210[0] = 0;
    ++v212;
  }

  if (v208[0] && v209)
  {
    (*(*v208[0] + 40))();
  }

  v176 = v130;
  if (v177 && (v178 & 1) != 0)
  {
    (*(*v177 + 40))();
  }

  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v242);
  ++v235;
  ++v233;
  ++v230;
  v234 = 0;
  v232 = 0;
  v229 = 0;
  v226 = 0;
  ++v227;
  result = v224;
  if (v224)
  {
    if (v225)
    {
      return (*(*v224 + 40))();
    }
  }

  return result;
}

uint64_t re::Slice<re::TechniqueTagFilter>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash();
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + 32 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::rendergraph_helper::populateMeshPassArray<7ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,7ul>>(re::MeshPassInfoData *this, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 16);
  v6 = 224;
  do
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v22 = *(v5 + 3);
    v23 = v5[7];
    v11 = v5[8];
    result = re::MeshPassInfoData::getMeshPartBucket(this, v7);
    if (result)
    {
      v13 = result;
      v14 = 1;
      v15 = v22;
      v16 = v23;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = 1;
      result = re::DynamicInlineArray<re::FilteredMeshPass,7ul>::add(a2, &v13);
    }

    v5 += 32;
    v6 -= 32;
  }

  while (v6);
  return result;
}

uint64_t re::rendergraph_helper::populateMeshPassArray<8ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,8ul>>(re::MeshPassInfoData *this, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 16);
  v6 = 256;
  do
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[2];
    v22 = *(v5 + 3);
    v23 = v5[7];
    v11 = v5[8];
    result = re::MeshPassInfoData::getMeshPartBucket(this, v7);
    if (result)
    {
      v13 = result;
      v14 = 1;
      v15 = v22;
      v16 = v23;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = 1;
      result = re::DynamicInlineArray<re::FilteredMeshPass,8ul>::add(a2, &v13);
    }

    v5 += 32;
    v6 -= 32;
  }

  while (v6);
  return result;
}

void *re::allocInfo_StencilPtInjectionNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0A48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0B40, "StencilPtInjectionNode");
    __cxa_guard_release(&qword_1EE1C0A48);
  }

  return &unk_1EE1C0B40;
}

void re::initInfo_StencilPtInjectionNode(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0xF842934DFAA68D32;
  v26[1] = "StencilPtInjectionNode";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1C0A50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C0A50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C0AD8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "frustumCulling";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C0AE0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "materialPassesOverride";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x11000000005;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C0AE8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "depthBufferPatchAndStencilDecrementNoFragmentFunction";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x13800000006;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C0AF0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_BOOL(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "shouldRenderPortalsAndStencil";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x13A00000007;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1C0AF8 = v24;
      __cxa_guard_release(&qword_1EE1C0A50);
    }
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1C0AD8;
  *(this + 9) = re::internal::defaultConstruct<re::StencilPtInjectionNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::StencilPtInjectionNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::StencilPtInjectionNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::StencilPtInjectionNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::StencilPtInjectionNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D14B10;
  *(result + 264) = 1;
  *(result + 38) = 0;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 34) = 0;
  *(result + 74) = 0;
  *(result + 156) = 0;
  *(result + 314) = 1;
  return result;
}

void re::internal::defaultDestruct<re::StencilPtInjectionNode>(uint64_t a1, uint64_t a2, id *a3)
{
  re::DynamicArray<re::DynamicString>::deinit((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::StencilPtInjectionNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D14B10;
  *(result + 264) = 1;
  *(result + 38) = 0;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 34) = 0;
  *(result + 74) = 0;
  *(result + 156) = 0;
  *(result + 314) = 1;
  return result;
}

void re::internal::defaultDestructV2<re::StencilPtInjectionNode>(id *a1)
{
  re::DynamicArray<re::DynamicString>::deinit((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}