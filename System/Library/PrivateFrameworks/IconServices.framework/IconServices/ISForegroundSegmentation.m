@interface ISForegroundSegmentation
- (BOOL)computeMaskWithWidth:(int)a3 height:(int)a4 samples:(id)a5 foregroundMask:(id *)a6;
- (ISForegroundSegmentation)initWithStrict:(BOOL)a3;
@end

@implementation ISForegroundSegmentation

- (ISForegroundSegmentation)initWithStrict:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = ISForegroundSegmentation;
  result = [(ISForegroundSegmentation *)&v7 init];
  if (result)
  {
    result->_strict = v3;
    *&result->_numberOfClusters = xmmword_1A78250D0;
    result->_clusterGroupingDistanceThreshold = 1.0;
    v5 = 0.17647;
    if (v3)
    {
      v5 = 0.015686;
      v6 = 2;
    }

    else
    {
      v6 = 140;
    }

    result->_borderNoiseScale = v5;
    result->_BOOLeanThreshold = v6;
  }

  return result;
}

- (BOOL)computeMaskWithWidth:(int)a3 height:(int)a4 samples:(id)a5 foregroundMask:(id *)a6
{
  result = 0;
  v361[12] = *MEMORY[0x1E69E9840];
  if (a3 < 8 || a4 < 8)
  {
    goto LABEL_241;
  }

  v9 = *&a5.var2;
  v10 = *&a5.var0;
  v323 = self;
  v316 = &v313;
  v6.i32[0] = a3 / 3u;
  LODWORD(v11) = a3 / 3u;
  HIDWORD(v11) = 1;
  LODWORD(v12) = a3 >> 1;
  LODWORD(v13) = a3 >> 1;
  HIDWORD(v13) = 1;
  v361[0] = v11;
  v361[1] = v13;
  LODWORD(v11) = 4 * a3 / 6u;
  v14 = a4 / 3u;
  LODWORD(v15) = 1;
  LODWORD(v16) = 1;
  HIDWORD(v16) = a4 / 3u;
  v361[2] = v11 | 0x100000000;
  v361[3] = v16;
  v320 = a3;
  v321 = a4;
  LODWORD(v13) = a3 - 2;
  LODWORD(v16) = 1;
  HIDWORD(v16) = a4 >> 1;
  HIDWORD(v15) = 4 * a4 / 6u;
  v361[4] = v16;
  v361[5] = v15;
  LODWORD(v15) = a3 - 2;
  HIDWORD(v15) = a4 / 3u;
  LODWORD(v16) = a3 - 2;
  HIDWORD(v16) = a4 >> 1;
  v361[6] = v15;
  v361[7] = v16;
  HIDWORD(v13) = 4 * a4 / 6u;
  *v330 = v6;
  LODWORD(v15) = a3 / 3u;
  HIDWORD(v15) = a4 - 2;
  v361[8] = v13;
  v361[9] = v15;
  HIDWORD(v12) = a4 - 2;
  HIDWORD(v11) = a4 - 2;
  v361[10] = v12;
  v361[11] = v11;
  MEMORY[0x1EEE9AC00](0);
  v17 = 0;
  v18 = 0;
  do
  {
    v19 = HIDWORD(v361[v17]);
    v20 = v361[v17];
    v340.i32[2] = 0;
    v340.i64[0] = 0;
    v342 = *v10;
    v343 = v10[1].i64[0];
    v21 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v342, v20, v19, &v340, 0);
    if (v21)
    {
      *&v312[16 * v18++ + 320] = v340;
    }

    ++v17;
  }

  while (v17 != 12);
  v22 = v321;
  LODWORD(v23) = v330[0];
  LODWORD(v24) = v330[0];
  HIDWORD(v24) = v321 / 0xC;
  LODWORD(v25) = (1431655766 * (2 * v320)) >> 32;
  LODWORD(v26) = v25;
  HIDWORD(v26) = v321 / 0xC;
  v342.i64[0] = v24;
  v342.i64[1] = v26;
  LODWORD(v24) = v25;
  HIDWORD(v24) = v321 / 0xA;
  LODWORD(v26) = v330[0];
  HIDWORD(v26) = v321 / 0xA;
  v27 = v320 / 0xC;
  LODWORD(v28) = v320 / 0xC;
  LODWORD(v29) = v320 / 0xC;
  HIDWORD(v29) = v14;
  HIDWORD(v28) = (1431655766 * (2 * v321)) >> 32;
  v343 = v24;
  v344 = v26;
  v345 = v29;
  v346 = v28;
  LODWORD(v24) = v320 / 0xA;
  LODWORD(v26) = v320 / 0xA;
  HIDWORD(v26) = v14;
  HIDWORD(v24) = HIDWORD(v28);
  LODWORD(v28) = v320 - 1 - v320 / 0xC;
  v347 = v26;
  v348 = v24;
  v349 = __PAIR64__(v14, v28);
  v350 = v28;
  LODWORD(v24) = v320 - 1 - v320 / 0xA;
  HIDWORD(v24) = HIDWORD(v28);
  v351 = __PAIR64__(v14, v24);
  v352 = v24;
  LODWORD(v24) = v330[0];
  HIDWORD(v24) = v22 - 1 - v22 / 0xC;
  HIDWORD(v23) = v22 - 1 - v22 / 0xA;
  v353 = v24;
  v354 = __PAIR64__(HIDWORD(v24), v25);
  HIDWORD(v25) = HIDWORD(v23);
  v30 = v320 / 8.5;
  v31 = v321 / 8.5;
  v327.i32[0] = v320 - 1;
  LODWORD(v28) = v30;
  v32 = ((v320 - 1) - v30);
  LODWORD(v30) = v30;
  HIDWORD(v30) = v31;
  v355 = v23;
  v356 = v25;
  LODWORD(v25) = v32;
  LODWORD(v29) = v32;
  HIDWORD(v29) = v31;
  v357 = v30;
  v358 = v29;
  LODWORD(v318) = v321 - 1;
  HIDWORD(v28) = ((v321 - 1) - v31);
  HIDWORD(v25) = HIDWORD(v28);
  v359 = v28;
  v360 = v25;
  MEMORY[0x1EEE9AC00](v21);
  v33 = 0;
  v34 = 0;
  do
  {
    v35 = HIDWORD(v342.i64[v33]);
    v36 = v342.i64[v33];
    v337.i32[2] = 0;
    v337.i64[0] = 0;
    v340 = *v10;
    v341 = v10[1].i64[0];
    if (ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v36, v35, &v337, 0))
    {
      *&v312[16 * v34++] = v337;
    }

    ++v33;
  }

  while (v33 != 20);
  v328.i32[0] = 0;
  v326 = 2;
  if (v18 == 12)
  {
    _ZF = v34 == 20;
    v38 = v323;
    v40 = v320;
    v39 = v321;
    if (_ZF)
    {
      v41 = 0;
      v42 = 0uLL;
      do
      {
        v42 = vaddq_f32(v42, *&v312[v41 + 320]);
        v41 += 16;
      }

      while (v41 != 192);
      v43 = 0;
      __asm { FMOV            V1.4S, #12.0 }

      v48 = vdivq_f32(v42, _Q1);
      v49 = 0.0;
      do
      {
        v50 = vsubq_f32(*&v312[v43 + 320], v48);
        v51 = vmulq_f32(v50, v50);
        v51.f32[0] = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32));
        v49 = v49 + (v51.f32[0] * v51.f32[0]);
        v43 += 16;
      }

      while (v43 != 192);
      v52 = 0;
      v53 = 0uLL;
      do
      {
        v53 = vaddq_f32(v53, *&v312[v52]);
        v52 += 16;
      }

      while (v52 != 320);
      v54 = 0;
      __asm { FMOV            V3.4S, #20.0 }

      v56 = vdivq_f32(v53, _Q3);
      v57 = 0.0;
      do
      {
        v58 = vsubq_f32(*&v312[v54], v56);
        v59 = vmulq_f32(v58, v58);
        v59.f32[0] = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
        v57 = v57 + (v59.f32[0] * v59.f32[0]);
        v54 += 16;
      }

      while (v54 != 320);
      v328.i32[0] = 0;
      v60 = vsubq_f32(v48, v56);
      v61 = vmulq_f32(v60, v60);
      v326 = 2;
      if (sqrtf(v61.f32[2] + vaddv_f32(*v61.f32)) > 0.196078431 && (v49 / 12.0) <= 0.00392156863)
      {
        if ((v57 / 20.0) <= 0.00392156863)
        {
          v326 = v27;
          v328.i32[0] = v27;
        }

        else
        {
          v328.i32[0] = 0;
          v326 = 2;
        }
      }
    }
  }

  else
  {
    v38 = v323;
    v40 = v320;
    v39 = v321;
  }

  v315 = v39 * v40;
  borderSamplingWidth = v38->_borderSamplingWidth;
  v337 = *v10;
  v338 = v10[1].i64[0];
  v335 = 0;
  v336.i8[2] = 0;
  v336.i16[0] = 0;
  v340 = *v10;
  v341 = v10[1].i64[0];
  v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v340, v326, v326, &v336, *v340.f32);
  if (v64)
  {
    v65 = v327.i32[0] - v328.i32[0];
    if (v327.i32[0] - v328.i32[0] <= v328.i32[0])
    {
LABEL_37:
      v71 = v65;
      if (borderSamplingWidth < 1)
      {
LABEL_45:
        if (v71 <= v328.i32[0])
        {
LABEL_53:
          if (borderSamplingWidth < 1)
          {
LABEL_61:
            v63.i32[0] = v336.i32[0];
            v92 = vmovl_u8(v63).u64[0];
            v94 = vmovl_u16(v92);
            *v94.f32 = vcvt_f32_u32(vand_s8(*v94.f32, 0xFF000000FFLL));
            v94.f32[2] = v92.u16[2];
            *v330 = v94;
            v93 = vdivq_f32(v94, vdupq_n_s32(0x437F0000u));
            v93.f32[0] = (v93.f32[2] + vaddv_f32(*v93.f32)) / 3.0;
            v94.f32[0] = (v93.f32[0] * -1.1) + 7.41;
            v95 = (v93.f32[0] * -37.0) + 139.52;
            if (v323->_strict)
            {
              v96 = v94.f32[0];
            }

            else
            {
              v96 = v95;
            }

            if (v10->i32[3] != 5 || v10->i32[2] || v9->i32[2] || (v9->i8[12] & 1) != 0)
            {
              v97 = v315;
              if (v315 >= 1)
              {
                v98 = 0;
                v329 = vdupq_n_s32(0x437F0000u);
                do
                {
                  v337.i32[2] = 0;
                  v337.i64[0] = 0;
                  v336.i32[0] = 0;
                  v340 = *v10;
                  v341 = v10[1].i64[0];
                  ISSegmentationSamples_readSample_i(&v340, v98, &v337, &v336);
                  v99 = 0;
                  if (v336.f32[0] > 0.0)
                  {
                    v100 = vsubq_f32(vmulq_f32(v337, v329), *v330);
                    v101 = vmulq_f32(v100, v100);
                    if ((v336.f32[0] * sqrtf(v101.f32[2] + vaddv_f32(*v101.f32))) <= v96)
                    {
                      v99 = 0;
                    }

                    else
                    {
                      v99 = -1;
                    }
                  }

                  v340 = *v9;
                  v341 = v9[1].i64[0];
                  ISSegmentationMask_writeMaskValue_i(&v340, v98, v99);
                  v98 = (v98 + 1);
                  result = 1;
                }

                while (v97 != v98);
                goto LABEL_241;
              }
            }

            else
            {
              v306 = v315;
              if (v315 >= 1)
              {
                v307 = 0;
                result = 1;
                do
                {
                  v94.i32[0] = *(v10[1].i64[0] + 4 * v307);
                  v308 = vmovl_u8(*v94.f32).u64[0];
                  v309 = vmovl_u16(v308);
                  *v309.f32 = vcvt_f32_u32(vand_s8(*v309.f32, 0xFF000000FFLL));
                  v309.f32[2] = v308.u16[2];
                  v310 = vsubq_f32(v309, *v330);
                  v94 = vmulq_f32(v310, v310);
                  if (sqrtf(v94.f32[2] + vaddv_f32(*v94.f32)) <= v96)
                  {
                    v311 = 0;
                  }

                  else
                  {
                    v311 = -1;
                  }

                  *(v9[1].i64[0] + v307++) = v311;
                }

                while (v306 != v307);
                goto LABEL_241;
              }
            }

            result = 1;
            goto LABEL_241;
          }

          v84 = v326;
          v85 = borderSamplingWidth + v326;
          v86 = ~v328.i32[0] + v321;
          v87 = ~(2 * v328.i32[0]) + v321;
          while (v86 <= v328.i32[0])
          {
LABEL_60:
            if (++v84 >= v85)
            {
              goto LABEL_61;
            }
          }

          v88 = v87;
          v89 = v328.i32[0];
          while (1)
          {
            v331 = 0;
            BYTE2(v339) = 0;
            LOWORD(v339) = 0;
            v340 = v337;
            v341 = v338;
            v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v340, v84, v89, &v339, *v337.f32);
            if (v91)
            {
              v63.i32[0] = v339;
              v90.i32[0] = v336.i32[0];
              v63 = vceq_s16(*&vmovl_u8(v63), *&vmovl_u8(v90));
              v63.i8[1] = v63.i8[2];
              v63.i8[2] = v63.i8[4];
              v63.i8[3] = v63.i8[4];
              v63.i16[2] = v63.i16[0];
              v63.i8[6] = v63.i8[3];
              v63.i8[7] = v63.i8[3];
              if ((vminv_u8(v63) & 0x80) == 0)
              {
                break;
              }
            }

            ++v89;
            if (!--v88)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          v79 = ~v326 + v321;
          v80 = v328.i32[0];
          while (borderSamplingWidth < 1)
          {
LABEL_52:
            if (++v80 == v71)
            {
              goto LABEL_53;
            }
          }

          v81 = v79 - borderSamplingWidth;
          while (1)
          {
            v332 = 0;
            BYTE2(v339) = 0;
            LOWORD(v339) = 0;
            v340 = v337;
            v341 = v338;
            v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v340, v80, v81, &v339, *v337.f32);
            if (v83)
            {
              v63.i32[0] = v339;
              v82.i32[0] = v336.i32[0];
              v63 = vceq_s16(*&vmovl_u8(v63), *&vmovl_u8(v82));
              v63.i8[1] = v63.i8[2];
              v63.i8[2] = v63.i8[4];
              v63.i8[3] = v63.i8[4];
              v63.i16[2] = v63.i16[0];
              v63.i8[6] = v63.i8[3];
              v63.i8[7] = v63.i8[3];
              if ((vminv_u8(v63) & 0x80) == 0)
              {
                break;
              }
            }

            if (++v81 >= v79)
            {
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        v72 = v327.i32[0] - v326;
        v73 = v327.i32[0] - v326 - borderSamplingWidth;
        v74 = ~v328.i32[0] + v321;
        LODWORD(v330[0]) = ~(2 * v328.i32[0]) + v321;
        while (v74 <= v328.i32[0])
        {
LABEL_44:
          if (++v73 >= v72)
          {
            goto LABEL_45;
          }
        }

        v75 = v330[0];
        v76 = v328.i32[0];
        while (1)
        {
          v333 = 0;
          BYTE2(v339) = 0;
          LOWORD(v339) = 0;
          v340 = v337;
          v341 = v338;
          v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v340, v73, v76, &v339, *v337.f32);
          if (v78)
          {
            v63.i32[0] = v339;
            v77.i32[0] = v336.i32[0];
            v63 = vceq_s16(*&vmovl_u8(v63), *&vmovl_u8(v77));
            v63.i8[1] = v63.i8[2];
            v63.i8[2] = v63.i8[4];
            v63.i8[3] = v63.i8[4];
            v63.i16[2] = v63.i16[0];
            v63.i8[6] = v63.i8[3];
            v63.i8[7] = v63.i8[3];
            if ((vminv_u8(v63) & 0x80) == 0)
            {
              break;
            }
          }

          ++v76;
          if (!--v75)
          {
            goto LABEL_44;
          }
        }
      }

      v38 = v323;
      v40 = v320;
    }

    else
    {
      v66 = borderSamplingWidth + v326;
      v67 = v328.i32[0];
      while (borderSamplingWidth < 1)
      {
LABEL_36:
        if (++v67 == v65)
        {
          goto LABEL_37;
        }
      }

      v68 = v326;
      while (1)
      {
        v334 = 0;
        BYTE2(v339) = 0;
        LOWORD(v339) = 0;
        v340 = v337;
        v341 = v338;
        v63 = ISSegmentationSamples_readOpaqueUcharSample_xy(&v340, v67, v68, &v339, *v337.f32);
        if (v70)
        {
          v63.i32[0] = v339;
          v69.i32[0] = v336.i32[0];
          v63 = vceq_s16(*&vmovl_u8(v63), *&vmovl_u8(v69));
          v63.i8[1] = v63.i8[2];
          v63.i8[2] = v63.i8[4];
          v63.i8[3] = v63.i8[4];
          v63.i16[2] = v63.i16[0];
          v63.i8[6] = v63.i8[3];
          v63.i8[7] = v63.i8[3];
          if ((vminv_u8(v63) & 0x80) == 0)
          {
            break;
          }
        }

        if (++v68 >= v66)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v102 = malloc_type_malloc(16 * v38->_maxNumberOfClusteringSamples, 0x1000040451B5BE8uLL);
  v317 = v102;
  v339 = 10;
  v103 = v328.i32[0];
  if (v38->_maxNumberOfClusteringSamples < 4)
  {
    LODWORD(v322) = 0;
  }

  else
  {
    v104 = 0;
    LODWORD(v322) = 0;
    v105 = v40 - v328.i32[0];
    LODWORD(v324) = v40 - v328.i32[0];
    do
    {
      v106 = ISSegmentationMathUtils_rand_open(&v339, v103, v105);
      v107 = ISSegmentationMathUtils_rand_open(&v339, v326, v38->_borderSamplingWidth + v326);
      v337.i32[2] = 0;
      v337.i64[0] = 0;
      v340 = *v10;
      v341 = v10[1].i64[0];
      v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v106, v107, &v337, 0);
      if (v102)
      {
        v108 = ISSegmentationMathUtils_luma(v337);
        v102 = rand_r(&v339);
        if (vcvts_n_f32_s32(v102, 0x1FuLL) <= ((v108 * -0.47619) + 1.0))
        {
          if (v106 <= 1)
          {
            v110 = 1;
          }

          else
          {
            v110 = v106;
          }

          v111 = v110 - 1;
          if (v106 + 1 < v327.i32[0])
          {
            v112 = v106 + 1;
          }

          else
          {
            v112 = v327.i32[0];
          }

          LODWORD(v330[0]) = v112;
          if (v111 <= v112)
          {
            v329.i32[0] = v104;
            v113 = 0;
            if (v107 <= 1)
            {
              v114 = 1;
            }

            else
            {
              v114 = v107;
            }

            v115 = v114 - 1;
            if (v107 + 1 < v318)
            {
              v116 = v107 + 1;
            }

            else
            {
              v116 = v318;
            }

            v117 = v116 - v114 + 2;
            do
            {
              v118 = v117;
              v119 = v115;
              if (v115 <= v116)
              {
                do
                {
                  v336.i32[2] = 0;
                  v336.i64[0] = 0;
                  v340 = *v10;
                  v341 = v10[1].i64[0];
                  v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v111, v119, &v336, 0);
                  if (v102)
                  {
                    v120 = vsubq_f32(v337, v336);
                    v109 = vmulq_f32(v120, v120);
                    *v109.i64 = sqrtf(v109.f32[2] + vaddv_f32(*v109.f32));
                    if (*v109.i64 <= 0.0431372549)
                    {
                      ++v113;
                    }
                  }

                  ++v119;
                  --v118;
                }

                while (v118);
              }

              _ZF = v111++ == LODWORD(v330[0]);
            }

            while (!_ZF);
            v40 = v320;
            v103 = v328.i32[0];
            v104 = v329.i32[0];
            v38 = v323;
            if (v113 >= 6)
            {
              v109.i32[0] = LODWORD(v323->_borderNoiseScale);
              *v330 = v109;
              v121.f32[0] = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
              v325 = v121;
              *&v122 = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
              v319 = v122;
              v123 = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
              v124 = v325;
              v124.i32[1] = v319;
              v124.f32[2] = v123;
              v125 = v322;
              v317[v322] = vaddq_f32(v337, vmulq_n_f32(v124, *v330));
              LODWORD(v322) = v125 + 1;
            }
          }

          v105 = v324;
        }
      }

      ++v104;
      maxNumberOfClusteringSamples = v38->_maxNumberOfClusteringSamples;
    }

    while (v104 < maxNumberOfClusteringSamples / 4);
    if (maxNumberOfClusteringSamples >= 4)
    {
      v127 = 0;
      v325.i32[0] = v40 - v326;
      v128 = v321 - v103;
      LODWORD(v319) = v321 - v103;
      do
      {
        v329.i32[0] = v127;
        v129 = ISSegmentationMathUtils_rand_open(&v339, v325.i32[0] - v38->_borderSamplingWidth, v325.i32[0]);
        v130 = ISSegmentationMathUtils_rand_open(&v339, v103, v128);
        v337.i32[2] = 0;
        v337.i64[0] = 0;
        v340 = *v10;
        v341 = v10[1].i64[0];
        v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v129, v130, &v337, 0);
        if (v102 && (v131 = ISSegmentationMathUtils_luma(v337), v102 = rand_r(&v339), vcvts_n_f32_s32(v102, 0x1FuLL) <= ((v131 * -0.47619) + 1.0)))
        {
          if (v129 <= 1)
          {
            v134 = 1;
          }

          else
          {
            v134 = v129;
          }

          v135 = v134 - 1;
          if (v129 + 1 < v327.i32[0])
          {
            v136 = v129 + 1;
          }

          else
          {
            v136 = v327.i32[0];
          }

          LODWORD(v330[0]) = v136;
          if (v135 <= v136)
          {
            v137 = 0;
            if (v130 <= 1)
            {
              v138 = 1;
            }

            else
            {
              v138 = v130;
            }

            v139 = v138 - 1;
            if (v130 + 1 < v318)
            {
              v140 = v130 + 1;
            }

            else
            {
              v140 = v318;
            }

            v141 = v140 - v138 + 2;
            do
            {
              v142 = v141;
              v143 = v139;
              if (v139 <= v140)
              {
                do
                {
                  v336.i32[2] = 0;
                  v336.i64[0] = 0;
                  v340 = *v10;
                  v341 = v10[1].i64[0];
                  v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v135, v143, &v336, 0);
                  if (v102)
                  {
                    v144 = vsubq_f32(v337, v336);
                    v132 = vmulq_f32(v144, v144);
                    *v132.i64 = sqrtf(v132.f32[2] + vaddv_f32(*v132.f32));
                    if (*v132.i64 <= 0.0431372549)
                    {
                      ++v137;
                    }
                  }

                  ++v143;
                  --v142;
                }

                while (v142);
              }

              _ZF = v135++ == LODWORD(v330[0]);
            }

            while (!_ZF);
            v231 = v137 < 6;
            v133 = v321;
            v103 = v328.i32[0];
            v105 = v324;
            v38 = v323;
            if (!v231)
            {
              v132.i32[0] = LODWORD(v323->_borderNoiseScale);
              *v330 = v132;
              v145.f32[0] = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
              v314 = v145;
              *&v146 = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
              v313 = v146;
              v147 = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
              v148 = v314;
              v148.i32[1] = v313;
              v148.f32[2] = v147;
              v149 = v322;
              v317[v322] = vaddq_f32(v337, vmulq_n_f32(v148, *v330));
              LODWORD(v322) = v149 + 1;
            }
          }

          else
          {
            v38 = v323;
            v133 = v321;
          }

          v128 = v319;
        }

        else
        {
          v38 = v323;
          v133 = v321;
        }

        v127 = v329.i32[0] + 1;
        v150 = v38->_maxNumberOfClusteringSamples;
      }

      while (v329.i32[0] + 1 < v150 / 4);
      if (v150 >= 4)
      {
        v329.i32[0] = v133 - v326;
        v151 = 0;
        do
        {
          v152 = ISSegmentationMathUtils_rand_open(&v339, v103, v105);
          v153 = ISSegmentationMathUtils_rand_open(&v339, v329.i32[0] - v38->_borderSamplingWidth, v329.i32[0]);
          v337.i32[2] = 0;
          v337.i64[0] = 0;
          v340 = *v10;
          v341 = v10[1].i64[0];
          v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v152, v153, &v337, 0);
          if (v102 && (v154 = ISSegmentationMathUtils_luma(v337), v102 = rand_r(&v339), vcvts_n_f32_s32(v102, 0x1FuLL) <= ((v154 * -0.47619) + 1.0)))
          {
            if (v152 <= 1)
            {
              v157 = 1;
            }

            else
            {
              v157 = v152;
            }

            v158 = v157 - 1;
            if (v152 + 1 < v327.i32[0])
            {
              v159 = v152 + 1;
            }

            else
            {
              v159 = v327.i32[0];
            }

            LODWORD(v330[0]) = v159;
            if (v158 <= v159)
            {
              v325.i32[0] = v151;
              v160 = 0;
              if (v153 <= 1)
              {
                v161 = 1;
              }

              else
              {
                v161 = v153;
              }

              v162 = v161 - 1;
              if (v153 + 1 < v318)
              {
                v163 = v153 + 1;
              }

              else
              {
                v163 = v318;
              }

              v164 = v163 - v161 + 2;
              do
              {
                v165 = v164;
                v166 = v162;
                if (v162 <= v163)
                {
                  do
                  {
                    v336.i32[2] = 0;
                    v336.i64[0] = 0;
                    v340 = *v10;
                    v341 = v10[1].i64[0];
                    v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v158, v166, &v336, 0);
                    if (v102)
                    {
                      v167 = vsubq_f32(v337, v336);
                      v155 = vmulq_f32(v167, v167);
                      *v155.i64 = sqrtf(v155.f32[2] + vaddv_f32(*v155.f32));
                      if (*v155.i64 <= 0.0431372549)
                      {
                        ++v160;
                      }
                    }

                    ++v166;
                    --v165;
                  }

                  while (v165);
                }

                _ZF = v158++ == LODWORD(v330[0]);
              }

              while (!_ZF);
              v103 = v328.i32[0];
              v105 = v324;
              v128 = v319;
              v38 = v323;
              if (v160 >= 6)
              {
                v155.i32[0] = LODWORD(v323->_borderNoiseScale);
                *v330 = v155;
                v168.f32[0] = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
                v314 = v168;
                *&v169 = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
                v313 = v169;
                v170 = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
                v171 = v314;
                v171.i32[1] = v313;
                v171.f32[2] = v170;
                v172 = v322;
                v317[v322] = vaddq_f32(v337, vmulq_n_f32(v171, *v330));
                LODWORD(v322) = v172 + 1;
              }

              v151 = v325.i32[0];
            }

            else
            {
              v38 = v323;
              v128 = v319;
            }
          }

          else
          {
            v38 = v323;
          }

          ++v151;
          v156 = v38->_maxNumberOfClusteringSamples;
        }

        while (v151 < v156 / 4);
        if (v156 >= 4)
        {
          v285 = 0;
          do
          {
            v286 = ISSegmentationMathUtils_rand_open(&v339, v326, v38->_borderSamplingWidth + v326);
            v287 = ISSegmentationMathUtils_rand_open(&v339, v103, v128);
            v337.i32[2] = 0;
            v337.i64[0] = 0;
            v340 = *v10;
            v341 = v10[1].i64[0];
            v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v286, v287, &v337, 0);
            if (v102 && (v288 = ISSegmentationMathUtils_luma(v337), v102 = rand_r(&v339), vcvts_n_f32_s32(v102, 0x1FuLL) <= ((v288 * -0.47619) + 1.0)) && (v286 <= 1 ? (v290 = 1) : (v290 = v286), (v291 = v290 - 1, v286 + 1 < v327.i32[0]) ? (v292 = v286 + 1) : (v292 = v327.i32[0]), LODWORD(v330[0]) = v292, v291 <= v292))
            {
              v329.i32[0] = v285;
              v293 = 0;
              if (v287 <= 1)
              {
                v294 = 1;
              }

              else
              {
                v294 = v287;
              }

              v295 = v294 - 1;
              if (v287 + 1 < v318)
              {
                v296 = v287 + 1;
              }

              else
              {
                v296 = v318;
              }

              v297 = v296 - v294 + 2;
              do
              {
                v298 = v297;
                v299 = v295;
                if (v295 <= v296)
                {
                  do
                  {
                    v336.i32[2] = 0;
                    v336.i64[0] = 0;
                    v340 = *v10;
                    v341 = v10[1].i64[0];
                    v102 = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v340, v291, v299, &v336, 0);
                    if (v102)
                    {
                      v300 = vsubq_f32(v337, v336);
                      v289 = vmulq_f32(v300, v300);
                      *v289.i64 = sqrtf(v289.f32[2] + vaddv_f32(*v289.f32));
                      if (*v289.i64 <= 0.0431372549)
                      {
                        ++v293;
                      }
                    }

                    ++v299;
                    --v298;
                  }

                  while (v298);
                }

                _ZF = v291++ == LODWORD(v330[0]);
              }

              while (!_ZF);
              v103 = v328.i32[0];
              v128 = v319;
              v38 = v323;
              if (v293 >= 6)
              {
                v289.i32[0] = LODWORD(v323->_borderNoiseScale);
                *v330 = v289;
                v301.f32[0] = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
                v325 = v301;
                *&v302 = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
                v324 = v302;
                v303 = ISSegmentationMathUtils_sampleNormalDistribution(&v339);
                v304 = v325;
                v304.i32[1] = v324;
                v304.f32[2] = v303;
                v305 = v322;
                v317[v322] = vaddq_f32(v337, vmulq_n_f32(v304, *v330));
                LODWORD(v322) = v305 + 1;
              }

              v285 = v329.i32[0];
            }

            else
            {
              v128 = v319;
            }

            ++v285;
          }

          while (v285 < v38->_maxNumberOfClusteringSamples / 4);
        }
      }
    }
  }

  numberOfClusters = v38->_numberOfClusters;
  v174 = MEMORY[0x1EEE9AC00](v102);
  v176 = &v312[-16 * v175];
  v177 = MEMORY[0x1EEE9AC00](v174);
  v179 = &v312[-16 * v178];
  v180 = MEMORY[0x1EEE9AC00](v177);
  v182 = &v312[-16 * v181];
  MEMORY[0x1EEE9AC00](v180);
  v184 = &v312[-((v183 + 15) & 0x7FFFFFFF0)];
  v185 = v322;
  v187 = malloc_type_malloc(4 * v186 * v322, 0x100004052888210uLL);
  v188 = v38->_numberOfClusters;
  numberOfClusteringSteps = v38->_numberOfClusteringSteps;
  v190 = v185;
  v191 = v317;
  v325.i64[0] = v179;
  *&v319 = v182;
  ISSegmentationMathUtils_gmm(v190, v188, numberOfClusteringSteps, v317, v176, v179, v182, v184, v187);
  free(v191);
  free(v187);
  v193 = v38->_numberOfClusters;
  if (v193 <= 1)
  {
    *&v313 = 0;
  }

  else
  {
    v194 = 0;
    v195 = *v184;
    for (i = 1; i != v193; ++i)
    {
      if (v184[i] > v195)
      {
        v195 = v184[i];
        v194 = i;
      }
    }

    *&v313 = v194;
  }

  v197 = MEMORY[0x1EEE9AC00](v192);
  v322 = &v312[-v198];
  v199 = MEMORY[0x1EEE9AC00](v197);
  *&v324 = v200;
  v314.i64[0] = &v312[-((v200 + 15) & 0x7FFFFFFF0)];
  v201 = MEMORY[0x1EEE9AC00](v199);
  v318 = &v312[-16 * v193];
  MEMORY[0x1EEE9AC00](v201);
  v317 = &v312[-16 * v202];
  clusterGroupingDistanceThreshold = v38->_clusterGroupingDistanceThreshold;
  if (v193 >= 1)
  {
    v204 = 0;
    v205 = v325.i64[0] + 32;
    v206 = v322;
    do
    {
      v207 = 0;
      v208 = v325.i64[0] + 48 * v204;
      v209 = *(v208 + 32);
      v329 = *(v208 + 16);
      *v330 = v209;
      v210 = *v208;
      v327 = v176[v204];
      v328 = v210;
      v211 = v176;
      v212 = v205;
      do
      {
        *&v206[4 * v207] = ISSegmentationMathUtils_bhattacharyyaDistance(v327, v328, v329, *v330, v211[v207], v212[-2], v212[-1], *v212);
        ++v207;
        v212 += 3;
      }

      while (v193 != v207);
      ++v204;
      v206 += v324;
      v176 = v211;
    }

    while (v204 != v193);
  }

  v327.i64[0] = objc_opt_new();
  v213 = objc_opt_new();
  v214 = objc_opt_new();
  if (v193 >= 1)
  {
    v215 = 0;
    v216 = v176[v313];
    __asm { FMOV            V0.4S, #-1.0 }

    v218 = vaddq_f32(v216, _Q0);
    v219 = vmulq_f32(v218, v218);
    v220 = sqrtf(v219.f32[2] + vaddv_f32(*v219.f32)) * 0.19;
    *v330 = v216;
    v221 = vmulq_f32(v216, v216);
    v222 = sqrtf(v221.f32[2] + vaddv_f32(*v221.f32)) * 0.19;
    __asm { FMOV            V0.4S, #1.0 }

    v325 = _Q0;
    do
    {
      v329 = v176[v215];
      *v224.i64 = ISSegmentationMathUtils_clampedProject(v329, *v330, v325);
      v328 = v224;
      *v225.i64 = ISSegmentationMathUtils_clampedProject(v329, *v330, 0);
      v226 = vsubq_f32(v329, v328);
      v227 = vmulq_f32(v226, v226);
      _NF = sqrtf(v227.f32[2] + vaddv_f32(*v227.f32)) < 0.0196078431;
      v228 = vsubq_f32(*v330, v328);
      v229 = vmulq_f32(v228, v228);
      v230 = sqrtf(v229.f32[2] + vaddv_f32(*v229.f32));
      v231 = !_NF || v220 <= v230;
      if (!v231 || ((v232 = vsubq_f32(v329, v225), v233 = vmulq_f32(v232, v232), v234 = vsubq_f32(*v330, v225), v225 = vmulq_f32(v234, v234), *v225.i64 = sqrtf(v225.f32[2] + vaddv_f32(*v225.f32)), sqrtf(v233.f32[2] + vaddv_f32(*v233.f32)) < 0.0196078431) ? (v235 = v222 <= *v225.i64) : (v235 = 1), !v235))
      {
        v236 = [MEMORY[0x1E696AD98] numberWithInt:{v215, *v225.i64}];
        [v213 addObject:v236];

        v237 = [MEMORY[0x1E696AD98] numberWithInt:v215];
        [v214 addObject:v237];
      }

      ++v215;
    }

    while (v193 != v215);
  }

  v329.i64[0] = v176;
  v238 = [v214 count];
  v330[0] = v214;
  if (v238)
  {
    do
    {
      v239 = [v214 lastObject];
      v240 = [v239 intValue];

      [v214 removeLastObject];
      v241 = [MEMORY[0x1E696AD98] numberWithInt:v240];
      [v327.i64[0] addObject:v241];

      if (v193 >= 1)
      {
        v242 = 0;
        v243 = &v322[4 * v240 * v193];
        do
        {
          v244 = [MEMORY[0x1E696AD98] numberWithInt:v242];
          v245 = [v213 containsObject:v244];

          if ((v245 & 1) == 0 && *&v243[4 * v242] <= clusterGroupingDistanceThreshold)
          {
            v246 = [MEMORY[0x1E696AD98] numberWithInt:v242];
            [v213 addObject:v246];

            v247 = [MEMORY[0x1E696AD98] numberWithInt:v242];
            [v330[0] addObject:v247];
          }

          ++v242;
        }

        while (v193 != v242);
      }

      v214 = v330[0];
    }

    while ([v330[0] count]);
  }

  v248 = v327.i64[0];
  v249 = [v327.i64[0] count];
  v250 = v314.i64[0];
  if (v249)
  {
    v251 = 0;
    do
    {
      v252 = [v248 objectAtIndexedSubscript:v251];
      v250[v251] = [v252 intValue];

      ++v251;
    }

    while ([v248 count] > v251);
  }

  v253 = [v248 count];

  v254 = v321;
  v255 = v326;
  v256 = v329.i64[0];
  v257 = v318;
  v258 = v319;
  v259 = v317;
  if (v253 >= 1)
  {
    v260 = v253 & 0x7FFFFFFF;
    v261 = v318;
    v262 = v317;
    do
    {
      v263 = *v250++;
      *v261++ = *(v256 + 16 * v263);
      v264 = (v258 + 48 * v263);
      v265 = v264[1];
      *v262 = *v264;
      v262[1] = v265;
      v262[2] = v264[2];
      v262 += 3;
      --v260;
    }

    while (v260);
  }

  v266 = v323;
  BOOLeanThreshold_low = LOBYTE(v323->_BOOLeanThreshold);
  v340 = *v10;
  v341 = v10[1].i64[0];
  v337 = *v9;
  v338 = v9[1].i64[0];
  ISAccelerateIconSegmentationComputeMask(v315, v253, v257, v259, BOOLeanThreshold_low, &v340, &v337);
  v268 = 0;
  v269 = 0;
  v270 = 0;
  v271 = v266->_borderSamplingWidth;
  v272 = v320;
  do
  {
    v273 = v255;
    if (v271 >= 1)
    {
      do
      {
        v340 = *v9;
        v341 = v9[1].i64[0];
        if (v266->_BOOLeanThreshold >= ISSegmentationMask_readMaskValue_xy(&v340, v268, v273))
        {
          ++v269;
        }

        else
        {
          ++v270;
        }

        ++v273;
        v271 = v266->_borderSamplingWidth;
      }

      while (v273 < v271 + v255);
    }

    ++v268;
  }

  while (v268 != v272);
  if (v271 >= 1)
  {
    v274 = v272 - v255;
    v275 = v274 - v271;
    do
    {
      v276 = 0;
      do
      {
        v340 = *v9;
        v341 = v9[1].i64[0];
        if (v266->_BOOLeanThreshold >= ISSegmentationMask_readMaskValue_xy(&v340, v275, v276))
        {
          ++v269;
        }

        else
        {
          ++v270;
        }

        ++v276;
      }

      while (v254 != v276);
      ++v275;
    }

    while (v275 < v274);
  }

  v277 = 0;
  v278 = v254 - v326;
  do
  {
    v279 = v266->_borderSamplingWidth;
    if (v279 >= 1)
    {
      v280 = v278 - v279;
      do
      {
        v340 = *v9;
        v341 = v9[1].i64[0];
        if (v266->_BOOLeanThreshold >= ISSegmentationMask_readMaskValue_xy(&v340, v277, v280))
        {
          ++v269;
        }

        else
        {
          ++v270;
        }

        ++v280;
      }

      while (v280 < v278);
    }

    ++v277;
  }

  while (v277 != v272);
  if (v266->_borderSamplingWidth >= 1)
  {
    v281 = v326;
    v282 = v326;
    do
    {
      v283 = 0;
      do
      {
        v340 = *v9;
        v341 = v9[1].i64[0];
        if (v266->_BOOLeanThreshold >= ISSegmentationMask_readMaskValue_xy(&v340, v282, v283))
        {
          ++v269;
        }

        else
        {
          ++v270;
        }

        ++v283;
      }

      while (v254 != v283);
      ++v282;
    }

    while (v282 < v266->_borderSamplingWidth + v281);
  }

  result = v270 <= v269;
LABEL_241:
  v284 = *MEMORY[0x1E69E9840];
  return result;
}

@end