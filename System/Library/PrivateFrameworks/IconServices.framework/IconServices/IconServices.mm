id _ISDefaultLog()
{
  if (_ISDefaultLog_onceToken != -1)
  {
    _ISDefaultLog_cold_1();
  }

  v1 = _ISDefaultLog_log;

  return v1;
}

ISAliasedTypeIcon *_aliasedIcon(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  if (v4 && (gotLoadHelper_x21__OBJC_CLASS___AFSystemAssistantExperienceStatusManager(v6), v7 = *(v2 + 608), objc_opt_class()) && [*(v2 + 608) isSAEEnabled] && !objc_msgSend(v4, "compare:", @"com.apple.siri"))
  {
    v8 = [[ISAliasedTypeIcon alloc] initWithType:@"com.apple.application-icon.siri-intelligence" moniker:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id _ISPrepareISIconSignpostLog()
{
  if (_ISPrepareISIconSignpostLog_onceToken != -1)
  {
    _ISPrepareISIconSignpostLog_cold_1();
  }

  v1 = _ISPrepareISIconSignpostLog_log;

  return v1;
}

uint64_t NodeStructGetDataSize(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 4);
    if (v1 >= 0x24)
    {
      return v1 - 36;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id _ISTraceLog()
{
  if (_ISTraceLog_onceToken != -1)
  {
    _ISTraceLog_cold_1();
  }

  v1 = _ISTraceLog_log;

  return v1;
}

double ISSegmentationMathUtils_chi2cdf3(float a1)
{
  v1 = (a1 * 200.0);
  if ((v1 & 0x80000000) != 0)
  {
    return 0.0;
  }

  LODWORD(result) = 1.0;
  if (v1 <= 0xF9F)
  {
    LODWORD(result) = ISSegmentationMathUtils_chi2cdf3_values[v1];
  }

  return result;
}

float32x4_t ISSegmentationSamples_readOpaqueSample_i(uint64_t a1, int a2, float32x4_t *a3, uint8x8_t a4)
{
  v4 = *(a1 + 8);
  if (v4 >= 1)
  {
    a2 += a2 / *a1 * v4;
  }

  a4.i32[0] = *(*(a1 + 16) + 4 * a2);
  result = vmovl_u8(a4);
  v7 = result.i8[6] == -1 || *(a1 + 12) == 5;
  if (a3)
  {
    if (v7)
    {
      v8 = result.u8[4];
      *result.f32 = vcvt_f32_u32(vand_s8(*&vmovl_u16(*result.f32), 0xFF000000FFLL));
      result.f32[2] = v8;
      result = vdivq_f32(result, vdupq_n_s32(0x437F0000u));
      *a3 = result;
    }
  }

  return result;
}

uint64_t ISSegmentationMask_writeMaskValue_i(uint64_t result, int a2, char a3)
{
  v3 = *(result + 8);
  if (v3 >= 1)
  {
    a2 += a2 / *result * v3;
  }

  v4 = *(result + 16);
  v5 = (v4 + a2);
  v6 = v4 + 4 * a2 + 3;
  if (*(result + 12))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  *v7 = a3;
  return result;
}

float ISSegmentationMathUtils_squaredMahalanobisDistance_inversedCovariance(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vsubq_f32(a1, a2);
  v6 = vmulq_f32(v5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, v5.f32[0]), a4, *v5.f32, 1), a5, v5, 2));
  return fmaxf(v6.f32[2] + vaddv_f32(*v6.f32), 0.0);
}

uint64_t ISSegmentationMask_readMaskValue_xy(uint64_t a1, int a2, int a3)
{
  v3 = a2 + *a1 * a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= 1)
  {
    v3 += v3 / *a1 * v4;
  }

  v6 = v5 + 4 * v3 + 3;
  v7 = (v5 + v3);
  if (*(a1 + 12))
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t ISSegmentationMask_readMaskValue_i(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    a2 += a2 / *a1 * v2;
  }

  v3 = *(a1 + 16);
  v4 = v3 + 4 * a2 + 3;
  v5 = (v3 + a2);
  if (*(a1 + 12))
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return *v6;
}

float ISSegmentationMathUtils_sampleNormalDistribution(unsigned int *a1)
{
  do
  {
    v2 = rand_r(a1);
    v3 = (v2 + v2) / 2147483650.0 + -1.0;
    v4 = rand_r(a1);
    v5 = (v4 + v4) / 2147483650.0 + -1.0;
    v6 = v5 * v5;
    v7 = v6 + (v3 * v3);
  }

  while (v7 == 0.0 || v7 >= 1.0);
  return sqrtf((logf(v6 + (v3 * v3)) * -2.0) / v7) * v3;
}

float32x4_t ISSegmentationSamples_readOpaqueSample_xy(uint64_t a1, int a2, int a3, float32x4_t *a4, uint8x8_t a5)
{
  v5 = a2 + *a1 * a3;
  v6 = *(a1 + 8);
  if (v6 >= 1)
  {
    v5 += v5 / *a1 * v6;
  }

  a5.i32[0] = *(*(a1 + 16) + 4 * v5);
  result = vmovl_u8(a5);
  v9 = result.i8[6] == -1 || *(a1 + 12) == 5;
  if (a4)
  {
    if (v9)
    {
      v10 = result.u8[4];
      *result.f32 = vcvt_f32_u32(vand_s8(*&vmovl_u16(*result.f32), 0xFF000000FFLL));
      result.f32[2] = v10;
      result = vdivq_f32(result, vdupq_n_s32(0x437F0000u));
      *a4 = result;
    }
  }

  return result;
}

int8x8_t ISSegmentationSamples_readOpaqueUcharSample_xy(uint64_t a1, int a2, int a3, _DWORD *a4, uint8x8_t a5)
{
  v5 = a2 + *a1 * a3;
  v6 = *(a1 + 8);
  if (v6 >= 1)
  {
    v5 += v5 / *a1 * v6;
  }

  a5.i32[0] = *(*(a1 + 16) + 4 * v5);
  result = vmovl_u8(a5).u64[0];
  v9 = result.i8[6] == -1 || *(a1 + 12) == 5;
  if (a4)
  {
    if (v9)
    {
      result = vuzp1_s8(result, result);
      *a4 = result.i32[0];
    }
  }

  return result;
}

void ISSegmentationMathUtils_gmm(int a1, int a2, int a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, float *a8, float *a9)
{
  v154[0] = 10;
  v130 = a2;
  if (a2 >= 1)
  {
    v14 = 1.0 / a2;
    v15 = a8;
    v16 = a7 + 32;
    v17 = a5;
    v18 = a6 + 16;
    v19 = a2;
    do
    {
      v20.f32[0] = rand_r(v154);
      v151 = v20;
      v148 = rand_r(v154);
      v21 = rand_r(v154);
      v22 = v151;
      v22.f32[1] = v148;
      v22.f32[2] = v21;
      v23.i64[0] = 0x3000000030000000;
      v23.i64[1] = 0x3000000030000000;
      *v17++ = vmulq_f32(v22, v23);
      *(v18 - 8) = 0;
      *(v18 - 16) = 1065353216;
      *(v18 + 8) = 0;
      *v18 = 0x3F80000000000000;
      *(v18 + 24) = 1065353216;
      *(v18 + 16) = 0;
      *(v16 - 32) = 1065353216;
      *(v16 - 24) = 0;
      *(v16 - 16) = 0x3F80000000000000;
      *(v16 - 8) = 0;
      *v16 = 0;
      *(v16 + 8) = 1065353216;
      *v15++ = v14;
      v16 += 48;
      v18 += 48;
      --v19;
    }

    while (v19);
  }

  v25 = a7;
  v24 = a8;
  v26 = v130;
  if (a3 >= 1)
  {
    v123 = 0;
    v131 = 4 * a1;
    v27 = 4 * a1;
    v28 = 0uLL;
    do
    {
      v124 = v11;
      v125 = v10;
      v126 = v9;
      if (a2 >= 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = a9;
        do
        {
          v32 = a5[v30];
          v33 = a6 + 48 * v30;
          v34 = *(v33 + 16);
          v35 = *(v33 + 32);
          v36 = (v25 + 48 * v30);
          v37 = *v36;
          v38 = v36[1];
          v39 = v36[2];
          v144 = v24[v30];
          v40 = vmulq_f32(*v33, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL))), vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL)));
          v142 = 1.0 / sqrtf(fmaxf(v40.f32[2] + vaddv_f32(*v40.f32), 1.0e-20) * 0.25801);
          v146 = *v36;
          v149 = v39;
          v152 = v38;
          v140 = v32;
          if (a1 < 4)
          {
            v47 = 0;
          }

          else
          {
            v41 = &a9[v29];
            v136 = vdupq_lane_s32(*v32.i8, 1);
            v138 = vdupq_lane_s32(*v32.i8, 0);
            v42 = a1 + 4;
            v134 = vdupq_laneq_s32(v32, 2);
            v43 = a4;
            do
            {
              v157 = vld4q_f32(v43);
              v43 += 16;
              v44 = vsubq_f32(v157.val[0], v138);
              v45 = vsubq_f32(v157.val[1], v136);
              v157.val[0] = vsubq_f32(v157.val[2], v134);
              v157.val[1].i64[0] = 0xBF000000BF000000;
              v157.val[1].i64[1] = 0xBF000000BF000000;
              *v46.i64 = MEMORY[0x1AC55BA90](vmulq_f32(vmaxnmq_f32(vaddq_f32(vmulq_f32(v157.val[0], vaddq_f32(vmulq_laneq_f32(v157.val[0], v149, 2), vaddq_f32(vmulq_n_f32(v44, v39.f32[0]), vmulq_lane_f32(v45, *v39.f32, 1)))), vaddq_f32(vmulq_f32(v44, vaddq_f32(vmulq_laneq_f32(v157.val[0], v37, 2), vaddq_f32(vmulq_n_f32(v44, v37.f32[0]), vmulq_lane_f32(v45, *v37.f32, 1)))), vmulq_f32(v45, vaddq_f32(vmulq_laneq_f32(v157.val[0], v152, 2), vaddq_f32(vmulq_n_f32(v44, v38.f32[0]), vmulq_lane_f32(v45, *v38.f32, 1)))))), 0), v157.val[1]));
              v39 = v149;
              v38 = v152;
              v37 = v146;
              *v41++ = vmulq_n_f32(vmulq_n_f32(v46, v142), v144);
              v42 -= 4;
            }

            while (v42 > 7);
            v47 = ((a1 - 4) & 0xFFFFFFFC) + 4;
          }

          v48 = v140;
          if (v47 < a1)
          {
            v49 = &v31[v47];
            v50 = &a4[v47];
            v51 = a1 - v47;
            do
            {
              v52 = *v50++;
              v53 = vsubq_f32(v52, v48);
              v54 = vmulq_f32(v53, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v53.f32[0]), v38, *v53.f32, 1), v39, v53, 2));
              v55 = expf(fmaxf(v54.f32[2] + vaddv_f32(*v54.f32), 0.0) * -0.5);
              v39 = v149;
              v38 = v152;
              v37 = v146;
              v48 = v140;
              *v49++ = v144 * (v142 * v55);
              --v51;
            }

            while (v51);
          }

          ++v30;
          v29 += a1;
          v26 = v130;
          v31 = (v31 + v131);
          v25 = a7;
          v24 = a8;
          v28 = 0uLL;
        }

        while (v30 != v130);
      }

      v56 = a9 + 2;
      v10 = v125;
      v9 = v126;
      v11 = v124;
      if (a1 >= 1)
      {
        v57 = 0;
        v58 = a9;
        do
        {
          if (a2 >= 1)
          {
            v59 = 0.0;
            v60 = v26;
            v61 = v58;
            do
            {
              v59 = v59 + *v61;
              v61 = (v61 + v27);
              --v60;
            }

            while (v60);
            v62 = v59 == 0.0 || a2 < 1;
            v63 = v26;
            v64 = v58;
            if (!v62)
            {
              do
              {
                *v64 = *v64 / v59;
                v64 = (v64 + v27);
                --v63;
              }

              while (v63);
            }
          }

          ++v57;
          ++v58;
        }

        while (v57 != a1);
      }

      if (a2 < 1)
      {
        break;
      }

      v65 = 0;
      v66 = 0;
      v135 = 1;
      v67 = a9;
      do
      {
        v68 = &v56[v65];
        if (a1 < 4)
        {
          v69 = 0;
          v71 = 0uLL;
          v70 = 0;
        }

        else
        {
          v69 = 0;
          v70 = 0;
          v71 = 0uLL;
          v72 = &v56[v65];
          v73 = a4 + 2;
          v74 = a1 + 4;
          do
          {
            v75 = v73[-2];
            v76 = v73[-1];
            v77 = *v73;
            v78 = v73[1];
            v73 += 4;
            v79 = *(v72 - 2);
            v80 = *(v72 - 1);
            v81 = *v72;
            v82 = v72[1];
            v72 += 4;
            *v70.i32 = (((*v70.i32 + v79) + v80) + v81) + v82;
            v74 -= 4;
            v71 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v71, vmulq_n_f32(v75, v79)), vmulq_n_f32(v76, v80)), vmulq_n_f32(v77, v81)), vmulq_n_f32(v78, v82));
            v69 += 4;
          }

          while (v74 > 7);
        }

        if (v69 < a1)
        {
          v83 = &v67[v69];
          v84 = a1 - v69;
          v85 = &a4[v69];
          do
          {
            v86 = *v85++;
            v87 = v86;
            v86.i32[0] = *v83++;
            *v70.i32 = *v70.i32 + v86.f32[0];
            v71 = vmlaq_n_f32(v71, v87, v86.f32[0]);
            --v84;
          }

          while (v84);
        }

        if (*v70.i32 == 0.0)
        {
          a5[v66] = v28;
          v88 = a6 + 48 * v66;
          *(v88 + 8) = 0;
          *v88 = 1065353216;
          *(v88 + 24) = 0;
          *(v88 + 16) = 0x3F80000000000000;
          *(v88 + 40) = 1065353216;
          *(v88 + 32) = v28.i64[0];
          v89 = v25 + 48 * v66;
          *v89 = 1065353216;
          *(v89 + 8) = 0;
          *(v89 + 16) = 0x3F80000000000000;
          *(v89 + 24) = 0;
          *(v89 + 32) = v28.i64[0];
          v90 = 0.0;
          *(v89 + 40) = 1065353216;
        }

        else
        {
          v91 = vdivq_f32(v71, vdupq_lane_s32(v70, 0));
          if (a1 < 4)
          {
            v92 = 0;
            v97 = 0uLL;
            v96 = 0uLL;
            v93 = 0uLL;
          }

          else
          {
            v92 = 0;
            v93 = 0uLL;
            v94 = a4 + 2;
            v95 = a1 + 4;
            v96 = 0uLL;
            v97 = 0uLL;
            do
            {
              v98 = v94[-2];
              v99 = v94[-1];
              v100 = *v94;
              v101 = v94[1];
              v94 += 4;
              v102 = vsubq_f32(v98, v91);
              v103 = vsubq_f32(v99, v91);
              v104 = vsubq_f32(v100, v91);
              v105 = vsubq_f32(v101, v91);
              v106 = vmulq_n_f32(v102, *(v68 - 2));
              v107 = vmulq_n_f32(v103, *(v68 - 1));
              v108 = *v68;
              v109 = v68[1];
              v68 += 4;
              v110 = vmulq_n_f32(v104, v108);
              v111 = vmulq_n_f32(v105, v109);
              v93 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v93, vmulq_n_f32(v102, v106.f32[0])), vmulq_n_f32(v103, v107.f32[0])), vmulq_n_f32(v104, v110.f32[0])), vmulq_n_f32(v105, v111.f32[0]));
              v96 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v96, vmulq_lane_f32(v102, *v106.f32, 1)), vmulq_lane_f32(v103, *v107.f32, 1)), vmulq_lane_f32(v104, *v110.f32, 1)), vmulq_lane_f32(v105, *v111.f32, 1));
              v95 -= 4;
              v97 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v97, vmulq_laneq_f32(v102, v106, 2)), vmulq_laneq_f32(v103, v107, 2)), vmulq_laneq_f32(v104, v110, 2)), vmulq_laneq_f32(v105, v111, 2));
              v92 += 4;
            }

            while (v95 > 7);
          }

          if (v92 < a1)
          {
            do
            {
              v112 = vsubq_f32(a4[v92], v91);
              v113 = vmulq_n_f32(v112, v67[v92]);
              v93 = vaddq_f32(v93, vmulq_n_f32(v112, v113.f32[0]));
              v96 = vaddq_f32(v96, vmulq_lane_f32(v112, *v113.f32, 1));
              v97 = vaddq_f32(v97, vmulq_laneq_f32(v112, v113, 2));
              ++v92;
            }

            while (a1 != v92);
          }

          v114 = vmulq_n_f32(v97, 1.0 / *v70.i32);
          v115 = xmmword_1A7825100;
          v115.i32[3] = v11.i32[3];
          v116 = xmmword_1A7825110;
          v116.i32[3] = v10.i32[3];
          v117 = xmmword_1A7825120;
          v117.i32[3] = v9.i32[3];
          v150 = v115;
          v155.columns[0] = vaddq_f32(v115, vmulq_n_f32(v93, 1.0 / *v70.i32));
          v141 = v155.columns[0];
          v147 = v116;
          v155.columns[1] = vaddq_f32(v116, vmulq_n_f32(v96, 1.0 / *v70.i32));
          v139 = v155.columns[1];
          v145 = v117;
          v155.columns[2] = vaddq_f32(v117, v114);
          v137 = v155.columns[2];
          v143 = *v70.i32;
          v153 = v91;
          v156 = __invert_f3(v155);
          v90 = v143 / a1;
          v118 = vceqq_f32(v153, a5[v66]);
          v118.i32[3] = v118.i32[2];
          if ((vminvq_u32(v118) & 0x80000000) == 0 || (v119 = vandq_s8(vandq_s8(vceqq_f32(*(a6 + 48 * v66 + 16), v139), vceqq_f32(*(a6 + 48 * v66), v141)), vceqq_f32(*(a6 + 48 * v66 + 32), v137)), v119.i32[3] = v119.i32[2], (vminvq_u32(v119) & 0x80000000) == 0) || v24[v66] != v90)
          {
            v135 = 0;
          }

          a5[v66] = v153;
          v120 = (a6 + 48 * v66);
          *v120 = v141;
          v120[1] = v139;
          v120[2] = v137;
          v121 = v25 + 48 * v66;
          *(v121 + 8) = v156.columns[0].i32[2];
          *v121 = v156.columns[0].i64[0];
          *(v121 + 12) = 0;
          *(v121 + 24) = v156.columns[1].i32[2];
          *(v121 + 16) = v156.columns[1].i64[0];
          *(v121 + 40) = v156.columns[2].i32[2];
          *(v121 + 28) = 0;
          *(v121 + 32) = v156.columns[2].i64[0];
          v9 = v145;
          v10 = v147;
          v11 = v150;
          *(v121 + 44) = 0;
          v26 = v130;
          v56 = a9 + 2;
          v28 = 0uLL;
        }

        v24[v66++] = v90;
        v65 += a1;
        v67 = (v67 + v131);
      }

      while (v66 != v26);
      ++v123;
    }

    while (!(v135 & 1 | (v123 == a3)));
  }
}

float ISSegmentationMathUtils_bhattacharyyaDistance(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vaddq_f32(a2, a6);
  v9 = vaddq_f32(a3, a7);
  v10 = vaddq_f32(a4, a8);
  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v27.columns[0] = vmulq_f32(v8, v11);
  v20 = v27.columns[0];
  v27.columns[1] = vmulq_f32(v9, v11);
  v27.columns[2] = vmulq_f32(v10, v11);
  v17 = v27.columns[1];
  v18 = v27.columns[2];
  v27.columns[0].i32[3] = 0;
  v27.columns[1].i32[3] = 0;
  v27.columns[2].i32[3] = 0;
  v28 = __invert_f3(v27);
  v12 = vsubq_f32(a1, a5);
  v28.columns[0] = vmulq_f32(v12, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28.columns[0], v12.f32[0]), v28.columns[1], *v12.f32, 1), v28.columns[2], v12, 2));
  v13 = fmaxf(v28.columns[0].f32[2] + vaddv_f32(*v28.columns[0].f32), 0.0);
  v28.columns[0] = vmulq_f32(v20, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL))), vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL)));
  v28.columns[1] = vmulq_f32(a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a4, a4, 0xCuLL), a4, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL))), vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vextq_s8(vextq_s8(a3, a3, 0xCuLL), a3, 8uLL)));
  v28.columns[2] = vmulq_f32(a6, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a8, a8, 0xCuLL), a8, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL))), vextq_s8(vuzp1q_s32(a8, a8), a8, 0xCuLL), vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL)));
  v14 = logf((v28.columns[0].f32[2] + vaddv_f32(*v28.columns[0].f32)) / sqrtf((v28.columns[1].f32[2] + vaddv_f32(*v28.columns[1].f32)) * (v28.columns[2].f32[2] + vaddv_f32(*v28.columns[2].f32)))) * 0.5 + v13 * 0.125;
  return fmaxf(v14, 0.0);
}

double ISSegmentationMathUtils_clampedProject(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vsubq_f32(a3, a2);
  v4 = vmulq_f32(vsubq_f32(a1, a2), v3);
  v5 = vmulq_f32(v3, v3);
  *v4.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v4, v4, 8uLL), *&vextq_s8(v5, v5, 8uLL)), vadd_f32(vzip1_s32(*v4.i8, *v5.i8), vzip2_s32(*v4.i8, *v5.i8)));
  *&result = vmlaq_n_f32(a2, v3, fminf(fmaxf(vdiv_f32(*v4.i8, vdup_lane_s32(*v4.i8, 1)).f32[0], 0.0), 1.0)).u64[0];
  return result;
}

void sub_1A77BC648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

ISFallbackIconFill *_attemptLightSegmentationWithCroppedCGImage(CGImage *a1, uint64_t a2)
{
  v3 = [[ISIconSegmentation alloc] initWithIdiom:a2];
  v12 = 0;
  v4 = [(ISIconSegmentation *)v3 createForegroundImageWithCGImage:a1 feedback:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [[ISSpecularClassification alloc] initWithSpecularImage:v4 useAlphaOnly:1];
    v7 = [(ISSpecularClassification *)v6 classifySpecular];
    v8 = [ISFallbackIconFill alloc];
    if (v7)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(ISFallbackIconFill *)v8 initWithImage:a1 foregroundAndLightingEffectsImage:v9 feedback:v5];
    CGImageRelease(a1);
    CGImageRelease(v4);
  }

  else
  {
    v10 = [[ISFallbackIconFill alloc] initWithImage:a1 foregroundAndLightingEffectsImage:0 feedback:0];
    CGImageRelease(a1);
  }

  return v10;
}

id _ISRetryRequest(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v2;
    v5 = v3;
    v2 = (*(a1 + 16))(a1);

    if (!_ISErrorIsXPCConnectionInterrupted(v2))
    {
      break;
    }

    v3 = 0;
  }

  while ((v5 & 1) != 0);

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A77BFDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A77C01EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A77C0CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x5Cu);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return [v0 size];
}

uint64_t OUTLINED_FUNCTION_6@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 88) = a2;

  return [a1 size];
}

uint64_t OUTLINED_FUNCTION_7()
{

  return [v0 platformStyle];
}

uint64_t OUTLINED_FUNCTION_8()
{

  return [v0 appearanceVariant];
}

uint64_t OUTLINED_FUNCTION_9()
{

  return [v0 appearance];
}

uint64_t OUTLINED_FUNCTION_10()
{

  return [v0 variantOptions];
}

uint64_t OUTLINED_FUNCTION_11()
{

  return [v0 scale];
}

uint64_t _ISGenerateInProcess(void *a1)
{
  v1 = a1;
  v2 = _ISURLCacheLog();
  v3 = os_signpost_id_make_with_pointer(v2, v1);

  if (v3)
  {
    v4 = _ISURLCacheLog();
    v5 = os_signpost_enabled(v4);

    if (v5)
    {
      v6 = _ISURLCacheLog();
      v7 = v6;
      if (v3 != -1 && os_signpost_enabled(v6))
      {
        *v14 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v7, OS_SIGNPOST_EVENT, v3, "fileSystemRepresentation", "dealing with backup placeholder", v14, 2u);
      }
    }
  }

  v8 = [v1 fileSystemRepresentation];
  v9 = v8;
  if (v8)
  {
    v10 = &v8[8 * (strncmp(v8, "/private", 8uLL) == 0)];
    v11 = -1;
    v12 = off_1E77C6650;
    while (strncmp(v10, *(v12 - 2), *(v12 - 1)) || !strstr(v10, *v12))
    {
      ++v11;
      v12 += 3;
      if (v11 == 4)
      {
        v9 = 0;
        goto LABEL_14;
      }
    }

    v9 = 1;
  }

LABEL_14:

  return v9;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

__CFString *NSStringFromISIconTreatment(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E77C6700[a1];
  }
}

void sub_1A77CAADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ISAccelerateIconSegmentationComputeFlagForMoreConfidence(uint64_t result, int a2, uint64_t a3)
{
  v5 = result;
  v30 = *MEMORY[0x1E69E9840];
  if (result <= 2)
  {
    if (a2 >= 1)
    {
      for (i = 0; i != a2; ++i)
      {
        if (v5 >= 1)
        {
          v27 = 0;
          do
          {
            result = updateFlag(v5, a2, v27++, i, 1, 8, a3);
          }

          while (v5 != v27);
        }
      }
    }

    v28 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = MEMORY[0x1EEE9AC00]();
    v6 = 0;
    memset(v29, 0, 24);
    v7 = vdupq_n_s64(a2);
    v8 = xmmword_1A7825090;
    v9 = vdupq_n_s64(2uLL);
    v10 = vdup_n_s32(a2);
    v11.i64[0] = -1;
    v11.i64[1] = -1;
    v12 = vdup_n_s32(v5);
    v13 = vdupq_n_s64(3uLL);
    do
    {
      v14 = vaddq_s64(v8, v11);
      *v14.i8 = vmul_s32(vbsl_s8(vmovn_s64(vcgtq_s64(v14, v7)), v10, vmax_s32(vmovn_s64(v14), 0)), v12);
      *&v15 = v14.i32[0];
      *(&v15 + 1) = v14.i32[1];
      v16 = v15;
      if (vmovn_s64(vcgtq_u64(v13, v8)).u8[0])
      {
        *&v29[v6] = a3 + v16;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v8)).i32[1])
      {
        *(&v29[v6] + 1) = a3 + *(&v16 + 1);
      }

      v8 = vaddq_s64(v8, v9);
      ++v6;
    }

    while (v6 != 2);
    if (a2 >= 1)
    {
      v17 = 0;
      v18 = *&v29[1];
      do
      {
        updateFlag(v5, a2, 0, v17, 1, 4, a3);
        v19 = v29[0];
        v20 = 1;
        do
        {
          if ((*(*(&v19 + 1) + v20) & 2) != 0)
          {
            if ((*(*(&v19 + 1) + v20 - 1) & 2) != 0)
            {
              v22 = 2;
            }

            else
            {
              v22 = 1;
            }

            v21 = v20 + 1;
            if (v22 + ((*(*(&v19 + 1) + v20 + 1) >> 1) & 1) + ((*(v19 + v20 - 1) >> 1) & 1) + ((*(v19 + v20) >> 1) & 1) + ((*(v19 + v20 + 1) >> 1) & 1) + ((*(v18 + v20 - 1) >> 1) & 1) + ((*(v18 + v20) >> 1) & 1) + ((*(v18 + v20 + 1) >> 1) & 1) == 9)
            {
              *(*(&v19 + 1) + v20) |= 4u;
            }
          }

          else
          {
            v21 = v20 + 1;
          }

          v20 = v21;
        }

        while (v21 != v5 - 1);
        result = updateFlag(v5, a2, v5 - 1, v17, 1, 4, a3);
        v29[0] = *(v29 + 8);
        v23 = v17 + 2;
        v24 = v17 + 1;
        if (v17 + 2 >= a2 - 1)
        {
          v23 = a2 - 1;
        }

        v18 = a3 + v23 * v5;
        *&v29[1] = v18;
        ++v17;
      }

      while (v24 != a2);
    }

    v25 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t ISAccelerateIconSegmentationComputeFlagForExtraConfidence(uint64_t result, int a2, uint64_t a3)
{
  v5 = result;
  v34 = *MEMORY[0x1E69E9840];
  if (result <= 4)
  {
    if (a2 >= 1)
    {
      for (i = 0; i != a2; ++i)
      {
        if (v5 >= 1)
        {
          v31 = 0;
          do
          {
            result = updateFlag(v5, a2, v31++, i, 2, 8, a3);
          }

          while (v5 != v31);
        }
      }
    }

    v32 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = MEMORY[0x1EEE9AC00]();
    v6 = 0;
    memset(v33, 0, 40);
    v7 = vdupq_n_s64(a2);
    v8 = vdup_n_s32(a2);
    v9 = xmmword_1A7825090;
    v10 = vdup_n_s32(v5);
    v11 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
    v12 = vdupq_n_s64(2uLL);
    v13 = vdupq_n_s64(5uLL);
    do
    {
      v14 = vaddq_s64(v9, v11);
      *v14.i8 = vmul_s32(vbsl_s8(vmovn_s64(vcgtq_s64(v14, v7)), v8, vmax_s32(vmovn_s64(v14), 0)), v10);
      *&v15 = v14.i32[0];
      *(&v15 + 1) = v14.i32[1];
      v16 = v15;
      if (vmovn_s64(vcgtq_u64(v13, v9)).u8[0])
      {
        *&v33[v6] = a3 + v16;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v9)).i32[1])
      {
        *(&v33[v6] + 1) = a3 + *(&v16 + 1);
      }

      v9 = vaddq_s64(v9, v12);
      ++v6;
    }

    while (v6 != 3);
    if (a2 >= 1)
    {
      v17 = 0;
      v18 = *&v33[2];
      do
      {
        updateFlag(v5, a2, 0, v17, 2, 8, a3);
        updateFlag(v5, a2, 1, v17, 2, 8, a3);
        v19 = v33[1];
        v20 = 2;
        v21 = v33[0];
        do
        {
          v22 = (v19 + v20);
          if ((*(v19 + v20) & 2) != 0)
          {
            if ((*(v22 - 2) & 2) != 0)
            {
              v24 = 2;
            }

            else
            {
              v24 = 1;
            }

            v25 = v24 + ((*(v19 + v20 - 1) >> 1) & 1);
            v23 = v20 + 1;
            if (v25 + ((*(v19 + v20 + 1) >> 1) & 1) + ((v22[2] >> 1) & 1) + ((*(*(&v21 + 1) + v20 - 1) >> 1) & 1) + ((*(*(&v21 + 1) + v20) >> 1) & 1) + ((*(*(&v21 + 1) + v20 + 1) >> 1) & 1) + ((*(*(&v19 + 1) + v20 - 1) >> 1) & 1) + ((*(*(&v19 + 1) + v20) >> 1) & 1) + ((*(*(&v19 + 1) + v20 + 1) >> 1) & 1) + ((*(v21 + v20) >> 1) & 1) + ((*(v18 + v20) >> 1) & 1) == 13)
            {
              *v22 = *(v19 + v20) | 8;
            }
          }

          else
          {
            v23 = v20 + 1;
          }

          v20 = v23;
        }

        while (v23 != v5 - 2);
        v26 = -2;
        do
        {
          result = updateFlag(v5, a2, v5 + v26, v17, 2, 8, a3);
        }

        while (!__CFADD__(v26++, 1));
        v33[0] = *(v33 + 8);
        v33[1] = *(&v33[1] + 8);
        v28 = v17 + 3;
        if (v17 + 3 >= a2 - 1)
        {
          v28 = a2 - 1;
        }

        v18 = a3 + v28 * v5;
        *&v33[2] = v18;
        ++v17;
      }

      while (v17 != a2);
    }

    v29 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t ISAccelerateIconSegmentationComputeAdditionalGradientFlag(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint8x8_t a6, double a7, double a8, double a9, double a10, double a11, float32x4_t a12, uint8x8_t a13)
{
  v13 = a2 - 1;
  if (a2 >= 1)
  {
    v14 = 0;
    v15 = vdupq_n_s32(0x4B400000u);
    v16 = vdupq_n_s32(0xCB400000);
    v17 = vdupq_n_s32(0x437F0000u);
    v18 = a2;
    v19 = vdupq_n_s32(0xC37F0000);
    v20 = 4 * result;
    v21.i64[0] = 0xFF000000FFLL;
    v21.i64[1] = 0xFF000000FFLL;
    do
    {
      if (v14 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v14;
      }

      if (result <= 0)
      {
        ++v14;
      }

      else
      {
        v23 = 0;
        v24 = v22 - 1;
        v25 = v14 * result;
        v26 = v22 - 1;
        if (++v14 >= v13)
        {
          v27 = v13;
        }

        else
        {
          v27 = v14;
        }

        do
        {
          if (v23 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = v23;
          }

          v29 = v23 + v25;
          if (*(a4 + v23 + v25))
          {
            ++v23;
            if (v26 <= v27)
            {
              v31 = 0;
              a12.i32[0] = *(a3 + 4 * v29);
              v32 = vmovl_u8(*a12.f32);
              v32.i16[3] = 0;
              a12 = vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v32.i8), v21), v15), v16), v17);
              if (v23 >= result - 1)
              {
                v33 = result - 1;
              }

              else
              {
                v33 = v23;
              }

              v34 = v28 - 1;
              v35 = a3 - 4 + v20 * v24 + 4 * v28;
              v36 = v28 - 2;
              v37 = v24;
              do
              {
                v38 = v36;
                v39 = v35;
                if (v34 <= v33)
                {
                  do
                  {
                    v40 = *v39++;
                    a13.i32[0] = v40;
                    v41 = vmovl_u8(a13);
                    v41.i16[3] = 0;
                    v42 = vaddq_f32(a12, vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v41.i8), v21), v15), v16), v19));
                    v43 = vmulq_f32(v42, v42);
                    *&a13 = sqrtf(vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL))));
                    if (*&a13 > *&a6)
                    {
                      ++v31;
                    }

                    ++v38;
                  }

                  while (v38 < v33);
                }

                v35 += v20;
              }

              while (v37++ < v27);
              v30 = v31 > 0;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
            ++v23;
          }

          *(a5 + v29) = v30;
        }

        while (v23 != result);
      }
    }

    while (v14 != v18);
  }

  return result;
}

uint64_t ISAccelerateIconSegmentationSamples_readSample_i(uint64_t result, int a2, float32x4_t *a3, _DWORD *a4, uint8x8_t a5)
{
  v6 = *(result + 8);
  v5 = *(result + 12);
  if (v5 == 5 && v6 == 0)
  {
    if (a3)
    {
      a5.i32[0] = *(*(result + 16) + 4 * a2);
      v12 = vmovl_u8(a5).u64[0];
      v13 = vmovl_u16(v12);
      *v13.f32 = vcvt_f32_u32(vand_s8(*v13.f32, 0xFF000000FFLL));
      v13.f32[2] = v12.u16[2];
      *a3 = vdivq_f32(v13, vdupq_n_s32(0x437F0000u));
    }

    v10.i32[0] = 1.0;
  }

  else
  {
    if (v6 >= 1)
    {
      a2 += a2 / *result * v6;
    }

    a5.i32[0] = *(*(result + 16) + 4 * a2);
    v8 = vmovl_u8(a5).u64[0];
    v9 = vmovl_u16(v8);
    *v9.f32 = vcvt_f32_u32(vand_s8(*v9.f32, 0xFF000000FFLL));
    v9.f32[2] = v8.u16[2];
    v10 = vdupq_n_s32(0x437F0000u);
    v11 = vdivq_f32(v9, v10);
    if (v5 == 3)
    {
      v10.f32[0] = v8.u16[3] / 255.0;
    }

    else
    {
      v10.i32[0] = 1.0;
      if (v5 == 1)
      {
        v10.f32[0] = v8.u16[3] / 255.0;
        if (v10.f32[0] > 0.0)
        {
          v11 = vdivq_f32(v11, vdupq_lane_s32(*v10.f32, 0));
        }
      }
    }

    if (a3)
    {
      *a3 = v11;
    }
  }

  if (a4)
  {
    *a4 = v10.i32[0];
  }

  return result;
}

uint64_t ISAccelerateIconSegmentationSamples_readAlmostOpaqueSample_i(uint64_t a1, int a2, float32x4_t *a3, _DWORD *a4, uint8x8_t a5)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (v5 == 5 && v6 == 0)
  {
    if (a3)
    {
      a5.i32[0] = *(*(a1 + 16) + 4 * a2);
      v12 = vmovl_u8(a5).u64[0];
      v13 = vmovl_u16(v12);
      *v13.f32 = vcvt_f32_u32(vand_s8(*v13.f32, 0xFF000000FFLL));
      v13.f32[2] = v12.u16[2];
      *a3 = vdivq_f32(v13, vdupq_n_s32(0x437F0000u));
    }

    v10.i32[0] = 1.0;
    goto LABEL_19;
  }

  if (v6 >= 1)
  {
    a2 += a2 / *a1 * v6;
  }

  a5.i32[0] = *(*(a1 + 16) + 4 * a2);
  v8 = vmovl_u8(a5).u64[0];
  v9 = v8.u8[6];
  if (v8.u16[3] < 0xFDu)
  {
    return 0;
  }

  v10 = vmovl_u16(v8);
  *v10.f32 = vcvt_f32_u32(vand_s8(*v10.f32, 0xFF000000FFLL));
  v10.f32[2] = v8.u16[2];
  v11 = vdivq_f32(v10, vdupq_n_s32(0x437F0000u));
  if (v5 != 3)
  {
    v10.i32[0] = 1.0;
    if (v5 == 1)
    {
      v10.f32[0] = v9 / 255.0;
      v11 = vdivq_f32(v11, vdupq_lane_s32(*v10.f32, 0));
    }

    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10.f32[0] = v9 / 255.0;
  if (a3)
  {
LABEL_18:
    *a3 = v11;
  }

LABEL_19:
  if (a4)
  {
    *a4 = v10.i32[0];
  }

  return 1;
}

uint64_t ISAccelerateIconSegmentationSamples_readAlmostOpaqueSample_i_NoOpacity(uint64_t a1, int a2, float32x4_t *a3, uint8x8_t a4)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (v4 == 5 && v5 == 0)
  {
    if (!a3)
    {
      return 1;
    }

    a4.i32[0] = *(*(a1 + 16) + 4 * a2);
    v11 = vmovl_u8(a4).u64[0];
    v12 = vmovl_u16(v11);
    *v12.f32 = vcvt_f32_u32(vand_s8(*v12.f32, 0xFF000000FFLL));
    v12.f32[2] = v11.u16[2];
    v10 = vdivq_f32(v12, vdupq_n_s32(0x437F0000u));
LABEL_14:
    *a3 = v10;
    return 1;
  }

  if (v5 >= 1)
  {
    a2 += a2 / *a1 * v5;
  }

  a4.i32[0] = *(*(a1 + 16) + 4 * a2);
  v7 = vmovl_u8(a4).u64[0];
  v8 = v7.u8[6];
  if (v7.u16[3] >= 0xFDu)
  {
    v9 = vmovl_u16(v7);
    *v9.f32 = vcvt_f32_u32(vand_s8(*v9.f32, 0xFF000000FFLL));
    v9.f32[2] = v7.u16[2];
    v10 = vdivq_f32(v9, vdupq_n_s32(0x437F0000u));
    if (v4 == 1)
    {
      v9.f32[0] = v8 / 255.0;
      v10 = vdivq_f32(v10, vdupq_lane_s32(*v9.f32, 0));
    }

    if (!a3)
    {
      return 1;
    }

    goto LABEL_14;
  }

  return 0;
}

BOOL ISAccelerateIconSegmentationSamples_readAlmostOpaqueSample_i_AlphaLast_NoOpacity_Padding0(uint64_t a1, int a2, float32x4_t *a3, uint8x8_t a4)
{
  a4.i32[0] = *(*(a1 + 16) + 4 * a2);
  v4 = vmovl_u8(a4).u64[0];
  if (v4.u16[3] >= 0xFDu)
  {
    v5 = vmovl_u16(v4);
    *v5.f32 = vcvt_f32_u32(vand_s8(*v5.f32, 0xFF000000FFLL));
    v5.f32[2] = v4.u16[2];
    *a3 = vdivq_f32(v5, vdupq_n_s32(0x437F0000u));
  }

  return v4.u8[6] > 0xFCu;
}

uint64_t ISAccelerateIconSegmentationFlagForConnectedBackground(uint64_t result, int a2, uint64_t a3)
{
  v5 = result;
  if (result <= 0)
  {
    v10 = a2 - 1;
  }

  else
  {
    v6 = 0;
    v7 = a3;
    do
    {
      v8 = a2;
      v9 = v7;
      v10 = a2 - 1;
      if (a2 >= 1)
      {
        do
        {
          *v9 &= ~0x80u;
          v9 += result;
          --v8;
        }

        while (v8);
      }

      ++v6;
      ++v7;
    }

    while (v6 != result);
    v11 = v10 * result;
    v12 = a3 + v10 * result;
    v13 = result;
    v14 = a3;
    do
    {
      if ((*v14 & 1) == 0)
      {
        *v14 |= 0x80u;
      }

      if ((v14[v11] & 1) == 0)
      {
        v14[v11] |= 0x80u;
      }

      ++v14;
      --v13;
    }

    while (v13);
    v15 = result - 1;
    do
    {
      if ((*(a3 + v15) & 1) == 0)
      {
        *(a3 + v15) |= 0x80u;
      }

      if ((*(v12 + v15) & 1) == 0)
      {
        *(v12 + v15) |= 0x80u;
      }

      v16 = v15-- + 1;
    }

    while (v16 > 1);
  }

  if (a2 >= 1)
  {
    v17 = result - 1;
    v18 = a2;
    v19 = a3;
    do
    {
      if ((*v19 & 1) == 0)
      {
        *v19 |= 0x80u;
      }

      if ((v19[v17] & 1) == 0)
      {
        v19[v17] |= 0x80u;
      }

      v19 += result;
      --v18;
    }

    while (v18);
    v20 = a2 + 1;
    v21 = (a3 + (a2 - 1) * result);
    do
    {
      if ((*v21 & 1) == 0)
      {
        *v21 |= 0x80u;
      }

      if ((v21[v17] & 1) == 0)
      {
        v21[v17] |= 0x80u;
      }

      --v20;
      v21 -= result;
    }

    while (v20 > 1);
    if (result >= 3 && a2 >= 3)
    {
      v22 = a2 - 2;
      v23 = result - 2;
      v24 = 1;
      do
      {
        v25 = 0;
        do
        {
          ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(v5, a2, v25, v24, a3);
          ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(v5, a2, v25++, v22, a3);
        }

        while (v5 != v25);
        v26 = v5;
        do
        {
          ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(v5, a2, --v26, v24, a3);
          ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(v5, a2, v26, v22, a3);
        }

        while (v26 > 0);
        v27 = 0;
        do
        {
          ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(v5, a2, v24, v27, a3);
          ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(v5, a2, v23, v27++, a3);
        }

        while (a2 != v27);
        v28 = v10;
        do
        {
          ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(v5, a2, v24, v28, a3);
          result = ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(v5, a2, v23, v28, a3);
          v29 = v28-- <= 0;
        }

        while (!v29);
        if (v24 >= --v23)
        {
          break;
        }

        v29 = v24++ < --v22;
      }

      while (v29);
    }
  }

  return result;
}

uint64_t ISAccelerateIconSegmentationFlagForConnectedBackgroundHelper(uint64_t result, int a2, int a3, int a4, uint64_t a5)
{
  v5 = a4 * result;
  v6 = a4 * result;
  v7 = v6 + a3;
  v8 = *(a5 + v7);
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  if (a3 + 1 < result - 1)
  {
    v10 = a3 + 1;
  }

  else
  {
    v10 = result - 1;
  }

  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  if (a4 + 1 < a2 - 1)
  {
    v12 = a4 + 1;
  }

  else
  {
    v12 = a2 - 1;
  }

  if ((*(a5 + v7) & 1) == 0)
  {
    v13 = v9 - 1;
    v14 = (v11 - 1) * result;
    result = v12 * result;
    if ((*(a5 + v13 + v14) | *(a5 + v14 + a3) | *(a5 + v14 + v10) | *(a5 + v13 + v5) | *(a5 + v6 + v10) | *(a5 + v13 + result) | *(a5 + result + a3) | *(a5 + result + v10) | v8) < 0)
    {
      *(a5 + v7) = v8 | 0x80;
    }
  }

  return result;
}

uint64_t ISAccelerateIconComputeIconSegmentationFlag(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (a2 - 1);
  if (a2 >= 1)
  {
    v16 = 0;
    v17 = result - 1;
    v149 = a4;
    v150 = result;
    v18 = a2;
    v19 = result;
    v147 = a2;
    v148 = result;
    do
    {
      if (result <= 0)
      {
        v42 = v16 + 1;
      }

      else
      {
        v20 = 0;
        if (v16 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v16;
        }

        if (v16 + 1 >= v15)
        {
          v22 = v15;
        }

        else
        {
          v22 = v16 + 1;
        }

        v23 = (v21 - 1) * result;
        v24 = v22 * result;
        if (v16)
        {
          v25 = (v16 < v15) + 1;
        }

        else
        {
          v25 = v15 > 0;
        }

        v26 = v16 * v150;
        v27 = ((v21 - 1) * result);
        v28 = v24;
        do
        {
          v29 = v20 + 1;
          if (v20 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v20;
          }

          v31 = v30 - 1;
          if (v29 >= v17)
          {
            v32 = v17;
          }

          else
          {
            v32 = v20 + 1;
          }

          if (v20)
          {
            v33 = v16 != 0;
          }

          else
          {
            v33 = 0;
          }

          if (v20)
          {
            v34 = v16 < v15;
          }

          else
          {
            v34 = 0;
          }

          if (v20)
          {
            v35 = v25 + 1;
          }

          else
          {
            v35 = v25;
          }

          v36 = *(a5 + 16);
          v37 = v20 < v17 && v16 != 0;
          v38 = *(v36 + v32 + v23) & v37;
          v39 = v33 + v37;
          if (v20 < v17)
          {
            ++v35;
          }

          v40 = v35 + v39;
          v41 = v20 < v17 && v16 < v15;
          *(a6 + v26) = *(v36 + v26) & 1 | (v40 + v34 + v41 == (((v16 != 0) & *(v36 + v27++)) + v38 + (*(v36 + v31 + v23) & v33) + ((v20 != 0) & *(v36 + v16 * v150 + v31)) + ((v20 < v17) & *(v36 + v16 * v150 + v32)) + (*(v36 + v31 + v24) & v34) + ((v16 < v15) & *(v36 + v28++)) + (*(v36 + v24 + v32) & v41)));
          ++v26;
          ++v20;
        }

        while (v19 != v29);
        result = v148;
        a4 = v149;
        v42 = v16 + 1;
        v18 = v147;
      }

      v16 = v42;
    }

    while (v42 != v18);
    v43 = 0;
    do
    {
      if (result <= 0)
      {
        v45 = v43 + 1;
      }

      else
      {
        v44 = 0;
        v45 = v43 + 1;
        if (v43 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = v43;
        }

        v47 = v46 - 1;
        if (v45 >= v15)
        {
          v48 = v15;
        }

        else
        {
          v48 = v43 + 1;
        }

        if (v43)
        {
          v49 = 2;
        }

        else
        {
          v49 = 1;
        }

        v50 = (v47 * result);
        v51 = v48 * result;
        if (v43 >= v15)
        {
          v52 = v49;
        }

        else
        {
          v52 = v49 + 1;
        }

        v53 = v51;
        v54 = a6 + v43 * v150;
        v55 = a6 + v51;
        do
        {
          v56 = v44 + 1;
          if (v44 <= 1)
          {
            v57 = 1;
          }

          else
          {
            v57 = v44;
          }

          v58 = v57 - 1;
          if (v56 >= v17)
          {
            v59 = v17;
          }

          else
          {
            v59 = v44 + 1;
          }

          if (v44)
          {
            v60 = v43 != 0;
          }

          else
          {
            v60 = 0;
          }

          if (v44)
          {
            v61 = v43 < v15;
          }

          else
          {
            v61 = 0;
          }

          if (v44)
          {
            v62 = v52 + 1;
          }

          else
          {
            v62 = v52;
          }

          v63 = *(a6 + v58 + v50) & v60;
          v64 = v44 < v17 && v43 != 0;
          v65 = *(a6 + v59 + v50) & v64;
          v66 = v60 + v64;
          v67 = *(a6 + v58 + v53) & v61;
          if (v44 < v17)
          {
            ++v62;
          }

          v68 = v62 + v66;
          v69 = v44 < v17 && v43 < v15;
          v70 = v68 + v61 + v69;
          v71 = *(a6 + v53 + v59) & v69;
          v72 = *(v54 + v58);
          v73 = *(v54 + v44);
          if (v70 == (((v43 != 0) & *(a6 + v50 + v44)) + v65 + v63 + ((v44 != 0) & v72) + (v73 & 1) + ((v44 < v17) & *(v54 + v59)) + v67 + ((v43 < v15) & *(v55 + v44)) + v71) || (((v43 != 0) & *(a6 + v50 + v44)) + v65 + v63 + ((v44 != 0) & v72) + (v73 & 1) + ((v44 < v17) & *(v54 + v59)) + v67 + ((v43 < v15) & *(v55 + v44)) + v71) == 0)
          {
            v75 = 2;
          }

          else
          {
            v75 = 0;
          }

          *(v54 + v44++) = v75 | v73;
        }

        while (v19 != v56);
        result = v148;
        a4 = v149;
        v18 = v147;
      }

      v43 = v45;
    }

    while (v45 != v18);
    v76 = 0;
    v77.i64[0] = 0xFF000000FFLL;
    v77.i64[1] = 0xFF000000FFLL;
    v78 = vdupq_n_s32(0x4B400000u);
    v79 = vdupq_n_s32(0xCB400000);
    v80 = vdupq_n_s32(0x437F0000u);
    v81 = vdupq_n_s64(0x3FA4141414141414uLL);
    do
    {
      if (result <= 0)
      {
        v84 = v76 + 1;
      }

      else
      {
        v82 = 0;
        v83 = v76 * v150;
        v84 = v76 + 1;
        if (v76 <= 1)
        {
          v85 = 1;
        }

        else
        {
          v85 = v76;
        }

        v86 = v85 - 1;
        if (v84 >= v15)
        {
          v87 = v15;
        }

        else
        {
          v87 = v76 + 1;
        }

        v88 = (v86 * result);
        v89 = v87 * result;
        do
        {
          v90 = v82 + v83;
          v91 = *(a6 + v82 + v83);
          if (v91)
          {
            v93 = v82 + 1;
            if (v82 <= 1)
            {
              v94 = 1;
            }

            else
            {
              v94 = v82;
            }

            v95 = v94 - 1;
            if (v93 >= v17)
            {
              v96 = v17;
            }

            else
            {
              v96 = v82 + 1;
            }

            v97 = v82 < v17;
            v98 = v82 < v17 && v76 != 0;
            v99 = v82 < v17 && v76 < v15;
            v100 = *(a4 + 16);
            v6.i32[0] = *(v100 + 4 * (v95 + v88));
            v101 = vmovl_u8(v6);
            v101.i16[3] = 0;
            v102 = v100 + 4 * v82;
            v7.i32[0] = *(v102 + 4 * v88);
            v103 = vmovl_u8(v7);
            v103.i16[3] = 0;
            v8.i32[0] = *(v100 + 4 * (v96 + v88));
            v104 = vmovl_u8(v8);
            v104.i16[3] = 0;
            v105 = v100 + 4 * v83;
            v9.i32[0] = *(v105 + 4 * v95);
            v106 = vmovl_u8(v9);
            v106.i16[3] = 0;
            v107 = v82 == 0;
            v10.i32[0] = *(v100 + 4 * v90);
            v108 = vmovl_u8(v10);
            v108.i16[3] = 0;
            v109 = v82 != 0;
            LODWORD(v11) = *(v105 + 4 * v96);
            v110 = vmovl_u8(*&v11);
            v110.i16[3] = 0;
            v12.i32[0] = *(v100 + 4 * (v95 + v89));
            v111 = vmovl_u8(v12);
            v111.i16[3] = 0;
            LODWORD(v13) = *(v102 + 4 * v89);
            v112 = vmovl_u8(*&v13);
            v112.i16[3] = 0;
            v14.i32[0] = *(v100 + 4 * (v96 + v89));
            v113 = vmovl_u8(v14);
            v113.i16[3] = 0;
            v114 = vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v101.i8), v77), v78), v79), v80);
            v115 = vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v108.i8), v77), v78), v79), v80);
            v116 = vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v110.i8), v77), v78), v79), v80);
            v117 = vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v111.i8), v77), v78), v79), v80);
            v118 = vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v112.i8), v77), v78), v79), v80);
            v119 = vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v113.i8), v77), v78), v79), v80);
            v120 = vsubq_f32(v115, v114);
            v121 = vmulq_f32(v120, v120);
            v14 = vadd_f32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
            v122 = vsubq_f32(v115, vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v103.i8), v77), v78), v79), v80));
            v123 = vmulq_f32(v122, v122);
            v124 = vadd_f32(*v123.i8, *&vextq_s8(v123, v123, 8uLL));
            v125 = vsubq_f32(v115, vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v104.i8), v77), v78), v79), v80));
            v126 = vmulq_f32(v125, v125);
            v127 = vsubq_f32(v115, vdivq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(*v106.i8), v77), v78), v79), v80));
            v128 = vmulq_f32(v127, v127);
            v9 = vadd_f32(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
            v129 = vsubq_f32(v115, v116);
            v130 = vmulq_f32(v129, v129);
            v131 = vadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
            v132 = vsubq_f32(v115, v117);
            v133 = vmulq_f32(v132, v132);
            v134 = vsubq_f32(v115, v118);
            v135 = vmulq_f32(v134, v134);
            v12 = vadd_f32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
            v136 = vsubq_f32(v115, v119);
            v137 = vmulq_f32(v136, v136);
            v13 = sqrtf(vaddv_f32(v14));
            v11 = sqrtf(vaddv_f32(vadd_f32(*v133.i8, *&vextq_s8(v133, v133, 8uLL))));
            v138 = sqrtf(vaddv_f32(vadd_f32(*v126.i8, *&vextq_s8(v126, v126, 8uLL))));
            v139 = sqrtf(vaddv_f32(vadd_f32(*v137.i8, *&vextq_s8(v137, v137, 8uLL))));
            v140 = !v107 && v76 != 0;
            v141 = !v107 && v76 < v15;
            if (v13 > 0.0392156863)
            {
              v140 = 0;
            }

            if (v138 > 0.0392156863)
            {
              v98 = 0;
            }

            *v142.f32 = vzip1_s32(v124, v9);
            v142.i64[1] = __PAIR64__(v12.u32[0], v131.u32[0]);
            v10 = vdup_lane_s32(v131, 1);
            *v143.f32 = vzip2_s32(v124, v9);
            v143.i64[1] = __PAIR64__(v12.u32[1], v10.u32[0]);
            v144 = vsqrtq_f32(vaddq_f32(v142, v143));
            v8.i16[0] = v76 != 0;
            v8.i16[1] = v109;
            v8.i16[2] = v97;
            v8.i16[3] = v76 < v15;
            v7 = vand_s8(vcltz_s16(vshl_n_s16(vand_s8(v8, vmovn_s32(vuzp1q_s32(vcgeq_f64(v81, vcvtq_f64_f32(*v144.f32)), vcgeq_f64(v81, vcvt_hight_f64_f32(v144))))), 0xFuLL)), 0x8000400020001);
            v145 = vaddv_s16(v7);
            if (v11 > 0.0392156863)
            {
              v141 = 0;
            }

            v146 = v139 <= 0.0392156863 && v99;
            LODWORD(v139) = v145;
            v6 = vcnt_s8(*&v139);
            v6.i16[0] = vaddlv_u8(v6);
            v92 = v91 | (16 * ((v98 + v6.i32[0] + v140 + v141 + v146) > 4));
            v82 = v93;
          }

          else
          {
            v92 = v91 | 0x10;
            ++v82;
          }

          *(a6 + v90) = v92;
        }

        while (v82 != v19);
      }

      v76 = v84;
    }

    while (v84 != v18);
  }

  return result;
}

uint64_t ISAccelerateIconComputeIconSegmentationFlagForShadows(uint64_t result, int a2, uint64_t a3, uint64_t a4, float32x4_t a5)
{
  v6 = (result - 1);
  if (result >= 1)
  {
    v7 = 0;
    v8 = vmulq_f32(a5, a5);
    v9 = v8.f32[2] + vaddv_f32(*v8.f32);
    v10 = result;
    v11 = vdupq_n_s32(0x437F0000u);
    do
    {
      v12 = a2;
      v13 = v7;
      if (a2 >= 1)
      {
        do
        {
          if (*(a4 + v13))
          {
            v5.i32[0] = *(*(a3 + 16) + 4 * v13);
            v14 = vmovl_u8(*v5.f32).u64[0];
            v15 = vmovl_u16(v14);
            *v15.f32 = vcvt_f32_u32(vand_s8(*v15.f32, 0xFF000000FFLL));
            v15.f32[2] = v14.u16[2];
            v5 = vdivq_f32(v15, v11);
            v16 = vmulq_f32(v5, a5);
            v17 = fminf(fmaxf((v16.f32[2] + vaddv_f32(*v16.f32)) / v9, 0.0), 1.0);
            if (v17 >= 0.77)
            {
              v18 = vsubq_f32(v5, vmlaq_n_f32(0, a5, v17));
              v5 = vmulq_f32(v18, v18);
              *v5.i64 = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
              if (*v5.i64 < 0.0117647059)
              {
                *(a4 + v13) |= 0x20u;
              }
            }
          }

          v13 += result;
          --v12;
        }

        while (v12);
      }

      ++v7;
    }

    while (v7 != result);
    v19 = 0;
    v20 = 4 * result;
    v21 = 4;
    v22 = vdupq_n_s32(0x437F0000u);
    result = -4 * result;
    do
    {
      if (a2 >= 1)
      {
        v23 = 0;
        v24 = v21;
        v25 = v19;
        do
        {
          if (v19 && v19 < v6 && v23 && v23 < a2 - 1 && (*(a4 + v25) & 0x20) != 0 && (*(a4 + v25 - 1) & 0x21) != 1 && (*(a4 + v25 + 1) & 0x21) != 1 && (*(a4 - v10 + v25) & 0x21) != 1 && (*(a4 + v10 + v25) & 0x21) != 1)
          {
            v26 = *(a3 + 16);
            v11.i32[0] = *(v26 + v24 - 4);
            v27 = vmovl_u8(*v11.f32).u64[0];
            v28 = vmovl_u16(v27);
            *v28.f32 = vcvt_f32_u32(vand_s8(*v28.f32, 0xFF000000FFLL));
            v28.f32[2] = v27.u16[2];
            v29 = vdivq_f32(v28, v22);
            v28.i32[0] = *(v26 + v24 - 8);
            v28.i64[0] = vmovl_u8(*v28.f32).u64[0];
            v30 = vmovl_u16(*v28.f32);
            *v30.f32 = vcvt_f32_u32(vand_s8(*v30.f32, 0xFF000000FFLL));
            v30.f32[2] = v28.u16[2];
            v31 = vdivq_f32(v30, v22);
            v30.i32[0] = *(v26 + v24);
            v30.i64[0] = vmovl_u8(*v30.f32).u64[0];
            v32 = vmovl_u16(*v30.f32);
            *v32.f32 = vcvt_f32_u32(vand_s8(*v32.f32, 0xFF000000FFLL));
            v32.f32[2] = v30.u16[2];
            v30.i32[0] = *(v26 - 4 * v10 + 4 * v25);
            v33 = vmovl_u8(*v30.f32);
            v34 = vand_s8(*&vmovl_u16(*v33.f32), 0xFF000000FFLL);
            v35 = v33.u16[2];
            *v33.f32 = vcvt_f32_u32(v34);
            v33.f32[2] = v35;
            v34.i32[0] = *(v26 + v20 + 4 * v25);
            v36 = vmovl_u8(v34).u64[0];
            v37 = vmovl_u16(v36);
            *v37.f32 = vcvt_f32_u32(vand_s8(*v37.f32, 0xFF000000FFLL));
            v37.f32[2] = v36.u16[2];
            v38 = vmulq_f32(vsubq_f32(v29, v31), vsubq_f32(vdivq_f32(v32, v22), v29));
            v11 = vmulq_f32(vsubq_f32(v29, vdivq_f32(v33, v22)), vsubq_f32(vdivq_f32(v37, v22), v29));
            if (fmaxf(fminf(fminf(v38.f32[0], v38.f32[2]), v38.f32[1]), fminf(fminf(v11.f32[0], v11.f32[2]), v11.f32[1])) > 0.0)
            {
              *(a4 + v25) |= 0x40u;
            }
          }

          ++v23;
          v25 += v10;
          v24 += v20;
        }

        while (a2 != v23);
      }

      ++v19;
      v21 += 4;
    }

    while (v19 != v10);
  }

  return result;
}

uint64_t ISAccelerateIconClassifySpecularWithDebug(uint64_t result, int a2, int a3, int a4, uint64_t a5)
{
  v5 = (a3 - 1);
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = a2 - 1;
    v8 = a2;
    v9 = result + 3;
    result = 2;
    v10 = a3;
    v87 = a2;
    v92 = a3;
    v93 = (a3 - 1);
    v90 = v7;
    v91 = a2;
    do
    {
      if (a2 <= 0)
      {
        v86 = v6 + 1;
      }

      else
      {
        v11 = 0;
        v12 = v6 * v8;
        v13 = v6 + 2;
        if (v6 <= 2)
        {
          v14 = 2;
        }

        else
        {
          v14 = v6;
        }

        v15 = v14 - 2;
        if (v6 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v6;
        }

        v17 = v16 - 1;
        v89 = v6 + 1;
        if (v6 + 1 >= v5)
        {
          v18 = v5;
        }

        else
        {
          v18 = v6 + 1;
        }

        if (v13 >= v5)
        {
          v19 = v5;
        }

        else
        {
          v19 = v6 + 2;
        }

        if (v6 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        v102 = v6 != 0;
        if (v6)
        {
          ++v20;
        }

        v42 = v6 < v5;
        v21 = v6 < v5;
        if (v42)
        {
          ++v20;
        }

        v103 = v6 + 2;
        v22 = (v9 + 4 * (v15 * a2));
        v100 = v17 * a2;
        v101 = v21;
        v23 = (v9 + 4 * (v17 * a2));
        v24 = (v9 + 4 * v12);
        if (v13 >= v10)
        {
          v25 = v20;
        }

        else
        {
          v25 = v20 + 1;
        }

        v96 = v12 - 2;
        v97 = v25;
        v99 = v18 * a2;
        v26 = (v9 + 4 * v18 * a2);
        v94 = v6;
        v95 = a5 + v12;
        v98 = v9 + 4 * v12;
        v27 = (v9 + 4 * v19 * a2);
        do
        {
          v28 = v11 + 2;
          if (v11 <= 2)
          {
            v29 = 2;
          }

          else
          {
            v29 = v11;
          }

          if (v11 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v11;
          }

          v31 = v30 - 1;
          v32 = v11 + 1;
          if (v11 + 1 >= v7)
          {
            v33 = v7;
          }

          else
          {
            v33 = v11 + 1;
          }

          if (v28 >= v7)
          {
            v34 = v7;
          }

          else
          {
            v34 = v11 + 2;
          }

          if (v11 <= 1)
          {
            v35 = v97;
          }

          else
          {
            v35 = v97 + 1;
          }

          v36 = v8;
          v37 = v101;
          if (v11)
          {
            v38 = v102;
          }

          else
          {
            v38 = 0;
          }

          if (v11)
          {
            v39 = v101;
          }

          else
          {
            v39 = 0;
          }

          if (v11)
          {
            v40 = v35 + 1;
          }

          else
          {
            v40 = v35;
          }

          v41 = *(v9 + 4 * (v31 + v100)) >= a4 && v38;
          v42 = v11 < v7;
          v43 = v11 < v7;
          v44 = *(v9 + 4 * (v96 + v29));
          v45 = *(v98 + 4 * v31);
          v46 = v42 && v102;
          if (v42)
          {
            v47 = v40 + 1;
          }

          else
          {
            v37 = 0;
            v47 = v40;
          }

          v48 = *(v9 + 4 * (v33 + v100)) >= a4 && v46;
          v49 = v44 >= a4 && v11 > 1;
          v50 = v45 >= a4 && v11 != 0;
          v52 = *v22;
          v22 += 4;
          v51 = v52;
          v53 = v94 <= 1 || v51 < a4;
          v55 = *v23;
          v23 += 4;
          v54 = v55;
          if (!v53)
          {
            ++v41;
          }

          v57 = *v24;
          v24 += 4;
          v56 = v57;
          if (v94)
          {
            v58 = v54 < a4;
          }

          else
          {
            v58 = 1;
          }

          if (!v58)
          {
            ++v41;
          }

          v59 = v56 < a4;
          v61 = *v26;
          v26 += 4;
          v60 = v61;
          v62 = v48 + v49;
          if (v59)
          {
            v63 = v54;
          }

          else
          {
            v63 = 0;
          }

          v8 = v36;
          if (!v59)
          {
            v45 = 0;
          }

          v64 = v62 + v50;
          if (v59)
          {
            v65 = *(v98 + 4 * v33);
          }

          else
          {
            v65 = 0;
          }

          v66 = v41 + v64;
          if (v59)
          {
            v67 = v60;
          }

          else
          {
            v67 = 0;
          }

          if (!v59)
          {
            ++v66;
          }

          if (v63 < a4)
          {
            v63 = 0;
          }

          if (v45 < a4)
          {
            v45 = 0;
          }

          if (v65 < a4)
          {
            v65 = 0;
          }

          if (v67 < a4)
          {
            v67 = 0;
          }

          v68 = *(v98 + 4 * v33) >= a4 && v43;
          result = 2;
          v69 = *(v98 + 4 * v34);
          v70 = v47 + v38 + v46;
          v71 = v28 < v36;
          v72 = *(v9 + 4 * (v31 + v99));
          if (v28 < v36)
          {
            ++v70;
          }

          v10 = v92;
          v5 = v93;
          if (v69 < a4)
          {
            v71 = 0;
          }

          v73 = v72 >= a4 && v39;
          v74 = *(v9 + 4 * (v33 + v99)) >= a4 && v37;
          v75 = v94 >= v93 || v60 < a4;
          v76 = v66 + v68 + v71 + v73;
          v77 = v63 | v45;
          v7 = v90;
          if (!v75)
          {
            ++v76;
          }

          v78 = v77 | v65 | v67;
          v80 = *v27;
          v27 += 4;
          v79 = v80;
          v81 = v103 >= v92 || v79 < a4;
          v82 = v70 + v39 + v37;
          v83 = v76 + v74;
          if (!v81)
          {
            ++v83;
          }

          if (v83 == v82 || v83 == 0)
          {
            v85 = 2;
          }

          else
          {
            v85 = 0;
          }

          if (v78)
          {
            ++v85;
          }

          *(v95 + v11++) = v85;
        }

        while (v32 != v91);
        a2 = v87;
        v86 = v89;
      }

      v6 = v86;
    }

    while (v86 != v10);
  }

  return result;
}

uint64_t ISAccelerateIconComputeMask_foregroundSingleColor_backgroundContinuousGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = (a4 != 0) | (2 * (a5 != 0)) | (4 * (a6 != 0)) | (8 * (a7 != 0)) | (16 * (a8 != 0)) | (32 * (a10 != 0));
  v18 = *(a3 + 12) - 1;
  if (v18 > 4)
  {
    v19 = readAlmostOpaqueSample_i_Default;
  }

  else
  {
    v19 = off_1F1A4CC78[v18];
  }

  v20 = computeMask_ucharTintable;
  if (v17 > 7)
  {
    switch(v17)
    {
      case 8:
        v20 = computeMask_ucharForeground;
        goto LABEL_17;
      case 16:
        v20 = computeMask_ucharForegroundOpacity;
        goto LABEL_17;
      case 32:
        v20 = computeMask_ucharDark;
        goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v17 != 1)
  {
    if (v17 == 2)
    {
      v20 = computeMask_ucharTintableOpacity;
      goto LABEL_17;
    }

    if (v17 == 4)
    {
      v20 = computeMask_ucharSolariumTintable;
      goto LABEL_17;
    }

LABEL_14:
    v20 = computeMask_Default;
  }

LABEL_17:
  v20(v19, a1, a2);
  return 1;
}

uint64_t readAlmostOpaqueSample_i_AlphaPremultipliedLast(uint64_t a1, int a2, float32x4_t *a3, _DWORD *a4, double a5)
{
  v5 = *(a1 + 8);
  if (*(a1 + 12) == 5 && v5 == 0)
  {
    if (a3)
    {
      LODWORD(a5) = *(*(a1 + 16) + 4 * a2);
      v9 = vmovl_u8(*&a5).u64[0];
      v10 = vmovl_u16(v9);
      *v10.f32 = vcvt_f32_u32(vand_s8(*v10.f32, 0xFF000000FFLL));
      v10.f32[2] = v9.u16[2];
      *a3 = vdivq_f32(v10, vdupq_n_s32(0x437F0000u));
    }

    LODWORD(a5) = 1.0;
  }

  else
  {
    if (v5 >= 1)
    {
      a2 += a2 / *a1 * v5;
    }

    LODWORD(a5) = *(*(a1 + 16) + 4 * a2);
    v7 = vmovl_u8(*&a5).u64[0];
    if (v7.u16[3] < 0xFDu)
    {
      return 0;
    }

    *&a5 = v7.u8[6] / 255.0;
    if (a3)
    {
      v8 = vmovl_u16(v7);
      *v8.f32 = vcvt_f32_u32(vand_s8(*v8.f32, 0xFF000000FFLL));
      v8.f32[2] = v7.u16[2];
      *a3 = vdivq_f32(vdivq_f32(v8, vdupq_n_s32(0x437F0000u)), vdupq_lane_s32(*&a5, 0));
    }
  }

  if (a4)
  {
    *a4 = LODWORD(a5);
  }

  return 1;
}

uint64_t readAlmostOpaqueSample_i_AlphaLast(uint64_t a1, int a2, float32x4_t *a3, float *a4, uint8x8_t a5)
{
  v5 = *(a1 + 8);
  if (*(a1 + 12) == 5 && v5 == 0)
  {
    if (a3)
    {
      a5.i32[0] = *(*(a1 + 16) + 4 * a2);
      v10 = vmovl_u8(a5).u64[0];
      v11 = vmovl_u16(v10);
      *v11.f32 = vcvt_f32_u32(vand_s8(*v11.f32, 0xFF000000FFLL));
      v11.f32[2] = v10.u16[2];
      *a3 = vdivq_f32(v11, vdupq_n_s32(0x437F0000u));
    }

    v9 = 1.0;
    if (!a4)
    {
      return 1;
    }

    goto LABEL_15;
  }

  if (v5 >= 1)
  {
    a2 += a2 / *a1 * v5;
  }

  a5.i32[0] = *(*(a1 + 16) + 4 * a2);
  v7 = vmovl_u8(a5).u64[0];
  if (v7.u16[3] >= 0xFDu)
  {
    if (a3)
    {
      v8 = vmovl_u16(v7);
      *v8.f32 = vcvt_f32_u32(vand_s8(*v8.f32, 0xFF000000FFLL));
      v8.f32[2] = v7.u16[2];
      *a3 = vdivq_f32(v8, vdupq_n_s32(0x437F0000u));
    }

    if (!a4)
    {
      return 1;
    }

    v9 = v7.u8[6] / 255.0;
LABEL_15:
    *a4 = v9;
    return 1;
  }

  return 0;
}

uint64_t readAlmostOpaqueSample_i_AlphaNoneSkipLast(uint64_t a1, int a2, float32x4_t *a3, _DWORD *a4, uint8x8_t a5)
{
  v5 = *(a1 + 8);
  if (*(a1 + 12) == 5 && v5 == 0)
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    a5.i32[0] = *(*(a1 + 16) + 4 * a2);
    v7 = vmovl_u8(a5).u64[0];
LABEL_12:
    v8 = vmovl_u16(v7);
    *v8.f32 = vcvt_f32_u32(vand_s8(*v8.f32, 0xFF000000FFLL));
    v8.f32[2] = v7.u16[2];
    *a3 = vdivq_f32(v8, vdupq_n_s32(0x437F0000u));
    goto LABEL_13;
  }

  if (v5 >= 1)
  {
    a2 += a2 / *a1 * v5;
  }

  a5.i32[0] = *(*(a1 + 16) + 4 * a2);
  v7 = vmovl_u8(a5).u64[0];
  if (v7.u16[3] < 0xFDu)
  {
    return 0;
  }

  if (a3)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (a4)
  {
    *a4 = 1065353216;
  }

  return 1;
}

uint64_t readAlmostOpaqueSample_i_Default(uint64_t a1, int a2, float32x4_t *a3, _DWORD *a4, uint8x8_t a5)
{
  v5 = *(a1 + 8);
  if (*(a1 + 12) == 5 && v5 == 0)
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    a5.i32[0] = *(*(a1 + 16) + 4 * a2);
    v7 = vmovl_u8(a5).u64[0];
LABEL_12:
    v8 = vmovl_u16(v7);
    *v8.f32 = vcvt_f32_u32(vand_s8(*v8.f32, 0xFF000000FFLL));
    v8.f32[2] = v7.u16[2];
    *a3 = vdivq_f32(v8, vdupq_n_s32(0x437F0000u));
    goto LABEL_13;
  }

  if (v5 >= 1)
  {
    a2 += a2 / *a1 * v5;
  }

  a5.i32[0] = *(*(a1 + 16) + 4 * a2);
  v7 = vmovl_u8(a5).u64[0];
  if (v7.u16[3] < 0xFDu)
  {
    return 0;
  }

  if (a3)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (a4)
  {
    *a4 = 1065353216;
  }

  return 1;
}

uint64_t computeMask_ucharTintable(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, float32x4_t a6, float a7)
{
  v22.i32[2] = 0;
  v22.i64[0] = 0;
  v21 = 0;
  if (a3 >= 1)
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = a3;
    do
    {
      v14 = a2;
      v15 = v11;
      if (a2 >= 1)
      {
        do
        {
          result = v10(a4, v15, &v22, &v21);
          if (result)
          {
            v16 = vsubq_f32(v22, a6);
            v17 = vmulq_f32(v16, v16);
            v18 = ((1.0 - fminf(fmaxf(sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) / a7, 0.0), 1.0)) * 255.0);
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          *(a5 + v15++) = v18;
          --v14;
        }

        while (v14);
      }

      ++v12;
      v11 += a2;
    }

    while (v12 != v13);
  }

  return result;
}

uint64_t computeMask_ucharTintableOpacity(uint64_t result, int a2, int a3, uint64_t a4, float32x4_t a5, float a6, uint64_t a7, uint64_t a8)
{
  v23.i32[2] = 0;
  v23.i64[0] = 0;
  v22 = 0;
  if (a3 >= 1)
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    v14 = a3;
    do
    {
      v15 = a2;
      v16 = v12;
      if (a2 >= 1)
      {
        do
        {
          result = v11(a4, v16, &v23, &v22);
          if (result)
          {
            v17 = vsubq_f32(v23, a5);
            v18 = vmulq_f32(v17, v17);
            v19 = ((1.0 - fminf(fmaxf(sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)) / a6, 0.0), 1.0)) * 255.0);
          }

          else
          {
            LOBYTE(v19) = 0;
          }

          *(a8 + v16++) = v19;
          --v15;
        }

        while (v15);
      }

      ++v13;
      v12 += a2;
    }

    while (v13 != v14);
  }

  return result;
}

uint64_t computeMask_ucharSolariumTintable(uint64_t result, int a2, int a3, uint64_t a4, float32x4_t a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24.i32[2] = 0;
  v24.i64[0] = 0;
  v23 = 0;
  if (a3 >= 1)
  {
    v12 = result;
    v13 = 0;
    v14 = 0;
    v15 = a3;
    do
    {
      v16 = a2;
      v17 = v13;
      if (a2 >= 1)
      {
        do
        {
          result = v12(a4, v17, &v24, &v23);
          if (result)
          {
            v18 = vsubq_f32(v24, a5);
            v19 = vmulq_f32(v18, v18);
            v20 = vdup_n_s16(((1.0 - fminf(fmaxf(sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) / a6, 0.0), 1.0)) * 255.0));
          }

          else
          {
            v20 = 0;
          }

          *(a9 + 4 * v17++) = vuzp1_s8(v20, v20).u32[0];
          --v16;
        }

        while (v16);
      }

      ++v14;
      v13 += a2;
    }

    while (v14 != v15);
  }

  return result;
}

uint64_t computeMask_ucharForeground(uint64_t result, int a2, int a3, uint64_t a4, float32x4_t a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28.i32[2] = 0;
  v28.i64[0] = 0;
  v27 = 0;
  if (a3 >= 1)
  {
    v14 = result;
    v15 = 0;
    v16 = 0;
    v17 = a2;
    v18 = a3;
    v19.i64[0] = vmulq_f32(a5, vdupq_n_s32(0x437F0000u)).u64[0];
    v19.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(255.0, a5, 2)) | 0x437F000000000000;
    v25 = v19;
    do
    {
      v20 = v17;
      v21 = v15;
      if (a2 >= 1)
      {
        do
        {
          result = v14(a4, v21, &v28, &v27);
          if (result)
          {
            v22 = vsubq_f32(v28, a5);
            v23 = vmulq_f32(v22, v22);
            v24 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v25, 1.0 - fminf(fmaxf(sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)) / a6, 0.0), 1.0))));
          }

          else
          {
            v24 = 0;
          }

          *(a10 + 4 * v21++) = vuzp1_s8(v24, v24).u32[0];
          --v20;
        }

        while (v20);
      }

      ++v16;
      v15 += v17;
    }

    while (v16 != v18);
  }

  return result;
}

uint64_t computeMask_ucharForegroundOpacity(uint64_t result, int a2, int a3, uint64_t a4, float32x4_t a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25.i32[2] = 0;
  v25.i64[0] = 0;
  v24 = 0;
  if (a3 >= 1)
  {
    v13 = result;
    v14 = 0;
    v15 = 0;
    v16 = a3;
    do
    {
      v17 = a2;
      v18 = v14;
      if (a2 >= 1)
      {
        do
        {
          result = v13(a4, v18, &v25, &v24);
          if (result)
          {
            v19 = vsubq_f32(v25, a5);
            v20 = vmulq_f32(v19, v19);
            v21 = ((1.0 - fminf(fmaxf(sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)) / a6, 0.0), 1.0)) * 255.0);
          }

          else
          {
            LOBYTE(v21) = 0;
          }

          *(a11 + v18++) = v21;
          --v17;
        }

        while (v17);
      }

      ++v15;
      v14 += a2;
    }

    while (v15 != v16);
  }

  return result;
}

uint64_t computeMask_ucharDark(uint64_t result, int a2, int a3, uint64_t a4, float32x4_t a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float32x4_t *a12, uint64_t a13)
{
  v37.i32[2] = 0;
  v37.i64[0] = 0;
  v36 = 0;
  if (a3 >= 1)
  {
    v15 = result;
    v16 = 0;
    v17 = 0;
    v18 = 1.0 / (a2 - 1);
    v19 = (a3 - 1);
    v31 = a3;
    v20 = vdupq_n_s32(0x437F0000u);
    v34 = v20;
    do
    {
      if (a2 >= 1)
      {
        v21 = 0;
        *v20.i32 = v17 / v19;
        v33 = vdupq_lane_s32(*v20.i8, 0);
        v22 = v16;
        do
        {
          result = v15(a4, v22, &v37, &v36);
          if (result)
          {
            v23 = a5;
            if (a12)
            {
              v24 = v18 * v21;
              v25 = vmlaq_n_f32(*a12, vsubq_f32(a12[1], *a12), v24);
              v23 = vmlaq_f32(v25, vsubq_f32(vmlaq_n_f32(a12[2], vsubq_f32(a12[3], a12[2]), v24), v25), v33);
            }

            v26 = vsubq_f32(v37, a5);
            v27 = vmulq_f32(v26, v26);
            *&v28 = vmuls_lane_f32(255.0, v23, 2);
            v29.i64[0] = vmulq_f32(v23, v34).u64[0];
            v29.i64[1] = v28 | 0x437F000000000000;
            v30 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v29, 1.0 - fminf(fmaxf(sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) / a6, 0.0), 1.0))));
          }

          else
          {
            v30 = 0;
          }

          *v20.i8 = vuzp1_s8(v30, v30);
          *(a13 + 4 * v22) = v20.i32[0];
          ++v21;
          ++v22;
        }

        while (a2 != v21);
      }

      ++v17;
      v16 += a2;
    }

    while (v17 != v31);
  }

  return result;
}

uint64_t computeMask_Default(uint64_t result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, float a10, uint64_t a11, float32x4_t *a12, uint64_t a13)
{
  v40 = result;
  v47.i32[2] = 0;
  v47.i64[0] = 0;
  v46 = 0;
  if (a3 >= 1)
  {
    v14 = 0;
    v35 = 0;
    v15 = a13;
    v16 = a11;
    v17 = vdup_n_s32(0x437F0000u);
    v18.i64[0] = vextq_s8(a9, a9, 4uLL).u64[0];
    v19 = vmul_f32(*v18.f32, v17);
    v31 = (a3 - 1);
    v32 = 4 * a2;
    v33 = a3;
    v37 = a6;
    v38 = a5;
    v20 = a7;
    v21 = a8;
    while (a2 < 1)
    {
LABEL_34:
      v15 += v32;
      v16 += a2;
      v21 += v32;
      v20 += v32;
      v37 += a2;
      v38 += a2;
      v14 += a2;
      if (++v35 == v33)
      {
        return result;
      }
    }

    v22 = 0;
    v18.f32[0] = v35 / v31;
    v36 = vdupq_lane_s32(*v18.f32, 0);
    while (1)
    {
      result = v40(a4, (v14 + v22), &v47, &v46);
      if (result)
      {
        v24 = vsubq_f32(v47, a9);
        v18 = vmulq_f32(v24, v24);
        v18.f32[0] = 1.0 - fminf(fmaxf(sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)) / a10, 0.0), 1.0);
        v25 = (v18.f32[0] * 255.0);
        if (a5)
        {
          *(v38 + v22) = v25;
        }

        if (a6)
        {
          *(v37 + v22) = v25;
        }

        if (a7)
        {
          *(v20 + 4 * v22) = vdup_n_s8(v25).u32[0];
        }

        if (a8)
        {
          v26 = vcvt_s32_f32(vmul_n_f32(v19, v18.f32[0]));
          v23.i16[0] = ((255.0 * *a9.i32) * v18.f32[0]);
          v23.i16[1] = v26.i16[0];
          v23.i16[2] = v26.i16[2];
          v23.i16[3] = (v18.f32[0] * 255.0);
          *(v21 + 4 * v22) = vmovn_s16(v23).u32[0];
        }

        if (a11)
        {
          *(v16 + v22) = v25;
        }

        if (!a13)
        {
          goto LABEL_33;
        }

        v27 = a9;
        if (a12)
        {
          v28 = (1.0 / (a2 - 1)) * v22;
          v29 = vmlaq_n_f32(*a12, vsubq_f32(a12[1], *a12), v28);
          v27 = vmlaq_f32(v29, vsubq_f32(vmlaq_n_f32(a12[2], vsubq_f32(a12[3], a12[2]), v28), v29), v36);
        }

        v30 = vcvt_s32_f32(vmul_n_f32(vmul_f32(*v27.f32, v17), v18.f32[0]));
        v18.f32[0] = v18.f32[0] * vmuls_lane_f32(255.0, v27, 2);
        v30.i16[1] = v30.i16[2];
        v30.i16[2] = v18.f32[0];
        v30.i16[3] = v25;
      }

      else
      {
        if (a5)
        {
          *(v38 + v22) = 0;
        }

        if (a6)
        {
          *(v37 + v22) = 0;
        }

        if (a7)
        {
          *(v20 + 4 * v22) = 0;
        }

        if (a8)
        {
          *(v21 + 4 * v22) = 0;
        }

        if (a11)
        {
          *(v16 + v22) = 0;
        }

        if (!a13)
        {
          goto LABEL_33;
        }

        v30 = 0;
      }

      *v18.f32 = vuzp1_s8(v30, *v18.f32);
      *(v15 + 4 * v22) = v18.i32[0];
LABEL_33:
      if (a2 == ++v22)
      {
        goto LABEL_34;
      }
    }
  }

  return result;
}

uint64_t updateFlag(uint64_t result, int a2, int a3, int a4, int a5, char a6, uint64_t a7)
{
  v7 = a3 + a4 * result;
  if ((*(a7 + v7) & 2) != 0)
  {
    v8 = (a3 - a5) & ~((a3 - a5) >> 31);
    v9 = a5 + a3 >= result - 1 ? result - 1 : a5 + a3;
    if (v8 > v9)
    {
      goto LABEL_21;
    }

    v10 = 0;
    v11 = 0;
    v12 = (a5 - a3) & ~((a5 - a3) >> 31);
    v13 = a2 - 1;
    v14 = result;
    v15 = (v9 + 1);
    do
    {
      v16 = v12 - a5;
      if (v12 - a5 < 0)
      {
        v16 = a5 - v12;
      }

      if (a5 == 1)
      {
        v16 = 0;
      }

      v17 = a5 - v16;
      v18 = (a4 - (a5 - v16)) & ~((a4 - (a5 - v16)) >> 31);
      LODWORD(result) = v17 + a4;
      if (result >= v13)
      {
        result = v13;
      }

      else
      {
        result = result;
      }

      if (v18 <= result)
      {
        v19 = (result + 1);
        v20 = v19 + v10;
        result = a7 + v14 * v18;
        v21 = v18 - v19;
        do
        {
          v11 += (*(result + v8) >> 1) & 1;
          result += v14;
        }

        while (!__CFADD__(v21++, 1));
        v10 = v20 - v18;
      }

      ++v12;
      ++v8;
    }

    while (v8 != v15);
    if (v11 == v10)
    {
LABEL_21:
      *(a7 + v7) |= a6;
    }
  }

  return result;
}

uint64_t validateTransparentMargin(int a1, int a2, __int128 *a3, int a4, int a5, int a6, int a7)
{
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v26 = a5 + 1;
  v27 = v11;
  if (a1 >= a5 + 1)
  {
    v12 = a5 + 1;
  }

  else
  {
    v12 = a1;
  }

  v25 = v12;
  if (a6 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a6;
  }

  v14 = v13 - 1;
  v15 = a7 + 1;
  if (a2 >= a7 + 1)
  {
    v16 = a7 + 1;
  }

  else
  {
    v16 = a2;
  }

  if (a6 < 2)
  {
LABEL_20:
    if (v15 >= a2)
    {
LABEL_27:
      if (v13 > v16)
      {
        return 1;
      }

      v22 = v13 - 1;
      while (a4 < 2)
      {
LABEL_34:
        if (++v22 == v16)
        {
          while (1)
          {
            v24 = v25;
            if (v26 < a1)
            {
              break;
            }

LABEL_38:
            ++v14;
            result = 1;
            if (v14 == v16)
            {
              return result;
            }
          }

          while (1)
          {
            v28 = *a3;
            v29 = *(a3 + 2);
            if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v28, v24, v14) >= 0xFD)
            {
              return 0;
            }

            if (a1 == ++v24)
            {
              goto LABEL_38;
            }
          }
        }
      }

      v23 = 0;
      while (1)
      {
        v28 = *a3;
        v29 = *(a3 + 2);
        if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v28, v23, v22) >= 0xFD)
        {
          break;
        }

        if (v27 - 1 == ++v23)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v19 = v16;
      while (a1 < 1)
      {
LABEL_26:
        if (++v19 == a2)
        {
          goto LABEL_27;
        }
      }

      v20 = 0;
      while (1)
      {
        v28 = *a3;
        v29 = *(a3 + 2);
        if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v28, v20, v19) >= 0xFD)
        {
          break;
        }

        if (a1 == ++v20)
        {
          goto LABEL_26;
        }
      }
    }
  }

  else
  {
    v17 = 0;
    while (a1 < 1)
    {
LABEL_19:
      if (++v17 == v14)
      {
        goto LABEL_20;
      }
    }

    v18 = 0;
    while (1)
    {
      v28 = *a3;
      v29 = *(a3 + 2);
      if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v28, v18, v17) >= 0xFD)
      {
        break;
      }

      if (a1 == ++v18)
      {
        goto LABEL_19;
      }
    }
  }

  return 0;
}

uint64_t validateOpaqueCenter(__int128 *a1, int a2, int a3, int a4, int a5, int a6)
{
  v9 = a2 + 4;
  v10 = a4 + 4;
  if (a2 + 4 <= a6 + a2)
  {
    v11 = a6 + a2;
  }

  else
  {
    v11 = a2 + 4;
  }

  v22 = a5 - 4;
  v23 = a3 - 4;
  if (a3 - 4 >= a3 - a6)
  {
    v12 = a3 - a6;
  }

  else
  {
    v12 = a3 - 4;
  }

  if (v10 <= a6 + a4)
  {
    v13 = a6 + a4;
  }

  else
  {
    v13 = a4 + 4;
  }

  v21 = a5 - a6;
  if (a5 - 4 >= a5 - a6)
  {
    v14 = a5 - a6;
  }

  else
  {
    v14 = a5 - 4;
  }

  if (a6 >= 5)
  {
    while (1)
    {
      v15 = v11;
      if (v11 < v12)
      {
        break;
      }

LABEL_17:
      if (++v10 >= v13)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v24 = *a1;
      v25 = *(a1 + 2);
      if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v24, v15, v10) <= 0xEB)
      {
        return 0;
      }

      if (v12 == ++v15)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v13 < v14)
  {
    v16 = a3 - a2 - 8;
    while (1)
    {
      v17 = v16;
      v18 = v9;
      if (v9 < v23)
      {
        break;
      }

LABEL_23:
      if (++v13 == v14)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v24 = *a1;
      v25 = *(a1 + 2);
      if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v24, v18, v13) <= 0xEB)
      {
        return 0;
      }

      ++v18;
      if (!--v17)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (v21 < v22)
  {
    while (1)
    {
      v19 = v11;
      if (v11 < v12)
      {
        break;
      }

LABEL_28:
      ++v14;
      result = 1;
      if (v14 == v22)
      {
        return result;
      }
    }

    while (1)
    {
      v24 = *a1;
      v25 = *(a1 + 2);
      if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v24, v19, v14) <= 0xEB)
      {
        return 0;
      }

      if (v12 == ++v19)
      {
        goto LABEL_28;
      }
    }
  }

  return 1;
}

BOOL validateCorner(__int128 *a1, int a2, int a3, int a4, int a5, int a6, int a7, float a8, float a9)
{
  if (a4 >= a5)
  {
    return 1;
  }

  else
  {
    v12 = a4;
    v16 = 0;
    v17.f32[0] = a6;
    v17.f32[1] = a7;
    v24 = v17;
    do
    {
      if (a2 < a3)
      {
        *&v18 = v12 + 0.5;
        v25 = v18;
        for (i = a2; a3 != i; ++i)
        {
          v20.f32[0] = i + 0.5;
          v20.i32[1] = v25;
          v21 = vsub_f32(v20, v24);
          v22 = sqrtf(vaddv_f32(vmul_f32(v21, v21)));
          if (v22 >= a9)
          {
            if (v22 > a8)
            {
              v26 = *a1;
              v27 = *(a1 + 2);
              if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v26, i, v12) > 0xFC)
              {
                return v16;
              }
            }
          }

          else
          {
            v26 = *a1;
            v27 = *(a1 + 2);
            if (ISSegmentationSamples_readUcharSampleOpacity_xy(&v26, i, v12) <= 0xEB)
            {
              return v16;
            }
          }
        }
      }

      v16 = ++v12 >= a5;
    }

    while (v12 != a5);
  }

  return v16;
}

void sub_1A77D24A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A77D2BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A77D2D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ISCatalogAssetAppearanceForAssetAppearance(uint64_t a1, uint64_t a2, id a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_14;
      }

      v4 = &kISCatalogAssetAppearanceMacDark;
      v5 = &kISCatalogAssetAppearanceEmbeddedDark;
    }

    else
    {
      v4 = &kISCatalogAssetAppearanceMacLight;
      v5 = &kISCatalogAssetAppearanceEmbeddedLight;
    }

LABEL_9:
    if (a2 != 1)
    {
      v4 = v5;
    }

    v6 = *v4;
    goto LABEL_13;
  }

  if (a1 != 2)
  {
    if (a1 != 0xFFFF)
    {
      goto LABEL_14;
    }

    v4 = &kISCatalogAssetAppearanceMacDefault;
    v5 = &kISCatalogAssetAppearanceEmbeddedDefault;
    goto LABEL_9;
  }

  v6 = @"ISAppearanceTintable";
LABEL_13:
  a3 = v6;
LABEL_14:

  return a3;
}

BOOL shouldGenerateDark_singleForegroundColor_singleBackgroundColor(int a1, __n128 *a2, float32x4_t a3, float32x4_t a4)
{
  __asm { FMOV            V4.4S, #-1.0 }

  if (!_ZF & _CF)
  {
    v11 = vaddq_f32(a3, _Q4);
    v12 = vmulq_f32(v11, v11);
    v13 = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32)) <= 0.235294118;
  }

  else
  {
    v13 = 1;
  }

  v14 = vmulq_f32(a4, a4);
  if (sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) <= 0.235294118)
  {
    v17 = 0;
  }

  else
  {
    v15 = vaddq_f32(a4, _Q4);
    v16 = vmulq_f32(v15, v15);
    v17 = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)) > 0.235294118;
  }

  v18 = ISSegmentationMathUtils_contrastRatio(a3, vdupq_n_s32(0x3DA0902Eu)) < 3.0 || v17;
  if (!a1)
  {
    if (v18)
    {
      if (!v13 || ISSegmentationMathUtils_contrastRatio(a4, vdupq_n_s32(0x3DA0902Eu)) < 3.0)
      {
        return 0;
      }

      if (!a2)
      {
        return 1;
      }

      v19 = a4;
    }

    else
    {
      if (!a2)
      {
        return 1;
      }

      v19 = a3;
    }

    *a2 = v19;
    return 1;
  }

  if (!v18)
  {
    v20 = a3;
LABEL_20:
    lightenColorOverDarkBackground(a2, v20);
    return 1;
  }

  if (v13)
  {
    if (ISSegmentationMathUtils_contrastRatio(a4, vdupq_n_s32(0x3DA0902Eu)) < 3.0)
    {
      return !(v17 | ((lightenColorOverDarkBackground(a2, a3) & 1) == 0)) || (lightenColorOverDarkBackground(a2, a4) & 1) != 0;
    }

    v20 = a4;
    goto LABEL_20;
  }

  return !(v17 | ((lightenColorOverDarkBackground(a2, a3) & 1) == 0));
}

BOOL computeMask_foregroundMultipleColors_backgroundSingleColor(unsigned int a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, uint64_t a10, uint64_t a11, uint64_t a12, float32x4_t *a13, uint64_t a14)
{
  v19 = a3;
  v278 = a9;
  v288 = a1;
  v330 = *MEMORY[0x1E69E9840];
  v21 = a3;
  MEMORY[0x1EEE9AC00]();
  v269 = v24;
  v312 = v25;
  v283 = v19;
  v325 = v23;
  v275 = a2;
  v295 = &v259 - v22;
  v301 = v26;
  if (v27 < 1)
  {
    v44 = objc_opt_new();
  }

  else
  {
    v28 = 0;
    do
    {
      v29 = 0;
      v30 = 0;
      v31 = vsubq_f32(a4[v28], v23);
      v32 = vmulq_f32(v31, v31);
      *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
      *v32.f32 = vrsqrte_f32(v33);
      *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
      v34 = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
      v35 = 0.0;
      do
      {
        v36 = a4[v29];
        v37 = vsubq_f32(v36, v23);
        v38 = vmulq_f32(v37, v37);
        *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
        *v38.f32 = vrsqrte_f32(v39);
        *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
        v40 = vmulq_f32(v34, vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]));
        if ((v40.f32[2] + vaddv_f32(*v40.f32)) > 0.9)
        {
          v41 = vsubq_f32(v23, v36);
          v42 = vmulq_f32(v41, v41);
          v43 = sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
          if (v43 > v35)
          {
            v30 = v29;
            v35 = v43;
          }
        }

        ++v29;
      }

      while (v21 != v29);
      *(&v259 + 4 * v28++ - v22) = v30;
    }

    while (v28 != v21);
    v44 = objc_opt_new();
    if (v19 >= 1)
    {
      v296 = v44;
      v45 = 0;
      v46 = 1;
      v47 = v295;
      v48 = v44;
      do
      {
        v324.i64[0] = v45 + 1;
        if (v45 + 1 < v21)
        {
          v49 = *&v47[4 * v45];
          v50 = v46;
          do
          {
            if (v49 == *&v47[4 * v50])
            {
              v51 = [MEMORY[0x1E696AD98] numberWithInt:v45];
              [v48 addObject:v51];

              v52 = [MEMORY[0x1E696AD98] numberWithInt:v50];
              [v48 addObject:v52];

              v47 = v295;
            }

            ++v50;
          }

          while (v21 != v50);
        }

        ++v46;
        v45 = v324.i64[0];
      }

      while (v324.i64[0] != v21);
      v279 = [v296 count];
      v53 = v21;
      v54 = a4;
      v55 = 1.0;
      v56 = 0.0;
      do
      {
        v57 = *v54++;
        v58 = vmulq_f32(v57, v278);
        v58.f32[0] = fminf(fmaxf(v58.f32[2] + vaddv_f32(*v58.f32), 0.0), 1.0);
        v55 = fminf(v55, v58.f32[0]);
        v56 = fmaxf(v56, v58.f32[0]);
        --v53;
      }

      while (v53);
      a7 = v269;
      a6 = v312;
      LODWORD(v19) = v283;
      LODWORD(a2) = v275;
      v59 = v288;
      a8 = v301;
      goto LABEL_22;
    }
  }

  v296 = v44;
  v279 = [v44 count];
  v55 = 1.0;
  v56 = 0.0;
  v59 = v288;
LABEL_22:
  if (v19 <= 2)
  {
    goto LABEL_25;
  }

  __asm { FMOV            V0.4S, #-1.0 }

  v63 = vaddq_f32(v325, _Q0);
  v64 = vmulq_f32(v63, v63);
  if (sqrtf(v64.f32[2] + vaddv_f32(*v64.f32)) >= 0.117647059)
  {
LABEL_25:
    v292 = 0;
  }

  else
  {
    ISAccelerateIconSegmentationFlagForConnectedBackground(v59, a2, a6);
    LODWORD(v59) = v288;
    v292 = 1;
  }

  v261 = v59 - 1;
  if (v59 < 1)
  {
    v271 = 1;
    goto LABEL_292;
  }

  v65 = 0;
  v271 = 0;
  v287 = 0;
  v66 = v56 - fminf(v55, v56 + -0.00001);
  v290 = a13;
  v268 = a2 * v59 / 2500;
  v267 = v279 != 0;
  v274 = a2 - 1;
  v67 = fmaxf(1.0 - (v66 * fminf(0.5 / v66, 1.6)), 0.5);
  v282 = (a7 | a8 | a10) == 0;
  v291 = (v59 / 60);
  v308 = a14;
  v281 = (a11 | a12 | a14) == 0;
  v68 = 1.0 - v67;
  v309 = v19;
  v320 = v59;
  v272 = 4 * v21;
  v280 = a2 - v59 / 60;
  v302 = a2;
  v284 = v59 - v59 / 60;
  v298 = a2;
  v264 = a4 + 1;
  v263 = v21 - 1;
  v69 = 0.00784313725;
  v297 = vdupq_n_s32(0x437F0000u);
  v286 = 0.0215686275;
  v260 = vneg_f32(0x80000000800000);
  v266 = 0x3F80101010101010;
  v300 = a12;
  v303 = a11;
  v304 = a10;
  do
  {
    if (v65 <= 3)
    {
      v70 = 3;
    }

    else
    {
      v70 = v65;
    }

    if (v65 <= 2)
    {
      v71 = 2;
    }

    else
    {
      v71 = v65;
    }

    if (v65 <= 1)
    {
      v72 = 1;
    }

    else
    {
      v72 = v65;
    }

    if (a2 < 1)
    {
      goto LABEL_288;
    }

    v262 = v70 - 3;
    v270 = v71 - 2;
    v294 = v72 - 1;
    v293 = v72 - 1;
    if (v65 + 1 < v261)
    {
      v73 = v65 + 1;
    }

    else
    {
      v73 = v261;
    }

    v273 = v71 - 2;
    v74 = v65 + 2;
    if (v65 + 2 >= v261)
    {
      v74 = v261;
    }

    v265 = v70 - 3;
    v75 = v65 + 3;
    v314 = v73;
    v76 = 0;
    if (v65 + 3 >= v261)
    {
      v75 = v261;
    }

    v306 = v74;
    v77 = 0;
    v289 = v75;
    v78 = 1;
    v307 = v65;
    while (1)
    {
      v299 = v78;
      v311 = v76;
      if (v76 <= 1)
      {
        v79 = 1;
      }

      else
      {
        v79 = v76;
      }

      if (v77 <= 3)
      {
        v80 = 3;
      }

      else
      {
        v80 = v77;
      }

      v305 = v80;
      if (v77 <= 2)
      {
        v81 = 2;
      }

      else
      {
        v81 = v77;
      }

      if (v77 <= 1)
      {
        v82 = 1;
      }

      else
      {
        v82 = v77;
      }

      v313 = v77;
      v83 = v65 + v77 * v320;
      *v329 = 0uLL;
      v327 = *a5;
      v328 = a5[1].i64[0];
      if ((ISSegmentationSamples_readAlmostOpaqueSample_i(&v327, v65 + v77 * v320, &v329[4], v329, *v327.f32) & 1) == 0)
      {
        v97 = v304;
        if (a7)
        {
          *(a7 + v83) = 0;
        }

        v65 = v307;
        v98 = v303;
        v95 = v313;
        v96 = v311;
        if (v301)
        {
          *(v301 + v83) = 0;
        }

        v99 = v300;
        if (v97)
        {
          *(v97 + 4 * v83) = 0;
        }

        if (v98)
        {
          *(v98 + 4 * v83) = 0;
        }

        if (v99)
        {
          *(v99 + v83) = 0;
        }

        if (!v308)
        {
          goto LABEL_101;
        }

        v100 = 0;
        goto LABEL_100;
      }

      v324.i32[0] = *(a6 + v83);
      if (v292)
      {
        v327 = *a5;
        v328 = a5[1].i64[0];
        if (testEyeFeature(v288, a2, v307, v313, &v327, a6))
        {
          v250 = v287;
          goto LABEL_286;
        }
      }

      v85 = vsubq_f32(*&v329[4], v325);
      v86 = vmulq_f32(v85, v85);
      v87 = sqrtf(v86.f32[2] + vaddv_f32(*v86.f32));
      v88 = 0uLL;
      v89 = 0.0;
      v65 = v307;
      if (v87 < v69)
      {
        v90 = 0.0;
        v91 = v301;
        v92 = v300;
        v93 = v303;
        v94 = v304;
        v95 = v313;
        v96 = v311;
        if (!a7)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }

      _NF = v87 < v286 && *v329 < 1.0;
      v95 = v313;
      v96 = v311;
      if (!_NF)
      {
        break;
      }

      v90 = 0.0;
      v91 = v301;
      v92 = v300;
      v93 = v303;
      v94 = v304;
      if (a7)
      {
        goto LABEL_87;
      }

LABEL_88:
      v110 = v88;
      if (v91)
      {
        *(v91 + v83) = (v89 * 255.0);
      }

      if (v94)
      {
        v84.i32[0] = 1132396544;
        v111 = vdup_lane_s32(v84, 0);
        v111.f32[0] = (v67 + (fminf(fmaxf(1.0 - ((v56 - v90) / v66), 0.0), 1.0) * v68)) * 255.0;
        v112 = vcvt_s32_f32(vmul_n_f32(v111, v89));
        v113 = vuzp1_s16(v112, v112);
        v114 = vzip1_s16(v113, v113);
        v114.i16[2] = v113.i16[0];
        *(v94 + 4 * v83) = vuzp1_s8(v114, v113).u32[0];
      }

      if (v93)
      {
        v115.i64[0] = vmulq_f32(v88, v297).u64[0];
        v115.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(255.0, v88, 2)) | 0x437F000000000000;
        v116 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v115, v89)));
        *(v93 + 4 * v83) = vuzp1_s8(v116, v116).u32[0];
      }

      if (v92)
      {
        *(v92 + v83) = (v89 * 255.0);
      }

      if (!v308)
      {
        goto LABEL_101;
      }

      if (v290)
      {
        v110 = *v290;
      }

      v117.i64[0] = vmulq_f32(v110, v297).u64[0];
      v117.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(255.0, v110, 2)) | 0x437F000000000000;
      v100 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v117, v89)));
LABEL_100:
      *(v308 + 4 * v83) = vuzp1_s8(v100, v100).u32[0];
LABEL_101:
      v77 = v95 + 1;
      v78 = v77 < v302;
      v76 = v96 + 1;
      if (v77 == v298)
      {
        if (v77 >= v302)
        {
          goto LABEL_288;
        }

        goto LABEL_292;
      }
    }

    v102 = *a4;
    v315 = *a4;
    v285 = v83;
    if (v283 < 2)
    {
      *v118.i64 = ISSegmentationMathUtils_clampedProject(*&v329[4], v325, v102);
      v119 = v315;
      v65 = v307;
      v120 = vsubq_f32(*&v329[4], v118);
      v121 = vmulq_f32(v120, v120);
      v122.f32[0] = fminf(sqrtf(v121.f32[2] + vaddv_f32(*v121.f32)), 3.4028e38);
      v91 = v301;
      v92 = v300;
      goto LABEL_247;
    }

    v103 = vsubq_f32(*&v329[4], *a4);
    v104 = vmulq_f32(v103, v103);
    if ((v104.f32[2] + vaddv_f32(*v104.f32)) < 0.27)
    {
      v109 = 1;
    }

    else
    {
      v105 = 1;
      do
      {
        v106 = v105;
        if (v21 == v105)
        {
          break;
        }

        v107 = vsubq_f32(*&v329[4], a4[v105]);
        v108 = vmulq_f32(v107, v107);
        ++v105;
      }

      while ((v108.f32[2] + vaddv_f32(*v108.f32)) >= 0.27);
      v109 = v106 < v309;
    }

    if ((v86.f32[2] + vaddv_f32(*v86.f32)) < 0.27 || v109)
    {
      goto LABEL_120;
    }

    v123 = v313 + 1 < v274 ? v313 + 1 : v274;
    if (v82 - 1 > v123)
    {
      goto LABEL_120;
    }

    v124 = 0;
    v125 = 0;
    v126 = v288 * (v79 - 1) - 1;
    v127 = v312 + v320 * (v79 - 1);
    v128 = v82 - 1;
    *&v323 = v123;
    do
    {
      v129 = v294;
      if (v293 <= v314)
      {
        do
        {
          *(v326.i64 + 4) = 0;
          v326.i32[0] = 0;
          v327 = *a5;
          v328 = a5[1].i64[0];
          if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v327, v126 + v129 + 1, &v326, 0, *v327.f32) && (~*(v127 + v129) & 9) == 0)
          {
            ++v124;
            v130 = vceqq_f32(*&v329[4], v326);
            v130.i32[3] = v130.i32[2];
            v125 += vminvq_u32(v130) >> 31;
          }

          v156 = v129++ < v314;
        }

        while (v156);
      }

      v126 += v320;
      v127 += v320;
      v156 = v128++ < v323;
    }

    while (v156);
    if (v124 < 8 || v125 != v124)
    {
LABEL_120:
      *&v323 = v81 - 2;
      v131 = v279 == 0;
      if ((~v324.i32[0] & 9) == 0)
      {
        v131 = 1;
      }

      v276 = v131;
      v132 = (~v324.i32[0] & 9) != 0 && v267;
      MEMORY[0x1EEE9AC00]();
      v316.i64[0] = &v259 - ((v133 + 15) & 0x7FFFFFFF0);
      bzero(v316.i64[0], v133);
      v136 = v81 - 2;
      LODWORD(v137) = v313 + 2;
      if (v313 + 2 >= v274)
      {
        v137 = v274;
      }

      else
      {
        v137 = v137;
      }

      v324.i64[0] = v137;
      _ZF = a5->i32[3] == 3;
      v277 = v132;
      if (_ZF && !a5->i32[2])
      {
        a6 = v312;
        if (v273 <= v306)
        {
          v310.i64[0] = &v259;
          v138 = 0;
          v166 = v324.i32[0];
          v167 = v270;
          do
          {
            v168 = v323;
            if (v136 <= v324.i32[0])
            {
              do
              {
                *(v327.i64 + 4) = 0;
                v169 = v167 + v168 * v320;
                v327.i32[0] = 0;
                if (ISAccelerateIconSegmentationSamples_readAlmostOpaqueSample_i_AlphaLast_NoOpacity_Padding0(a5, v167 + v168 * v320, &v327, *&v134) && (~*(a6 + v169) & 3) == 0)
                {
                  v170 = 0;
                  v171 = 0;
                  v172 = 3.4028e38;
                  do
                  {
                    v173 = vsubq_f32(v327, a4[v170]);
                    v174 = vmulq_f32(v173, v173);
                    v175 = sqrtf(v174.f32[2] + vaddv_f32(*v174.f32));
                    if (v175 < v172)
                    {
                      v172 = v175;
                      v171 = v170;
                    }

                    ++v170;
                  }

                  while (v21 != v170);
                  v134 = v172;
                  if (v172 <= 0.0392156863)
                  {
                    ++*(v316.i64[0] + 4 * v171);
                    ++v138;
                  }
                }

                v156 = v168++ < v166;
              }

              while (v156);
            }

            v156 = v167++ < v306;
          }

          while (v156);
          goto LABEL_145;
        }

LABEL_132:
        v122.i32[0] = 2139095039;
        LODWORD(a2) = v275;
        v93 = v303;
        v119 = v315;
      }

      else
      {
        a6 = v312;
        if (v273 > v306)
        {
          goto LABEL_132;
        }

        v310.i64[0] = &v259;
        v138 = 0;
        v139 = v324.i32[0];
        v140 = v270;
        do
        {
          v141 = v323;
          if (v136 <= v324.i32[0])
          {
            do
            {
              v142 = v140 + v141 * v320;
              *(v326.i64 + 4) = 0;
              v326.i32[0] = 0;
              v327 = *a5;
              v328 = a5[1].i64[0];
              if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v327, v140 + v141 * v320, &v326, 0, *v327.f32) && (~*(a6 + v142) & 3) == 0)
              {
                v143 = 0;
                v144 = 0;
                v145 = 3.4028e38;
                do
                {
                  v146 = vsubq_f32(v326, a4[v143]);
                  v147 = vmulq_f32(v146, v146);
                  v148 = sqrtf(v147.f32[2] + vaddv_f32(*v147.f32));
                  if (v148 < v145)
                  {
                    v145 = v148;
                    v144 = v143;
                  }

                  ++v143;
                }

                while (v21 != v143);
                if (v145 <= 0.0392156863)
                {
                  ++*(v316.i64[0] + 4 * v144);
                  ++v138;
                }
              }

              v156 = v141++ < v139;
            }

            while (v156);
          }

          v156 = v140++ < v306;
        }

        while (v156);
LABEL_145:
        if (v138 < 1)
        {
          v122.i32[0] = 2139095039;
          LODWORD(a2) = v275;
          v93 = v303;
          v119 = v315;
          v132 = v277;
        }

        else
        {
          v149 = 0;
          v150 = *a4;
          *&v135 = vneg_f32(0x80000000800000);
          v151 = v316.i64[0] + 4;
          v152 = v263;
          v153 = v264;
          v154 = *a4;
          v119 = v315;
          do
          {
            v155 = v149 + 1;
            if (*(v316.i64[0] + 4 * v149))
            {
              v156 = v155 < v309;
            }

            else
            {
              v156 = 0;
            }

            if (v156)
            {
              v318 = a4[v149];
              v317 = vsubq_f32(v318, v325);
              v157 = v152;
              v158 = v151;
              v159 = v153;
              do
              {
                if (*v158++)
                {
                  v319 = *v159;
                  v327.i32[0] = 0;
                  v326.i32[0] = 0;
                  v321 = *&v329[4];
                  v324 = v150;
                  v323 = v135;
                  v322 = v154;
                  getRatioAndAlpha(v327.f32, v326.f32, vsubq_f32(*&v329[4], v325), v317, vsubq_f32(v319, v325));
                  *(&v135 + 1) = *(&v323 + 1);
                  v122 = vmlaq_n_f32(v318, vsubq_f32(v319, v318), fminf(fmaxf(v327.f32[0], 0.0), 1.0));
                  v161 = vsubq_f32(v321, v122);
                  v162 = vmulq_f32(v161, v161);
                  v163 = vsubq_f32(v321, vmlaq_n_f32(v325, vsubq_f32(v122, v325), fminf(fmaxf(v326.f32[0], 0.0), 1.0)));
                  v164 = vmulq_f32(v163, v163);
                  v119 = v315;
                  *v162.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v164, v164, 8uLL), *&vextq_s8(v162, v162, 8uLL)), vadd_f32(vzip1_s32(*v164.i8, *v162.i8), vzip2_s32(*v164.i8, *v162.i8))));
                  *v164.i8 = vcgt_f32(*&v323, *v162.i8);
                  v154 = vbslq_s8(vmovl_s16(vdup_lane_s16(*v164.i8, 2)), v122, v322);
                  *&v135 = vbsl_s8(*v164.i8, *v162.i8, *&v323);
                  v150 = vbslq_s8(vmovl_s16(vdup_lane_s16(*v164.i8, 0)), v122, v324);
                }

                ++v159;
                --v157;
              }

              while (v157);
            }

            ++v153;
            v151 += 4;
            --v152;
            v149 = v155;
          }

          while (v155 != v21);
          _ZF = *(&v135 + 1) == 3.4028e38 && *&v135 == 3.4028e38;
          if (_ZF)
          {
            *&v135 = vneg_f32(0x80000000800000);
            v176 = v21;
            v177 = a4;
            a6 = v312;
            LODWORD(a2) = v275;
            v93 = v303;
            v132 = v277;
            do
            {
              v178 = *v316.i64[0];
              v316.i64[0] += 4;
              if (v178)
              {
                v321 = *v177;
                v324 = v150;
                v323 = v135;
                v322 = v154;
                *v179.i64 = ISSegmentationMathUtils_clampedProject(*&v329[4], v325, v321);
                *(&v135 + 1) = *(&v323 + 1);
                v119 = v315;
                v180 = vsubq_f32(*&v329[4], v321);
                v181 = vmulq_f32(v180, v180);
                v182 = vsubq_f32(*&v329[4], v179);
                v183 = vmulq_f32(v182, v182);
                *v183.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v183, v183, 8uLL), *&vextq_s8(v181, v181, 8uLL)), vadd_f32(vzip1_s32(*v183.i8, *v181.i8), vzip2_s32(*v183.i8, *v181.i8))));
                v184 = vcgt_f32(*&v323, *v183.i8);
                v122 = v321;
                v154 = vbslq_s8(vmovl_s16(vdup_lane_s16(v184, 2)), v321, v322);
                *&v135 = vbsl_s8(v184, *v183.i8, *&v323);
                v150 = vbslq_s8(vmovl_s16(vdup_lane_s16(v184, 0)), v321, v324);
              }

              ++v177;
              --v176;
            }

            while (v176);
          }

          else
          {
            a6 = v312;
            LODWORD(a2) = v275;
            v93 = v303;
            v132 = v277;
          }

          v122.i32[0] = 2139095039;
          if (*(&v135 + 1) < 3.4028e38 && *&v135 < 3.4028e38)
          {
            if (*(&v135 + 1) <= 0.13725)
            {
              v122.i32[0] = DWORD1(v135);
              v119 = v154;
            }

            else
            {
              v122.i32[0] = v135;
              v119 = v150;
            }
          }
        }
      }

      if (!v279 && v122.f32[0] > 0.039216)
      {
        v186 = *&v329[4];
        v187 = v21;
        v188 = a4;
        do
        {
          v310 = v122;
          v315 = v119;
          v189 = *v188++;
          v324 = v189;
          *v190.i64 = ISSegmentationMathUtils_clampedProject(v186, v325, v189);
          v122 = v310;
          v191 = v190;
          v186 = *&v329[4];
          v192 = vsubq_f32(*&v329[4], v191);
          v193 = vmulq_f32(v192, v192);
          v193.f32[0] = sqrtf(v193.f32[2] + vaddv_f32(*v193.f32));
          *(&v135 + 1) = v324.i64[1];
          v119 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v310, v193), 0), v324, v315);
          if (v193.f32[0] < v310.f32[0])
          {
            v122.f32[0] = v193.f32[0];
          }

          --v187;
        }

        while (v187);
      }

      v194 = v276;
      if (v122.f32[0] <= 0.039216)
      {
        v194 = 0;
      }

      if (v194)
      {
        v310 = v122;
        v315 = v119;
        v195 = 0;
        v196 = *a4;
        v197 = v263;
        v198 = v264;
        v199 = *a4;
        *&v135 = v260;
        do
        {
          v200 = v195 + 1;
          if (v195 + 1 < v309)
          {
            v201 = a4[v195];
            v318 = *&v329[4];
            v317 = vsubq_f32(*&v329[4], v325);
            v319 = v201;
            v316 = vsubq_f32(v201, v325);
            v202 = v197;
            v203 = v198;
            do
            {
              v322 = v199;
              v323 = v135;
              v324 = v196;
              v204 = *v203++;
              v321 = v204;
              v327.i32[0] = 0;
              v326.i32[0] = 0;
              getRatioAndAlpha(v327.f32, v326.f32, v317, v316, vsubq_f32(v204, v325));
              *(&v135 + 1) = *(&v323 + 1);
              v205 = vmlaq_n_f32(v319, vsubq_f32(v321, v319), fminf(fmaxf(v327.f32[0], 0.0), 1.0));
              v206 = vsubq_f32(v318, v205);
              v207 = vmulq_f32(v206, v206);
              v208 = vsubq_f32(v318, vmlaq_n_f32(v325, vsubq_f32(v205, v325), fminf(fmaxf(v326.f32[0], 0.0), 1.0)));
              v209 = vmulq_f32(v208, v208);
              *v209.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v209, v209, 8uLL), *&vextq_s8(v207, v207, 8uLL)), vadd_f32(vzip1_s32(*v209.i8, *v207.i8), vzip2_s32(*v209.i8, *v207.i8))));
              v210 = vcgt_f32(*&v323, *v209.i8);
              v199 = vbslq_s8(vmovl_s16(vdup_lane_s16(v210, 2)), v205, v322);
              *&v135 = vbsl_s8(v210, *v209.i8, *&v323);
              v196 = vbslq_s8(vmovl_s16(vdup_lane_s16(v210, 0)), v205, v324);
              --v202;
            }

            while (v202);
          }

          ++v198;
          --v197;
          v195 = v200;
        }

        while (v200 != v21);
        v211 = vcgt_f32(vneg_f32(0x80000000800000), *&v135);
        v91 = v301;
        if (v211.i32[1] & v211.i32[0])
        {
          a6 = v312;
          LODWORD(a2) = v275;
          v65 = v307;
          v92 = v300;
          v94 = v304;
          v119 = v315;
          v132 = v277;
          v122 = v310;
          if (*(&v135 + 1) <= 0.13725)
          {
            if (*(&v135 + 1) < v310.f32[0])
            {
              v122.i32[0] = DWORD1(v135);
              v119 = v199;
            }
          }

          else if (*&v135 < v310.f32[0])
          {
            v122.i32[0] = v135;
            v119 = v196;
          }
        }

        else
        {
          a6 = v312;
          LODWORD(a2) = v275;
          v65 = v307;
          v92 = v300;
          v94 = v304;
          v119 = v315;
          v132 = v277;
          v122 = v310;
        }
      }

      else
      {
        v91 = v301;
        v65 = v307;
        v92 = v300;
        v94 = v304;
      }

      if (v122.f32[0] > 0.039216 && v132)
      {
        v310 = v122;
        v315 = v119;
        v213 = 0;
        LODWORD(v214) = 0;
        v324.i64[0] = v305 - 3;
        v215 = *&v329[4];
        v216 = 3.4028e38;
        do
        {
          *v217.i64 = ISSegmentationMathUtils_clampedProject(v215, v325, a4[v213]);
          v218 = v217;
          v215 = *&v329[4];
          v219 = vsubq_f32(*&v329[4], v218);
          v220 = vmulq_f32(v219, v219);
          v221 = sqrtf(v220.f32[2] + vaddv_f32(*v220.f32));
          if (v221 >= v216)
          {
            v214 = v214;
          }

          else
          {
            v216 = v221;
            v214 = v213;
          }

          ++v213;
        }

        while (v21 != v213);
        v222 = [MEMORY[0x1E696AD98] numberWithInt:v214];
        v223 = [v296 containsObject:v222];

        if (v223)
        {
          *&v323 = &v259;
          MEMORY[0x1EEE9AC00]();
          v225 = &v259 - ((v224 + 15) & 0x7FFFFFFF0);
          bzero(v225, v224);
          v69 = *&v266;
          if (v265 <= v289)
          {
            v226 = v313 + 3;
            if (v313 + 3 >= v274)
            {
              v226 = v274;
            }

            v227 = v305 - 3;
            v228 = v226;
            v229 = v262;
            do
            {
              v230 = v324.i64[0];
              if (v227 <= v228)
              {
                do
                {
                  v231 = v229 + v230 * v320;
                  *(v326.i64 + 4) = 0;
                  v326.i32[0] = 0;
                  v327 = *a5;
                  v328 = a5[1].i64[0];
                  if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v327, v229 + v230 * v320, &v326, 0, *v327.f32) && (~*(v312 + v231) & 3) == 0)
                  {
                    v232 = 0;
                    v233 = 0;
                    v234 = 3.4028e38;
                    do
                    {
                      v235 = vsubq_f32(v326, a4[v232]);
                      v236 = vmulq_f32(v235, v235);
                      v237 = sqrtf(v236.f32[2] + vaddv_f32(*v236.f32));
                      if (v237 < v234)
                      {
                        v234 = v237;
                        v233 = v232;
                      }

                      ++v232;
                    }

                    while (v21 != v232);
                    if (v234 <= 0.0392156863)
                    {
                      ++*&v225[4 * v233];
                    }
                  }

                  v156 = v230++ < v228;
                }

                while (v156);
              }

              v156 = v229++ < v289;
            }

            while (v156);
          }

          v238 = 0;
          v239 = *&v225[4 * v214];
          v240 = v214;
          v91 = v301;
          LODWORD(a2) = v275;
          v92 = v300;
          do
          {
            if (*&v295[4 * v238] == *&v295[4 * v214] && *&v225[4 * v238] > v239)
            {
              v239 = *&v225[4 * v238];
              v240 = v238;
            }

            ++v238;
          }

          while (v21 != v238);
          if (v240 >= 0)
          {
            LODWORD(v214) = v240;
          }
        }

        else
        {
          v69 = *&v266;
        }

        v324 = a4[v214];
        *v241.i64 = ISSegmentationMathUtils_clampedProject(*&v329[4], v325, v324);
        v242 = vsubq_f32(*&v329[4], v241);
        v243 = vmulq_f32(v242, v242);
        v243.f32[0] = sqrtf(v243.f32[2] + vaddv_f32(*v243.f32));
        v122.i32[0] = v310.i32[0];
        v119 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v310, v243), 0), v324, v315);
        if (v243.f32[0] < v310.f32[0])
        {
          v122.f32[0] = v243.f32[0];
        }

        a7 = v269;
        a6 = v312;
        v65 = v307;
LABEL_247:
        v93 = v303;
        v94 = v304;
      }

      else
      {
        a7 = v269;
        v69 = *&v266;
      }

      v244 = 0;
      v245 = v282;
      if (v122.f32[0] <= 1.0)
      {
        v245 = 1;
      }

      if ((v245 & 1) != 0 || v65 < v291 || v65 >= v284)
      {
        v246 = v313;
      }

      else
      {
        v246 = v313;
        if (v313 >= v291)
        {
          v244 = v283 > 1 && v313 < v280;
        }
      }

      v248 = v246;
      v249 = (v122.f32[0] > 0.235) & ~v281;
      if (v65 < v291)
      {
        v249 = 0;
      }

      if (v65 >= v284)
      {
        v249 = 0;
      }

      if (v248 < v291)
      {
        v249 = 0;
      }

      if (v248 >= v280)
      {
        v249 = 0;
      }

      if ((v249 & 1) != 0 || v244)
      {
        v250 = v287 + 1;
        v251 = v287 < 0 || v282;
        v252 = v281;
        if (v287 < v268)
        {
          v252 = 1;
        }

        if (v251 != 1 || !v252)
        {
          goto LABEL_287;
        }
      }

      else
      {
        v250 = v287;
      }

      v253 = vmulq_f32(v119, v278);
      v90 = fminf(fmaxf(v253.f32[2] + vaddv_f32(*v253.f32), 0.0), 1.0);
      v88 = v119;
      v254 = vsubq_f32(v119, v325);
      v255 = vmulq_f32(v254, vsubq_f32(*&v329[4], v325));
      v256 = vmulq_f32(v254, v254);
      *v255.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v255, v255, 8uLL), *&vextq_s8(v256, v256, 8uLL)), vadd_f32(vzip1_s32(*v255.i8, *v256.i8), vzip2_s32(*v255.i8, *v256.i8)));
      v84 = vdup_lane_s32(*v255.i8, 1);
      v89 = fminf(fmaxf(vdiv_f32(*v255.i8, v84).f32[0], 0.0), 1.0);
      v287 = v250;
      v95 = v313;
      v96 = v311;
      v83 = v285;
      if (!a7)
      {
        goto LABEL_88;
      }

LABEL_87:
      *(a7 + v83) = ((v89 * (v67 + (fminf(fmaxf(1.0 - ((v56 - v90) / v66), 0.0), 1.0) * v68))) * 255.0);
      goto LABEL_88;
    }

    v250 = v287;
    a7 = v269;
    a6 = v312;
    LODWORD(a2) = v275;
LABEL_286:
    v65 = v307;
LABEL_287:
    v287 = v250;
    if (v299)
    {
      break;
    }

LABEL_288:
    v271 = ++v65 >= v320;
  }

  while (v65 != v320);
LABEL_292:

  v257 = *MEMORY[0x1E69E9840];
  return v271;
}

uint64_t computeIconSegmentationAdditionalGradientFlag(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13, uint8x8_t a14)
{
  v14 = a6;
  v15 = a5;
  v99 = result;
  if (a3)
  {
    v17 = 0.0666666667;
  }

  else
  {
    v17 = 0.196078431;
  }

  if (*(a4 + 12) == 5 && !*(a4 + 8))
  {
    result = ISAccelerateIconSegmentationComputeAdditionalGradientFlag(result, a2, *(a4 + 16), a5, a6, *&v17, 0.0666666667, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v100 = result - 1;
    if (result >= 1)
    {
      v18 = 0;
      v19 = a2 - 1;
      v20 = result;
      v21 = a2;
      v102 = a2 - 1;
      do
      {
        if (a2 <= 0)
        {
          v38 = v18 + 1;
        }

        else
        {
          v22 = 0;
          if (v18 <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = v18;
          }

          v106 = v23 - 1;
          v101 = v18 + 1;
          if (v18 + 1 >= v100)
          {
            v24 = v100;
          }

          else
          {
            v24 = v18 + 1;
          }

          v107 = v18;
          do
          {
            if (v22 <= 1)
            {
              v25 = 1;
            }

            else
            {
              v25 = v22;
            }

            v26 = v18 + v22 * v20;
            if (*(v15 + v26))
            {
              *(v111[0].i64 + 4) = 0;
              v111[0].i32[0] = 0;
              v109 = *a4;
              v110 = *(a4 + 16);
              result = ISSegmentationSamples_readAlmostOpaqueSample_i(&v109, v18 + v22 * v20, v111, 0, *&v109);
              if (result)
              {
                if (v22 <= 1)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = v22;
                }

                if (v22 + 1 < v19)
                {
                  v29 = v22 + 1;
                }

                else
                {
                  v29 = v19;
                }

                if (v106 <= v24)
                {
                  v30 = 0;
                  v31 = v25 - 2;
                  v32 = v28 - 1;
                  v33 = v106;
                  do
                  {
                    v34 = v31;
                    if (v32 <= v29)
                    {
                      do
                      {
                        ++v34;
                        v108.i32[2] = 0;
                        v108.i64[0] = 0;
                        v109 = *a4;
                        v110 = *(a4 + 16);
                        result = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v109, v33, v34, &v108, 0);
                        if (result)
                        {
                          v35 = vsubq_f32(v111[0], v108);
                          v36 = vmulq_f32(v35, v35);
                          if (v17 < sqrtf(v36.f32[2] + vaddv_f32(*v36.f32)))
                          {
                            ++v30;
                          }
                        }
                      }

                      while (v34 < v29);
                    }

                    v37 = v33++ < v24;
                  }

                  while (v37);
                  v27 = v30 > 0;
                  v15 = a5;
                  v14 = a6;
                  v19 = v102;
                  v20 = v99;
                }

                else
                {
                  v27 = 0;
                }

                v21 = a2;
              }

              else
              {
                v27 = 0;
              }

              v18 = v107;
            }

            else
            {
              v27 = 0;
            }

            *(v14 + v26) = v27;
            ++v22;
          }

          while (v22 != v21);
          v38 = v101;
        }

        v18 = v38;
      }

      while (v38 != v20);
    }
  }

  v39 = v99 - 1;
  if (v99 >= 1 && a3)
  {
    v40 = 0;
    v41 = a2 - 1;
    while (1)
    {
      v42 = v40 <= 1 ? 1 : v40;
      if (a2 > 0)
      {
        break;
      }

      v46 = v40 + 1;
LABEL_88:
      v40 = v46;
      if (v46 == v99)
      {
        v63 = 0;
        do
        {
          if (v63 <= 1)
          {
            v64 = 1;
          }

          else
          {
            v64 = v63;
          }

          if (a2 <= 0)
          {
            v68 = v63 + 1;
          }

          else
          {
            v65 = 0;
            v66 = v64 - 1;
            v67 = v64 - 1;
            v68 = v63 + 1;
            if (v63 + 1 >= v39)
            {
              v69 = v99 - 1;
            }

            else
            {
              v69 = v63 + 1;
            }

            v70 = v14 + v63;
            do
            {
              if (v65 <= 1)
              {
                v71 = 1;
              }

              else
              {
                v71 = v65;
              }

              result = v65 * v99;
              ++v65;
              if ((*(v70 + result) & 2) != 0)
              {
                if (v67 > v69)
                {
                  goto LABEL_111;
                }

                v72 = 0;
                v73 = 0;
                v74 = v71 - 2;
                v75 = v14 + v99 * (v71 - 1);
                v76 = v65 >= v41 ? a2 - 1 : v65;
                v77 = v71 - 1;
                v78 = v66;
                do
                {
                  v79 = v75;
                  v80 = v74;
                  if (v77 <= v76)
                  {
                    do
                    {
                      ++v73;
                      v72 += (*(v79 + v78) >> 1) & 1;
                      ++v80;
                      v79 += v99;
                    }

                    while (v80 < v76);
                  }

                  v37 = v78++ < v69;
                }

                while (v37);
                if (v72 == v73)
                {
LABEL_111:
                  *(v70 + result) |= 4u;
                }
              }
            }

            while (v65 != a2);
          }

          v63 = v68;
        }

        while (v68 != v99);
        for (i = 0; i != v99; ++i)
        {
          if (i <= 2)
          {
            v82 = 2;
          }

          else
          {
            v82 = i;
          }

          if (a2 >= 1)
          {
            v83 = 0;
            v84 = v82 - 2;
            v85 = v82 - 2;
            v86 = i + 2;
            if (i + 2 >= v39)
            {
              v86 = v99 - 1;
            }

            result = v14 + i;
            v87 = -2;
            do
            {
              if (v83 <= 2)
              {
                v88 = 2;
              }

              else
              {
                v88 = v83;
              }

              if ((*(result + v83 * v99) & 2) != 0)
              {
                if (v85 > v86)
                {
                  goto LABEL_144;
                }

                v89 = 0;
                v90 = 0;
                v91 = v83 + 2 >= v41 ? a2 - 1 : v83 + 2;
                v92 = v84;
                do
                {
                  if (v88 - 2 <= v91)
                  {
                    v93 = v92 - i;
                    if (v92 - i < 0)
                    {
                      v93 = i - v92;
                    }

                    v94 = v14 + v99 * (v88 - 2);
                    v95 = v88;
                    do
                    {
                      v96 = v87 + v95;
                      if (v87 + v95 < 0)
                      {
                        v96 = -v96;
                      }

                      if ((v96 + v93) <= 2)
                      {
                        ++v90;
                        v89 += (*(v94 + v92) >> 1) & 1;
                      }

                      v97 = v95 - 2;
                      ++v95;
                      v94 += v99;
                    }

                    while (v97 < v91);
                  }

                  v37 = v92++ < v86;
                }

                while (v37);
                if (v89 == v90)
                {
LABEL_144:
                  *(result + v83 * v99) |= 8u;
                }
              }

              ++v83;
              --v87;
            }

            while (v83 != a2);
          }
        }

        return result;
      }
    }

    v43 = 0;
    v44 = v42 - 1;
    v45 = v42 - 1;
    v46 = v40 + 1;
    if (v40 + 1 >= v39)
    {
      LODWORD(result) = v99 - 1;
    }

    else
    {
      LODWORD(result) = v40 + 1;
    }

    result = result;
    while (1)
    {
      if (v43 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v43;
      }

      v48 = v47 - 2;
      v49 = v15 + v99 * (v47 - 1);
      v50 = v40 + v43 * v99;
      ++v43;
      if ((*(v15 + v50) & 0x21) == 1)
      {
        if (v45 > result)
        {
          goto LABEL_84;
        }

        v51 = 0;
        v52 = 0;
        if (v43 >= v41)
        {
          v53 = a2 - 1;
        }

        else
        {
          v53 = v43;
        }

        v54 = v47 - 1;
        v55 = v44;
        do
        {
          v56 = v49;
          v57 = v48;
          if (v54 <= v53)
          {
            do
            {
              ++v51;
              if ((*(v56 + v55) & 0x21) == 1)
              {
                ++v52;
              }

              ++v57;
              v56 += v99;
            }

            while (v57 < v53);
          }

          v37 = v55++ < result;
        }

        while (v37);
      }

      else
      {
        if (v45 > result)
        {
          goto LABEL_84;
        }

        v51 = 0;
        v52 = 0;
        if (v43 >= v41)
        {
          v58 = a2 - 1;
        }

        else
        {
          v58 = v43;
        }

        v59 = v47 - 1;
        v60 = v44;
        do
        {
          v61 = v49;
          v62 = v48;
          if (v59 <= v58)
          {
            do
            {
              ++v51;
              if ((*(v61 + v60) & 0x21) == 1)
              {
                ++v52;
              }

              ++v62;
              v61 += v99;
            }

            while (v62 < v58);
          }

          v37 = v60++ < result;
        }

        while (v37);
      }

      if (v52 == v51)
      {
LABEL_84:
        *(v14 + v50) |= 2u;
      }

      if (v43 == a2)
      {
        goto LABEL_88;
      }
    }
  }

  return result;
}

uint64_t computeMask_foregroundContinuousGradient_backgroundSingleColor(unsigned int a1, int a2, int a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a1 >= a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = a1;
  }

  v21 = a2 * a1;
  v167 = v20;
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = 1.0;
    v24 = 0.0;
    while (1)
    {
      if (a3)
      {
        v25 = *(a6 + v22) & 8;
        if (*(a5 + v22))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v25 = *(a5 + v22) & 8;
        if (*(a5 + v22))
        {
LABEL_10:
          if (v25)
          {
            *(v173[0].i64 + 4) = 0;
            v173[0].i32[0] = 0;
            v171 = *a4;
            v172 = *(a4 + 2);
            if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v171, v22, v173, 0, *&v171))
            {
              v26 = vmulq_f32(v173[0], a9);
              v26.f32[0] = fminf(fmaxf(v26.f32[2] + vaddv_f32(*v26.f32), 0.0), 1.0);
              v23 = fminf(v23, v26.f32[0]);
              v24 = fmaxf(v24, v26.f32[0]);
            }
          }
        }
      }

      if (v21 == ++v22)
      {
        goto LABEL_16;
      }
    }
  }

  v24 = 0.0;
  v23 = 1.0;
LABEL_16:
  v130 = a6;
  __asm { FMOV            V0.4S, #-1.0 }

  v31 = vaddq_f32(a10, _Q0);
  v32 = vmulq_f32(v31, v31);
  v33 = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
  v137 = a1;
  v34 = a1 - 1;
  v35 = a5;
  if (a1 >= 1 && v33 < 0.117647059)
  {
    v36 = 0;
    do
    {
      while (1)
      {
        v37 = v36;
        v38 = a2;
        v39 = a2 - 1;
        if (a2 >= 1)
        {
          break;
        }

        if (++v36 == a1)
        {
          goto LABEL_35;
        }
      }

      do
      {
        *(a5 + v37) &= ~0x80u;
        v37 += a1;
        --v38;
      }

      while (v38);
      ++v36;
    }

    while (v36 != a1);
    v40 = 0;
    do
    {
      v41 = 0;
      do
      {
        computeIconSegmentationFlagForConnectedBackgroundHelper(a1, a2, v41, v40, a5);
        computeIconSegmentationFlagForConnectedBackgroundHelper(a1, a2, v41++, v39, a5);
      }

      while (a1 != v41);
      for (i = a1; i > 0; computeIconSegmentationFlagForConnectedBackgroundHelper(a1, a2, i, v39, a5))
      {
        computeIconSegmentationFlagForConnectedBackgroundHelper(a1, a2, --i, v40, a5);
      }

      v43 = 0;
      do
      {
        computeIconSegmentationFlagForConnectedBackgroundHelper(a1, a2, v40, v43, a5);
        computeIconSegmentationFlagForConnectedBackgroundHelper(a1, a2, v34, v43++, a5);
      }

      while (a2 != v43);
      for (j = a2; j > 0; computeIconSegmentationFlagForConnectedBackgroundHelper(a1, a2, v34, j, a5))
      {
        computeIconSegmentationFlagForConnectedBackgroundHelper(a1, a2, v40, --j, a5);
      }

      if (v40 >= --v34)
      {
        break;
      }

      v45 = v40++ < --v39;
    }

    while (v45);
  }

LABEL_35:
  if (a1 >= 1)
  {
    v46 = 0;
    v129 = 0;
    v47 = v24 - fminf(v23, v24 + -0.00001);
    v48 = a15;
    v50 = fmaxf(1.0 - (v47 * fminf(0.5 / v47, 1.6)), 0.5);
    v134 = v167 / 200 + 7;
    v51 = a2;
    v147 = vsubq_f32(a11, a10);
    v52 = 1.0 - v50;
    v138 = vdupq_n_s32(0x437F0000u);
    v135 = -7 - v167 / 200;
    v126 = v33;
    v53 = v130;
    v127 = a7;
    v128 = a8;
    while (v51 < 1)
    {
LABEL_139:
      ++v46;
      ++v135;
      v129 = v46 >= v137;
      if (v46 == v137)
      {
        goto LABEL_140;
      }
    }

    v154 = 0;
    v54 = 0;
    v55 = v135 & ~(v135 >> 31);
    v133 = (v46 - v134) & ~((v46 - v134) >> 31);
    v56 = v134 + v46;
    if (v134 + v46 >= (v137 - 1))
    {
      v56 = v137 - 1;
    }

    v149 = v56;
    v132 = v53 + v55;
    v131 = v35 + v55;
    v144 = -7 - v167 / 200;
    v142 = v46;
    while (1)
    {
      v57 = a12;
      v145 = v54;
      v58 = v46 + v54 * v137;
      *(v173[0].i64 + 4) = 0;
      v173[0].i32[0] = 0;
      v170 = 0.0;
      v171 = *a4;
      v172 = *(a4 + 2);
      if ((ISSegmentationSamples_readAlmostOpaqueSample_i(&v171, v46 + v54 * v137, v173, &v170, *&v171) & 1) == 0)
      {
        break;
      }

      v60 = *(v35 + v58);
      v140 = v58;
      if (a3)
      {
        v61 = *(v53 + v58) & 4;
      }

      else
      {
        v61 = v60 & 4;
      }

      if (v33 < 0.117647059)
      {
        v171 = *a4;
        v172 = *(a4 + 2);
        if (testEyeFeature(v137, v51, v46, v145, &v171, a5))
        {
LABEL_141:
          v124 = v129;
          return v124 & 1;
        }
      }

      if (a3)
      {
        v163 = v173[0];
        *v64.i64 = ISSegmentationMathUtils_clampedProject(v173[0], a10, a11);
        v65 = vsubq_f32(v163, v64);
      }

      else
      {
        v65 = vsubq_f32(v173[0], a10);
      }

      v66 = vmulq_f32(v65, v65);
      v67 = a14;
      v68 = a13;
      a12 = v57;
      v69 = sqrtf(v66.f32[2] + vaddv_f32(*v66.f32));
      v70 = 0uLL;
      v71 = 0;
      if (v69 < 0.00784313725)
      {
        v72 = 0.0;
        goto LABEL_125;
      }

      _NF = v69 < 0.0215686275 && v170 < 1.0;
      v72 = 0.0;
      if (!_NF)
      {
        if ((v60 & 1) != 0 && v61)
        {
          v74 = v173[0];
          v75 = a10;
          goto LABEL_124;
        }

        if (v133 > v149)
        {
          goto LABEL_141;
        }

        v164 = 0;
        v76 = 0;
        v77 = v144 & ~(v144 >> 31);
        v141 = v77 - 1;
        v78 = v132 + v137 * v77;
        v79 = v131 + v137 * v77;
        v80 = v135 & ~(v135 >> 31);
        v81 = (v135 & ~(v135 >> 31)) + v137 * v77;
        v82 = v81;
        v83 = v134 + v145;
        if (v134 + v145 >= a2 - 1)
        {
          v83 = a2 - 1;
        }

        v148 = (v145 - v134) & ~((v145 - v134) >> 31);
        v84 = v83;
        v155 = 0x7FFFFFFF;
        v157 = 0u;
        v161 = v131 + v137 * v77;
        v153 = v132 + v137 * v77;
        while (1)
        {
          v146 = v80;
          if (v148 <= v84)
          {
            break;
          }

LABEL_93:
          v80 = v146 + 1;
          ++v78;
          ++v79;
          ++v82;
          if (v146 >= v149)
          {
            v93.i32[1] = a10.i32[1];
            if (v76 <= 0)
            {
              v152 = 0u;
              v95 = 3.4028e38;
              v75 = a10;
              a7 = v127;
              a8 = v128;
              v53 = v130;
              v68 = a13;
            }

            else
            {
              a7 = v127;
              a8 = v128;
              v53 = v130;
              if (v164)
              {
                v94 = v173[0];
              }

              else
              {
                *v93.i32 = v76;
                v94 = vdivq_f32(v157, vdupq_lane_s32(v93, 0));
              }

              v165 = v94;
              if (a3)
              {
                v169.i32[0] = 0;
                v158 = v173[0];
                LODWORD(v171) = 0;
                getRatioAndAlpha(v169.i32, &v171, vsubq_f32(v173[0], v94), vsubq_f32(a10, v94), vsubq_f32(a11, v94));
                v96 = a10;
                v97 = v165;
                v98 = vmlaq_n_f32(a10, v147, fminf(fmaxf(*v169.i32, 0.0), 1.0));
                v99 = vmlaq_n_f32(v98, vsubq_f32(v165, v98), fminf(fmaxf(1.0 - *&v171, 0.0), 1.0));
                v100 = v158;
              }

              else
              {
                *v99.i64 = ISSegmentationMathUtils_clampedProject(v173[0], a10, v94);
                v96 = a10;
                v97 = v165;
                v100 = v173[0];
                v98 = a10;
              }

              v101 = vsubq_f32(v100, v99);
              v102 = vmulq_f32(v101, v101);
              v102.f32[0] = sqrtf(v102.f32[2] + vaddv_f32(*v102.f32));
              v100.i32[0] = 2139095039;
              v103 = vdupq_lane_s32(*&vcgtq_f32(v100, v102), 0);
              v75 = vbslq_s8(v103, v98, v96);
              v152 = vbslq_s8(v103, v97, 0);
              v95 = fminf(v102.f32[0], 3.4028e38);
              v68 = a13;
              a12 = v57;
            }

            v104 = v135 & ~(v135 >> 31);
            while (v148 > v84)
            {
LABEL_105:
              ++v153;
              ++v161;
              ++v81;
              v45 = v104++ < v149;
              v67 = a14;
              if (!v45)
              {
                v45 = v95 <= 1.2;
                v51 = a2;
                v33 = v126;
                v46 = v142;
                v74 = v152;
                if (!v45)
                {
                  goto LABEL_141;
                }

LABEL_124:
                v114 = vmulq_f32(v74, a9);
                v115 = v74;
                v72 = fminf(fmaxf(v114.f32[2] + vaddv_f32(*v114.f32), 0.0), 1.0);
                v70 = v115;
                v116 = vsubq_f32(v115, v75);
                v117 = vmulq_f32(v116, vsubq_f32(v173[0], v75));
                v118 = vmulq_f32(v116, v116);
                *v117.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)), vadd_f32(vzip1_s32(*v117.i8, *v118.i8), vzip2_s32(*v117.i8, *v118.i8)));
                v59 = vdup_lane_s32(*v117.i8, 1);
                v71 = vdiv_f32(*v117.i8, v59);
                *v71.i32 = fminf(fmaxf(*v71.i32, 0.0), 1.0);
                goto LABEL_125;
              }
            }

            v105 = 0;
            v106 = v141;
            while (2)
            {
              v166 = v75;
              *(v169.i64 + 4) = 0;
              v169.i32[0] = 0;
              v171 = *a4;
              v172 = *(a4 + 2);
              if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v171, v81 + v105, &v169, 0, *&v171))
              {
                v107 = *(v161 + v105);
                if (a3)
                {
                  a12 = v57;
                  if ((v107 & 1) != 0 && (*(v153 + v105) & 8) != 0)
                  {
                    v168 = 0.0;
                    v156 = v169;
                    v159 = v173[0];
                    LODWORD(v171) = 0;
                    getRatioAndAlpha(&v168, &v171, vsubq_f32(v173[0], v169), vsubq_f32(a10, v169), vsubq_f32(a11, v169));
                    v108 = vmlaq_n_f32(a10, v147, fminf(fmaxf(v168, 0.0), 1.0));
                    v109 = vmlaq_n_f32(v108, vsubq_f32(v156, v108), fminf(fmaxf(1.0 - *&v171, 0.0), 1.0));
                    v110 = v159;
LABEL_115:
                    v111 = vsubq_f32(v110, v109);
                    v112 = vmulq_f32(v111, v111);
                    v113 = sqrtf(v112.f32[2] + vaddv_f32(*v112.f32));
                    v68 = a13;
                    a12 = v57;
                    v75 = v166;
                    if (v113 < v95)
                    {
                      v152 = v169;
                      v95 = v113;
                      v75 = v108;
                    }

LABEL_119:
                    ++v106;
                    v105 += v137;
                    if (v106 >= v84)
                    {
                      goto LABEL_105;
                    }

                    continue;
                  }

                  v68 = a13;
LABEL_118:
                  v75 = v166;
                  goto LABEL_119;
                }

                if ((~v107 & 9) == 0)
                {
                  *v109.i64 = ISSegmentationMathUtils_clampedProject(v173[0], a10, v169);
                  v110 = v173[0];
                  v108 = a10;
                  goto LABEL_115;
                }
              }

              break;
            }

            v68 = a13;
            a12 = v57;
            goto LABEL_118;
          }
        }

        v85 = 0;
        v86 = v80 - v142;
        if (v80 - v142 < 0)
        {
          v86 = v142 - v80;
        }

        v151 = v86;
        v87 = v144 & ~(v144 >> 31);
        while (2)
        {
          *(v169.i64 + 4) = 0;
          v169.i32[0] = 0;
          v171 = *a4;
          v172 = *(a4 + 2);
          if (ISSegmentationSamples_readAlmostOpaqueSample_i(&v171, v82 + v85, &v169, 0, *&v171))
          {
            if (a3)
            {
              v88 = *(v78 + v85) & 4;
            }

            else
            {
              v88 = *(v79 + v85) & 4;
            }

            a12 = v57;
            if ((*(v79 + v85) & 1) != 0 && v88)
            {
              v89 = v154 + v87;
              if (v154 + v87 < 0)
              {
                v89 = -v89;
              }

              v90 = v89 + v151;
              if (v90 < v155)
              {
                v164 = 0;
                v76 = 0;
                v157 = 0u;
                v155 = v90;
                goto LABEL_91;
              }

              if (v90 == v155)
              {
LABEL_91:
                ++v76;
                v157 = vaddq_f32(v157, v169);
                v91 = vsubq_f32(v173[0], v169);
                v92 = vmulq_f32(v91, v91);
                v164 |= sqrtf(v92.f32[2] + vaddv_f32(*v92.f32)) < 0.00784313725;
              }
            }
          }

          else
          {
            a12 = v57;
          }

          v85 += v137;
          v45 = v87++ < v84;
          if (!v45)
          {
            goto LABEL_93;
          }

          continue;
        }
      }

LABEL_125:
      v58 = v140;
      if (a7)
      {
        *(a7 + v140) = ((*v71.i32 * (v50 + (fminf(fmaxf(1.0 - ((v24 - v72) / v47), 0.0), 1.0) * v52))) * 255.0);
        v67 = a14;
      }

      v35 = a5;
      v48 = a15;
      v62 = v145;
      if (a8)
      {
        *(a8 + v140) = (*v71.i32 * 255.0);
        v67 = a14;
      }

      if (a12)
      {
        v59.i32[0] = 1132396544;
        v119 = vdup_lane_s32(v59, 0);
        v119.f32[0] = (v50 + (fminf(fmaxf(1.0 - ((v24 - v72) / v47), 0.0), 1.0) * v52)) * 255.0;
        v120 = vuzp1_s16(vcvt_s32_f32(vmul_n_f32(v119, *v71.i32)), v71);
        v121 = vzip1_s16(v120, v120);
        v121.i16[2] = v120.i16[0];
        *(a12 + 4 * v140) = vuzp1_s8(v121, v71).u32[0];
      }

      if (v68)
      {
        v122.i64[0] = vmulq_f32(v70, v138).u64[0];
        v122.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(255.0, v70, 2)) | 0x437F000000000000;
        *(v68 + 4 * v140) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v122, *v71.i32))), v71).u32[0];
      }

      if (v67)
      {
        *(a14 + v140) = (*v71.i32 * 255.0);
      }

      if (a15)
      {
        v123.i64[0] = vmulq_f32(v70, v138).u64[0];
        v123.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(255.0, v70, 2)) | 0x437F000000000000;
        v63 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v123, *v71.i32)));
LABEL_137:
        *(v48 + 4 * v58) = vuzp1_s8(v63, v63).u32[0];
      }

LABEL_138:
      v54 = v62 + 1;
      ++v144;
      --v154;
      if (v54 == a2)
      {
        goto LABEL_139;
      }
    }

    a12 = v57;
    if (a7)
    {
      *(a7 + v58) = 0;
    }

    v62 = v145;
    if (a8)
    {
      *(a8 + v58) = 0;
    }

    if (v57)
    {
      *(v57 + 4 * v58) = 0;
    }

    if (a13)
    {
      *(a13 + 4 * v58) = 0;
    }

    if (a14)
    {
      *(a14 + v58) = 0;
    }

    if (!v48)
    {
      goto LABEL_138;
    }

    v63 = 0;
    goto LABEL_137;
  }

LABEL_140:
  v124 = 1;
  return v124 & 1;
}

BOOL backgroundIsContinuousGradientVertically(int *a1, uint64_t a2, int a3, int a4)
{
  v4 = a1[1];
  if (v4 - a4 <= a4)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = *a1;
  v9 = a4;
  v10 = v4 - a4;
  v11 = (a2 + a3 + v8 * a4);
  v12 = a3 + v8 * a4;
  v13 = v4 - 2 * a4;
  v19 = 0u;
  while (1)
  {
    if ((*v11 & 9) != 8)
    {
      goto LABEL_8;
    }

    v22.i32[2] = 0;
    v22.i64[0] = 0;
    v20 = *a1;
    v21 = *(a1 + 2);
    if (!ISSegmentationSamples_readAlmostOpaqueSample_i(&v20, v12, &v22, 0, *&v20))
    {
      goto LABEL_8;
    }

    if (v7)
    {
      v14 = vsubq_f32(v22, v19);
      v15 = vmulq_f32(v14, v14);
      if ((v15.f32[2] + vaddv_f32(*v15.f32)) > 0.0784)
      {
        break;
      }
    }

    v7 = 1;
    v19 = v22;
LABEL_8:
    v11 += v8;
    v6 = ++v9 >= v10;
    v12 += v8;
    if (!--v13)
    {
      return v6;
    }
  }

  v17 = _ISDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    backgroundIsContinuousGradientVertically_cold_1(v9, a3, v17);
  }

  return v6;
}

uint64_t lightenColorOverDarkBackground(__n128 *a1, __n128 a2)
{
  if (ISSegmentationMathUtils_contrastRatio(a2, vdupq_n_s32(0x3DA0902Eu)) >= 4.5)
  {
    result = 1;
    goto LABEL_13;
  }

  *v4.f32 = ISSegmentationMathUtils_rgb2hsv(a2);
  v3 = v4.f32[2] + 0.05;
  v4.f32[2] = v3;
  if (v3 > 1.0)
  {
    v5 = v4;
LABEL_8:
    v9 = v5.f32[1] + -0.05;
    if (v9 >= 0.0)
    {
      __asm { FMOV            V4.4S, #1.0 }

      _Q4.i32[0] = v4.i32[0];
      v14 = _Q4;
      v14.i32[1] = v4.i32[1];
      v20 = v14;
      _Q4.f32[1] = v5.f32[1] + -0.05;
      _Q4.i32[3] = v5.i32[3];
      v23 = vdupq_n_s32(0x3DA0902Eu);
      while (1)
      {
        v28 = v9;
        v26 = _Q4.i32[3];
        v16.n128_f64[0] = ISSegmentationMathUtils_hsv2rgb(_Q4);
        v22 = v16;
        if (ISSegmentationMathUtils_contrastRatio(v16, v23) >= 3.0)
        {
          break;
        }

        v9 = v28 + -0.05;
        _Q4.i64[0] = __PAIR64__(LODWORD(v9), v20.u32[0]);
        _Q4.i64[1] = __PAIR64__(v26, v20.u32[2]);
        if (v9 < 0.0)
        {
          goto LABEL_12;
        }
      }

      v17 = v22;
      goto LABEL_18;
    }

LABEL_12:
    result = 0;
LABEL_13:
    v17 = a2;
    if (!a1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v21 = vdupq_n_s32(0x3DA0902Eu);
  v7 = v4;
  while (1)
  {
    v25 = v3;
    v27 = v4;
    v24 = v7.i32[3];
    v8.n128_f64[0] = ISSegmentationMathUtils_hsv2rgb(v7);
    v19 = v8;
    if (ISSegmentationMathUtils_contrastRatio(v8, v21) >= 4.5)
    {
      break;
    }

    v3 = v25 + 0.05;
    v4 = v27;
    v4.f32[2] = v3;
    v5 = v4;
    v5.i32[3] = v24;
    v7 = v5;
    if (v3 > 1.0)
    {
      goto LABEL_8;
    }
  }

  v17 = v19;
LABEL_18:
  result = 1;
  if (!a1)
  {
    return result;
  }

LABEL_14:
  *a1 = v17;
  return result;
}

uint64_t testEyeFeature(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v82.i32[2] = 0;
  v82.i64[0] = 0;
  v80 = *a5;
  v81 = *(a5 + 16);
  result = ISSegmentationSamples_readAlmostOpaqueSample_xy(&v80, a3, a4, &v82, 0);
  if (!result)
  {
    return result;
  }

  __asm { FMOV            V1.4S, #-1.0 }

  v78 = _Q1;
  v18 = vaddq_f32(v82, _Q1);
  v19 = vmulq_f32(v18, v18);
  if (sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) >= 0.27451)
  {
    return 0;
  }

  v20 = v9 <= 3 ? 3 : v9;
  v21 = a1 - 1;
  v22 = v9 + 3 >= a1 - 1 ? a1 - 1 : v9 + 3;
  if (v20 - 3 <= v22)
  {
    v23 = 0;
    v24 = a4 + 3;
    if (a4 + 3 >= a2 - 1)
    {
      v24 = a2 - 1;
    }

    v25 = a4 <= 3 ? 3 : a4;
    v26 = a6 + (v25 - 3) * a1;
    v27 = v25 - 3;
    v28 = v20 - 3;
    v29 = v22 + 1;
    v30 = v24 - v25 + 4;
    do
    {
      v31 = v30;
      v32 = v26;
      if (v27 <= v24)
      {
        do
        {
          v23 |= *(v32 + v28) < 0;
          v32 += a1;
          --v31;
        }

        while (v31);
      }

      ++v28;
    }

    while (v29 != v28);
    if (v23)
    {
      return 0;
    }
  }

  v33 = 351843721 * a2 * a1;
  v34 = v33 >> 63;
  v35 = v33 >> 45;
  v36 = a1 / 20;
  v37 = (v9 - v36) & ~((v9 - v36) >> 31);
  if (v37 <= v9)
  {
    v40 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v72 = _Q0;
    v42 = v9;
    while (1)
    {
      v38 = v40;
      v79.i32[2] = 0;
      v79.i64[0] = 0;
      v80 = *a5;
      v81 = *(a5 + 16);
      if (!ISSegmentationSamples_readAlmostOpaqueSample_xy(&v80, v42, a4, &v79, 0))
      {
        goto LABEL_31;
      }

      v43 = vmulq_f32(v79, v79);
      v44 = sqrtf(v43.f32[2] + vaddv_f32(*v43.f32));
      if (!v38)
      {
        if (v44 < 0.35294)
        {
          v40 = 1;
        }

        else
        {
          v75 = v79;
          *v51.i64 = ISSegmentationMathUtils_clampedProject(v79, 0, v72);
          v40 = 0;
          v52 = vsubq_f32(v75, v51);
          v53 = vmulq_f32(v52, v52);
          if (sqrtf(v53.f32[2] + vaddv_f32(*v53.f32)) >= 0.19608)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_32;
      }

      if (v44 >= 0.35294)
      {
        break;
      }

      v40 = (v38 + 1);
LABEL_32:
      if (v42-- <= v37)
      {
        v39 = 0;
        LODWORD(v38) = v40;
        goto LABEL_40;
      }
    }

    v45 = vaddq_f32(v79, v78);
    v46 = vmulq_f32(v45, v45);
    if (sqrtf(v46.f32[2] + vaddv_f32(*v46.f32)) < 0.27451)
    {
      goto LABEL_23;
    }

    v74 = v79;
    *v47.i64 = ISSegmentationMathUtils_clampedProject(v79, 0, v72);
    v48 = vsubq_f32(v74, v47);
    v49 = vmulq_f32(v48, v48);
    if (sqrtf(v49.f32[2] + vaddv_f32(*v49.f32)) >= 0.19608)
    {
      v39 = 1;
      goto LABEL_40;
    }

LABEL_31:
    v40 = v38;
    goto LABEL_32;
  }

  LODWORD(v38) = 0;
LABEL_23:
  v39 = 0;
LABEL_40:
  v54 = v35 + v34;
  if (v36 + v9 >= v21)
  {
    v55 = v21;
  }

  else
  {
    v55 = v36 + v9;
  }

  if (v55 >= v9)
  {
    v58 = 0;
    v59 = v55 + 1;
    __asm { FMOV            V0.4S, #1.0 }

    v73 = _Q0;
    while (1)
    {
      v56 = v58;
      v79.i32[2] = 0;
      v79.i64[0] = 0;
      v80 = *a5;
      v81 = *(a5 + 16);
      if (!ISSegmentationSamples_readAlmostOpaqueSample_xy(&v80, v9, a4, &v79, 0))
      {
        goto LABEL_53;
      }

      v61 = vmulq_f32(v79, v79);
      v62 = sqrtf(v61.f32[2] + vaddv_f32(*v61.f32));
      if (!v56)
      {
        if (v62 < 0.35294)
        {
          v58 = 1;
        }

        else
        {
          v77 = v79;
          *v68.i64 = ISSegmentationMathUtils_clampedProject(v79, 0, v73);
          v58 = 0;
          v69 = vsubq_f32(v77, v68);
          v70 = vmulq_f32(v69, v69);
          if (sqrtf(v70.f32[2] + vaddv_f32(*v70.f32)) >= 0.19608)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_54;
      }

      if (v62 >= 0.35294)
      {
        break;
      }

      v58 = (v56 + 1);
LABEL_54:
      if (v59 == ++v9)
      {
        v57 = 0;
        LODWORD(v56) = v58;
        goto LABEL_61;
      }
    }

    v63 = vaddq_f32(v79, v78);
    v64 = vmulq_f32(v63, v63);
    if (sqrtf(v64.f32[2] + vaddv_f32(*v64.f32)) < 0.27451)
    {
      goto LABEL_45;
    }

    v76 = v79;
    *v65.i64 = ISSegmentationMathUtils_clampedProject(v79, 0, v73);
    v66 = vsubq_f32(v76, v65);
    v67 = vmulq_f32(v66, v66);
    if (sqrtf(v67.f32[2] + vaddv_f32(*v67.f32)) >= 0.19608)
    {
      v57 = 1;
      goto LABEL_61;
    }

LABEL_53:
    v58 = v56;
    goto LABEL_54;
  }

  LODWORD(v56) = 0;
LABEL_45:
  v57 = 0;
LABEL_61:
  v71 = v39 | v57;
  if (v56 <= v54)
  {
    v71 = 0;
  }

  if (v38 > v54)
  {
    return v71;
  }

  else
  {
    return 0;
  }
}

float *getRatioAndAlpha(float *result, float *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vmulq_f32(a3, a3);
  v6 = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  v7 = vmulq_f32(a4, a4);
  v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  v9 = v6;
  v10 = vmulq_f32(a5, a5);
  v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  if (sqrtf(v8) * 0.00001 > v9 && sqrtf(v11) * 0.00001 > v9)
  {
    if (result)
    {
      *result = 0.0;
    }

    v12 = 0.0;
    goto LABEL_13;
  }

  v13 = vsubq_f32(a5, a4);
  v14 = vrsqrte_f32(LODWORD(v8));
  v15 = vmul_f32(v14, vrsqrts_f32(LODWORD(v8), vmul_f32(v14, v14)));
  v16 = v11;
  v17 = vrsqrte_f32(LODWORD(v11));
  v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)));
  v19 = vmulq_f32(vmulq_n_f32(a4, vmul_f32(v15, vrsqrts_f32(LODWORD(v8), vmul_f32(v15, v15))).f32[0]), vmulq_n_f32(a5, vmul_f32(v18, vrsqrts_f32(LODWORD(v16), vmul_f32(v18, v18))).f32[0]));
  if ((v19.f32[2] + vaddv_f32(*v19.f32)) > 0.9992)
  {
    if (result)
    {
      v20 = vmulq_f32(vsubq_f32(a3, a4), v13);
      v21 = vmulq_f32(v13, v13);
      *v20.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v21.i8), vzip2_s32(*v20.i8, *v21.i8)));
      *result = vdiv_f32(*v20.i8, vdup_lane_s32(*v20.i8, 1)).u32[0];
    }

LABEL_12:
    v12 = 1.0;
    goto LABEL_13;
  }

  v22 = vmulq_f32(a4, v13);
  v23 = v22.f32[2] + vaddv_f32(*v22.f32);
  v24 = vmulq_f32(v13, v13);
  v25 = v24.f32[2] + vaddv_f32(*v24.f32);
  v26 = (v8 * v25) - (v23 * v23);
  if (v26 < 0.000001)
  {
    if (result)
    {
      v27 = vmulq_f32(vsubq_f32(a3, a4), v13);
      *result = (v27.f32[2] + vaddv_f32(*v27.f32)) / v25;
    }

    goto LABEL_12;
  }

  v28 = -v23;
  v29 = vmulq_f32(a3, a4);
  v30 = vaddv_f32(*v29.f32);
  v31 = vmulq_f32(a3, v13);
  v32 = v31.f32[2] + vaddv_f32(*v31.f32);
  v12 = ((v32 * v28) + (v25 * (v29.f32[2] + v30))) / v26;
  if (result)
  {
    *result = ((((v29.f32[2] + v30) * v28) + (v8 * v32)) / v26) / v12;
  }

LABEL_13:
  if (a2)
  {
    *a2 = v12;
  }

  return result;
}

uint64_t computeIconSegmentationFlagForConnectedBackgroundHelper(uint64_t result, int a2, int a3, int a4, uint64_t a5)
{
  v5 = a3 + a4 * result;
  if (!a3)
  {
    v6 = 1;
    goto LABEL_24;
  }

  v6 = 1;
  if (result - 1 == a3 || !a4 || a2 - 1 == a4)
  {
LABEL_24:
    if (*(a5 + v5) & 1) == 0 && (v6)
    {
      *(a5 + v5) |= 0x80u;
    }

    return result;
  }

  if (a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  if (a3 + 1 < result - 1)
  {
    v8 = a3 + 1;
  }

  else
  {
    v8 = result - 1;
  }

  if (v7 - 1 <= v8)
  {
    v6 = 0;
    if (a4 + 1 < a2 - 1)
    {
      v9 = a4 + 1;
    }

    else
    {
      v9 = a2 - 1;
    }

    if (a4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a4;
    }

    v11 = v10 - 1;
    v12 = (v9 + 1) - v10;
    v13 = v10 - 1;
    v14 = result;
    v15 = v7 - 1;
    v16 = (v8 + 1);
    v17 = a5 + v13 * result;
    v18 = v12 + 1;
    do
    {
      result = v18;
      v19 = v17;
      if (v11 <= v9)
      {
        do
        {
          v6 |= *(v19 + v15) < 0;
          v19 += v14;
          --result;
        }

        while (result);
      }

      ++v15;
    }

    while (v15 != v16);
    goto LABEL_24;
  }

  return result;
}

BOOL _ISErrorIsXPCConnectionInterrupted(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    if ([v3 isEqual:*MEMORY[0x1E696A250]])
    {
      v4 = [v2 code] == 4097;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1A77DDE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id _ISColorForString(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (![v1 caseInsensitiveCompare:@"Black"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 12;
LABEL_49:
    v16 = [v17 numberWithInt:v18];
    goto LABEL_50;
  }

  if (![v1 caseInsensitiveCompare:@"White"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 11;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Red"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 0;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Orange"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 1;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Yellow"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 2;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Green"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 3;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Mint"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 5;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Teal"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 4;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Cyan"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 6;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Blue"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 7;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Indigo"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 8;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Purple"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 9;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Pink"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 10;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Brown"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 14;
    goto LABEL_49;
  }

  if (![v1 caseInsensitiveCompare:@"Gray"])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = 13;
    goto LABEL_49;
  }

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"1234567890."];
  v3 = [v1 componentsSeparatedByString:{@", "}];
  v4 = v3;
  if (v3 && [v3 count] == 4)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v33 = v4;
      v8 = 0;
      v9 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v11 stringByTrimmingCharactersInSet:v2];
          if (![v11 length] || objc_msgSend(v12, "length") || (objc_msgSend(v11, "floatValue"), v13 < 0.0) || (objc_msgSend(v11, "floatValue"), v14 > 1.0))
          {
            v15 = _ISDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = v11;
            }

            v8 = 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);

      v4 = v33;
      if (v8)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    v21 = [v5 objectAtIndex:0];
    [v21 floatValue];
    v23 = v22;

    v24 = [v5 objectAtIndex:1];
    [v24 floatValue];
    v26 = v25;

    v27 = [v5 objectAtIndex:2];
    [v27 floatValue];
    v29 = v28;

    v30 = [v5 objectAtIndex:3];
    [v30 floatValue];
    v32 = v31;

    v16 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:v23 green:v26 blue:v29 alpha:v32];
    goto LABEL_55;
  }

LABEL_33:
  v16 = 0;
LABEL_55:

LABEL_50:
  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

id _IFColorFromString(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = _ISColorForString(a1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v4 = v2;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 intValue];
    v2 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:v3];
    goto LABEL_5;
  }

  v5 = _ISDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v1;
    _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_INFO, "Unexpected color %@", &v8, 0xCu);
  }

  v4 = 0;
LABEL_9:

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

id _IS_colorStringFromColor(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = _IS_colorStringFromIFColor(v1);
LABEL_5:
    v3 = v2;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = _IS_colorStringFromSystemColor(v1);
    goto LABEL_5;
  }

  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v1;
    _os_log_impl(&dword_1A77B8000, v4, OS_LOG_TYPE_INFO, "Unexpected color %@", &v7, 0xCu);
  }

  v3 = 0;
LABEL_9:

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

id _IS_colorStringFromIFColor(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = a1;
    v3 = [v2 ciColor];
    [v3 red];
    v5 = v4;
    v6 = [v2 ciColor];
    [v6 green];
    v8 = v7;
    v9 = [v2 ciColor];
    [v9 blue];
    v11 = v10;
    v12 = [v2 ciColor];

    [v12 alpha];
    v14 = [v1 stringWithFormat:@"%f, %f, %f, %f", v5, v8, v11, v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

__CFString *_IS_colorStringFromSystemColor(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  else
  {
    return off_1E77C6A48[a1];
  }
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

__CFData *_outpaintCGImage(CGImage *a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  v8 = 0;
  if (CGImageGetBitsPerComponent(a1) != 8 || BitsPerPixel != 32)
  {
    return v8;
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  v12 = BytesPerRow >= 0 ? BytesPerRow : BytesPerRow + 3;
  AlphaInfo = CGImageGetAlphaInfo(a1);
  v8 = 0;
  if (AlphaInfo > kCGImageAlphaNoneSkipLast)
  {
    return v8;
  }

  v14 = AlphaInfo;
  if (((1 << AlphaInfo) & 0x2A) == 0)
  {
    return v8;
  }

  DataProvider = CGImageGetDataProvider(a1);
  if (!DataProvider)
  {
    return 0;
  }

  v16 = CGDataProviderCopyData(DataProvider);
  v8 = v16;
  if (!v16)
  {
    return v8;
  }

  BytePtr = CFDataGetBytePtr(v16);
  if (!BytePtr)
  {
    CFRelease(v8);
    return 0;
  }

  v18 = BytePtr;
  v19 = v12 >> 2;
  v20 = Width;
  v21 = Width << 32;
  v22 = malloc_type_malloc((v21 * Height) >> 30, 0x100004052888210uLL);
  v29 = v20;
  __dst = v22;
  if (v12 >> 2 <= v20)
  {
    memcpy(v22, v18, (v21 * Height) >> 30);
  }

  else if (Height >= 1)
  {
    v23 = v21 >> 30;
    v24 = Height & 0x7FFFFFFF;
    v25 = 4 * v19;
    v26 = v22;
    do
    {
      memcpy(v26, v18, v23);
      v18 += v25;
      v26 += v23;
      --v24;
    }

    while (v24);
  }

  CFRelease(v8);
  v28 = malloc_type_malloc((a2 * a2), 0x100004077774924uLL);
  v34 = 0;
  v33 = 0;
  v40 = v29;
  v41 = Height;
  v42 = 0;
  v43 = v14;
  v44 = __dst;
  v36 = a2;
  v37 = a2;
  v38 = 0;
  v39 = v28;
  _outpaintCorner(&v40, &v36, 0, a2, 0, a2, a2, a2, a2, a3);
  v40 = v29;
  v41 = Height;
  v42 = 0;
  v43 = v14;
  v44 = __dst;
  v36 = a2;
  v37 = a2;
  v38 = 0;
  v39 = v28;
  _outpaintCorner(&v40, &v36, v40 - a2, v40, 0, a2, v40 - a2, a2, a2, a3);
  v40 = v29;
  v41 = Height;
  v42 = 0;
  v43 = v14;
  v44 = __dst;
  v36 = a2;
  v37 = a2;
  v38 = 0;
  v39 = v28;
  _outpaintCorner(&v40, &v36, 0, a2, Height - a2, Height, a2, Height - a2, a2, a3);
  v40 = v29;
  v41 = Height;
  v42 = 0;
  v43 = v14;
  v44 = __dst;
  v31[0] = a2;
  v31[1] = a2;
  v31[2] = 0;
  v32 = 0;
  v35 = v28;
  _outpaintCorner(&v40, v31, v40 - a2, v40, Height - a2, Height, v40 - a2, Height - a2, a2, a3);
  free(v28);
  v40 = v29;
  v41 = Height;
  v42 = 0;
  v43 = v14;
  v44 = __dst;
  v8 = ISCreateCGImageSegmentationSamples(&v40);
  free(__dst);
  return v8;
}

__CFData *_removeShadowInCGImage(CGImage *a1)
{
  if (a1)
  {
    ColorSpace = CGImageGetColorSpace(a1);
    if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
    {
      BitsPerPixel = CGImageGetBitsPerPixel(a1);
      if (CGImageGetBitsPerComponent(a1) == 8 && BitsPerPixel == 32)
      {
        Width = CGImageGetWidth(a1);
        Height = CGImageGetHeight(a1);
        BytesPerRow = CGImageGetBytesPerRow(a1);
        v7 = BytesPerRow >= 0 ? BytesPerRow : BytesPerRow + 3;
        AlphaInfo = CGImageGetAlphaInfo(a1);
        if ((AlphaInfo & 0xFFFFFFFD) == 1)
        {
          v9 = AlphaInfo;
          DataProvider = CGImageGetDataProvider(a1);
          if (DataProvider)
          {
            v11 = CGDataProviderCopyData(DataProvider);
            if (v11)
            {
              v12 = v11;
              BytePtr = CFDataGetBytePtr(v11);
              if (BytePtr)
              {
                v14 = BytePtr;
                v15 = (v7 >> 2) - Width;
                v16 = malloc_type_malloc(4 * Width * Height, 0x100004052888210uLL);
                v20[0] = Width;
                v20[1] = Height;
                v20[2] = v15;
                v20[3] = v9;
                v21 = v14;
                v17 = _removeShadow(v20, v16);
                CFRelease(v12);
                if (!v17)
                {
                  v19 = ISCreateCGImageUchar4AlphaPremultiplied(Width, Height, v16);
                  free(v16);
                  return v19;
                }

                free(v16);
              }

              else
              {
                CFRelease(v12);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

ISFallbackIconDarkSegmented *_attemptDarkSegmentationWithCroppedCGImage(CGImage *a1, uint64_t a2)
{
  v3 = [[ISIconSegmentation alloc] initWithIdiom:a2];
  [(ISIconSegmentation *)v3 setEnableColorEnhancementInDarkImage:1];
  [(ISIconSegmentation *)v3 setEnableRecoloringSingleForegroundColorWithGradientBackgroundInDarkImage:1];
  v17 = 0;
  v4 = [(ISIconSegmentation *)v3 createDarkImageWithCGImage:a1 feedback:&v17];
  v5 = v17;
  v6 = v5;
  if (v4)
  {
    CGImageRelease(a1);
    v7 = [[ISSpecularClassification alloc] initWithSpecularImage:v4 useAlphaOnly:1];
    v8 = [[ISFallbackIconDarkSegmented alloc] initWithDarkImage:v4 drawsLightingEffects:[(ISSpecularClassification *)v7 classifySpecular] feedback:v6];
    CGImageRelease(v4);
  }

  else
  {
    v16 = v5;
    v9 = [(ISIconSegmentation *)v3 createForegroundImageWithCGImage:a1 feedback:&v16];
    v10 = v16;

    if (v9)
    {
      v11 = [[ISSpecularClassification alloc] initWithSpecularImage:v9 useAlphaOnly:1];
      v12 = [(ISSpecularClassification *)v11 classifySpecular];
      v13 = [ISFallbackIconFill alloc];
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = 0;
      }

      v8 = [(ISFallbackIconFill *)v13 initWithImage:a1 foregroundAndLightingEffectsImage:v14 feedback:v10];
      CGImageRelease(a1);
      CGImageRelease(v9);
    }

    else
    {
      v8 = [[ISFallbackIconFill alloc] initWithImage:a1 foregroundAndLightingEffectsImage:0 feedback:0];
      CGImageRelease(a1);
    }

    v6 = v10;
  }

  return v8;
}

ISFallbackIconTintedSegmented *_attemptTintedSegmentationWithCroppedCGImage(CGImage *a1, uint64_t a2)
{
  v3 = [[ISIconSegmentation alloc] initWithIdiom:a2];
  v9 = 0;
  v4 = [(ISIconSegmentation *)v3 createSolariumTintableImageWithCGImage:a1 feedback:&v9];
  v5 = v9;
  if (v4)
  {
    CGImageRelease(a1);
    v6 = [[ISSpecularClassification alloc] initWithSpecularImage:v4 useAlphaOnly:1];
    v7 = [[ISFallbackIconTintedSegmented alloc] initWithTintableImage:v4 drawsLightingEffects:[(ISSpecularClassification *)v6 classifySpecular] feedback:v5];
    CGImageRelease(v4);
  }

  else
  {
    v7 = [[ISFallbackIconFill alloc] initWithImage:a1 foregroundAndLightingEffectsImage:0 feedback:0];
    CGImageRelease(a1);
  }

  return v7;
}

uint64_t _outpaintCorner(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  v12 = result;
  if (a5 < a6)
  {
    v13.f32[0] = a7;
    v13.f32[1] = a8;
    v48 = v13;
    v14 = a5;
    do
    {
      if (a3 < a4)
      {
        v15 = 0;
        *&v16 = v14 + 0.5;
        v50 = v16;
        v17 = a3;
        do
        {
          v18.f32[0] = v17 + 0.5;
          v18.i32[1] = v50;
          v19 = vsub_f32(v18, v48);
          v54 = *a2;
          v55 = *(a2 + 16);
          if (sqrtf(vaddv_f32(vmul_f32(v19, v19))) >= (a9 - 2))
          {
            v20 = -1;
          }

          else
          {
            v20 = 0;
          }

          result = ISSegmentationMask_writeMaskValue_xy(&v54, v15, v14 - a5, v20);
          ++v17;
          ++v15;
        }

        while (a4 != v17);
      }

      ++v14;
    }

    while (v14 != a6);
  }

  v21 = a6;
  if (a9 - a10 + 3 >= 1)
  {
    v22 = a4 - 1;
    v23 = 1;
    v47 = a3;
    do
    {
      v24 = a5;
      if (a5 < v21)
      {
        do
        {
          if (a3 >= a4)
          {
            v37 = v24 + 1;
          }

          else
          {
            v25 = v24 - a5;
            v26 = v24 - 1;
            if (v24 - 1 <= a5)
            {
              v26 = a5;
            }

            v49 = v26;
            v40 = v24 + 1;
            v41 = v24;
            if (v24 + 1 < a6 - 1)
            {
              v27 = v24 + 1;
            }

            else
            {
              v27 = a6 - 1;
            }

            v28 = a3;
            v42 = v24 - a5;
            do
            {
              v54 = *a2;
              v55 = *(a2 + 16);
              result = ISSegmentationMask_readMaskValue_xy(&v54, v28 - a3, v25);
              if (result == 255)
              {
                v44 = v28;
                v45 = v28 - a3;
                if (v28 - 1 <= a3)
                {
                  v31 = a3;
                }

                else
                {
                  v31 = v28 - 1;
                }

                v30 = v28 + 1;
                if (v28 + 1 < v22)
                {
                  v32 = v28 + 1;
                }

                else
                {
                  v32 = v22;
                }

                if (v31 <= v32)
                {
                  v43 = v28 + 1;
                  v33 = 0;
                  v51 = 0u;
                  v34 = 0.0;
                  do
                  {
                    v35 = v49;
                    if (v49 <= v27)
                    {
                      do
                      {
                        v54 = *a2;
                        v55 = *(a2 + 16);
                        result = ISSegmentationMask_readMaskValue_xy(&v54, v31 - v47, v35 - a5);
                        if (v23 > result)
                        {
                          v53.i32[2] = 0;
                          v53.i64[0] = 0;
                          v52 = 0.0;
                          v54 = *v12;
                          v55 = *(v12 + 16);
                          result = ISSegmentationSamples_readSample_xy(&v54, v31, v35, &v53, &v52);
                          v29 = v52;
                          if (v52 >= 0.99)
                          {
                            ++v33;
                            HIDWORD(v29) = v53.i32[1];
                            v51 = vaddq_f32(v51, v53);
                            v34 = v34 + v52;
                          }
                        }

                        v36 = v35++ < v27;
                      }

                      while (v36);
                    }

                    v36 = v31++ < v32;
                  }

                  while (v36);
                  if (v33 >= 2)
                  {
                    *&v29 = v33;
                    v54 = *v12;
                    v55 = *(v12 + 16);
                    ISSegmentationSamples_writeSample_xy(&v54, v44, v41, vdivq_f32(v51, vdupq_lane_s32(*&v29, 0)), v34 / v33);
                    v54 = *a2;
                    v55 = *(a2 + 16);
                    v25 = v42;
                    result = ISSegmentationMask_writeMaskValue_xy(&v54, v45, v42, v23);
                    a3 = v47;
                    v22 = a4 - 1;
                  }

                  else
                  {
                    a3 = v47;
                    v22 = a4 - 1;
                    v25 = v42;
                  }

                  v30 = v43;
                }

                else
                {
                  a3 = v47;
                }
              }

              else
              {
                v30 = v28 + 1;
              }

              v28 = v30;
            }

            while (v30 != a4);
            v21 = a6;
            v37 = v40;
          }

          v24 = v37;
        }

        while (v37 != v21);
      }

      ++v23;
    }

    while (v23 != a9 - a10 + 4);
  }

  return result;
}

uint64_t _removeShadow(int *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = malloc_type_malloc(v3 * v4, 0x100004077774924uLL);
  v7 = v5;
  v8 = a1[1];
  if (v8 < 1)
  {
    goto LABEL_56;
  }

  v110 = 0;
  v9 = v4 - 1;
  v97 = v3 - 1;
  v98 = v4 - 1;
  v10 = *a1;
  v96 = v4;
  v99 = v5;
  do
  {
    if (v10 >= 1)
    {
      v11 = 0;
      if (v110 <= 2)
      {
        v12 = 2;
      }

      else
      {
        v12 = v110;
      }

      v13 = v12 - 2;
      v14 = v110 + 2;
      if (v110 + 2 >= v97)
      {
        v14 = v97;
      }

      v113 = v14;
      v15 = -2;
      v100 = v13;
      do
      {
        v16 = 2;
        if (v11 <= 2)
        {
          v17 = 2;
        }

        else
        {
          v17 = v11;
        }

        v18 = v11 + v10 * v110;
        v118 = *a1;
        v119 = *(a1 + 2);
        UcharSampleOpacity_i = ISSegmentationSamples_readUcharSampleOpacity_i(&v118, v18);
        if (v11 + 2 >= v9)
        {
          v19 = v9;
        }

        else
        {
          v19 = v11 + 2;
        }

        if (v13 <= v113)
        {
          v102 = v18;
          v104 = v11;
          v20 = 0;
          v21 = 0;
          v108 = v17;
          v22 = v17 - 2;
          v23 = v13;
          do
          {
            if (v22 <= v19)
            {
              if (v23 - v110 >= 0)
              {
                v24 = v23 - v110;
              }

              else
              {
                v24 = v110 - v23;
              }

              v25 = v108;
              do
              {
                v26 = v25 - 2;
                v27 = v15 + v25;
                if (v15 + v25 < 0)
                {
                  v27 = -v27;
                }

                if ((v27 + v24) <= 3)
                {
                  v118 = *a1;
                  v119 = *(a1 + 2);
                  UcharSampleOpacity_xy = ISSegmentationSamples_readUcharSampleOpacity_xy(&v118, v25 - 2, v23);
                  if (UcharSampleOpacity_xy < 0xFA)
                  {
                    ++v21;
                  }

                  if (UcharSampleOpacity_xy > 0xF9)
                  {
                    ++v20;
                  }
                }

                ++v25;
              }

              while (v26 < v19);
            }

            v64 = v23++ < v113;
          }

          while (v64);
          if (v21)
          {
            v29 = v20 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            v16 = 2;
          }

          else
          {
            v16 = 0;
          }

          v7 = v99;
          v9 = v98;
          v11 = v104;
          v13 = v100;
          v18 = v102;
        }

        v7[v18] = v16 | (UcharSampleOpacity_i > 0xF9);
        ++v11;
        v10 = *a1;
        --v15;
      }

      while (v11 < *a1);
      v8 = a1[1];
      v4 = v96;
    }

    ++v110;
  }

  while (v110 < v8);
  if (v8 < 1)
  {
    goto LABEL_56;
  }

  v30 = 0;
  v31 = 0;
  v32 = *a1;
  *&v6 = 0;
  v33 = 0uLL;
  v34 = 0.0;
  while (v32 < 1)
  {
LABEL_53:
    if (++v31 >= v8)
    {
      if (!v30 || *&v6 == 0.0)
      {
LABEL_56:
        free(v7);
        return 2;
      }

      if (v8 < 1)
      {
LABEL_112:
        free(v7);
        return 0;
      }

      v40 = 0;
      LODWORD(v41) = *a1;
      v82 = v7 - 7;
      v109 = -7;
      v88 = vdupq_n_s32(0x437F0000u);
      v83 = vdivq_f32(v33, vdupq_lane_s32(*&v6, 0));
      while (1)
      {
        v42 = v40 <= 7 ? 7 : v40;
        if (v41 >= 1)
        {
          break;
        }

LABEL_111:
        ++v40;
        --v109;
        if (v40 >= v8)
        {
          goto LABEL_112;
        }
      }

      v43 = 0;
      v93 = v42 - 7;
      v44 = v40 + 7;
      if (v40 + 7 >= v97)
      {
        v44 = v97;
      }

      v115 = v44;
      v86 = &v82[v4 * (v42 - 7)];
      v85 = v4 * (v42 - 7) - 7;
      v84 = v40;
      v90 = v42;
LABEL_66:
      if (v43 <= 7)
      {
        v45 = 7;
      }

      else
      {
        v45 = v43;
      }

      v92 = v43;
      v46 = (v43 + v41 * v40);
      v47 = v7[v46];
      *&v117[8] = 0;
      *v117 = 0;
      v118 = *a1;
      v119 = *(a1 + 2);
      v89 = v43 + v41 * v40;
      ISSegmentationSamples_readSample_i(&v118, v46, &v117[4], v117);
      if (v47)
      {
        v69.i64[0] = vmulq_f32(*&v117[4], v88).u64[0];
        v69.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(255.0, *&v117[4], 2)) | 0x437F000000000000;
        v70 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v69, *v117)));
      }

      else
      {
        if ((v47 & 2) == 0)
        {
          LODWORD(v48) = v92 + 7;
          if (v92 + 7 >= v9)
          {
            v48 = v9;
          }

          else
          {
            v48 = v48;
          }

          v94 = v48;
          if (v45 - 7 > v48)
          {
            goto LABEL_113;
          }

          v49 = 0;
          v50 = 0;
          v51 = &v86[v45];
          v52 = (v85 + v45);
          v87 = vmulq_n_f32(*&v117[4], *v117);
          v53 = v45 - 7;
          HIDWORD(v54) = 0;
          v112 = 0u;
          v105 = 0x7FFFFFFF;
          v107 = 0;
          v55 = 0.0;
          v56 = 0x7FFFFFFF;
          while (1)
          {
            v103 = v51;
            v101 = v52;
            v95 = v53;
            if (v93 <= v115)
            {
              break;
            }

LABEL_95:
            v51 = v103 + 1;
            v52 = (v101 + 1);
            v53 = v95 + 1;
            if (v95 >= v94)
            {
              v7 = v99;
              if (!v50)
              {
                goto LABEL_113;
              }

              v40 = v84;
              if (v49)
              {
                v68 = *&v117[4];
              }

              else
              {
                *&v54 = v50;
                v68 = vdivq_f32(v112, vdupq_lane_s32(*&v54, 0));
              }

              v71 = v92;
              v72 = v89;
              v73 = vsubq_f32(v68, v83);
              v74 = vmulq_f32(v73, v73);
              v75 = sqrtf(v74.f32[2] + vaddv_f32(*v74.f32));
              v9 = v98;
              if (v75 >= 0.000001)
              {
                LODWORD(v75) = *v117;
                v77 = vmlsq_lane_f32(vaddq_f32(v83, vsubq_f32(v87, v68)), v83, *&v75, 0);
                v78 = vmulq_f32(vmlsq_lane_f32(v87, v68, *&v75, 0), v77);
                v79 = vmulq_f32(v77, v77);
                v76 = fminf(fmaxf((v78.f32[2] + vaddv_f32(*v78.f32)) / (v79.f32[2] + vaddv_f32(*v79.f32)), 0.0), fminf(v34, *v117));
              }

              else
              {
                v76 = v55 / v107;
                if (!v107)
                {
                  v76 = v34;
                }
              }

              *&v80 = vmuls_lane_f32(255.0, v68, 2);
              v81.i64[0] = vmulq_f32(v68, v88).u64[0];
              v81.i64[1] = v80 | 0x437F000000000000;
              v70 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v81, (*v117 - v76) / (1.0 - v76))));
LABEL_109:
              *(a2 + 4 * v72) = vuzp1_s8(v70, v70).u32[0];
              v43 = v71 + 1;
              v41 = *a1;
              if (v43 >= v41)
              {
                v8 = a1[1];
                goto LABEL_111;
              }

              goto LABEL_66;
            }
          }

          if (v53 - v92 >= 0)
          {
            v57 = v53 - v92;
          }

          else
          {
            v57 = v92 - v53;
          }

          v58 = v51;
          v59 = v90;
          while (1)
          {
            v60 = *v58;
            *&v116[8] = 0;
            *v116 = 0;
            v118 = *a1;
            v119 = *(a1 + 2);
            ISSegmentationSamples_readSample_i(&v118, v52, &v116[4], v116);
            v61 = v109 + v59;
            if (v109 + v59 < 0)
            {
              v61 = -v61;
            }

            v62 = v61 + v57;
            if ((v60 & 1) == 0)
            {
              if ((v60 & 2) != 0)
              {
                v63 = v105;
                v64 = v62 < v105;
                if (v62 < v105)
                {
                  v63 = v62;
                }

                v105 = v63;
                if (v64)
                {
                  v107 = 1;
                  v55 = *v116 + 0.0;
                }
              }

              goto LABEL_94;
            }

            if (v62 < v56)
            {
              break;
            }

            if (v62 == v56)
            {
              goto LABEL_93;
            }

LABEL_94:
            v58 += v4;
            v67 = v59 - 7;
            ++v59;
            v52 = (v52 + v4);
            if (v67 >= v115)
            {
              goto LABEL_95;
            }
          }

          v49 = 0;
          v50 = 0;
          v112 = 0u;
          v56 = v62;
LABEL_93:
          ++v50;
          v112 = vaddq_f32(v112, *&v116[4]);
          v65 = vsubq_f32(*&v117[4], *&v116[4]);
          v66 = vmulq_f32(v65, v65);
          v54 = sqrtf(v66.f32[2] + vaddv_f32(*v66.f32));
          v49 |= v54 < 0.00784313725;
          goto LABEL_94;
        }

        v70 = 0;
      }

      v71 = v92;
      v72 = v89;
      goto LABEL_109;
    }
  }

  v35 = 0;
  while (1)
  {
    v36 = (v31 * v32);
    if ((v7[v36 + v35] & 3) == 2)
    {
      break;
    }

LABEL_51:
    if (++v35 >= v32)
    {
      v8 = a1[1];
      goto LABEL_53;
    }
  }

  v111 = v6;
  v114 = v33;
  *&v117[8] = 0;
  *&v117[4] = 0;
  *&v116[4] = 0;
  v118 = *a1;
  v119 = *(a1 + 2);
  ISSegmentationSamples_readSample_i(&v118, v35 + v36, &v117[4], &v116[4]);
  v37 = vmulq_n_f32(*&v117[4], *&v116[4]);
  v38 = fmaxf(fmaxf(v37.f32[0], v37.f32[2]), v37.f32[1]);
  if ((v38 - fminf(fminf(v37.f32[0], v37.f32[2]), v37.f32[1])) < 0.0196078431 && v38 < 0.15 && *&v116[4] < 0.71)
  {
    ++v30;
    v6 = v111;
    v33 = vaddq_f32(v114, v37);
    *&v6 = *&v111 + *&v116[4];
    v34 = fmaxf(v34, *&v116[4]);
    v32 = *a1;
    goto LABEL_51;
  }

LABEL_113:
  free(v7);
  return 1;
}

void ISAccelerateIconSegmentationComputeMask(int a1, int a2, float32x4_t *a3, float32x4_t *a4, unsigned int a5, float32x4_t *a6, int *a7)
{
  v11 = malloc_type_malloc(0x5010uLL, 0xB4C8092BuLL);
  if (v11)
  {
    v12 = v11;
    v13 = (v11 + 2);
    v14 = v11 + 2050;
    *v12 = v13;
    v12[1] = v14;
    memset(v14, 1, 0x1000uLL);
    if (a6->i32[2] || a7[2] || (a7[3] & 1) != 0)
    {
      goto LABEL_26;
    }

    v17 = a6->i32[3];
    if (v17 == 5)
    {
      if (a1 >= 1)
      {
        v86 = 0;
        v87 = vdupq_n_s32(0x437F0000u);
        do
        {
          v15.i32[0] = *(a6[1].i64[0] + 4 * v86);
          v88 = (-1640531535 * v15.i32[0]) >> 20;
          v89 = v12[1];
          v90 = *(v89 + v88);
          if (v90 == 1 || *(*v12 + 4 * v88) != v15.i32[0])
          {
            v91 = vmovl_u8(v15).u64[0];
            if (a2 < 1)
            {
              v106 = 255;
            }

            else
            {
              v92 = vmovl_u16(v91);
              *v92.f32 = vcvt_f32_u32(vand_s8(*v92.f32, 0xFF000000FFLL));
              v92.f32[2] = v91.u16[2];
              v93 = vdivq_f32(v92, v87);
              v94 = 1.0;
              v95 = a2;
              v96 = a4 + 2;
              v97 = a3;
              do
              {
                v98 = *v97++;
                v99 = v98;
                v100 = v96[-2];
                v101 = v96[-1];
                v102 = *v96;
                v96 += 3;
                v103 = vsubq_f32(v93, v99);
                v104 = vmulq_f32(v103, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, v103.f32[0]), v101, *v103.f32, 1), v102, v103, 2));
                v104.f32[0] = fmaxf(v104.f32[2] + vaddv_f32(*v104.f32), 0.0);
                v105 = (v104.f32[0] * 200.0) & ~((v104.f32[0] * 200.0) >> 31);
                if (v105 >= 4000)
                {
                  v105 = 4000;
                }

                v94 = v94 * chi2cdf3_values[v105];
                --v95;
              }

              while (v95);
              v106 = (v94 * 255.0);
            }

            if (v106 <= a5)
            {
              LOBYTE(v90) = 0;
            }

            else
            {
              LOBYTE(v90) = -1;
            }

            v15 = vuzp1_s8(v91, 0xFF000000FFLL);
            *(*v12 + 4 * v88) = v15.i32[0];
            *(v89 + v88) = v90;
          }

          *(*(a7 + 2) + v86++) = v90;
        }

        while (v86 != a1);
      }

      goto LABEL_85;
    }

    if (v17 != 3)
    {
LABEL_26:
      if (a1 >= 1)
      {
        v38 = 0;
        v39 = a4 + 2;
        do
        {
          v110.i32[2] = 0;
          v110.i64[0] = 0;
          v115.i32[0] = 0;
          v112 = *a6;
          v113 = a6[1].i64[0];
          readSample(&v112, v38, &v110, &v115, *v112.f32);
          LOBYTE(v40) = 0;
          if (v115.f32[0] > 0.0)
          {
            v41 = *(a6[1].i64[0] + 4 * (v38 + a6->i32[2] * (v38 / a6->i32[0])));
            v42 = (-1640531535 * v41) >> 20;
            v43 = v12[1];
            v40 = *(v43 + v42);
            if (v40 == 1 || *(*v12 + 4 * v42) != v41)
            {
              if (a2 < 1)
              {
                v62 = 255.0;
              }

              else
              {
                v50 = 1.0;
                v51 = a2;
                v52 = v39;
                v53 = a3;
                do
                {
                  v54 = *v53++;
                  v55 = v54;
                  v56 = v52[-2];
                  v57 = v52[-1];
                  v58 = *v52;
                  v52 += 3;
                  v59 = vsubq_f32(v110, v55);
                  v60 = vmulq_f32(v59, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v59.f32[0]), v57, *v59.f32, 1), v58, v59, 2));
                  v60.f32[0] = fmaxf(v60.f32[2] + vaddv_f32(*v60.f32), 0.0);
                  v61 = (v60.f32[0] * 200.0) & ~((v60.f32[0] * 200.0) >> 31);
                  if (v61 >= 4000)
                  {
                    v61 = 4000;
                  }

                  v50 = v50 * chi2cdf3_values[v61];
                  --v51;
                }

                while (v51);
                v62 = v50 * 255.0;
              }

              if ((v115.f32[0] * v62) <= a5)
              {
                LOBYTE(v40) = 0;
              }

              else
              {
                LOBYTE(v40) = -1;
              }

              *(*v12 + 4 * v42) = v41;
              *(v43 + v42) = v40;
            }
          }

          v44 = a7[2];
          v45 = *(a7 + 2);
          v46 = v38;
          if (v44 >= 1)
          {
            v46 = v38 + v38 / *a7 * v44;
          }

          v47 = v45 + 4 * v46 + 3;
          v48 = (v45 + v46);
          if (a7[3])
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          *v49 = v40;
          ++v38;
        }

        while (v38 != a1);
      }
    }

    else if (a1 >= 1)
    {
      v18 = 0;
      v19 = vdupq_n_s32(0x437F0000u);
      do
      {
        v16.i32[0] = *(a6[1].i64[0] + 4 * v18);
        v20 = vmovl_u8(*v16.f32).u64[0];
        v21 = v20.u16[3] / 255.0;
        if (v21 <= 0.0)
        {
          LOBYTE(v24) = 0;
        }

        else
        {
          v22 = (-1640531535 * v16.i32[0]) >> 20;
          v23 = v12[1];
          v24 = *(v23 + v22);
          if (v24 == 1 || *(*v12 + 4 * v22) != v16.i32[0])
          {
            if (a2 < 1)
            {
              v37 = 255.0;
            }

            else
            {
              v16 = vmovl_u16(v20);
              *v16.f32 = vcvt_f32_u32(vand_s8(*v16.f32, 0xFF000000FFLL));
              v16.f32[2] = v20.u16[2];
              v25 = vdivq_f32(v16, v19);
              v16.i32[0] = 1.0;
              v26 = a2;
              v27 = a4 + 2;
              v28 = a3;
              do
              {
                v29 = *v28++;
                v30 = v29;
                v31 = v27[-2];
                v32 = v27[-1];
                v33 = *v27;
                v27 += 3;
                v34 = vsubq_f32(v25, v30);
                v35 = vmulq_f32(v34, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v34.f32[0]), v32, *v34.f32, 1), v33, v34, 2));
                v35.f32[0] = fmaxf(v35.f32[2] + vaddv_f32(*v35.f32), 0.0);
                v36 = (v35.f32[0] * 200.0) & ~((v35.f32[0] * 200.0) >> 31);
                if (v36 >= 4000)
                {
                  v36 = 4000;
                }

                v16.f32[0] = v16.f32[0] * chi2cdf3_values[v36];
                --v26;
              }

              while (v26);
              v37 = v16.f32[0] * 255.0;
            }

            if ((v21 * v37) <= a5)
            {
              LOBYTE(v24) = 0;
            }

            else
            {
              LOBYTE(v24) = -1;
            }

            *(*v12 + 4 * v22) = vuzp1_s8(v20, 0xFF000000FFLL).u32[0];
            *(v23 + v22) = v24;
          }
        }

        *(*(a7 + 2) + v18++) = v24;
      }

      while (v18 != a1);
    }

LABEL_85:
    free(v12);
    return;
  }

  v110 = *a6;
  v111 = a6[1].i64[0];
  if (a1 >= 1)
  {
    v63 = 0;
    v64 = *a7;
    v65 = a7[2];
    v66 = *(a7 + 2);
    v67 = *(a7 + 12);
    v68 = a4 + 2;
    do
    {
      v115.i32[2] = 0;
      v115.i64[0] = 0;
      v114 = 0.0;
      v112 = v110;
      v113 = v111;
      readSample(&v112, v63, &v115, &v114, *v110.f32);
      v69 = 0;
      if (v114 > 0.0)
      {
        if (a2 < 1)
        {
          v82 = 255.0;
        }

        else
        {
          v70 = 1.0;
          v72 = a2;
          v71 = a3;
          v73 = v68;
          do
          {
            v74 = *v71++;
            v75 = v74;
            v76 = v73[-2];
            v77 = v73[-1];
            v78 = *v73;
            v73 += 3;
            v79 = vsubq_f32(v115, v75);
            v80 = vmulq_f32(v79, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v79.f32[0]), v77, *v79.f32, 1), v78, v79, 2));
            v80.f32[0] = fmaxf(v80.f32[2] + vaddv_f32(*v80.f32), 0.0) * 200.0;
            v81 = v80.f32[0] & ~(v80.f32[0] >> 31);
            if (v81 >= 4000)
            {
              v81 = 4000;
            }

            v70 = v70 * chi2cdf3_values[v81];
            --v72;
          }

          while (v72);
          v82 = v70 * 255.0;
        }

        if ((v114 * v82) <= a5)
        {
          v69 = 0;
        }

        else
        {
          v69 = -1;
        }
      }

      v83 = v63;
      if (v65 >= 1)
      {
        v83 = v63 + v63 / v64 * v65;
      }

      v84 = v66 + 3 + 4 * v83;
      v85 = (v66 + v83);
      if (v67)
      {
        v85 = v84;
      }

      *v85 = v69;
      ++v63;
    }

    while (v63 != a1);
  }
}

uint64_t readSample(uint64_t result, int a2, float32x4_t *a3, _DWORD *a4, uint8x8_t a5)
{
  v5 = *(result + 8);
  if (v5 >= 1)
  {
    a2 += a2 / *result * v5;
  }

  a5.i32[0] = *(*(result + 16) + 4 * a2);
  v6 = vmovl_u8(a5).u64[0];
  v7 = vmovl_u16(v6);
  *v7.f32 = vcvt_f32_u32(vand_s8(*v7.f32, 0xFF000000FFLL));
  v7.f32[2] = v6.u16[2];
  v8 = vdupq_n_s32(0x437F0000u);
  v9 = vdivq_f32(v7, v8);
  v10 = *(result + 12);
  if (v10 == 3)
  {
    v8.f32[0] = v6.u16[3] / 255.0;
  }

  else
  {
    v8.i32[0] = 1.0;
    if (v10 == 1)
    {
      v8.f32[0] = v6.u16[3] / 255.0;
      if (v8.f32[0] > 0.0)
      {
        v9 = vdivq_f32(v9, vdupq_lane_s32(*v8.f32, 0));
      }
    }
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v8.i32[0];
  }

  return result;
}

float ISSegmentationMathUtils_gaussian_inversedCovariance(float32x4_t a1, float32x4_t a2, float32x4_t a3, int32x4_t a4, int8x16_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vsubq_f32(a1, a2);
  v9 = vmulq_f32(v8, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v8.f32[0]), a7, *v8.f32, 1), a8, v8, 2));
  v10 = expf(fmaxf(v9.f32[2] + vaddv_f32(*v9.f32), 0.0) * -0.5);
  v11 = vmulq_f32(a3, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a5, a5, 0xCuLL), a5, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL))), vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL), vextq_s8(vextq_s8(a4, a4, 0xCuLL), a4, 8uLL)));
  v11.f32[0] = sqrt(fmaxf(v11.f32[2] + vaddv_f32(*v11.f32), 1.0e-20) * 0.258012275);
  return v10 / v11.f32[0];
}

double ISSegmentationMathUtils_mean(int a1, float32x4_t *a2, double a3, double a4)
{
  if (a1 < 1)
  {
    v5 = 0uLL;
  }

  else
  {
    v4 = a1;
    v5 = 0uLL;
    do
    {
      v6 = *a2++;
      HIDWORD(a4) = v6.i32[1];
      v5 = vaddq_f32(v5, v6);
      --v4;
    }

    while (v4);
  }

  *&a4 = a1;
  *&result = vdivq_f32(v5, vdupq_lane_s32(*&a4, 0)).u64[0];
  return result;
}

double ISSegmentationMathUtils_covariance(int a1, float32x4_t *a2, float32x4_t a3, double a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9)
{
  if (a1 < 1)
  {
    v12 = 0uLL;
  }

  else
  {
    v9 = a1;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = *a2++;
      v14 = vsubq_f32(v13, a3);
      v15 = vmulq_n_f32(v14, v14.f32[0]);
      v15.i32[3] = a9.n128_i32[3];
      v16 = vmulq_lane_f32(v14, *v14.f32, 1);
      v16.i32[3] = a8.n128_i32[3];
      v17 = vmulq_laneq_f32(v14, v14, 2);
      v17.i32[3] = a7.n128_i32[3];
      v12 = vaddq_f32(v12, v15);
      v11 = vaddq_f32(v11, v16);
      v10 = vaddq_f32(v10, v17);
      --v9;
    }

    while (v9);
  }

  v18 = 1.0 / a1;
  *&result = vmulq_n_f32(v12, v18).u64[0];
  return result;
}

uint64_t ISSegmentationMathUtils_dbscan(int a1, int a2, uint64_t a3, void *__b, float a5)
{
  v7 = a1;
  if (a1 >= 1)
  {
    memset_pattern16(__b, &unk_1A78251E0, 4 * a1);
  }

  v8 = v7 + 7;
  if (v7 < -7)
  {
    v8 = v7 + 14;
  }

  v28 = v8 >> 3;
  v9 = malloc_type_calloc(v28, 1uLL, 0x100004077774924uLL);
  v32 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  if (v7 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = v7;
    v29 = v7;
    v27 = v7;
    do
    {
      if (*(__b + v10) == 0x80000000)
      {
        v13 = objc_opt_new();
        Neighbors = ISSegmentationMathUtils_dbscan_queryNeighbors(v7, a3, v10, v13, v9, v32, a5);
        if (Neighbors >= a2)
        {
          if (Neighbors >= 1)
          {
            v15 = 0;
            v16 = Neighbors;
            do
            {
              v17 = [v13 objectAtIndexedSubscript:{v15, v27}];
              v18 = [v17 intValue];

              v9[v18 / 8] |= 1 << (v18 & 7);
              ++v15;
            }

            while (v16 != v15);
          }

          if ([v13 count])
          {
            do
            {
              v19 = [v13 lastObject];
              v20 = [v19 intValue];

              [v13 removeLastObject];
              v21 = *(__b + v20);
              if (v21 == 0x80000000)
              {
                *(__b + v20) = v11;
                v22 = objc_opt_new();
                if (ISSegmentationMathUtils_dbscan_queryNeighbors(v29, a3, v20, v22, v9, v32, a5) >= a2)
                {
                  [v13 addObjectsFromArray:v22];
                  if ([v22 count])
                  {
                    v23 = 0;
                    do
                    {
                      v24 = [v22 objectAtIndexedSubscript:v23];
                      v25 = [v24 intValue];

                      v9[v25 / 8] |= 1 << (v25 & 7);
                      ++v23;
                    }

                    while ([v22 count] > v23);
                  }
                }
              }

              else if (v21 == -1)
              {
                *(__b + v20) = v11;
              }
            }

            while ([v13 count]);
          }

          bzero(v9, v28);
          v11 = (v11 + 1);
          v7 = v29;
          v12 = v27;
        }

        else
        {
          *(__b + v10) = -1;
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }

  free(v9);
  free(v32);
  return v11;
}

uint64_t ISSegmentationMathUtils_dbscan_queryNeighbors(int a1, uint64_t a2, int a3, void *a4, uint64_t a5, int *a6, float a7)
{
  v13 = a4;
  if (a1 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = *(a2 + 16 * a3);
    v17 = a7 * a7;
    v18 = a6;
    do
    {
      v19 = vsubq_f32(v16, *(a2 + 16 * v14));
      v20 = vmulq_f32(v19, v19);
      v21 = vaddv_f32(*v20.f32);
      if ((v20.f32[2] + v21) > v17)
      {
        v15 = v15;
      }

      else
      {
        v15 = (v15 + 1);
      }

      if ((v20.f32[2] + v21) > v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = v14;
      }

      *v18 = v22;
      v18 += (v20.f32[2] + v21) <= v17;
      ++v14;
    }

    while (a1 != v14);
    if (v15)
    {
      v23 = v15;
      do
      {
        v24 = *a6++;
        if (((*(a5 + (v24 >> 3)) >> (v24 & 7)) & 1) == 0)
        {
          v25 = [MEMORY[0x1E696AD98] numberWithInt:?];
          [v13 addObject:v25];
        }

        --v23;
      }

      while (v23);
    }
  }

  return v15;
}

float ISSegmentationMathUtils_relativeLuminance(__n128 a1)
{
  v1 = a1;
  v2 = a1.n128_f32[0];
  v14 = v1;
  if (v2 <= 0.04045)
  {
    a1.n128_f64[0] = v2 / 12.92;
    a1.n128_f32[0] = a1.n128_f64[0];
  }

  else
  {
    v3 = (v2 + 0.055) / 1.055;
    a1.n128_f32[0] = powf(v3, 2.4);
    v1 = v14;
  }

  v16 = a1;
  v4 = v1.n128_f32[1];
  if (v1.n128_f32[1] <= 0.04045)
  {
    v7 = v4 / 12.92;
  }

  else
  {
    v5 = (v4 + 0.055) / 1.055;
    v6 = powf(v5, 2.4);
    v1.n128_u32[2] = v14.n128_u32[2];
    v7 = v6;
  }

  v8 = v1.n128_f32[2];
  if (v1.n128_f32[2] <= 0.04045)
  {
    v10 = v8 / 12.92;
  }

  else
  {
    v9 = (v8 + 0.055) / 1.055;
    v15 = v7;
    v10 = powf(v9, 2.4);
    v7 = v15;
  }

  v11 = v16;
  v11.f32[1] = v7;
  v11.f32[2] = v10;
  v12 = vmulq_f32(v11, xmmword_1A7825130);
  return v12.f32[2] + vaddv_f32(*v12.f32);
}

float ISSegmentationMathUtils_contrastRatio(__n128 a1, __n128 a2)
{
  v2 = ISSegmentationMathUtils_relativeLuminance(a1);
  v3 = ISSegmentationMathUtils_relativeLuminance(a2);
  return (fmaxf(v2, v3) + 0.05) / (fminf(v2, v3) + 0.05);
}

__n64 ISSegmentationMathUtils_rgb2hsv(int32x4_t a1)
{
  v1.i32[0] = vdupq_laneq_s32(a1, 2).u32[0];
  v1.i32[1] = a1.i32[1];
  v2.i32[0] = vdupq_lane_s32(*a1.i8, 1).u32[0];
  v2.i32[1] = a1.i32[2];
  v2.i64[1] = 0xBEAAAAAB00000000;
  v3 = 0.0;
  if (*&a1.i32[1] >= *&a1.i32[2])
  {
    v3 = 1.0;
  }

  v1.i64[1] = COERCE_UNSIGNED_INT(-1.0) | 0x3F2AAAAB00000000;
  v4 = vmlaq_n_f32(v1, vsubq_f32(v2, v1), v3);
  v5 = vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL);
  v6 = vcgtq_f32(v4, a1);
  v4.i64[1] = __PAIR64__(a1.u32[0], v4.u32[3]);
  v7 = vmlaq_n_f32(v4, vsubq_f32(vextq_s8(vextq_s8(v5, a1, 4uLL), v5, 0xCuLL), v4), (vmovn_s32(vmvnq_s8(v6)).u8[0] & 1));
  *v6.i32 = v7.f32[0] - fminf(v7.f32[3], v7.f32[1]);
  v8 = (v7.f32[3] - v7.f32[1]) / (*v6.i32 * 6.0 + 0.0000999999975) + v7.f32[2];
  result.n64_f32[0] = fabsf(v8);
  result.n64_f32[1] = *v6.i32 / (v7.f32[0] + 0.0001);
  return result;
}

double ISSegmentationMathUtils_hsv2rgb(float32x4_t a1)
{
  v1 = vaddq_f32(vdupq_lane_s32(*a1.f32, 0), xmmword_1A7825140);
  v2 = v1;
  v2.i32[3] = 0;
  v3 = vsubq_f32(v1, vrndmq_f32(v2));
  v3.i32[3] = 0;
  __asm
  {
    FMOV            V2.4S, #6.0
    FMOV            V3.4S, #-3.0
  }

  v10 = vabsq_f32(vmlaq_f32(_Q3, _Q2, vminnmq_f32(v3, xmmword_1A7825150)));
  __asm { FMOV            V2.4S, #-1.0 }

  v12 = vaddq_f32(v10, _Q2);
  v12.i32[3] = 0;
  v13 = vmaxnmq_f32(v12, 0);
  v13.i32[3] = 0;
  v14 = vaddq_f32(vminnmq_f32(v13, xmmword_1A78250B0), _Q2);
  __asm { FMOV            V2.4S, #1.0 }

  *&result = vmulq_laneq_f32(vmlaq_lane_f32(_Q2, v14, *a1.f32, 1), a1, 2).u64[0];
  return result;
}

double ISSegmentationMathUtils_rgb2xyz(__n128 a1)
{
  v1 = a1;
  v2 = a1.n128_f32[0];
  v13 = v1;
  if (v2 <= 0.04045)
  {
    v4 = v2 / 12.92;
  }

  else
  {
    v3 = (v2 + 0.055) / 1.055;
    v4 = powf(v3, 2.4);
    v1 = v13;
  }

  v15 = v4;
  v5 = v1.n128_f32[1];
  if (v1.n128_f32[1] <= 0.04045)
  {
    v8 = v5 / 12.92;
  }

  else
  {
    v6 = (v5 + 0.055) / 1.055;
    v7 = powf(v6, 2.4);
    v1.n128_u32[2] = v13.n128_u32[2];
    v8 = v7;
  }

  v9 = v1.n128_f32[2];
  if (v1.n128_f32[2] <= 0.04045)
  {
    v11 = v9 / 12.92;
  }

  else
  {
    v10 = (v9 + 0.055) / 1.055;
    v14 = v8;
    v11 = powf(v10, 2.4);
    v8 = v14;
  }

  *&result = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_1A7825160, v15), xmmword_1A7825170, v8), xmmword_1A7825180, v11).u64[0];
  return result;
}

double ISSegmentationMathUtils_xyz2lab(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_1A7825190);
  v8 = v1;
  if (v1.f32[0] <= 0.008856)
  {
    v3 = v1.f32[0] * 7.787 + 0.137931034;
  }

  else
  {
    v2 = powf(v1.f32[0], 0.33333);
    v1 = v8;
    v3 = v2;
  }

  if (v1.f32[1] <= 0.008856)
  {
    v5 = v1.f32[1] * 7.787 + 0.137931034;
  }

  else
  {
    v4 = powf(v1.f32[1], 0.33333);
    v1.i32[2] = v8.i32[2];
    v5 = v4;
  }

  if (v1.f32[2] > 0.008856)
  {
    powf(v1.f32[2], 0.33333);
  }

  *&v6 = v5 * 116.0 + -16.0;
  *(&v6 + 1) = (v3 - v5) * 500.0;
  return v6;
}

double ISSegmentationMathUtils_rgb2lab(__n128 a1)
{
  *v1.i64 = ISSegmentationMathUtils_rgb2xyz(a1);

  return ISSegmentationMathUtils_xyz2lab(v1);
}

double ISSegmentationMathUtils_lab2xyz(__n128 _Q0, float32x4_t a2)
{
  v2 = (_Q0.n128_f32[0] + 16.0) * 0.00862068962;
  _S2 = 990057071;
  __asm { FMLA            S1, S2, V0.S[1] }

  _S5 = -1146890486;
  if (_S1 <= 0.206897)
  {
    a2.f32[0] = (_S1 + -0.137931034) / 7.787;
  }

  else
  {
    a2.f32[0] = _S1 * (_S1 * _S1);
  }

  __asm { FMLA            S4, S5, V0.S[2] }

  if (v2 <= 0.206897)
  {
    v11 = (v2 + -0.137931034) / 7.787;
  }

  else
  {
    v11 = (v2 * v2) * v2;
  }

  if (_S4 <= 0.206897)
  {
    v12 = (_S4 + -0.137931034) / 7.787;
  }

  else
  {
    v12 = _S4 * (_S4 * _S4);
  }

  a2.f32[1] = v11;
  a2.f32[2] = v12;
  *&result = vmulq_f32(a2, xmmword_1A78251A0).u64[0];
  return result;
}

float32x2_t ISSegmentationMathUtils_xyz2rgb(float32x4_t a1)
{
  v1 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1A78251B0, a1.f32[0]), xmmword_1A78251C0, *a1.f32, 1), xmmword_1A78251D0, a1, 2);
  v2 = v1.f32[0];
  v8 = v1;
  if (v1.f32[0] <= 0.0031308)
  {
    v7 = v2 * 12.92;
  }

  else
  {
    v7 = pow(v2, 0.416666667) * 1.055 + -0.055;
    v1 = v8;
  }

  v3 = v1.f32[1];
  if (v1.f32[1] <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = pow(v3, 0.416666667) * 1.055 + -0.055;
    v1.i32[2] = v8.i32[2];
  }

  if (v1.f32[2] > 0.0031308)
  {
    v9 = v4;
    pow(v1.f32[2], 0.416666667);
    v4 = v9;
  }

  v5.f64[0] = v7;
  v5.f64[1] = v4;
  return vcvt_f32_f64(v5);
}

float32x2_t ISSegmentationMathUtils_lab2rgb(__n128 a1, float32x4_t a2)
{
  *v2.i64 = ISSegmentationMathUtils_lab2xyz(a1, a2);

  return ISSegmentationMathUtils_xyz2rgb(v2);
}

float ISSegmentationMathUtils_chi2cdf(float a1, float a2)
{
  v3 = a1 * 0.5;
  v4 = v3;
  v5 = powf(a2 * 0.5, v4);
  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = v6;
    if (v6)
    {
      v5 = v5 * (-(a2 * 0.5) / v8);
    }

    v7 = v7 + (v5 / (v4 + v8));
    ++v6;
  }

  while (v6 != 25);
  return v7 / tgamma(v3);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void _ISInvalidateCacheEntriesForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = +[ISIconManager sharedInstance];
  v3 = [v2 connection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_17];

  [v4 clearCachedItemsForBundeID:v1 reply:&__block_literal_global_4];
}

void _ISInvalidateCacheEntries()
{
  v0 = +[ISIconManager sharedInstance];
  v1 = [v0 connection];
  v2 = [v1 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6];

  [v2 clearAllCachedItemsWithReply:&__block_literal_global_9];
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id legacyResourceNames()
{
  if (legacyResourceNames_onceToken != -1)
  {
    legacyResourceNames_cold_1();
  }

  v1 = legacyResourceNames_names;

  return v1;
}

void __legacyResourceNames_block_invoke()
{
  v0 = legacyResourceNames_names;
  legacyResourceNames_names = &unk_1F1A65808;
}

id expandedNamesFromResourceNames(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0x1E696A000uLL;
    v7 = *v25;
    v23 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = *(v6 + 3776);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v9 pathExtension];
          if ([(__CFString *)v11 length])
          {
            v12 = [v9 stringByDeletingPathExtension];
          }

          else
          {

            v12 = v9;
            v11 = @"png";
          }

          if (v11)
          {
            v13 = v12 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v14 = [v12 stringByAppendingPathExtension:v11];
            if (v14)
            {
              [v2 addObject:v14];
            }

            if (([v12 hasSuffix:@"2x"] & 1) == 0 && (objc_msgSend(v12, "hasSuffix:", @"3x") & 1) == 0)
            {
              v15 = [v12 stringByAppendingString:@"@2x"];
              v16 = [v15 stringByAppendingPathExtension:v11];

              if (v16)
              {
                [v2 addObject:v16];
              }

              [v12 stringByAppendingString:@"@3x"];
              v18 = v17 = v2;
              v19 = [v18 stringByAppendingPathExtension:v11];

              v2 = v17;
              if (v19)
              {
                [v17 addObject:v19];
              }

              v3 = v23;
              v6 = 0x1E696A000;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  v20 = [v2 allObjects];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t _CGPathCreateContinuousRoundedRectCornerRadius(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  Mutable = CGPathCreateMutable();
  v11 = a5 * 1.528665 + a5 * 1.528665;
  x = a5 * 1.528665;
  if (v11 >= a3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if (v11 >= a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  v14 = a4 * 0.5;
  if (v11 < a4)
  {
    v14 = a5 * 1.528665;
  }

  v36 = v14;
  if (v11 >= a4)
  {
    v15 = v12 & 1;
  }

  else
  {
    v15 = v12;
  }

  if (v11 >= a4)
  {
    v16 = v13 & 2;
  }

  else
  {
    v16 = v13;
  }

  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  v38 = CGRectGetMinY(v43);
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  v18 = CGRectGetMinX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  y = CGRectGetMaxY(v45);
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v19 = CGRectGetMaxX(v46);
  v47.origin.x = a1;
  v47.origin.y = a2;
  v47.size.width = a3;
  v47.size.height = a4;
  MaxY = CGRectGetMaxY(v47);
  v21 = v11 < a3;
  if (v11 >= a3)
  {
    v22 = a3 * 0.5;
  }

  else
  {
    v22 = x;
  }

  v23 = v16 | v15;
  if (v21 || v23 == 0)
  {
    xa = v19;
    v25 = v11 < a4 || v23 == 0;
    v28 = v36;
    if (v25)
    {
      v27 = MinY;
    }

    else
    {
      v27 = MinY + v36 * 0.05;
      v38 = v38 + v36 * 0.05;
      y = y - v36 * 0.05;
      MaxY = MaxY - v36 * 0.05;
    }

    v26 = MinX;
  }

  else
  {
    v26 = MinX + v22 * 0.05;
    MaxX = MaxX - v22 * 0.05;
    v18 = v18 + v22 * 0.05;
    xa = v19 - v22 * 0.05;
    v28 = v36;
    v27 = MinY;
  }

  CGPathMoveToPoint(Mutable, 0, v22 + v26, v27);
  CGPathAddLineToPoint(Mutable, 0, MaxX - v22, v38);
  if (v22 == *MEMORY[0x1E695F060] && v28 == *(MEMORY[0x1E695F060] + 8))
  {
    CGPathAddLineToPoint(Mutable, 0, xa, MaxY - v28);
    CGPathAddLineToPoint(Mutable, 0, v22 + v18, y);
    CGPathAddLineToPoint(Mutable, 0, v26, v28 + v27);
  }

  else
  {
    v30 = v23 == 0;
    _addContinuousCornerToPath(Mutable, 2, v15, v30, MaxX, v38, v22, v28);
    CGPathAddLineToPoint(Mutable, 0, xa, MaxY - v28);
    _addContinuousCornerToPath(Mutable, 8, v16, v30, xa, MaxY, v22, v28);
    CGPathAddLineToPoint(Mutable, 0, v22 + v18, y);
    _addContinuousCornerToPath(Mutable, 4, v15, v30, v18, y, v22, v28);
    CGPathAddLineToPoint(Mutable, 0, v26, v28 + v27);
    _addContinuousCornerToPath(Mutable, 1, v16, v30, v26, v27, v22, v28);
  }

  CGPathAddLineToPoint(Mutable, 0, v22 + v26, v27);
  v31 = MEMORY[0x1AC55AF90](Mutable);
  CFRelease(Mutable);
  return v31;
}