@interface RansacEstimation
- (BOOL)ApplyRansacEstimation:(id)a3 desMatchInput:(id)a4 desMatchInput:(id)a5 desMatchInput:(id)a6 desMatchCountInput:(int)a7 xscaleFactorInput:(float)a8 yscaleFactorInput:(float)a9 imageDimInput:(int)a10 imageDimInput:(int)a11 homographyMatrixOutput:(_xform2D *)a12 waitForComplete:(BOOL)a13;
- (BOOL)allocateInternalBuffer:(int)a3;
- (RansacEstimation)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (void)dealloc;
- (void)freeScratchSpace;
@end

@implementation RansacEstimation

- (RansacEstimation)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v9.receiver = self;
  v9.super_class = RansacEstimation;
  v4 = [(VEMetalBase *)&v9 initWithDevice:a3 commmandQueue:a4];
  v5 = v4;
  if (!v4)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [RansacEstimation initWithDevice:commmandQueue:];
    }

    goto LABEL_10;
  }

  v6 = [(RansacEstimation *)v4 setupMetal];
  if ((v6 & [(RansacEstimation *)v5 allocateInternalBuffer:2048]& 1) == 0)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [RansacEstimation initWithDevice:commmandQueue:];
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = v5;
LABEL_11:

  return v7;
}

- (void)dealloc
{
  [(RansacEstimation *)self freeScratchSpace];
  v3.receiver = self;
  v3.super_class = RansacEstimation;
  [(RansacEstimation *)&v3 dealloc];
}

- (void)freeScratchSpace
{
  p_scratchSpace = &self->_scratchSpace;
  pAllocatedMemory = self->_scratchSpace.pAllocatedMemory;
  if (pAllocatedMemory)
  {
    if (p_scratchSpace->totalMemorySize)
    {
      free(pAllocatedMemory);
      *&p_scratchSpace->pYref_inlier = 0u;
      *&p_scratchSpace->pYin_inlier = 0u;
      *&p_scratchSpace->pRandomIndices = 0u;
      *&p_scratchSpace->pBestInlier[1] = 0u;
      *&p_scratchSpace->pAllocatedMemory = 0u;
      *&p_scratchSpace->inlierCount = 0u;
    }
  }
}

- (BOOL)allocateInternalBuffer:(int)a3
{
  p_scratchSpace = &self->_scratchSpace;
  if (self->_scratchSpace.inlierCount >= a3)
  {
    goto LABEL_7;
  }

  if (a3 >= -127)
  {
    v4 = a3 + 127;
  }

  else
  {
    v4 = a3 + 254;
  }

  v5 = v4 >> 7;
  [(RansacEstimation *)self freeScratchSpace];
  v6 = malloc_type_malloc(13312 * (v4 >> 7), 0xBEDB0B06uLL);
  p_scratchSpace->pAllocatedMemory = v6;
  if (v6)
  {
    v7 = v4 >> 7;
    p_scratchSpace->totalMemorySize = 13312 * v5;
    p_scratchSpace->inlierCount = v5 << 7;
    p_scratchSpace->pInlierIndices = v6;
    p_scratchSpace->pRandomIndices = &v6[512 * v5];
    p_scratchSpace->pBestInlier[0] = &v6[1024 * v7];
    p_scratchSpace->pBestInlier[1] = &v6[1536 * v7];
    p_scratchSpace->pXref_inlier = &v6[2048 * v7];
    p_scratchSpace->pYref_inlier = &v6[2560 * v7];
    p_scratchSpace->pXin_inlier = &v6[3072 * v7];
    p_scratchSpace->pYin_inlier = &v6[3584 * v7];
    p_scratchSpace->pH1_t = &v6[4096 * v7];
LABEL_7:
    LOBYTE(v8) = 1;
    return v8;
  }

  if ((global_logLevel & 0x10) != 0)
  {
    v8 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      return v8;
    }

    [RansacEstimation allocateInternalBuffer:];
  }

  LOBYTE(v8) = 0;
  return v8;
}

- (BOOL)ApplyRansacEstimation:(id)a3 desMatchInput:(id)a4 desMatchInput:(id)a5 desMatchInput:(id)a6 desMatchCountInput:(int)a7 xscaleFactorInput:(float)a8 yscaleFactorInput:(float)a9 imageDimInput:(int)a10 imageDimInput:(int)a11 homographyMatrixOutput:(_xform2D *)a12 waitForComplete:(BOOL)a13
{
  v133 = *&a8;
  v13 = *&a7;
  v169 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = v18;
  v21 = v19;
  v22 = a5;
  v161 = 0;
  v160 = 0;
  v163 = 0;
  v164 = 0x3F80000000000000;
  v159 = 1.0;
  v162 = 1065353216;
  v136 = a6;
  v137 = v21;
  v23 = [v18 contents];
  v24 = [v21 contents];
  v25 = [v22 contents];
  v26 = [v136 contents];
  v135 = v22;
  v134 = [(RansacEstimation *)self allocateInternalBuffer:v13];
  if (v134)
  {
    if (v13 > 3)
    {
      p_scratchSpace = &self->_scratchSpace;
      if (self->_scratchSpace.pAllocatedMemory)
      {
        v37 = 0;
        v38 = v13;
        pInlierIndices = self->_scratchSpace.pInlierIndices;
        pRandomIndices = self->_scratchSpace.pRandomIndices;
        do
        {
          pRandomIndices[v37] = v37;
          pInlierIndices[v37] = v37;
          ++v37;
        }

        while (v13 != v37);
        v128 = pInlierIndices;
        v129 = v20;
        v41 = 0;
        v42 = 12345;
        v43 = pRandomIndices;
        v44 = v13;
        do
        {
          v42 = 214013 * v42 + 2531011;
          v45 = (HIWORD(v42) & 0x7FFF) % v44;
          v46 = &pRandomIndices[v41];
          v47 = v46[v45];
          v46[v45] = *v43;
          *v43++ = v47;
          ++v41;
          --v44;
        }

        while (v44);
        v48 = 0;
        v139 = 0;
        v149 = 0;
        v138 = 0;
        v49 = 0;
        pBestInlier = self->_scratchSpace.pBestInlier;
        v50 = v38;
        v51 = 0.0;
        v147 = 200;
        v142 = &self->_scratchSpace;
        v140 = pRandomIndices;
        do
        {
          v52 = v49;
          v130 = v38 - 3 - v48;
          v131 = v49;
          while (v48 <= v38 - 4)
          {
            v168.columns[1] = 0x3F800000uLL;
            v168.columns[0] = 0x3F800000uLL;
            v53 = 4 * pRandomIndices[v48];
            v158[0] = *(v23 + v53);
            v54 = *(v24 + v53);
            v55 = *(v25 + v53);
            v168.columns[2].i32[0] = 1065353216;
            v166 = v55;
            v167 = v54;
            v165 = *(v26 + v53);
            v56 = &v168;
            RegWarp_homographyEstimation(v158, &v167, &v166, &v165, 4, &v168, p_scratchSpace->pH1_t);
            v57 = 0;
            v58 = pBestInlier[v149 & 1];
            do
            {
              v59 = 0;
              v60 = (&v155 + v57);
              v61 = *v60;
              do
              {
                v62 = v56->columns[0].i32[v59];
                v154 = v61;
                *(&v154 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = v62;
                v61 = v154;
                ++v59;
              }

              while (v59 != 3);
              v60->i32[2] = v154.i32[2];
              v60->i64[0] = v61.i64[0];
              ++v57;
              v56 = (v56 + 12);
            }

            while (v57 != 3);
            v63 = 0;
            v64 = 0;
            v65 = vzip1q_s32(v155, v156);
            v65.i32[2] = LODWORD(v157.confidence);
            v66 = vzip2q_s32(vzip1q_s32(v155, v157), vdupq_lane_s32(*v156.f32, 1));
            v67 = vzip2q_s32(v155, v156);
            v67.i32[2] = v157.width;
            v68 = 0.0;
            do
            {
              v69 = vaddq_f32(v67, vmlaq_n_f32(vmulq_n_f32(v65, *(v25 + 4 * v63)), v66, *(v26 + 4 * v63)));
              v70.i32[0] = *(v23 + 4 * v63);
              v70.i32[1] = *(v24 + 4 * v63);
              if (vaddv_f32(vabd_f32(vdiv_f32(*v69.i8, vdup_laneq_s32(v69, 2)), v70)) <= 3.0)
              {
                v68 = v68 + 1.0;
                v58[v64++] = v63;
              }

              ++v63;
            }

            while (v38 != v63);
            if (v68 > v51)
            {
              v139 = v64;
              v71 = pow(1.0 - ((v50 - v68) / v50), 4.0);
              v72 = log(1.0 - v71);
              v147 = vcvtps_s32_f32(-4.6052 / v72);
              v138 = v149++;
              v51 = v68;
            }

            p_scratchSpace = v142;
            pRandomIndices = v140;
            if (v52 <= 198)
            {
              ++v52;
              ++v48;
              if (v147 > v52)
              {
                continue;
              }
            }

            goto LABEL_36;
          }

          v73 = 0;
          v74 = pRandomIndices;
          v75 = v38;
          do
          {
            v42 = 214013 * v42 + 2531011;
            v76 = (HIWORD(v42) & 0x7FFF) % v75;
            v77 = &pRandomIndices[v73];
            v78 = v77[v76];
            v77[v76] = *v74;
            *v74++ = v78;
            ++v73;
            --v75;
          }

          while (v75);
          if (v131 + v130 > 198)
          {
            break;
          }

          v49 = v131 + v130 + 1;
          v48 = 1;
        }

        while (v147 > v49);
LABEL_36:
        pXref_inlier = p_scratchSpace->pXref_inlier;
        pYref_inlier = p_scratchSpace->pYref_inlier;
        pXin_inlier = p_scratchSpace->pXin_inlier;
        pYin_inlier = p_scratchSpace->pYin_inlier;
        if (v139)
        {
          v83 = pBestInlier[v138 & 1];
          v84 = p_scratchSpace->pXref_inlier;
          v85 = p_scratchSpace->pYref_inlier;
          v86 = p_scratchSpace->pXin_inlier;
          v87 = p_scratchSpace->pYin_inlier;
          v88 = v139;
          do
          {
            v89 = *v83++;
            *v84++ = *(v23 + 4 * v89);
            *v85++ = *(v24 + 4 * v89);
            *v86++ = *(v25 + 4 * v89);
            *v87++ = *(v26 + 4 * v89);
            --v88;
          }

          while (v88);
        }

        v90 = &v159;
        RegWarp_homographyEstimation(pXref_inlier, pYref_inlier, pXin_inlier, pYin_inlier, v139, &v159, p_scratchSpace->pH1_t);
        v91 = 0;
        v92 = pBestInlier[!(v138 & 1)];
        do
        {
          v93 = 0;
          v94 = (&v155 + v91);
          v95 = *v94;
          do
          {
            v96 = v90[v93];
            v153 = v95;
            *(&v153 & 0xFFFFFFFFFFFFFFF3 | (4 * (v93 & 3))) = v96;
            v95 = v153;
            ++v93;
          }

          while (v93 != 3);
          v94->i32[2] = v153.i32[2];
          v94->i64[0] = v95.i64[0];
          ++v91;
          v90 += 3;
        }

        while (v91 != 3);
        v97 = 0;
        v98 = 0;
        v99 = vzip1q_s32(v155, v156);
        v99.i32[2] = LODWORD(v157.confidence);
        v100 = vzip2q_s32(vzip1q_s32(v155, v157), vdupq_lane_s32(*v156.f32, 1));
        v101 = vzip2q_s32(v155, v156);
        v101.i32[2] = v157.width;
        v102 = v128;
        do
        {
          v103 = vaddq_f32(v101, vmlaq_n_f32(vmulq_n_f32(v99, *(v25 + 4 * v97)), v100, *(v26 + 4 * v97)));
          v104.i32[0] = *(v23 + 4 * v97);
          v104.i32[1] = *(v24 + 4 * v97);
          if (vaddv_f32(vabd_f32(vdiv_f32(*v103.i8, vdup_laneq_s32(v103, 2)), v104)) <= 3.0)
          {
            v92[v98++] = v97;
          }

          ++v97;
        }

        while (v38 != v97);
        v105 = v133;
        if (v98 >= 1)
        {
          v106 = v98;
          do
          {
            v107 = *v92++;
            *v102++ = v107;
            --v106;
          }

          while (v106);
        }

        v108 = 0;
        v109 = &v159;
        v30 = v136;
        v29 = v137;
        do
        {
          v110 = 0;
          v111 = &v158[v108];
          v112 = *v111;
          do
          {
            v113 = v109[v110];
            v152 = v112;
            *(&v152 & 0xFFFFFFFFFFFFFFF3 | (4 * (v110 & 3))) = v113;
            v112 = v152;
            ++v110;
          }

          while (v110 != 3);
          *(v111 + 2) = DWORD2(v152);
          *v111 = v112;
          ++v108;
          v109 += 3;
        }

        while (v108 != 3);
        v114 = 0;
        v148 = v158[1];
        v150 = v158[0];
        v115 = *MEMORY[0x277D860B0];
        v116 = *(MEMORY[0x277D860B0] + 16);
        v105.i32[1] = HIDWORD(*MEMORY[0x277D860B0]);
        v146 = v158[2];
        v105.i32[2] = *(MEMORY[0x277D860B0] + 8);
        v117 = v116;
        v117.f32[1] = a9;
        v117.i32[2] = *(MEMORY[0x277D860B0] + 24);
        v115.i32[2] = 0;
        v116.i32[2] = 0;
        v118 = *(MEMORY[0x277D860B0] + 32);
        v168.columns[0] = v115;
        v168.columns[1] = v116;
        v168.columns[2] = v118;
        do
        {
          *(&v155 + v114 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, COERCE_FLOAT(*&v168.columns[v114])), v117, *v168.columns[v114].f32, 1), v118, v168.columns[v114], 2);
          ++v114;
        }

        while (v114 != 3);
        v170.columns[0] = v155;
        v170.columns[1] = v156;
        v170.columns[2] = v157;
        v143 = v156;
        v144 = v155;
        v170.columns[0].i32[3] = 0;
        v170.columns[1].i32[3] = 0;
        v141 = v157;
        v170.columns[2].i32[3] = 0;
        v171 = __invert_f3(v170);
        v119 = 0;
        v171.columns[0].i32[3] = 0;
        v171.columns[1].i32[3] = 0;
        v171.columns[2].i32[3] = 0;
        v168 = v171;
        do
        {
          *(&v155 + v119 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150, COERCE_FLOAT(*&v168.columns[v119])), v148, *v168.columns[v119].f32, 1), v146, v168.columns[v119], 2);
          ++v119;
        }

        while (v119 != 3);
        v120 = 0;
        v121 = v155;
        v122 = v156;
        v123 = v157;
        v121.i32[3] = 0;
        v122.i32[3] = 0;
        v123.i32[3] = 0;
        v168.columns[0] = v121;
        v168.columns[1] = v122;
        v168.columns[2] = v123;
        do
        {
          *(&v155 + v120 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v144, COERCE_FLOAT(*&v168.columns[v120])), v143, *v168.columns[v120].f32, 1), v141, v168.columns[v120], 2);
          ++v120;
        }

        while (v120 != 3);
        v124 = vmulq_n_f32(v155, 1.0 / *&v157.width);
        v125 = vmulq_n_f32(v156, 1.0 / *&v157.width);
        v126 = vmulq_n_f32(v157, 1.0 / *&v157.width);
        a12->width = v124.i32[2];
        *&a12->confidence = v124.i64[0];
        a12[1].width = v125.i32[2];
        *&a12[1].confidence = v125.i64[0];
        a12[2].width = v126.i32[2];
        *&a12[2].confidence = v126.i64[0];
        a12[3].confidence = v98 / v50;
        a12[3].inlierCnt = v98;
        v20 = v129;
      }

      else
      {
        v30 = v136;
        v29 = v137;
        if ((global_logLevel & 0x10) != 0 && (!os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR) || ![RansacEstimation ApplyRansacEstimation:desMatchInput:desMatchInput:desMatchInput:desMatchCountInput:xscaleFactorInput:yscaleFactorInput:imageDimInput:imageDimInput:homographyMatrixOutput:waitForComplete:]) && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [RansacEstimation ApplyRansacEstimation:desMatchInput:desMatchInput:desMatchInput:desMatchCountInput:xscaleFactorInput:yscaleFactorInput:imageDimInput:imageDimInput:homographyMatrixOutput:waitForComplete:];
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = &v159;
      v30 = v136;
      v29 = v137;
      do
      {
        v31 = 0;
        v32 = (&v155 + v27);
        v33 = *v32;
        do
        {
          v34 = v28[v31];
          v151 = v33;
          *(&v151 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3))) = v34;
          v33 = v151;
          ++v31;
        }

        while (v31 != 3);
        v32->i32[2] = v151.i32[2];
        v32->i64[0] = v33.i64[0];
        ++v27;
        v28 += 3;
      }

      while (v27 != 3);
      v35 = v156;
      *a12 = v155;
      a12[1] = v35;
      a12[2] = v157;
      *&a12[3].confidence = 0;
    }
  }

  else
  {
    v30 = v136;
    v29 = v137;
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [RansacEstimation ApplyRansacEstimation:desMatchInput:desMatchInput:desMatchInput:desMatchCountInput:xscaleFactorInput:yscaleFactorInput:imageDimInput:imageDimInput:homographyMatrixOutput:waitForComplete:];
    }
  }

  return v134;
}

- (BOOL)ApplyRansacEstimation:desMatchInput:desMatchInput:desMatchInput:desMatchCountInput:xscaleFactorInput:yscaleFactorInput:imageDimInput:imageDimInput:homographyMatrixOutput:waitForComplete:.cold.2()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11(&dword_24874B000, v0, v1, "Fatal error: scratch space memory is not provided", v2, v3, v4, v5, v7);
  return (global_logLevel & 0x10) == 0;
}

@end