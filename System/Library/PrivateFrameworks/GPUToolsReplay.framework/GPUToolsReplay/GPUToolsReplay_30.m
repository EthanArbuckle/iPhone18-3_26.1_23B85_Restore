void AccelerationStructureViewerServer::Renderer::requestQueryRays(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v86 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__9206;
  v83 = __Block_byref_object_dispose__9207;
  v84 = [*(a1 + 24) newBufferWithBytes:a4 length:48 * a5 options:0];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__9206;
  v77 = __Block_byref_object_dispose__9207;
  v78 = [*(a1 + 24) newBufferWithLength:416 * a5 options:0];
  std::mutex::lock((a1 + 48));
  v71 = *(a1 + 16992);
  v72 = *(a1 + 17008);
  v57 = *(a1 + 17016);
  memcpy(__dst, (a1 + 17024), sizeof(__dst));
  v9 = *(a1 + 17576);
  std::mutex::unlock((a1 + 48));
  v10 = AccelerationStructureViewerServer::Renderer::reserveUniformBufferIndex(a1, v9);
  if (v10 != 3)
  {
    v14 = v10;
    v15 = [*(a1 + 17608 + 8 * v10) contents];
    *v15 = v71;
    *(v15 + 16) = v72;
    *(v15 + 24) = v57;
    memcpy((v15 + 32), __dst, 0x1B0uLL);
    v16 = *(a1 + 17640);
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v57 | (HIDWORD(v57) << 32);
    v18 = a1 + 17640;
    do
    {
      v19 = *(v16 + 32);
      v20 = v19 >= v17;
      v21 = v19 < v17;
      if (v20)
      {
        v18 = v16;
      }

      v16 = *(v16 + 8 * v21);
    }

    while (v16);
    if (v18 == a1 + 17640)
    {
LABEL_15:
      v24 = 0;
    }

    else
    {
      v22 = *(v18 + 32);
      v23 = v18 + 40;
      if (v17 >= v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    v25 = *(a1 + 8);
    Intersector = AccelerationStructureViewerServer::Renderer::getIntersector(a1, 4, v24);
    if (*(Intersector + 32))
    {
      v27 = *(a1 + 16840);
      if (v27)
      {
        (*(*v27 + 48))(v27, a1, a2, a3, 0, 0);
      }

      v28 = v80[5];
      v80[5] = 0;

      v29 = v74[5];
      v74[5] = 0;

      v30 = a1;
      v31 = v14;
LABEL_48:
      AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v30, v31, v9);
      goto LABEL_49;
    }

    v32 = Intersector;
    v55 = v9;
    v56 = a2;
    v58 = a3;
    v33 = [*(a1 + 17568) commandBufferWithDescriptor:*(a1 + 17552)];
    [v33 setLabel:@"ASVS Metal Intersector"];
    v54 = v33;
    v34 = [v33 computeCommandEncoder];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASVS Metal Intersector '%@'", &stru_2860BD438];
    [v34 setLabel:v35];

    [v34 setComputePipelineState:v32[1]];
    [v34 setBuffer:*(a1 + 17608 + 8 * v14) offset:0 atIndex:1];
    v36 = *(a1 + 17736);
    if (v36)
    {
      [v34 setAccelerationStructure:v36 atBufferIndex:2];
    }

    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v66 = 0u;
    v37 = *(a1 + 17744);
    v38 = [v37 countByEnumeratingWithState:&v66 objects:v85 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v67;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v67 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [v34 useResource:*(*(&v66 + 1) + 8 * i) usage:1];
        }

        v39 = [v37 countByEnumeratingWithState:&v66 objects:v85 count:16];
      }

      while (v39);
    }

    v42 = v32[3];
    if (v42)
    {
      [v34 setIntersectionFunctionTable:v42 atBufferIndex:3];
    }

    else
    {
      v43 = v32[2];
      if (!v43)
      {
LABEL_34:
        v53 = v32;
        [v34 setBuffer:v80[5] offset:0 atIndex:4];
        [v34 setBuffer:v74[5] offset:0 atIndex:5];
        [v34 setBuffer:*(a1 + 17752) offset:0 atIndex:6];
        v44 = v25[23];
        if (v25[24] != v44)
        {
          v45 = 0;
          v46 = 0;
          do
          {
            [v34 useResource:*(v44 + v45 + 24) usage:1];
            [v34 useResource:*(v44 + v45 + 40) usage:1];
            [v34 useResource:*(v44 + v45 + 56) usage:1];
            v47 = *(v44 + v45 + 72);
            if (v47)
            {
              [v34 useResource:v47 usage:1];
            }

            v48 = *(v44 + v45 + 88);
            if (v48)
            {
              [v34 useResource:v48 usage:1];
            }

            v49 = *(v44 + v45 + 104);
            if (v49)
            {
              [v34 useResource:v49 usage:1];
            }

            v50 = *(v44 + v45 + 152);
            if (v50)
            {
              [v34 useResource:v50 usage:1];
            }

            v51 = *(v44 + v45 + 168);
            if (v51)
            {
              [v34 useResource:v51 usage:1];
            }

            ++v46;
            v44 = v25[23];
            v45 += 184;
          }

          while (v46 < 0xD37A6F4DE9BD37A7 * ((v25[24] - v44) >> 3));
        }

        [v34 waitForFence:*(a1 + 17528)];
        v64 = a5;
        v65 = vdupq_n_s64(1uLL);
        v62 = [v53[1] maxTotalThreadsPerThreadgroup];
        v63 = v65;
        [v34 dispatchThreads:&v64 threadsPerThreadgroup:&v62];
        [v34 updateFence:*(a1 + 17528)];
        [v34 endEncoding];

        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = ___ZN33AccelerationStructureViewerServer8Renderer16requestQueryRaysE15ASVQueryRayTypeyP6ASVRayj_block_invoke;
        v59[3] = &unk_2796590A8;
        v59[6] = a1;
        v59[7] = v58;
        v60 = v56;
        v61 = a5;
        v59[4] = &v73;
        v59[5] = &v79;
        [v54 addCompletedHandler:v59];
        [v54 commit];

        v30 = a1;
        v31 = v14;
        v9 = v55;
        goto LABEL_48;
      }

      [v34 setVisibleFunctionTable:v43 atBufferIndex:3];
    }

    (*(*v25 + 104))(v25, v34);
    goto LABEL_34;
  }

  v11 = *(a1 + 16840);
  if (v11)
  {
    (*(*v11 + 48))(v11, a1, a2, a3, 0, 0);
  }

  v12 = v80[5];
  v80[5] = 0;

  v13 = v74[5];
  v74[5] = 0;

LABEL_49:
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v79, 8);
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__9206(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AccelerationStructureViewerServer::Renderer::reserveUniformBufferIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  std::mutex::lock((a1 + 48));
  v4 = 0;
  v5 = a1 + 17520;
  while ((*(v5 + v4) & 1) != 0)
  {
    if (++v4 == 3)
    {
      dispatch_semaphore_signal(v3);
      LOBYTE(v4) = -1;
      goto LABEL_6;
    }
  }

  *(v5 + v4) = 1;
LABEL_6:
  std::mutex::unlock((a1 + 48));

  return v4;
}

uint64_t AccelerationStructureViewerServer::Renderer::getIntersector(uint64_t a1, int a2, unint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 48));
  v6 = *(a1 + 17696);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = (a1 + 17696);
  do
  {
    v8 = *(v6 + 8);
    if (v8 >= a2)
    {
      if (v8 <= a2)
      {
        v9 = v6[5];
        v10 = v9 >= a3;
        v11 = v9 < a3;
        if (v10)
        {
          v7 = v6;
        }

        v6 += v11;
      }

      else
      {
        v7 = v6;
      }
    }

    else
    {
      ++v6;
    }

    v6 = *v6;
  }

  while (v6);
  if (v7 == (a1 + 17696) || (v12 = *(v7 + 8), v12 > a2) || v12 >= a2 && v7[5] > a3)
  {
LABEL_14:
    v13 = *(a1 + 8);
    operator new();
  }

  v14 = v7[6];
  std::mutex::unlock((a1 + 48));
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(uint64_t a1, unsigned int a2, void *a3)
{
  if (a2 != 3)
  {
    dsema = a3;
    std::mutex::lock((a1 + 48));
    *(a1 + a2 + 17520) = 0;
    std::mutex::unlock((a1 + 48));
    dispatch_semaphore_signal(dsema);
  }
}

void ___ZN33AccelerationStructureViewerServer8Renderer16requestQueryRaysE15ASVQueryRayTypeyP6ASVRayj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN33AccelerationStructureViewerServer8Renderer16requestQueryRaysE15ASVQueryRayTypeyP6ASVRayj_block_invoke_2;
  block[3] = &unk_279659080;
  v4 = *(a1 + 56);
  v8 = v2;
  v9 = v4;
  v5 = *(a1 + 68);
  v10 = *(a1 + 64);
  v11 = v5;
  v7 = *(a1 + 32);
  dispatch_async(v3, block);
}

void ___ZN33AccelerationStructureViewerServer8Renderer16requestQueryRaysE15ASVQueryRayTypeyP6ASVRayj_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 16840);
  if (v3)
  {
    (*(*v3 + 48))(v3, v2, *(a1 + 64), *(a1 + 56), [*(*(*(a1 + 32) + 8) + 40) contents], *(a1 + 68));
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

id **std::unique_ptr<AccelerationStructureViewerServer::Intersector>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x2530332C0](v2, 0x1080C40EC4B14DALL);
  }

  return a1;
}

BOOL AccelerationStructureViewerServer::Renderer::requestSample()
{
  v0 = MEMORY[0x28223BE20]();
  v193 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = objc_autoreleasePoolPush();
  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = __Block_byref_object_copy__9206;
  v150 = __Block_byref_object_dispose__9207;
  v151 = 0;
  std::mutex::lock((v0 + 48));
  if (!*(v0 + 17712))
  {
    if (!*(v0 + 17752))
    {
      goto LABEL_34;
    }

    if (*(v0 + 16840))
    {
      v36 = atomic_load((v0 + 40));
      v37 = atomic_load((v0 + 32));
      if (v36 >= v37 + 32)
      {
        goto LABEL_34;
      }
    }
  }

  v4 = 120;
  while (*(v0 + v4) >= *(v0 + 17512))
  {
    v4 += 8;
    if (v4 == 376)
    {
      atomic_store(0, (v0 + 17544));
      break;
    }
  }

  if (*(v0 + 16996) && *(v0 + 16840))
  {
    objc_storeStrong(v147 + 5, *(v0 + 17576));
    std::mutex::unlock((v0 + 48));
    v5 = AccelerationStructureViewerServer::Renderer::reserveUniformBufferIndex(v0, v147[5]);
    if (v5 != 3)
    {
      v6 = v5;
      Current = CFAbsoluteTimeGetCurrent();
      std::mutex::lock((v0 + 48));
      v128 = *(v0 + 112);
      v116 = *(v0 + 16840);
      v114 = *(v0 + 16849);
      v115 = *(v0 + 17504);
      v8 = *(v0 + 16852);
      v139 = *(v0 + 16856);
      v135 = *(v0 + 16880);
      v136 = *(v0 + 16864);
      v133 = *(v0 + 16912);
      v134 = *(v0 + 16896);
      v126 = *(v0 + 16944);
      v127 = *(v0 + 16928);
      v131 = *(v0 + 16976);
      v132 = *(v0 + 16960);
      v119 = *(v0 + 16992);
      v9 = *(v0 + 16996);
      v10 = *(v0 + 16997);
      *&v192[15] = *(v0 + 17012);
      *v192 = v10;
      v129 = *(v0 + 17016);
      v11 = *(v0 + 17024);
      v118 = *(v0 + 17025);
      v120 = *(v0 + 17033);
      v122 = *(v0 + 17034);
      v123 = *(v0 + 17035);
      v117 = *(v0 + 17036);
      v12 = *(v0 + 17040);
      v124 = *(v0 + 17045);
      v125 = *(v0 + 17044);
      memcpy(v191, (v0 + 17046), sizeof(v191));
      memcpy(v145, (v0 + 8632), sizeof(v145));
      memcpy(__dst, (v0 + 440), sizeof(__dst));
      std::mutex::unlock((v0 + 48));
      v13 = v9 - 1;
      v14 = v9 - 1 + v139.i32[0];
      if (v14 < v9)
      {
        goto LABEL_78;
      }

      v15 = v13 + v139.i32[1];
      if (v13 + v139.i32[1] < v9)
      {
        goto LABEL_78;
      }

      v16 = *(v0 + 17584 + 8 * v6);
      if (!v16)
      {
        goto LABEL_78;
      }

      v113 = v11;
      v17 = [v16 contents];
      if (!v17)
      {
        goto LABEL_78;
      }

      v19 = v17;
      v112 = v14 / v9;
      v17[1].i32[0] = v8;
      *v18.i32 = v9;
      v20 = vdup_lane_s32(v18, 0);
      v111 = v15 / v9;
      v17[2] = vdiv_f32(v20, vcvt_f32_u32(v139));
      ++v17->i32[0];
      v21 = CFAbsoluteTimeGetCurrent();
      v22 = 0;
      v23 = v9 * v9;
      v24 = v19->i32[0] % (v9 * v9);
      if (v9 * v9 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v23;
      }

      v26 = 1.79769313e308;
      do
      {
        if (v21 - *&v145[v22] > 1.0 && __dst[v22] < v26)
        {
          v26 = __dst[v22];
          LOWORD(v24) = v22;
        }

        ++v22;
      }

      while (v25 != v22);
      v27 = v24;
      do
      {
        if (v21 - *&v145[v24] >= 1.0)
        {
          break;
        }

        v24 = (v24 + 1) % v23;
      }

      while (v24 != v27);
      v28 = v24;
      v19->i32[1] = v24;
      *v19[8].f32 = v127;
      *v19[10].f32 = v126;
      *v19[12].f32 = v132;
      *v19[14].f32 = v131;
      v194.columns[1] = v135;
      v194.columns[0] = v136;
      v194.columns[3] = v133;
      v194.columns[2] = v134;
      v195 = __invert_f4(v194);
      v29 = 0;
      *v19[24].f32 = v195;
      v30 = *v19[8].f32;
      v31 = *v19[10].f32;
      v32 = *v19[12].f32;
      v33 = *v19[14].f32;
      v152 = v136;
      v153 = v135;
      v154 = v134;
      v155 = v133;
      do
      {
        *&v173[v29] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v152 + v29))), v31, *&v152.f32[v29 / 4], 1), v32, *(&v152 + v29), 2), v33, *(&v152 + v29), 3);
        v29 += 16;
      }

      while (v29 != 64);
      v196 = *v173;
      *v19[16].f32 = *v173;
      *v19[18].f32 = v196.columns[1];
      *v19[20].f32 = v196.columns[2];
      *v19[22].f32 = v196.columns[3];
      *v19[32].f32 = __invert_f4(v196);
      v34 = vdivq_f32(v131, v132);
      v19[3].i32[0] = v34.i32[2];
      v19[3].f32[1] = vmuls_lane_f32(v132.f32[2], v34, 2) / (v132.f32[2] + 1.0);
      if (v9 <= 7)
      {
        v35 = v139;
        if (v9 == 2)
        {
          v41 = v24;
          v42 = &ASVDither2x2;
        }

        else
        {
          if (v9 != 4)
          {
            goto LABEL_44;
          }

          v41 = v24;
          v42 = &ASVDither4x4;
        }
      }

      else
      {
        v35 = v139;
        if (v9 == 8)
        {
          v41 = v24;
          v42 = &ASVDither8x8;
        }

        else
        {
          if (v9 != 16)
          {
            if (v9 == 32)
            {
              v28 = ASVDither32x32[v24];
            }

LABEL_44:
            v43.f32[0] = (v28 % v9);
            v43.f32[1] = (v28 / v9);
            v19[4] = v20;
            v19[5] = v43;
            v44.i64[0] = v35.u32[0];
            v44.i64[1] = v35.u32[1];
            __asm { FMOV            V1.2D, #1.0 }

            v19[6] = vcvt_f32_f64(vdivq_f64(_Q1, vcvtq_f64_u64(v44)));
            v50 = [*(v0 + 17608 + 8 * v6) contents];
            *v50 = v119;
            *(v50 + 4) = v9;
            *(v50 + 5) = *v192;
            *(v50 + 20) = *&v192[15];
            *(v50 + 24) = v129;
            *(v50 + 32) = v113;
            *(v50 + 33) = v118;
            *(v50 + 41) = v120;
            *(v50 + 42) = v122;
            *(v50 + 43) = v123;
            *(v50 + 44) = v117;
            *(v50 + 48) = v12;
            *(v50 + 52) = v125;
            *(v50 + 53) = v124;
            memcpy((v50 + 54), v191, 0x19AuLL);
            v51 = *(v0 + 17640);
            if (v51)
            {
              v52 = v129 | (HIDWORD(v129) << 32);
              v53 = v0 + 17640;
              do
              {
                v54 = *(v51 + 32);
                _CF = v54 >= v52;
                v55 = v54 < v52;
                if (_CF)
                {
                  v53 = v51;
                }

                v51 = *(v51 + 8 * v55);
              }

              while (v51);
              v56 = v128;
              if (v53 == v0 + 17640)
              {
                v59 = 0;
              }

              else
              {
                v57 = *(v53 + 32);
                v58 = v53 + 40;
                if (v52 >= v57)
                {
                  v59 = v58;
                }

                else
                {
                  v59 = 0;
                }
              }
            }

            else
            {
              v59 = 0;
              v56 = v128;
            }

            if (v56 < 3)
            {
              if (*(v0 + 17536))
              {
LABEL_61:
                v121 = (v0 + 17536);
                if ((v113 & 1) == 0)
                {
                  v130 = 1;
                  v60 = 3;
                  goto LABEL_72;
                }

                Intersector = AccelerationStructureViewerServer::Renderer::getIntersector(v0, 2, v59);
                v62 = v0 + 17656;
                v63 = v0;
                v64 = 3;
LABEL_67:
                v65 = AccelerationStructureViewerServer::Renderer::getIntersector(v63, v64, v62);
                if (!v65)
                {
                  goto LABEL_78;
                }

                v66 = v65;
                v130 = 1;
LABEL_73:
                if (Intersector)
                {
                  if (*(Intersector + 32))
                  {
                    if (v116 && (v115 & 1) == 0)
                    {
                      (*(*v116 + 80))();
                      std::mutex::lock((v0 + 48));
                      *(v0 + 17504) = 1;
                      std::mutex::unlock((v0 + 48));
                    }

                    goto LABEL_78;
                  }

                  if (v115 && v116)
                  {
                    (*(*v116 + 88))(v116, v0);
                    std::mutex::lock((v0 + 48));
                    *(v0 + 17504) = 0;
                    std::mutex::unlock((v0 + 48));
                    goto LABEL_83;
                  }

                  if (*(Intersector + 8))
                  {
LABEL_83:
                    v173[0] = 0;
                    v187 = 0u;
                    v188 = 0u;
                    v189 = 0u;
                    v190 = 0;
                    v67 = v125;
                    if (v125 <= 1)
                    {
                      v67 = 1;
                    }

                    v173[16] = v67;
                    v68 = v124;
                    if (v124 <= 1)
                    {
                      v68 = 1;
                    }

                    v173[17] = v68;
                    memcpy(&v173[24], &v191[2], 0x198uLL);
                    *&v173[4] = v12;
                    v173[1] = v113 & 1;
                    *&v173[8] = atomic_fetch_add((v0 + 40), 1uLL);
                    v174 = v9;
                    v175 = v114;
                    v176 = v24;
                    v177 = v8;
                    v178 = v139;
                    v179 = v136;
                    v180 = v135;
                    v181 = v134;
                    v182 = v133;
                    v183 = v127;
                    v184 = v126;
                    v185 = v132;
                    v186 = v131;
                    v69 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:v112 height:v111 mipmapped:0];
                    [v69 setPixelFormat:55];
                    [v69 setStorageMode:2];
                    [v69 setUsage:3];
                    v70 = [*(v0 + 24) newTextureWithDescriptor:v69];
                    v71 = *(&v187 + 1);
                    *(&v187 + 1) = v70;

                    [*(&v187 + 1) setLabel:@"ASVBVH-PreviousDepth"];
                    if (v130)
                    {
                      if (v123)
                      {
                        v72 = 113;
                      }

                      else
                      {
                        v72 = 123;
                      }

                      [v69 setPixelFormat:v72];
                      [v69 setUsage:3];
                      [v69 setStorageMode:2];
                      v73 = [*(v0 + 24) newTextureWithDescriptor:v69];
                      v74 = v188;
                      *&v188 = v73;

                      [v188 setLabel:@"ASVBVH-Traversals"];
                    }

                    else
                    {
                      v75 = v188;
                      *&v188 = 0;
                    }

                    if (v128 < 0xB)
                    {
                      [v69 setPixelFormat:123];
                      [v69 setStorageMode:2];
                      [v69 setUsage:3];
                      v81 = [*(v0 + 24) newTextureWithDescriptor:v69];
                      v82 = *(&v188 + 1);
                      *(&v188 + 1) = v81;

                      [*(&v188 + 1) setLabel:@"ASVBVH-Hit"];
                      if (v128 >= 3 && (v122 & 1) != 0)
                      {
                        [v69 setPixelFormat:123];
                        [v69 setStorageMode:2];
                        [v69 setUsage:3];
                        v83 = [*(v0 + 24) newTextureWithDescriptor:v69];
                        v84 = v189;
                        *&v189 = v83;

                        [v189 setLabel:@"ASVBVH-Data"];
                      }

                      else
                      {
                        v85 = v189;
                        *&v189 = 0;
                      }
                    }

                    else
                    {
                      if (v173[16] != 1)
                      {
                        if (v123)
                        {
                          v76 = 125;
                        }

                        else
                        {
                          v76 = 90;
                        }

                        [v69 setPixelFormat:v76];
                        [v69 setStorageMode:2];
                        [v69 setUsage:3];
                        v77 = [*(v0 + 24) newTextureWithDescriptor:v69];
                        v78 = *(&v189 + 1);
                        *(&v189 + 1) = v77;

                        [*(&v189 + 1) setLabel:@"ASVBVH-Material"];
                      }

                      if (v173[17] != 1)
                      {
                        [v69 setPixelFormat:13];
                        [v69 setStorageMode:2];
                        [v69 setUsage:3];
                        v79 = [*(v0 + 24) newTextureWithDescriptor:v69];
                        v80 = v190;
                        v190 = v79;

                        [v190 setLabel:@"ASVBVH-SelectionMask"];
                      }
                    }

                    std::mutex::lock((v0 + 48));
                    *(v0 + 2 * (v173[8] & 0x1F) + 376) = v24;
                    *(v0 + 8632 + 8 * v24) = CFAbsoluteTimeGetCurrent();
                    std::mutex::unlock((v0 + 48));
                    if ((*Intersector - 2) >= 4)
                    {
                      if (*Intersector >= 2u)
                      {
                        v38 = 0;
LABEL_150:

                        AccelerationStructureViewer::Sample::~Sample(v173);
                        goto LABEL_36;
                      }

                      v88 = *(v0 + 8);
                      v89 = [v2 commandBufferWithDescriptor:*(v0 + 17552)];
                      [v89 setLabel:@"ASVS Generic Intersector"];
                      v140 = v89;
                      v90 = [v89 computeCommandEncoder];
                      v91 = MEMORY[0x277CCACA8];
                      [*(Intersector + 8) label];
                      v93 = v92 = Intersector;
                      v94 = [v91 stringWithFormat:@"ASV BVH HeatMap '%@'", v93];
                      [v90 setLabel:v94];

                      [v90 setComputePipelineState:*(v92 + 8)];
                      [v90 setTexture:*(&v187 + 1) atIndex:1];
                      [v90 setTexture:v188 atIndex:2];
                      [v90 setTexture:*(&v188 + 1) atIndex:3];
                      [v90 setTexture:v189 atIndex:4];
                      [v90 setTexture:*(&v189 + 1) atIndex:5];
                      [v90 setTexture:v190 atIndex:6];
                      [v90 setBuffer:*(v0 + 17584 + 8 * v6) offset:0 atIndex:0];
                      [v90 setBuffer:*(v0 + 17608 + 8 * v6) offset:0 atIndex:1];
                      v95 = *(v0 + 17736);
                      if (v95)
                      {
                        [v90 setAccelerationStructure:v95 atBufferIndex:3];
                      }

                      v137 = v69;
                      v96 = *(v92 + 16);
                      if (v96)
                      {
                        [v90 setVisibleFunctionTable:v96 atBufferIndex:4];
                        (*(*v88 + 104))(v88, v90);
                      }

                      [v90 setBuffer:*(v0 + 17752) offset:0 atIndex:5];
                      v97 = v88[23];
                      if (v88[24] != v97)
                      {
                        v98 = 0;
                        v99 = 0;
                        do
                        {
                          [v90 useResource:*(v97 + v98 + 24) usage:1];
                          [v90 useResource:*(v97 + v98 + 40) usage:1];
                          [v90 useResource:*(v97 + v98 + 56) usage:1];
                          v100 = *(v97 + v98 + 72);
                          if (v100)
                          {
                            [v90 useResource:v100 usage:1];
                          }

                          v101 = *(v97 + v98 + 88);
                          if (v101)
                          {
                            [v90 useResource:v101 usage:1];
                          }

                          v102 = *(v97 + v98 + 104);
                          if (v102)
                          {
                            [v90 useResource:v102 usage:1];
                          }

                          v103 = *(v97 + v98 + 152);
                          if (v103)
                          {
                            [v90 useResource:v103 usage:1];
                          }

                          v104 = *(v97 + v98 + 168);
                          if (v104)
                          {
                            [v90 useResource:v104 usage:1];
                          }

                          ++v99;
                          v97 = v88[23];
                          v98 += 184;
                        }

                        while (v99 < 0xD37A6F4DE9BD37A7 * ((v88[24] - v97) >> 3));
                      }

                      v152.i64[0] = v112;
                      v152.i64[1] = v111;
                      v38 = 1;
                      v153.i64[0] = 1;
                      v142 = vdupq_n_s64(8uLL);
                      v143 = 1;
                      [v90 dispatchThreads:&v152 threadsPerThreadgroup:&v142];
                      [v90 endEncoding];

                      AccelerationStructureViewer::Sample::Sample(v156, v173);
                      v86 = v140;
                      AccelerationStructureViewerServer::Renderer::commitSample(v0, v6, v156, v140, v147[5], Current);
                      AccelerationStructureViewer::Sample::~Sample(v156);
                      v69 = v137;
LABEL_149:

                      goto LABEL_150;
                    }

                    v86 = [v2 commandBufferWithDescriptor:*(v0 + 17552)];
                    [v86 setLabel:@"ASVS Metal Intersector"];
                    if (*(v0 + 17536))
                    {
                      if (v113)
                      {
                        AccelerationStructureViewer::Sample::Sample(v172, v173);
                        v87 = AccelerationStructureViewerServer::Renderer::metalIntersectorPass(v0, v6, v172, v86, v66, v50, 0, 0);
                        AccelerationStructureViewer::Sample::~Sample(v172);
                        if (!v87)
                        {
                          AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v0, v6, v147[5]);
                          v38 = 0;
                          goto LABEL_149;
                        }
                      }

                      else
                      {
                        v87 = 0;
                      }

                      AccelerationStructureViewer::Sample::Sample(v171, v173);
                      v141 = v86;
                      v109 = AccelerationStructureViewerServer::Renderer::metalIntersectorPass(v0, v6, v171, v86, Intersector, v50, 1, 1);
                      AccelerationStructureViewer::Sample::~Sample(v171);
                      v38 = v109 != 0;
                      if (v109)
                      {
                        if (*Intersector == 3 || (v113 & 1) != 0)
                        {
                          v138 = v69;
                          if ((v113 & 1) == 0)
                          {
                            v110 = v109;

                            v87 = v110;
                          }

                          v160[0] = MEMORY[0x277D85DD0];
                          v160[1] = 3321888768;
                          v160[2] = ___ZN33AccelerationStructureViewerServer8Renderer13requestSampleEPU26objcproto15MTLCommandQueue11objc_object_block_invoke;
                          v160[3] = &unk_2860BC520;
                          v166 = v0;
                          AccelerationStructureViewer::Sample::Sample(v161, v173);
                          v162 = v2;
                          v87 = v87;
                          v163 = v87;
                          v169 = v6;
                          v167 = v50;
                          v164 = v109;
                          v168 = Current;
                          v165 = &v146;
                          [v141 addCompletedHandler:v160];
                          [v141 commit];

                          AccelerationStructureViewer::Sample::~Sample(v161);
                          v69 = v138;
                        }

                        else
                        {
                          if (v87 != v109)
                          {
                            AccelerationStructureViewerServer::Profiler::finishSkipFrame(*v121, v109);
                          }

                          AccelerationStructureViewer::Sample::Sample(v170, v173);
                          AccelerationStructureViewerServer::Renderer::commitSample(v0, v6, v170, v141, v147[5], Current);
                          AccelerationStructureViewer::Sample::~Sample(v170);
                        }
                      }

                      else
                      {
                        AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v0, v6, v147[5]);
                      }

                      v86 = v141;
                      goto LABEL_149;
                    }

                    AccelerationStructureViewer::Sample::Sample(v159, v173);
                    v105 = Intersector;
                    v106 = v86;
                    v107 = AccelerationStructureViewerServer::Renderer::metalIntersectorPass(v0, v6, v159, v86, v105, v50, 1, v130 & v113 ^ 1);
                    AccelerationStructureViewer::Sample::~Sample(v159);
                    if (v107)
                    {
                      if ((v130 & v113) == 0)
                      {
LABEL_133:
                        AccelerationStructureViewer::Sample::Sample(v157, v173);
                        AccelerationStructureViewerServer::Renderer::commitSample(v0, v6, v157, v106, v147[5], Current);
                        AccelerationStructureViewer::Sample::~Sample(v157);
                        v38 = 1;
LABEL_144:

                        v86 = v106;
                        goto LABEL_149;
                      }

                      AccelerationStructureViewer::Sample::Sample(v158, v173);
                      v108 = AccelerationStructureViewerServer::Renderer::metalIntersectorPass(v0, v6, v158, v106, v66, v50, 0, 1);
                      AccelerationStructureViewer::Sample::~Sample(v158);
                      if (v108)
                      {

                        goto LABEL_133;
                      }
                    }

                    AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v0, v6, v147[5]);
                    v38 = 0;
                    goto LABEL_144;
                  }
                }

LABEL_78:
                AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v0, v6, v147[5]);
                goto LABEL_35;
              }
            }

            else
            {
              if (*(v0 + 17536))
              {
                if ((v120 & 1) == 0)
                {
                  v121 = (v0 + 17536);
                  v130 = 0;
                  v60 = 2;
LABEL_72:
                  Intersector = AccelerationStructureViewerServer::Renderer::getIntersector(v0, v60, v59);
                  v66 = 0;
                  goto LABEL_73;
                }

                goto LABEL_61;
              }

              if ((v120 & 1) == 0)
              {
                v121 = (v0 + 17536);
                v130 = 0;
                goto LABEL_71;
              }
            }

            v121 = (v0 + 17536);
            if (v113)
            {
              Intersector = AccelerationStructureViewerServer::Renderer::getIntersector(v0, 2, v59);
              v62 = v0 + 17656;
              v63 = v0;
              v64 = 5;
              goto LABEL_67;
            }

            v130 = 1;
LABEL_71:
            v60 = 5;
            goto LABEL_72;
          }

          v41 = v24;
          v42 = &ASVDither16x16;
        }
      }

      v28 = v42[v41];
      goto LABEL_44;
    }
  }

  else
  {
LABEL_34:
    std::mutex::unlock((v0 + 48));
  }

LABEL_35:
  v38 = 0;
LABEL_36:
  _Block_object_dispose(&v146, 8);

  objc_autoreleasePoolPop(v3);
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

void *AccelerationStructureViewer::Sample::Sample(void *a1, uint64_t a2)
{
  memcpy(a1, a2, 0x240uLL);
  v4 = *(a2 + 600);
  if (v4)
  {
    if (v4 == a2 + 576)
    {
      a1[75] = a1 + 72;
      (*(**(a2 + 600) + 24))(*(a2 + 600));
    }

    else
    {
      a1[75] = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    a1[75] = 0;
  }

  a1[76] = *(a2 + 608);
  a1[77] = *(a2 + 616);
  a1[78] = *(a2 + 624);
  a1[79] = *(a2 + 632);
  a1[80] = *(a2 + 640);
  a1[81] = *(a2 + 648);
  return a1;
}

id AccelerationStructureViewerServer::Renderer::metalIntersectorPass(void *a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5, _DWORD *a6, int a7, int a8)
{
  v141[7] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v119 = a1[1];
  v15 = [v14 computeCommandEncoder];
  v16 = MEMORY[0x277CCACA8];
  v17 = [*(a5 + 8) label];
  v18 = [v16 stringWithFormat:@"ASVS Metal Intersector '%@'", v17];
  [v15 setLabel:v18];

  v122 = a3;
  v123 = v14;
  v121 = a2;
  if (*a5 == 3)
  {
    v117 = *(a1[2192] + 8);
    [*(a5 + 8) maxTotalThreadsPerThreadgroup];
    v19 = a1[2192];
    v115 = a2;
    v112 = v15;
    v20 = (3 * *(a3 + 440) * *(a3 + 444)) / *(v19 + 8);
    a6[2] = [*(a3 + 608) width];
    a6[3] = [*(a3 + 608) height];
    v21 = [*(a3 + 608) width];
    a6[4] = [*(a3 + 608) height] * v21;
    a6[5] = v20;
    v22 = 4 * *(v19 + 8) * v20;
    v113 = v19 + 112;
    v23 = *(v19 + 112 + 8 * a2);
    if (!v23 || [v23 length] < v22)
    {
      v24 = [*v19 newBufferWithLength:v22 options:0];
      v25 = *(v113 + 8 * a2);
      *(v113 + 8 * a2) = v24;
    }

    std::mutex::lock((v19 + 320));
    if (*(v19 + 432))
    {
      ++*(v19 + 436);
      std::mutex::unlock((v19 + 320));
      v139 = 0;
      memset(v138.__cv_.__opaque, 0, sizeof(v138.__cv_.__opaque));
      v138.__cv_.__sig = 1018212795;
      v140 = 0u;
      memset(v141, 0, 24);
      operator new();
    }

    v36 = *v19;
    v37 = *(v19 + 760);
    *(v19 + 760) = 0;

    v38 = *(v19 + 752);
    *(v19 + 752) = 0;

    GRCReleaseAllCounterSourceGroup();
    context = objc_autoreleasePoolPush();
    v39 = GRCCopyAllCounterSourceGroup();
    v40 = *(v19 + 752);
    *(v19 + 752) = v39;

    v41 = *(v19 + 752);
    if (!v41 || ![v41 count])
    {
      goto LABEL_85;
    }

    v109 = [*(v19 + 752) firstObject];
    v42 = [v109 sourceList];
    v43 = *(v19 + 760);
    *(v19 + 760) = v42;

    v44 = *(v19 + 760);
    if (!v44 || ![v44 count])
    {
LABEL_84:

LABEL_85:
      objc_autoreleasePoolPop(context);
LABEL_86:

      NSLog(&cfstr_UnableToStartS.isa);
      v101 = *(v113 + 8 * v115);
      *(v113 + 8 * v115) = 0;

      std::mutex::unlock((v19 + 320));
      [v112 endEncoding];
      v99 = 0;
      goto LABEL_87;
    }

    v108 = v36;
    obj = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    location = (v19 + 760);
    v45 = *(v19 + 760);
    v46 = [v45 countByEnumeratingWithState:&v128 objects:&v138 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v129;
      while (2)
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v129 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v128 + 1) + 8 * i);
          if (![v50 ringBufferNum])
          {
            v100 = v45;
            goto LABEL_81;
          }

          v51 = [v50 name];
          v52 = [v51 containsString:@"APS_USC"];

          if (v52)
          {
            [obj addObject:v50];
            *(v19 + 848) = [obj count] - 1;
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v128 objects:&v138 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v14 = v123;
    if ([obj count])
    {
      objc_storeStrong(location, obj);
      *(v19 + 768) = [v109 sampleMarker];
      v136[0] = @"RingBufferSizeInKB";
      v136[1] = @"SyncDrainMode";
      v137[0] = &unk_2860D69C8;
      v137[1] = &unk_2860D69E0;
      v136[2] = @"SystemTimePeriod";
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v19 + 808)];
      v136[3] = @"ProfileControl";
      v137[2] = v53;
      v137[3] = &unk_2860D6358;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:4];
      v55 = *(v19 + 824);
      *(v19 + 824) = v54;

      v56 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v57 = *(v19 + 832);
      *(v19 + 832) = v56;

      v58 = *(v19 + 832);
      v59 = MEMORY[0x277D0AF30];
      v134[0] = @"TileTracing";
      v134[1] = @"ESLInstTracing";
      v135[0] = &unk_2860D69F8;
      v135[1] = &unk_2860D69F8;
      v134[2] = @"CountPeriod";
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v19 + 812)];
      v135[2] = v60;
      v134[3] = @"PulsePeriod";
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v19 + 816)];
      v135[3] = v61;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:4];
      v63 = [v59 selectWithName:@"KickTracing" options:v62];
      [v58 addObject:v63];

      agxps_load_counter_obfuscation_map("/AppleInternal/Library/AGX/AGXRawCounterMapping.csv");
      v64 = agxps_counter_deobfuscate_name("_bc236dcf3744edf6bcf329ae47088528b35ea5e0beac601cf6781545eb2327cc");
      v65 = agxps_counter_deobfuscate_name("_dc9d2c02b3df41ad60f6512a3823b2d0f9b735ae9c41650c4396bac13a7a3c5e");
      v66 = [MEMORY[0x277CBEB18] arrayWithCapacity:20];
      v67 = *(v19 + 840);
      *(v19 + 840) = v66;

      v68 = 0;
      v133[0] = v64;
      v133[1] = v65;
      do
      {
        v69 = *(v19 + 840);
        v70 = MEMORY[0x277D0AF28];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:v133[v68]];
        v72 = [v70 selectWithName:v71 options:0];
        [v69 addObject:v72];

        ++v68;
      }

      while (v68 != 2);
      [v109 setOptions:&unk_2860D6380];
      v73 = [*(v19 + 760) objectAtIndexedSubscript:*(v19 + 848)];
      if ([v73 requestTriggers:*(v19 + 832) firstErrorIndex:0])
      {
        v133[0] = 0;
        v14 = v123;
        if ([v73 requestCounters:*(v19 + 840) firstErrorIndex:v133])
        {
          [v73 setOptions:*(v19 + 824)];
          if ([v73 setEnabled:1])
          {

            v36 = v108;
            if ([*location count])
            {
              [*(v19 + 760) objectAtIndexedSubscript:0];

              objc_autoreleasePoolPop(context);
              if (AccelerationStructureViewerServer::Profiler::startAPSStreaming(*(v19 + 752)))
              {
                *(v19 + 608) = *(v19 + 600);
                std::vector<AccelerationStructureViewerServer::APSUSCChunkCollector>::resize((v19 + 600), *(v19 + 8));
                atomic_store(0, (v19 + 776));
                atomic_store(0, (v19 + 784));
                *(v19 + 432) = 1;
                v74 = [*(v19 + 760) objectAtIndexedSubscript:0];
                v75 = *(v19 + 8);
                if (v75 / 10 <= 1)
                {
                  v76 = 1;
                }

                else
                {
                  v76 = v75 / 10;
                }

                if (v76 == 1)
                {
                  v77 = *(v19 + 8);
                }

                v78 = v74;
                operator new();
              }

              goto LABEL_86;
            }

            goto LABEL_83;
          }

          v100 = v73;
          v106 = [v73 name];
          NSLog(&cfstr_FailErrorWhile_5.isa, v106);
        }

        else
        {
          v100 = v73;
          v105 = v133[0];
          v106 = [*(v19 + 840) objectAtIndexedSubscript:v133[0]];
          NSLog(&cfstr_FailErrorWhile_4.isa, v105, v106);
        }
      }

      else
      {
        v100 = v73;
        v104 = [v73 name];
        NSLog(&cfstr_FailErrorWhile.isa, v104);

LABEL_81:
        v14 = v123;
      }

      v36 = v108;
    }

LABEL_83:

    goto LABEL_84;
  }

  v26 = [*(a3 + 608) width];
  v116 = [*(a3 + 608) height];
  v118 = [*(a5 + 8) threadExecutionWidth];
  v27 = [*(a5 + 8) maxTotalThreadsPerThreadgroup];
  v28 = [*(a5 + 8) threadExecutionWidth];
  v29 = a1[2192];
  v114 = v27 / v28;
  v30 = a1;
  if (v29)
  {
    v31 = v15;
    std::mutex::lock((v29 + 320));
    v32 = v119;
    if (*(v29 + 432) == 1 && !*(v29 + 436))
    {
      AccelerationStructureViewerServer::Profiler::stopAPSStreaming(v29, *v29);
    }

    else
    {
      LODWORD(v138.__cv_.__sig) = [v31 globalTraceObjectID];
      std::mutex::lock((v29 + 624));
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((v29 + 688), v138.__cv_.__sig);
      std::mutex::unlock((v29 + 624));
    }

    std::mutex::unlock((v29 + 320));

    a3 = v122;
    v33 = a7;
    v34 = a8;
    v35 = v26;
  }

  else
  {
    v33 = a7;
    v34 = a8;
    v35 = v26;
    v32 = v119;
  }

  if (a1[2192])
  {
    [v15 waitForFence:a1[2191]];
  }

  if (v33)
  {
    [v15 setTexture:*(a3 + 608) atIndex:1];
    [v15 setTexture:*(a3 + 624) atIndex:3];
    [v15 setTexture:*(a3 + 632) atIndex:4];
    [v15 setTexture:*(a3 + 640) atIndex:5];
    v79 = *(a3 + 648);
  }

  else
  {
    [v15 setTexture:0 atIndex:1];
    [v15 setTexture:0 atIndex:3];
    [v15 setTexture:0 atIndex:4];
    [v15 setTexture:0 atIndex:5];
    v79 = 0;
  }

  [v15 setTexture:v79 atIndex:6];
  if (v34)
  {
    v80 = *(a3 + 616);
  }

  else
  {
    v80 = 0;
  }

  v81 = a5;
  [v15 setTexture:v80 atIndex:2];
  v82 = &v30[v121];
  [v15 setBuffer:v82[2198] offset:0 atIndex:0];
  [v15 setBuffer:v82[2201] offset:0 atIndex:1];
  v83 = v30[2217];
  if (v83)
  {
    [v15 setAccelerationStructure:v83 atBufferIndex:2];
  }

  [v15 setBuffer:v30[2219] offset:0 atIndex:9];
  v84 = *(v32 + 184);
  if (*(v32 + 192) != v84)
  {
    v85 = 0;
    v86 = 0;
    do
    {
      [v15 useResource:*(v84 + v85 + 24) usage:1];
      [v15 useResource:*(v84 + v85 + 40) usage:1];
      [v15 useResource:*(v84 + v85 + 56) usage:1];
      v87 = *(v84 + v85 + 72);
      if (v87)
      {
        [v15 useResource:v87 usage:1];
      }

      v88 = *(v84 + v85 + 88);
      if (v88)
      {
        [v15 useResource:v88 usage:1];
      }

      v89 = *(v84 + v85 + 104);
      if (v89)
      {
        [v15 useResource:v89 usage:1];
      }

      v90 = *(v84 + v85 + 152);
      if (v90)
      {
        [v15 useResource:v90 usage:1];
      }

      v91 = *(v84 + v85 + 168);
      if (v91)
      {
        [v15 useResource:v91 usage:1];
      }

      ++v86;
      v84 = *(v32 + 184);
      v85 += 184;
    }

    while (v86 < 0xD37A6F4DE9BD37A7 * ((*(v32 + 192) - v84) >> 3));
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v92 = v30[2218];
  v93 = [v92 countByEnumeratingWithState:&v124 objects:v132 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v125;
    do
    {
      for (j = 0; j != v94; ++j)
      {
        if (*v125 != v95)
        {
          objc_enumerationMutation(v92);
        }

        [v15 useResource:*(*(&v124 + 1) + 8 * j) usage:1];
      }

      v94 = [v92 countByEnumeratingWithState:&v124 objects:v132 count:16];
    }

    while (v94);
  }

  v97 = *(v81 + 24);
  if (v97)
  {
    [v15 setIntersectionFunctionTable:v97 atBufferIndex:3];
    if (*(v81 + 24))
    {
      (*(*v30[1] + 104))(v30[1], v15);
    }
  }

  v98 = v30[2192];
  if (v98)
  {
    [v15 setBuffer:*(v98 + 16) offset:0 atIndex:7];
  }

  [v15 setComputePipelineState:*(v81 + 8)];
  v138.__cv_.__sig = v35;
  *v138.__cv_.__opaque = v116;
  *&v138.__cv_.__opaque[8] = 1;
  *&v128 = v118;
  *(&v128 + 1) = v114;
  *&v129 = 1;
  [v15 dispatchThreads:&v138 threadsPerThreadgroup:&v128];
  if (v30[2192])
  {
    [v15 updateFence:v30[2191]];
  }

  [v15 endEncoding];
  v99 = v15;
  v14 = v123;
LABEL_87:

  v102 = *MEMORY[0x277D85DE8];

  return v99;
}

void AccelerationStructureViewerServer::Renderer::commitSample(void *a1, char a2, uint64_t a3, void *a4, void *a5, double a6)
{
  v26[11] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9206;
  v19 = __Block_byref_object_dispose__9207;
  v12 = a5;
  v20 = v12;
  if (v11)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3321888768;
    v21[2] = ___ZN33AccelerationStructureViewerServer8Renderer12commitSampleEhN27AccelerationStructureViewer6SampleEdPU27objcproto16MTLCommandBuffer11objc_objectPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
    v21[3] = &unk_2860BC590;
    v23[11] = a1;
    v24 = a2;
    AccelerationStructureViewer::Sample::Sample(v22, a3);
    v23[12] = *&a6;
    v23[10] = &v15;
    [v11 addCompletedHandler:v21];
    [v11 commit];

    v13 = v23;
  }

  else
  {
    AccelerationStructureViewer::Sample::Sample(v25, a3);
    AccelerationStructureViewerServer::Renderer::completeSample(a1, a2, v25, v16[5], a6);

    v13 = v26;
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
  _Block_object_dispose(&v15, 8);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN33AccelerationStructureViewerServer8Renderer13requestSampleEPU26objcproto15MTLCommandQueue11objc_object_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 720);
  v3 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = ___ZN33AccelerationStructureViewerServer8Renderer13requestSampleEPU26objcproto15MTLCommandQueue11objc_object_block_invoke_2;
  v10[3] = &unk_2860BC4E8;
  v15 = v2;
  AccelerationStructureViewer::Sample::Sample(v11, a1 + 32);
  v4 = *(a1 + 688);
  v5 = *(a1 + 696);
  v18 = *(a1 + 744);
  v16 = *(a1 + 728);
  *&v6 = *(a1 + 704);
  *(&v6 + 1) = *(a1 + 712);
  v17 = *(a1 + 736);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v13 = v7;
  v14 = v6;
  dispatch_async(v3, v10);

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __destroy_helper_block_a16_32c42_ZTSN27AccelerationStructureViewer6SampleE(id *a1)
{

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 76));
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZN33AccelerationStructureViewerServer8Renderer13requestSampleEPU26objcproto15MTLCommandQueue11objc_object_block_invoke_2(uint64_t a1)
{
  v158 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 720);
  AccelerationStructureViewer::Sample::Sample(v151, a1 + 32);
  v3 = v2[2192];
  v4 = *(a1 + 696);
  v5 = *(a1 + 744);
  v130 = *(a1 + 728);
  v6 = *(a1 + 688);
  v7 = v4;
  std::mutex::lock((v3 + 320));
  --*(v3 + 436);
  std::mutex::unlock((v3 + 320));
  v8 = [v7 globalTraceObjectID];
  __lk.__m_ = (v3 + 624);
  __lk.__owns_ = 1;
  std::mutex::lock((v3 + 624));
  v9 = *(v3 + 736);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = (v3 + 736);
  v11 = v3 + 736;
  do
  {
    v12 = *(v9 + 32);
    v13 = v12 >= v8;
    v14 = v12 < v8;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *(v9 + 8 * v14);
  }

  while (v9);
  if (v11 == v10 || *(v11 + 32) > v8)
  {
LABEL_9:
    NSLog(&cfstr_MissingRayColl.isa);
    v15 = 0;
    goto LABEL_10;
  }

  v126 = v7;
  v140 = 0;
  v141 = &v140;
  v142 = 0x4012000000;
  v143 = __Block_byref_object_copy__9845;
  v144 = __Block_byref_object_dispose__9846;
  v145 = &unk_24DB95716;
  v146 = *(v11 + 40);
  v19 = *(v11 + 48);
  v147 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v127 = v6;
  v125 = v2;
  mach_timebase_info(&info);
  v123 = mach_absolute_time();
  v21 = v141[6];
  v20 = v141[7];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v124 = v20;
  v22 = 0;
  v23 = 0;
LABEL_20:
  v128 = v23;
  v24 = v141[6];
  v25.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 500000000;
  while (*(v3 + 432) == 1)
  {
    if (*(v21 + 89))
    {
      break;
    }

    v26 = atomic_load((v21 + 48));
    if (v26 >= *(v21 + 56))
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v25.__d_.__rep_)
    {
      goto LABEL_39;
    }

    v27 = v5;
    v28.__d_.__rep_ = v25.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v28.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v29.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v29.__d_.__rep_)
      {
        if (v29.__d_.__rep_ < 1)
        {
          if (v29.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            goto LABEL_33;
          }

          v30 = 0x8000000000000000;
        }

        else
        {
          if (v29.__d_.__rep_ > 0x20C49BA5E353F7)
          {
            v30 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_34;
          }

LABEL_33:
          v30 = 1000 * v29.__d_.__rep_;
LABEL_34:
          if (v30 > (v28.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v31.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_37:
            std::condition_variable::__do_timed_wait(v24, &__lk, v31);
            std::chrono::steady_clock::now();
            goto LABEL_38;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      v31.__d_.__rep_ = v30 + v28.__d_.__rep_;
      goto LABEL_37;
    }

LABEL_38:
    v5 = v27;
    if (std::chrono::steady_clock::now().__d_.__rep_ >= v25.__d_.__rep_)
    {
LABEL_39:
      if (*(v3 + 432) == 1 && (*(v21 + 89) & 1) == 0)
      {
        v32 = atomic_load((v21 + 48));
        if (v32 < *(v21 + 56))
        {
          v23 = atomic_load((v21 + 48));
          if (v128 && v23 == v128)
          {
            if (*(v3 + 32) == 1)
            {
              NSLog(&cfstr_NoNewRaysLlu.isa, v128);
            }

            *(v141[6] + 89) = 1;
          }

          else
          {
            if (++v22 != 10)
            {
              goto LABEL_20;
            }

            if (*(v3 + 32) == 1)
            {
              NSLog(&cfstr_TimedOut.isa);
            }

            *(v141[6] + 89) = 1;
          }
        }
      }

      break;
    }
  }

  v33 = *v10;
  if (!*v10)
  {
    goto LABEL_61;
  }

  v34 = (v3 + 736);
  v35 = *v10;
  do
  {
    v36 = *(v35 + 8);
    v13 = v36 >= v8;
    v37 = v36 < v8;
    if (v13)
    {
      v34 = v35;
    }

    v35 = v35[v37];
  }

  while (v35);
  if (v34 == v10 || *(v34 + 8) > v8)
  {
LABEL_61:
    NSLog(&cfstr_MissingRayColl_0.isa);
    goto LABEL_62;
  }

  v58 = v34[1];
  if (v58)
  {
    do
    {
      v59 = v58;
      v58 = *v58;
    }

    while (v58);
  }

  else
  {
    v81 = v34;
    do
    {
      v59 = v81[2];
      v106 = *v59 == v81;
      v81 = v59;
    }

    while (!v106);
  }

  if (*(v3 + 728) == v34)
  {
    *(v3 + 728) = v59;
  }

  --*(v3 + 744);
  v82 = *v34;
  v83 = v34;
  if (*v34)
  {
    v84 = v34[1];
    if (v84)
    {
      do
      {
        v83 = v84;
        v84 = *v84;
      }

      while (v84);
      goto LABEL_122;
    }

    v83 = v34;
LABEL_125:
    v86 = 0;
    v85 = v83[2];
    v82[2] = v85;
  }

  else
  {
LABEL_122:
    v82 = v83[1];
    if (v82)
    {
      goto LABEL_125;
    }

    v85 = v83[2];
    v86 = 1;
  }

  v87 = *v85;
  if (*v85 == v83)
  {
    *v85 = v82;
    if (v83 == v33)
    {
      v87 = 0;
      v33 = v82;
    }

    else
    {
      v87 = v85[1];
    }
  }

  else
  {
    v85[1] = v82;
  }

  v88 = *(v83 + 24);
  if (v83 != v34)
  {
    v89 = v34[2];
    v83[2] = v89;
    v89[*v89 != v34] = v83;
    v90 = *v34;
    *v83 = *v34;
    v90[2] = v83;
    v91 = v34[1];
    v83[1] = v91;
    if (v91)
    {
      *(v91 + 2) = v83;
    }

    *(v83 + 24) = *(v34 + 24);
    if (v33 == v34)
    {
      v33 = v83;
    }
  }

  if (!v33 || !v88)
  {
    goto LABEL_189;
  }

  if (!v86)
  {
    *(v82 + 24) = 1;
    goto LABEL_189;
  }

  while (2)
  {
    v92 = v87[2];
    v93 = *v92;
    v94 = *(v87 + 24);
    if (*v92 != v87)
    {
      if ((v87[3] & 1) == 0)
      {
        *(v87 + 24) = 1;
        *(v92 + 24) = 0;
        v95 = v92[1];
        v96 = *v95;
        v92[1] = *v95;
        if (v96)
        {
          *(v96 + 16) = v92;
        }

        v97 = v92[2];
        v95[2] = v97;
        v97[*v97 != v92] = v95;
        *v95 = v92;
        v92[2] = v95;
        if (v33 == *v87)
        {
          v33 = v87;
        }

        v87 = *(*v87 + 1);
      }

      v98 = *v87;
      if (*v87 && *(v98 + 24) != 1)
      {
        v99 = v87[1];
        if (v99 && (v99[3] & 1) == 0)
        {
LABEL_175:
          v98 = v87;
        }

        else
        {
          *(v98 + 24) = 1;
          *(v87 + 24) = 0;
          v107 = v98[1];
          *v87 = v107;
          if (v107)
          {
            v107[2] = v87;
          }

          v108 = v87[2];
          v98[2] = v108;
          v108[*v108 != v87] = v98;
          v98[1] = v87;
          v87[2] = v98;
          v99 = v87;
        }

        v109 = v98[2];
        *(v98 + 24) = *(v109 + 24);
        *(v109 + 24) = 1;
        *(v99 + 24) = 1;
        v110 = *(v109 + 8);
        v111 = *v110;
        *(v109 + 8) = *v110;
        if (v111)
        {
          *(v111 + 16) = v109;
        }

        v112 = *(v109 + 16);
        v110[2] = v112;
        v112[*v112 != v109] = v110;
        *v110 = v109;
        goto LABEL_188;
      }

      v99 = v87[1];
      if (v99 && *(v99 + 24) != 1)
      {
        goto LABEL_175;
      }

      *(v87 + 24) = 0;
      v100 = v87[2];
      if (v100 == v33 || (v100[3] & 1) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_167;
    }

    if ((v87[3] & 1) == 0)
    {
      *(v87 + 24) = 1;
      *(v92 + 24) = 0;
      v101 = *(v93 + 8);
      *v92 = v101;
      if (v101)
      {
        *(v101 + 16) = v92;
      }

      v102 = v92[2];
      *(v93 + 16) = v102;
      v102[*v102 != v92] = v93;
      *(v93 + 8) = v92;
      v92[2] = v93;
      v103 = v87[1];
      if (v33 == v103)
      {
        v33 = v87;
      }

      v87 = *v103;
    }

    v104 = *v87;
    if (*v87 && *(v104 + 24) != 1)
    {
      goto LABEL_184;
    }

    v105 = v87[1];
    if (!v105 || *(v105 + 24) == 1)
    {
      *(v87 + 24) = 0;
      v100 = v87[2];
      v106 = *(v100 + 24) != 1 || v100 == v33;
      if (v106)
      {
LABEL_169:
        *(v100 + 24) = 1;
        goto LABEL_189;
      }

LABEL_167:
      v87 = *(v100[2] + (*v100[2] == v100));
      continue;
    }

    break;
  }

  if (v104 && (v104[3] & 1) == 0)
  {
LABEL_184:
    v105 = v87;
    goto LABEL_185;
  }

  *(v105 + 24) = 1;
  *(v87 + 24) = 0;
  v113 = *v105;
  v87[1] = *v105;
  if (v113)
  {
    *(v113 + 16) = v87;
  }

  v114 = v87[2];
  v105[2] = v114;
  v114[*v114 != v87] = v105;
  *v105 = v87;
  v87[2] = v105;
  v104 = v87;
LABEL_185:
  v109 = v105[2];
  *(v105 + 24) = *(v109 + 24);
  *(v109 + 24) = 1;
  *(v104 + 24) = 1;
  v110 = *v109;
  v115 = *(*v109 + 8);
  *v109 = v115;
  if (v115)
  {
    *(v115 + 16) = v109;
  }

  v116 = *(v109 + 16);
  v110[2] = v116;
  v116[*v116 != v109] = v110;
  v110[1] = v109;
LABEL_188:
  *(v109 + 16) = v110;
LABEL_189:
  v117 = v34[6];
  if (v117)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v117);
  }

  operator delete(v34);
LABEL_62:
  v38 = mach_absolute_time();
  v39 = (v3 + 776);
  if (atomic_load((v3 + 776)))
  {
    v41 = v38;
    atomic_fetch_add((v3 + 784), *(v141[6] + 56));
    v42 = mach_absolute_time();
    v43 = atomic_load((v3 + 784));
    v44 = atomic_load(v39);
    numer = info.numer;
    denom = info.denom;
    v47 = atomic_load((v3 + 792));
    v49 = info.numer;
    v48 = info.denom;
    atomic_store(v41, (v3 + 792));
    v50 = v141;
    atomic_store(*(v141[6] + 56), (v3 + 800));
    if (*(v3 + 32) == 1)
    {
      v51 = ((v42 - v44) * numer / denom) / 1000000000.0;
      v52 = ((v41 - v123) * numer / denom) / 1000000000.0;
      v53 = ((v41 - v47) * v49 / v48) / 1000000000.0;
      if (*(v3 + 584) == *(v3 + 576))
      {
        v55 = 0;
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 40;
        do
        {
          std::mutex::lock((*(v3 + 552) + v54));
          v55 += *(*(v3 + 576) + v57);
          std::mutex::unlock((*(v3 + 552) + v54));
          ++v56;
          v54 += 64;
          v57 += 48;
        }

        while (v56 < 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 584) - *(v3 + 576)) >> 4));
        v50 = v141;
      }

      NSLog(&cfstr_RaysLluTimeFFR.isa, *(v50[6] + 56), *&v53, *(v50[6] + 56) / v53, v43, *&v51, v43 / v51, *&v52, v55);
      if (*(v3 + 584) != *(v3 + 576))
      {
        v60 = 0;
        v61 = 0;
        do
        {
          v62 = [*(v3 + 64 + 8 * v5) contents];
          v63 = *(*(v141[6] + 64) + v60) + 1;
          if (v63 != *(v62 + 4 * v61 + 4))
          {
            NSLog(&cfstr_WarningUscZuEx.isa, v61, *(v62 + 4 * v61 + 4), v63);
          }

          ++v61;
          v60 += 32;
        }

        while (v61 < 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 584) - *(v3 + 576)) >> 4));
      }
    }
  }

  else
  {
    atomic_store(mach_absolute_time(), v39);
    atomic_store(0, (v3 + 784));
  }

  v64 = v141[6];
  if (*(v64 + 89) != 1)
  {
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
      __lk.__owns_ = 0;
      v15 = [v127 commandBufferWithDescriptor:*(v3 + 24)];
      [v15 setLabel:@"AtomicHeatMap"];
      v74 = [v15 computeCommandEncoderWithDispatchType:1];
      [v74 setLabel:@"AtomicHeatMap"];
      [v74 setComputePipelineState:*(v3 + 48)];
      [v74 setTexture:v153 atIndex:0];
      if (*(v141[6] + 72) != *(v141[6] + 64))
      {
        v75 = 0;
        v76 = 0;
        do
        {
          [v74 setBuffer:*(v3 + 112 + 8 * v5) offset:v75 * *(v130 + 20) atIndex:0];
          [v74 setBuffer:*(*(v141[6] + 64) + 8 * v75 + 16) offset:0 atIndex:1];
          v138 = *(*(v141[6] + 64) + 8 * v75) - 1;
          [v74 setBytes:&v138 length:8 atIndex:2];
          v77 = v141[6];
          v78 = *(v77 + 64);
          v79 = *(v78 + 8 * v75);
          if (v79 >= 2 && v79 < *(v78 + 8 * v75 + 8))
          {
            v131 = v79 - 1;
            v129 = vdupq_n_s64(1uLL);
            v132 = v129;
            v136 = [*(v3 + 48) maxTotalThreadsPerThreadgroup];
            v137 = v129;
            [v74 dispatchThreads:&v131 threadsPerThreadgroup:&v136];
            v77 = v141[6];
            v78 = *(v77 + 64);
          }

          ++v76;
          v80 = (*(v77 + 72) - v78) >> 5;
          if (v80 >= 0x64)
          {
            v80 = 100;
          }

          v75 += 4;
        }

        while (v76 < v80);
      }

      [v74 endEncoding];
      v131 = MEMORY[0x277D85DD0];
      v132.i64[0] = 3221225472;
      v132.i64[1] = ___ZN33AccelerationStructureViewerServer8Profiler11finishFrameEPU26objcproto15MTLCommandQueue11objc_objectPU35objcproto24MTLComputeCommandEncoder11objc_objectmP18ASVSRenderSettingsPN27AccelerationStructureViewer6SampleE_block_invoke;
      v133 = &unk_279659190;
      v134 = &v140;
      v135 = v3;
      [v15 addCompletedHandler:&v131];

      v2 = v125;
      goto LABEL_106;
    }

    goto LABEL_192;
  }

  v65 = atomic_load((v64 + 48));
  v66 = v141;
  v67 = v141[7];
  v68 = *(v141[6] + 56);
  v141[6] = 0;
  v66[7] = 0;
  v2 = v125;
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  v7 = v126;
  if (!__lk.__owns_)
  {
LABEL_192:
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    AccelerationStructureViewerServer::Renderer::completeSample(v118, v119, v120, v121, v122);
    return;
  }

  std::mutex::unlock(__lk.__m_);
  __lk.__owns_ = 0;
  if (*(v3 + 32) == 1)
  {
    NSLog(&cfstr_CollectorIsDam.isa, v65, v68);
  }

  if (v65 + 1 > 1)
  {
    v15 = 0;
    goto LABEL_108;
  }

  if (*(v3 + 584) == *(v3 + 576))
  {
LABEL_89:
    if (*(v3 + 32) == 1)
    {
      NSLog(&cfstr_CollectorIsVer.isa);
    }

    std::mutex::lock((v3 + 320));
    v7 = v126;
    v73 = v124;
    if (*(v3 + 432) == 1 && !*(v3 + 436))
    {
      AccelerationStructureViewerServer::Profiler::stopAPSStreaming(v3, *v3);
    }

    std::mutex::unlock((v3 + 320));
    v15 = 0;
    if (v124)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v71 = 40;
    while (1)
    {
      std::mutex::lock((*(v3 + 552) + v69));
      v72 = *(*(v3 + 576) + v71);
      std::mutex::unlock((*(v3 + 552) + v69));
      if (v72)
      {
        break;
      }

      ++v70;
      v69 += 64;
      v71 += 48;
      if (v70 >= 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 584) - *(v3 + 576)) >> 4))
      {
        goto LABEL_89;
      }
    }

    v15 = 0;
LABEL_106:
    v7 = v126;
LABEL_108:
    v73 = v124;
    if (v124)
    {
LABEL_109:
      std::__shared_weak_count::__release_shared[abi:nn200100](v73);
    }
  }

  _Block_object_dispose(&v140, 8);
  if (v147)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v147);
  }

  v6 = v127;
LABEL_10:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  v16 = *(a1 + 704);
  if (*(a1 + 696) != v16)
  {
    AccelerationStructureViewerServer::Profiler::finishSkipFrame(v2[2192], v16);
  }

  v17 = *(a1 + 744);
  AccelerationStructureViewer::Sample::Sample(v149, v151);
  AccelerationStructureViewerServer::Renderer::commitSample(v2, v17, v149, v15, *(*(*(a1 + 712) + 8) + 40), *(a1 + 736));

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v150);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v152);
  v18 = *MEMORY[0x277D85DE8];
}

void AccelerationStructureViewerServer::Renderer::completeSample(void *a1, char a2, uint64_t a3, void *a4, double a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__9206;
  v13[4] = __Block_byref_object_dispose__9207;
  v14 = v9;
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN33AccelerationStructureViewerServer8Renderer14completeSampleEhN27AccelerationStructureViewer6SampleEdPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
  block[3] = &unk_2860BC558;
  v17[11] = a1;
  v18 = a2;
  v17[10] = v13;
  v11 = v9;
  AccelerationStructureViewer::Sample::Sample(v16, a3);
  v17[12] = *&a5;
  dispatch_async(v10, block);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v17);
  _Block_object_dispose(v13, 8);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN33AccelerationStructureViewerServer8Renderer12commitSampleEhN27AccelerationStructureViewer6SampleEdPU27objcproto16MTLCommandBuffer11objc_objectPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 696);
  v3 = *(a1 + 712);
  AccelerationStructureViewer::Sample::Sample(v6, a1 + 32);
  AccelerationStructureViewerServer::Renderer::completeSample(v2, v3, v6, *(*(*(a1 + 688) + 8) + 40), *(a1 + 704));

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN33AccelerationStructureViewerServer8Renderer14completeSampleEhN27AccelerationStructureViewer6SampleEdPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1)
{
  v22[11] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 696);
  if (*(v2 + 16840))
  {
    *(v2 + 8 * (*(a1 + 40) & 0x1FLL) + 120) = CFAbsoluteTimeGetCurrent();
    v3 = *(v2 + 16840);
    AccelerationStructureViewer::Sample::Sample(v21, a1 + 32);
    (*(*v3 + 40))(v3, v2, v21);

    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22);
    std::mutex::lock((v2 + 48));
    Current = CFAbsoluteTimeGetCurrent();
    if (*(v2 + 16832))
    {
      goto LABEL_26;
    }

    v5 = Current - *(a1 + 704);
    v6 = 1.0 / v5;
    v7 = *(v2 + 16824);
    v8 = 1.0 / v7;
    if (v6 < 30.0 || v8 < 30.0)
    {
      v10 = *(v2 + 16996);
      LOBYTE(v11) = 2 * v10;
    }

    else
    {
      if (v6 <= 180.0 || v8 <= 180.0)
      {
        *(v2 + 16992) = 0;
        v17 = (v2 + 16996);
        LOBYTE(v11) = *(v2 + 16996);
LABEL_21:
        if (v11 > 0x10u)
        {
          v19 = 16;
LABEL_25:
          *v17 = v19;
          goto LABEL_26;
        }

        if (v11 <= 7u)
        {
          v19 = 8;
          goto LABEL_25;
        }

LABEL_26:
        std::mutex::unlock((v2 + 48));
        AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v2, *(a1 + 712), *(*(*(a1 + 688) + 8) + 40));
        v20 = *MEMORY[0x277D85DE8];
        return;
      }

      v10 = *(v2 + 16996);
      v11 = v10 >> 1;
    }

    v18 = *(v2 + 16992) + 1;
    *(v2 + 16992) = v18;
    v17 = (v2 + 16996);
    if (v18 <= 4 * v10)
    {
      LOBYTE(v11) = v10;
    }

    else
    {
      *(v2 + 16996) = v11;
      *(v2 + 16992) = 0;
    }

    goto LABEL_21;
  }

  v12 = *(a1 + 712);
  v13 = *(*(*(a1 + 688) + 8) + 40);
  v14 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 696);

  AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v15, v12, v13);
}

void AccelerationStructureViewerServer::Renderer::acknowledge(AccelerationStructureViewerServer::Renderer *this, unint64_t a2, char a3)
{
  std::mutex::lock((this + 48));
  v6 = this + 376;
  v7 = a2 & 0x1F;
  v8 = *(this + v7 + 188);
  if (v8 > 0x3FF)
  {
    if (a3)
    {
      goto LABEL_14;
    }

    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    v9 = this + 8 * v8;
    *(v9 + 1079) = 0;
    *&v6[2 * v7] = 1024;
    if (a3)
    {
      goto LABEL_14;
    }

    Current = CFAbsoluteTimeGetCurrent();
    *(v9 + 55) = Current;
  }

  v11 = atomic_load(this + 4);
  if (v11 < a2)
  {
    v12 = 0;
    do
    {
      v13 = *&v6[2 * (v11 & 0x1F)];
      if (v13 <= 0x3FF)
      {
        *(this + v13 + 1079) = 0;
        *&v6[2 * (v11 & 0x1F)] = 1024;
      }

      if (a2 - 1 == v11)
      {
        break;
      }

      ++v11;
    }

    while (v12++ < 0x1F);
    *(this + 2103) = (Current - *(this + v7 + 15)) * 0.5;
    atomic_store(a2, this + 4);
  }

LABEL_14:

  std::mutex::unlock((this + 48));
}

void AccelerationStructureViewerServer::Renderer::capture(AccelerationStructureViewerServer::Renderer *this, uint64_t a2)
{
  v2 = a2;
  NSLog(&cfstr_RequestingCapt.isa, a2);
  std::mutex::lock((this + 48));
  *(this + 2214) = v2;

  std::mutex::unlock((this + 48));
}

void AccelerationStructureViewerServer::Renderer::requestGBVH(AccelerationStructureViewerServer::Renderer *this, uint64_t a2)
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = NSTemporaryDirectory();
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 stringWithFormat:@"%@.mtlas", v8];
  v10 = [v5 stringByAppendingPathComponent:v9];

  v11 = *(this + 1);
  std::mutex::lock((this + 48));
  memcpy(__dst, this + 16992, sizeof(__dst));
  v12 = *(this + 1058);
  v13 = *(this + 1060);
  v22[6] = *(this + 1059);
  v22[7] = v13;
  v22[8] = *(this + 1061);
  v14 = *(this + 1054);
  v15 = *(this + 1056);
  v22[2] = *(this + 1055);
  v22[3] = v15;
  v22[4] = *(this + 1057);
  v22[5] = v12;
  v22[0] = *(this + 1053);
  v22[1] = v14;
  std::mutex::unlock((this + 48));
  v20 = 0;
  LOBYTE(v7) = writeAccelerationStructureToGBVH5Path(v11, v22, __dst, v10, &v20);
  v16 = v20;
  if (v7)
  {
    v19 = v16;
    v17 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10 options:2 error:&v19];
    v18 = v19;

    (*(**(this + 2105) + 32))(*(this + 2105), a2, v17, v18);
    [v4 removeItemAtPath:v10 error:0];

    v16 = v18;
  }

  else
  {
    [v4 removeItemAtPath:v10 error:0];
    (*(**(this + 2105) + 32))(*(this + 2105), a2, 0, v16);
  }
}

BOOL AccelerationStructureViewerServer::Renderer::writeGBVHToFile(AccelerationStructureViewerServer::Renderer *this, NSString *a2)
{
  v2 = *(this + 1);
  v4 = 0;
  return writeAccelerationStructureToGBVH5Path(v2, 0, 0, a2, &v4);
}

void AccelerationStructureViewerServer::Renderer::setVersion(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xD)
  {
    v3 = 13;
  }

  else
  {
    v3 = a2;
  }

  std::mutex::lock((a1 + 48));
  *(a1 + 112) = v3;
  v4 = *(a1 + 16840);
  std::mutex::unlock((a1 + 48));
  if (v4)
  {
    (*(*v4 + 72))(v4, v3);
  }

  NSLog(&cfstr_AsvserverToUse.isa, v3);
}

void AccelerationStructureViewerServer::Renderer::setIntersectionHints(uint64_t a1, const void *a2)
{
  std::mutex::lock((a1 + 48));
  *(a1 + 17505) = 1;
  memcpy((a1 + 17016), a2, 0x1B8uLL);

  std::mutex::unlock((a1 + 48));
}

void AccelerationStructureViewerServer::Renderer::setTransform(uint64_t a1, float32x4_t *a2)
{
  v4 = a1 + 0x4000;
  std::mutex::lock((a1 + 48));
  *(v4 + 1121) = 1;
  v5 = (a1 + 16848);
  if (memcmp(a2, (a1 + 16848), 0x90uLL))
  {
    if (a2->u8[0] != *v5 || a2->u16[1] != *(v4 + 466) || ((v6 = a2->f32[1], v7 = *(v4 + 468), v8 = v7 + -0.001, v9 = v7 + 0.001, v6 >= v8) ? (v10 = v6 > v9) : (v10 = 1), v10 || a2->i32[2] != *(v4 + 472) || a2->i32[3] != *(v4 + 476) || (v11.i64[0] = 0x3400000034000000, v11.i64[1] = 0x3400000034000000, (vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v11, vabdq_f32(a2[2], *(a1 + 16880))), vcgeq_f32(v11, vabdq_f32(a2[1], *(a1 + 16864)))), vandq_s8(vcgeq_f32(v11, vabdq_f32(a2[3], *(a1 + 16896))), vcgeq_f32(v11, vabdq_f32(a2[4], *(a1 + 16912)))))) & 0x80000000) == 0) || (vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v11, vabdq_f32(a2[6], *(a1 + 16944))), vcgeq_f32(v11, vabdq_f32(a2[5], *(a1 + 16928)))), vandq_s8(vcgeq_f32(v11, vabdq_f32(a2[7], *(a1 + 16960))), vcgeq_f32(v11, vabdq_f32(a2[8], *(a1 + 16976)))))) & 0x80000000) == 0))
    {
      *(a1 + 17512) = CFAbsoluteTimeGetCurrent();
      atomic_store(1u, (v4 + 1160));
    }
  }

  *v5 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[4];
  *(a1 + 16896) = a2[3];
  *(a1 + 16912) = v14;
  *(a1 + 16864) = v12;
  *(a1 + 16880) = v13;
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[8];
  *(a1 + 16960) = a2[7];
  *(a1 + 16976) = v17;
  *(a1 + 16928) = v15;
  *(a1 + 16944) = v16;
  v18 = *v5;
  if (*v5)
  {
    *(v4 + 612) = v18;
    v18 = 1;
  }

  *(v4 + 448) = v18;
  v19 = *(v4 + 1122);
  v20 = *(a1 + 16840);
  *(v4 + 1122) = 0;
  v21 = *(a1 + 17472);
  v23 = *(a1 + 17456);
  v24 = v21;
  v25 = *(a1 + 17488);
  std::mutex::unlock((a1 + 48));
  if (v19 == 1)
  {
    if (v20)
    {
      v22[1] = v24;
      v22[2] = v25;
      v22[0] = v23;
      (*(*v20 + 24))(v20, a1, v22);
    }
  }
}

void AccelerationStructureViewerServer::Renderer::setResolver(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 48));
  *(a1 + 16840) = a2;

  std::mutex::unlock((a1 + 48));
}

void AccelerationStructureViewerServer::Renderer::~Renderer(AccelerationStructureViewerServer::Renderer *this)
{
  AccelerationStructureViewerServer::Renderer::~Renderer(this);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BC470;
  v2 = *(this + 2197);
  v3 = *(this + 2197);
  *(this + 2197) = 0;

  v4 = 3;
  do
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    --v4;
  }

  while (v4);
  std::mutex::lock((this + 48));
  std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(*(this + 2205));
  *(this + 2204) = this + 17640;
  *(this + 17640) = 0u;
  std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(*(this + 2212));
  *(this + 2211) = this + 17696;
  *(this + 1106) = 0u;
  if (*(this + 2192))
  {
    std::unique_ptr<AccelerationStructureViewerServer::Profiler>::reset[abi:nn200100](this + 2192, 0);
  }

  std::mutex::unlock((this + 48));
  v5 = 3;
  do
  {
    dispatch_semaphore_signal(v2);
    --v5;
  }

  while (v5);

  std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(*(this + 2212));
  std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(*(this + 2205));
  for (i = 0; i != -24; i -= 8)
  {
  }

  for (j = 0; j != -24; j -= 8)
  {
  }

  std::unique_ptr<AccelerationStructureViewerServer::Profiler>::reset[abi:nn200100](this + 2192, 0);
  std::mutex::~mutex((this + 48));
}

void std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(id **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(a1[1]);
    std::unique_ptr<AccelerationStructureViewerServer::Intersector>::~unique_ptr[abi:nn200100](a1 + 6);

    operator delete(a1);
  }
}

uint64_t *std::unique_ptr<AccelerationStructureViewerServer::Profiler>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v30.__m_ = (v2 + 320);
    v30.__owns_ = 1;
    std::mutex::lock((v2 + 320));
    if (*(v2 + 432) == 1)
    {
      while (*(v2 + 436))
      {
        std::condition_variable::wait((v2 + 384), &v30);
        if ((*(v2 + 432) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      AccelerationStructureViewerServer::Profiler::stopAPSStreaming(v2, *v2);
    }

LABEL_8:
    for (i = 0; i != 24; i += 8)
    {
      v4 = *(v2 + i + 64);
      *(v2 + i + 64) = 0;

      v5 = *(v2 + i + 88);
      *(v2 + i + 88) = 0;
    }

    v6 = *(v2 + 16);
    *(v2 + 16) = 0;

    v7 = *(v2 + 48);
    *(v2 + 48) = 0;

    v8 = *(v2 + 40);
    *(v2 + 40) = 0;

    v9 = *v2;
    *v2 = 0;

    if (v30.__owns_)
    {
      std::mutex::unlock(v30.__m_);
    }

    std::__tree<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::destroy(*(v2 + 736));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v2 + 688);
    std::mutex::~mutex((v2 + 624));
    v10 = *(v2 + 600);
    if (v10)
    {
      *(v2 + 608) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 576);
    if (v11)
    {
      v12 = *(v2 + 584);
      v13 = *(v2 + 576);
      if (v12 != v11)
      {
        do
        {
          v12 = std::deque<AccelerationStructureViewerServer::APSRawChunk>::~deque[abi:nn200100](v12 - 48);
        }

        while (v12 != v11);
        v13 = *(v2 + 576);
      }

      *(v2 + 584) = v11;
      operator delete(v13);
    }

    v30.__m_ = (v2 + 552);
    std::vector<std::mutex>::__destroy_vector::operator()[abi:nn200100](&v30);
    std::deque<AccelerationStructureViewerServer::APSRawChunk>::~deque[abi:nn200100](v2 + 504);
    std::mutex::~mutex((v2 + 440));
    std::condition_variable::~condition_variable((v2 + 384));
    std::mutex::~mutex((v2 + 320));
    v14 = *(v2 + 296);
    if (v14)
    {
      *(v2 + 304) = v14;
      operator delete(v14);
    }

    v30.__m_ = (v2 + 272);
    std::vector<std::thread>::__destroy_vector::operator()[abi:nn200100](&v30);
    v30.__m_ = (v2 + 248);
    std::vector<std::thread>::__destroy_vector::operator()[abi:nn200100](&v30);
    v16 = *(v2 + 208);
    v15 = *(v2 + 216);
    if (v15 == v16)
    {
      v17 = (v2 + 240);
      v24 = *(v2 + 208);
    }

    else
    {
      v17 = (v2 + 240);
      v18 = *(v2 + 232);
      v19 = &v16[v18 >> 9];
      v20 = (*v19 + 8 * (v18 & 0x1FF));
      v21 = *(v16 + (((*(v2 + 240) + v18) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 240) + v18) & 0x1FF);
      if (v20 != v21)
      {
        do
        {
          v22 = *v20++;

          if (v20 - *v19 == 4096)
          {
            v23 = v19[1];
            ++v19;
            v20 = v23;
          }
        }

        while (v20 != v21);
        v16 = *(v2 + 208);
        v15 = *(v2 + 216);
      }

      v24 = v15;
    }

    *v17 = 0;
    v25 = v24 - v16;
    if (v25 >= 3)
    {
      do
      {
        operator delete(*v16);
        v15 = *(v2 + 216);
        v16 = (*(v2 + 208) + 8);
        *(v2 + 208) = v16;
        v25 = v15 - v16;
      }

      while (v25 > 2);
      v24 = v15;
    }

    if (v25 == 1)
    {
      v26 = 256;
    }

    else
    {
      if (v25 != 2)
      {
        goto LABEL_37;
      }

      v26 = 512;
    }

    *(v2 + 232) = v26;
LABEL_37:
    if (v16 != v24)
    {
      do
      {
        v27 = *v16++;
        operator delete(v27);
      }

      while (v16 != v24);
      v24 = *(v2 + 208);
      v15 = *(v2 + 216);
    }

    if (v15 != v24)
    {
      *(v2 + 216) = v15 + ((v24 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    v28 = *(v2 + 200);
    if (v28)
    {
      operator delete(v28);
    }

    std::mutex::~mutex((v2 + 136));
    for (j = 128; j != 104; j -= 8)
    {
    }

    do
    {

      j -= 8;
    }

    while (j != 80);
    do
    {

      j -= 8;
    }

    while (j != 56);

    JUMPOUT(0x2530332C0);
  }

  return result;
}

void ___ZN33AccelerationStructureViewerServer8Renderer13setDataSourceEPNS_10DataSourceEPU35objcproto24MTLAccelerationStructure11objc_objectP7NSArrayIS4_EPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, uint64_t *a2, void *a3)
{
  v14 = a3;
  v4 = *a2;
  if (*a2 != a2[1])
  {
    v5 = *(a1 + 40);
    v6 = (v5 + 17640);
    do
    {
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24);
      if (v8 <= *(v4 + 24))
      {
        v8 = *(v4 + 24);
      }

      *(v7 + 24) = v8;
      v9 = *(v4 + 16);
      v10 = *(v4 + 8);
      v16 = *(v4 + 16);
      v11 = *v6;
      if (!*v6)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v12 = v11;
          v13 = v11[4];
          if (v9 >= v13)
          {
            break;
          }

          v11 = *v12;
          if (!*v12)
          {
            goto LABEL_11;
          }
        }

        if (v13 >= v9)
        {
          break;
        }

        v11 = v12[1];
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      if (!*(v5 + 17016) && !*(v5 + 17020))
      {
        *(v5 + 17016) = *(v4 + 16);
      }

      v4 += 32;
    }

    while (v4 != a2[1]);
  }
}

BOOL writeAccelerationStructureToGBVH5Path(void *a1, char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  NSLog(&cfstr_WritingGbvhTo.isa, v7);
  memset(v132, 0, 24);
  v88 = a1;
  v8 = a1[24] - a1[23];
  v87 = v7;
  if (v8)
  {
    v9 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
    if (v9 < 0x1642C8590B21643)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure>>(v9);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v131 = 259;
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v131 length:4];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  [v11 writeToURL:v12 atomically:0];

  v13 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v10 error:a5];
  if (v13)
  {
    v89 = v10;
    v127 = 0;
    v128 = &v127;
    v129 = 0x2020000000;
    v130 = 0;
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = ___Z37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSError_block_invoke;
    v126[3] = &unk_2796590D0;
    v126[4] = &v127;
    (*(*a1 + 16))(a1, v126);
    v14 = 16;
    if (a2 != 0 && a3 != 0)
    {
      v14 = 28;
    }

    v15 = v14 + 24 * *(v128 + 6);
    v16 = malloc_type_malloc(v15, 0x1000040451B5BE8uLL);
    *v16 = 5;
    v16[1] = 0;
    v16[2] = *(v128 + 6);
    v16[3] = a2 != 0 && a3 != 0;
    v83 = *(v128 + 6);
    [v13 seekToFileOffset:0];
    v84 = v15;
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v15];
    [v13 writeData:v17];

    [v13 offsetInFile];
    if (v16[1])
    {
      v18 = 0;
      v19 = v16 + 8;
      v20 = 80;
      do
      {
        [*(v20 - 56) contents];
        NSLog(&cfstr_WritingAcceler.isa, *(v20 - 64), [v13 offsetInFile]);
        v90 = ([*(v20 - 56) length] - *(v20 - 48));
        *v91 = [*(v20 - 40) length] - *(v20 - 32);
        *&v91[8] = [*(v20 - 24) length] - *(v20 - 16);
        *&v91[16] = [*(v20 - 8) length] - *v20;
        *&v91[24] = [*(v20 + 8) length] - *(v20 + 16);
        *&v91[32] = [*(v20 + 72) length] - *(v20 + 80);
        *&v91[40] = *(v20 + 40);
        NSLog(&cfstr_Headerbuffersi_0.isa, v90);
        NSLog(&cfstr_Innernodebuffe_1.isa, *v91);
        NSLog(&cfstr_Leafnodebuffer_1.isa, *&v91[8]);
        NSLog(&cfstr_Primitivebuffe_1.isa, *&v91[16]);
        NSLog(&cfstr_Geometrybuffer_1.isa, *&v91[24]);
        NSLog(&cfstr_Instancebuffer.isa, *&v91[32]);
        NSLog(&cfstr_Perprimitiveda_1.isa, *&v91[40]);
        *(v19 - 2) = [v13 offsetInFile];
        *(v19 - 1) = *(v20 - 64);
        v21 = *(v20 - 80);
        if (v21)
        {
          v22 = [v21 dataUsingEncoding:30];
          *v19 = [v22 length];
          [v13 writeData:v22];
        }

        else
        {
          *v19 = 0;
        }

        v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v90 length:56];
        [v13 writeData:v23];

        v24 = MEMORY[0x277CBEA90];
        v25 = *(v20 - 48);
        v26 = [*(v20 - 56) contents];
        v27 = [v24 dataWithBytes:v26 + v25 length:v90];
        [v13 writeData:v27];

        v28 = MEMORY[0x277CBEA90];
        v29 = *(v20 - 32);
        v30 = [*(v20 - 40) contents];
        v31 = [v28 dataWithBytes:v30 + v29 length:*v91];
        [v13 writeData:v31];

        v32 = MEMORY[0x277CBEA90];
        v33 = *(v20 - 16);
        v34 = [*(v20 - 24) contents];
        v35 = [v32 dataWithBytes:v34 + v33 length:*&v91[8]];
        [v13 writeData:v35];

        v36 = MEMORY[0x277CBEA90];
        v37 = *v20;
        v38 = [*(v20 - 8) contents];
        v39 = [v36 dataWithBytes:v38 + v37 length:*&v91[16]];
        [v13 writeData:v39];

        v40 = MEMORY[0x277CBEA90];
        v41 = *(v20 + 16);
        v42 = [*(v20 + 8) contents];
        v43 = [v40 dataWithBytes:v42 + v41 length:*&v91[24]];
        [v13 writeData:v43];

        v44 = MEMORY[0x277CBEA90];
        v45 = *(v20 + 80);
        v46 = [*(v20 + 72) contents];
        v47 = [v44 dataWithBytes:v46 + v45 length:*&v91[32]];
        [v13 writeData:v47];

        v48 = MEMORY[0x277CBEA90];
        v49 = *(v20 + 32);
        v50 = [*(v20 + 24) contents];
        v51 = [v48 dataWithBytes:v50 + v49 length:*&v91[40]];
        [v13 writeData:v51];

        ++v18;
        v19 += 5;
        v20 += 184;
      }

      while (v18 < v16[1]);
    }

    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = ___Z37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSError_block_invoke_2;
    v122[3] = &unk_2796590F8;
    v124 = v16 + 4;
    v52 = v13;
    v123 = v52;
    v125 = v88;
    (*(*v88 + 16))(v88, v122);
    if (a2 != 0 && a3 != 0)
    {
      v53 = &v16[6 * v83 + 4];
      *v53 = [v52 offsetInFile];
      v54 = [@"default" dataUsingEncoding:30];
      *(v53 + 8) = [v54 length];
      [v52 writeData:v54];

      v117 = *(a2 + 1);
      v118 = *a2;
      v119 = *(a2 + 1);
      float2matrix(&v120, (a2 + 16));
      *&v55 = float2matrix(&v121, (a2 + 80));
      v56 = [MEMORY[0x277CBEA90] dataWithBytes:&v116 length:{142, v55}];
      [v52 writeData:v56];

      BYTE1(v90) = *(a3 + 32);
      v58 = *(a3 + 24);
      v59 = *(a3 + 38);
      if (v59 == 2)
      {
        v60 = 2;
      }

      else
      {
        v60 = v59 == 1;
      }

      BYTE2(v90) = *(a3 + 33) == 1;
      v57.i32[0] = *(a3 + 34);
      v61 = vmovl_u8(v57).u64[0];
      v62 = vceq_s16(v61, 0x1000100010001);
      v63 = vceq_s16(v61, 0x2000200020002);
      v64 = vsub_s16(vand_s8(v63, 0x2000200020002), vbic_s8(v62, v63));
      *(&v90 + 3) = vuzp1_s8(v64, v64).u32[0];
      HIBYTE(v90) = v60;
      *v91 = *(a3 + 39);
      *&v91[2] = v58;
      v91[10] = *(a3 + 41);
      *&v91[11] = *(a3 + 44);
      v91[19] = *(a3 + 42);
      v65 = *(a3 + 52);
      if (v65 >= 7)
      {
        LOBYTE(v65) = 0;
      }

      v91[20] = v65;
      v66 = *(a3 + 53);
      if (v66 >= 7)
      {
        LOBYTE(v66) = 0;
      }

      v91[21] = v66;
      v67 = *(a3 + 456);
      *&v91[22] = *(a3 + 56);
      v68 = *(a3 + 304);
      v104 = *(a3 + 288);
      v105 = v68;
      v69 = *(a3 + 272);
      v102 = *(a3 + 256);
      v103 = v69;
      v70 = *(a3 + 208);
      v98 = *(a3 + 192);
      v99 = v70;
      v71 = *(a3 + 240);
      v100 = *(a3 + 224);
      v101 = v71;
      v72 = *(a3 + 144);
      v94 = *(a3 + 128);
      v95 = v72;
      v73 = *(a3 + 176);
      v96 = *(a3 + 160);
      v97 = v73;
      v74 = *(a3 + 80);
      *&v91[26] = *(a3 + 64);
      *&v91[42] = v74;
      v75 = *(a3 + 112);
      v92 = *(a3 + 96);
      v93 = v75;
      v76 = *(a3 + 400);
      v110 = *(a3 + 384);
      v111 = v76;
      v77 = *(a3 + 432);
      v112 = *(a3 + 416);
      v113 = v77;
      v78 = *(a3 + 336);
      v106 = *(a3 + 320);
      v107 = v78;
      v79 = *(a3 + 368);
      v108 = *(a3 + 352);
      v109 = v79;
      v114 = *(a3 + 448);
      v115 = v67;
      v80 = [MEMORY[0x277CBEA90] dataWithBytes:&v90 length:430];
      [v52 writeData:v80];
    }

    [v52 seekToFileOffset:0];
    v81 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v84];
    [v52 writeData:v81];

    free(v16);
    [v52 closeFile];

    _Block_object_dispose(&v127, 8);
    v7 = v87;
    v10 = v89;
  }

  v90 = v132;
  std::vector<AccelerationStructureViewerServer::AccelerationStructure>::__destroy_vector::operator()[abi:nn200100](&v90);

  return v13 != 0;
}

void ___Z37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t *a2, void *a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = (v6 + 32 * v7);
      v10 = [*(a1 + 32) offsetInFile];
      v11 = *(a1 + 40);
      v12 = (v11 + 24 * v7);
      v13 = v9[1];
      v14 = v9[2];
      *v12 = v10;
      v12[1] = v14;
      if (v13)
      {
        v15 = [v13 dataUsingEncoding:30];
        *(*(a1 + 40) + 24 * v7 + 16) = [v15 length];
        [*(a1 + 32) writeData:v15];

        v11 = *(a1 + 40);
      }

      else
      {
        *(v11 + 24 * v7 + 16) = 0;
      }

      *(v11 + 24 * v7 + 20) = v9[3];
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      v19[0] = &unk_2860BC5D0;
      v19[1] = v17;
      v19[3] = v19;
      (*(*v16 + 112))(v16, v9, v19);
      std::__function::__value_func<void ()(unsigned long,BOOL,objc_object  {objcproto11MTLFunction}*,AccelerationStructureViewer::IntersectionFunction *)>::~__value_func[abi:nn200100](v19);
      v7 = v8;
      v6 = *a2;
      ++v8;
    }

    while (v7 < (a2[1] - *a2) >> 5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

float float2matrix(float *a1, simd_float4x4 *a2)
{
  v2 = a2->columns[0];
  v3 = a2->columns[1];
  v2.f32[0] = *a1;
  a2->columns[0].f32[0] = *a1;
  v2.f32[1] = a1[1];
  a2->columns[0] = v2;
  v2.f32[2] = a1[2];
  a2->columns[0] = v2;
  v2.f32[3] = a1[3];
  a2->columns[0] = v2;
  v3.f32[0] = a1[4];
  a2->columns[1].i32[0] = v3.i32[0];
  v3.f32[1] = a1[5];
  a2->columns[1] = v3;
  v3.f32[2] = a1[6];
  a2->columns[1] = v3;
  v3.f32[3] = a1[7];
  a2->columns[1] = v3;
  v4 = a2->columns[2];
  v5 = a2->columns[3];
  v4.f32[0] = a1[8];
  a2->columns[2].i32[0] = v4.i32[0];
  v4.f32[1] = a1[9];
  a2->columns[2] = v4;
  v4.f32[2] = a1[10];
  a2->columns[2] = v4;
  v4.f32[3] = a1[11];
  a2->columns[2] = v4;
  result = a1[12];
  v5.f32[0] = result;
  a2->columns[3].f32[0] = result;
  v5.f32[1] = a1[13];
  a2->columns[3] = v5;
  v5.f32[2] = a1[14];
  a2->columns[3] = v5;
  v5.f32[3] = a1[15];
  a2->columns[3] = v5;
  return result;
}

void std::vector<AccelerationStructureViewerServer::AccelerationStructure>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        AccelerationStructureViewerServer::AccelerationStructure::~AccelerationStructure(v4 - 23);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long,BOOL,objc_object  {objcproto11MTLFunction}*,AccelerationStructureViewer::IntersectionFunction *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZ37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSErrorEUb_E3__0NS_9allocatorISF_EEFvmbPU22objcproto11MTLFunction11objc_objectPN27AccelerationStructureViewer20IntersectionFunctionEEEclEOmObOU8__strongSJ_OSM_(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, uint64_t *a5)
{
  v6 = *a5;
  v7 = *a4;
  v21 = *(v6 + 48);
  v22 = *(v6 + 72);
  v23 = *(v6 + 73);
  v24 = *(v6 + 76);
  v8 = [*(a1 + 8) offsetInFile];
  v9 = *(a1 + 8);
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:&v20 length:27];
  [v9 writeData:v10];

  v11 = *(v6 + 32);
  if (v11)
  {
    v12 = [v11 dataUsingEncoding:30];
    v20 = [v12 length];
    [*(a1 + 8) writeData:v12];
  }

  else
  {
    v20 = 0;
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 88);
  for (i = (v14 - v13) >> 2; v13 != v14; v13 += 4)
  {
    v15 = *(a1 + 8);
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:4];
    [v15 writeData:v16];
  }

  if (v7)
  {
    v17 = [v7 bitcodeData];
    v26 = [v17 length];
    [*(a1 + 8) writeData:v17];
  }

  else
  {
    v26 = 0;
  }

  [*(a1 + 8) offsetInFile];
  [*(a1 + 8) seekToFileOffset:v8];
  v18 = *(a1 + 8);
  v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v20 length:27];
  [v18 writeData:v19];

  [*(a1 + 8) seekToEndOfFile];
}

void _ZNSt3__110__function6__funcIZZ37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSErrorEUb_E3__0NS_9allocatorISF_EEFvmbPU22objcproto11MTLFunction11objc_objectPN27AccelerationStructureViewer20IntersectionFunctionEEE18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

id _ZNKSt3__110__function6__funcIZZ37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSErrorEUb_E3__0NS_9allocatorISF_EEFvmbPU22objcproto11MTLFunction11objc_objectPN27AccelerationStructureViewer20IntersectionFunctionEEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_2860BC5D0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSErrorEUb_E3__0NS_9allocatorISF_EEFvmbPU22objcproto11MTLFunction11objc_objectPN27AccelerationStructureViewer20IntersectionFunctionEEED0Ev(uint64_t a1)
{

  JUMPOUT(0x2530332C0);
}

void AccelerationStructureViewerServer::DataSource::generateItems(AccelerationStructureViewerServer::DataSource *this)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(this + 23);
  v4 = *(this + 24);
  v246 = this;
  context = v2;
  if (v4 != v3)
  {
    v5 = this;
    for (i = 0; i < 0xD37A6F4DE9BD37A7 * ((v4 - v3) >> 3); ++i)
    {
      v7 = *(v3 + 184 * i + 16);
      v8 = *(v5 + 144);
      if (!*&v8)
      {
        goto LABEL_19;
      }

      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v10 = *(v3 + 184 * i + 16);
        if (v7 >= *&v8)
        {
          v10 = v7 % *&v8;
        }
      }

      else
      {
        v10 = (*&v8 - 1) & v7;
      }

      v11 = *(*(v5 + 17) + 8 * v10);
      if (!v11 || (v12 = *v11) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v13 = v12[1];
        if (v13 == v7)
        {
          break;
        }

        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= *&v8)
          {
            v13 %= *&v8;
          }
        }

        else
        {
          v13 &= *&v8 - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_19;
        }

LABEL_18:
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      if (v12[2] != v7)
      {
        goto LABEL_18;
      }

      *(v12 + 6) = i;
    }
  }

  if (v4 != v3)
  {
    v14 = 0;
    v241 = (v246 + 16);
    while (1)
    {
      v15 = v3 + 184 * v14;
      v16 = *(v15 + 32);
      v17 = [*(v15 + 24) contents];
      if (!v17)
      {
        goto LABEL_317;
      }

      v18 = *(v17 + v16 + 8);
      v242 = v14;
      if (v18 > 1)
      {
        break;
      }

      if (v18)
      {
        if (v18 != 1)
        {
          goto LABEL_240;
        }

        v243 = v17 + v16;
        v19 = *(v15 + 32);
        v20 = ([*(v15 + 24) contents] + v19);
        v21 = malloc_type_calloc(v20[6], 0x18uLL, 0x1000040504FFAC1uLL);
        [*(v15 + 56) contents];
        v22 = 0;
        v23 = -1;
        do
        {
          if (++v23 >= v20[5])
          {
            break;
          }

          v22 += 64;
          v24 = *(v15 + 64) + v22;
        }

        while (v24 <= [*(v15 + 56) length]);
        v248 = (v15 + 16);
        std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 12, *(v15 + 16))[3] = v21;
        memset(&v247, 0, sizeof(v247));
        std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(&v247, v20[7]);
        v25 = *(v15 + 72);
        if (v25)
        {
          v26 = *(v15 + 80);
          v27 = [v25 contents] + v26;
          v28 = [*(v15 + 72) length];
          v29 = v28;
          v30 = v20[6];
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = v20[3];
            begin = v247.__begin_;
            v36 = 36;
            while (1)
            {
              if (v34 == 1)
              {
                if (v31 + *(v15 + 80) + 16 <= v28)
                {
                  v39 = *(v27 + v31);
                  if (v39 < v20[7])
                  {
                    ++begin[v39];
                  }

                  v38 = v27 + 16 * v33;
                  goto LABEL_43;
                }
              }

              else if (!v34 && v36 + *(v15 + 80) + 12 <= v28)
              {
                v37 = *(v27 + v36);
                if (v37 < v20[7])
                {
                  ++begin[v37];
                }

                v38 = v27 + v36;
LABEL_43:
                v40 = *(v38 + 4);
                if (v32 <= v40)
                {
                  v32 = v40;
                }

                v30 = v20[6];
              }

              ++v33;
              v36 += 48;
              v31 += 16;
              if (v33 >= v30)
              {
                goto LABEL_146;
              }
            }
          }

          v32 = 0;
LABEL_146:
          v134 = malloc_type_calloc(v32 + 1, 4uLL, 0x100004052888210uLL);
          if (v20[6])
          {
            v135 = 0;
            v136 = v20[3];
            do
            {
              if (v136)
              {
                if (v136 == 1)
                {
                  v137 = v135 + 1;
                  if (*(v15 + 80) + 16 * (v135 + 1) <= v29)
                  {
                    v138 = *(v27 + 16 * v135 + 4);
                    goto LABEL_154;
                  }
                }

                else
                {
                  v137 = v135 + 1;
                }
              }

              else
              {
                v137 = v135 + 1;
                if (*(v15 + 80) + 48 * (v135 + 1) <= v29)
                {
                  v138 = *(v27 + 48 * v135 + 40);
LABEL_154:
                  if (v32 >= v138)
                  {
                    v134[v138] = v135;
                  }
                }
              }

              v135 = v137;
            }

            while (v137 < v20[6]);
          }

          v248 = (v15 + 16);
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 7, *(v15 + 16))[3] = v134;
        }

        v139 = *(v15 + 88);
        if (v139)
        {
          v140 = *(v15 + 96);
          [v139 contents];
          if (v20[7])
          {
            v141 = v20[3];
            if (v141 != 2)
            {
              if (v141 != 1)
              {
                if (!v141)
                {
                  operator new();
                }

                operator new();
              }

              operator new();
            }

            operator new();
          }
        }

        goto LABEL_237;
      }

      v243 = v17 + v16;
      v63 = *(v15 + 32);
      v64 = ([*(v15 + 24) contents] + v63);
      v65 = malloc_type_calloc(v64[6], 0x18uLL, 0x1000040504FFAC1uLL);
      v66 = *(v15 + 64);
      v67 = [*(v15 + 56) contents];
      if (v64[2] == 2)
      {
        v68 = v64[9];
      }

      else
      {
        v68 = 1;
      }

      if (v64[5])
      {
        v75 = 0;
        v76 = v67 + v66;
        v77 = v68 * v64[6];
        do
        {
          v78 = v75 + 1;
          v79 = *(v15 + 64) + 48 * (v75 + 1);
          if (v79 > [*(v15 + 56) length])
          {
            break;
          }

          if ((v64[2] | 2) == 2)
          {
            v80 = (v76 + 48 * v75);
            v81 = v80[1];
            v82 = *v80 + v81;
            if (v82 <= v77)
            {
              v84 = v82 > v81;
              v83 = *v80 < 0;
            }

            else
            {
              v84 = 0;
            }

            if (v84)
            {
              v85 = v81 + 1;
              v86 = &v65[24 * v81];
              do
              {
                v87 = *(v80 + 3);
                *(v86 + 2) = *(v80 + 7);
                *v86 = v87;
                v86 += 24;
                v88 = v85 >= *v80 + v80[1] || v85 >= v77;
                ++v85;
              }

              while (!v88);
            }
          }

          ++v75;
        }

        while (v78 < v64[5]);
      }

      v248 = (v15 + 16);
      std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 12, *(v15 + 16))[3] = v65;
      memset(&v247, 0, sizeof(v247));
      std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(&v247, v64[7]);
      v89 = *(v15 + 72);
      if (v89)
      {
        v90 = *(v15 + 80);
        v91 = [v89 contents] + v90;
        v92 = [*(v15 + 72) length];
        v93 = v92;
        v94 = v64[6];
        if (v94)
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v98 = v64[3];
          v99 = v247.__begin_;
          v100 = 36;
          while (1)
          {
            if (v98 == 1)
            {
              if (v95 + *(v15 + 80) + 16 <= v92)
              {
                v103 = *(v91 + v95);
                if (v103 < v64[7])
                {
                  ++v99[v103];
                }

                v102 = v91 + 16 * v97;
                goto LABEL_105;
              }
            }

            else if (!v98 && v100 + *(v15 + 80) + 12 <= v92)
            {
              v101 = *(v91 + v100);
              if (v101 < v64[7])
              {
                ++v99[v101];
              }

              v102 = v91 + v100;
LABEL_105:
              v104 = *(v102 + 4);
              if (v96 <= v104)
              {
                v96 = v104;
              }

              v94 = v64[6];
            }

            ++v97;
            v100 += 48;
            v95 += 16;
            if (v97 >= v94)
            {
              goto LABEL_192;
            }
          }
        }

        v96 = 0;
LABEL_192:
        v150 = malloc_type_calloc(v96 + 1, 4uLL, 0x100004052888210uLL);
        if (v64[6])
        {
          v151 = 0;
          v152 = v64[3];
          do
          {
            if (v152)
            {
              if (v152 == 1)
              {
                v153 = v151 + 1;
                if (*(v15 + 80) + 16 * (v151 + 1) <= v93)
                {
                  v154 = *(v91 + 16 * v151 + 4);
                  goto LABEL_200;
                }
              }

              else
              {
                v153 = v151 + 1;
              }
            }

            else
            {
              v153 = v151 + 1;
              if (*(v15 + 80) + 48 * (v151 + 1) <= v93)
              {
                v154 = *(v91 + 48 * v151 + 40);
LABEL_200:
                if (v96 >= v154)
                {
                  v150[v154] = v151;
                }
              }
            }

            v151 = v153;
          }

          while (v153 < v64[6]);
        }

        v248 = (v15 + 16);
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 7, *(v15 + 16))[3] = v150;
      }

      v155 = *(v15 + 88);
      if (v155)
      {
        v156 = *(v15 + 96);
        [v155 contents];
        if (v64[7])
        {
          v157 = v64[3];
          if (v157 != 2)
          {
            if (v157 != 1)
            {
              if (!v157)
              {
                operator new();
              }

              operator new();
            }

            operator new();
          }

          operator new();
        }
      }

LABEL_237:
      if (v247.__begin_)
      {
        operator delete(v247.__begin_);
      }

      v18 = *(v243 + 8);
LABEL_240:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          if (v18 == 3)
          {
            v171 = *(v15 + 32);
            v172 = [*(v15 + 24) contents] + v171;
            if ((*(v172 + 8) | 2) == 3)
            {
              v173 = *(v15 + 64);
              [*(v15 + 56) contents];
              v174 = *(v15 + 160);
              [*(v15 + 152) contents];
              if (*(v172 + 20))
              {
                operator new();
              }

              v175 = *(v246 + 1);
              if (v175 != v241)
              {
                do
                {
                  v176 = v175[5];
                  v177 = v175[6];
                  v178 = 126 - 2 * __clz((v177 - v176) >> 3);
                  if (v177 == v176)
                  {
                    v179 = 0;
                  }

                  else
                  {
                    v179 = v178;
                  }

                  std::__introsort<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,false>(v176, v177, v179, 1);
                  v180 = v175[1];
                  if (v180)
                  {
                    do
                    {
                      v181 = v180;
                      v180 = *v180;
                    }

                    while (v180);
                  }

                  else
                  {
                    do
                    {
                      v181 = v175[2];
                      v182 = *v181 == v175;
                      v175 = v181;
                    }

                    while (!v182);
                  }

                  v175 = v181;
                }

                while (v181 != v241);
              }
            }
          }

          goto LABEL_316;
        }

        v188 = *(v15 + 32);
        v189 = ([*(v15 + 24) contents] + v188);
        if ((v189[2] | 2) == 2)
        {
          v190 = *(v15 + 64);
          v191 = [*(v15 + 56) contents];
          v192 = v189[2] == 2 ? v189[9] : 1;
          if (v189[5])
          {
            v220 = 0;
            v245 = v191 + v190;
            v221 = v192 * v189[6];
            while (1)
            {
              v222 = v220 + 1;
              v223 = *(v15 + 64) + 60 * (v220 + 1);
              if (v223 > [*(v15 + 56) length])
              {
                goto LABEL_316;
              }

              v224 = (v245 + 60 * v220);
              v225 = *v224;
              if (v225 <= v189[6])
              {
                v226 = *(v224 + 1);
                if (v225 + v226 > v226)
                {
                  break;
                }
              }

LABEL_315:
              v220 = v222;
              if (v222 >= v189[5])
              {
                goto LABEL_316;
              }
            }

            while (2)
            {
              if (v189[2] == 2)
              {
                v227 = v189[9];
              }

              else
              {
                v227 = 1;
              }

              v228 = v227 * v226;
              v229 = *(v15 + 80);
              v230 = [*(v15 + 72) contents];
              if (v228 > v221)
              {
                goto LABEL_315;
              }

              v231 = v230 + v229;
              v232 = v189[3];
              if (v232 != 1)
              {
                if (!v232)
                {
                  v233 = (v231 + 48 * v228 + 36);
LABEL_312:
                  v234 = *v233;
                  v247.__begin_ = 0;
                  v248 = &v247;
                  v235 = std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 32, 0);
                  if (v234 < (v235[6] - v235[5]) >> 3)
                  {
                    v248 = (v15 + 16);
                    v236 = *(std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 32, *(v15 + 16))[5] + 8 * v234);
                    v237 = v236[21];
                    v236[20] = fminf(v236[20], v224[3]);
                    v236[21] = fminf(v237, v224[4]);
                    v238 = v236[23];
                    v236[22] = fminf(v236[22], v224[5]);
                    v236[23] = fmaxf(v238, v224[6]);
                    v239 = v236[25];
                    v236[24] = fmaxf(v236[24], v224[7]);
                    v236[25] = fmaxf(v239, v224[8]);
                  }
                }

                v226 = v228 + 1;
                if (v228 + 1 >= *v224 + *(v224 + 1))
                {
                  goto LABEL_315;
                }

                continue;
              }

              break;
            }

            v233 = (v231 + 16 * v228);
            goto LABEL_312;
          }
        }
      }

      else
      {
        if (v18)
        {
          if (v18 == 1)
          {
            v166 = *(v15 + 32);
            v167 = [*(v15 + 24) contents] + v166;
            if ((*(v167 + 8) | 2) == 3)
            {
              v168 = *(v15 + 64);
              [*(v15 + 56) contents];
              v169 = *(v15 + 152);
              v170 = *(v15 + 160);
              [v169 contents];
              if (*(v167 + 20))
              {
                operator new();
              }

              v193 = *(v246 + 1);
              if (v193 != v241)
              {
                do
                {
                  v194 = v193[5];
                  v195 = v193[6];
                  v196 = 126 - 2 * __clz((v195 - v194) >> 3);
                  if (v195 == v194)
                  {
                    v197 = 0;
                  }

                  else
                  {
                    v197 = v196;
                  }

                  std::__introsort<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,false>(v194, v195, v197, 1);
                  v198 = v193[1];
                  if (v198)
                  {
                    do
                    {
                      v199 = v198;
                      v198 = *v198;
                    }

                    while (v198);
                  }

                  else
                  {
                    do
                    {
                      v199 = v193[2];
                      v182 = *v199 == v193;
                      v193 = v199;
                    }

                    while (!v182);
                  }

                  v193 = v199;
                }

                while (v199 != v241);
              }
            }
          }

          goto LABEL_316;
        }

        v183 = *(v15 + 32);
        v184 = ([*(v15 + 24) contents] + v183);
        if ((v184[2] | 2) == 2)
        {
          v185 = *(v15 + 64);
          v186 = [*(v15 + 56) contents];
          v187 = v184[2] == 2 ? v184[9] : 1;
          if (v184[5])
          {
            v200 = 0;
            v244 = v186 + v185;
            v201 = v187 * v184[6];
            do
            {
              v202 = v200 + 1;
              v203 = *(v15 + 64) + 48 * (v200 + 1);
              if (v203 > [*(v15 + 56) length])
              {
                break;
              }

              v204 = (v244 + 48 * v200);
              v205 = *v204;
              if (v205 <= v184[6])
              {
                v206 = *(v204 + 1);
                if (v205 + v206 > v206)
                {
                  while (1)
                  {
                    if (v184[2] == 2)
                    {
                      v207 = v184[9];
                    }

                    else
                    {
                      v207 = 1;
                    }

                    v208 = v207 * v206;
                    v209 = *(v15 + 80);
                    v210 = [*(v15 + 72) contents];
                    if (v208 > v201)
                    {
                      goto LABEL_296;
                    }

                    v211 = v210 + v209;
                    v212 = v184[3];
                    if (v212 == 1)
                    {
                      break;
                    }

                    if (!v212)
                    {
                      v213 = (v211 + 48 * v208 + 36);
                      goto LABEL_293;
                    }

LABEL_295:
                    v206 = v208 + 1;
                    if (v208 + 1 >= *v204 + *(v204 + 1))
                    {
                      goto LABEL_296;
                    }
                  }

                  v213 = (v211 + 16 * v208);
LABEL_293:
                  v214 = *v213;
                  v247.__begin_ = 0;
                  v248 = &v247;
                  v215 = std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 32, 0);
                  if (v214 < (v215[6] - v215[5]) >> 3)
                  {
                    v248 = (v15 + 16);
                    v216 = *(std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 32, *(v15 + 16))[5] + 8 * v214);
                    v217 = v216[21];
                    v216[20] = fminf(v216[20], v204[3]);
                    v216[21] = fminf(v217, v204[4]);
                    v218 = v216[23];
                    v216[22] = fminf(v216[22], v204[5]);
                    v216[23] = fmaxf(v218, v204[6]);
                    v219 = v216[25];
                    v216[24] = fmaxf(v216[24], v204[7]);
                    v216[25] = fmaxf(v219, v204[8]);
                  }

                  goto LABEL_295;
                }
              }

LABEL_296:
              v200 = v202;
            }

            while (v202 < v184[5]);
          }
        }
      }

LABEL_316:
      v14 = v242 + 1;
      v3 = *(v246 + 23);
      if (v242 + 1 >= 0xD37A6F4DE9BD37A7 * ((*(v246 + 24) - v3) >> 3))
      {
        goto LABEL_317;
      }
    }

    if (v18 != 2)
    {
      if (v18 != 3)
      {
        goto LABEL_240;
      }

      v243 = v17 + v16;
      v41 = *(v15 + 32);
      v42 = ([*(v15 + 24) contents] + v41);
      v43 = malloc_type_calloc(v42[6], 0x18uLL, 0x1000040504FFAC1uLL);
      [*(v15 + 56) contents];
      v44 = 0;
      v45 = -1;
      do
      {
        if (++v45 >= v42[5])
        {
          break;
        }

        v44 += 104;
        v46 = *(v15 + 64) + v44;
      }

      while (v46 <= [*(v15 + 56) length]);
      v248 = (v15 + 16);
      std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 12, *(v15 + 16))[3] = v43;
      memset(&v247, 0, sizeof(v247));
      std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(&v247, v42[7]);
      v47 = *(v15 + 72);
      if (v47)
      {
        v48 = *(v15 + 80);
        v49 = [v47 contents] + v48;
        v50 = [*(v15 + 72) length];
        v51 = v50;
        v52 = v42[6];
        if (v52)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = v42[3];
          v57 = v247.__begin_;
          v58 = 36;
          while (1)
          {
            if (v56 == 1)
            {
              if (v53 + *(v15 + 80) + 16 <= v50)
              {
                v61 = *(v49 + v53);
                if (v61 < v42[7])
                {
                  ++v57[v61];
                }

                v60 = v49 + 16 * v55;
                goto LABEL_66;
              }
            }

            else if (!v56 && v58 + *(v15 + 80) + 12 <= v50)
            {
              v59 = *(v49 + v58);
              if (v59 < v42[7])
              {
                ++v57[v59];
              }

              v60 = v49 + v58;
LABEL_66:
              v62 = *(v60 + 4);
              if (v54 <= v62)
              {
                v54 = v62;
              }

              v52 = v42[6];
            }

            ++v55;
            v58 += 48;
            v53 += 16;
            if (v55 >= v52)
            {
              goto LABEL_169;
            }
          }
        }

        v54 = 0;
LABEL_169:
        v142 = malloc_type_calloc(v54 + 1, 4uLL, 0x100004052888210uLL);
        if (v42[6])
        {
          v143 = 0;
          v144 = v42[3];
          do
          {
            if (v144)
            {
              if (v144 == 1)
              {
                v145 = v143 + 1;
                if (*(v15 + 80) + 16 * (v143 + 1) <= v51)
                {
                  v146 = *(v49 + 16 * v143 + 4);
                  goto LABEL_177;
                }
              }

              else
              {
                v145 = v143 + 1;
              }
            }

            else
            {
              v145 = v143 + 1;
              if (*(v15 + 80) + 48 * (v143 + 1) <= v51)
              {
                v146 = *(v49 + 48 * v143 + 40);
LABEL_177:
                if (v54 >= v146)
                {
                  v142[v146] = v143;
                }
              }
            }

            v143 = v145;
          }

          while (v145 < v42[6]);
        }

        v248 = (v15 + 16);
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 7, *(v15 + 16))[3] = v142;
      }

      v147 = *(v15 + 88);
      if (v147)
      {
        v148 = *(v15 + 96);
        [v147 contents];
        if (v42[7])
        {
          v149 = v42[3];
          if (v149 != 2)
          {
            if (v149 != 1)
            {
              if (!v149)
              {
                operator new();
              }

              operator new();
            }

            operator new();
          }

          operator new();
        }
      }

      goto LABEL_237;
    }

    v243 = v17 + v16;
    v69 = *(v15 + 32);
    v70 = ([*(v15 + 24) contents] + v69);
    v71 = malloc_type_calloc(v70[6], 0x18uLL, 0x1000040504FFAC1uLL);
    v72 = *(v15 + 64);
    v73 = [*(v15 + 56) contents];
    if (v70[2] == 2)
    {
      v74 = v70[9];
    }

    else
    {
      v74 = 1;
    }

    if (v70[5])
    {
      v105 = 0;
      v106 = v73 + v72;
      v107 = v74 * v70[6];
      do
      {
        v108 = v105 + 1;
        v109 = *(v15 + 64) + 60 * (v105 + 1);
        if (v109 > [*(v15 + 56) length])
        {
          break;
        }

        if ((v70[2] | 2) == 2)
        {
          v110 = (v106 + 60 * v105);
          v111 = v110[1];
          v112 = *v110 + v111;
          if (v112 <= v107)
          {
            v113 = v112 > v111;
            v83 = *v110 < 0;
          }

          else
          {
            v113 = 0;
          }

          if (v113)
          {
            v114 = v111 + 1;
            v115 = &v71[24 * v111];
            do
            {
              v116 = *(v110 + 3);
              *(v115 + 2) = *(v110 + 7);
              *v115 = v116;
              v115 += 24;
              v117 = v114 >= *v110 + v110[1] || v114 >= v107;
              ++v114;
            }

            while (!v117);
          }
        }

        ++v105;
      }

      while (v108 < v70[5]);
    }

    v248 = (v15 + 16);
    std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 12, *(v15 + 16))[3] = v71;
    memset(&v247, 0, sizeof(v247));
    std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(&v247, v70[7]);
    v118 = *(v15 + 72);
    if (v118)
    {
      v119 = *(v15 + 80);
      v120 = [v118 contents] + v119;
      v121 = [*(v15 + 72) length];
      v122 = v121;
      v123 = v70[6];
      if (v123)
      {
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v127 = v70[3];
        v128 = v247.__begin_;
        v129 = 36;
        while (1)
        {
          if (v127 == 1)
          {
            if (v124 + *(v15 + 80) + 16 <= v121)
            {
              v132 = *(v120 + v124);
              if (v132 < v70[7])
              {
                ++v128[v132];
              }

              v131 = v120 + 16 * v126;
              goto LABEL_140;
            }
          }

          else if (!v127 && v129 + *(v15 + 80) + 12 <= v121)
          {
            v130 = *(v120 + v129);
            if (v130 < v70[7])
            {
              ++v128[v130];
            }

            v131 = v120 + v129;
LABEL_140:
            v133 = *(v131 + 4);
            if (v125 <= v133)
            {
              v125 = v133;
            }

            v123 = v70[6];
          }

          ++v126;
          v129 += 48;
          v124 += 16;
          if (v126 >= v123)
          {
            goto LABEL_215;
          }
        }
      }

      v125 = 0;
LABEL_215:
      v158 = malloc_type_calloc(v125 + 1, 4uLL, 0x100004052888210uLL);
      if (v70[6])
      {
        v159 = 0;
        v160 = v70[3];
        do
        {
          if (v160)
          {
            if (v160 == 1)
            {
              v161 = v159 + 1;
              if (*(v15 + 80) + 16 * (v159 + 1) <= v122)
              {
                v162 = *(v120 + 16 * v159 + 4);
                goto LABEL_223;
              }
            }

            else
            {
              v161 = v159 + 1;
            }
          }

          else
          {
            v161 = v159 + 1;
            if (*(v15 + 80) + 48 * (v159 + 1) <= v122)
            {
              v162 = *(v120 + 48 * v159 + 40);
LABEL_223:
              if (v125 >= v162)
              {
                v158[v162] = v159;
              }
            }
          }

          v159 = v161;
        }

        while (v161 < v70[6]);
      }

      v248 = (v15 + 16);
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v246 + 7, *(v15 + 16))[3] = v158;
    }

    v163 = *(v15 + 88);
    if (v163)
    {
      v164 = *(v15 + 96);
      [v163 contents];
      if (v70[7])
      {
        v165 = v70[3];
        if (v165 != 2)
        {
          if (v165 != 1)
          {
            if (!v165)
            {
              operator new();
            }

            operator new();
          }

          operator new();
        }

        operator new();
      }
    }

    goto LABEL_237;
  }

LABEL_317:
  objc_autoreleasePoolPop(context);
}

uint64_t std::vector<AccelerationStructureViewer::Property>::__emplace_back_slow_path<AccelerationStructureViewer::Property&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v18[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::Property>>(v6);
  }

  v7 = 120 * v2;
  *v7 = &unk_2860BC6A0;
  v8 = *(a2 + 8);
  *(v7 + 10) = *(a2 + 10);
  *(v7 + 8) = v8;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 72) = v11;
  *(v7 + 56) = v10;
  *(v7 + 40) = v9;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 96) = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*>(v7 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  v12 = v7 + 120;
  v13 = *(a1 + 8);
  v14 = v7 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<AccelerationStructureViewer::Property>,AccelerationStructureViewer::Property*>(*a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;
  v18[2] = v15;
  v18[3] = v16;
  v18[0] = v15;
  v18[1] = v15;
  std::__split_buffer<AccelerationStructureViewer::Property>::~__split_buffer(v18);
  return v12;
}

void *std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::vector<AccelerationStructureViewer::Instance *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 40) < *(*v9 + 40))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = v83[5];
      v88 = *(*v9 + 40);
      v89 = *(v85 + 40);
      if (v87 >= v88)
      {
        if (v89 >= v87)
        {
          goto LABEL_175;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = (v9 + 1);
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v90 = v9;
        v91 = (v9 + 2);
        result = *v9;
        if (v89 >= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = (v9 + 2);
          result = v86;
          if (v89 >= v88)
          {
LABEL_175:
            v83 = v85;
            goto LABEL_176;
          }
        }

LABEL_167:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_176:
      if (*(*v8 + 40) < v83[5])
      {
        *v84 = *v8;
        *v8 = v83;
        v138 = *v84;
        v139 = *v82;
        v140 = *(v138 + 40);
        if (v140 < *(v139 + 40))
        {
          v9[1] = v138;
          v9[2] = v139;
          v141 = *v9;
          if (v140 < *(*v9 + 40))
          {
            *v9 = v138;
            v9[1] = v141;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 0;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 40);
            if (v99 < *(v98 + 40))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100 + 8) = v98;
                if (!v100)
                {
                  break;
                }

                v98 = *(v9 + v100 - 8);
                v100 -= 8;
                if (v99 >= *(v98 + 40))
                {
                  v101 = (v9 + v100 + 8);
                  goto LABEL_128;
                }
              }

              v101 = v9;
LABEL_128:
              *v101 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v135 = *v7;
          v134 = v7[1];
          v7 = v92;
          v136 = *(v134 + 40);
          if (v136 < *(v135 + 40))
          {
            v137 = v7;
            do
            {
              *v137 = v135;
              v135 = *(v137 - 2);
              --v137;
            }

            while (v136 < *(v135 + 40));
            *v137 = v134;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v102 = (v10 - 2) >> 1;
        v103 = v102;
        do
        {
          v104 = v103;
          if (v102 >= v103)
          {
            v105 = (2 * v103) | 1;
            v106 = &v9[v105];
            v107 = *v106;
            if (2 * v104 + 2 < v10 && *(v107 + 40) < *(v106[1] + 40))
            {
              v107 = v106[1];
              ++v106;
              v105 = 2 * v104 + 2;
            }

            result = &v9[v104];
            v108 = *result;
            v109 = *(*result + 40);
            if (*(v107 + 40) >= v109)
            {
              do
              {
                v110 = v106;
                *result = v107;
                if (v102 < v105)
                {
                  break;
                }

                v111 = (2 * v105) | 1;
                v106 = &v9[v111];
                v112 = 2 * v105 + 2;
                v107 = *v106;
                if (v112 < v10 && *(v107 + 40) < *(v106[1] + 40))
                {
                  v107 = v106[1];
                  ++v106;
                  v111 = v112;
                }

                result = v110;
                v105 = v111;
              }

              while (*(v107 + 40) >= v109);
              *v110 = v108;
            }
          }

          v103 = v104 - 1;
        }

        while (v104);
        do
        {
          v113 = 0;
          v114 = *v9;
          v115 = v9;
          do
          {
            v116 = &v115[v113];
            v117 = v116 + 1;
            v118 = v116[1];
            v119 = (2 * v113) | 1;
            v113 = 2 * v113 + 2;
            if (v113 >= v10)
            {
              v113 = v119;
            }

            else
            {
              v122 = v116[2];
              v120 = v116 + 2;
              v121 = v122;
              result = *(v118 + 40);
              if (result >= *(v122 + 40))
              {
                v113 = v119;
              }

              else
              {
                v118 = v121;
                v117 = v120;
              }
            }

            *v115 = v118;
            v115 = v117;
          }

          while (v113 <= ((v10 - 2) >> 1));
          if (v117 == --a2)
          {
            *v117 = v114;
          }

          else
          {
            *v117 = *a2;
            *a2 = v114;
            v123 = (v117 - v9 + 8) >> 3;
            v124 = v123 < 2;
            v125 = v123 - 2;
            if (!v124)
            {
              v126 = v125 >> 1;
              v127 = &v9[v126];
              v128 = *v127;
              v129 = *v117;
              v130 = *(*v117 + 40);
              if (*(*v127 + 40) < v130)
              {
                do
                {
                  v131 = v127;
                  *v117 = v128;
                  if (!v126)
                  {
                    break;
                  }

                  v126 = (v126 - 1) >> 1;
                  v127 = &v9[v126];
                  v128 = *v127;
                  v117 = v131;
                }

                while (*(*v127 + 40) < v130);
                *v131 = v129;
              }
            }
          }

          v124 = v10-- <= 2;
        }

        while (!v124);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 40);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 40);
      v18 = *(*v9 + 40);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 40) < *(*v9 + 40))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 40) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 40);
      v29 = *(v27 + 40);
      v30 = *(a2 - 2);
      v31 = *(v30 + 40);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 40) < *(v32 + 40))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 40) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 40);
      v39 = *(v37 + 40);
      v40 = *(a2 - 3);
      v41 = *(v40 + 40);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 40) < *(v42 + 40))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 40) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 40);
      v47 = *(*v25 + 40);
      v48 = *v34;
      v49 = *(*v34 + 40);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 40);
    v22 = *(*v12 + 40);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 40) < *(*v12 + 40))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 40) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 40);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 40) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 40) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 40) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 40) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 40) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 40);
      if (*(*(v9 - 1) + 40) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 40))
      {
        v67 = v9 + 1;
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v52 >= *(*v9 + 40));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 40));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 40));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *(v72 + 40));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 40));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 40);
  v79 = *(*v9 + 40);
  v80 = *v8;
  v81 = *(*v8 + 40);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v133 = *v9;
      v132 = v9[1];
      if (*(v132 + 40) < *(*v9 + 40))
      {
        *v9 = v132;
        v9[1] = v133;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 40) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 40);
  v8 = *(*result + 40);
  v9 = *a3;
  v10 = *(*a3 + 40);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 40) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 40) < *(v5 + 40))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 40) < *(*a2 + 40))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 40) < *(*a4 + 40))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 40) < *(*a3 + 40))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 40) < *(*a2 + 40))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 40) < *(*result + 40))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 40);
      v8 = *(*a1 + 40);
      v9 = *(a2 - 1);
      v10 = *(v9 + 40);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 40) < *(*a1 + 40))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 40) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 40);
    v26 = *(*a1 + 40);
    v27 = *(v23 + 40);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 40) < *(v21 + 40))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 40);
          if (v45 < *(v44 + 40))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 40))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 40) < *(*a1 + 40))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 40);
  v16 = *(*a1 + 40);
  v17 = *(v11 + 40);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 40);
    if (v38 < *(v37 + 40))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 40))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void AccelerationStructureViewerServer::DataSource::getAccelerationStructureChildren(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v11 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((a1 + 136), a2);
  if (!v11)
  {
    v20 = @"You can't have children of children";
    goto LABEL_27;
  }

  v12 = *(a1 + 184) + 184 * *(v11 + 6);
  v13 = *(v12 + 8);
  if (v13 != 4 && v13 != 2)
  {
    v20 = @"This acceleration structure does not support children structures.";
LABEL_27:
    v21 = ASVErrorWithCode(4u, v20);
    (v10)[2](v10, &v23, v21);

LABEL_28:
    v19 = v23;
    goto LABEL_29;
  }

  v22 = a3 + a4;
  if (a3 < a3 + a4)
  {
    while (1)
    {
      v15 = *(v12 + 128);
      if (a3 >= (*(v12 + 136) - v15) >> 3)
      {
        goto LABEL_21;
      }

      v16 = *(v15 + 8 * a3);
      v17 = *(v16 + 2);
      if (v17 > 1)
      {
        break;
      }

      if (v17)
      {
        if (v17 == 1)
        {
          operator new();
        }

LABEL_19:
        operator new();
      }

      if (++a3 == v22)
      {
        goto LABEL_21;
      }
    }

    switch(v17)
    {
      case 2:
        asvsAS2iasv(v16);
      case 4:
        operator new();
      case 3:
        asvsAS2pmasv(v16);
    }

    goto LABEL_19;
  }

LABEL_21:
  (v10)[2](v10, &v23, 0);
  v19 = v23;
  v18 = v24;
  if (v23 != v24)
  {
    do
    {
      if (*v19)
      {
        (*(**v19 + 8))(*v19);
      }

      ++v19;
    }

    while (v19 != v18);
    goto LABEL_28;
  }

LABEL_29:
  if (v19)
  {
    v24 = v19;
    operator delete(v19);
  }
}

uint64_t AccelerationStructureViewerServer::DataSource::populateInstanceCount(uint64_t a1, unint64_t a2, uint64_t a3, AccelerationStructureViewer::Filter *a4)
{
  *(a3 + 68) = xmmword_24DA8BB50;
  *(a3 + 84) = 0x80000000800000;
  v7 = *(a1 + 16);
  result = a1 + 16;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = result;
  do
  {
    v10 = v6[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = v6[v12];
  }

  while (v6);
  if (v9 == result || v9[4] > a2)
  {
    goto LABEL_9;
  }

  v14 = v9[5];
  v13 = v9[6];
  if (v14 == v13)
  {
    if (*(a4 + 8))
    {
LABEL_9:
      *(a3 + 40) = 0;
      return result;
    }

    goto LABEL_20;
  }

  v15 = 3.4028e38;
  v16 = -3.4028e38;
  v17 = -3.4028e38;
  v18 = -3.4028e38;
  v19 = 3.4028e38;
  v20 = 3.4028e38;
  v21 = v9[5];
  do
  {
    v22 = *v21++;
    v20 = fminf(v20, v22[14]);
    *(a3 + 68) = v20;
    v19 = fminf(v19, v22[15]);
    *(a3 + 72) = v19;
    v15 = fminf(v15, v22[16]);
    *(a3 + 76) = v15;
    v18 = fmaxf(v18, v22[17]);
    *(a3 + 80) = v18;
    v17 = fmaxf(v17, v22[18]);
    *(a3 + 84) = v17;
    v16 = fmaxf(v16, v22[19]);
    *(a3 + 88) = v16;
  }

  while (v21 != v13);
  if (!*(a4 + 8))
  {
LABEL_20:
    *(a3 + 40) = v13 - v14;
    return result;
  }

  *(a3 + 40) = 0;
  do
  {
    result = AccelerationStructureViewer::DataSourceFilterable::matches((*v14 + 2), a4);
    if (result)
    {
      ++*(a3 + 40);
    }

    ++v14;
  }

  while (v14 != v9[6]);
  return result;
}

void AccelerationStructureViewerServer::DataSource::getInstanceChildren(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  if (a2 == -1)
  {
    goto LABEL_10;
  }

  v14 = *(a1 + 16);
  v13 = (a1 + 16);
  v12 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  do
  {
    v16 = v12[4];
    v17 = v16 >= a2;
    v18 = v16 < a2;
    if (v17)
    {
      v15 = v12;
    }

    v12 = v12[v18];
  }

  while (v12);
  if (v15 == v13 || v15[4] > a2)
  {
LABEL_10:
    __p = 0;
    v36 = 0;
    v37 = 0;
    v19 = ASVErrorWithCode(4u, @"Invalid acceleration structure");
    v11[2](v11, &__p, v19);

    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v31 = &unk_2860BC948;
    v32 = *(a5 + 8);
    memset(v33, 0, sizeof(v33));
    v21 = *(a5 + 16);
    v20 = *(a5 + 24);
    if (v20 != v21)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 3);
      if (v22 < 0xAAAAAAAAAAAAAABLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::FilterToken>>(v22);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v23 = v11;
    __p = 0;
    v36 = 0;
    v37 = 0;
    for (i = v15[5]; i != v15[6]; ++i)
    {
      v34 = *i;
      if (AccelerationStructureViewer::DataSourceFilterable::matches((v34 + 8), &v31))
      {
        std::vector<AccelerationStructureViewer::Instance *>::push_back[abi:nn200100](&__p, &v34);
      }
    }

    if (a3)
    {
      v25 = __p;
      v26 = __p + 8 * a3;
      v27 = v36 - v26;
      if (v36 != v26)
      {
        memmove(__p, v26, v36 - v26);
      }

      v28 = &v25[v27];
      v36 = &v25[v27];
    }

    else
    {
      v25 = __p;
      v28 = v36;
    }

    v17 = a4 >= (v28 - v25) >> 3;
    v29 = &v25[8 * a4];
    if (!v17 && v29 != v28)
    {
      v36 = v29;
    }

    v23[2](v23, &__p, 0);
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    v31 = &unk_2860BC948;
    __p = v33;
    std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&__p);
  }
}

void AccelerationStructureViewerServer::DataSource::getPrimitiveData(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v17 = a5;
  v9 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((a1 + 136), a2);
  if (v9)
  {
    v10 = *(a1 + 184) + 184 * *(v9 + 6);
    v11 = *(v10 + 112);
    v12 = [*(v10 + 104) contents];
    v13 = *(v10 + 120);
    if (a3 <= v13)
    {
      if (a3 + a4 <= v13)
      {
        [MEMORY[0x277CBEA90] dataWithBytes:v12 + v11 + a3 length:a4];
      }

      else
      {
        ASVErrorWithCode(2u, @"Requested data range end is beyond primitive data bounds");
      }
      v16 = ;
      v17[2]();
      goto LABEL_10;
    }

    v14 = @"Requested data range start is beyond primitive data bounds";
    v15 = 2;
  }

  else
  {
    v14 = @"Invalid acceleration structure";
    v15 = 4;
  }

  v16 = ASVErrorWithCode(v15, v14);
  (v17[2])(v17, 0, v16);
LABEL_10:
}

void AccelerationStructureViewerServer::DataSource::getPrimitiveChildren(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a7;
  v12 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a1 + 17, a2);
  if (!v12)
  {
    goto LABEL_37;
  }

  v13 = a1[23] + 184 * *(v12 + 6);
  v14 = *(v13 + 32);
  v15 = [*(v13 + 24) contents];
  v16 = a1[8];
  if (v16)
  {
    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = a2;
      if (*&v16 <= a2)
      {
        v18 = a2 % *&v16;
      }
    }

    else
    {
      v18 = (*&v16 - 1) & a2;
    }

    i = *(a1[7] + 8 * v18);
    if (i)
    {
      for (i = *i; i; i = *i)
      {
        v20 = i[1];
        if (v20 == a2)
        {
          if (i[2] == a2)
          {
            break;
          }
        }

        else
        {
          if (v17.u32[0] > 1uLL)
          {
            if (v20 >= *&v16)
            {
              v20 %= *&v16;
            }
          }

          else
          {
            v20 &= *&v16 - 1;
          }

          if (v20 != v18)
          {
            goto LABEL_19;
          }
        }
      }
    }
  }

  else
  {
LABEL_19:
    i = 0;
  }

  v21 = a1[13];
  if (!*&v21)
  {
    goto LABEL_37;
  }

  v22 = vcnt_s8(v21);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = a2;
    if (*&v21 <= a2)
    {
      v23 = a2 % *&v21;
    }
  }

  else
  {
    v23 = (*&v21 - 1) & a2;
  }

  v24 = *(a1[12] + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_37:
    __p = 0;
    v34 = 0;
    v35 = 0;
    v27 = ASVErrorWithCode(4u, @"Invalid acceleration structure");
    v11[2](v11, &__p, v27);

    goto LABEL_38;
  }

  v32 = v15 + v14;
  while (1)
  {
    v26 = v25[1];
    if (v26 == a2)
    {
      break;
    }

    if (v22.u32[0] > 1uLL)
    {
      if (v26 >= *&v21)
      {
        v26 %= *&v21;
      }
    }

    else
    {
      v26 &= *&v21 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_37;
    }

LABEL_36:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_37;
    }
  }

  if (v25[2] != a2)
  {
    goto LABEL_36;
  }

  if (!i || !v25)
  {
    goto LABEL_37;
  }

  if (a4 < *(v32 + 24) && i[3])
  {
    v29 = *(v13 + 96);
    [*(v13 + 88) contents];
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v30 = *(v13 + 80);
    [*(v13 + 72) contents];
    if (a4 < a4 + a5)
    {
      v31 = *(v32 + 12);
      operator new();
    }

    v11[2](v11, &v36, 0);
    v28 = v36;
    if (v36)
    {
      v37 = v36;
LABEL_40:
      operator delete(v28);
    }

    goto LABEL_41;
  }

  v34 = 0;
  v35 = 0;
  __p = 0;
  v11[2](v11, &__p, 0);
LABEL_38:
  v28 = __p;
  if (__p)
  {
    v34 = __p;
    goto LABEL_40;
  }

LABEL_41:
}

void AccelerationStructureViewerServer::DataSource::getGeometryChildren(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, AccelerationStructureViewer::Filter *a5, void *a6)
{
  v11 = a6;
  v14 = *(a1 + 40);
  v13 = (a1 + 40);
  v12 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v13;
  do
  {
    v16 = v12[4];
    v17 = v16 >= a2;
    v18 = v16 < a2;
    if (v17)
    {
      v15 = v12;
    }

    v12 = v12[v18];
  }

  while (v12);
  if (v15 != v13 && v15[4] <= a2)
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    v20 = v15[5];
    v21 = v15[6];
    while (v20 != v21)
    {
      if (AccelerationStructureViewer::DataSourceFilterable::matches((*v20 + 8), a5))
      {
        std::vector<AccelerationStructureViewer::Instance *>::push_back[abi:nn200100](&__p, v20);
      }

      ++v20;
    }

    if (a3)
    {
      v22 = __p;
      v23 = __p + 8 * a3;
      v24 = v29 - v23;
      if (v29 != v23)
      {
        memmove(__p, v23, v29 - v23);
      }

      v25 = &v22[v24];
      v29 = &v22[v24];
    }

    else
    {
      v22 = __p;
      v25 = v29;
    }

    v17 = a4 >= (v25 - v22) >> 3;
    v26 = &v22[8 * a4];
    if (!v17 && v26 != v25)
    {
      v29 = v26;
    }

    v11[2](v11, &__p, 0);
  }

  else
  {
LABEL_9:
    __p = 0;
    v29 = 0;
    v30 = 0;
    v19 = ASVErrorWithCode(4u, @"Invalid acceleration structure");
    (v11)[2](v11, &__p, v19);
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void AccelerationStructureViewerServer::DataSource::getPrimaryAccelerationStructure(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = (*(a1 + 184) + 184 * *(a1 + 176));
  v6 = *(v5 + 2);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        operator new();
      }
    }

    else
    {
      memset(&v7[1], 0, 40);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v8 = 0;
      v7[0] = &unk_2860BB888;
      v7[6] = @"Invalid Acceleration Structure";
      (*(v3 + 2))(v3, v7, 0);
      AccelerationStructureViewer::InvalidAccelerationStructure::~InvalidAccelerationStructure(v7);
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        asvsAS2iasv(v5);
      case 3:
        asvsAS2pmasv(v5);
      case 4:
        operator new();
    }
  }
}

void AccelerationStructureViewerServer::DataSource::getIntersectionFunctions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v7 = MEMORY[0x277CCA9B8];
  v8 = a6;
  v9 = [v7 errorWithDomain:@"ASV" code:4 userInfo:{0, 0, 0, 0}];
  (a6)[2](v8, &v10, v9);

  v11 = &v10;
  std::vector<AccelerationStructureViewer::IntersectionFunction>::__destroy_vector::operator()[abi:nn200100](&v11);
}

void AccelerationStructureViewerServer::DataSource::getIntersectionFunctionTables(uint64_t a1, void (**a2)(void, void, void))
{
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  v3 = a2;
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASV" code:4 userInfo:0];
  (a2)[2](v3, v5, v4);

  v7 = v5;
  std::vector<AccelerationStructureViewer::IntersectionFunctionTable>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = v6;
  std::vector<AccelerationStructureViewer::IntersectionFunctionTable>::__destroy_vector::operator()[abi:nn200100](&v7);
}

void AccelerationStructureViewerServer::DataSource::~DataSource(AccelerationStructureViewerServer::DataSource *this)
{
  *this = &unk_2860BC618;
  v2 = *(this + 4);
  v3 = this + 40;
  if (v2 != this + 40)
  {
    do
    {
      v4 = *(v2 + 5);
      v5 = *(v2 + 6);
      if (v4 != v5)
      {
        do
        {
          if (*v4)
          {
            (*(**v4 + 8))(*v4);
          }

          ++v4;
        }

        while (v4 != v5);
        v4 = *(v2 + 5);
      }

      *(v2 + 6) = v4;
      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(*(this + 5));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = v3;
  for (i = *(this + 9); i; i = *i)
  {
    free(i[3]);
  }

  if (*(this + 10))
  {
    v10 = *(this + 9);
    if (v10)
    {
      do
      {
        v11 = *v10;
        operator delete(v10);
        v10 = v11;
      }

      while (v11);
    }

    *(this + 9) = 0;
    v12 = *(this + 8);
    if (v12)
    {
      for (j = 0; j != v12; ++j)
      {
        *(*(this + 7) + 8 * j) = 0;
      }
    }

    *(this + 10) = 0;
  }

  for (k = *(this + 14); k; k = *k)
  {
    free(k[3]);
  }

  if (*(this + 15))
  {
    v15 = *(this + 14);
    if (v15)
    {
      do
      {
        v16 = *v15;
        operator delete(v15);
        v15 = v16;
      }

      while (v16);
    }

    *(this + 14) = 0;
    v17 = *(this + 13);
    if (v17)
    {
      for (m = 0; m != v17; ++m)
      {
        *(*(this + 12) + 8 * m) = 0;
      }
    }

    *(this + 15) = 0;
  }

  v19 = *(this + 23);
  if (*(this + 24) != v19)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = v19 + v20;
      v23 = *(v22 + 24);
      *(v22 + 24) = 0;

      v24 = *(this + 23) + v20;
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;

      v26 = *(this + 23) + v20;
      v27 = *(v26 + 56);
      *(v26 + 56) = 0;

      v28 = *(this + 23) + v20;
      v29 = *(v28 + 72);
      *(v28 + 72) = 0;

      v30 = *(this + 23) + v20;
      v31 = *(v30 + 88);
      *(v30 + 88) = 0;

      v32 = *(this + 23) + v20;
      v33 = *(v32 + 104);
      *(v32 + 104) = 0;

      v34 = *(this + 23) + v20;
      v35 = *(v34 + 152);
      *(v34 + 152) = 0;

      v36 = *(this + 23) + v20;
      v37 = *(v36 + 168);
      *(v36 + 168) = 0;

      ++v21;
      v19 = *(this + 23);
      v20 += 184;
    }

    while (v21 < 0xD37A6F4DE9BD37A7 * ((*(this + 24) - v19) >> 3));
  }

  v44 = (this + 184);
  std::vector<AccelerationStructureViewerServer::AccelerationStructure>::__destroy_vector::operator()[abi:nn200100](&v44);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 136);
  v38 = *(this + 14);
  if (v38)
  {
    do
    {
      v39 = *v38;
      operator delete(v38);
      v38 = v39;
    }

    while (v39);
  }

  v40 = *(this + 12);
  *(this + 12) = 0;
  if (v40)
  {
    operator delete(v40);
  }

  v41 = *(this + 9);
  if (v41)
  {
    do
    {
      v42 = *v41;
      operator delete(v41);
      v41 = v42;
    }

    while (v42);
  }

  v43 = *(this + 7);
  *(this + 7) = 0;
  if (v43)
  {
    operator delete(v43);
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(*(this + 5));
  std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(*(this + 2));
}

void std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void std::vector<AccelerationStructureViewerServer::APSUSCRayCollector>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      for (i = (v4 + 32 * a2); v3 != i; v3 -= 4)
      {
      }

      a1[1] = i;
    }
  }

  else
  {
    v6 = a1[2];
    if (a2 - v5 > (v6 - v3) >> 5)
    {
      if (!(a2 >> 59))
      {
        v7 = v6 - v4;
        v8 = v7 >> 4;
        if (v7 >> 4 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFE0)
        {
          v9 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 59))
        {
          operator new();
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = &v3[4 * (a2 - v5)];
    v12 = 32 * a2 - 32 * v5;
    do
    {
      v3[2] = 0;
      v3[3] = 0;
      *v3 = -1;
      v3[1] = 0;
      v3 += 4;
      v12 -= 32;
    }

    while (v12);
    a1[1] = v11;
  }
}

uint64_t AccelerationStructureViewerServer::Profiler::gpuForDevice(void *a1)
{
  v1 = [a1 acceleratorPort];
  v2 = GRCCopyAllCounterSourceGroup();
  if (![v2 count])
  {
    goto LABEL_4;
  }

  v3 = [v2 firstObject];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = MEMORY[0x277CBEB38];
  v6 = [v2 firstObject];
  v7 = [v6 features];
  v8 = [v7 objectForKeyedSubscript:@"ConstantAGX_CoreConfig"];
  CFProperty = [v5 dictionaryWithDictionary:v8];

  if (!CFProperty)
  {
LABEL_4:
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"GPUConfigurationVariable", 0, 0);
  }

  v10 = [CFProperty objectForKeyedSubscript:@"gpu_gen"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [CFProperty objectForKeyedSubscript:@"gpu_var"];
  v13 = [CFProperty objectForKeyedSubscript:@"gpu_rev"];
  v14 = [CFProperty objectForKeyedSubscript:@"gpu_type"];
  v15 = v14;
  if (!v14 || !v13)
  {
    v26 = [CFProperty objectForKeyedSubscript:@"num_cores"];
    v27 = [v26 unsignedIntegerValue];

    if (v11 == 16)
    {
      if (v27 <= 7)
      {

        v13 = @"B1";
        LODWORD(v11) = 16;
LABEL_29:
        v12 = @"P";
        goto LABEL_39;
      }

      if (v27 > 0xA)
      {

        if (v27 >= 0x15)
        {
          v12 = @"C";
        }

        else
        {
          v12 = @"S";
        }

        v13 = @"A0";
        LODWORD(v11) = 16;
        goto LABEL_39;
      }

      v13 = @"B0";
      LODWORD(v11) = 16;
    }

    else
    {
      if (v11 != 15)
      {

        if (v27 >= 8)
        {
          v12 = @"G";
        }

        else
        {
          v12 = @"P";
        }

        v13 = @"A0";
        goto LABEL_25;
      }

      if (v27 <= 3)
      {

        v13 = @"B0";
        LODWORD(v11) = 15;
        v12 = @"M";
        goto LABEL_39;
      }

      if (v27 <= 7)
      {

        v13 = @"B1";
        LODWORD(v11) = 15;
        goto LABEL_29;
      }

      if (v27 > 0xA)
      {
        if (v27 > 0x14)
        {

          if (v27 >= 0x29)
          {
            v12 = @"D";
          }

          else
          {
            v12 = @"C";
          }

          if (v27 >= 0x29)
          {
            v13 = @"A0";
          }

          else
          {
            v13 = @"B0";
          }

          LODWORD(v11) = 15;
        }

        else
        {

          v13 = @"B0";
          LODWORD(v11) = 15;
          v12 = @"S";
        }

        goto LABEL_39;
      }

      v13 = @"C0";
      LODWORD(v11) = 15;
    }

    v12 = @"G";
    goto LABEL_39;
  }

  if ([v14 length])
  {
    v16 = [MEMORY[0x277CCA900] letterCharacterSet];
    v17 = [v15 componentsSeparatedByCharactersInSet:v16];

    if ([v17 count] >= 3)
    {
      v18 = [v17 objectAtIndex:0];
      v19 = [v18 length];

      if (!v19)
      {
        v20 = [v17 objectAtIndex:1];
        v11 = [v20 integerValue];
      }
    }

    v21 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v22 = [v15 componentsSeparatedByCharactersInSet:v21];

    if ([v22 count] >= 3)
    {
      v23 = [v22 objectAtIndex:1];
      v24 = [v23 length];

      if (!v24)
      {
        v25 = [v22 objectAtIndex:2];

        v12 = v25;
      }
    }
  }

LABEL_25:
  if (v11 <= 9)
  {
    v28 = agxps_gpu_invalid_handle();
    goto LABEL_46;
  }

LABEL_39:
  v29 = [&unk_2860D63A8 objectForKey:v12];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 unsignedIntegerValue];
    v32 = [&unk_2860D63D0 objectForKey:v13];
    v33 = v32;
    if (v32)
    {
      v34 = agxps_gpu_create(v11, v31, [v32 unsignedIntegerValue]);
    }

    else
    {
      v34 = agxps_gpu_invalid_handle();
    }

    v28 = v34;
  }

  else
  {
    v28 = agxps_gpu_invalid_handle();
  }

LABEL_46:
  return v28;
}

void std::vector<std::mutex>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::mutex::~mutex(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::deque<AccelerationStructureViewerServer::APSRawChunk>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 128;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AccelerationStructureViewerServer::Profiler::stopAPSStreaming(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 752) firstObject];
  [v3 stopSampling];

  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_WaitingForAccu.isa);
  }

  *(a1 + 432) = 0;
  v5 = *(a1 + 248);
  v4 = *(a1 + 256);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      std::thread::join((v5 + v6));
      ++v7;
      v5 = *(a1 + 248);
      v4 = *(a1 + 256);
      v6 += 8;
    }

    while (v7 < (v4 - v5) >> 3);
  }

  while (v4 != v5)
  {
    std::thread::~thread((v4 - 8));
  }

  *(a1 + 256) = v5;
  if (*(a1 + 32))
  {
    NSLog(&cfstr_WaitingForPars.isa);
  }

  v9 = *(a1 + 272);
  v8 = *(a1 + 280);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      std::thread::join((v9 + v10));
      ++v11;
      v9 = *(a1 + 272);
      v8 = *(a1 + 280);
      v10 += 8;
    }

    while (v11 < (v8 - v9) >> 3);
  }

  while (v8 != v9)
  {
    std::thread::~thread((v8 - 8));
  }

  *(a1 + 280) = v9;
  if (*(a1 + 32))
  {
    NSLog(&cfstr_ClearingOutRaw.isa);
  }

  if (*(a1 + 584) != *(a1 + 576))
  {
    v12 = 0;
    do
    {
      std::mutex::lock((*(a1 + 552) + (v12 << 6)));
      for (i = (*(a1 + 576) + 48 * v12); i[5]; i = (*(a1 + 576) + 48 * v12))
      {
        free(*(*(i[1] + ((i[4] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (i[4] & 0x7FLL) + 16));
        v14 = (*(a1 + 576) + 48 * v12);
        v14[2] = vaddq_s64(v14[2], xmmword_24DA8BC20);
        std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](v14);
      }

      std::mutex::unlock((*(a1 + 552) + (v12++ << 6)));
    }

    while (v12 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 584) - *(a1 + 576)) >> 4));
  }

  if (*(a1 + 32))
  {
    NSLog(&cfstr_ClearingOutFre.isa);
  }

  std::mutex::lock((a1 + 440));
  while (*(a1 + 544))
  {
    free(*(*(*(a1 + 512) + ((*(a1 + 536) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 536) & 0x7FLL) + 16));
    *(a1 + 536) = vaddq_s64(*(a1 + 536), xmmword_24DA8BC20);
    std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](a1 + 504);
  }

  std::mutex::unlock((a1 + 440));
  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_ClearingOutFre_0.isa);
  }

  std::mutex::lock((a1 + 136));
  while (*(a1 + 240))
  {
    std::deque<objc_object  {objcproto9MTLBuffer}* {__strong}>::pop_front(a1 + 200);
  }

  std::mutex::unlock((a1 + 136));
  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_StreamingIsNoL.isa);
  }
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    operator delete(a1);
  }
}

void std::vector<std::thread>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0x100uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }
}

void std::deque<objc_object  {objcproto9MTLBuffer}* {__strong}>::pop_front(uint64_t a1)
{
  v2 = vaddq_s64(*(a1 + 32), xmmword_24DA8BC20);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x400uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

uint64_t AccelerationStructureViewerServer::Profiler::startAPSStreaming(void *a1)
{
  v1 = [a1 firstObject];
  v2 = [v1 startSampling];

  return v2;
}

uint64_t *std::vector<AccelerationStructureViewerServer::APSUSCChunkCollector>::resize(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 - *result;
  v5 = 0xE0D0D6AAD8DA6A1BLL * (v4 >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      result[1] = v3 + 196760 * a2;
    }
  }

  else
  {
    v7 = result[2];
    if (0xE0D0D6AAD8DA6A1BLL * ((v7 - v2) >> 3) < v6)
    {
      if (a2 <= 0x5544751E275DLL)
      {
        v8 = 0xC1A1AD55B1B4D436 * ((v7 - v3) >> 3);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (0xE0D0D6AAD8DA6A1BLL * ((v7 - v3) >> 3) >= 0x2AA23A8F13AELL)
        {
          v9 = 0x5544751E275DLL;
        }

        else
        {
          v9 = v8;
        }

        if (v9 <= 0x5544751E275DLL)
        {
          operator new();
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v2 + 196760 * v6;
    v11 = 196760 * a2 - 8 * (v4 >> 3);
    do
    {
      v12 = v2 + 196608;
      *(v2 + 8) = -1;
      *(v2 + 16) = -1;
      *(v2 + 24) = -1;
      *(v2 + 32) = 0;
      *(v2 + 40) = 1;
      *(v2 + 196720) = 0;
      *(v2 + 196736) = 0;
      *(v2 + 196744) = 0;
      *(v2 + 196728) = 0;
      *(v2 + 196752) = 0;
      atomic_store(0, (v2 + 48));
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      *(v2 + 196720) = 0;
      v2 += 196760;
      *(v12 + 120) = 0;
      v11 -= 196760;
    }

    while (v11);
    result[1] = v10;
  }

  return result;
}

uint64_t *std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>,std::default_delete<AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x2530332C0](v3, 0x10A0C40A7A12BA5);
  }

  return a1;
}

void std::vector<std::thread>::push_back[abi:nn200100](uint64_t a1, std::__libcpp_thread_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * v7);
    p_t = &v11[-((v4 - *a1) >> 3)].__t_;
    v11->__t_ = *a2;
    v5 = v11 + 1;
    *a2 = 0;
    if (v6 != v4)
    {
      v13 = v6;
      v14 = p_t;
      do
      {
        *v14++ = v13->__t_;
        v13->__t_ = 0;
        ++v13;
      }

      while (v13 != v4);
      do
      {
        std::thread::~thread(v6);
        v6 = v15 + 1;
      }

      while (v6 != v4);
      v6 = *a1;
    }

    *a1 = p_t;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    v4->__t_ = *a2;
    *a2 = 0;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t *std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>,std::default_delete<AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x2530332C0](v3, 0x10A0C406BEFA00CLL);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>>(uint64_t a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  AccelerationStructureViewerServer::Profiler::parserWorker(*(a1 + 8), *(a1 + 16), *(a1 + 24));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>,std::default_delete<AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>>::~unique_ptr[abi:nn200100](&v5);
  return 0;
}

void AccelerationStructureViewerServer::Profiler::parserWorker(uint64_t a1, uint64_t a2, void *a3)
{
  v191 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_StartedParserW.isa);
  }

  v5 = AccelerationStructureViewerServer::Profiler::gpuForDevice(v4);
  if (agxps_gpu_is_valid(v5))
  {
    v136 = v4;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    memset(v184, 0, sizeof(v184));
    agxps_aps_descriptor_create(v184);
    v184[0] = v5;
    LODWORD(v184[1]) = *(a1 + 816);
    *(&v184[1] + 4) = *(a1 + 808);
    v184[3] = 4096;
    LODWORD(v185) = 0;
    v189[0] = xmmword_279659138;
    v189[1] = *off_279659148;
    v190 = "C648A066B5DF92C6610FB4DD77453469B226FC0B0B2903FDA7E76C7AD03011AC";
    *(&v186 + 1) = v189;
    *&v187 = 5;
    v183 = 0u;
    memset(v182, 0, sizeof(v182));
    if (*(a1 + 432) == 1)
    {
      v138 = (a1 + 736);
      v6 = -1;
      while (2)
      {
        while (*(a1 + 584) == *(a1 + 576))
        {
LABEL_24:
          usleep(0x3E8u);
          if ((*(a1 + 432) & 1) == 0)
          {
            goto LABEL_265;
          }
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = -1;
        while (1)
        {
          v11 = std::mutex::try_lock((*(a1 + 552) + v8));
          v12 = *(a1 + 576);
          if (v11)
          {
            break;
          }

LABEL_22:
          ++v9;
          v8 += 64;
          v7 += 48;
          if (v9 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 584) - v12) >> 4))
          {
            if (v10 != -1)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }
        }

        v13 = *(v12 + v7 + 40);
        if (!v13)
        {
          v16 = v10;
LABEL_21:
          std::mutex::unlock((*(a1 + 552) + v8));
          v12 = *(a1 + 576);
          v10 = v16;
          goto LABEL_22;
        }

        v14 = *(*(v12 + v7 + 8) + ((*(v12 + v7 + 32) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v12 + v7 + 32) & 0x7FLL);
        v15 = *(v14 + 8) != *(*(a1 + 600) + 196760 * *(v14 + 2) + 32) || v13 >= v6;
        if (v15)
        {
          goto LABEL_17;
        }

        if (v10 != -1)
        {
          std::mutex::unlock((*(a1 + 552) + (v10 << 6)));
          v12 = *(a1 + 576);
        }

        v6 = *(v12 + v7 + 40);
        v10 = v9;
        if (v6 != 1)
        {
LABEL_17:
          v16 = v10;
          v47 = v9 == v10;
          v10 = v9;
          if (v47)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v10 = v9;
LABEL_27:
        if (*(a1 + 432))
        {
          v17 = (v12 + 48 * v10);
          v18 = (*(v17->i64[1] + ((v17[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17[2].i64[0] & 0x7F));
          v19 = v18[1];
          v180 = *v18;
          v181 = v19;
          v17[2] = vaddq_s64(v17[2], xmmword_24DA8BC20);
          std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](v17);
          std::mutex::unlock((*(a1 + 552) + (v10 << 6)));
          v139 = WORD1(v180);
          v137 = *(a1 + 600);
          v20 = (v137 + 196760 * WORD1(v180));
          if (v180 == 1)
          {
            if (*(&v180 + 1))
            {
              agxps_aps_parser_destroy(*v20);
            }

            v20[7] = 0;
            v20[8] = 0;
            v20[9] = 0;
            *(v20 + 12293) = 0u;
            *(v20 + 12294) = 0u;
            v21 = agxps_aps_parser_create(v184);
            *v20 = v21;
            if (*(a1 + 32) == 1 && !v21)
            {
              NSLog(&cfstr_ParserIsMissin.isa);
            }
          }

          v22 = v181;
          if (*(a1 + 32) == 1 && (!v181 || !*(&v181 + 1)))
          {
            NSLog(&cfstr_ChunkIsNullptr.isa, v181);
          }

          v179 = 0;
          v23 = agxps_aps_parser_parse(*v20, v22, *(&v22 + 1), 6, &v179);
          if (v179)
          {
            NSLog(&cfstr_AnErrorDOccurr.isa, v179, *(&v180 + 1), v139);
          }

          if (!v23 && *(a1 + 32) == 1)
          {
            NSLog(&cfstr_ChunkLluOfUscD.isa, *(&v180 + 1), v139);
          }

          counter_num = agxps_aps_profile_data_get_counter_num(v23);
          if (v23 && counter_num && !v179)
          {
            if (*(v20 + 2) == -1)
            {
              *(v20 + 2) = agxps_aps_profile_data_get_counter_index(v23);
              *(v20 + 3) = agxps_aps_profile_data_get_counter_index(v23);
              *(v20 + 4) = agxps_aps_profile_data_get_counter_index(v23);
              *(v20 + 5) = agxps_aps_profile_data_get_counter_index(v23);
              if (agxps_counter_is_valid(*(a1 + 856)))
              {
                counter_index = agxps_aps_profile_data_get_counter_index(v23);
              }

              else
              {
                counter_index = -1;
              }

              *(v20 + 6) = counter_index;
              v154 = *(v20 + 2);
            }

            else
            {
              v154 = *(v20 + 2);
              counter_index = *(v20 + 6);
            }

            v155 = *(v20 + 3);
            v156 = *(v20 + 4);
            v26 = *(v20 + 49180);
            v27 = *(v20 + 5);
            v28 = v20[24591];
            v177 = 0u;
            v178 = 0u;
            __p = 0u;
            std::mutex::lock((a1 + 624));
            v29 = 0;
            if (v26 && v28)
            {
              v30 = *v138;
              if (!*v138)
              {
                goto LABEL_66;
              }

              v31 = a1 + 736;
              do
              {
                v32 = *(v30 + 32);
                v15 = v32 >= v26;
                v33 = v32 < v26;
                if (v15)
                {
                  v31 = v30;
                }

                v30 = *(v30 + 8 * v33);
              }

              while (v30);
              if (v31 != v138 && v26 >= *(v31 + 32))
              {
                v34 = *(v31 + 40);
                v29 = *(v31 + 48);
                v144 = v28;
                if (v29)
                {
                  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                }
              }

              else
              {
LABEL_66:
                v29 = 0;
                v34 = 0;
                v26 = 0;
                v144 = 0;
              }
            }

            else
            {
              v144 = v28;
              v34 = 0;
            }

            v147 = v26;
            v143 = v29;
            kicks_num = agxps_aps_profile_data_get_kicks_num(v23);
            v158 = v23;
            if (kicks_num)
            {
              v36 = kicks_num;
              v146 = 0;
              v37 = 0;
              v38 = 0;
              v150 = -1;
              while (1)
              {
                v175 = 0;
                if (!agxps_aps_profile_data_get_kick_software_id(v23, &v175, v38, 1) || !agxps_aps_profile_data_get_kick_start(v23, &v174, v38, 1))
                {
                  goto LABEL_100;
                }

                __dst = 0;
                if (!agxps_aps_profile_data_get_usc_timestamps(v23, &__dst, HIDWORD(v174), 1))
                {
                  goto LABEL_98;
                }

                v39 = HIDWORD(v175);
                v40 = *v138;
                if (*v138)
                {
                  v41 = a1 + 736;
                  do
                  {
                    v42 = *(v40 + 32);
                    v15 = v42 >= HIDWORD(v175);
                    v43 = v42 < HIDWORD(v175);
                    if (v15)
                    {
                      v41 = v40;
                    }

                    v40 = *(v40 + 8 * v43);
                  }

                  while (v40);
                  if (v41 != v138 && *(v41 + 32) <= HIDWORD(v175))
                  {
                    break;
                  }
                }

                if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>((a1 + 688), HIDWORD(v175)))
                {
                  if (!((v34 != 0) | v37 & 1))
                  {
                    if (v143)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v143);
                    }

                    v34 = 0;
                    v37 = 1;
                    v143 = 0;
                    v144 = __dst;
                    goto LABEL_99;
                  }

                  v170.n128_u64[0] = __dst;
                  v170.n128_u32[2] = v39;
                  v171 = 0;
                  v172 = 0;
                  goto LABEL_91;
                }

LABEL_98:
                v39 = v147;
LABEL_99:
                v147 = v39;
                v23 = v158;
LABEL_100:
                if (++v38 == v36)
                {
                  goto LABEL_108;
                }
              }

              if (!((v34 != 0) | v37 & 1))
              {
                v153 = counter_index;
                v49 = v27;
                v34 = *(v41 + 40);
                v50 = *(v41 + 48);
                if (v50)
                {
                  atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v143)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v143);
                }

                v37 = 0;
                v143 = v50;
                v144 = __dst;
                v27 = v49;
                counter_index = v153;
                goto LABEL_99;
              }

              v45 = *(v41 + 40);
              v44 = *(v41 + 48);
              if (v44)
              {
                atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v170.n128_u64[0] = __dst;
              v170.n128_u32[2] = v39;
              v171 = v45;
              v172 = v44;
LABEL_91:
              std::deque<std::pair<unsigned long long,std::pair<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::push_back(&__p, &v170);
              if (v172)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v172);
              }

              v46 = v150;
              v47 = v150 == -1;
              if (v150 == -1)
              {
                v46 = __dst;
              }

              v150 = v46;
              v48 = v146;
              if (v47)
              {
                v48 = v39;
              }

              v146 = v48;
              goto LABEL_98;
            }

            v146 = 0;
            v150 = -1;
LABEL_108:
            std::mutex::unlock((a1 + 624));
            v170.n128_u64[0] = 0;
            v174 = 0;
            v175 = 0;
            if (v154 != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &v170, v154);
              agxps_aps_profile_data_get_counter_values_by_index(v23, &v175, v154);
              agxps_aps_profile_data_get_counter_group_metadata_by_index(v23, &v174, v154);
            }

            __dst = 0;
            v168 = 0;
            v169 = 0;
            v166 = 0;
            v167 = 0;
            v164 = 0;
            v165 = 0;
            v162 = 0;
            v163 = 0;
            v51 = v34;
            if (v155 != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &__dst, v155);
              if (__dst)
              {
                agxps_aps_profile_data_get_counter_values_by_index(v23, &v169, v155);
                agxps_aps_profile_data_get_counter_group_metadata_by_index(v23, &v162, v155);
              }
            }

            if (v156 != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &v168, v156);
              if (v168)
              {
                agxps_aps_profile_data_get_counter_values_by_index(v23, &v167, v156);
              }
            }

            if (v27 != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &v166, v27);
              if (v166)
              {
                agxps_aps_profile_data_get_counter_values_by_index(v23, &v165, v27);
              }
            }

            if (counter_index != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &v164, counter_index);
              if (v164)
              {
                agxps_aps_profile_data_get_counter_values_by_index(v23, &v163, counter_index);
              }
            }

            v52 = v168;
            if (v168 >= v170.n128_u64[0])
            {
              v52 = v170.n128_u64[0];
            }

            v170.n128_u64[0] = v52;
            if (v166 >= __dst)
            {
              v53 = __dst;
            }

            else
            {
              v53 = v166;
            }

            __dst = v53;
            v54 = v20[7];
            v55 = 0;
            if (v52)
            {
              v56 = 0;
              v57 = v20 + 24593;
              while (1)
              {
                v58 = *(v175 + 8 * v56);
                v59 = *(v167 + 8 * v56);
                v161 = 0;
                v60 = v150;
                if ((agxps_aps_profile_data_get_usc_timestamps(v158, &v161, *(v174 + 8 * v56 + 4), 1) & 1) == 0 && *(a1 + 32) == 1)
                {
                  NSLog(&cfstr_UnableToGetInt.isa);
                }

                v61 = v161;
                if (!v161)
                {
                  v61 = (v20[24586] + *(a1 + 812)) % 0xFFFFF;
                  v161 = v61;
                }

                v20[24586] = v61;
                v149 = v56;
                if (!v51)
                {
                  if (!v58)
                  {
                    goto LABEL_191;
                  }

                  goto LABEL_190;
                }

                v148 = v58;
                if (v161 < v150)
                {
                  v62 = v150;
                  v63 = v146;
                  v64 = v144;
                  goto LABEL_158;
                }

                if (!*(&v178 + 1))
                {
                  break;
                }

                v141 = v59;
                v65 = *(&__p + 1);
                v66 = v178;
                v67 = v178 >> 7;
                v68 = v178 & 0x7F;
                v69 = *(*(&__p + 1) + 8 * (v178 >> 7)) + 32 * v68;
                v71 = *(v69 + 16);
                v70 = *(v69 + 24);
                if (v70)
                {
                  atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                  atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v143)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v143);
                  v65 = *(&__p + 1);
                  v66 = v178;
                  v67 = v178 >> 7;
                  v68 = v178 & 0x7F;
                }

                v72 = *(v65[v67] + 4 * v68 + 3);
                if (v72)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v72);
                }

                v73 = *(&v178 + 1) - 1;
                v74 = v66 + 1;
                *&v178 = v66 + 1;
                --*(&v178 + 1);
                if ((v66 + 1) >= 0x100)
                {
                  v75 = *v65++;
                  operator delete(v75);
                  v74 = v66 - 127;
                  *(&__p + 1) = v65;
                  *&v178 = v66 - 127;
                }

                if (v73)
                {
                  v76 = *(v65 + ((v74 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v74 & 0x7F);
                  v62 = *v76;
                  v63 = *(v76 + 8);
                  v77 = *(v76 + 24);
                  if (v77)
                  {
                    v78 = *(v76 + 8);
                    v79 = *v76;
                    atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:nn200100](v77);
                    v62 = v79;
                    v63 = v78;
                  }
                }

                else
                {
                  v63 = 0;
                  v62 = -1;
                }

                v51 = v71;
                v64 = v150;
                v80 = v146;
                if (v70)
                {
                  v145 = v63;
                  v81 = v62;
                  v82 = v70;
LABEL_156:
                  std::__shared_weak_count::__release_shared[abi:nn200100](v82);
                  v143 = v70;
                  v147 = v80;
                  v59 = v141;
                  v62 = v81;
                  v63 = v145;
                  goto LABEL_158;
                }

                v143 = 0;
                v147 = v146;
                v59 = v141;
LABEL_158:
                if (v148)
                {
                  if (v51)
                  {
                    if (v161 >= v64)
                    {
                      v152 = v62;
                      v142 = v59;
                      v84 = v148;
                      do
                      {
                        add = atomic_fetch_add((v51 + 48), 1uLL);
                        if (add < *(v51 + 56))
                        {
                          v86 = (*(v51 + 64) + 32 * WORD1(v180));
                          v87 = *v86;
                          v88 = v86[1];
                          if (*v86 != -1 && v87 >= v88)
                          {
                            if (*(a1 + 32) == 1)
                            {
                              NSLog(&cfstr_Uscraycollecto.isa, v87, v88);
                            }
                          }

                          else
                          {
                            *v86 = v87 + 1;
                            if (v87 < v88)
                            {
                              v90 = v86[3] + 12 * v87;
                              v91 = *v57;
                              *(v90 + 8) = *(v20 + 49188);
                              *v90 = v91;
                            }
                          }
                        }

                        v92 = *(v51 + 56);
                        if (add == v92 - 1)
                        {
                          std::mutex::lock((a1 + 624));
                          std::condition_variable::notify_one(v51);
                          std::mutex::unlock((a1 + 624));
                        }

                        else if (add >= v92 && *(a1 + 32) == 1)
                        {
                          NSLog(&cfstr_RayCollectorIs.isa, add, v92, WORD1(v180), a2, v147, v63);
                        }

                        --v84;
                      }

                      while (v84);
                      v144 = v64;
                      v146 = v63;
                      v60 = v152;
                      v59 = v142;
                    }

                    else
                    {
                      if (!WORD1(v180) && *(a1 + 32) == 1)
                      {
                        v151 = v62;
                        NSLog(&cfstr_DHasnTStartedY.isa, v147, v148);
                        v144 = v64;
                        v58 = v148;
                        v146 = v63;
                        v60 = v151;
LABEL_190:
                        v20[24592] += v58;
                        *v57 = 0;
                        *(v20 + 49188) = 0;
                        goto LABEL_191;
                      }

                      v144 = v64;
                      v146 = v63;
                      v60 = v62;
                    }

                    v58 = v148;
                    goto LABEL_190;
                  }

                  v83 = v147;
                  v146 = v63;
                  v144 = v64;
                  v58 = v148;
LABEL_166:
                  if (WORD1(v180) || *(a1 + 32) != 1)
                  {
                    v51 = 0;
                    v60 = v62;
                  }

                  else
                  {
                    v60 = v62;
                    NSLog(&cfstr_NoCollectorFor.isa, v58);
                    v51 = 0;
                  }

                  v147 = v83;
                  goto LABEL_190;
                }

                v144 = v64;
                v146 = v63;
                v60 = v62;
LABEL_191:
                if (v59)
                {
                  *(v20 + 49187) += v59;
                }

                v150 = v60;
                if (v55 < __dst + v54)
                {
                  v93 = 4 - 8 * v54 + 8 * v55;
                  v94 = v51;
                  while (1)
                  {
                    v160 = 0;
                    if (v55 >= v54)
                    {
                      if (v163)
                      {
                        v99 = -8 * v54;
                        v97 = (&v163[v55])[-v54];
                      }

                      else
                      {
                        LODWORD(v97) = 0;
                        v99 = -8 * v54;
                      }

                      v95 = *(v169 + v99 + 8 * v55);
                      v96 = *(v165 + v99 + 8 * v55);
                      if ((agxps_aps_profile_data_get_usc_timestamps(v158, &v160, *(v162 + v93), 1) & 1) == 0 && *(a1 + 32) == 1)
                      {
                        NSLog(&cfstr_UnableToGetCou.isa);
                      }

                      v98 = v160;
                    }

                    else
                    {
                      v95 = v20[v55 + 12298];
                      v96 = v20[v55 + 16394];
                      v97 = v20[v55 + 20490];
                      v98 = v20[v55 + 10];
                      v160 = v98;
                    }

                    v100 = *(a1 + 812);
                    if (!v98)
                    {
                      v98 = (v20[24587] + v100) % 0xFFFFF;
                      v160 = v98;
                      if (*(a1 + 32) == 1)
                      {
                        NSLog(&cfstr_PatchingMissin.isa);
                        v100 = *(a1 + 812);
                        v98 = v160;
                      }
                    }

                    v15 = v161 >= v100;
                    v101 = v161 - v100;
                    if (!v15)
                    {
                      v101 = 0;
                    }

                    if (v98 >= v101)
                    {
                      break;
                    }

                    v102 = *v57;
                    *(v20 + 49188) += v96;
                    *(v20 + 49187) += v97;
                    v20[24587] = v98;
                    *v57 = v102 + v95;
                    ++v55;
                    v93 += 8;
                    v51 = v94;
                    if (v55 >= __dst + v54)
                    {
                      goto LABEL_213;
                    }
                  }

                  v51 = v94;
                }

LABEL_213:
                v56 = v149 + 1;
                if (v149 + 1 >= v170.n128_u64[0])
                {
                  v53 = __dst;
                  goto LABEL_217;
                }
              }

              if (!v143)
              {
                v143 = 0;
                v144 = 0;
                v83 = 0;
                v146 = 0;
                v147 = 0;
                v51 = 0;
                v62 = -1;
                v60 = -1;
                if (!v58)
                {
                  goto LABEL_191;
                }

                goto LABEL_166;
              }

              v141 = v59;
              v70 = 0;
              v51 = 0;
              v80 = 0;
              v145 = 0;
              v64 = 0;
              v81 = -1;
              v82 = v143;
              goto LABEL_156;
            }

LABEL_217:
            *(v20 + 49180) = v147;
            v20[24591] = v144;
            v103 = v53 + v54 - v55;
            if (v53 + v54 <= v55)
            {
              v20[7] = 0;
            }

            else
            {
              v20[7] = v103;
              v104 = v54 - v55;
              if (v103 <= v53)
              {
                v111 = 0;
                if (v103 <= 1)
                {
                  v112 = 1;
                }

                else
                {
                  v112 = v103;
                }

                do
                {
                  v113 = __dst - v103;
                  v20[v111 + 12298] = *(v169 + 8 * (__dst - v103) + v111 * 8);
                  v20[v111 + 16394] = *(v165 + 8 * (v166 - v103) + v111 * 8);
                  v114 = v163;
                  if (v163)
                  {
                    v114 = (&v163[v164 - v103])[v111];
                  }

                  v20[v111 + 20490] = v114;
                  agxps_aps_profile_data_get_usc_timestamps(v158, &v20[v111 + 10], *(v162 + 8 * v113 + v111 * 8 + 4), 1);
                  ++v111;
                  --v112;
                }

                while (v112);
              }

              else
              {
                v105 = 0;
                v106 = v137 + 8 * v55 + 196760 * v139;
                do
                {
                  v107 = &v20[v105 + 16394];
                  *(v107 - 4096) = *(v106 + 98384 + 8 * v105);
                  *v107 = *(v106 + 131152 + 8 * v105);
                  v107[4096] = *(v106 + 163920 + 8 * v105);
                  v20[v105 + 10] = *(v106 + 8 * v105 + 80);
                  ++v105;
                }

                while (v104 != v105);
                if (v104 < v103)
                {
                  v108 = v137 + 8 * v54 + 196760 * v139 - 8 * v55;
                  v109 = 4;
                  do
                  {
                    *(v108 + 98384 + v109 - 4) = *(v169 + v109 - 4);
                    *(v108 + 131152 + v109 - 4) = *(v165 + v109 - 4);
                    v110 = v163;
                    if (v163)
                    {
                      v110 = *(v163 + v109 - 4);
                    }

                    *(v108 + 163920 + v109 - 4) = v110;
                    agxps_aps_profile_data_get_usc_timestamps(v158, (v108 + v109 + 76), *(v162 + v109), 1);
                    v109 += 8;
                    --v53;
                  }

                  while (v53);
                }
              }
            }

            v115 = *(&__p + 1);
            v116 = v177;
            v117 = *(&__p + 1);
            v118 = v177 - *(&__p + 1);
            if (v177 != *(&__p + 1))
            {
              v119 = (*(&__p + 1) + 8 * (v178 >> 7));
              v120 = *v119;
              v121 = *v119 + 32 * (v178 & 0x7F);
              v122 = *(*(&__p + 1) + (((*(&v178 + 1) + v178) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(&v178 + 1) + v178) & 0x7F);
              v117 = v177;
              if (v121 != v122)
              {
                do
                {
                  v123 = *(v121 + 24);
                  if (v123)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v123);
                    v120 = *v119;
                  }

                  v121 += 32;
                  if (v121 - v120 == 4096)
                  {
                    v124 = v119[1];
                    ++v119;
                    v120 = v124;
                    v121 = v124;
                  }
                }

                while (v121 != v122);
                v117 = v116;
              }
            }

            if ((v117 - v115) < 0x11)
            {
              v116 = v117;
            }

            else
            {
              do
              {
                v125 = *v115++;
                operator delete(v125);
                v118 -= 8;
              }

              while (v118 > 0x10);
            }

            while (v115 != v116)
            {
              v126 = *v115++;
              operator delete(v126);
            }

            if (__p)
            {
              operator delete(__p);
            }

            if (v143)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v143);
            }
          }

          else if (v179)
          {
            NSLog(&cfstr_ChunkHadAnErro.isa);
          }

          else if (!v23)
          {
            NSLog(&cfstr_ChunkIsNotOpaq.isa);
          }

          if (v183.i64[1] < 0x80uLL)
          {
            std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(v182, &v180);
          }

          else
          {
            std::mutex::lock((a1 + 440));
            v127 = v183.i64[0];
            do
            {
              v128 = v182[1];
              std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(a1 + 504, *(v182[1] + ((v127 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v127 & 0x7F));
              v129 = vaddq_s64(v183, xmmword_24DA8BC20);
              v183 = v129;
              v127 = v129.i64[0];
              if (v129.i64[0] >= 0x100uLL)
              {
                v159 = v129.i64[1];
                operator delete(*v128);
                v129.i64[1] = v159;
                v127 -= 128;
                v182[1] = v128 + 1;
                v183.i64[0] = v127;
              }
            }

            while (v129.i64[1]);
            std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(a1 + 504, &v180);
            std::mutex::unlock((a1 + 440));
          }

          v130 = WORD1(v180);
          std::mutex::lock((*(a1 + 552) + (WORD1(v180) << 6)));
          ++v20[4];
          std::mutex::unlock((*(a1 + 552) + (v130 << 6)));
          v6 = -1;
          if ((*(a1 + 432) & 1) == 0)
          {
            goto LABEL_265;
          }

          continue;
        }

        break;
      }

      std::mutex::unlock((*(a1 + 552) + (v10 << 6)));
    }

LABEL_265:
    if (v183.i64[1])
    {
      v131 = v183.i64[0];
      v132 = v182[1];
      do
      {
        free((*(v132 + ((v131 >> 4) & 0xFFFFFFFFFFFFFF8)))[4 * (v131 & 0x7F) + 2]);
        v133 = vaddq_s64(v183, xmmword_24DA8BC20);
        v183 = v133;
        v131 = v133.i64[0];
        if (v133.i64[0] >= 0x100uLL)
        {
          v134 = *v132++;
          v157 = v133.i64[1];
          operator delete(v134);
          v133.i64[1] = v157;
          v131 -= 128;
          v182[1] = v132;
          v183.i64[0] = v131;
        }
      }

      while (v133.i64[1]);
    }

    if (*(a1 + 32) == 1)
    {
      NSLog(&cfstr_ParserWorkerIs.isa);
    }

    std::deque<AccelerationStructureViewerServer::APSRawChunk>::~deque[abi:nn200100](v182);
    v4 = v136;
  }

  else
  {
    NSLog(&cfstr_TheAcceleratio.isa);
  }

  v135 = *MEMORY[0x277D85DE8];
}

__n128 std::deque<std::pair<unsigned long long,std::pair<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * (v5 - v6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x80)
    {
      v10 = *(a1 + 24);
      v11 = v10 - *a1;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v13);
    }

    *(a1 + 32) = v8 - 128;
    v16 = *v6;
    *(a1 + 8) = v6 + 8;
    std::__split_buffer<GTMMappedBuffer::UsedBlock *>::emplace_back<GTMMappedBuffer::UsedBlock *&>(a1, &v16);
    v6 = *(a1 + 8);
    v9 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = (*&v6[(v9 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v9 & 0x7F));
  v14->n128_u64[0] = a2->n128_u64[0];
  v14->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  v14[1] = result;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  ++*(a1 + 40);
  return result;
}

__n128 std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * (v5 - v6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x80)
    {
      v10 = *(a1 + 24);
      v11 = v10 - *a1;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v13);
    }

    *(a1 + 32) = v8 - 128;
    v17 = *v6;
    *(a1 + 8) = v6 + 8;
    std::__split_buffer<GTMMappedBuffer::UsedBlock *>::emplace_back<GTMMappedBuffer::UsedBlock *&>(a1, &v17);
    v6 = *(a1 + 8);
    v9 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = (*&v6[(v9 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v9 & 0x7F));
  result = *a2;
  v16 = *(a2 + 16);
  *v14 = *a2;
  v14[1] = v16;
  ++*(a1 + 40);
  return result;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>>(uint64_t a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  AccelerationStructureViewerServer::Profiler::accumulationWorker(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>,std::default_delete<AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>>::~unique_ptr[abi:nn200100](&v5);
  return 0;
}

void AccelerationStructureViewerServer::Profiler::accumulationWorker(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  std::mutex::lock((a1 + 320));
  v32 = [*(a1 + 760) copy];
  std::mutex::unlock((a1 + 320));
  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_StartedAccumul.isa, a3, a4, v32);
  }

  if (*(a1 + 432) == 1)
  {
    v6 = a4;
    v33 = v5;
    do
    {
      if (![v5 isEnabled])
      {
        break;
      }

      if (a3 < a4)
      {
        v7 = a3;
        while (([v5 isEnabled] & 1) != 0)
        {
          v8 = *(*(a1 + 296) + 4 * v7);
          v39 = 0;
          v40 = 0;
          v38 = 0;
          if ([v5 ringBufferInfoAtIndex:v8 base:&v40 size:&v39 + 4 dataOffset:&v39 dataSize:&v38])
          {
            if (v38 && v40)
            {
              if (v39 + v38 <= HIDWORD(v39))
              {
                v23 = 0;
                do
                {
                  std::mutex::lock((a1 + 440));
                  v24 = *(a1 + 544);
                  if (!v24)
                  {
                    v36 = 0u;
                    *__dst = 0u;
                    __dst[0] = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                    std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(a1 + 504, &v36);
                    v24 = *(a1 + 544);
                  }

                  v25 = *(a1 + 536);
                  v26 = (*(*(a1 + 512) + ((v25 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v25 & 0x7F));
                  v27 = v26[1];
                  v36 = *v26;
                  *__dst = v27;
                  *(a1 + 544) = v24 - 1;
                  *(a1 + 536) = v25 + 1;
                  std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](a1 + 504);
                  std::mutex::unlock((a1 + 440));
                  if (v38 - v23 >= 0x1000)
                  {
                    v28 = 4096;
                  }

                  else
                  {
                    v28 = v38 - v23;
                  }

                  memcpy(__dst[0], (v40 + v39 + v23), v28);
                  __dst[1] = v28;
                  WORD1(v36) = v7;
                  v29 = *(a1 + 600) + 196760 * v7;
                  LOBYTE(v36) = *(v29 + 40);
                  *(&v36 + 1) = atomic_fetch_add((v29 + 48), 1uLL);
                  *(*(a1 + 600) + 196760 * v7 + 40) = 0;
                  v23 += v28;
                  std::mutex::lock((*(a1 + 552) + (v7 << 6)));
                  std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(*(a1 + 576) + 48 * v7, &v36);
                  std::mutex::unlock((*(a1 + 552) + (v7 << 6)));
                  v21 = v38;
                }

                while (v23 < v38);
              }

              else
              {
                v9 = 0;
                v10 = (HIDWORD(v39) - v39);
                v11 = v38 - v10;
                do
                {
                  std::mutex::lock((a1 + 440));
                  v12 = *(a1 + 544);
                  if (!v12)
                  {
                    v36 = 0u;
                    *__dst = 0u;
                    __dst[0] = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                    std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(a1 + 504, &v36);
                    v12 = *(a1 + 544);
                  }

                  v13 = *(a1 + 536);
                  v14 = (*(*(a1 + 512) + ((v13 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v13 & 0x7F));
                  v15 = v14[1];
                  v36 = *v14;
                  *__dst = v15;
                  *(a1 + 544) = v12 - 1;
                  *(a1 + 536) = v13 + 1;
                  std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](a1 + 504);
                  std::mutex::unlock((a1 + 440));
                  WORD1(v36) = v7;
                  v16 = *(a1 + 600) + 196760 * v7;
                  LOBYTE(v36) = *(v16 + 40);
                  *(&v36 + 1) = atomic_fetch_add((v16 + 48), 1uLL);
                  __dst[1] = 0;
                  if (v10 <= v9)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    if (v10 - v9 >= 0x1000)
                    {
                      v17 = 4096;
                    }

                    else
                    {
                      v17 = v10 - v9;
                    }

                    memcpy(__dst[0], (v40 + v39 + v9), v17);
                    v9 += v17;
                    __dst[1] = v17;
                  }

                  v18 = v9 - v10;
                  if (v9 >= v10)
                  {
                    if (4096 - v17 >= v11 - v18)
                    {
                      v19 = v11 - v18;
                    }

                    else
                    {
                      v19 = 4096 - v17;
                    }

                    memcpy(__dst[0] + v17, (v40 + v18), v19);
                    v9 += v19;
                    __dst[1] = (v17 + v19);
                  }

                  v20 = WORD1(v36);
                  *(*(a1 + 600) + 196760 * WORD1(v36) + 40) = 0;
                  std::mutex::lock((*(a1 + 552) + (v20 << 6)));
                  std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(*(a1 + 576) + 48 * v20, &v36);
                  std::mutex::unlock((*(a1 + 552) + (v20 << 6)));
                  v21 = v38;
                }

                while (v9 < v38);
                v6 = a4;
                v5 = v33;
              }

              if (v21)
              {
                v30 = 0;
                while (1)
                {
                  v31 = [v5 drainRingBufferAtIndex:v8 dataSize:v21 - v30];
                  if (!v31)
                  {
                    break;
                  }

                  v30 += v31;
                  v21 = v38;
                  if (v30 >= v38)
                  {
                    goto LABEL_45;
                  }
                }

                if (*(a1 + 32) == 1)
                {
                  NSLog(&cfstr_NothingDrained.isa, v7, v38 - v30);
                }
              }
            }

            else
            {
              usleep(0x64u);
            }
          }

          else
          {
            v22 = [v5 name];
            NSLog(&cfstr_FailUnableToRe.isa, v22);
          }

LABEL_45:
          if (++v7 == v6)
          {
            goto LABEL_48;
          }
        }

        NSLog(&cfstr_SourceIsNotEna.isa);
      }

LABEL_48:
      ;
    }

    while ((*(a1 + 432) & 1) != 0);
  }

  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_AccumulationWo.isa);
  }
}