void re::RenderGraphMeshNodeBase::sortMeshParts(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _anonymous_namespace_ *a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, __int128 a39, uint64_t a40, uint64_t a41, int a42, char a43, char a44, char a45, char a46, char a47, int a48, __int128 a49, __int128 a50, __int128 a51, __int128 a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, __int16 a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = a3;
  a70 = *MEMORY[0x1E69E9840];
  v76 = 0;
  if (a3)
  {
    v77 = 24 * a3;
    v78 = a2;
    do
    {
      v79 = *v78;
      v78 += 3;
      v76 += *(v79 + 40);
      v77 -= 24;
    }

    while (v77);
  }

  *(a8 + 32) = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *a8 = a7;
  v80 = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(a8, v76);
  ++*(a8 + 24);
  if (*(a6 + 104))
  {
    v81 = 2;
  }

  else
  {
    v81 = 0;
  }

  v357 = v81;
  v82 = *(a4 + 1168);
  v83 = "N2re36VirtualOccluderInvalidationFrameDataE";
  if (("N2re36VirtualOccluderInvalidationFrameDataE" & 0x8000000000000000) != 0)
  {
    v84 = ("N2re36VirtualOccluderInvalidationFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v85 = 5381;
    do
    {
      v83 = v85;
      v86 = *v84++;
      v85 = (33 * v85) ^ v86;
    }

    while (v86);
  }

  v365 = a8;
  v347 = a7;
  v344 = a1;
  if (!*(v82 + 64))
  {
    goto LABEL_18;
  }

  v87 = (*(*(a4 + 40) + 48) + (v83 << 6) + (v83 >> 2) - 0x61C8864680B583E9) ^ v83;
  v88 = *(*(v82 + 72) + 4 * (v87 % *(v82 + 88)));
  if (v88 == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  v89 = *(v82 + 80);
  while (*(v89 + 24 * v88 + 8) != v87)
  {
    v88 = *(v89 + 24 * v88) & 0x7FFFFFFF;
    if (v88 == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }
  }

  v90 = *(v89 + 24 * v88 + 16);
  if (v90)
  {
    v91 = **(v90 + 8);
  }

  else
  {
LABEL_18:
    v91 = 1;
  }

  v361 = v91;
  v351 = v72;
  v352 = a2;
  if (v72)
  {
    v92 = 0;
    v93 = 0;
    do
    {
      if (*(a6 + 32) | *(a6 + 16))
      {
        v94 = 1;
      }

      else
      {
        v94 = *(a6 + 4) != 0;
      }

      v95 = &a2[3 * v92];
      v96 = 1;
      if (!*(v95 + 16) && *(v95 + 15) == 255)
      {
        v96 = *(v95 + 14) != 0;
      }

      if (v94 || *(a6 + 80) != 0 || v96 || (*(a6 + 92) & 1) != 0)
      {
        v80 = *v95;
        if (*(*v95 + 40))
        {
          v97 = 0;
          v98 = 0;
          do
          {
            v99 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v80, v97);
            v100 = v99;
            v101 = *(v99 + 60);
            if (v101 != -1 || (v110 = *(v99 + 232)) != 0 && *v110)
            {
              if (!v94)
              {
                goto LABEL_59;
              }

              v102 = *(v99 + 232);
              if (v102)
              {
                if (*v102)
                {
                  goto LABEL_59;
                }
              }

              v103 = *re::MaterialParameterTableLayers::getTechniqueAtIndex(*(v99 + 40), v101);
              v104 = *(a6 + 16);
              if (v104)
              {
                v105 = (*(a6 + 8) + 24);
                v106 = 32 * v104;
                while (1)
                {
                  *&a50 = *(v105 - 3) >> 1;
                  v107 = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(v103 + 2648, &a50);
                  if (v107)
                  {
                    v108 = *(v105 - 1);
                    if (v108 <= 1 && *v105 && !**v105)
                    {
                      break;
                    }

                    if (*v107 == v108 >> 1)
                    {
                      break;
                    }
                  }

                  v105 += 4;
                  v106 -= 32;
                  if (!v106)
                  {
                    v109 = 1;
                    goto LABEL_49;
                  }
                }
              }

              v109 = 0;
LABEL_49:
              v111 = *(a6 + 32);
              if (v111)
              {
                v112 = (*(a6 + 24) + 24);
                v113 = 32 * v111;
                do
                {
                  *&a50 = *(v112 - 3) >> 1;
                  v114 = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(v103 + 2648, &a50);
                  if (v114)
                  {
                    v115 = *(v112 - 1);
                    if (v115 <= 1 && *v112 && !**v112)
                    {
                      goto LABEL_62;
                    }

                    if (*v114 == v115 >> 1)
                    {
                      goto LABEL_62;
                    }
                  }

                  v112 += 4;
                  v113 -= 32;
                }

                while (v113);
              }

              if ((v109 & 1) == 0)
              {
LABEL_59:
                if (*(v100 + 161) < 0 && *(a6 + 105) == 1)
                {
                  LODWORD(a50) = v98;
                  BYTE4(a50) = v93;
                  BYTE5(a50) = 11;
                  DWORD2(a50) = 0;
                  re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v365, &a50);
                }

                if ((*(v100 + 168) & 1) == 0 && ((v361 & 1) != 0 || (*(a4 + 1120) & 1) != 0 || (*(v100 + 169) & 1) == 0))
                {
                  v116 = *(v100 + 161);
                  if ((v116 & (*(v100 + 208) == 0.0)) != 0)
                  {
                    v117 = 2;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  v118 = (2 * v116) & 4;
                  if ((v116 & 0x10) != 0)
                  {
                    v118 = 4;
                  }

                  v119 = v118 | (v116 >> 2) & 0x18 | v117;
                  if (v119 <= 1)
                  {
                    v119 = 1;
                  }

                  v120 = (v119 & v95[2]) != 0 || (*(v95 + 15) & v119) == 0 || (*(v95 + 14) & ~v119) != 0;
                  if (((*a6 ^ *(v100 + 196)) & *(a6 + 4)) == 0 && !v120)
                  {
                    v121 = *(a6 + 80);
                    if ((!v121 || (*(*v121 + 16))(v121, v100)) && (*(a6 + 92) != 1 || (*(v100 + 161) & 8) != 0 && *(v100 + 172) == *(a6 + 96) && *(v100 + 162) == *(a6 + 100) && *(v100 + 164) == *(a6 + 101)))
                    {
                      LODWORD(a50) = v98;
                      BYTE4(a50) = v93;
                      BYTE5(a50) = v357;
                      DWORD2(a50) = 0;
                      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v365, &a50);
                    }
                  }
                }
              }
            }

LABEL_62:
            v80 = *v95;
            v97 = ++v98;
          }

          while (*(*v95 + 40) > v98);
        }
      }

      else if (*(*v95 + 40))
      {
        v122 = 1;
        do
        {
          LODWORD(a50) = v122 - 1;
          BYTE4(a50) = v93;
          BYTE5(a50) = v357;
          DWORD2(a50) = 0;
          v80 = re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v365, &a50);
        }

        while (*(*v95 + 40) > v122++);
      }

      v92 = ++v93;
      v72 = v351;
      a2 = v352;
    }

    while (v351 > v93);
  }

  if ((v344 - 2) < 2)
  {
    if (v344 == 2)
    {
      v194 = -1;
    }

    else
    {
      v194 = 1;
    }

    v195 = v194;
    v128 = *(v365 + 4);
    v129 = *(v365 + 2);
    a68 = re::globalAllocators(v80)[2];
    a65 = &unk_1F5D14750;
    *&a66 = v195;
    a69 = &a65;
    a28 = 0;
    a25 = 0;
    a26 = 0;
    a27 = 0;
    a24 = v347;
    re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&a24, v129);
    ++a27;
    v196 = re::RenderGraphDataStore::get<re::CameraData>(*(a4 + 1168), *(*(a4 + 40) + 48));
    v125 = a5;
    if (!*(v196 + 48))
    {
      goto LABEL_356;
    }

    v198 = v196;
    re::RenderCamera::computeLocalTransform((v196 + 64), &a50);
    v205 = vmulq_f32(a52, a52);
    v204.n128_f32[0] = v205.n128_f32[2] + vaddv_f32(v205.n128_u64[0]);
    v205.n128_u64[0] = vrsqrte_f32(v204.n128_u32[0]);
    v205.n128_u64[0] = vmul_f32(v205.n128_u64[0], vrsqrts_f32(v204.n128_u32[0], vmul_f32(v205.n128_u64[0], v205.n128_u64[0])));
    v204.n128_u64[0] = vrsqrts_f32(v204.n128_u32[0], vmul_f32(v205.n128_u64[0], v205.n128_u64[0]));
    v205.n128_u64[0] = vmul_f32(v205.n128_u64[0], v204.n128_u64[0]);
    v206 = vmulq_n_f32(vnegq_f32(a52), v205.n128_f32[0]);
    a32 = v206;
    v208 = *(v198 + 64);
    v207 = *(v198 + 72);
    *&a49 = v208;
    *(&a49 + 1) = v207;
    if (a5)
    {
      goto LABEL_358;
    }

    if (!v129)
    {
LABEL_361:
      if (a69)
      {
        (**a69)(a69);
        if (a69 != &a65)
        {
          (*(*a68 + 40))(a68);
        }

        a69 = 0;
      }

      v310 = a28;
      v311 = a26;
      v312 = 126 - 2 * __clz(a26);
      if (a26)
      {
        v313 = v312;
      }

      else
      {
        v313 = 0;
      }

      *(v365 + 2) = 0;
      ++*(v365 + 6);
      if (*(v365 + 1) >= v311)
      {
        if (!v311)
        {
          goto LABEL_389;
        }
      }

      else
      {
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v365, v311);
      }

      v315 = v311 << 6;
      v316 = (v310 + 44);
      do
      {
        LODWORD(a50) = *(v316 - 3);
        BYTE4(a50) = *(v316 - 8);
        BYTE5(a50) = *v316;
        DWORD2(a50) = *(v316 - 1);
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v365, &a50);
        v316 += 64;
        v315 -= 64;
      }

      while (v315);
      goto LABEL_389;
    }

LABEL_195:
    v209.i64[0] = v208;
    v209.i64[1] = v207;
    vars0a = v209;
    v129 = v128 + 12 * v129;
    v335 = v129;
    while (1)
    {
      if (v72 <= *(v128 + 4))
      {
        re::internal::assertLog(6, v199, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v128 + 4), v72);
        _os_crash();
        __break(1u);
LABEL_354:
        re::internal::assertLog(6, v133, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v144, v72);
        _os_crash();
        __break(1u);
LABEL_355:
        re::internal::assertLog(6, v260, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v269, v72);
        _os_crash();
        __break(1u);
LABEL_356:
        re::internal::assertLog(6, v197, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash();
        __break(1u);
LABEL_357:
        v327 = 0uLL;
        re::internal::assertLog(6, v131, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389);
        _os_crash();
        __break(1u);
LABEL_358:
        a50 = a49;
        a51 = a32;
        if ((*(v125 + 208) & 1) == 0)
        {
          *(v125 + 208) = 1;
        }

        v206 = a50;
        v205 = a51;
        *(v125 + 224) = a50;
        *(v125 + 240) = v205;
        if (!v129)
        {
          goto LABEL_361;
        }

        goto LABEL_195;
      }

      v210 = &a2[3 * *(v128 + 4)];
      v211 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v210, *v128);
      v215 = v211;
      v216 = *(v211 + 32);
      if (*(v211 + 60) != -1 || (v239 = *(v211 + 232)) != 0 && *v239)
      {
        v217 = 0;
        a47 = 0;
        if (v125)
        {
          SortingDebugContextAndReturnIndex = re::DrawCallRecorderGroup::allocateSortingDebugContextAndReturnIndex(v125);
          v217 = 1;
          a47 = 1;
          a48 = SortingDebugContextAndReturnIndex;
        }

        v205 = *(v216 + 16);
        v206 = vcgtq_f32(*v216, v205);
        v206.n128_u32[3] = v206.n128_u32[2];
        v206.n128_u32[0] = vmaxvq_u32(v206);
        if ((v206.n128_u32[0] & 0x80000000) == 0)
        {
          break;
        }
      }

LABEL_279:
      v128 = (v128 + 12);
      if (v128 == v129)
      {
        goto LABEL_361;
      }
    }

    v218 = re::RenderGraphMeshNodeBase::computeSortDistance(v216, v215 + 5, &v215[10], v215 + 9, &a49, &a32, v125, &a47, v206.n128_f64[0], v205.n128_f64[0], v204.n128_f64[0], v212, v213, v214);
    v219 = v218;
    v220 = v215[10].u8[1];
    if ((v220 | ((v220 & 4) >> 2)))
    {
      v221 = v215[11].f32[0];
    }

    else
    {
      v221 = v218;
    }

    if ((v220 & 8) != 0)
    {
      v222 = v215[10].f32[3];
    }

    else
    {
      v222 = v221;
    }

    v359 = *(v128 + 5);
    if ((v359 & 8) != 0)
    {
      v223 = 3.4028e38;
    }

    else
    {
      v223 = v222;
    }

    if ((v215[10].i8[5] & 1) != 0 || (v224 = v215[11].i64[1]) == 0)
    {
      v355 = 0;
    }

    else
    {
      v226 = *v224;
      v225 = v224[1];
      v227 = vmulq_f32(vsubq_f32(vars0a, v225), *v224);
      v228 = *(v216 + 16);
      v229 = vcgtq_f32(*v216, v228);
      v229.i32[3] = v229.i32[2];
      v230 = vmaxvq_u32(v229);
      v231 = vaddq_f32(*v216, v228);
      v228.i64[0] = 0x3F0000003F000000;
      v228.i64[1] = 0x3F0000003F000000;
      v232 = vmulq_f32(v231, v228);
      if (v230 >= 0)
      {
        v233 = v232.i64[1];
      }

      else
      {
        v233 = 0;
      }

      if (v230 >= 0)
      {
        v234 = *v232.f32;
      }

      else
      {
        v234 = 0;
      }

      *v235.f32 = v234;
      v235.i64[1] = v233;
      v236 = vaddq_f32(v215[8], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v215[5], v234.f32[0]), v215[6], v234, 1), v215[7], v235, 2));
      v237 = vmulq_f32(v226, vsubq_f32(vdivq_f32(v236, vdupq_laneq_s32(v236, 3)), v225));
      *v237.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v237, v237, 8uLL), *&vextq_s8(v227, v227, 8uLL)), vadd_f32(vzip1_s32(*v237.i8, *v227.i8), vzip2_s32(*v237.i8, *v227.i8)));
      if (veor_s8(vdup_lane_s32(*v237.i8, 1), *v237.i8).i32[0] < 0)
      {
        v238 = 1;
      }

      else
      {
        v238 = -1;
      }

      v355 = v238;
    }

    v241 = v215[12].i32[2];
    v240 = v215[12].i32[3];
    v242 = v215[13].f32[0];
    v243 = v220 & (v242 == 0.0);
    if (*(v210 + 8) == 1)
    {
      v244 = 0;
      v245 = 0;
      if ((v220 & (v242 == 0.0)) != 0)
      {
        v246 = 2;
      }

      else
      {
        v246 = 0;
      }

      v247 = (2 * v220) & 4;
      if ((v220 & 0x10) != 0)
      {
        v247 = 4;
      }

      v248 = v247 | (v220 >> 2) & 0x18 | v246;
      if (v248 <= 1)
      {
        v248 = 1;
      }

      do
      {
        if (((v248 >> v244) & 1) != 0 && v245 <= *(v210 + v244 + 9))
        {
          v245 = *(v210 + v244 + 9);
        }

        ++v244;
      }

      while (v244 != 5);
      if ((v220 & 8) == 0)
      {
        goto LABEL_239;
      }
    }

    else
    {
      v245 = 0;
      if ((v220 & 8) == 0)
      {
LABEL_239:
        v363 = 0;
LABEL_245:
        if ((v220 & 4) != 0)
        {
          v250 = v245;
        }

        else
        {
          v250 = 0;
        }

        if (v220)
        {
          if ((v215[10].i8[6] & 1) != 0 || (v220 & 0xA) == 0)
          {
            v250 = v215[12].u32[2];
          }

          else
          {
            v250 = v215[12].u32[2];
            if (v242 != 0.0)
            {
              v251 = v245 | 0x80000000;
              if (*(v210 + 17))
              {
                v250 = v251;
              }

              else
              {
                v250 = v215[12].u32[2];
              }
            }
          }
        }

        v252 = *v128;
        v253 = v215[4].i16[0];
        v337 = v215[13].i32[1];
        v339 = v215[4].i8[2];
        v346 = v215[10].i8[3];
        v349 = *(v128 + 4);
        v341 = v215[10].i8[4];
        v343 = v215[10].i8[2];
        if (a5)
        {
          v258 = a11;
          if (v217)
          {
            v258 = a48;
          }

          a11 = v258;
        }

        else
        {
          v217 = 0;
        }

        if ((a43 & 1) != 0 || *(a6 + 88) == 1)
        {
          *&a37 = __PAIR64__(LODWORD(v223), v252);
          *(&a37 + 1) = __PAIR64__(v250, LODWORD(v221));
          *&a38 = __PAIR64__(v337, LODWORD(v219));
          WORD4(a38) = v253;
          BYTE10(a38) = 1;
          BYTE11(a38) = v363;
          BYTE12(a38) = v349;
          BYTE13(a38) = v359;
          BYTE14(a38) = v339;
          HIBYTE(a38) = v346;
          LOBYTE(a39) = v343;
          BYTE1(a39) = v341;
          BYTE2(a39) = v355;
          BYTE4(a39) = v217;
          if (v217)
          {
            DWORD2(a39) = a11;
          }

          if (v243 && (v241 != v240 || a44 == 1) && (*(a6 + 88) & 1) == 0)
          {
            BYTE13(a38) = v359 | 1;
          }

          DWORD2(a52) = 0;
          BYTE12(a52) = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 13) = 0;
          *&a50 = a5;
          (*(*a69 + 16))(a69, a28 + (a26 << 6) - 64, &a37, &a50, v254);
        }

        if (a45 == 1 && (*(a6 + 88) & 1) == 0)
        {
          *&a37 = __PAIR64__(LODWORD(v223), v252);
          *(&a37 + 2) = v221;
          *&a38 = __PAIR64__(v337, LODWORD(v219));
          WORD4(a38) = v253;
          BYTE10(a38) = 1;
          BYTE11(a38) = v363;
          BYTE12(a38) = v349;
          BYTE14(a38) = v339;
          HIBYTE(a38) = v346;
          LOBYTE(a39) = v343;
          BYTE1(a39) = v341;
          BYTE2(a39) = v355;
          BYTE4(a39) = v217;
          if (v217)
          {
            DWORD2(a39) = a11;
          }

          HIDWORD(a37) = v215[12].i32[3];
          BYTE13(a38) = v359 | 2;
          DWORD2(a52) = 0;
          BYTE12(a52) = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 13) = 0;
          *&a50 = a5;
          (*(*a69 + 16))(a69, a28 + (a26 << 6) - 64, &a37, &a50, v255);
        }

        if (a44 == 1 && (*(a6 + 88) & 1) == 0)
        {
          *&a37 = __PAIR64__(LODWORD(v223), v252);
          *(&a37 + 1) = __PAIR64__(v250, LODWORD(v221));
          *&a38 = __PAIR64__(v337, LODWORD(v219));
          WORD4(a38) = v253;
          BYTE11(a38) = v363;
          BYTE12(a38) = v349;
          BYTE14(a38) = v339;
          HIBYTE(a38) = v346;
          LOBYTE(a39) = v343;
          BYTE1(a39) = v341;
          BYTE2(a39) = v355;
          BYTE4(a39) = v217;
          if (v217)
          {
            DWORD2(a39) = a11;
          }

          BYTE10(a38) = 0;
          BYTE13(a38) = v359 | 2;
          DWORD2(a52) = 0;
          BYTE12(a52) = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 13) = 0;
          *&a50 = a5;
          (*(*a69 + 16))(a69, a28 + (a26 << 6) - 64, &a37, &a50, v256);
        }

        v125 = a5;
        v72 = v351;
        a2 = v352;
        v129 = v335;
        goto LABEL_279;
      }
    }

    v363 = v245;
    if ((v220 & 2) != 0)
    {
      v249 = *(a6 + 89);
      if (v245 > v249)
      {
        LOBYTE(v249) = v245;
      }

      v363 = v249;
    }

    goto LABEL_245;
  }

  v124 = v365;
  v125 = a5;
  if ((v344 - 4) < 2)
  {
    if (v344 == 4)
    {
      v126 = -1;
    }

    else
    {
      v126 = 1;
    }

    v127 = v126;
    v128 = *(v365 + 4);
    v129 = *(v365 + 2);
    a68 = re::globalAllocators(v80)[2];
    a65 = &unk_1F5D147B8;
    *&a66 = v127;
    a69 = &a65;
    a28 = 0;
    a25 = 0;
    a26 = 0;
    a27 = 0;
    a24 = v347;
    re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&a24, v129);
    ++a27;
    v130 = re::RenderGraphDataStore::get<re::CameraData>(*(a4 + 1168), *(*(a4 + 40) + 48));
    if (!*(v130 + 48))
    {
      goto LABEL_357;
    }

    v132 = v130;
    re::RenderCamera::computeLocalTransform((v130 + 64), &a50);
    v139 = vmulq_f32(a52, a52);
    v138.n128_f32[0] = v139.n128_f32[2] + vaddv_f32(v139.n128_u64[0]);
    v139.n128_u64[0] = vrsqrte_f32(v138.n128_u32[0]);
    v139.n128_u64[0] = vmul_f32(v139.n128_u64[0], vrsqrts_f32(v138.n128_u32[0], vmul_f32(v139.n128_u64[0], v139.n128_u64[0])));
    v138.n128_u64[0] = vrsqrts_f32(v138.n128_u32[0], vmul_f32(v139.n128_u64[0], v139.n128_u64[0]));
    v139.n128_u64[0] = vmul_f32(v139.n128_u64[0], v138.n128_u64[0]);
    v140 = vmulq_n_f32(vnegq_f32(a52), v139.n128_f32[0]);
    a32 = v140;
    v142 = *(v132 + 64);
    v141 = *(v132 + 72);
    *&a49 = v142;
    *(&a49 + 1) = v141;
    if (a5)
    {
      a50 = a49;
      a51 = a32;
      if ((*(a5 + 208) & 1) == 0)
      {
        *(a5 + 208) = 1;
      }

      v140 = a50;
      v139 = a51;
      *(a5 + 224) = a50;
      *(a5 + 240) = v139;
      if (v129)
      {
        goto LABEL_100;
      }
    }

    else if (v129)
    {
LABEL_100:
      v143.i64[0] = v142;
      v143.i64[1] = v141;
      vars0 = v143;
      v129 = v128 + 12 * v129;
      v334 = v129;
      do
      {
        v144 = *(v128 + 4);
        if (v72 <= v144)
        {
          goto LABEL_354;
        }

        v145 = &a2[3 * *(v128 + 4)];
        v146 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v145, *v128);
        v150 = v146;
        v151 = *(v146 + 32);
        if (*(v146 + 60) == -1)
        {
          v174 = *(v146 + 232);
          if (!v174 || !*v174)
          {
            goto LABEL_184;
          }
        }

        v152 = 0;
        a47 = 0;
        if (v125)
        {
          v192 = re::DrawCallRecorderGroup::allocateSortingDebugContextAndReturnIndex(v125);
          v152 = 1;
          a47 = 1;
          a48 = v192;
        }

        v139 = *(v151 + 16);
        v140 = vcgtq_f32(*v151, v139);
        v140.n128_u32[3] = v140.n128_u32[2];
        v140.n128_u32[0] = vmaxvq_u32(v140);
        if ((v140.n128_u32[0] & 0x80000000) != 0)
        {
          goto LABEL_184;
        }

        v153 = re::RenderGraphMeshNodeBase::computeSortDistance(v151, v150 + 5, &v150[10], v150 + 9, &a49, &a32, v125, &a47, v140.n128_f64[0], v139.n128_f64[0], v138.n128_f64[0], v147, v148, v149);
        v154 = v153;
        v155 = v150[10].u8[1];
        if ((v155 | ((v155 & 4) >> 2)))
        {
          v156 = v150[11].f32[0];
        }

        else
        {
          v156 = v153;
        }

        if ((v155 & 8) != 0)
        {
          v157 = v150[10].f32[3];
        }

        else
        {
          v157 = v156;
        }

        v358 = *(v128 + 5);
        if ((v358 & 8) != 0)
        {
          v158 = 3.4028e38;
        }

        else
        {
          v158 = v157;
        }

        if ((v150[10].i8[5] & 1) != 0 || (v159 = v150[11].i64[1]) == 0)
        {
          v354 = 0;
        }

        else
        {
          v161 = *v159;
          v160 = v159[1];
          v162 = vmulq_f32(vsubq_f32(vars0, v160), *v159);
          v163 = *(v151 + 16);
          v164 = vcgtq_f32(*v151, v163);
          v164.i32[3] = v164.i32[2];
          v165 = vmaxvq_u32(v164);
          v166 = vaddq_f32(*v151, v163);
          v163.i64[0] = 0x3F0000003F000000;
          v163.i64[1] = 0x3F0000003F000000;
          v167 = vmulq_f32(v166, v163);
          if (v165 >= 0)
          {
            v168 = v167.i64[1];
          }

          else
          {
            v168 = 0;
          }

          if (v165 >= 0)
          {
            v169 = *v167.f32;
          }

          else
          {
            v169 = 0;
          }

          *v170.f32 = v169;
          v170.i64[1] = v168;
          v171 = vaddq_f32(v150[8], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150[5], v169.f32[0]), v150[6], v169, 1), v150[7], v170, 2));
          v172 = vmulq_f32(v161, vsubq_f32(vdivq_f32(v171, vdupq_laneq_s32(v171, 3)), v160));
          *v172.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v172, v172, 8uLL), *&vextq_s8(v162, v162, 8uLL)), vadd_f32(vzip1_s32(*v172.i8, *v162.i8), vzip2_s32(*v172.i8, *v162.i8)));
          if (veor_s8(vdup_lane_s32(*v172.i8, 1), *v172.i8).i32[0] < 0)
          {
            v173 = 1;
          }

          else
          {
            v173 = -1;
          }

          v354 = v173;
        }

        v175 = v150[12].i32[2];
        v336 = v150[12].i32[3];
        v176 = v150[13].f32[0];
        v177 = v155 & (v176 == 0.0);
        if (*(v145 + 8) == 1)
        {
          v178 = 0;
          v179 = 0;
          if ((v155 & (v176 == 0.0)) != 0)
          {
            v180 = 2;
          }

          else
          {
            v180 = 0;
          }

          v181 = (2 * v155) & 4;
          if ((v155 & 0x10) != 0)
          {
            v181 = 4;
          }

          v182 = v181 | (v155 >> 2) & 0x18 | v180;
          if (v182 <= 1)
          {
            v182 = 1;
          }

          do
          {
            if (((v182 >> v178) & 1) != 0 && v179 <= *(v145 + v178 + 9))
            {
              v179 = *(v145 + v178 + 9);
            }

            ++v178;
          }

          while (v178 != 5);
          if ((v155 & 8) != 0)
          {
LABEL_146:
            v362 = v179;
            if ((v155 & 2) != 0)
            {
              v183 = *(a6 + 89);
              if (v179 > v183)
              {
                LOBYTE(v183) = v179;
              }

              v362 = v183;
            }

            goto LABEL_150;
          }
        }

        else
        {
          v179 = 0;
          if ((v155 & 8) != 0)
          {
            goto LABEL_146;
          }
        }

        v362 = 0;
LABEL_150:
        if ((v155 & 4) != 0)
        {
          v184 = v179;
        }

        else
        {
          v184 = 0;
        }

        if (v155)
        {
          if ((v150[10].i8[6] & 1) != 0 || (v155 & 0xA) == 0)
          {
            v184 = v150[12].u32[2];
          }

          else
          {
            v184 = v150[12].u32[2];
            if (v176 != 0.0)
            {
              v185 = v179 | 0x80000000;
              if (*(v145 + 17))
              {
                v184 = v185;
              }

              else
              {
                v184 = v150[12].u32[2];
              }
            }
          }
        }

        v186 = *v128;
        v187 = v150[13].i32[1];
        v188 = v150[4].i16[0];
        v345 = v150[10].i8[3];
        v348 = *(v128 + 4);
        v342 = v150[10].i8[2];
        v338 = v150[4].i8[2];
        v340 = v150[10].i8[4];
        if (a5)
        {
          v193 = a11;
          if (v152)
          {
            v193 = a48;
          }

          a11 = v193;
        }

        else
        {
          v152 = 0;
        }

        if ((a43 & 1) != 0 || *(a6 + 88) == 1)
        {
          *&a37 = __PAIR64__(LODWORD(v158), v186);
          *(&a37 + 1) = __PAIR64__(v184, LODWORD(v156));
          *&a38 = __PAIR64__(v187, LODWORD(v154));
          WORD4(a38) = v188;
          BYTE10(a38) = 1;
          BYTE11(a38) = v362;
          BYTE12(a38) = v348;
          BYTE13(a38) = v358;
          BYTE14(a38) = v338;
          HIBYTE(a38) = v345;
          LOBYTE(a39) = v342;
          BYTE1(a39) = v340;
          BYTE2(a39) = v354;
          BYTE4(a39) = v152;
          if (v152)
          {
            DWORD2(a39) = a11;
          }

          if (v177 && (v175 != v336 || a44 == 1) && (*(a6 + 88) & 1) == 0)
          {
            BYTE13(a38) = v358 | 1;
          }

          a53 = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 14) = 0u;
          *&a50 = a5;
          (*(*a69 + 16))(a69, a28 + (a26 << 6) - 64, &a37, &a50, v189);
        }

        if (a45 == 1 && (*(a6 + 88) & 1) == 0)
        {
          *&a37 = __PAIR64__(LODWORD(v158), v186);
          *(&a37 + 2) = v156;
          *&a38 = __PAIR64__(v187, LODWORD(v154));
          WORD4(a38) = v188;
          BYTE10(a38) = 1;
          BYTE11(a38) = v362;
          BYTE12(a38) = v348;
          BYTE14(a38) = v338;
          HIBYTE(a38) = v345;
          LOBYTE(a39) = v342;
          BYTE1(a39) = v340;
          BYTE2(a39) = v354;
          BYTE4(a39) = v152;
          if (v152)
          {
            DWORD2(a39) = a11;
          }

          HIDWORD(a37) = v150[12].i32[3];
          BYTE13(a38) = v358 | 2;
          a53 = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 14) = 0u;
          *&a50 = a5;
          (*(*a69 + 16))(a69, a28 + (a26 << 6) - 64, &a37, &a50, v190);
        }

        if (a44 == 1 && (*(a6 + 88) & 1) == 0)
        {
          *&a37 = __PAIR64__(LODWORD(v158), v186);
          *(&a37 + 1) = __PAIR64__(v184, LODWORD(v156));
          *&a38 = __PAIR64__(v187, LODWORD(v154));
          WORD4(a38) = v188;
          BYTE11(a38) = v362;
          BYTE12(a38) = v348;
          BYTE14(a38) = v338;
          HIBYTE(a38) = v345;
          LOBYTE(a39) = v342;
          BYTE1(a39) = v340;
          BYTE2(a39) = v354;
          BYTE4(a39) = v152;
          if (v152)
          {
            DWORD2(a39) = a11;
          }

          BYTE10(a38) = 0;
          BYTE13(a38) = v358 | 2;
          a53 = 0;
          a50 = 0u;
          a51 = 0u;
          *(&a51 + 14) = 0u;
          *&a50 = a5;
          (*(*a69 + 16))(a69, a28 + (a26 << 6) - 64, &a37, &a50, v191);
        }

        v125 = a5;
        v72 = v351;
        a2 = v352;
        v129 = v334;
LABEL_184:
        v128 = (v128 + 12);
      }

      while (v128 != v129);
    }

    if (a69)
    {
      (**a69)(a69);
      if (a69 != &a65)
      {
        (*(*a68 + 40))(a68);
      }

      a69 = 0;
    }

    v310 = a28;
    v317 = a26;
    v318 = 126 - 2 * __clz(a26);
    if (a26)
    {
      v319 = v318;
    }

    else
    {
      v319 = 0;
    }

    v314 = std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,false>(a28, a28 + (a26 << 6), v319, 1, v134, v135, v136, v137, v323, v324, v325, v326, v140, v139, v138, v327, v328, v329, v330, v331);
    *(v365 + 2) = 0;
    ++*(v365 + 6);
    if (*(v365 + 1) >= v317)
    {
      if (!v317)
      {
        goto LABEL_389;
      }
    }

    else
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v365, v317);
    }

    v320 = v317 << 6;
    v321 = (v310 + 48);
    do
    {
      LODWORD(a50) = *(v321 - 2);
      WORD2(a50) = *(v321 - 2);
      v322 = *v321;
      v321 += 16;
      DWORD2(a50) = v322;
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v365, &a50);
      v320 -= 64;
    }

    while (v320);
LABEL_389:
    if (v310)
    {
      if (a24)
      {
        (*(*a24 + 40))(a24, v310, v314);
      }
    }

    return;
  }

  if (v344 != 1)
  {
    return;
  }

  v356 = *(*(a4 + 8) + 24);
  a37 = 0u;
  a38 = 0u;
  a39 = 0u;
  a40 = 0;
  a41 = v347;
  v259 = *(v365 + 2);
  a69 = 0;
  a67 = 0;
  LODWORD(a68) = 0;
  a66 = 0;
  a65 = v347;
  re::DynamicArray<re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey>::setCapacity(&a65, v259);
  v360 = a68 + 1;
  LODWORD(a68) = a68 + 1;
  a35 = 0;
  a33 = 0;
  a34 = 0;
  a32 = v347;
  re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&a32, 0);
  ++a34;
  if (*(v365 + 2))
  {
    a2 = 0;
    v129 = 0;
    v128 = &a50;
    do
    {
      v125 = *(v124 + 4);
      v268 = (a2 + v125);
      v269 = *(a2 + v125 + 4);
      if (v72 <= v269)
      {
        goto LABEL_355;
      }

      v270 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(v352 + 24 * *(a2 + v125 + 4)), *v268);
      v271 = v270;
      a6 = *(v270 + 40);
      v272 = *(v270 + 232);
      if (v272 && *v272)
      {
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(&a32, (a2 + v125));
      }

      else
      {
        v260 = *(v270 + 60);
        if (v260 != -1)
        {
          TechniqueAtIndex = re::MaterialParameterTableLayers::getTechniqueAtIndex(*(v270 + 40), v260);
          TechniqueVariant = re::MaterialTechnique::getOrCreateTechniqueVariant(TechniqueAtIndex, 0, 0);
          v364 = TechniqueVariant;
          if (*(a6 + 192) || *(a6 + 104) || *(a6 + 112) || *(a6 + 120) || *(a6 + 152))
          {
            a50 = *(a6 + 104);
            *&a51 = *(a6 + 120);
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&a51 + 8, a6 + 128);
            a58 = *(a6 + 192);
            v275 = v360;
            if (*(TechniqueAtIndex + 40) == 1)
            {
              v276 = TechniqueAtIndex + 48;
            }

            else
            {
              v276 = *TechniqueAtIndex + 8;
            }

            if (*(v276 + 8))
            {
              v277 = *(v276 + 24);
              a47 = 0;
              *&a49 = ((v277 << 6) - 0x61C8864680B583E9 + (v277 >> 2) + re::CombinedDynamicFunctionConstants::hash(&a50, &a47)) ^ v277;
              v278 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v356 + 336), &a49);
              if (v278 != -1)
              {
                v279 = *(v356 + 344);
                goto LABEL_305;
              }

              v278 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&a37, &a49);
              if (v278 == -1)
              {
                a43 = 0;
                re::CombinedDynamicFunctionConstants::combinedMap(&a50, &a43, &a24);
                v292 = re::FunctionConstantsEnumerator::enumerateFunctionConstantSet(v276, &a24);
                re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&a24);
                a24 = v292;
                re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(&a37, &a49, &a24);
              }

              else
              {
                v279 = *(&a37 + 1);
LABEL_305:
                v280 = (v279 + 16 * v278 + 8);
              }

              v364 = re::MaterialTechnique::getOrCreateTechniqueVariant(TechniqueAtIndex, *v280, 0);
            }

            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&a51 + 8);
          }

          else
          {
            v275 = v360;
          }

          v281 = *(*(v271 + 24) + 8);
          if (a67 >= a66)
          {
            v282 = a67 + 1;
            if (a66 < (a67 + 1))
            {
              if (a65)
              {
                v283 = 8;
                if (a66)
                {
                  v283 = 2 * a66;
                }

                if (v283 <= v282)
                {
                  v284 = a67 + 1;
                }

                else
                {
                  v284 = v283;
                }

                re::DynamicArray<re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey>::setCapacity(&a65, v284);
                v275 = a68;
              }

              else
              {
                re::DynamicArray<re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey>::setCapacity(&a65, v282);
                v275 = a68 + 1;
              }
            }
          }

          v285 = a69;
          v286 = a67;
          v287 = (a69 + 32 * a67);
          v287[1] = 0;
          v287[2] = 0;
          *v287 = 0;
          *(v287 + 23) = 0;
          a67 = v286 + 1;
          v288 = v275 + 1;
          LODWORD(a68) = v288;
          v289 = v285 + 32 * (v286 + 1);
          a6 = v289 - 32;
          *(v289 - 8) = *(a2 + v125);
          *(v289 - 4) = *(v268 + 4);
          *(v289 - 2) = *(a2 + v125 + 5);
          LOBYTE(a24) = 0;
          if (*(v271 + 64))
          {
            re::DrawCallSortKey<3ul,unsigned long long>::appendUInt16(v289 - 32, *(v271 + 64), &a24);
            re::DrawCallSortKey<3ul,unsigned long long>::appendUInt8(v289 - 32, *(v271 + 66), &a24);
            LOBYTE(a24) = a24 + 5;
            v290 = a5;
            v291 = v364;
          }

          else
          {
            v291 = v364;
            re::DrawCallSortKey<3ul,unsigned long long>::appendUInt64(v289 - 32, *(**v364 + 2728), &a24);
            v290 = a5;
          }

          v360 = v288;
          re::DrawCallSortKey<3ul,unsigned long long>::appendUInt8(v289 - 32, *(v291 + 18), &a24);
          re::DrawCallSortKey<3ul,unsigned long long>::appendUInt64(v289 - 32, v281, &a24);
          re::DrawCallSortKey<3ul,unsigned long long>::appendBytes(v289 - 32, *(*(v271 + 24) + 488) >> 1, 0, 7uLL, &a24);
          if (v290)
          {
            v293 = v291;
            v294 = re::DrawCallRecorderGroup::allocateSortingDebugContextAndReturnIndex(v290);
            if (v294 <= 0xFE)
            {
              v295 = v294;
              a6 = v293;
              MutableSortingContext = re::DrawCallRecorderGroup::getMutableSortingContext(v290, v294);
              v328 = *(*(v271 + 24) + 488) >> 1;
              re::DynamicString::format(v290[8], "Technique Sort - IsGroupedTechnique: %d TechniqueGroupID: %d IndexInTechniqueGroup: %d TechniqueAndMaterialNameHash: %zu HSRFlush: %d DescriptorHash: %zu MeshNameHash: %llu ", &a50);
              re::DynamicString::operator=(MutableSortingContext, &a50);
              if (a50 && (BYTE8(a50) & 1) != 0)
              {
                (*(*a50 + 40))();
              }

              v297 = *(v271 + 32);
              if (v297)
              {
                v298 = *v297;
                v299 = v297[1];
              }

              else
              {
                v298 = 0uLL;
                v299 = 0uLL;
              }

              *(MutableSortingContext + 32) = v298;
              *(MutableSortingContext + 48) = v299;
              v265 = *(v271 + 80);
              v266 = *(v271 + 96);
              v267 = *(v271 + 112);
              v300 = *(v271 + 128);
              *(MutableSortingContext + 96) = v267;
              *(MutableSortingContext + 112) = v300;
              *(MutableSortingContext + 64) = v265;
              *(MutableSortingContext + 80) = v266;
              if (*(MutableSortingContext + 128) == 1)
              {
                *(MutableSortingContext + 128) = 0;
              }

              *(v289 - 3) = v295;
            }
          }

          v124 = v365;
          v72 = v351;
          v128 = &a50;
        }
      }

      ++v129;
      a2 = (a2 + 12);
    }

    while (v129 < *(v124 + 2));
  }

  v301 = a69;
  v302 = a67;
  v303 = 126 - 2 * __clz(a67);
  if (a67)
  {
    v304 = v303;
  }

  else
  {
    v304 = 0;
  }

  v305.n128_f64[0] = std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,false>(a69, a69 + 32 * a67, v304, 1, v265, v261, v262, v263, v264, v266, v267);
  *(v124 + 2) = 0;
  ++*(v124 + 6);
  if (v302)
  {
    v306 = 32 * v302;
    v307 = (v301 + 30);
    do
    {
      LODWORD(a50) = *(v307 - 6);
      BYTE4(a50) = *(v307 - 2);
      BYTE5(a50) = *v307;
      DWORD2(a50) = *(v307 - 1);
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v124, &a50);
      v307 += 32;
      v306 -= 32;
    }

    while (v306);
  }

  if (a33)
  {
    v308 = a35;
    v309 = 12 * a33;
    do
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v124, v308);
      v308 = (v308 + 12);
      v309 -= 12;
    }

    while (v309);
  }

  if (a32 && a35)
  {
    (*(*a32 + 40))(v305);
  }

  if (v301 && a65)
  {
    (*(*a65 + 40))(a65, v301, v305);
  }

  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&a37);
}

uint64_t re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, __int32 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v214.i32[0] = a6;
  v13 = a4;
  v212 = a2;
  v261 = *MEMORY[0x1E69E9840];
  v216 = a1;
  v213.i64[0] = a3;
  if (!a3)
  {
    goto LABEL_186;
  }

  v215.i64[0] = a9;
  v16 = a2;
  if (*(*(a4 + 24) + 208) != 1)
  {
LABEL_79:
    v49 = 12 * v213.i64[0];
    v16 += 4;
    while (1)
    {
      if (v215.i64[0])
      {
        v66 = re::Slice<re::FilteredMeshPass>::operator[](*a1, a1[1], *v16);
        v67 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v66, *(v16 - 4));
        v68 = v67[3];
        if (v68)
        {
          v69 = *(v68 + 496);
        }

        else
        {
          v69 = 0;
        }

        v70 = *v67;
        v17 = 1;
        v227[0] = 1;
        v228 = *(v16 + 4);
        re::DrawCallMeshPartsDetails::DrawCallMeshPartsDetails(&v238, v215.i64[0], v70, v69, v227);
        v71 = re::DrawCallRecorderGroup::recordDrawCallMeshPartsDetails(re::DrawCallMeshPartsDetails const&)::nextIndex++;
        *v243 = v71;
        re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(v215.i64[0] + 112, v243, &v238);
        v211 = *v243;
        re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v238.i64[1]);
        a1 = v216;
      }

      else
      {
        v17 = 0;
      }

      v50 = a1[1];
      if (v50 <= *v16)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *v16, v50);
        _os_crash();
        __break(1u);
LABEL_302:
        v237[2] = 0;
        v259 = 0u;
        v260 = 0u;
        v258 = 0u;
        memset(v257, 0, sizeof(v257));
        v10 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v249 = 136315906;
        v250 = "operator[]";
        v251 = 1024;
        v252 = 858;
        v253 = 2048;
        v254 = v16;
        v255 = 2048;
        v256 = a5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_303;
      }

      v51 = *a1 + 24 * *v16;
      v52 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v51, *(v16 - 4));
      v12 = v52;
      if (*(v51 + 18) != 1 || *(v52 + 167) != 1)
      {
        break;
      }

      v53 = *(a10 + 32);
      v54 = *(a10 + 40);
      if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken != -1)
      {
        dispatch_once(&re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken, &__block_literal_global_36);
      }

      a1 = v216;
      if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder != 1 || !v53 || !v54)
      {
        v13 = a4;
        goto LABEL_110;
      }

      v55 = *v12;
      v56 = *(a10 + 48);
      v57 = (*(v12 + 161) >> 6) & 1;
      v58 = (*(v16 + 1) >> 3) & 1;
      v226 = 0;
      *&v194 = &v226;
      v59 = v54;
      v13 = a4;
      re::addPortalDrawcallByEntityId(v55, a5, a4, v53, v59, v56, v57, v58, v194);
LABEL_109:
      a1 = v216;
LABEL_110:
      v16 += 12;
      v49 -= 12;
      if (!v49)
      {
        goto LABEL_186;
      }
    }

    v60 = *(v16 + 1);
    v61 = *a10;
    if (v61 == 1)
    {
      v238 = *(a10 + 1);
      LOBYTE(v239) = *(a10 + 17);
    }

    v62 = *(a10 + 20);
    if (v62 == 1)
    {
      LODWORD(v11) = *(a10 + 24);
    }

    v63 = *v13;
    v218[0] = v17;
    if (v17)
    {
      v219 = v211;
    }

    v220 = v60;
    v221 = v61;
    if (v61)
    {
      v222 = v238;
      v223 = v239;
    }

    v224 = v62;
    if (v62)
    {
      v225 = v11;
    }

    v64 = re::addDrawCall(a5, v52, v63, v214.u32[0], v218);
    a2 = v64;
    *(v64 + 164) = *(a10 + 52);
    if (*(v64 + 176))
    {
      if ((*(a10 + 64) & 1) == 0)
      {
        *(v64 + 176) = 0;
        goto LABEL_107;
      }
    }

    else
    {
      if ((*(a10 + 64) & 1) == 0)
      {
        goto LABEL_107;
      }

      *(v64 + 176) = 1;
    }

    v65 = *(a10 + 96);
    *(v64 + 192) = *(a10 + 80);
    *(v64 + 208) = v65;
LABEL_107:
    if ((*(a5 + 320) & 1) == 0)
    {
      v243[0] = *v16;
      (*(*(a5 + 280) + 16))(a5 + 280, v64, v12, v243);
    }

    goto LABEL_109;
  }

  if (isAutomaticInstancingEnabled(void)::onceToken != -1)
  {
    goto LABEL_316;
  }

  while (1)
  {
    if (isAutomaticInstancingEnabled(void)::g_enableAutomaticInstancing != 1)
    {
      goto LABEL_79;
    }

    v17 = *a10;
    if (v17 == 1)
    {
      v231 = *(a10 + 1);
      v232 = *(a10 + 17);
    }

    v209 = *(a10 + 20);
    if (v209 == 1)
    {
      v201 = *(a10 + 24);
    }

    v208 = *(a10 + 64);
    if (v208 == 1)
    {
      v18 = *(a10 + 96);
      v229 = *(a10 + 80);
      v230 = v18;
    }

    if (v213.i64[0] >= 0x1555555555555556uLL)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 12, v213.i64[0]);
      _os_crash();
      __break(1u);
LABEL_318:
      re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_319:
      re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v72, v23);
      _os_crash();
      __break(1u);
LABEL_320:
      v257[0].i64[0] = 0;
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v238 = 0u;
      v193 = v23;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v243 = 136315906;
      *&v243[4] = "operator[]";
      *&v243[12] = 1024;
      *&v243[14] = 468;
      *&v243[18] = 2048;
      *&v243[20] = v10;
      *&v243[28] = 2048;
      *&v243[30] = v193;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_321:
      re::internal::assertLog(7, v21, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, 0, v73, v23);
      _os_crash();
      __break(1u);
      goto LABEL_322;
    }

    v200 = *(a10 + 32);
    *v198 = *(a10 + 40);
    v197 = *(a10 + 48);
    v19 = *(a10 + 52);
    v20 = *(*v13 + 32);
    v10 = v213.i64[0];
    v210 = (*(*v20 + 32))(v20, 12 * v213.i64[0], 4);
    if (!v210)
    {
      goto LABEL_318;
    }

    v22 = v213.i64[0] - 1;
    v23 = v213.i64[0];
    v204 = v17;
    v196 = v20;
    if (v213.i64[0] == 1)
    {
      break;
    }

    v24 = v210;
    do
    {
      *(v24 + 8) = 0;
      *v24 = 0;
      v24 += 12;
      --v22;
    }

    while (v22);
    v25 = 0;
    LODWORD(v11) = 0;
    *(v24 + 8) = 0;
    v26 = 2;
    *v24 = 0;
    v27 = 1;
    a10 = 12;
    while (1)
    {
      v13 = v11;
      if (v23 <= v11)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_51;
      }

      v16 = &v212[12 * v27];
      v12 = &v212[12 * v11];
      v28 = *(v16 + 4);
      if (v28 != *(v12 + 4))
      {
        goto LABEL_51;
      }

      v29 = v216[1];
      if (v29 <= v28)
      {
        goto LABEL_313;
      }

      v10 = 24;
      v30 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*v216 + 24 * *(v16 + 4)), *v16);
      v32 = *(v12 + 4);
      v33 = v216[1];
      if (v33 <= v32)
      {
        goto LABEL_314;
      }

      if ((v17 = v30, v34 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*v216 + 24 * *(v12 + 4)), *v12), (*(v17 + 167) & 1) == 0) && (*(v34 + 167) & 1) == 0 && ((v35 = *(v17 + 232)) == 0 || !*v35) && ((v36 = *(v34 + 232)) == 0 || !*v36) && (v37 = *(v17 + 24), *(v37 + 524) <= 1) && (v38 = *(v34 + 24), *(v38 + 524) <= 1) && (*(v17 + 48) <= 1u ? (v39 = *(v34 + 48) > 1u) : (v39 = 1), !v39 && *(v17 + 52) == *(v34 + 52) && (v37 == v38 ? (v40 = *(v16 + 5) == *(v12 + 5)) : (v40 = 0), v40 && *(v17 + 196) == *(v34 + 196) && (v21 = *(v17 + 60), v21 == *(v34 + 60)) && ((*(v17 + 56) << 24) | (*(v17 + 57) << 16) | *(v17 + 58)) == ((*(v34 + 56) << 24) | (*(v34 + 57) << 16) | *(v34 + 58)) && v21 != -1 && (v17 = *(v17 + 40), v41 = *(v34 + 40), (v42 = *re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::operator[](*(v17 + 56) + 72, v21)) != 0) && *(*v42 + 2704) && *(v17 + 56) == *(v41 + 56) && *(v17 + 64) == *(v41 + 64) && *(v17 + 72) == *(v41 + 72) && *(v17 + 88) == *(v41 + 88) && *(v17 + 80) == *(v41 + 80) && *(v17 + 232) == *(v41 + 232) && *(v17 + 236) == *(v41 + 236) && *(v17 + 240) == *(v41 + 240) && *(v17 + 244) == *(v41 + 244) && *(v17 + 248) == *(v41 + 248) && *(v17 + 252) == *(v41 + 252) && *(v17 + 256) == *(v41 + 256) && *(v17 + 260) == *(v41 + 260) && (v238.i8[0] = 0, v10 = re::CombinedDynamicFunctionConstants::hash((v17 + 104), &v238), v243[0] = 0, v10 == re::CombinedDynamicFunctionConstants::hash((v41 + 104), v243)) && *(v17 + 200) == *(v41 + 200) && *(v17 + 202) == *(v41 + 202) && re::PortalMeshSceneParams::operator==((v17 + 272), (v41 + 272)) && ((v45 = *(v17 + 96), v46 = *(v41 + 96), v45 == v46) || v45 && v46 && ((*(v45 + 248) + (*(v45 + 72) << 6) + (*(v45 + 72) >> 2) - 0x61C8864680B583E9) ^ *(v45 + 72)) == ((*(v46 + 248) + (*(v46 + 72) << 6) + (*(v46 + 72) >> 2) - 0x61C8864680B583E9) ^ *(v46 + 72))) && (*(v17 + 208) != 1 ? (v47 = 0) : (v47 = *(v17 + 216)), *(v41 + 208) != 1 ? (v48 = 0) : (v48 = *(v41 + 216)), v47 == v48))))
      {
        v16 = v212;
        v23 = v213.i64[0];
      }

      else
      {
LABEL_51:
        v10 = v25;
        v16 = v212;
        v23 = v213.i64[0];
        if (v213.i64[0] <= v25)
        {
          goto LABEL_307;
        }

        v43 = v212[12 * v11 + 4];
        v44 = v210 + 12 * v25;
        *v44 = v11;
        LODWORD(v11) = v26 - 1;
        ++v25;
        *(v44 + 4) = v26 - 1;
        *(v44 + 8) = v43;
      }

      v27 = v26;
      v39 = v23 > v26++;
      if (!v39)
      {
        goto LABEL_118;
      }
    }

LABEL_306:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v23);
    _os_crash();
    __break(1u);
LABEL_307:
    v257[0].i64[0] = 0;
    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    v238 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    a10 = v23;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v243 = 136315906;
    *&v243[4] = "operator[]";
    *&v243[12] = 1024;
    *&v243[14] = 468;
    *&v243[18] = 2048;
    *&v243[20] = v10;
    *&v243[28] = 2048;
    *&v243[30] = a10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_308:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v17, v23);
    _os_crash();
    __break(1u);
LABEL_309:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, v17, v23);
    _os_crash();
    __break(1u);
LABEL_310:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v77, v78);
    _os_crash();
    __break(1u);
LABEL_311:
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v16, v165);
    _os_crash();
    __break(1u);
LABEL_312:
    v234.i64[0] = 0;
    v259 = 0u;
    v260 = 0u;
    v258 = 0u;
    memset(v257, 0, sizeof(v257));
    v10 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v249 = 136315906;
    v250 = "operator[]";
    v251 = 1024;
    v252 = 858;
    v253 = 2048;
    v254 = v16;
    v255 = 2048;
    v256 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_313:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v29);
    _os_crash();
    __break(1u);
LABEL_314:
    re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v32, v33);
    _os_crash();
    __break(1u);
LABEL_315:
    *(&v194 + 1) = "index < m_size";
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu");
    _os_crash();
    __break(1u);
LABEL_316:
    dispatch_once(&isAutomaticInstancingEnabled(void)::onceToken, &__block_literal_global_49);
    a1 = v216;
  }

  LODWORD(v11) = 0;
  v25 = 0;
  *(v210 + 8) = 0;
  *v210 = 0;
LABEL_118:
  v72 = v11;
  if (v23 <= v11)
  {
    goto LABEL_319;
  }

  v10 = v25;
  v13 = a4;
  if (v23 <= v25)
  {
    goto LABEL_320;
  }

  v73 = v25 + 1;
  v74 = *(v16 + 12 * v11 + 4);
  v75 = v210 + 12 * v25;
  *v75 = v11;
  *(v75 + 4) = v23;
  *(v75 + 8) = v74;
  if (v23 < v73)
  {
    goto LABEL_321;
  }

  a10 = v204;
  if (v25 != -1)
  {
    v12 = v210;
    v76 = v210 + 12 * v73;
    v202 = a5 + 280;
    v203 = v76;
    v195 = (v16 + 8);
    do
    {
      v17 = *v12;
      if (v23 < v17)
      {
        goto LABEL_308;
      }

      v11 = *(v12 + 4);
      if (v23 < v11)
      {
        goto LABEL_309;
      }

      v16 += 12 * v17;
      v77 = *(v16 + 4);
      v78 = v216[1];
      if (v78 <= v77)
      {
        goto LABEL_310;
      }

      v211 = *(v16 + 4);
      v79 = *v216 + 24 * *(v16 + 4);
      v80 = *v79;
      v81 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*v79, *v16);
      v82 = v81;
      if (*(v79 + 18) == 1 && *(v81 + 167) == 1)
      {
        v83 = *v198;
        if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken != -1)
        {
          v121 = v81;
          dispatch_once(&re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::onceToken, &__block_literal_global_36);
          v82 = v121;
          v83 = *v198;
        }

        v13 = a4;
        v23 = v213.i64[0];
        if (re::PortalUserDefaults::enablePortalEmbeddedInMeshNode(void)::enablePortalReorder == 1 && v200 && v83)
        {
          v84 = v82->n128_u64[0];
          v85 = (v82[10].n128_u8[1] >> 6) & 1;
          v86 = (*(v16 + 5) >> 3) & 1;
          v236[0].i8[0] = 0;
          *&v194 = v236;
          re::addPortalDrawcallByEntityId(v84, a5, a4, v200, v83, v197 & 1, v85, v86, v194);
          v23 = v213.i64[0];
        }

        v16 = v212;
        goto LABEL_175;
      }

      v87 = v215.i32[0];
      if (v215.i64[0])
      {
        v108 = v81;
        v109 = *(v215.i64[0] + 64);
        *(&v240 + 1) = 0;
        v239 = 0uLL;
        LODWORD(v240) = 0;
        v238.i64[0] = v109;
        v238.i64[1] = v109;
        re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(&v238.i64[1], 0);
        LODWORD(v240) = v240 + 1;
        if (v11 != v17)
        {
          v111 = 12 * v11 - 12 * v17;
          v112 = &v195[12 * v17];
          while (1)
          {
            v113 = *(v112 - 4);
            v114 = v216[1];
            if (v114 <= v113)
            {
              break;
            }

            v115 = *v112;
            v116 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*v216 + 24 * *(v112 - 4)), *(v112 - 2));
            v117 = v116[3];
            if (v117)
            {
              v118 = *(v117 + 496);
            }

            else
            {
              v118 = 0;
            }

            v119 = *v116;
            LOBYTE(v244) = 1;
            HIDWORD(v244) = v115;
            re::DrawCallMeshPartsDetails::appendPerMeshPartDetails(&v238, v119, v118, &v244);
            v112 += 12;
            v111 -= 12;
            if (!v111)
            {
              goto LABEL_184;
            }
          }

LABEL_322:
          re::internal::assertLog(6, v110, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v113, v114);
          _os_crash();
          __break(1u);
        }

LABEL_184:
        v120 = re::DrawCallRecorderGroup::recordDrawCallMeshPartsDetails(re::DrawCallMeshPartsDetails const&)::nextIndex++;
        v249 = v120;
        re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(v215.i64[0] + 112, &v249, &v238);
        v199 = v249;
        re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v238.i64[1]);
        v87 = 1;
        a10 = v204;
        v76 = v203;
        v82 = v108;
      }

      v88 = v11 - v17;
      if (v11 - v17 >= 2)
      {
        v89 = *(v16 + 5);
        if (a10)
        {
          v238 = v231;
          LOBYTE(v239) = v232;
        }

        v90 = *a4;
        v243[0] = v87;
        if (v87)
        {
          *&v243[4] = v199;
        }

        v243[8] = v89;
        v243[9] = a10;
        if (a10)
        {
          *&v243[10] = v238;
          v243[26] = v239;
        }

        v243[28] = v209;
        if (v209)
        {
          *&v243[32] = v201;
        }

        v91 = 0;
        v205 = re::addInstancedDrawCall(a5, v82, v90, v214.u32[0], v11 - v17, v243);
        v92 = *(v205 + 84);
        v93 = 1;
        do
        {
          v11 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](v80, *(v16 + 12 * v91));
          v94 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](a5 + 56, v91 + v92);
          v95 = *(v11 + 128);
          v97 = *(v11 + 80);
          v96 = *(v11 + 96);
          v94[2] = *(v11 + 112);
          v94[3] = v95;
          *v94 = v97;
          v94[1] = v96;
          v98 = *(*(v11 + 40) + 96);
          if (v98)
          {
            v99 = v98 + 152;
          }

          else
          {
            v99 = 0;
          }

          *re::BucketArray<re::ConstantTable const*,128ul>::operator[](a5 + 112, v91 + v92) = v99;
          v100 = *(v11 + 208) * *(v11 + 200);
          *re::BucketArray<unsigned int,128ul>::operator[](a5 + 168, v91 + v92) = v100;
          v101 = *(v11 + 216);
          *re::BucketArray<unsigned int,128ul>::operator[](a5 + 224, v91 + v92) = v101;
          v91 = v93;
          v39 = v88 > v93++;
        }

        while (v39);
        v21 = v205;
        *(v205 + 164) = v19;
        if (*(v205 + 176))
        {
          v13 = a4;
          v16 = v212;
          v23 = v213.i64[0];
          a10 = v204;
          v76 = v203;
          if ((v208 & 1) == 0)
          {
            *(v205 + 176) = 0;
            goto LABEL_167;
          }

LABEL_166:
          v105 = v230;
          *(v205 + 192) = v229;
          *(v205 + 208) = v105;
        }

        else
        {
          v13 = a4;
          v16 = v212;
          v23 = v213.i64[0];
          a10 = v204;
          v76 = v203;
          if (v208)
          {
            *(v205 + 176) = 1;
            goto LABEL_166;
          }
        }

LABEL_167:
        if ((*(a5 + 320) & 1) == 0)
        {
          LOBYTE(v249) = v211;
          v106 = *(*v202 + 16);
LABEL_174:
          v106();
          v23 = v213.i64[0];
          goto LABEL_175;
        }

        goto LABEL_175;
      }

      v102 = *(v16 + 5);
      if (a10)
      {
        v238 = v231;
        LOBYTE(v239) = v232;
      }

      v13 = a4;
      v103 = *a4;
      v257[0].i8[0] = v87;
      v16 = v212;
      if (v87)
      {
        v257[0].i32[1] = v199;
      }

      v257[0].i8[8] = v102;
      v257[0].i8[9] = a10;
      if (a10)
      {
        *(v257 + 10) = v238;
        v257[1].i8[10] = v239;
      }

      v257[1].i8[12] = v209;
      if (v209)
      {
        LODWORD(v258) = v201;
      }

      v104 = re::addDrawCall(a5, v82, v103, v214.u32[0], v257);
      v21 = v104;
      *(v104 + 164) = v19;
      if (*(v104 + 176))
      {
        v23 = v213.i64[0];
        if ((v208 & 1) == 0)
        {
          *(v104 + 176) = 0;
          goto LABEL_172;
        }
      }

      else
      {
        v23 = v213.i64[0];
        if ((v208 & 1) == 0)
        {
          goto LABEL_172;
        }

        *(v104 + 176) = 1;
      }

      v107 = v230;
      *(v104 + 192) = v229;
      *(v104 + 208) = v107;
LABEL_172:
      if ((*(a5 + 320) & 1) == 0)
      {
        LOBYTE(v249) = v211;
        v106 = *(*v202 + 16);
        goto LABEL_174;
      }

LABEL_175:
      v12 += 12;
    }

    while (v12 != v76);
  }

  (*(*v196 + 40))(v196, v210);
LABEL_186:
  result = re::RenderGraphDataStore::tryGet<re::CameraData>(*(v13 + 1168), *(*(v13 + 40) + 48));
  if (!result)
  {
    return result;
  }

  v11 = re::RenderGraphDataStore::get<re::CameraData>(*(v13 + 1168), *(*(v13 + 40) + 48));
  v245 = 0;
  v244 = 0;
  v246 = 1;
  v248 = 0;
  v247 = 0;
  *&v243[8] = 0;
  *v243 = 0;
  *&v243[16] = 1;
  v123 = &v243[24];
  *&v243[32] = 0;
  *&v243[24] = 0;
  re::RenderGraphContext::rtAttachmentHandles(v13, *(v13 + 40), v243);
  if (v243[16])
  {
    v125 = &v243[24];
  }

  else
  {
    v125 = *&v243[32];
  }

  if (*&v243[8])
  {
    v126 = &v125[2 * *&v243[8]];
    do
    {
      v237[0] = *v125;
      v237[1] = v125[1];
      v124 = re::RenderGraphResourceDescriptions::targetDescription(*(*(v13 + 1176) + 168), v237);
      v127 = v124[104];
      if (v127)
      {
        break;
      }

      v125 += 2;
    }

    while (v125 != v126);
  }

  else
  {
    v127 = 0;
  }

  if (!*(v13 + 1052) && !*(v13 + 112))
  {
    v128 = 0;
    goto LABEL_228;
  }

  if ((v243[16] & 1) == 0)
  {
    v123 = *&v243[32];
  }

  if (*&v243[8])
  {
    v129 = &v123[16 * *&v243[8]];
    v12 = 0x7FFFFFFFLL;
    do
    {
      v130 = *(v123 + 2);
      v257[0].i32[0] = *(v123 + 2);
      if (*(a4 + 1052))
      {
        v131 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v130 ^ (v130 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v130 ^ (v130 >> 30))) >> 27));
        v124 = re::HashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false,false>::findEntry<unsigned int>(a4 + 1024, v257, v131 ^ (v131 >> 31), &v238);
        if (v238.i32[3] != 0x7FFFFFFF)
        {
          LODWORD(v130) = *(v123 + 2);
          goto LABEL_206;
        }
      }

      else
      {
        v135 = *(a4 + 112);
        if (v135)
        {
          v136 = 112 * v135;
          v137 = (a4 + 128);
          while (*v137 != v130)
          {
            v137 += 28;
            v136 -= 112;
            if (!v136)
            {
              goto LABEL_226;
            }
          }

LABEL_206:
          if (v244)
          {
            v132 = v246;
            if (v246)
            {
              if (v245 - 8 < 0xFFFFFFFFFFFFFFF7)
              {
                v133 = v245 + 1;
                v134 = 16;
LABEL_219:
                if (v134 <= v133)
                {
                  v138 = v133;
                }

                else
                {
                  v138 = v134;
                }

                v124 = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(&v244, v138);
                v132 = v246;
              }
            }

            else if (v245 >= v247)
            {
              v133 = v245 + 1;
              if (v247 < v245 + 1)
              {
                v134 = 2 * v247;
                goto LABEL_219;
              }
            }
          }

          else
          {
            v124 = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(&v244, v245 + 1);
            v132 = v246 + 2;
            v246 += 2;
          }

          v40 = (v132 & 1) == 0;
          v139 = v248;
          v140 = v245;
          if (!v40)
          {
            v139 = &v247;
          }

          *(v139 + v245) = v130;
          v245 = v140 + 1;
          v246 += 2;
        }
      }

LABEL_226:
      v123 += 16;
    }

    while (v123 != v129);
  }

  v128 = v245 != 0;
  v13 = a4;
LABEL_228:
  if ((v127 | v128) != 1)
  {
    goto LABEL_294;
  }

  v17 = *(*(v13 + 40) + 24);
  v10 = *(v11 + 48);
  re::RenderGraphContext::initOccupancyGridIfNecessary(v13, v17);
  v257[0].i64[0] = v17;
  v141 = strlen(v17);
  v211 = v128;
  if (v141)
  {
    MurmurHash3_x64_128(v17, v141, 0, &v238);
    v142 = (v238.i64[1] + (v238.i64[0] << 6) + (v238.i64[0] >> 2) - 0x61C8864680B583E9) ^ v238.i64[0];
  }

  else
  {
    v142 = 0;
  }

  re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(v13 + 1072, v257, v142, &v238);
  a5 = v238.u32[3];
  v144 = *(v13 + 1088);
  v238 = 0uLL;
  LODWORD(v239) = 1;
  v240 = 0uLL;
  if (v10)
  {
    v12 = 0;
    v17 = v11 + 64;
    v145 = (v11 + 144);
    while (1)
    {
      v146 = *(v11 + 48);
      if (v146 <= v12)
      {
        break;
      }

      v147 = *(v11 + 128);
      if (v147 <= v12)
      {
        goto LABEL_304;
      }

      re::RenderCamera::computeWorldToScreenMatrix(v17, v145, v257);
      re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::add(&v238, v257);
      ++v12;
      v145 = (v145 + 240);
      v17 += 32;
      if (v10 == v12)
      {
        goto LABEL_237;
      }
    }

LABEL_303:
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v12, v146);
    _os_crash();
    __break(1u);
LABEL_304:
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v12, v147);
    _os_crash();
    __break(1u);
LABEL_305:
    re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v152, v153);
    _os_crash();
    __break(1u);
    goto LABEL_306;
  }

LABEL_237:
  v148 = v212;
  v149 = v216;
  if (v213.i64[0])
  {
    v150 = v144 + 224 * a5 + 40;
    a10 = &v212[12 * v213.i64[0]];
    v206 = v150 + 16;
    v207 = v150;
    a5 = 24;
    v151.i64[0] = 0x7F0000007FLL;
    v151.i64[1] = 0x7F0000007FLL;
    v215 = vnegq_f32(v151);
    do
    {
      v152 = v148[4];
      v153 = v149[1];
      if (v153 <= v152)
      {
        goto LABEL_305;
      }

      v154 = v148;
      v17 = re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](*(*v149 + 24 * v148[4]), *v148);
      v155 = *(v17 + 40);
      if (v155)
      {
        v143 = *(v17 + 60);
        if (v143 != -1)
        {
          v156 = *(v17 + 32);
          TechniqueAtIndex = re::MaterialParameterTableLayers::getTechniqueAtIndex(v155, v143);
          if (TechniqueAtIndex)
          {
            v158 = *TechniqueAtIndex;
            if (*TechniqueAtIndex)
            {
              if ((*(v17 + 193) & 2) == 0)
              {
                v159 = *(v158 + 2480);
                v160 = (v159 & 1) != 0 ? v159 >> 1 : v159 >> 1;
                v161 = *(v158 + 108);
                if (v160 && v161 != 0)
                {
                  re::MeshPart::computeTriangleCount(*(v17 + 24));
                  if (v163)
                  {
                    v164 = vcgtq_f32(*v156, v156[1]);
                    v164.i32[3] = v164.i32[2];
                    if ((vmaxvq_u32(v164) & 0x80000000) == 0)
                    {
                      v212 = v154;
                      re::AABB::transform(v156, (v17 + 80), v236);
                      if (v10)
                      {
                        v16 = 0;
                        while (1)
                        {
                          v165 = *(v11 + 48);
                          if (v165 <= v16)
                          {
                            goto LABEL_311;
                          }

                          a5 = v238.u64[1];
                          if (v238.i64[1] <= v16)
                          {
                            goto LABEL_312;
                          }

                          v166 = &v240;
                          if ((v239 & 1) == 0)
                          {
                            v166 = *(&v240 + 1);
                          }

                          re::AABB::transform(v236, &v166[4 * v16], &v234);
                          v167 = v234;
                          v168 = v235;
                          v167.i32[3] = 0;
                          v169 = vmaxnmq_f32(v167, 0);
                          v169.i32[3] = 0;
                          v170 = vminnmq_f32(v169, xmmword_1E304F3C0);
                          v168.i32[3] = 0;
                          v171 = vmaxnmq_f32(v168, 0);
                          v171.i32[3] = 0;
                          v213 = vminnmq_f32(v171, xmmword_1E304F3C0);
                          v214 = v170;
                          v234 = v170;
                          v235 = v213;
                          if (v127)
                          {
                            if (*v207 <= v16)
                            {
                              goto LABEL_315;
                            }

                            re::FixedOccupancyGrid::setOccupied(v206 + 80 * v16, &v234, (*(v17 + 196) >> 17) & 3);
                          }

                          if (v211)
                          {
                            v12 = ((v246 & 1) != 0 ? &v247 : v248);
                            if (v245)
                            {
                              break;
                            }
                          }

LABEL_288:
                          ++v16;
                          v13 = a4;
                          a5 = 24;
                          if (v16 == v10)
                          {
                            goto LABEL_289;
                          }
                        }

                        v13 = v12 + 4 * v245;
                        v172 = v214;
                        v172.i32[3] = 0;
                        v214 = v172;
                        v173 = v213;
                        v173.i32[3] = 0;
                        v213 = v173;
                        while (2)
                        {
                          v233 = *v12;
                          v174 = re::SmallHashTable<unsigned int,re::DynamicOverflowArray<re::AABB,2ul>,8ul,re::Hash<unsigned int>,re::EqualTo<unsigned int>,false>::tryGet(a4 + 96, &v233);
                          v175 = v174;
                          a5 = *(v174 + 8);
                          v176.i64[0] = 0x7F0000007FLL;
                          v176.i64[1] = 0x7F0000007FLL;
                          v177 = v215;
                          if (a5 < v10)
                          {
                            if (*v174)
                            {
                              if ((*(v174 + 16) & 1) == 0)
                              {
                                goto LABEL_272;
                              }

LABEL_274:
                              v178 = 2;
                            }

                            else
                            {
                              re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(v175, v10);
                              v177 = v215;
                              v176.i64[0] = 0x7F0000007FLL;
                              v176.i64[1] = 0x7F0000007FLL;
                              v179 = *(v175 + 16) + 2;
                              *(v175 + 16) = v179;
                              if (v179)
                              {
                                goto LABEL_274;
                              }

LABEL_272:
                              v178 = *(v175 + 32);
                            }

                            if (v178 < v10)
                            {
                              re::DynamicOverflowArray<re::AABB,2ul>::setCapacity(v175, v10);
                              v177 = v215;
                              v176.i64[0] = 0x7F0000007FLL;
                              v176.i64[1] = 0x7F0000007FLL;
                            }

                            v180 = *(v175 + 8);
                            v181 = v10 - v180;
                            if (v10 > v180)
                            {
                              v182 = 32 * v180;
                              do
                              {
                                v183 = v175 + 32;
                                if ((*(v175 + 16) & 1) == 0)
                                {
                                  v183 = *(v175 + 40);
                                }

                                v184 = (v183 + v182);
                                *v184 = v177;
                                v184[1] = v176;
                                v182 += 32;
                                --v181;
                              }

                              while (v181);
                            }

                            *(v175 + 8) = v10;
                            *(v175 + 16) += 2;
                            a5 = v10;
                          }

                          if (a5 <= v16)
                          {
                            goto LABEL_302;
                          }

                          if (*(v175 + 16))
                          {
                            v185 = v175 + 32;
                          }

                          else
                          {
                            v185 = *(v175 + 40);
                          }

                          v186 = (v185 + 32 * v16);
                          v187 = *v186;
                          v188 = v186[1];
                          v187.i32[3] = 0;
                          v188.i32[3] = 0;
                          *v186 = vminnmq_f32(v187, v214);
                          v186[1] = vmaxnmq_f32(v188, v213);
                          v12 += 4;
                          if (v12 == v13)
                          {
                            goto LABEL_288;
                          }

                          continue;
                        }
                      }

LABEL_289:
                      v189 = *(v13 + 64);
                      v190 = *(v13 + 80);
                      v189.i32[3] = 0;
                      v191 = v236[0];
                      v192 = v236[1];
                      v191.i32[3] = 0;
                      v190.i32[3] = 0;
                      v192.i32[3] = 0;
                      *(v13 + 64) = vminnmq_f32(v189, v191);
                      *(v13 + 80) = vmaxnmq_f32(v190, v192);
                      v154 = v212;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v148 = v154 + 12;
      v149 = v216;
    }

    while (v154 + 12 != a10);
  }

  if (v238.i64[0] && (v239 & 1) == 0)
  {
    (*(*v238.i64[0] + 40))();
  }

LABEL_294:
  if (*v243 && (v243[16] & 1) == 0)
  {
    (*(**v243 + 40))();
  }

  result = v244;
  if (v244)
  {
    if ((v246 & 1) == 0)
    {
      return (*(*v244 + 40))();
    }
  }

  return result;
}

uint64_t re::Slice<re::FilteredMeshPass>::operator[](uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return a1 + 24 * a3;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, a2, v3, v4);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::RenderGraphMeshNodeBase::setColorAttachment(uint64_t a1, int a2, uint64_t *a3, __int128 *a4, char a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0x600000001;
  re::RenderGraphMeshNodeBase::removeTargetWritesWithTypes(a1, &v15, 2uLL, a2);
  v12 = *a4;
  v15 = *a3;
  v16 = a3[1];
  v17 = a2;
  v18 = 1;
  v14 = v12;
  v19 = v12;
  v20 = a5;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v15).n128_u64[0];
  if (*a6 == 1)
  {
    v15 = *(a6 + 8);
    v16 = *(a6 + 16);
    v17 = a2;
    v18 = 6;
    v19 = v14;
    v20 = a5;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v15).n128_u64[0];
  }

  return result;
}

double re::RenderGraphMeshNodeBase::setDepthOnlyAttachment(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, float a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0x700000002;
  re::RenderGraphMeshNodeBase::removeTargetWritesWithTypes(a1, &v13, 2uLL, 0);
  *&v9 = LODWORD(a5);
  DWORD2(v9) = 0;
  HIDWORD(v9) = 1.0;
  v13 = *a2;
  v14 = a2[1];
  v15 = 0x200000000;
  v12 = v9;
  v16 = v9;
  v17 = a3;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v13).n128_u64[0];
  if (*a4 == 1)
  {
    v13 = *(a4 + 8);
    v14 = *(a4 + 16);
    v15 = 0x700000000;
    v16 = v12;
    v17 = a3;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v13).n128_u64[0];
  }

  return result;
}

double re::RenderGraphMeshNodeBase::setStencilOnlyAttachment(uint64_t a1, uint64_t *a2, unsigned int a3, char a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0x800000003;
  re::RenderGraphMeshNodeBase::removeTargetWritesWithTypes(a1, &v13, 2uLL, 0);
  *&v10 = a3;
  DWORD2(v10) = 0;
  HIDWORD(v10) = 1.0;
  v13 = *a2;
  v14 = a2[1];
  v15 = 0x300000000;
  v12 = v10;
  v16 = v10;
  v17 = a4;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v13).n128_u64[0];
  if (*a5 == 1)
  {
    v13 = *(a5 + 8);
    v14 = *(a5 + 16);
    v15 = 0x800000000;
    v16 = v12;
    v17 = a4;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    *&result = re::DynamicArray<re::TargetWrite>::add((a1 + 224), &v13).n128_u64[0];
  }

  return result;
}

uint64_t *re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(void *a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v66 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v63, a3, 3);
  if (!a1[30])
  {
    v9 = 0;
    v36 = 0;
    v38 = 0;
    v8 = 0;
    v35 = 0;
    v37 = 0;
    goto LABEL_85;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = (a1[32] + (v7 << 6));
    v12 = *(v11 + 5);
    if (v12 <= 5)
    {
      if (v12 != 1)
      {
        if (v12 == 2)
        {
          if (v8)
          {
            if (v47)
            {
              v17 = a1[2];
              v57 = 0;
              v58 = -1;
              v57 = *v11;
              v58 = v11[1];
              re::RenderGraphCompiled::targetName(a2, &v57, &v68);
              re::DynamicString::format("(%s): Cannot bind more than one depth target. Using target %s.", &v74, v17, *&v69[4]);
              re::RenderGraphCompiled::addError(a2, &v74);
              v18 = v74;
              if (v74)
              {
                if (BYTE8(v74))
                {
                  v18 = (*(*v74 + 40))(v74, v75);
                }

                v74 = 0u;
                v75 = 0u;
              }

              if (v68)
              {
                if (v68)
                {
                }
              }
            }
          }

          else
          {
            v3 = 0;
          }

          v8 = 1;
          v47 = 1;
          v44 = v10 - 1;
        }

        else
        {
          if (v12 != 3)
          {
            goto LABEL_117;
          }

          if (v9)
          {
            if (v48)
            {
              v13 = a1[2];
              v53 = 0;
              v54 = -1;
              v53 = *v11;
              v54 = v11[1];
              re::RenderGraphCompiled::targetName(a2, &v53, &v68);
              re::DynamicString::format("(%s): Cannot bind more than one stencil target. Using target %s.", &v74, v13, *&v69[4]);
              re::RenderGraphCompiled::addError(a2, &v74);
              v14 = v74;
              if (v74)
              {
                if (BYTE8(v74))
                {
                  v14 = (*(*v74 + 40))(v74, v75);
                }

                v74 = 0u;
                v75 = 0u;
              }

              if (v68)
              {
                if (v68)
                {
                }
              }
            }
          }

          else
          {
            v50 = 0;
          }

          v9 = 1;
          v48 = 1;
          v46 = v10 - 1;
        }

        goto LABEL_71;
      }

      v21 = *(v11 + 4);
      re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v74, &v63, *(v11 + 4));
      if (HIDWORD(v74) == 0x7FFFFFFF)
      {
        LOBYTE(v74) = 1;
        DWORD1(v74) = v10 - 1;
        BYTE8(v74) = 0;
LABEL_50:
        re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(&v63, v11 + 4, &v74);
        goto LABEL_71;
      }

      re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v74, &v63, v21);
      v23 = v64;
      if (*(v64 + 32 * HIDWORD(v74) + 8) == 1)
      {
        v41 = v3;
        v24 = a1[2];
        v61 = 0;
        v62 = -1;
        v61 = *v11;
        v62 = v11[1];
        re::RenderGraphCompiled::targetName(a2, &v61, &v68);
        re::DynamicString::format("(%s): Cannot bind more than one color target to attachmentIndex %u. Using target %s.", &v74, v24, v21, *&v69[4]);
        re::RenderGraphCompiled::addError(a2, &v74);
        v25 = v74;
        if (v74)
        {
          if (BYTE8(v74))
          {
            v25 = (*(*v74 + 40))(v74, v75);
          }

          v74 = 0u;
          v75 = 0u;
        }

        if (v68)
        {
          if (v68)
          {
          }
        }

        LODWORD(v21) = *(v11 + 4);
        v3 = v41;
      }

      re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v74, &v63, v21);
      v26 = v23 + 32 * HIDWORD(v74);
      v28 = *(v26 + 8);
      v27 = v26 + 8;
      if ((v28 & 1) == 0)
      {
LABEL_69:
        *v27 = 1;
      }

LABEL_70:
      *(v27 + 4) = v10 - 1;
      goto LABEL_71;
    }

    switch(v12)
    {
      case 6:
        v22 = *(v11 + 4);
        re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v74, &v63, *(v11 + 4));
        if (HIDWORD(v74) == 0x7FFFFFFF)
        {
          LOBYTE(v74) = 0;
          BYTE8(v74) = 1;
          HIDWORD(v74) = v10 - 1;
          goto LABEL_50;
        }

        re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v74, &v63, v22);
        v30 = v64;
        if (*(v64 + 32 * HIDWORD(v74) + 16) == 1)
        {
          v42 = v3;
          v31 = a1[2];
          v59 = 0;
          v60 = -1;
          v59 = *v11;
          v60 = v11[1];
          re::RenderGraphCompiled::targetName(a2, &v59, &v68);
          re::DynamicString::format("(%s): Cannot bind more than one color resolve target to attachmentIndex %u. Using target %s.", &v74, v31, v22, *&v69[4]);
          re::RenderGraphCompiled::addError(a2, &v74);
          v32 = v74;
          if (v74)
          {
            if (BYTE8(v74))
            {
              v32 = (*(*v74 + 40))(v74, v75);
            }

            v74 = 0u;
            v75 = 0u;
          }

          if (v68)
          {
            if (v68)
            {
            }
          }

          LODWORD(v22) = *(v11 + 4);
          v3 = v42;
        }

        re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v74, &v63, v22);
        v33 = v30 + 32 * HIDWORD(v74);
        v34 = *(v33 + 16);
        v27 = v33 + 16;
        if ((v34 & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      case 7:
        if (v8)
        {
          if (v3)
          {
            v19 = a1[2];
            v55 = 0;
            v56 = -1;
            v55 = *v11;
            v56 = v11[1];
            re::RenderGraphCompiled::targetName(a2, &v55, &v68);
            re::DynamicString::format("(%s): Cannot bind more than one depth resolve target. Using target %s.", &v74, v19, *&v69[4]);
            re::RenderGraphCompiled::addError(a2, &v74);
            v20 = v74;
            if (v74)
            {
              if (BYTE8(v74))
              {
                v20 = (*(*v74 + 40))(v74, v75);
              }

              v74 = 0u;
              v75 = 0u;
            }

            if (v68)
            {
              if (v68)
              {
              }
            }
          }
        }

        else
        {
          v47 = 0;
        }

        v8 = 1;
        v3 = 1;
        v43 = v10 - 1;
        break;
      case 8:
        if (v9)
        {
          if (v50)
          {
            v15 = a1[2];
            v51 = 0;
            v52 = -1;
            v51 = *v11;
            v52 = v11[1];
            re::RenderGraphCompiled::targetName(a2, &v51, &v68);
            re::DynamicString::format("(%s): Cannot bind more than one stencil resolve target. Using target %s.", &v74, v15, *&v69[4]);
            re::RenderGraphCompiled::addError(a2, &v74);
            v16 = v74;
            if (v74)
            {
              if (BYTE8(v74))
              {
                v16 = (*(*v74 + 40))(v74, v75);
              }

              v74 = 0u;
              v75 = 0u;
            }

            if (v68)
            {
              if (v68)
              {
              }
            }
          }
        }

        else
        {
          v48 = 0;
        }

        v9 = 1;
        v50 = 1;
        v45 = v10 - 1;
        break;
      default:
        goto LABEL_117;
    }

LABEL_71:
    v7 = v10;
  }

  while (a1[30] > v10++);
  v4 = v3;
  v35 = v44;
  v36 = v46;
  v37 = v43;
  v38 = v45;
LABEL_85:
  if (!HIDWORD(v64) && (v8 & 1) == 0 && (v9 & 1) == 0)
  {
    re::DynamicString::format("(%s): No attachments are bound.", &v74, a1[2]);
    re::RenderGraphCompiled::addError(a2, &v74);
    if (v74)
    {
      if (BYTE8(v74))
      {
        (*(*v74 + 40))(v74, v75);
      }
    }
  }

  if ((v8 & v9 & 1) == 0)
  {
    return re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(&v63);
  }

  v39 = a1[30];
  if (v39 <= v35)
  {
    v67 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v68 = 136315906;
    *v69 = "operator[]";
    *&v69[8] = 1024;
    *&v69[10] = 797;
    v70 = 2048;
    v71 = v35;
    v72 = 2048;
    v73 = v39;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

  if (v39 <= v36)
  {
LABEL_114:
    v67 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v68 = 136315906;
    *v69 = "operator[]";
    *&v69[8] = 1024;
    *&v69[10] = 797;
    v70 = 2048;
    v71 = v36;
    v72 = 2048;
    v73 = v39;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  if (*(a1[32] + (v35 << 6) + 8) != *(a1[32] + (v36 << 6) + 8))
  {
    re::DynamicString::format("(%s): Depth and stencil attachment, if both bound, must use the same target", &v74, a1[2]);
    re::RenderGraphCompiled::addError(a2, &v74);
    if (v74)
    {
      if (BYTE8(v74))
      {
        (*(*v74 + 40))(v74, v75);
      }
    }
  }

  if (v4)
  {
    if (v50)
    {
      goto LABEL_106;
    }

LABEL_102:
    re::DynamicString::format("(%s): Depth and stencil either both use the same resolve target, or don't use resolve target at all.", &v74, a1[2]);
    re::RenderGraphCompiled::addError(a2, &v74);
    if (v74 && (BYTE8(v74) & 1) != 0)
    {
      (*(*v74 + 40))(v74, v75);
    }

    if (v4)
    {
LABEL_106:
      v39 = a1[30];
      if (v39 > v37)
      {
        if (v39 > v38)
        {
          if (*(a1[32] + (v37 << 6) + 8) != *(a1[32] + (v38 << 6) + 8))
          {
            re::DynamicString::format("(%s): Depth and stencil either both use the same resolve target, or don't use resolve target at all.", &v74, a1[2]);
            re::RenderGraphCompiled::addError(a2, &v74);
            if (v74)
            {
              if (BYTE8(v74))
              {
                (*(*v74 + 40))(v74, v75);
              }
            }
          }

          return re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(&v63);
        }

LABEL_116:
        v67 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v68 = 136315906;
        *v69 = "operator[]";
        *&v69[8] = 1024;
        *&v69[10] = 797;
        v70 = 2048;
        v71 = v38;
        v72 = 2048;
        v73 = v39;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_117:
        re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Invalid RenderGraphResourceOperationType for RenderGraphMeshNode.", "!Unreachable code", "validateAttachmentsDuringGraphBuild", 967);
        _os_crash();
        __break(1u);
      }

LABEL_115:
      v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      *v69 = "operator[]";
      *&v69[8] = 1024;
      *&v69[10] = 797;
      v70 = 2048;
      v71 = v37;
      v72 = 2048;
      v73 = v39;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_116;
    }
  }

  else if (v50)
  {
    goto LABEL_102;
  }

  return re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(&v63);
}

uint64_t re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v9, a1, *a2);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v10, v9);
    *(result + 4) = *a2;
    v7 = *a3;
    *(result + 8) = v7;
    if (v7 == 1)
    {
      *(result + 12) = *(a3 + 1);
    }

    v8 = a3[8];
    *(result + 16) = v8;
    if (v8 == 1)
    {
      *(result + 20) = *(a3 + 3);
    }

    ++*(a1 + 40);
  }

  return result;
}

uint64_t *re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(uint64_t *a1)
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

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void re::RenderGraphMeshNodeBase::validateAttachmentsPerFrame(void *a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = a1[30];
  if (!v2)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  LODWORD(v8) = 0;
  v9 = 0;
  v35 = 0;
  memset(v41, 0, sizeof(v41));
  v38 = 0xFFFFFFFFLL;
  v36 = 0xFFFFFFFFLL;
  v37 = 0xFFFFFFFFLL;
  v34 = 0xFFFFFFFFLL;
  while (1)
  {
    v10 = a1[32];
    v11 = v10 + v5;
    if (*(v10 + v5 + 8) == -1 || *(v11 + 12) == -1)
    {
      goto LABEL_78;
    }

    if (v2 <= v6)
    {
      v39 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v6;
      v49 = 2048;
      v50 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_91:
      v42 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      v46 = 468;
      v47 = 2048;
      v48 = v2;
      v49 = 2048;
      v50 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_92:
      v42 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v6;
      v49 = 2048;
      v50 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_93:
      v42 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v6;
      v49 = 2048;
      v50 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = v10 + v5;
    v13 = *(v12 + 20);
    if (v13 == 5)
    {
      goto LABEL_78;
    }

    v14 = *(v12 + 16);
    re::RenderGraphResourceDescriptions::targetDescriptionSource(*(a2 + 168), v11, &v39);
    v2 = v40;
    v15 = a2;
    v16 = *(a2 + 8);
    if (v16 <= v40)
    {
      goto LABEL_91;
    }

    v17 = (*(v15 + 16) + 112 * v40);
    a2 = v15;
    if (v9)
    {
      v18 = v38;
      if (v17[3] != v37)
      {
        re::DynamicString::format("(%s): Multiple render targets don't have the same width: AttachmentIndex %d: %d, expected %d.", &v51, a1[2], v14, v37, v17[3]);
        re::RenderGraphExecutable::addError(a2, &v51);
        if (v51)
        {
          if (BYTE8(v51))
          {
            (*(*v51 + 40))(v51, v52);
          }
        }
      }

      if (v17[4] != v36)
      {
        re::DynamicString::format("(%s): Multiple render targets don't have the same height: AttachmentIndex %d: %d, expected %d.", &v51, a1[2], v14, v36, v17[4]);
        re::RenderGraphExecutable::addError(a2, &v51);
        if (v51)
        {
          if (BYTE8(v51))
          {
            (*(*v51 + 40))(v51, v52);
          }
        }
      }

      v19 = v17[6];
      if (v19 != v38)
      {
        re::DynamicString::format("(%s): Multiple render targets don't have the same arrayLength: AttachmentIndex %d: %d, expected %d.", &v51, a1[2], v14, v38, v19);
        re::RenderGraphExecutable::addError(a2, &v51);
        if (v51)
        {
          if (BYTE8(v51))
          {
            (*(*v51 + 40))(v51, v52);
          }
        }
      }
    }

    else
    {
      v18 = v17[6];
      v36 = v17[4];
      v37 = v17[3];
    }

    v38 = v18;
    if (v13 > 8)
    {
      goto LABEL_61;
    }

    v20 = 1 << v13;
    if (((1 << v13) & 0x42) != 0)
    {
      break;
    }

    if ((v20 & 0x84) == 0)
    {
      if ((v20 & 0x108) == 0)
      {
        goto LABEL_61;
      }

      v9 = a1[30];
      if (v9 <= v6)
      {
        goto LABEL_92;
      }

      v21 = v17[1];
      if (*(a1[32] + v5 + 49) == 1)
      {
        if ((v21 - 250) > 0xA)
        {
          goto LABEL_83;
        }

        v22 = 1 << (v21 + 6);
        v23 = 1069;
      }

      else
      {
        if ((v21 - 253) > 9)
        {
          goto LABEL_83;
        }

        v22 = 1 << (v21 + 3);
        v23 = 901;
      }

      if ((v22 & v23) != 0)
      {
LABEL_51:
        v30 = v17[1];
        if (v8)
        {
          v8 = v8;
        }

        else
        {
          v8 = v30;
        }

        if (v30 != v8)
        {
          re::DynamicString::format("(%s): Stencil target format and resolve target format don't match (%d vs %d)", &v51, a1[2], v17[1], v8, v33);
          goto LABEL_57;
        }

        LODWORD(v8) = v17[1];
        goto LABEL_61;
      }

LABEL_83:
      re::DynamicString::format("(%s): Invalid stencil target format: %d", &v51, a1[2], v21);
      re::RenderGraphExecutable::addError(a2, &v51);
      if (v51 && (BYTE8(v51) & 1) != 0)
      {
        (*(*v51 + 40))(v51, v52);
      }

      goto LABEL_51;
    }

    v9 = a1[30];
    if (v9 <= v6)
    {
      goto LABEL_93;
    }

    v24 = v17[1];
    if (*(a1[32] + v5 + 49) == 1)
    {
      v25 = 1069;
    }

    else
    {
      v25 = 1061;
    }

    if ((v24 - 250) > 0xA || ((1 << (v24 + 6)) & v25) == 0)
    {
      re::DynamicString::format("(%s): Invalid depth target format: %d", &v51, a1[2], v24);
      re::RenderGraphExecutable::addError(a2, &v51);
      if (v51)
      {
        if (BYTE8(v51))
        {
          (*(*v51 + 40))(v51, v52);
        }
      }
    }

    v29 = v17[1];
    if (v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v29;
    }

    if (v29 != v7)
    {
      re::DynamicString::format("(%s): Depth target format and resolve target format don't match (%d vs %d)", &v51, a1[2], v17[1], v7, v33);
      goto LABEL_57;
    }

    LODWORD(v7) = v17[1];
LABEL_61:
    if (v13 - 1 > 2)
    {
      if (v13 - 6 <= 2)
      {
        v31 = v17[5];
        if (v31 != 1 || v17[21] == -1)
        {
          re::DynamicString::format("(%s): Attachment Index (%d) has resolve target with sample count (%d) > 1, or the resolve target is not pointing at its corresponding MSAA target.", &v51, a1[2], v14, v31);
          re::RenderGraphExecutable::addError(a2, &v51);
          if (v51)
          {
            if (BYTE8(v51))
            {
              (*(*v51 + 40))(v51, v52);
            }
          }
        }
      }
    }

    else if ((v35 & (v17[5] != v34)) == 1)
    {
      v33 = v34;
      re::DynamicString::format("(%s): Attachment Index (%d) has a sample count (%d) that does not match other attachments (%d).", &v51, a1[2], v14, v17[5]);
      re::RenderGraphExecutable::addError(a2, &v51);
      if (v51)
      {
        if (BYTE8(v51))
        {
          (*(*v51 + 40))(v51, v52);
        }
      }

      v35 = 1;
    }

    else
    {
      v35 = 1;
      v34 = v17[5];
    }

    v2 = a1[30];
    v9 = 1;
LABEL_78:
    ++v6;
    v5 += 64;
    if (v2 <= v6)
    {
      return;
    }
  }

  if (v14 <= 7)
  {
    v26 = *(v41 + v14);
    v27 = v17[1];
    if (v26)
    {
      if (v27 != v26)
      {
        re::DynamicString::format("(%s): Attachment Index (%d) target format and resolve target format don't match (%d vs %d)", &v51, a1[2], v14, v17[1], v26);
LABEL_57:
        re::RenderGraphExecutable::addError(a2, &v51);
        if (v51 && (BYTE8(v51) & 1) != 0)
        {
          (*(*v51 + 40))(v51, v52);
        }

        goto LABEL_61;
      }
    }

    else
    {
      *(v41 + v14) = v27;
    }

    goto LABEL_61;
  }

  re::DynamicString::format("(%s): Attachment index %d is greater than pixelFormats array fixed size (%d).", &v51, a1[2], v14, 8);
  re::RenderGraphExecutable::addError(a2, &v51);
  if (v51 && (BYTE8(v51) & 1) != 0)
  {
    (*(*v51 + 40))(v51, v52);
  }
}

uint64_t re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7)
{
  v14 = re::RenderGraphDataStore::get<re::CameraData>(*(a4 + 1168), *(*(a4 + 40) + 48));
  re::RenderGraphDataStore::get<re::CameraMatrices>(*(a4 + 1168), *(*(a4 + 40) + 48));
  v17 = *(v14 + 890);
  v20 = *a7;
  if (v20 == 1)
  {
    v21 = *(a7 + 1);
    v22 = a7[17];
  }

  v23 = a7[20];
  if (v23 == 1)
  {
    v24 = *(a7 + 6);
  }

  v25 = *(a7 + 2);
  v26 = *(a7 + 6);
  v27 = a7[64];
  if (v27 == 1)
  {
    v18 = *(a7 + 6);
    v28 = *(a7 + 5);
    v29 = v18;
  }

  return re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(a1, a2, a3, a4, a5, v17, v15, v16, a6, &v20);
}

void ___Z28isAutomaticInstancingEnabledv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue("enableAutomaticInstancing", a2, &v5);
  if (v5)
  {
    isAutomaticInstancingEnabled(void)::g_enableAutomaticInstancing = v6;
    if (v6)
    {
      return;
    }
  }

  else if (isAutomaticInstancingEnabled(void)::g_enableAutomaticInstancing)
  {
    return;
  }

  v3 = *re::graphicsLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Automatic instancing of draw calls has been disabled.", v4, 2u);
  }
}

__n128 re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::add(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 32;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = v4 + (*(a1 + 8) << 6);
  result = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v8;
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

double re::RenderGraphMeshNodeBase::drawDebugSortPoints(re::RenderGraphMeshNodeBase *this, const re::RenderGraphContext *a2, const re::MeshSortingCollection *a3, double result)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 1) + 96);
  if (v4)
  {
    v38.i64[0] = 0x5960C87A30814232;
    v38.i64[1] = "meshsorting:visualizeRPGSortPoints";
    LOBYTE(v34) = 0;
    v7 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v4, &v38, &v34);
    if (v7)
    {
      if (v38.i8[0])
      {
        if (v38.i8[0])
        {
        }
      }
    }

    else
    {
      v8 = v34;
      if (v38.i8[0])
      {
        if (v38.i8[0])
        {
        }
      }

      if (a3 && v8 && *(*(a2 + 1) + 80))
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        v37 = 0x7FFFFFFFLL;
        v9 = *(a3 + 20);
        if (v9)
        {
          v10 = 0;
          v11 = *(a3 + 8);
          while (1)
          {
            v12 = *v11;
            v11 += 10;
            if (v12 < 0)
            {
              break;
            }

            if (v9 == ++v10)
            {
              LODWORD(v10) = *(a3 + 20);
              break;
            }
          }
        }

        else
        {
          LODWORD(v10) = 0;
        }

        if (v10 == v9)
        {
          v13 = 0;
          __src = 0;
          v30 = 0;
          v31 = 0;
          v29 = 0;
          v32 = 0;
        }

        else
        {
          v14 = *(a3 + 20);
          do
          {
            v38.i64[0] = *(*(a3 + 8) + 40 * v10 + 16);
            if (v38.i64[0])
            {
              re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v34, &v38);
              v14 = *(a3 + 20);
            }

            if (v14 <= v10 + 1)
            {
              v15 = v10 + 1;
            }

            else
            {
              v15 = v14;
            }

            while (v15 - 1 != v10)
            {
              LODWORD(v10) = v10 + 1;
              if ((*(*(a3 + 8) + 40 * v10) & 0x80000000) != 0)
              {
                goto LABEL_31;
              }
            }

            LODWORD(v10) = v15;
LABEL_31:
            ;
          }

          while (v10 != v9);
          v16 = v36;
          __src = 0;
          v30 = 0;
          v31 = 0;
          v29 = 0;
          v32 = 0;
          if (v36)
          {
            v17 = 0;
            v18 = v35;
            v19 = 8;
            while ((*(v35 + v19) & 0x80000000) == 0)
            {
              ++v17;
              v19 += 24;
              if (v36 == v17)
              {
                LODWORD(v17) = v36;
                break;
              }
            }

            if (v36 != v17)
            {
              do
              {
                v28 = *(v18 + 24 * v17 + 16);
                v20 = re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a3 + 144, &v28);
                if (v20)
                {
                  v23 = v20;
                  v21.i32[0] = 0;
                  v22.i8[0] = *(v20 + 32);
                  v26 = *(v20 + 48);
                  v27 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v22, v21), 0), xmmword_1E3107CA0, xmmword_1E3107C90);
                  v24 = *(*(a2 + 1) + 80);
                  v38 = xmmword_1E3047670;
                  v39 = xmmword_1E3047680;
                  v40 = xmmword_1E30476A0;
                  v41 = xmmword_1E30474D0;
                  re::DebugRenderer::drawBox(v24, &v38, v23, v27.i8, 1);
                  v38 = vaddq_f32(v26, xmmword_1E3107CB0);
                  v39 = vaddq_f32(v26, xmmword_1E3107CC0);
                  v40 = v27;
                  LODWORD(v41) = 1065353216;
                  re::DynamicArray<re::RigTransform>::add(&v29, &v38);
                  v38 = vaddq_f32(v26, xmmword_1E3107CD0);
                  v39 = vaddq_f32(v26, xmmword_1E3107CE0);
                  v40 = v27;
                  LODWORD(v41) = 1065353216;
                  re::DynamicArray<re::RigTransform>::add(&v29, &v38);
                  v38 = vaddq_f32(v26, xmmword_1E3107CF0);
                  v39 = vaddq_f32(v26, xmmword_1E3107D00);
                  v40 = v27;
                  LODWORD(v41) = 1065353216;
                  re::DynamicArray<re::RigTransform>::add(&v29, &v38);
                }

                v18 = v35;
                if (v36 <= v17 + 1)
                {
                  v25 = v17 + 1;
                }

                else
                {
                  v25 = v36;
                }

                while (v25 - 1 != v17)
                {
                  LODWORD(v17) = v17 + 1;
                  if ((*(v35 + 24 * v17 + 8) & 0x80000000) != 0)
                  {
                    goto LABEL_47;
                  }
                }

                LODWORD(v17) = v25;
LABEL_47:
                ;
              }

              while (v17 != v16);
              if (v31)
              {
                re::DynamicArray<re::RenderLine>::copy((*(*(a2 + 1) + 80) + 56), *(*(*(a2 + 1) + 80) + 72), __src, v31);
              }
            }

            v13 = v29;
          }

          else
          {
            v13 = 0;
          }
        }

        if (v13)
        {
          if (__src)
          {
            (*(*v13 + 40))(v13);
          }

          __src = 0;
        }

        return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v34);
      }
    }
  }

  return result;
}

void *re::introspect_MeshSortMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "None";
      re::introspect_MeshSortMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "TechniqueSort";
      qword_1EE1C66A8 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 3;
      *(v15 + 2) = "FrontToBack";
      qword_1EE1C66B0 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 2;
      *(v17 + 2) = "BackToFront";
      qword_1EE1C66B8 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 1) = 5;
      *(v19 + 2) = "FocusFrontToBack";
      qword_1EE1C66C0 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = (*(*v20 + 32))(v20, 24, 8);
      *v21 = 1;
      *(v21 + 8) = 4;
      *(v21 + 16) = "FocusBackToFront";
      qword_1EE1C66C8 = v21;
    }
  }

  {
    v22 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_MeshSortMode(BOOL)::info, "MeshSortMode", 4, 4, 1, 1);
    *v22 = &unk_1F5D0C658;
    *(v22 + 8) = &re::introspect_MeshSortMode(BOOL)::enumTable;
    *(v22 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_MeshSortMode(BOOL)::isInitialized)
    {
      return &re::introspect_MeshSortMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v24);
    v3 = re::introspect_MeshSortMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v24);
    if (v3)
    {
      return &re::introspect_MeshSortMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_MeshSortMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_MeshSortMode(BOOL)::info;
    }
  }

  re::introspect_MeshSortMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_MeshSortMode(BOOL)::info, a2);
  v23[0] = 0x38AFE39ADCB26B1CLL;
  v23[1] = "MeshSortMode";
  xmmword_1EE1C6678 = v24;
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_MeshSortMode(BOOL)::info;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(anonymous namespace::DepthSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  *(a2 + 32) = *a3;
  *(a2 + 36) = *(a3 + 28);
  *(a2 + 44) = *(a3 + 29);
  v7 = *(a1 + 8);
  v13 = 0;
  re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(a2, &v13, v7 * *(a3 + 4));
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 32), &v13);
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 33), &v13);
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 27), &v13);
  re::DrawCallSortKey<4ul,unsigned long long>::appendInt8(a2, (v7 * *(a3 + 34)), &v13);
  re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(a2, &v13, v7 * *(a3 + 8));
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 31), &v13);
  re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(a2, *(a3 + 12), &v13);
  re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(a2, &v13, v7 * *(a3 + 16));
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt16(a2, *(a3 + 24), &v13);
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 30), &v13);
  re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(a2, *(a3 + 20), &v13);
  result = re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(a2, *(a3 + 26), &v13);
  if (v6 && *(a3 + 36) == 1)
  {
    MutableSortingContext = re::DrawCallRecorderGroup::getMutableSortingContext(v6, *(a3 + 40));
    re::DynamicString::format(*(v6 + 64), "Depth Sort - OuterGroupDistance: %f OuterGroupTiebreaker: %d OuterGroupSuborder: %d OuterOrder: %d InnerGroupCameraInsideOutsideOrder: %d InnerGroupDistance: %f InnerGroupTiebreaker: %d InnerOrder: %d MeshDistance: %f TechniqueGroupID: %d IndexInTechniqueGroup: %d CreationOrder: %d DepthPrepassPriority: %d ", &v10, *(a3 + 4), *(a3 + 32), *(a3 + 33), *(a3 + 27), *(a3 + 34), *(a3 + 8), *(a3 + 31), *(a3 + 12), *(a3 + 16), *(a3 + 24), *(a3 + 30), *(a3 + 20), *(a3 + 26));
    re::DynamicString::operator=(MutableSortingContext, &v10);
    result = v10;
    if (v10)
    {
      if (v11)
      {
        result = (*(*v10 + 40))(v10, v12);
      }
    }

    *(a2 + 40) = *(a3 + 40);
  }

  return result;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(anonymous namespace::DepthSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D14750;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(anonymous namespace::DepthSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D14750;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  *(a2 + 40) = *a3;
  *(a2 + 44) = *(a3 + 28);
  v7 = *(a1 + 8);
  v13 = 0;
  re::DrawCallSortKey<5ul,unsigned long long>::appendFloat(a2, &v13, v7 * *(a3 + 4));
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 32), &v13);
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 33), &v13);
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 27), &v13);
  re::DrawCallSortKey<5ul,unsigned long long>::appendInt8(a2, (v7 * *(a3 + 34)), &v13);
  re::DrawCallSortKey<5ul,unsigned long long>::appendFloat(a2, &v13, v7 * *(a3 + 8));
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 31), &v13);
  re::DrawCallSortKey<5ul,unsigned long long>::appendInt32(a2, *(a3 + 12), &v13);
  re::DrawCallSortKey<5ul,unsigned long long>::appendFloat(a2, &v13, v7 * *(a3 + 16));
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt16(a2, *(a3 + 24), &v13);
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 30), &v13);
  re::DrawCallSortKey<5ul,unsigned long long>::appendUInt32(a2, *(a3 + 20), &v13);
  result = re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(a2, *(a3 + 26), &v13);
  if (v6 && *(a3 + 36) == 1)
  {
    MutableSortingContext = re::DrawCallRecorderGroup::getMutableSortingContext(v6, *(a3 + 40));
    re::DynamicString::format(*(v6 + 64), "Depth Sort - OuterGroupDistance: %f OuterGroupTiebreaker: %d OuterGroupSuborder: %d OuterOrder: %d InnerGroupCameraInsideOutsideOrder: %d InnerGroupDistance: %f InnerGroupTiebreaker: %d InnerOrder: %d MeshDistance: %f TechniqueGroupID: %d IndexInTechniqueGroup: %d CreationOrder: %d DepthPrepassPriority: %d ", &v10, *(a3 + 4), *(a3 + 32), *(a3 + 33), *(a3 + 27), *(a3 + 34), *(a3 + 8), *(a3 + 31), *(a3 + 12), *(a3 + 16), *(a3 + 24), *(a3 + 30), *(a3 + 20), *(a3 + 26));
    re::DynamicString::operator=(MutableSortingContext, &v10);
    result = v10;
    if (v10)
    {
      if (v11)
      {
        result = (*(*v10 + 40))(v10, v12);
      }
    }

    *(a2 + 48) = *(a3 + 40);
  }

  return result;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D147B8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_0,void ()(re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey &,anonymous namespace::CommonSortKeyArgs const&,re::DrawCallRecorderGroup *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D147B8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 40 * a2;
}

BOOL re::PortalMeshSceneParams::operator==(float32x4_t *a1, float32x4_t *a2)
{
  if (a1->i8[0] == 1)
  {
    if (!a2->i8[0])
    {
      return 0;
    }

    v2 = vceqq_f32(a1[1], a2[1]);
    v2.i32[3] = v2.i32[2];
    if ((vminvq_u32(v2) & 0x80000000) == 0)
    {
      return 0;
    }

    v3 = vceqq_f32(a1[2], a2[2]);
    v3.i32[3] = v3.i32[2];
    if ((vminvq_u32(v3) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (a2->i8[0])
  {
    return 0;
  }

  return a1[3].i64[0] == a2[3].i64[0];
}

uint64_t re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = 0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30));
  v4 = (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 32 * v7 + 4) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 32 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 32 * v6 + 4) != a3)
  {
    LODWORD(v9) = *(v8 + 32 * v7) & 0x7FFFFFFF;
    while (1)
    {
      LODWORD(v7) = v9;
      v9 = *(v8 + 32 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 32 * v9 + 4) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_7:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 12;
            do
            {
              if ((*(v17 - 12) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v17 + 12) % *(a1 + 24));
                *(v18 + 4) = *(v17 - 8);
                v19 = *(v17 - 4);
                *(v18 + 8) = v19;
                if (v19 == 1)
                {
                  *(v18 + 12) = *v17;
                }

                v20 = *(v17 + 4);
                *(v18 + 16) = v20;
                if (v20 == 1)
                {
                  *(v18 + 20) = *(v17 + 8);
                }
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::RenderGraphMeshNodeBase::validateAttachmentsDuringGraphBuild(re::RenderGraphCompiled &,re::PerFrameAllocator &)::AttachmentPair,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v21 + 32 * v5;
}

uint64_t anonymous namespace::getColorDepthDrawFlags(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 232);
  if (v4 && *v4)
  {
    v5 = *(a2 + 227);
    v6 = *(a2 + 226);
    v7 = *(a2 + 225);
    v8 = *(a2 + 224);
  }

  else
  {
    v9 = *(a2 + 40);
    TechniqueAtIndex = re::MaterialParameterTableLayers::getTechniqueAtIndex(v9, *(a2 + 60));
    v11 = *TechniqueAtIndex;
    v12 = *(*TechniqueAtIndex + 2480);
    if (v12)
    {
      v13 = v12 >> 1;
    }

    else
    {
      v13 = v12 >> 1;
    }

    v8 = v13 != 0;
    v7 = (*(a2 + 193) & 2) == 0 && *(v11 + 108) != 0;
    v6 = *(v11 + 74) & ~*(a2 + 193);
    v14 = *(v11 + 80);
    v15 = *(v9 + 8);
    if (v15 && (*(v15 + 1080) & 1) != 0 || (v15 = *(v9 + 9)) != 0 && (*(v15 + 1080) & 1) != 0 || (v15 = *(v9 + 11)) != 0 && *(v15 + 1080) == 1)
    {
      v14 |= (HIDWORD(*(v15 + 1081)) | (WORD2(*(v15 + 1081)) >> 8));
    }

    v5 = v14 != 0;
  }

  v16 = *(a2 + 200);
  v17 = *(a2 + 204);
  v18 = *(a2 + 161) & (*(a2 + 208) == 0.0);
  if (v16 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + 161) & (*(a2 + 208) == 0.0);
  }

  v20 = v5 | v8 & v7;
  if (v19 != 1)
  {
    v20 = 1;
  }

  *a1 = v20 & 1;
  a1[3] = v7 & 1;
  if ((atomic_load_explicit(&qword_1EE1C0690, memory_order_acquire) & 1) == 0)
  {
    v24 = __cxa_guard_acquire(&qword_1EE1C0690);
    if (v24)
    {
      qword_1EE1C0688 = re::hashString(v24, v25);
      __cxa_guard_release(&qword_1EE1C0690);
    }
  }

  result = re::MaterialParameterTableLayers::getPrioritizedPassTechniqueMapping(*(a2 + 40), qword_1EE1C0688);
  if (v18)
  {
    v22 = v16 == v17;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = (result != 0) & (*(a2 + 161) >> 1);
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  a1[1] = v23;
  a1[2] = v19 & (v5 | v6) & (*(a2 + 200) != *(a2 + 204));
  return result;
}

__n128 re::DynamicArray<anonymous namespace::DepthSortKey>::add(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v13 = 2 * v4;
      v14 = v4 == 0;
      v15 = 8;
      if (!v14)
      {
        v15 = v13;
      }

      if (v15 <= v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = v15;
      }

      re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(a1, v16);
    }

    else
    {
      re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(a1, v6);
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + (*(a1 + 16) << 6);
  result = a2[2];
  v10 = a2[3];
  v12 = *a2;
  v11 = a2[1];
  *(v8 + 32) = result;
  *(v8 + 48) = v10;
  *v8 = v12;
  *(v8 + 16) = v11;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,anonymous namespace::DepthSortKey *,false>(__int128 *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, __n128 a14, __n128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = *MEMORY[0x1E69E9840];
LABEL_2:
  v495 = (a2 - 128);
  v496 = (a2 - 64);
  v494 = (a2 - 192);
  v29 = (a2 - 40);
  v30 = a2 - 104;
  v31 = a2 - 168;
LABEL_3:
  v497 = a4;
  while (1)
  {
    v32 = a1;
    v33 = (a2 - a1) >> 6;
    if (v33 <= 2)
    {
      if (v33 < 2)
      {
        return result;
      }

      if (v33 == 2)
      {
        v343 = 0;
        while (1)
        {
          v344 = v29[v343];
          v345 = *(a1 + v343 * 8 + 24);
          if (v344 != v345)
          {
            break;
          }

          if (--v343 == -4)
          {
            return result;
          }
        }

        if (v344 >= v345)
        {
          return result;
        }

        goto LABEL_402;
      }

      goto LABEL_11;
    }

    if (v33 == 3)
    {
      v340 = 0;
      while (1)
      {
        v341 = *(a1 + v340 + 88);
        v342 = *(a1 + v340 + 24);
        if (v341 != v342)
        {
          break;
        }

        v340 -= 8;
        if (v340 == -32)
        {
          goto LABEL_388;
        }
      }

      LOBYTE(v20) = v341 < v342;
LABEL_388:
      v431 = (v341 != v342) & v20;
      v432 = 11;
      v433 = (a2 - 40);
      while (1)
      {
        v435 = *v433--;
        v434 = v435;
        v436 = *(a1 + v432);
        v437 = v435 >= v436;
        if (v435 != v436)
        {
          break;
        }

        if (--v432 == 7)
        {
          goto LABEL_395;
        }
      }

      LOBYTE(v22) = !v437;
LABEL_395:
      if ((v431 & 1) == 0)
      {
        if (((v434 != v436) & v22) != 0)
        {
          v451 = 0;
          v452 = a1[7];
          a15 = a1[6];
          a16 = v452;
          v453 = a1[5];
          a13 = a1[4];
          result = a13;
          a14 = v453;
          v454 = *v496;
          v455 = *(a2 - 48);
          *(a1 + 93) = *(a2 - 35);
          a1[4] = v454;
          a1[5] = v455;
          v456 = *(&a14 + 13);
          *v496 = result;
          *(a2 - 48) = v453;
          *(a2 - 35) = v456;
          while (1)
          {
            v457 = *(a1 + v451 + 88);
            v458 = *(a1 + v451 + 24);
            if (v457 != v458)
            {
              break;
            }

            v451 -= 8;
            if (v451 == -32)
            {
              return result;
            }
          }

          if (v457 < v458)
          {
            goto LABEL_438;
          }
        }

        return result;
      }

      if (((v434 != v436) & v22) == 0)
      {
        v438 = 0;
        v439 = a1[1];
        v440 = a1[3];
        v441 = a1[4];
        a15 = a1[2];
        a16 = v440;
        a14 = v439;
        a13 = *a1;
        *(a1 + 29) = *(a1 + 93);
        v442 = a1[5];
        *a1 = v441;
        a1[1] = v442;
        result = a13;
        v443 = a14;
        *(a1 + 93) = *(&a14 + 13);
        a1[4] = result;
        a1[5] = v443;
        while (1)
        {
          v444 = v29[v438];
          v445 = *(a1 + v438 * 8 + 88);
          if (v444 != v445)
          {
            break;
          }

          if (--v438 == -4)
          {
            return result;
          }
        }

        if (v444 < v445)
        {
          v478 = a1[7];
          a15 = a1[6];
          a16 = v478;
          v479 = a1[5];
          a13 = a1[4];
          result = a13;
          a14 = v479;
          v480 = *v496;
          v481 = *(a2 - 48);
          *(a1 + 93) = *(a2 - 35);
          a1[4] = v480;
          a1[5] = v481;
          v482 = *(&a14 + 13);
          *v496 = result;
          *(a2 - 48) = v479;
          *(a2 - 35) = v482;
        }

        return result;
      }

LABEL_402:
      v446 = a1[1];
      v447 = a1[3];
      a15 = a1[2];
      a16 = v447;
      a14 = v446;
      a13 = *a1;
      v448 = *(a2 - 35);
      v449 = *(a2 - 48);
      *a1 = *v496;
      a1[1] = v449;
      *(a1 + 29) = v448;
      v450 = a13;
      result = a14;
      *(a2 - 35) = *(&a14 + 13);
      *v496 = v450;
      *(a2 - 48) = result;
      return result;
    }

    if (v33 == 4)
    {

      return result;
    }

    if (v33 == 5)
    {
      break;
    }

LABEL_11:
    if (v33 <= 23)
    {
      v346 = (a1 + 4);
      v348 = a1 == a2 || v346 == a2;
      if (a4)
      {
        if (!v348)
        {
          v349 = a1;
          do
          {
            v350 = 0;
            while (1)
            {
              v351 = *(v349 + v350 + 88);
              v352 = *(v349 + v350 + 24);
              if (v351 != v352)
              {
                break;
              }

              v350 -= 8;
              if (v350 == -32)
              {
                goto LABEL_309;
              }
            }

            if (v351 < v352)
            {
              v354 = v346[2];
              v353 = v346[3];
              a14 = v346[1];
              a15 = v354;
              a16 = v353;
              a13 = *v346;
              v355 = v349;
              v356 = v346;
              while (1)
              {
                v357 = v355[1];
                *v356 = *v355;
                v356[1] = v357;
                *(v356 + 29) = *(v355 + 29);
                if (v355 == a1)
                {
                  break;
                }

                v356 = v355;
                v355 -= 4;
                v358 = -5;
                v359 = (&a13 | 0x18);
                while (1)
                {
                  v360 = *v359--;
                  v361 = *(v356 + v358);
                  v362 = v360 >= v361;
                  if (v360 != v361)
                  {
                    break;
                  }

                  if (--v358 == -9)
                  {
                    goto LABEL_308;
                  }
                }

                if (v362)
                {
                  goto LABEL_308;
                }
              }

              v356 = a1;
LABEL_308:
              result = *(&a14 + 13);
              v356[1] = a14;
              v363 = a13;
              *(v356 + 29) = result;
              *v356 = v363;
            }

LABEL_309:
            v346 += 4;
            v349 += 4;
          }

          while (v346 != a2);
        }
      }

      else if (!v348)
      {
        do
        {
          v459 = 0;
          while (1)
          {
            v460 = *(v32 + v459 + 88);
            v461 = *(v32 + v459 + 24);
            if (v460 != v461)
            {
              break;
            }

            v459 -= 8;
            if (v459 == -32)
            {
              goto LABEL_421;
            }
          }

          if (v460 < v461)
          {
            v463 = v346[2];
            v462 = v346[3];
            a14 = v346[1];
            a15 = v463;
            a16 = v462;
            a13 = *v346;
            v464 = v32;
            v465 = v346;
            do
            {
              v466 = 0;
              v467 = v465;
              v465 = v464;
              v468 = v464[1];
              *v467 = *v464;
              v467[1] = v468;
              *(v467 + 29) = *(v464 + 29);
              v464 -= 4;
              while (1)
              {
                v469 = a14.n128_u64[v466 + 1];
                v470 = *(&v465[-2] + v466 * 8 - 8);
                if (v469 != v470)
                {
                  break;
                }

                if (--v466 == -4)
                {
                  goto LABEL_420;
                }
              }
            }

            while (v469 < v470);
LABEL_420:
            result = *(&a14 + 13);
            v465[1] = a14;
            v471 = a13;
            *(v465 + 29) = result;
            *v465 = v471;
          }

LABEL_421:
          v346 += 4;
          v32 += 4;
        }

        while (v346 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v364 = (v33 - 2) >> 1;
        v365 = &a1[8 * v364 + 9] + 8;
        v366 = v364;
        v367 = &a1[4 * v364];
        do
        {
          v368 = v366;
          if (v364 >= v366)
          {
            v369 = (2 * v366) | 1;
            v370 = &a1[4 * v369];
            if (2 * v368 + 2 < v33)
            {
              a7 = v370 + 64;
              v371 = -4;
              a4 = v365;
              while (1)
              {
                v372 = *(a4 - 64);
                v373 = *a4;
                if (v372 != *a4)
                {
                  break;
                }

                a4 -= 8;
                v260 = __CFADD__(v371++, 1);
                if (v260)
                {
                  goto LABEL_321;
                }
              }

              LOBYTE(a6) = v372 < *a4;
LABEL_321:
              if (((v372 != v373) & a6) != 0)
              {
                v370 += 4;
                v369 = 2 * v368 + 2;
              }
            }

            v374 = &a1[4 * v368];
            v375 = 24;
            while (1)
            {
              v376 = *(v370 + v375);
              a3 = *(v367 + v375);
              if (v376 != a3)
              {
                break;
              }

              v375 -= 8;
              if (v375 == -8)
              {
                goto LABEL_328;
              }
            }

            if (v376 < a3)
            {
              goto LABEL_349;
            }

LABEL_328:
            v378 = v374[2];
            v377 = v374[3];
            a14 = v374[1];
            a15 = v378;
            a16 = v377;
            a13 = *v374;
            while (1)
            {
              v379 = v370;
              v380 = *(v370 + 29);
              v374[1] = v370[1];
              v381 = *v370;
              *(v374 + 29) = v380;
              *v374 = v381;
              if (v364 < v369)
              {
                break;
              }

              v382 = (2 * v369) | 1;
              v370 = &a1[4 * v382];
              v383 = 2 * v369 + 2;
              if (v383 >= v33)
              {
                v369 = (2 * v369) | 1;
              }

              else
              {
                v384 = &a1[8 * v369 + 9] + 1;
                a4 = -4;
                while (1)
                {
                  v385 = *(v384 - 8);
                  a6 = *v384;
                  if (v385 != *v384)
                  {
                    break;
                  }

                  --v384;
                  v260 = __CFADD__(a4++, 1);
                  if (v260)
                  {
                    goto LABEL_338;
                  }
                }

                a7 = v385 < *v384;
LABEL_338:
                if (((v385 != a6) & a7) != 0)
                {
                  v370 += 4;
                  v369 = v383;
                }

                else
                {
                  v369 = v382;
                }
              }

              v386 = 3;
              while (1)
              {
                v387 = *(v370 + v386 * 8);
                a3 = a13.n128_u64[v386];
                if (v387 != a3)
                {
                  break;
                }

                if (--v386 == -1)
                {
                  goto LABEL_346;
                }
              }

              LOBYTE(a4) = v387 < a3;
LABEL_346:
              v374 = v379;
              if (v387 != a3)
              {
                v374 = v379;
                if (a4)
                {
                  break;
                }
              }
            }

            v388 = *(&a14 + 13);
            v379[1] = a14;
            v389 = a13;
            *(v379 + 29) = v388;
            *v379 = v389;
          }

LABEL_349:
          v366 = v368 - 1;
          v365 -= 128;
          v367 -= 4;
        }

        while (v368);
        do
        {
          v390 = 0;
          *vars0 = a1[1];
          v499 = *a1;
          v391 = a1;
          do
          {
            v392 = &v391[4 * v390];
            v393 = v392 + 4;
            v394 = (2 * v390) | 1;
            v390 = 2 * v390 + 2;
            if (v390 >= v33)
            {
              v390 = v394;
            }

            else
            {
              v395 = v392 + 8;
              v396 = v392 + 19;
              v397 = -4;
              while (1)
              {
                v398 = *(v396 - 8);
                v399 = *v396;
                if (v398 != *v396)
                {
                  break;
                }

                --v396;
                v260 = __CFADD__(v397++, 1);
                if (v260)
                {
                  goto LABEL_359;
                }
              }

              LOBYTE(a3) = v398 < *v396;
LABEL_359:
              if (((v398 != v399) & a3) != 0)
              {
                v393 = v395;
              }

              else
              {
                v390 = v394;
              }
            }

            v400 = *(v393 + 29);
            v391[1] = v393[1];
            v401 = *v393;
            *(v391 + 29) = v400;
            *v391 = v401;
            v391 = v393;
          }

          while (v390 <= ((v33 - 2) >> 1));
          a2 -= 64;
          if (v393 == a2)
          {
            result = *&vars0[13];
            v393[1] = *vars0;
            v413 = v499;
            *(v393 + 29) = result;
            *v393 = v413;
          }

          else
          {
            result = *(a2 + 29);
            v393[1] = *(a2 + 16);
            v402 = *a2;
            *(v393 + 29) = result;
            *v393 = v402;
            result.n128_u64[0] = *&vars0[13];
            v404 = v499;
            v403 = *vars0;
            *(a2 + 29) = *&vars0[13];
            *a2 = v404;
            *(a2 + 16) = v403;
            v405 = (v393 - a1 + 64) >> 6;
            v406 = v405 < 2;
            v407 = v405 - 2;
            if (!v406)
            {
              v408 = v407 >> 1;
              v409 = &a1[4 * v408];
              v410 = 24;
              while (1)
              {
                v411 = *(v409 + v410);
                v412 = *(v393 + v410);
                if (v411 != v412)
                {
                  break;
                }

                v410 -= 8;
                if (v410 == -8)
                {
                  goto LABEL_370;
                }
              }

              if (v411 < v412)
              {
                v415 = v393[2];
                v414 = v393[3];
                a14 = v393[1];
                a15 = v415;
                a16 = v414;
                a13 = *v393;
                do
                {
                  v416 = v409;
                  v417 = *(v409 + 29);
                  v393[1] = v409[1];
                  v418 = *v409;
                  *(v393 + 29) = v417;
                  *v393 = v418;
                  if (!v408)
                  {
                    break;
                  }

                  v408 = (v408 - 1) >> 1;
                  v409 = &a1[4 * v408];
                  v419 = 3;
                  while (1)
                  {
                    v420 = *(v409 + v419 * 8);
                    v421 = a13.n128_u64[v419];
                    if (v420 != v421)
                    {
                      break;
                    }

                    if (--v419 == -1)
                    {
                      goto LABEL_381;
                    }
                  }

                  v393 = v416;
                }

                while (v420 < v421);
LABEL_381:
                result = *(&a14 + 13);
                v416[1] = a14;
                v422 = a13;
                *(v416 + 29) = result;
                *v416 = v422;
              }
            }
          }

LABEL_370:
          v406 = v33-- <= 2;
        }

        while (!v406);
      }

      return result;
    }

    v34 = v33 >> 1;
    v35 = &a1[4 * (v33 >> 1)];
    if (v33 > 0x80)
    {
      v36 = 24;
      while (1)
      {
        v37 = *(v35 + v36);
        v38 = *(a1 + v36);
        if (v37 != v38)
        {
          break;
        }

        v36 -= 8;
        if (v36 == -8)
        {
          goto LABEL_23;
        }
      }

      LOBYTE(v22) = v37 < v38;
LABEL_23:
      v42 = 0;
      v43 = (v37 != v38) & v22;
      while (1)
      {
        v44 = v29[v42];
        v45 = *(v35 + v42 * 8 + 24);
        if (v44 != v45)
        {
          break;
        }

        if (--v42 == -4)
        {
          goto LABEL_33;
        }
      }

      LOBYTE(v24) = v44 < v45;
LABEL_33:
      if (v43)
      {
        if (((v44 != v45) & v24) != 0)
        {
          v48 = a1[1];
          v49 = a1[3];
          a15 = a1[2];
          a16 = v49;
          a14 = v48;
          a13 = *a1;
          v50 = (a2 - 64);
          v51 = *(a2 - 35);
          v52 = *(a2 - 48);
          *a1 = *v496;
          a1[1] = v52;
          *(a1 + 29) = v51;
LABEL_64:
          v111 = a13;
          v110 = a14;
          *(v50 + 29) = *(&a14 + 13);
          *v50 = v111;
          v50[1] = v110;
          goto LABEL_65;
        }

        v76 = 0;
        v77 = a1[1];
        v78 = a1[3];
        a15 = a1[2];
        a16 = v78;
        a14 = v77;
        a13 = *a1;
        v79 = *(v35 + 29);
        v80 = v35[1];
        *a1 = *v35;
        a1[1] = v80;
        *(a1 + 29) = v79;
        v82 = a13;
        v81 = a14;
        *(v35 + 29) = *(&a14 + 13);
        *v35 = v82;
        v35[1] = v81;
        while (1)
        {
          v83 = v29[v76];
          v84 = *(v35 + v76 * 8 + 24);
          if (v83 != v84)
          {
            break;
          }

          if (--v76 == -4)
          {
            goto LABEL_65;
          }
        }

        if (v83 < v84)
        {
          v106 = v35[1];
          v107 = v35[3];
          a15 = v35[2];
          a16 = v107;
          a14 = v106;
          a13 = *v35;
          v50 = (a2 - 64);
          v108 = *(a2 - 35);
          v109 = *(a2 - 48);
          *v35 = *v496;
          v35[1] = v109;
          *(v35 + 29) = v108;
          goto LABEL_64;
        }
      }

      else if (((v44 != v45) & v24) != 0)
      {
        v59 = v35[1];
        v60 = v35[3];
        a15 = v35[2];
        a16 = v60;
        a14 = v59;
        a13 = *v35;
        v61 = *(a2 - 35);
        v62 = *(a2 - 48);
        *v35 = *v496;
        v35[1] = v62;
        *(v35 + 29) = v61;
        v64 = a13;
        v63 = a14;
        *(a2 - 35) = *(&a14 + 13);
        *v496 = v64;
        *(a2 - 48) = v63;
        v65 = 24;
        while (1)
        {
          v66 = *(v35 + v65);
          v67 = *(a1 + v65);
          if (v66 != v67)
          {
            break;
          }

          v65 -= 8;
          if (v65 == -8)
          {
            goto LABEL_65;
          }
        }

        if (v66 < v67)
        {
          v94 = a1[1];
          v95 = a1[3];
          a15 = a1[2];
          a16 = v95;
          a14 = v94;
          a13 = *a1;
          v96 = *(v35 + 29);
          v97 = v35[1];
          *a1 = *v35;
          a1[1] = v97;
          *(a1 + 29) = v96;
          v99 = a13;
          v98 = a14;
          *(v35 + 29) = *(&a14 + 13);
          *v35 = v99;
          v35[1] = v98;
        }
      }

LABEL_65:
      v112 = (v35 - 4);
      v113 = v34 << 6;
      v114 = v113 - 40;
      v115 = 88;
      while (1)
      {
        v116 = *(a1 + v114);
        v117 = *(a1 + v115);
        if (v116 != v117)
        {
          break;
        }

        v115 -= 8;
        v114 -= 8;
        if (v115 == 56)
        {
          goto LABEL_70;
        }
      }

      LOBYTE(v24) = v116 < v117;
LABEL_70:
      v118 = 0;
      v119 = (v116 != v117) & v24;
      while (1)
      {
        v120 = *(v30 + v118);
        v121 = *(a1 + v113 + v118 - 40);
        if (v120 != v121)
        {
          break;
        }

        v118 -= 8;
        if (v118 == -32)
        {
          goto LABEL_75;
        }
      }

      LOBYTE(v25) = v120 < v121;
LABEL_75:
      if (v119)
      {
        if (((v120 != v121) & v25) != 0)
        {
          v122 = a1[7];
          a15 = a1[6];
          a16 = v122;
          v124 = a1[5];
          a13 = a1[4];
          v123 = a13;
          a14 = v124;
          v125 = *v495;
          v126 = *(a2 - 112);
          *(a1 + 93) = *(a2 - 99);
          a1[4] = v125;
          a1[5] = v126;
          v127 = *(&a14 + 13);
          *v495 = v123;
          *(a2 - 112) = v124;
          *(a2 - 99) = v127;
        }

        else
        {
          v136 = 0;
          v137 = a1[7];
          a15 = a1[6];
          a16 = v137;
          v139 = a1[5];
          a13 = a1[4];
          v138 = a13;
          a14 = v139;
          v140 = *v112;
          v141 = *(v35 - 3);
          *(a1 + 93) = *(v35 - 35);
          a1[4] = v140;
          a1[5] = v141;
          v142 = *(&a14 + 13);
          *v112 = v138;
          *(v35 - 3) = v139;
          *(v35 - 35) = v142;
          while (1)
          {
            v143 = *(v30 + v136);
            v144 = *(a1 + v113 + v136 - 40);
            if (v143 != v144)
            {
              break;
            }

            v136 -= 8;
            if (v136 == -32)
            {
              goto LABEL_93;
            }
          }

          if (v143 < v144)
          {
            v153 = *(v35 - 3);
            v154 = *(v35 - 1);
            a15 = *(v35 - 2);
            a16 = v154;
            a14 = v153;
            a13 = *v112;
            v155 = *(a2 - 99);
            v156 = *(a2 - 112);
            *v112 = *v495;
            *(v35 - 3) = v156;
            *(v35 - 35) = v155;
            v158 = a13;
            v157 = a14;
            *(a2 - 99) = *(&a14 + 13);
            *v495 = v158;
            *(a2 - 112) = v157;
          }
        }
      }

      else if (((v120 != v121) & v25) != 0)
      {
        v128 = 0;
        v129 = *(v35 - 3);
        v130 = *(v35 - 1);
        a15 = *(v35 - 2);
        a16 = v130;
        a14 = v129;
        a13 = *v112;
        v131 = *(a2 - 99);
        v132 = *(a2 - 112);
        *v112 = *v495;
        *(v35 - 3) = v132;
        *(v35 - 35) = v131;
        v134 = a13;
        v133 = a14;
        *(a2 - 99) = *(&a14 + 13);
        *v495 = v134;
        *(a2 - 112) = v133;
        while (1)
        {
          v135 = *(a1 + v113 + v128 - 40);
          v121 = *(a1 + v128 + 88);
          if (v135 != v121)
          {
            break;
          }

          v128 -= 8;
          if (v128 == -32)
          {
            goto LABEL_93;
          }
        }

        if (v135 < v121)
        {
          v147 = a1[7];
          a15 = a1[6];
          a16 = v147;
          v149 = a1[5];
          a13 = a1[4];
          v148 = a13;
          a14 = v149;
          v150 = *v112;
          v151 = *(v35 - 3);
          *(a1 + 93) = *(v35 - 35);
          a1[4] = v150;
          a1[5] = v151;
          v152 = *(&a14 + 13);
          *v112 = v148;
          *(v35 - 3) = v149;
          *(v35 - 35) = v152;
        }
      }

LABEL_93:
      v159 = v113 + 88;
      v160 = 152;
      while (1)
      {
        v161 = *(a1 + v159);
        v162 = *(a1 + v160);
        if (v161 != v162)
        {
          break;
        }

        v160 -= 8;
        v159 -= 8;
        if (v160 == 120)
        {
          goto LABEL_98;
        }
      }

      LOBYTE(v121) = v161 < v162;
LABEL_98:
      v163 = 0;
      v164 = (v161 != v162) & v121;
      while (1)
      {
        v165 = *(v31 + v163);
        v166 = *(a1 + v113 + v163 + 88);
        if (v165 != v166)
        {
          break;
        }

        v163 -= 8;
        if (v163 == -32)
        {
          goto LABEL_103;
        }
      }

      LOBYTE(v25) = v165 < v166;
LABEL_103:
      if (v164)
      {
        if (((v165 != v166) & v25) != 0)
        {
          v167 = a1[11];
          a15 = a1[10];
          a16 = v167;
          v169 = a1[9];
          a13 = a1[8];
          v168 = a13;
          a14 = v169;
          v170 = *v494;
          v171 = *(a2 - 176);
          *(a1 + 157) = *(a2 - 163);
          a1[8] = v170;
          a1[9] = v171;
          v172 = *(&a14 + 13);
          *v494 = v168;
          *(a2 - 176) = v169;
          *(a2 - 163) = v172;
        }

        else
        {
          v182 = 0;
          v183 = a1[11];
          a15 = a1[10];
          a16 = v183;
          v185 = a1[9];
          a13 = a1[8];
          v184 = a13;
          a14 = v185;
          v186 = v35[4];
          v187 = v35[5];
          *(a1 + 157) = *(v35 + 93);
          a1[8] = v186;
          a1[9] = v187;
          v188 = *(&a14 + 13);
          v35[4] = v184;
          v35[5] = v185;
          *(v35 + 93) = v188;
          while (1)
          {
            v189 = *(v31 + v182);
            v190 = *(a1 + v113 + v182 + 88);
            if (v189 != v190)
            {
              break;
            }

            v182 -= 8;
            if (v182 == -32)
            {
              goto LABEL_119;
            }
          }

          if (v189 < v190)
          {
            v197 = v35[5];
            v198 = v35[7];
            a15 = v35[6];
            a16 = v198;
            a14 = v197;
            a13 = v35[4];
            v199 = *(a2 - 163);
            v200 = *(a2 - 176);
            v35[4] = *v494;
            v35[5] = v200;
            *(v35 + 93) = v199;
            v202 = a13;
            v201 = a14;
            *(a2 - 163) = *(&a14 + 13);
            *v494 = v202;
            *(a2 - 176) = v201;
          }
        }
      }

      else if (((v165 != v166) & v25) != 0)
      {
        v173 = 0;
        v174 = v35[5];
        v175 = v35[7];
        a15 = v35[6];
        a16 = v175;
        a14 = v174;
        a13 = v35[4];
        v176 = *(a2 - 163);
        v177 = *(a2 - 176);
        v35[4] = *v494;
        v35[5] = v177;
        *(v35 + 93) = v176;
        v179 = a13;
        v178 = a14;
        *(a2 - 163) = *(&a14 + 13);
        *v494 = v179;
        *(a2 - 176) = v178;
        while (1)
        {
          v180 = *(a1 + v113 + v173 + 88);
          v181 = *(a1 + v173 + 152);
          if (v180 != v181)
          {
            break;
          }

          v173 -= 8;
          if (v173 == -32)
          {
            goto LABEL_119;
          }
        }

        if (v180 < v181)
        {
          v191 = a1[11];
          a15 = a1[10];
          a16 = v191;
          v193 = a1[9];
          a13 = a1[8];
          v192 = a13;
          a14 = v193;
          v194 = v35[4];
          v195 = v35[5];
          *(a1 + 157) = *(v35 + 93);
          a1[8] = v194;
          a1[9] = v195;
          v196 = *(&a14 + 13);
          v35[4] = v192;
          v35[5] = v193;
          *(v35 + 93) = v196;
        }
      }

LABEL_119:
      v20 = a1 + v113 + 24;
      v203 = -4;
      v204 = v20;
      while (1)
      {
        v205 = *v204;
        v206 = *(v204 - 8);
        if (*v204 != v206)
        {
          break;
        }

        --v204;
        v260 = __CFADD__(v203++, 1);
        if (v260)
        {
          goto LABEL_125;
        }
      }

      LOBYTE(v25) = *v204 < v206;
LABEL_125:
      LOBYTE(v21) = (v205 != v206) & v25;
      v207 = (a1 + v113 + 88);
      v208 = -4;
      v24 = v207;
      while (1)
      {
        v23 = *v24;
        v25 = *(v24 - 8);
        if (*v24 != v25)
        {
          break;
        }

        --v24;
        v260 = __CFADD__(v208++, 1);
        if (v260)
        {
          goto LABEL_131;
        }
      }

      v26 = *v24 < v25;
LABEL_131:
      LOBYTE(v22) = v23 != v25 && v26;
      if ((v21 & 1) == 0)
      {
        if (v23 != v25 && v26)
        {
          v213 = v35[3];
          v214 = v35[1];
          a15 = v35[2];
          a16 = v213;
          a14 = v214;
          a13 = *v35;
          v215 = *(v35 + 93);
          v216 = v35[5];
          *v35 = v35[4];
          v35[1] = v216;
          *(v35 + 29) = v215;
          v218 = a13;
          v217 = a14;
          *(v35 + 93) = *(&a14 + 13);
          v35[4] = v218;
          v35[5] = v217;
          v219 = -4;
          while (1)
          {
            v21 = *v20;
            v22 = *(v20 - 64);
            if (*v20 != v22)
            {
              break;
            }

            v20 -= 8;
            v260 = __CFADD__(v219++, 1);
            if (v260)
            {
              goto LABEL_150;
            }
          }

          if (*v20 < v22)
          {
            v227 = *(v35 - 1);
            v228 = *(v35 - 3);
            a15 = *(v35 - 2);
            a16 = v227;
            a14 = v228;
            a13 = *v112;
            v229 = *(v35 + 29);
            v230 = v35[1];
            *v112 = *v35;
            *(v35 - 3) = v230;
            *(v35 - 35) = v229;
            v232 = a13;
            v231 = a14;
            *(v35 + 29) = *(&a14 + 13);
            *v35 = v232;
            v35[1] = v231;
          }
        }

        goto LABEL_150;
      }

      if (v23 != v25 && v26)
      {
        v209 = *(v35 - 1);
        v210 = *(v35 - 3);
        a15 = *(v35 - 2);
        a16 = v209;
        a14 = v210;
        a13 = *v112;
        v211 = *(v35 + 93);
        v212 = v35[5];
        *v112 = v35[4];
        *(v35 - 3) = v212;
        *(v35 - 35) = v211;
      }

      else
      {
        v220 = *(v35 - 1);
        v221 = *(v35 - 3);
        a15 = *(v35 - 2);
        a16 = v220;
        a14 = v221;
        a13 = *v112;
        v222 = *(v35 + 29);
        v223 = v35[1];
        *v112 = *v35;
        *(v35 - 3) = v223;
        *(v35 - 35) = v222;
        v225 = a13;
        v224 = a14;
        *(v35 + 29) = *(&a14 + 13);
        *v35 = v225;
        v35[1] = v224;
        v226 = -4;
        while (1)
        {
          v20 = *v207;
          v21 = *(v207 - 8);
          if (*v207 != v21)
          {
            break;
          }

          --v207;
          v260 = __CFADD__(v226++, 1);
          if (v260)
          {
            goto LABEL_150;
          }
        }

        if (*v207 >= v21)
        {
          goto LABEL_150;
        }

        v233 = v35[3];
        v234 = v35[1];
        a15 = v35[2];
        a16 = v233;
        a14 = v234;
        a13 = *v35;
        v235 = *(v35 + 93);
        v236 = v35[5];
        *v35 = v35[4];
        v35[1] = v236;
        *(v35 + 29) = v235;
      }

      v238 = a13;
      v237 = a14;
      *(v35 + 93) = *(&a14 + 13);
      v35[4] = v238;
      v35[5] = v237;
LABEL_150:
      v239 = a1[1];
      v240 = a1[3];
      a15 = a1[2];
      a16 = v240;
      a14 = v239;
      a13 = *a1;
      goto LABEL_151;
    }

    v39 = 24;
    while (1)
    {
      v40 = *(a1 + v39);
      v41 = *(v35 + v39);
      if (v40 != v41)
      {
        break;
      }

      v39 -= 8;
      if (v39 == -8)
      {
        goto LABEL_28;
      }
    }

    LOBYTE(v21) = v40 < v41;
LABEL_28:
    v46 = 0;
    v47 = (v40 != v41) & v21;
    while (1)
    {
      v20 = v29[v46];
      v21 = *(a1 + v46 * 8 + 24);
      if (v20 != v21)
      {
        break;
      }

      if (--v46 == -4)
      {
        goto LABEL_37;
      }
    }

    LOBYTE(v22) = v20 < v21;
LABEL_37:
    if (v47)
    {
      if (((v20 != v21) & v22) != 0)
      {
        v53 = v35[1];
        v54 = v35[3];
        a15 = v35[2];
        a16 = v54;
        a14 = v53;
        a13 = *v35;
        v55 = *(a2 - 35);
        v56 = *(a2 - 48);
        *v35 = *v496;
        v35[1] = v56;
        *(v35 + 29) = v55;
        v58 = a13;
        v57 = a14;
        *(a2 - 35) = *(&a14 + 13);
        *v496 = v58;
        *(a2 - 48) = v57;
        goto LABEL_152;
      }

      v85 = 0;
      v86 = v35[1];
      v87 = v35[3];
      a15 = v35[2];
      a16 = v87;
      a14 = v86;
      a13 = *v35;
      v88 = *(a1 + 29);
      v89 = a1[1];
      *v35 = *a1;
      v35[1] = v89;
      *(v35 + 29) = v88;
      v91 = a13;
      v90 = a14;
      *(a1 + 29) = *(&a14 + 13);
      *a1 = v91;
      a1[1] = v90;
      while (1)
      {
        v92 = v29[v85];
        v93 = *(a1 + v85 * 8 + 24);
        if (v92 != v93)
        {
          break;
        }

        if (--v85 == -4)
        {
          goto LABEL_152;
        }
      }

      if (v92 < v93)
      {
        v145 = a1[1];
        v146 = a1[3];
        a15 = a1[2];
        a16 = v146;
        a14 = v145;
        a13 = *a1;
        v35 = (a2 - 64);
LABEL_151:
        v241 = *(v35 + 29);
        v242 = v35[1];
        *a1 = *v35;
        a1[1] = v242;
        *(a1 + 29) = v241;
        v244 = a13;
        v243 = a14;
        *(v35 + 29) = *(&a14 + 13);
        *v35 = v244;
        v35[1] = v243;
      }
    }

    else if (((v20 != v21) & v22) != 0)
    {
      v68 = a1[1];
      v69 = a1[3];
      a15 = a1[2];
      a16 = v69;
      a14 = v68;
      a13 = *a1;
      v70 = *(a2 - 35);
      v71 = *(a2 - 48);
      *a1 = *v496;
      a1[1] = v71;
      *(a1 + 29) = v70;
      v73 = a13;
      v72 = a14;
      *(a2 - 35) = *(&a14 + 13);
      *v496 = v73;
      *(a2 - 48) = v72;
      v74 = 24;
      while (1)
      {
        v75 = *(a1 + v74);
        v20 = *(v35 + v74);
        if (v75 != v20)
        {
          break;
        }

        v74 -= 8;
        if (v74 == -8)
        {
          goto LABEL_152;
        }
      }

      if (v75 < v20)
      {
        v100 = v35[1];
        v101 = v35[3];
        a15 = v35[2];
        a16 = v101;
        a14 = v100;
        a13 = *v35;
        v102 = *(a1 + 29);
        v103 = a1[1];
        *v35 = *a1;
        v35[1] = v103;
        *(v35 + 29) = v102;
        v105 = a13;
        v104 = a14;
        *(a1 + 29) = *(&a14 + 13);
        *a1 = v105;
        a1[1] = v104;
      }
    }

LABEL_152:
    --a3;
    if ((a4 & 1) == 0)
    {
      v245 = 0;
      while (1)
      {
        v246 = *(a1 + v245 - 40);
        v247 = *(a1 + v245 + 24);
        if (v246 != v247)
        {
          break;
        }

        v245 -= 8;
        if (v245 == -32)
        {
          goto LABEL_213;
        }
      }

      if (v246 < v247)
      {
        goto LABEL_158;
      }

LABEL_213:
      v296 = 0;
      *vars0 = a1[1];
      v499 = *a1;
      while (1)
      {
        v297 = *&vars0[v296 + 8];
        v298 = *(a2 + v296 - 40);
        v299 = v297 >= v298;
        if (v297 != v298)
        {
          break;
        }

        v296 -= 8;
        if (v296 == -32)
        {
          v300 = a1;
          while (1)
          {
LABEL_228:
            a1 = v300 + 4;
            if ((v300 + 4) >= a2)
            {
              goto LABEL_238;
            }

            v20 = &v499 | 0x18;
            v21 = 11;
            while (1)
            {
              v307 = *v20;
              v20 -= 8;
              v306 = v307;
              v308 = *(v300 + v21);
              v309 = v307 >= v308;
              if (v307 != v308)
              {
                break;
              }

              if (--v21 == 7)
              {
                goto LABEL_236;
              }
            }

            LOBYTE(v22) = !v309;
LABEL_236:
            v300 += 4;
            if (v306 != v308)
            {
              v300 = a1;
              if (v22)
              {
                goto LABEL_238;
              }
            }
          }
        }
      }

      v301 = a1;
      v300 = a1;
      if (v299)
      {
        goto LABEL_228;
      }

      while (1)
      {
        a1 = v301 + 4;
        v20 = &v499 | 0x18;
        v21 = 11;
        while (1)
        {
          v303 = *v20;
          v20 -= 8;
          v302 = v303;
          v304 = *(v301 + v21);
          v305 = v303 >= v304;
          if (v303 != v304)
          {
            break;
          }

          if (--v21 == 7)
          {
            goto LABEL_225;
          }
        }

        LOBYTE(v22) = !v305;
LABEL_225:
        v301 += 4;
        if (v302 != v304)
        {
          v301 = a1;
          if (v22)
          {
            break;
          }
        }
      }

LABEL_238:
      v310 = a2;
      if (a1 < a2)
      {
        v311 = a2;
        do
        {
          v310 = (v311 - 64);
          v312 = -5;
          v20 = &v499 | 0x18;
          while (1)
          {
            v313 = *v20;
            v20 -= 8;
            LOBYTE(v21) = v313;
            v22 = *(v311 + 8 * v312);
            v314 = v313 >= v22;
            if (v313 != v22)
            {
              break;
            }

            if (--v312 == -9)
            {
              goto LABEL_264;
            }
          }

          v311 -= 64;
        }

        while (!v314);
      }

LABEL_264:
      while (a1 < v310)
      {
        v315 = a1[1];
        v316 = a1[3];
        a15 = a1[2];
        a16 = v316;
        a14 = v315;
        a13 = *a1;
        v317 = *(v310 + 29);
        v318 = v310[1];
        *a1 = *v310;
        a1[1] = v318;
        *(a1 + 29) = v317;
        v320 = a13;
        v319 = a14;
        *(v310 + 29) = *(&a14 + 13);
        *v310 = v320;
        v310[1] = v319;
        v321 = a1;
        while (1)
        {
          a1 = v321 + 4;
          v322 = (&v499 | 0x18);
          v323 = 11;
          while (1)
          {
            v325 = *v322--;
            v324 = v325;
            v326 = *(v321 + v323);
            v327 = v325 >= v326;
            if (v325 != v326)
            {
              break;
            }

            if (--v323 == 7)
            {
              goto LABEL_255;
            }
          }

          LOBYTE(v23) = !v327;
LABEL_255:
          v321 += 4;
          if (v324 != v326)
          {
            v321 = a1;
            if (v23)
            {
              break;
            }
          }
        }

        v328 = v310;
        do
        {
          v310 = v328 - 4;
          v329 = -5;
          v20 = &v499 | 0x18;
          while (1)
          {
            v330 = *v20;
            v20 -= 8;
            LOBYTE(v21) = v330;
            v22 = *(v328 + v329);
            v331 = v330 >= v22;
            if (v330 != v22)
            {
              break;
            }

            if (--v329 == -9)
            {
              goto LABEL_264;
            }
          }

          v328 -= 4;
        }

        while (!v331);
      }

      v332 = a1 - 4;
      if (a1 - 4 != v32)
      {
        v333 = *(a1 - 35);
        v32[1] = *(a1 - 3);
        v334 = *v332;
        *(v32 + 29) = v333;
        *v32 = v334;
      }

      LODWORD(a4) = 0;
      result = *&vars0[13];
      *(a1 - 3) = *vars0;
      v335 = v499;
      *(a1 - 35) = result;
      *v332 = v335;
      goto LABEL_3;
    }

LABEL_158:
    *vars0 = a1[1];
    v499 = *a1;
    v248 = a1;
    do
    {
      v249 = 0;
      v250 = v248;
      v248 += 4;
      while (1)
      {
        v251 = *(v250 + v249 + 88);
        v252 = *&vars0[v249 + 8];
        if (v251 != v252)
        {
          break;
        }

        v249 -= 8;
        if (v249 == -32)
        {
          goto LABEL_164;
        }
      }
    }

    while (v251 < v252);
LABEL_164:
    v253 = a2;
    if (v250 == a1)
    {
      v261 = a2;
      while (v248 < v261)
      {
        v254 = (v261 - 64);
        v262 = -5;
        v263 = (&v499 | 0x18);
        while (1)
        {
          v264 = *(v261 + 8 * v262);
          v266 = *v263--;
          v265 = v266;
          v267 = v264 >= v266;
          if (v264 != v266)
          {
            break;
          }

          if (--v262 == -9)
          {
            goto LABEL_184;
          }
        }

        LOBYTE(v24) = !v267;
LABEL_184:
        v261 -= 64;
        if (v264 != v265)
        {
          v261 = v254;
          if (v24)
          {
            goto LABEL_188;
          }
        }
      }

      v254 = v261;
    }

    else
    {
      while (1)
      {
        v254 = (v253 - 64);
        v255 = -5;
        v256 = (&v499 | 0x18);
        while (1)
        {
          v257 = *(v253 + 8 * v255);
          v259 = *v256--;
          v258 = v259;
          v260 = v257 >= v259;
          if (v257 != v259)
          {
            break;
          }

          if (--v255 == -9)
          {
            goto LABEL_172;
          }
        }

        LOBYTE(v24) = !v260;
LABEL_172:
        v253 -= 64;
        if (v257 != v258)
        {
          v253 = v254;
          if (v24)
          {
            break;
          }
        }
      }
    }

LABEL_188:
    if (v248 < v254)
    {
      v268 = v248;
      v269 = v254;
      do
      {
        v270 = v268[3];
        a15 = v268[2];
        a16 = v270;
        v272 = v268[1];
        a13 = *v268;
        v271 = a13;
        a14 = v272;
        v273 = *v269;
        v274 = v269[1];
        *(v268 + 29) = *(&v269[1] + 13);
        *v268 = v273;
        v268[1] = v274;
        v275 = *(&a14 + 13);
        *v269 = v271;
        v269[1] = v272;
        *(v269 + 29) = v275;
        do
        {
          v250 = v268;
          v268 += 4;
          v276 = (&v499 | 0x18);
          v277 = 11;
          while (1)
          {
            v278 = *(v250 + v277);
            v279 = *v276--;
            v280 = v278 >= v279;
            if (v278 != v279)
            {
              break;
            }

            if (--v277 == 7)
            {
              goto LABEL_197;
            }
          }
        }

        while (!v280);
        while (1)
        {
LABEL_197:
          v281 = &v269[-4];
          v282 = -5;
          v283 = (&v499 | 0x18);
          while (1)
          {
            v284 = v269->n128_u64[v282];
            v286 = *v283--;
            v285 = v286;
            v287 = v284 >= v286;
            if (v284 != v286)
            {
              break;
            }

            if (--v282 == -9)
            {
              goto LABEL_204;
            }
          }

          v26 = !v287;
LABEL_204:
          v269 -= 4;
          if (v284 != v285)
          {
            v269 = v281;
            if (v26)
            {
              break;
            }
          }
        }

        v269 = v281;
      }

      while (v268 < v281);
    }

    if (v250 != a1)
    {
      v288 = *(v250 + 29);
      a1[1] = v250[1];
      v289 = *v250;
      *(a1 + 29) = v288;
      *a1 = v289;
    }

    v290 = *&vars0[13];
    v250[1] = *vars0;
    v291 = v499;
    *(v250 + 29) = v290;
    *v250 = v291;
    if (v248 < v254)
    {
LABEL_212:
      v295 = a3;
      a3 = v295;
      LODWORD(a4) = 0;
      a1 = v250 + 4;
      goto LABEL_3;
    }

    v292 = a3;
    v498 = a1;
    a1 = v250 + 4;
    {
      a2 = v250;
      a3 = v292;
      a1 = v498;
      LODWORD(a4) = v497;
      if (!v293)
      {
        goto LABEL_2;
      }

      return result;
    }

    a3 = v292;
    v32 = v498;
    LOBYTE(a4) = v497;
    if (!v293)
    {
      goto LABEL_212;
    }
  }

  v336 = 27;
  while (1)
  {
    v337 = *v29--;
    v338 = *(a1 + v336);
    v339 = v337 >= v338;
    if (v337 != v338)
    {
      break;
    }

    if (--v336 == 23)
    {
      return result;
    }
  }

  if (!v339)
  {
    v423 = 0;
    v424 = a1[15];
    a15 = a1[14];
    a16 = v424;
    v425 = a1[13];
    a13 = a1[12];
    result = a13;
    a14 = v425;
    v426 = *v496;
    v427 = *(a2 - 48);
    *(a1 + 221) = *(a2 - 35);
    a1[12] = v426;
    a1[13] = v427;
    v428 = *(&a14 + 13);
    *v496 = result;
    *(a2 - 48) = v425;
    *(a2 - 35) = v428;
    while (1)
    {
      v429 = *(a1 + v423 + 216);
      v430 = *(a1 + v423 + 152);
      if (v429 != v430)
      {
        break;
      }

      v423 -= 8;
      if (v423 == -32)
      {
        return result;
      }
    }

    if (v429 < v430)
    {
      v472 = 0;
      result = a1[10];
      v474 = a1[8];
      a14 = a1[9];
      v473 = a14;
      a15 = result;
      v475 = a1[13];
      a1[8] = a1[12];
      a1[9] = v475;
      *(a1 + 157) = *(a1 + 221);
      a1[12] = v474;
      a1[13] = v473;
      result.n128_u64[0] = *(&a14.n128_u64[1] + 5);
      *(a1 + 221) = *(&a14 + 13);
      while (1)
      {
        v476 = *(a1 + v472 + 152);
        v477 = *(a1 + v472 + 88);
        if (v476 != v477)
        {
          break;
        }

        v472 -= 8;
        if (v472 == -32)
        {
          return result;
        }
      }

      if (v476 < v477)
      {
        v483 = 0;
        result = a1[6];
        v485 = a1[4];
        a14 = a1[5];
        v484 = a14;
        a15 = result;
        v486 = a1[9];
        a1[4] = a1[8];
        a1[5] = v486;
        *(a1 + 93) = *(a1 + 157);
        a1[8] = v485;
        a1[9] = v484;
        result.n128_u64[0] = *(&a14.n128_u64[1] + 5);
        *(a1 + 157) = *(&a14 + 13);
        while (1)
        {
          v487 = *(a1 + v483 + 88);
          v488 = *(a1 + v483 + 24);
          if (v487 != v488)
          {
            break;
          }

          v483 -= 8;
          if (v483 == -32)
          {
            return result;
          }
        }

        if (v487 < v488)
        {
LABEL_438:
          v489 = a1[1];
          v490 = a1[3];
          v491 = a1[4];
          a15 = a1[2];
          a16 = v490;
          a14 = v489;
          a13 = *a1;
          *(a1 + 29) = *(a1 + 93);
          v492 = a1[5];
          *a1 = v491;
          a1[1] = v492;
          result = a13;
          v493 = a14;
          *(a1 + 93) = *(&a14 + 13);
          a1[4] = result;
          a1[5] = v493;
        }
      }
    }
  }

  return result;
}

__int128 *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,anonymous namespace::DepthSortKey *,0>(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v6 = 24;
  while (1)
  {
    v7 = *(a2 + v6);
    v8 = *(result + v6);
    if (v7 != v8)
    {
      break;
    }

    v6 -= 8;
    if (v6 == -8)
    {
      goto LABEL_6;
    }
  }

  v4 = v7 < v8;
LABEL_6:
  v9 = v7 != v8 && v4;
  v10 = 24;
  while (1)
  {
    v11 = *(a3 + v10);
    v12 = *(a2 + v10);
    if (v11 != v12)
    {
      break;
    }

    v10 -= 8;
    if (v10 == -8)
    {
      goto LABEL_11;
    }
  }

  v5 = v11 < v12;
LABEL_11:
  if (v9)
  {
    if (v11 != v12 && v5)
    {
      v13 = result[1];
      v14 = *result;
      *v58 = HIDWORD(v13);
      *&v58[4] = result[2];
      v16 = *a3;
      v15 = a3[1];
      *(result + 29) = *(a3 + 29);
      *result = v16;
      result[1] = v15;
LABEL_27:
      *a3 = v14;
      a3[1] = v13;
      *(a3 + 29) = *&v58[1];
      goto LABEL_28;
    }

    v23 = *result;
    *v53 = result[1];
    *&v53[16] = result[2];
    v25 = *a2;
    v24 = a2[1];
    *(result + 29) = *(a2 + 29);
    *result = v25;
    result[1] = v24;
    *a2 = v23;
    a2[1] = *v53;
    *(a2 + 29) = *&v53[13];
    v26 = 24;
    while (1)
    {
      v27 = *(a3 + v26);
      v28 = *(a2 + v26);
      if (v27 != v28)
      {
        break;
      }

      v26 -= 8;
      if (v26 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v27 < v28)
    {
      v13 = a2[1];
      v14 = *a2;
      *v58 = HIDWORD(v13);
      *&v58[4] = a2[2];
      v33 = *a3;
      v32 = a3[1];
      *(a2 + 29) = *(a3 + 29);
      *a2 = v33;
      a2[1] = v32;
      goto LABEL_27;
    }
  }

  else if (v11 != v12 && v5)
  {
    v17 = *a2;
    *v52 = a2[1];
    *&v52[16] = a2[2];
    v19 = *a3;
    v18 = a3[1];
    *(a2 + 29) = *(a3 + 29);
    *a2 = v19;
    a2[1] = v18;
    *a3 = v17;
    a3[1] = *v52;
    *(a3 + 29) = *&v52[13];
    v20 = 24;
    while (1)
    {
      v21 = *(a2 + v20);
      v22 = *(result + v20);
      if (v21 != v22)
      {
        break;
      }

      v20 -= 8;
      if (v20 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v21 < v22)
    {
      v29 = *result;
      *v54 = result[1];
      *&v54[16] = result[2];
      v31 = *a2;
      v30 = a2[1];
      *(result + 29) = *(a2 + 29);
      *result = v31;
      result[1] = v30;
      *a2 = v29;
      a2[1] = *v54;
      *(a2 + 29) = *&v54[13];
    }
  }

LABEL_28:
  v34 = 24;
  while (1)
  {
    v35 = *(a4 + v34);
    v36 = *(a3 + v34);
    if (v35 != v36)
    {
      break;
    }

    v34 -= 8;
    if (v34 == -8)
    {
      return result;
    }
  }

  if (v35 < v36)
  {
    v37 = *a3;
    *v55 = a3[1];
    *&v55[16] = a3[2];
    v39 = *a4;
    v38 = a4[1];
    *(a3 + 29) = *(a4 + 29);
    *a3 = v39;
    a3[1] = v38;
    *a4 = v37;
    a4[1] = *v55;
    *(a4 + 29) = *&v55[13];
    v40 = 24;
    while (1)
    {
      v41 = *(a3 + v40);
      v42 = *(a2 + v40);
      if (v41 != v42)
      {
        break;
      }

      v40 -= 8;
      if (v40 == -8)
      {
        return result;
      }
    }

    if (v41 < v42)
    {
      v43 = *a2;
      *v56 = a2[1];
      *&v56[16] = a2[2];
      v45 = *a3;
      v44 = a3[1];
      *(a2 + 29) = *(a3 + 29);
      *a2 = v45;
      a2[1] = v44;
      *a3 = v43;
      a3[1] = *v56;
      *(a3 + 29) = *&v56[13];
      v46 = 24;
      while (1)
      {
        v47 = *(a2 + v46);
        v48 = *(result + v46);
        if (v47 != v48)
        {
          break;
        }

        v46 -= 8;
        if (v46 == -8)
        {
          return result;
        }
      }

      if (v47 < v48)
      {
        v49 = *result;
        *v57 = result[1];
        *&v57[16] = result[2];
        v51 = *a2;
        v50 = a2[1];
        *(result + 29) = *(a2 + 29);
        *result = v51;
        result[1] = v50;
        *a2 = v49;
        a2[1] = *v57;
        *(a2 + 29) = *&v57[13];
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::depthSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,anonymous namespace::DepthSortKey *>(__int128 *a1, char *a2)
{
  v7 = (a2 - a1) >> 6;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v18 = 0;
        v9 = (a2 - 64);
        while (1)
        {
          v19 = *(a1 + v18 + 88);
          v20 = *(a1 + v18 + 24);
          if (v19 != v20)
          {
            break;
          }

          v18 -= 8;
          if (v18 == -32)
          {
            goto LABEL_25;
          }
        }

        v2 = v19 < v20;
LABEL_25:
        v25 = v19 != v20 && v2;
        v26 = 11;
        v27 = a2 - 40;
        while (1)
        {
          v29 = *v27;
          v27 -= 8;
          v28 = v29;
          v30 = *(a1 + v26);
          v31 = v29 >= v30;
          if (v29 != v30)
          {
            break;
          }

          if (--v26 == 7)
          {
            goto LABEL_32;
          }
        }

        v4 = !v31;
LABEL_32:
        if (v25)
        {
          if (((v28 != v30) & v4) == 0)
          {
            v32 = 0;
            v33 = a1[2];
            v35 = *a1;
            *var10 = a1[1];
            v34 = *var10;
            *&var10[16] = v33;
            v36 = a1[5];
            *a1 = a1[4];
            a1[1] = v36;
            *(a1 + 29) = *(a1 + 93);
            a1[4] = v35;
            a1[5] = v34;
            *(a1 + 93) = *&var10[13];
            result = 1;
            while (1)
            {
              v38 = *&a2[v32 - 40];
              v39 = *(a1 + v32 + 88);
              if (v38 != v39)
              {
                break;
              }

              v32 -= 8;
              if (v32 == -32)
              {
                return result;
              }
            }

            if (v38 >= v39)
            {
              return 1;
            }

            v49 = a1[5];
            v91 = a1[6];
            v50 = a1[4];
            *var10 = v49;
            *&var10[16] = v91;
            v93 = *v9;
            v92 = *(a2 - 3);
            *(a1 + 93) = *(a2 - 35);
            a1[4] = v93;
            a1[5] = v92;
            goto LABEL_49;
          }

LABEL_48:
          v49 = a1[1];
          v48 = a1[2];
          v50 = *a1;
          *var10 = v49;
          *&var10[16] = v48;
          v52 = *v9;
          v51 = v9[1];
          *(a1 + 29) = *(v9 + 29);
          *a1 = v52;
          a1[1] = v51;
LABEL_49:
          *v9 = v50;
          v9[1] = v49;
          *(v9 + 29) = *&var10[13];
          return 1;
        }

        if (((v28 != v30) & v4) == 0)
        {
          return 1;
        }

        v61 = 0;
        v62 = a1[6];
        v64 = a1[4];
        *var10 = a1[5];
        v63 = *var10;
        *&var10[16] = v62;
        v66 = *v9;
        v65 = *(a2 - 3);
        *(a1 + 93) = *(a2 - 35);
        a1[4] = v66;
        a1[5] = v65;
        *v9 = v64;
        *(a2 - 3) = v63;
        *(a2 - 35) = *&var10[13];
        result = 1;
        while (1)
        {
          v67 = *(a1 + v61 + 88);
          v68 = *(a1 + v61 + 24);
          v69 = v67 >= v68;
          if (v67 != v68)
          {
            break;
          }

          v61 -= 8;
          if (v61 == -32)
          {
            return result;
          }
        }

        break;
      case 4:
        return 1;
      case 5:
        v12 = (a2 - 64);
        v13 = a2 - 40;
        v14 = 27;
        while (1)
        {
          v15 = *v13;
          v13 -= 8;
          v16 = *(a1 + v14);
          v17 = v15 >= v16;
          if (v15 != v16)
          {
            break;
          }

          if (--v14 == 23)
          {
            return 1;
          }
        }

        if (v17)
        {
          return 1;
        }

        v53 = 0;
        v54 = a1[14];
        v56 = a1[12];
        *var10 = a1[13];
        v55 = *var10;
        *&var10[16] = v54;
        v58 = *v12;
        v57 = *(a2 - 3);
        *(a1 + 221) = *(a2 - 35);
        a1[12] = v58;
        a1[13] = v57;
        *v12 = v56;
        *(a2 - 3) = v55;
        *(a2 - 35) = *&var10[13];
        result = 1;
        while (1)
        {
          v59 = *(a1 + v53 + 216);
          v60 = *(a1 + v53 + 152);
          if (v59 != v60)
          {
            break;
          }

          v53 -= 8;
          if (v53 == -32)
          {
            return result;
          }
        }

        if (v59 >= v60)
        {
          return 1;
        }

        v84 = 0;
        v85 = a1[10];
        v87 = a1[8];
        *var10 = a1[9];
        v86 = *var10;
        *&var10[16] = v85;
        v88 = a1[13];
        a1[8] = a1[12];
        a1[9] = v88;
        *(a1 + 157) = *(a1 + 221);
        a1[12] = v87;
        a1[13] = v86;
        *(a1 + 221) = *&var10[13];
        result = 1;
        while (1)
        {
          v89 = *(a1 + v84 + 152);
          v90 = *(a1 + v84 + 88);
          if (v89 != v90)
          {
            break;
          }

          v84 -= 8;
          if (v84 == -32)
          {
            return result;
          }
        }

        if (v89 >= v90)
        {
          return 1;
        }

        v116 = 0;
        v117 = a1[6];
        v119 = a1[4];
        *var10 = a1[5];
        v118 = *var10;
        *&var10[16] = v117;
        v120 = a1[9];
        a1[4] = a1[8];
        a1[5] = v120;
        *(a1 + 93) = *(a1 + 157);
        a1[8] = v119;
        a1[9] = v118;
        *(a1 + 157) = *&var10[13];
        result = 1;
        while (1)
        {
          v121 = *(a1 + v116 + 88);
          v122 = *(a1 + v116 + 24);
          v69 = v121 >= v122;
          if (v121 != v122)
          {
            break;
          }

          v116 -= 8;
          if (v116 == -32)
          {
            return result;
          }
        }

        break;
      default:
        goto LABEL_19;
    }

    if (!v69)
    {
      v123 = a1[2];
      v125 = *a1;
      *var10 = a1[1];
      v124 = *var10;
      *&var10[16] = v123;
      v126 = a1[5];
      *a1 = a1[4];
      a1[1] = v126;
      *(a1 + 29) = *(a1 + 93);
      a1[4] = v125;
      a1[5] = v124;
      *(a1 + 93) = *&var10[13];
    }

    return 1;
  }

  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v8 = 0;
      v9 = (a2 - 64);
      while (1)
      {
        v10 = *&a2[v8 - 40];
        v11 = *(a1 + v8 + 24);
        if (v10 != v11)
        {
          break;
        }

        v8 -= 8;
        if (v8 == -32)
        {
          return 1;
        }
      }

      if (v10 >= v11)
      {
        return 1;
      }

      goto LABEL_48;
    }

LABEL_19:
    v21 = 0;
    v22 = a1 + 8;
    while (1)
    {
      v23 = *(a1 + v21 + 88);
      v24 = *(a1 + v21 + 24);
      if (v23 != v24)
      {
        break;
      }

      v21 -= 8;
      if (v21 == -32)
      {
        goto LABEL_39;
      }
    }

    v3 = v23 < v24;
LABEL_39:
    v40 = 0;
    v41 = v23 != v24 && v3;
    while (1)
    {
      v42 = *(a1 + v40 + 152);
      v43 = *(a1 + v40 + 88);
      if (v42 != v43)
      {
        break;
      }

      v40 -= 8;
      if (v40 == -32)
      {
        goto LABEL_44;
      }
    }

    v3 = v42 < v43;
LABEL_44:
    if (!v41)
    {
      if (v42 != v43 && v3)
      {
        v70 = 0;
        v71 = a1[6];
        v73 = a1[4];
        *var10 = a1[5];
        v72 = *var10;
        *&var10[16] = v71;
        v74 = a1[9];
        a1[4] = *v22;
        a1[5] = v74;
        *(a1 + 93) = *(a1 + 157);
        *v22 = v73;
        a1[9] = v72;
        *(a1 + 157) = *&var10[13];
        while (1)
        {
          v75 = *(a1 + v70 + 88);
          v76 = *(a1 + v70 + 24);
          if (v75 != v76)
          {
            break;
          }

          v70 -= 8;
          if (v70 == -32)
          {
            goto LABEL_82;
          }
        }

        if (v75 < v76)
        {
          v94 = a1[2];
          v96 = *a1;
          *var10 = a1[1];
          v95 = *var10;
          *&var10[16] = v94;
          v97 = a1[5];
          *a1 = a1[4];
          a1[1] = v97;
          *(a1 + 29) = *(a1 + 93);
          a1[4] = v96;
          a1[5] = v95;
          *(a1 + 93) = *&var10[13];
        }
      }

      goto LABEL_82;
    }

    if (v42 != v43 && v3)
    {
      v45 = a1[1];
      v44 = a1[2];
      v46 = *a1;
      *var10 = v45;
      *&var10[16] = v44;
      v47 = a1[9];
      *a1 = *v22;
      a1[1] = v47;
      *(a1 + 29) = *(a1 + 157);
    }

    else
    {
      v77 = a1[2];
      v79 = *a1;
      *var10 = a1[1];
      v78 = *var10;
      *&var10[16] = v77;
      v80 = a1[5];
      *a1 = a1[4];
      a1[1] = v80;
      *(a1 + 29) = *(a1 + 93);
      a1[4] = v79;
      a1[5] = v78;
      *(a1 + 93) = *&var10[13];
      v81 = a1 + 19;
      v82 = -4;
      while (1)
      {
        v83 = *(v81 - 8);
        if (*v81 != v83)
        {
          break;
        }

        --v81;
        v17 = __CFADD__(v82++, 1);
        if (v17)
        {
          goto LABEL_82;
        }
      }

      if (*v81 >= v83)
      {
        goto LABEL_82;
      }

      v45 = a1[5];
      v98 = a1[6];
      v46 = a1[4];
      *var10 = v45;
      *&var10[16] = v98;
      v99 = a1[9];
      a1[4] = *v22;
      a1[5] = v99;
      *(a1 + 93) = *(a1 + 157);
    }

    *v22 = v46;
    a1[9] = v45;
    *(a1 + 157) = *&var10[13];
LABEL_82:
    v100 = a1 + 12;
    if (a1 + 12 != a2)
    {
      v101 = 0;
      v102 = a1 + 27;
      v103 = a1 + 88;
      while (2)
      {
        v104 = -4;
        v105 = v102;
        while (1)
        {
          v106 = *(v105 - 8);
          if (*v105 != v106)
          {
            break;
          }

          --v105;
          v17 = __CFADD__(v104++, 1);
          if (v17)
          {
            goto LABEL_100;
          }
        }

        if (*v105 < v106)
        {
          v107 = v100[1];
          v127 = *v100;
          *var10 = v107;
          *&var10[16] = v100[2];
          v108 = v103;
          v109 = v100;
          while (1)
          {
            v110 = v22[1];
            *v109 = *v22;
            v109[1] = v110;
            *(v109 + 29) = *(v22 + 29);
            if (v22 == a1)
            {
              break;
            }

            v109 = v22;
            v111 = 0;
            v22 -= 4;
            while (1)
            {
              v112 = *((&v127 | 0x18) + v111);
              v113 = *&v108[v111];
              if (v112 != v113)
              {
                break;
              }

              v111 -= 8;
              if (v111 == -32)
              {
                goto LABEL_99;
              }
            }

            v108 -= 64;
            if (v112 >= v113)
            {
              goto LABEL_99;
            }
          }

          v109 = a1;
LABEL_99:
          v114 = *&var10[13];
          v109[1] = *var10;
          v115 = v127;
          *(v109 + 29) = v114;
          *v109 = v115;
          if (++v101 == 8)
          {
            return v100 + 4 == a2;
          }
        }

LABEL_100:
        v22 = v100;
        v102 += 8;
        v103 += 64;
        v100 += 4;
        if (v100 != a2)
        {
          continue;
        }

        break;
      }
    }
  }

  return 1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,false>(__int128 *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, __n128 a14, __n128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = *MEMORY[0x1E69E9840];
LABEL_2:
  v566 = (a2 - 128);
  v567 = (a2 - 64);
  v565 = (a2 - 192);
  v29 = (a2 - 32);
  v30 = a2 - 96;
  v31 = a2 - 160;
LABEL_3:
  v568 = a4;
  while (1)
  {
    v32 = a1;
    v33 = (a2 - a1) >> 6;
    if (v33 <= 2)
    {
      if (v33 < 2)
      {
        return result;
      }

      if (v33 == 2)
      {
        v395 = 0;
        while (1)
        {
          v396 = v29[v395];
          v397 = *(a1 + v395 * 8 + 32);
          if (v396 != v397)
          {
            break;
          }

          if (--v395 == -5)
          {
            return result;
          }
        }

        if (v396 >= v397)
        {
          return result;
        }

        goto LABEL_401;
      }

      goto LABEL_11;
    }

    if (v33 == 3)
    {
      v392 = 0;
      while (1)
      {
        v393 = *(a1 + v392 + 96);
        v394 = *(a1 + v392 + 32);
        if (v393 != v394)
        {
          break;
        }

        v392 -= 8;
        if (v392 == -40)
        {
          goto LABEL_387;
        }
      }

      LOBYTE(v20) = v393 < v394;
LABEL_387:
      v494 = (v393 != v394) & v20;
      v495 = 12;
      v496 = (a2 - 32);
      while (1)
      {
        v498 = *v496--;
        v497 = v498;
        v499 = *(a1 + v495);
        v500 = v498 >= v499;
        if (v498 != v499)
        {
          break;
        }

        if (--v495 == 7)
        {
          goto LABEL_394;
        }
      }

      LOBYTE(v22) = !v500;
LABEL_394:
      if ((v494 & 1) == 0)
      {
        if (((v497 != v499) & v22) != 0)
        {
          v517 = 0;
          v518 = a1[7];
          a15 = a1[6];
          result = a15;
          a16 = v518;
          v519 = a1[5];
          a13 = a1[4];
          v520 = a13;
          a14 = v519;
          v522 = *(a2 - 48);
          v521 = *(a2 - 32);
          v523 = *v567;
          *(a1 + 28) = *(a2 - 16);
          a1[5] = v522;
          a1[6] = v521;
          a1[4] = v523;
          *(a2 - 16) = a16;
          *(a2 - 48) = v519;
          *(a2 - 32) = result;
          *v567 = v520;
          while (1)
          {
            v524 = *(a1 + v517 + 96);
            v525 = *(a1 + v517 + 32);
            if (v524 != v525)
            {
              break;
            }

            v517 -= 8;
            if (v517 == -40)
            {
              return result;
            }
          }

          if (v524 < v525)
          {
            goto LABEL_437;
          }
        }

        return result;
      }

      if (((v497 != v499) & v22) == 0)
      {
        v501 = 0;
        v502 = a1[1];
        v503 = a1[3];
        v504 = a1[4];
        a15 = a1[2];
        a16 = v503;
        a14 = v502;
        a13 = *a1;
        *(a1 + 12) = *(a1 + 28);
        v505 = a1[6];
        a1[1] = a1[5];
        a1[2] = v505;
        *a1 = v504;
        result = a13;
        v506 = a14;
        v507 = a15;
        *(a1 + 28) = a16;
        a1[5] = v506;
        a1[6] = v507;
        a1[4] = result;
        while (1)
        {
          v508 = v29[v501];
          v509 = *(a1 + v501 * 8 + 96);
          if (v508 != v509)
          {
            break;
          }

          if (--v501 == -5)
          {
            return result;
          }
        }

        if (v508 < v509)
        {
          v546 = a1[7];
          a15 = a1[6];
          result = a15;
          a16 = v546;
          v547 = a1[5];
          a13 = a1[4];
          v548 = a13;
          a14 = v547;
          v550 = *(a2 - 48);
          v549 = *(a2 - 32);
          v551 = *v567;
          *(a1 + 28) = *(a2 - 16);
          a1[5] = v550;
          a1[6] = v549;
          a1[4] = v551;
          v552 = a16;
          *(a2 - 48) = v547;
          *(a2 - 32) = result;
          *v567 = v548;
          *(a2 - 16) = v552;
        }

        return result;
      }

LABEL_401:
      v510 = a1[1];
      v511 = a1[3];
      a15 = a1[2];
      a16 = v511;
      a14 = v510;
      a13 = *a1;
      v513 = *(a2 - 48);
      v512 = *(a2 - 32);
      v514 = *v567;
      *(a1 + 12) = *(a2 - 16);
      a1[1] = v513;
      a1[2] = v512;
      *a1 = v514;
      v515 = a14;
      result = a15;
      v516 = a13;
      *(a2 - 16) = a16;
      *(a2 - 48) = v515;
      *(a2 - 32) = result;
      *v567 = v516;
      return result;
    }

    if (v33 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,0>(a1, a1 + 4, a1 + 8, v567);
      return result;
    }

    if (v33 == 5)
    {
      break;
    }

LABEL_11:
    if (v33 <= 23)
    {
      v398 = (a1 + 4);
      v400 = a1 == a2 || v398 == a2;
      if (a4)
      {
        if (!v400)
        {
          v401 = a1;
          do
          {
            v402 = 0;
            while (1)
            {
              v403 = *(v401 + v402 + 96);
              v404 = *(v401 + v402 + 32);
              if (v403 != v404)
              {
                break;
              }

              v402 -= 8;
              if (v402 == -40)
              {
                goto LABEL_308;
              }
            }

            if (v403 < v404)
            {
              v406 = v398[2];
              v405 = v398[3];
              a14 = v398[1];
              a15 = v406;
              a16 = v405;
              a13 = *v398;
              v407 = v401;
              v408 = v398;
              while (1)
              {
                v409 = v408;
                v408 = v407;
                v410 = v407[1];
                *v409 = *v407;
                v409[1] = v410;
                v409[2] = v407[2];
                v409[3].n128_u32[0] = *(v407 + 12);
                if (v407 == a1)
                {
                  break;
                }

                v407 -= 4;
                v411 = -4;
                v412 = (&a13 | 0x20);
                while (1)
                {
                  v413 = *v412--;
                  v414 = v408->n128_u64[v411];
                  v415 = v413 >= v414;
                  if (v413 != v414)
                  {
                    break;
                  }

                  if (--v411 == -9)
                  {
                    goto LABEL_307;
                  }
                }

                if (v415)
                {
                  goto LABEL_307;
                }
              }

              v408 = a1;
LABEL_307:
              v416 = a16;
              v417 = a15;
              v408[1] = a14;
              v408[2] = v417;
              result = a13;
              v408[3].n128_u32[0] = v416;
              *v408 = result;
            }

LABEL_308:
            v398 += 4;
            v401 += 4;
          }

          while (v398 != a2);
        }
      }

      else if (!v400)
      {
        do
        {
          v526 = 0;
          while (1)
          {
            v527 = *(v32 + v526 + 96);
            v528 = *(v32 + v526 + 32);
            if (v527 != v528)
            {
              break;
            }

            v526 -= 8;
            if (v526 == -40)
            {
              goto LABEL_420;
            }
          }

          if (v527 < v528)
          {
            v530 = v398[2];
            v529 = v398[3];
            a14 = v398[1];
            a15 = v530;
            a16 = v529;
            a13 = *v398;
            v531 = v32;
            v532 = v398;
            do
            {
              v533 = 0;
              v534 = v532;
              v532 = v531;
              v535 = v531[1];
              *v534 = *v531;
              v534[1] = v535;
              v534[2] = v531[2];
              v534[3].n128_u32[0] = *(v531 + 12);
              v531 -= 4;
              while (1)
              {
                v536 = a15.n128_u64[v533];
                v537 = v532[-2].n128_u64[v533];
                if (v536 != v537)
                {
                  break;
                }

                if (--v533 == -5)
                {
                  goto LABEL_419;
                }
              }
            }

            while (v536 < v537);
LABEL_419:
            v538 = a16;
            v539 = a15;
            v532[1] = a14;
            v532[2] = v539;
            result = a13;
            v532[3].n128_u32[0] = v538;
            *v532 = result;
          }

LABEL_420:
          v398 += 4;
          v32 += 4;
        }

        while (v398 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v418 = (v33 - 2) >> 1;
        v419 = &a1[8 * v418 + 10];
        v420 = v418;
        v421 = &a1[4 * v418];
        do
        {
          v422 = v420;
          if (v418 >= v420)
          {
            v423 = (2 * v420) | 1;
            v424 = &a1[4 * v423];
            if (2 * v422 + 2 < v33)
            {
              a7 = v424 + 64;
              v425 = -5;
              a4 = v419;
              while (1)
              {
                v426 = *(a4 - 64);
                v427 = *a4;
                if (v426 != *a4)
                {
                  break;
                }

                a4 -= 8;
                v306 = __CFADD__(v425++, 1);
                if (v306)
                {
                  goto LABEL_320;
                }
              }

              LOBYTE(a6) = v426 < *a4;
LABEL_320:
              if (((v426 != v427) & a6) != 0)
              {
                v424 += 4;
                v423 = 2 * v422 + 2;
              }
            }

            v428 = &a1[4 * v422];
            v429 = 32;
            while (1)
            {
              v430 = *(v424 + v429);
              a3 = *(v421 + v429);
              if (v430 != a3)
              {
                break;
              }

              v429 -= 8;
              if (v429 == -8)
              {
                goto LABEL_327;
              }
            }

            if (v430 < a3)
            {
              goto LABEL_348;
            }

LABEL_327:
            v432 = v428[2];
            v431 = v428[3];
            a14 = v428[1];
            a15 = v432;
            a16 = v431;
            a13 = *v428;
            while (1)
            {
              v433 = v424;
              v434 = *(v424 + 12);
              v435 = v433[2];
              v428[1] = v433[1];
              v428[2] = v435;
              v436 = *v433;
              v428[3].n128_u32[0] = v434;
              *v428 = v436;
              if (v418 < v423)
              {
                break;
              }

              v437 = (2 * v423) | 1;
              v424 = &a1[4 * v437];
              v438 = 2 * v423 + 2;
              if (v438 >= v33)
              {
                v423 = (2 * v423) | 1;
              }

              else
              {
                v439 = &a1[8 * v423 + 10];
                a4 = -5;
                while (1)
                {
                  v440 = *(v439 - 8);
                  a6 = *v439;
                  if (v440 != *v439)
                  {
                    break;
                  }

                  v439 = (v439 - 8);
                  v306 = __CFADD__(a4++, 1);
                  if (v306)
                  {
                    goto LABEL_337;
                  }
                }

                a7 = v440 < *v439;
LABEL_337:
                if (((v440 != a6) & a7) != 0)
                {
                  v424 += 4;
                  v423 = v438;
                }

                else
                {
                  v423 = v437;
                }
              }

              v441 = 4;
              while (1)
              {
                v442 = *(v424 + v441 * 8);
                a3 = a13.n128_u64[v441];
                if (v442 != a3)
                {
                  break;
                }

                if (--v441 == -1)
                {
                  goto LABEL_345;
                }
              }

              LOBYTE(a4) = v442 < a3;
LABEL_345:
              v428 = v433;
              if (v442 != a3)
              {
                v428 = v433;
                if (a4)
                {
                  break;
                }
              }
            }

            v443 = a16;
            v444 = a15;
            v433[1] = a14;
            v433[2] = v444;
            v445 = a13;
            *(v433 + 12) = v443;
            *v433 = v445;
          }

LABEL_348:
          v420 = v422 - 1;
          v419 -= 128;
          v421 -= 4;
        }

        while (v422);
        do
        {
          v446 = 0;
          v448 = a1[2];
          v447 = a1[3];
          vars0 = a1[1];
          v574 = v448;
          v577 = v447;
          v570 = *a1;
          v449 = a1;
          do
          {
            v450 = &v449[4 * v446];
            v451 = v450 + 4;
            v452 = (2 * v446) | 1;
            v446 = 2 * v446 + 2;
            if (v446 >= v33)
            {
              v446 = v452;
            }

            else
            {
              v453 = v450 + 8;
              v454 = (v450 + 10);
              v455 = -5;
              while (1)
              {
                v456 = *(v454 - 8);
                v457 = *v454;
                if (v456 != *v454)
                {
                  break;
                }

                --v454;
                v306 = __CFADD__(v455++, 1);
                if (v306)
                {
                  goto LABEL_358;
                }
              }

              LOBYTE(a3) = v456 < *v454;
LABEL_358:
              if (((v456 != v457) & a3) != 0)
              {
                v451 = v453;
              }

              else
              {
                v446 = v452;
              }
            }

            v458 = *(v451 + 12);
            v459 = v451[2];
            v449[1] = v451[1];
            v449[2] = v459;
            v460 = *v451;
            *(v449 + 12) = v458;
            *v449 = v460;
            v449 = v451;
          }

          while (v446 <= ((v33 - 2) >> 1));
          a2 -= 64;
          if (v451 == a2)
          {
            v451[1] = vars0;
            v451[2] = v448;
            result = v570;
            *(v451 + 12) = v577;
            *v451 = result;
          }

          else
          {
            v461 = *(a2 + 48);
            v462 = *(a2 + 32);
            v451[1] = *(a2 + 16);
            v451[2] = v462;
            v463 = *a2;
            *(v451 + 12) = v461;
            *v451 = v463;
            v464 = vars0;
            result = v574;
            v465 = v570;
            *(a2 + 48) = v577;
            *(a2 + 16) = v464;
            *(a2 + 32) = v574;
            *a2 = v465;
            v466 = (v451 - a1 + 64) >> 6;
            v467 = v466 < 2;
            v468 = v466 - 2;
            if (!v467)
            {
              v469 = v468 >> 1;
              v470 = &a1[4 * v469];
              v471 = 32;
              while (1)
              {
                v472 = *(v470 + v471);
                v473 = *(v451 + v471);
                if (v472 != v473)
                {
                  break;
                }

                v471 -= 8;
                if (v471 == -8)
                {
                  goto LABEL_369;
                }
              }

              if (v472 < v473)
              {
                v475 = v451[2];
                v474 = v451[3];
                a14 = v451[1];
                a15 = v475;
                a16 = v474;
                a13 = *v451;
                do
                {
                  v476 = v470;
                  v477 = *(v470 + 12);
                  v478 = v476[2];
                  v451[1] = v476[1];
                  v451[2] = v478;
                  v479 = *v476;
                  *(v451 + 12) = v477;
                  *v451 = v479;
                  if (!v469)
                  {
                    break;
                  }

                  v469 = (v469 - 1) >> 1;
                  v470 = &a1[4 * v469];
                  v480 = 4;
                  while (1)
                  {
                    v481 = *(v470 + v480 * 8);
                    v482 = a13.n128_u64[v480];
                    if (v481 != v482)
                    {
                      break;
                    }

                    if (--v480 == -1)
                    {
                      goto LABEL_380;
                    }
                  }

                  v451 = v476;
                }

                while (v481 < v482);
LABEL_380:
                v483 = a16;
                v484 = a15;
                v476[1] = a14;
                v476[2] = v484;
                result = a13;
                *(v476 + 12) = v483;
                *v476 = result;
              }
            }
          }

LABEL_369:
          v467 = v33-- <= 2;
        }

        while (!v467);
      }

      return result;
    }

    v34 = v33 >> 1;
    v35 = &a1[4 * (v33 >> 1)];
    if (v33 > 0x80)
    {
      v36 = 4;
      while (1)
      {
        v37 = v35->n128_u64[v36];
        v38 = *(a1 + v36 * 8);
        if (v37 != v38)
        {
          break;
        }

        if (--v36 == -1)
        {
          goto LABEL_23;
        }
      }

      LOBYTE(v22) = v37 < v38;
LABEL_23:
      v42 = 0;
      v43 = (v37 != v38) & v22;
      while (1)
      {
        v44 = v29[v42];
        v45 = v35[2].n128_u64[v42];
        if (v44 != v45)
        {
          break;
        }

        if (--v42 == -5)
        {
          goto LABEL_33;
        }
      }

      LOBYTE(v24) = v44 < v45;
LABEL_33:
      if (v43)
      {
        if (((v44 != v45) & v24) != 0)
        {
          v48 = a1[1];
          v49 = a1[3];
          a15 = a1[2];
          a16 = v49;
          a14 = v48;
          a13 = *a1;
          v50 = a2 - 64;
          v52 = *(a2 - 48);
          v51 = *(a2 - 32);
          v53 = *v567;
          *(a1 + 12) = *(a2 - 16);
          a1[1] = v52;
          a1[2] = v51;
          *a1 = v53;
LABEL_64:
          v127 = a14;
          v126 = a15;
          v128 = a13;
          *(v50 + 48) = a16;
          *(v50 + 16) = v127;
          *(v50 + 32) = v126;
          *v50 = v128;
          goto LABEL_65;
        }

        v83 = 0;
        v84 = a1[1];
        v85 = a1[3];
        a15 = a1[2];
        a16 = v85;
        a14 = v84;
        a13 = *a1;
        v87 = v35[1];
        v86 = v35[2];
        v88 = *v35;
        *(a1 + 12) = v35[3].n128_u32[0];
        a1[1] = v87;
        a1[2] = v86;
        *a1 = v88;
        v90 = a14;
        v89 = a15;
        v91 = a13;
        v35[3].n128_u32[0] = a16;
        v35[1] = v90;
        v35[2] = v89;
        *v35 = v91;
        while (1)
        {
          v92 = v29[v83];
          v93 = *(&a1[4 * v34 + 2] + v83 * 8);
          if (v92 != v93)
          {
            break;
          }

          if (--v83 == -5)
          {
            goto LABEL_65;
          }
        }

        if (v92 < v93)
        {
          v121 = v35[1];
          v122 = v35[3];
          a15 = v35[2];
          a16 = v122;
          a14 = v121;
          a13 = *v35;
          v50 = a2 - 64;
          v124 = *(a2 - 48);
          v123 = *(a2 - 32);
          v125 = *v567;
          v35[3].n128_u32[0] = *(a2 - 16);
          v35[1] = v124;
          v35[2] = v123;
          *v35 = v125;
          goto LABEL_64;
        }
      }

      else if (((v44 != v45) & v24) != 0)
      {
        v62 = v35[1];
        v63 = v35[3];
        a15 = v35[2];
        a16 = v63;
        a14 = v62;
        a13 = *v35;
        v65 = *(a2 - 48);
        v64 = *(a2 - 32);
        v66 = *v567;
        v35[3].n128_u32[0] = *(a2 - 16);
        v35[1] = v65;
        v35[2] = v64;
        *v35 = v66;
        v68 = a14;
        v67 = a15;
        v69 = a13;
        *(a2 - 16) = a16;
        *(a2 - 48) = v68;
        *(a2 - 32) = v67;
        *v567 = v69;
        v70 = 4;
        while (1)
        {
          v71 = v35->n128_u64[v70];
          v72 = *(a1 + v70 * 8);
          if (v71 != v72)
          {
            break;
          }

          if (--v70 == -1)
          {
            goto LABEL_65;
          }
        }

        if (v71 < v72)
        {
          v105 = a1[1];
          v106 = a1[3];
          a15 = a1[2];
          a16 = v106;
          a14 = v105;
          a13 = *a1;
          v108 = v35[1];
          v107 = v35[2];
          v109 = *v35;
          *(a1 + 12) = v35[3].n128_u32[0];
          a1[1] = v108;
          a1[2] = v107;
          *a1 = v109;
          v111 = a14;
          v110 = a15;
          v112 = a13;
          v35[3].n128_u32[0] = a16;
          v35[1] = v111;
          v35[2] = v110;
          *v35 = v112;
        }
      }

LABEL_65:
      v129 = v35 - 4;
      v130 = v34 << 6;
      v131 = v130 - 32;
      v132 = 96;
      while (1)
      {
        v133 = *(a1 + v131);
        v134 = *(a1 + v132);
        if (v133 != v134)
        {
          break;
        }

        v132 -= 8;
        v131 -= 8;
        if (v132 == 56)
        {
          goto LABEL_70;
        }
      }

      LOBYTE(v24) = v133 < v134;
LABEL_70:
      v135 = 0;
      v136 = (v133 != v134) & v24;
      while (1)
      {
        v137 = *(v30 + v135);
        v138 = *(a1 + v130 + v135 - 32);
        if (v137 != v138)
        {
          break;
        }

        v135 -= 8;
        if (v135 == -40)
        {
          goto LABEL_75;
        }
      }

      LOBYTE(v25) = v137 < v138;
LABEL_75:
      if (v136)
      {
        if (((v137 != v138) & v25) != 0)
        {
          v140 = a1[7];
          a15 = a1[6];
          v139 = a15;
          a16 = v140;
          v141 = a1[5];
          a13 = a1[4];
          v142 = a13;
          a14 = v141;
          v144 = *(a2 - 112);
          v143 = *(a2 - 96);
          v145 = *v566;
          *(a1 + 28) = *(a2 - 80);
          a1[5] = v144;
          a1[6] = v143;
          a1[4] = v145;
          v146 = a16;
          *(a2 - 112) = v141;
          *(a2 - 96) = v139;
          *v566 = v142;
          *(a2 - 80) = v146;
        }

        else
        {
          v157 = 0;
          v159 = a1[7];
          a15 = a1[6];
          v158 = a15;
          a16 = v159;
          v160 = a1[5];
          a13 = a1[4];
          v161 = a13;
          a14 = v160;
          v163 = v35[-3];
          v162 = v35[-2];
          v164 = *v129;
          *(a1 + 28) = v35[-1].n128_u32[0];
          a1[5] = v163;
          a1[6] = v162;
          a1[4] = v164;
          v165 = a16;
          v35[-3] = v160;
          v35[-2] = v158;
          v35[-1].n128_u32[0] = v165;
          *v129 = v161;
          while (1)
          {
            v166 = *(v30 + v157);
            v167 = *(a1 + v130 + v157 - 32);
            if (v166 != v167)
            {
              break;
            }

            v157 -= 8;
            if (v157 == -40)
            {
              goto LABEL_93;
            }
          }

          if (v166 < v167)
          {
            v184 = v35[-3];
            v185 = v35[-1];
            a15 = v35[-2];
            a16 = v185;
            a14 = v184;
            a13 = *v129;
            v187 = *(a2 - 112);
            v186 = *(a2 - 96);
            v188 = *v566;
            v35[-1].n128_u32[0] = *(a2 - 80);
            v35[-3] = v187;
            v35[-2] = v186;
            *v129 = v188;
            v190 = a14;
            v189 = a15;
            v191 = a13;
            *(a2 - 80) = a16;
            *(a2 - 112) = v190;
            *(a2 - 96) = v189;
            *v566 = v191;
          }
        }
      }

      else if (((v137 != v138) & v25) != 0)
      {
        v147 = 0;
        v148 = v35[-3];
        v149 = v35[-1];
        a15 = v35[-2];
        a16 = v149;
        a14 = v148;
        a13 = *v129;
        v151 = *(a2 - 112);
        v150 = *(a2 - 96);
        v152 = *v566;
        v35[-1].n128_u32[0] = *(a2 - 80);
        v35[-3] = v151;
        v35[-2] = v150;
        *v129 = v152;
        v154 = a14;
        v153 = a15;
        v155 = a13;
        *(a2 - 80) = a16;
        *(a2 - 112) = v154;
        *(a2 - 96) = v153;
        *v566 = v155;
        while (1)
        {
          v156 = *(a1 + v130 + v147 - 32);
          v138 = *(a1 + v147 + 96);
          if (v156 != v138)
          {
            break;
          }

          v147 -= 8;
          if (v147 == -40)
          {
            goto LABEL_93;
          }
        }

        if (v156 < v138)
        {
          v177 = a1[7];
          a15 = a1[6];
          v176 = a15;
          a16 = v177;
          v178 = a1[5];
          a13 = a1[4];
          v179 = a13;
          a14 = v178;
          v181 = v35[-3];
          v180 = v35[-2];
          v182 = *v129;
          *(a1 + 28) = v35[-1].n128_u32[0];
          a1[5] = v181;
          a1[6] = v180;
          a1[4] = v182;
          v183 = a16;
          v35[-3] = v178;
          v35[-2] = v176;
          *v129 = v179;
          v35[-1].n128_u32[0] = v183;
        }
      }

LABEL_93:
      v192 = v130 + 96;
      v193 = 160;
      while (1)
      {
        v194 = *(a1 + v192);
        v195 = *(a1 + v193);
        if (v194 != v195)
        {
          break;
        }

        v193 -= 8;
        v192 -= 8;
        if (v193 == 120)
        {
          goto LABEL_98;
        }
      }

      LOBYTE(v138) = v194 < v195;
LABEL_98:
      v196 = 0;
      v197 = (v194 != v195) & v138;
      while (1)
      {
        v198 = *(v31 + v196);
        v199 = *(a1 + v130 + v196 + 96);
        if (v198 != v199)
        {
          break;
        }

        v196 -= 8;
        if (v196 == -40)
        {
          goto LABEL_103;
        }
      }

      LOBYTE(v25) = v198 < v199;
LABEL_103:
      if (v197)
      {
        if (((v198 != v199) & v25) != 0)
        {
          v201 = a1[11];
          a15 = a1[10];
          v200 = a15;
          a16 = v201;
          v202 = a1[9];
          a13 = a1[8];
          v203 = a13;
          a14 = v202;
          v205 = *(a2 - 176);
          v204 = *(a2 - 160);
          v206 = *v565;
          *(a1 + 44) = *(a2 - 144);
          a1[9] = v205;
          a1[10] = v204;
          a1[8] = v206;
          v207 = a16;
          *(a2 - 176) = v202;
          *(a2 - 160) = v200;
          *v565 = v203;
          *(a2 - 144) = v207;
        }

        else
        {
          v219 = 0;
          v221 = a1[11];
          a15 = a1[10];
          v220 = a15;
          a16 = v221;
          v222 = a1[9];
          a13 = a1[8];
          v223 = a13;
          a14 = v222;
          v225 = v35[5];
          v224 = v35[6];
          v226 = v35[4];
          *(a1 + 44) = v35[7].n128_u32[0];
          a1[9] = v225;
          a1[10] = v224;
          a1[8] = v226;
          v227 = a16;
          v35[5] = v222;
          v35[6] = v220;
          v35[7].n128_u32[0] = v227;
          v35[4] = v223;
          while (1)
          {
            v228 = *(v31 + v219);
            v229 = *(a1 + v130 + v219 + 96);
            if (v228 != v229)
            {
              break;
            }

            v219 -= 8;
            if (v219 == -40)
            {
              goto LABEL_119;
            }
          }

          if (v228 < v229)
          {
            v238 = v35[5];
            v239 = v35[7];
            a15 = v35[6];
            a16 = v239;
            a14 = v238;
            a13 = v35[4];
            v241 = *(a2 - 176);
            v240 = *(a2 - 160);
            v242 = *v565;
            v35[7].n128_u32[0] = *(a2 - 144);
            v35[5] = v241;
            v35[6] = v240;
            v35[4] = v242;
            v244 = a14;
            v243 = a15;
            v245 = a13;
            *(a2 - 144) = a16;
            *(a2 - 176) = v244;
            *(a2 - 160) = v243;
            *v565 = v245;
          }
        }
      }

      else if (((v198 != v199) & v25) != 0)
      {
        v208 = 0;
        v209 = v35[5];
        v210 = v35[7];
        a15 = v35[6];
        a16 = v210;
        a14 = v209;
        a13 = v35[4];
        v212 = *(a2 - 176);
        v211 = *(a2 - 160);
        v213 = *v565;
        v35[7].n128_u32[0] = *(a2 - 144);
        v35[5] = v212;
        v35[6] = v211;
        v35[4] = v213;
        v215 = a14;
        v214 = a15;
        v216 = a13;
        *(a2 - 144) = a16;
        *(a2 - 176) = v215;
        *(a2 - 160) = v214;
        *v565 = v216;
        while (1)
        {
          v217 = *(a1 + v130 + v208 + 96);
          v218 = *(a1 + v208 + 160);
          if (v217 != v218)
          {
            break;
          }

          v208 -= 8;
          if (v208 == -40)
          {
            goto LABEL_119;
          }
        }

        if (v217 < v218)
        {
          v231 = a1[11];
          a15 = a1[10];
          v230 = a15;
          a16 = v231;
          v232 = a1[9];
          a13 = a1[8];
          v233 = a13;
          a14 = v232;
          v235 = v35[5];
          v234 = v35[6];
          v236 = v35[4];
          *(a1 + 44) = v35[7].n128_u32[0];
          a1[9] = v235;
          a1[10] = v234;
          a1[8] = v236;
          v237 = a16;
          v35[5] = v232;
          v35[6] = v230;
          v35[4] = v233;
          v35[7].n128_u32[0] = v237;
        }
      }

LABEL_119:
      v20 = a1 + v130 + 32;
      v246 = -5;
      v247 = v20;
      while (1)
      {
        v248 = *v247;
        v249 = *(v247 - 8);
        if (*v247 != v249)
        {
          break;
        }

        --v247;
        v306 = __CFADD__(v246++, 1);
        if (v306)
        {
          goto LABEL_125;
        }
      }

      LOBYTE(v25) = *v247 < v249;
LABEL_125:
      LOBYTE(v21) = (v248 != v249) & v25;
      v250 = (a1 + v130 + 96);
      v251 = -5;
      v24 = v250;
      while (1)
      {
        v23 = *v24;
        v25 = *(v24 - 8);
        if (*v24 != v25)
        {
          break;
        }

        --v24;
        v306 = __CFADD__(v251++, 1);
        if (v306)
        {
          goto LABEL_131;
        }
      }

      v26 = *v24 < v25;
LABEL_131:
      LOBYTE(v22) = v23 != v25 && v26;
      if ((v21 & 1) == 0)
      {
        if (v23 != v25 && v26)
        {
          v255 = v35[1];
          v256 = v35[3];
          a15 = v35[2];
          a16 = v256;
          a14 = v255;
          a13 = *v35;
          v257 = v35[6];
          v35[1] = v35[5];
          v35[2] = v257;
          v35[3].n128_u32[0] = v35[7].n128_u32[0];
          *v35 = v35[4];
          v258 = a16;
          v259 = a15;
          v35[5] = a14;
          v35[6] = v259;
          v260 = a13;
          v35[7].n128_u32[0] = v258;
          v35[4] = v260;
          v261 = -5;
          while (1)
          {
            v21 = *v20;
            v22 = *(v20 - 64);
            if (*v20 != v22)
            {
              break;
            }

            v20 -= 8;
            v306 = __CFADD__(v261++, 1);
            if (v306)
            {
              goto LABEL_150;
            }
          }

          if (*v20 < v22)
          {
            v269 = v35[-3];
            v270 = v35[-1];
            a15 = v35[-2];
            a16 = v270;
            a14 = v269;
            a13 = *v129;
            v271 = v35[2];
            v35[-3] = v35[1];
            v35[-2] = v271;
            v35[-1].n128_u32[0] = v35[3].n128_u32[0];
            *v129 = *v35;
            v272 = a16;
            v273 = a15;
            v35[1] = a14;
            v35[2] = v273;
            v274 = a13;
            v35[3].n128_u32[0] = v272;
            *v35 = v274;
          }
        }

        goto LABEL_150;
      }

      if (v23 != v25 && v26)
      {
        v252 = v35[-3];
        v253 = v35[-1];
        a15 = v35[-2];
        a16 = v253;
        a14 = v252;
        a13 = *v129;
        v254 = v35[6];
        v35[-3] = v35[5];
        v35[-2] = v254;
        v35[-1].n128_u32[0] = v35[7].n128_u32[0];
        *v129 = v35[4];
      }

      else
      {
        v262 = v35[-3];
        v263 = v35[-1];
        a15 = v35[-2];
        a16 = v263;
        a14 = v262;
        a13 = *v129;
        v264 = v35[2];
        v35[-3] = v35[1];
        v35[-2] = v264;
        v35[-1].n128_u32[0] = v35[3].n128_u32[0];
        *v129 = *v35;
        v265 = a16;
        v266 = a15;
        v35[1] = a14;
        v35[2] = v266;
        v267 = a13;
        v35[3].n128_u32[0] = v265;
        *v35 = v267;
        v268 = -5;
        while (1)
        {
          v20 = *v250;
          v21 = *(v250 - 8);
          if (*v250 != v21)
          {
            break;
          }

          --v250;
          v306 = __CFADD__(v268++, 1);
          if (v306)
          {
            goto LABEL_150;
          }
        }

        if (*v250 >= v21)
        {
          goto LABEL_150;
        }

        v275 = v35[1];
        v276 = v35[3];
        a15 = v35[2];
        a16 = v276;
        a14 = v275;
        a13 = *v35;
        v277 = v35[6];
        v35[1] = v35[5];
        v35[2] = v277;
        v35[3].n128_u32[0] = v35[7].n128_u32[0];
        *v35 = v35[4];
      }

      v278 = a16;
      v279 = a15;
      v35[5] = a14;
      v35[6] = v279;
      v280 = a13;
      v35[7].n128_u32[0] = v278;
      v35[4] = v280;
LABEL_150:
      v281 = a1[1];
      v282 = a1[3];
      a15 = a1[2];
      a16 = v282;
      a14 = v281;
      a13 = *a1;
      v284 = v35[1];
      v283 = v35[2];
      v285 = *v35;
      *(a1 + 12) = v35[3].n128_u32[0];
      a1[1] = v284;
      a1[2] = v283;
      *a1 = v285;
      v287 = a14;
      v286 = a15;
      v288 = a13;
      v35[3].n128_u32[0] = a16;
      v35[1] = v287;
      v35[2] = v286;
      *v35 = v288;
      goto LABEL_151;
    }

    v39 = 4;
    while (1)
    {
      v40 = *(a1 + v39 * 8);
      v41 = v35->n128_u64[v39];
      if (v40 != v41)
      {
        break;
      }

      if (--v39 == -1)
      {
        goto LABEL_28;
      }
    }

    LOBYTE(v21) = v40 < v41;
LABEL_28:
    v46 = 0;
    v47 = (v40 != v41) & v21;
    while (1)
    {
      v20 = v29[v46];
      v21 = *(a1 + v46 * 8 + 32);
      if (v20 != v21)
      {
        break;
      }

      if (--v46 == -5)
      {
        goto LABEL_37;
      }
    }

    LOBYTE(v22) = v20 < v21;
LABEL_37:
    if (v47)
    {
      if (((v20 != v21) & v22) != 0)
      {
        v54 = v35[1];
        v55 = v35[3];
        a15 = v35[2];
        a16 = v55;
        a14 = v54;
        a13 = *v35;
        v57 = *(a2 - 48);
        v56 = *(a2 - 32);
        v58 = *v567;
        v35[3].n128_u32[0] = *(a2 - 16);
        v35[1] = v57;
        v35[2] = v56;
        *v35 = v58;
        v60 = a14;
        v59 = a15;
        v61 = a13;
        *(a2 - 16) = a16;
        *(a2 - 48) = v60;
        *(a2 - 32) = v59;
        *v567 = v61;
      }

      else
      {
        v94 = 0;
        v95 = v35[1];
        v96 = v35[3];
        a15 = v35[2];
        a16 = v96;
        a14 = v95;
        a13 = *v35;
        v98 = a1[1];
        v97 = a1[2];
        v99 = *a1;
        v35[3].n128_u32[0] = *(a1 + 12);
        v35[1] = v98;
        v35[2] = v97;
        *v35 = v99;
        v101 = a14;
        v100 = a15;
        v102 = a13;
        *(a1 + 12) = a16;
        a1[1] = v101;
        a1[2] = v100;
        *a1 = v102;
        while (1)
        {
          v103 = v29[v94];
          v104 = *(a1 + v94 * 8 + 32);
          if (v103 != v104)
          {
            break;
          }

          if (--v94 == -5)
          {
            goto LABEL_151;
          }
        }

        if (v103 < v104)
        {
          v168 = a1[1];
          v169 = a1[3];
          a15 = a1[2];
          a16 = v169;
          a14 = v168;
          a13 = *a1;
          v171 = *(a2 - 48);
          v170 = *(a2 - 32);
          v172 = *v567;
          *(a1 + 12) = *(a2 - 16);
          a1[1] = v171;
          a1[2] = v170;
          *a1 = v172;
          v174 = a14;
          v173 = a15;
          v175 = a13;
          *(a2 - 16) = a16;
          *(a2 - 48) = v174;
          *(a2 - 32) = v173;
          *v567 = v175;
        }
      }
    }

    else if (((v20 != v21) & v22) != 0)
    {
      v73 = a1[1];
      v74 = a1[3];
      a15 = a1[2];
      a16 = v74;
      a14 = v73;
      a13 = *a1;
      v76 = *(a2 - 48);
      v75 = *(a2 - 32);
      v77 = *v567;
      *(a1 + 12) = *(a2 - 16);
      a1[1] = v76;
      a1[2] = v75;
      *a1 = v77;
      v79 = a14;
      v78 = a15;
      v80 = a13;
      *(a2 - 16) = a16;
      *(a2 - 48) = v79;
      *(a2 - 32) = v78;
      *v567 = v80;
      v81 = 4;
      while (1)
      {
        v82 = *(a1 + v81 * 8);
        v20 = v35->n128_u64[v81];
        if (v82 != v20)
        {
          break;
        }

        if (--v81 == -1)
        {
          goto LABEL_151;
        }
      }

      if (v82 < v20)
      {
        v113 = v35[1];
        v114 = v35[3];
        a15 = v35[2];
        a16 = v114;
        a14 = v113;
        a13 = *v35;
        v116 = a1[1];
        v115 = a1[2];
        v117 = *a1;
        v35[3].n128_u32[0] = *(a1 + 12);
        v35[1] = v116;
        v35[2] = v115;
        *v35 = v117;
        v119 = a14;
        v118 = a15;
        v120 = a13;
        *(a1 + 12) = a16;
        a1[1] = v119;
        a1[2] = v118;
        *a1 = v120;
      }
    }

LABEL_151:
    --a3;
    if ((a4 & 1) == 0)
    {
      v289 = 0;
      while (1)
      {
        v290 = *(a1 + v289 - 32);
        v291 = *(a1 + v289 + 32);
        if (v290 != v291)
        {
          break;
        }

        v289 -= 8;
        if (v289 == -40)
        {
          goto LABEL_212;
        }
      }

      if (v290 < v291)
      {
        goto LABEL_157;
      }

LABEL_212:
      v344 = 0;
      v346 = a1[2];
      v345 = a1[3];
      vars0 = a1[1];
      v573 = v346;
      v576 = v345;
      v570 = *a1;
      while (1)
      {
        v347 = *(&v570 + v344 + 32);
        v348 = *(a2 + v344 - 32);
        v349 = v347 >= v348;
        if (v347 != v348)
        {
          break;
        }

        v344 -= 8;
        if (v344 == -40)
        {
          v350 = a1;
          while (1)
          {
LABEL_227:
            a1 = v350 + 4;
            if ((v350 + 4) >= a2)
            {
              goto LABEL_237;
            }

            v20 = &v570 | 0x20;
            v21 = 12;
            while (1)
            {
              v357 = *v20;
              v20 -= 8;
              v356 = v357;
              v358 = *(v350 + v21);
              v359 = v357 >= v358;
              if (v357 != v358)
              {
                break;
              }

              if (--v21 == 7)
              {
                goto LABEL_235;
              }
            }

            LOBYTE(v22) = !v359;
LABEL_235:
            v350 += 4;
            if (v356 != v358)
            {
              v350 = a1;
              if (v22)
              {
                goto LABEL_237;
              }
            }
          }
        }
      }

      v351 = a1;
      v350 = a1;
      if (v349)
      {
        goto LABEL_227;
      }

      while (1)
      {
        a1 = v351 + 4;
        v20 = &v570 | 0x20;
        v21 = 12;
        while (1)
        {
          v353 = *v20;
          v20 -= 8;
          v352 = v353;
          v354 = *(v351 + v21);
          v355 = v353 >= v354;
          if (v353 != v354)
          {
            break;
          }

          if (--v21 == 7)
          {
            goto LABEL_224;
          }
        }

        LOBYTE(v22) = !v355;
LABEL_224:
        v351 += 4;
        if (v352 != v354)
        {
          v351 = a1;
          if (v22)
          {
            break;
          }
        }
      }

LABEL_237:
      v360 = a2;
      if (a1 < a2)
      {
        v361 = a2;
        do
        {
          v360 = v361 - 64;
          v362 = -4;
          v20 = &v570 | 0x20;
          while (1)
          {
            v363 = *v20;
            v20 -= 8;
            LOBYTE(v21) = v363;
            v22 = *(v361 + 8 * v362);
            v364 = v363 >= v22;
            if (v363 != v22)
            {
              break;
            }

            if (--v362 == -9)
            {
              goto LABEL_263;
            }
          }

          v361 -= 64;
        }

        while (!v364);
      }

LABEL_263:
      while (a1 < v360)
      {
        v365 = a1[1];
        v366 = a1[3];
        a15 = a1[2];
        a16 = v366;
        a14 = v365;
        a13 = *a1;
        v368 = *(v360 + 16);
        v367 = *(v360 + 32);
        v369 = *v360;
        *(a1 + 12) = *(v360 + 48);
        a1[1] = v368;
        a1[2] = v367;
        *a1 = v369;
        v371 = a14;
        v370 = a15;
        v372 = a13;
        *(v360 + 48) = a16;
        *(v360 + 16) = v371;
        *(v360 + 32) = v370;
        *v360 = v372;
        v373 = a1;
        while (1)
        {
          a1 = v373 + 4;
          v374 = (&v570 | 0x20);
          v375 = 12;
          while (1)
          {
            v377 = *v374--;
            v376 = v377;
            v378 = *(v373 + v375);
            v379 = v377 >= v378;
            if (v377 != v378)
            {
              break;
            }

            if (--v375 == 7)
            {
              goto LABEL_254;
            }
          }

          LOBYTE(v23) = !v379;
LABEL_254:
          v373 += 4;
          if (v376 != v378)
          {
            v373 = a1;
            if (v23)
            {
              break;
            }
          }
        }

        v380 = v360;
        do
        {
          v360 = v380 - 64;
          v381 = -4;
          v20 = &v570 | 0x20;
          while (1)
          {
            v382 = *v20;
            v20 -= 8;
            LOBYTE(v21) = v382;
            v22 = *(v380 + 8 * v381);
            v383 = v382 >= v22;
            if (v382 != v22)
            {
              break;
            }

            if (--v381 == -9)
            {
              goto LABEL_263;
            }
          }

          v380 -= 64;
        }

        while (!v383);
      }

      v384 = (a1 - 4);
      if (a1 - 4 != v32)
      {
        v385 = *(a1 - 4);
        v386 = *(a1 - 2);
        v32[1] = *(a1 - 3);
        v32[2] = v386;
        v387 = *v384;
        *(v32 + 12) = v385;
        *v32 = v387;
      }

      LODWORD(a4) = 0;
      *(a1 - 3) = vars0;
      *(a1 - 2) = v573;
      result = v570;
      *(a1 - 4) = v576;
      *v384 = result;
      goto LABEL_3;
    }

LABEL_157:
    v293 = a1[2];
    v292 = a1[3];
    vars0 = a1[1];
    v572 = v293;
    v575 = v292;
    v570 = *a1;
    v294 = a1;
    do
    {
      v295 = 0;
      v296 = v294;
      v294 += 4;
      while (1)
      {
        v297 = *(v296 + v295 + 96);
        v298 = *(&v570 + v295 + 32);
        if (v297 != v298)
        {
          break;
        }

        v295 -= 8;
        if (v295 == -40)
        {
          goto LABEL_163;
        }
      }
    }

    while (v297 < v298);
LABEL_163:
    v299 = a2;
    if (v296 == a1)
    {
      v307 = a2;
      while (v294 < v307)
      {
        v300 = v307 - 64;
        v308 = -4;
        v309 = (&v570 | 0x20);
        while (1)
        {
          v310 = *(v307 + 8 * v308);
          v312 = *v309--;
          v311 = v312;
          v313 = v310 >= v312;
          if (v310 != v312)
          {
            break;
          }

          if (--v308 == -9)
          {
            goto LABEL_183;
          }
        }

        LOBYTE(v24) = !v313;
LABEL_183:
        v307 -= 64;
        if (v310 != v311)
        {
          v307 = v300;
          if (v24)
          {
            goto LABEL_187;
          }
        }
      }

      v300 = v307;
    }

    else
    {
      while (1)
      {
        v300 = v299 - 64;
        v301 = -4;
        v302 = (&v570 | 0x20);
        while (1)
        {
          v303 = *(v299 + 8 * v301);
          v305 = *v302--;
          v304 = v305;
          v306 = v303 >= v305;
          if (v303 != v305)
          {
            break;
          }

          if (--v301 == -9)
          {
            goto LABEL_171;
          }
        }

        LOBYTE(v24) = !v306;
LABEL_171:
        v299 -= 64;
        if (v303 != v304)
        {
          v299 = v300;
          if (v24)
          {
            break;
          }
        }
      }
    }

LABEL_187:
    if (v294 < v300)
    {
      v314 = v294;
      v315 = v300;
      do
      {
        v317 = v314[3];
        a15 = v314[2];
        v316 = a15;
        a16 = v317;
        v318 = v314[1];
        a13 = *v314;
        v319 = a13;
        a14 = v318;
        v321 = *(v315 + 16);
        v320 = *(v315 + 32);
        v322 = *v315;
        v314[3].n128_u32[0] = *(v315 + 48);
        v314[1] = v321;
        v314[2] = v320;
        *v314 = v322;
        v323 = a16;
        *(v315 + 16) = v318;
        *(v315 + 32) = v316;
        *v315 = v319;
        *(v315 + 48) = v323;
        do
        {
          v296 = v314;
          v314 += 4;
          v324 = (&v570 | 0x20);
          v325 = 12;
          while (1)
          {
            v326 = *(v296 + v325);
            v327 = *v324--;
            v328 = v326 >= v327;
            if (v326 != v327)
            {
              break;
            }

            if (--v325 == 7)
            {
              goto LABEL_196;
            }
          }
        }

        while (!v328);
        while (1)
        {
LABEL_196:
          v329 = v315 - 64;
          v330 = -4;
          v331 = (&v570 | 0x20);
          while (1)
          {
            v332 = *(v315 + 8 * v330);
            v334 = *v331--;
            v333 = v334;
            v335 = v332 >= v334;
            if (v332 != v334)
            {
              break;
            }

            if (--v330 == -9)
            {
              goto LABEL_203;
            }
          }

          v26 = !v335;
LABEL_203:
          v315 -= 64;
          if (v332 != v333)
          {
            v315 = v329;
            if (v26)
            {
              break;
            }
          }
        }

        v315 = v329;
      }

      while (v314 < v329);
    }

    if (v296 != a1)
    {
      v336 = *(v296 + 12);
      v337 = v296[2];
      a1[1] = v296[1];
      a1[2] = v337;
      v338 = *v296;
      *(a1 + 12) = v336;
      *a1 = v338;
    }

    v296[1] = vars0;
    v296[2] = v572;
    v339 = v570;
    *(v296 + 12) = v575;
    *v296 = v339;
    if (v294 < v300)
    {
LABEL_211:
      v343 = a3;
      std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,false>(v32, v296);
      a3 = v343;
      LODWORD(a4) = 0;
      a1 = v296 + 4;
      goto LABEL_3;
    }

    v340 = a3;
    v569 = a1;
    v341 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *>(a1, v296);
    a1 = v296 + 4;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *>(v296 + 64, a2))
    {
      a2 = v296;
      a3 = v340;
      a1 = v569;
      LODWORD(a4) = v568;
      if (!v341)
      {
        goto LABEL_2;
      }

      return result;
    }

    a3 = v340;
    v32 = v569;
    LOBYTE(a4) = v568;
    if (!v341)
    {
      goto LABEL_211;
    }
  }

  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,0>(a1, a1 + 4, a1 + 8, a1 + 12);
  v388 = 28;
  while (1)
  {
    v389 = *v29--;
    v390 = *(a1 + v388);
    v391 = v389 >= v390;
    if (v389 != v390)
    {
      break;
    }

    if (--v388 == 23)
    {
      return result;
    }
  }

  if (!v391)
  {
    v485 = 0;
    v486 = a1[15];
    a15 = a1[14];
    result = a15;
    a16 = v486;
    v487 = a1[13];
    a13 = a1[12];
    v488 = a13;
    a14 = v487;
    v490 = *(a2 - 48);
    v489 = *(a2 - 32);
    v491 = *v567;
    *(a1 + 60) = *(a2 - 16);
    a1[13] = v490;
    a1[14] = v489;
    a1[12] = v491;
    *(a2 - 16) = a16;
    *(a2 - 48) = v487;
    *(a2 - 32) = result;
    *v567 = v488;
    while (1)
    {
      v492 = *(a1 + v485 + 224);
      v493 = *(a1 + v485 + 160);
      if (v492 != v493)
      {
        break;
      }

      v485 -= 8;
      if (v485 == -40)
      {
        return result;
      }
    }

    if (v492 < v493)
    {
      v540 = 0;
      v541 = a1[10];
      a16 = a1[11];
      *(a1 + 44) = *(a1 + 60);
      *(a1 + 60) = a16;
      v542 = a1[8];
      result = a1[9];
      v543 = a1[13];
      a1[8] = a1[12];
      a1[9] = v543;
      a1[10] = a1[14];
      a1[12] = v542;
      a1[13] = result;
      a1[14] = v541;
      while (1)
      {
        v544 = *(a1 + v540 + 160);
        v545 = *(a1 + v540 + 96);
        if (v544 != v545)
        {
          break;
        }

        v540 -= 8;
        if (v540 == -40)
        {
          return result;
        }
      }

      if (v544 < v545)
      {
        v553 = 0;
        v554 = a1[6];
        a16 = a1[7];
        *(a1 + 28) = *(a1 + 44);
        *(a1 + 44) = a16;
        v555 = a1[4];
        result = a1[5];
        v556 = a1[9];
        a1[4] = a1[8];
        a1[5] = v556;
        a1[6] = a1[10];
        a1[8] = v555;
        a1[9] = result;
        a1[10] = v554;
        while (1)
        {
          v557 = *(a1 + v553 + 96);
          v558 = *(a1 + v553 + 32);
          if (v557 != v558)
          {
            break;
          }

          v553 -= 8;
          if (v553 == -40)
          {
            return result;
          }
        }

        if (v557 < v558)
        {
LABEL_437:
          v559 = a1[1];
          v560 = a1[3];
          v561 = a1[4];
          a15 = a1[2];
          a16 = v560;
          a14 = v559;
          a13 = *a1;
          *(a1 + 12) = *(a1 + 28);
          v562 = a1[6];
          a1[1] = a1[5];
          a1[2] = v562;
          *a1 = v561;
          result = a13;
          v563 = a14;
          v564 = a15;
          *(a1 + 28) = a16;
          a1[5] = v563;
          a1[6] = v564;
          a1[4] = result;
        }
      }
    }
  }

  return result;
}