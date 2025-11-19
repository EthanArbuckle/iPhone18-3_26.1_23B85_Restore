uint64_t physx::Dy::createFinalizeSolverContacts4Step(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6, double a7, float a8, float a9, double a10)
{
  for (i = 2; i != 114; i += 28)
  {
    *(a3[i] + 30) = 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = a2 + 16;
  *(a2 + 4112) = 0;
  do
  {
    v14 = &a3[28 * v11];
    v15 = v14[1].i64[0];
    v14[9].i64[0] = v13 + (v12 << 6);
    _X7 = *v15;
    _X10 = v15[1];
    __asm
    {
      PRFM            #0, [X7]
      PRFM            #0, [X10]
    }

    v24 = *(a1 + 8 * v11);
    if (v12 + *(v24 + 24) > 0x40 || v14[13].f32[1] != 0.0 || v14[13].f32[2] != 0.0)
    {
      return 1;
    }

    _X7 = v14[10].i64[1];
    __asm
    {
      PRFM            #0, [X7]
      PRFM            #0, [X7,#0x40]
      PRFM            #0, [X7,#0x80]
    }

    _X7 = *v24;
    if (v11 == 3)
    {
      _X19 = v24[1];
    }

    else
    {
      __asm { PRFM            #0, [X7] }

      _X19 = v24[1];
      __asm { PRFM            #0, [X19] }
    }

    v33 = v14[3].i64[1];
    v34 = v14[4].i64[0];
    if (*(v33 + 12) >= *(v34 + 12))
    {
      v35 = *(v34 + 12);
    }

    else
    {
      v35 = *(v33 + 12);
    }

    if (!_X7 || ((v36 = *(_X7 + 43), (v36 & 2) != 0) ? (v37 = 64) : (v37 = 16), (*(_X7 + 43) & 4) != 0 || (v38 = *(v24 + 25), !*(v24 + 25))))
    {
      *(a2 + 4112) = v12;
      return 1;
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = v36;
    v43 = v36 & 0x82;
    v44.i32[0] = *_X7;
    v45 = *(_X7 + 4);
    v46 = *(_X7 + 8);
    v47 = *(_X7 + 12);
    v48 = (v36 >> 5) & 1;
    if ((v42 & 2) != 0)
    {
      v49 = 6;
    }

    else
    {
      v49 = 4;
    }

    if (v42 < 0)
    {
      v50 = 32;
    }

    else
    {
      v50 = v37;
    }

    if (v42 < 0)
    {
      v51 = 5;
    }

    else
    {
      v51 = v49;
    }

    v52 = v12;
    do
    {
      if (v39)
      {
        v53 = *(_X7 + 41);
        v54 = v53 > v40;
        LODWORD(v55) = (v53 - v40) << v51;
        if (v54)
        {
          v55 = v55;
        }

        else
        {
          v55 = 0;
        }

        _X19 += v55;
        _X7 += 48;
      }

      v40 = *(_X7 + 41);
      if (*(_X7 + 41))
      {
        if (v41)
        {
          v56 = v50;
        }

        else
        {
          v56 = 0;
        }

        v57 = *(_X7 + 41);
        while (1)
        {
          _X19 += v56;
          __asm { PRFM            #0, [X19,#0x80] }

          _X10 = v13 + (v52 << 6);
          __asm { PRFM            #0, [X10,#0x80] }

          v61 = v35;
          if ((v42 & 0x20) != 0)
          {
            if (!v43)
            {
              v61 = 3.4028e38;
LABEL_45:
              *&v62 = *(_X7 + 16);
              DWORD2(v62) = *(_X7 + 24);
              HIDWORD(v62) = *(_X19 + 12);
              *_X10 = v62;
              *(_X10 + 16) = *_X19;
              LODWORD(v62) = *(_X19 + 8);
              *(_X10 + 48) = *(_X7 + 42);
              *(_X10 + 24) = v62;
              *(_X10 + 28) = v61;
              *(_X10 + 44) = *(_X7 + 36);
              *(_X10 + 56) = vrev64_s32(*(_X7 + 28));
              if (v43)
              {
                v63 = *(_X19 + 16);
                v64 = *(_X19 + 24);
              }

              else
              {
                v63 = 0;
                v64 = 0;
              }

              *(_X10 + 32) = v63;
              *(_X10 + 40) = v64;
              v52 = (v52 + 1);
              goto LABEL_49;
            }

            v61 = *(_X19 + 28);
          }

          if (v61 != 0.0)
          {
            goto LABEL_45;
          }

LABEL_49:
          v56 = v50;
          if (!--v57)
          {
            v41 = 1;
            break;
          }
        }
      }

      ++v39;
    }

    while (v39 != v38);
    *(a2 + 4112) = v52;
    if ((v42 & 0x10) != 0 || v52 == v12)
    {
      return 1;
    }

    v14[9].i32[2] = v52 - v12;
    v14[9].i8[12] = v48;
    if (*(v14[1].i64[1] + 62))
    {
      v65 = 0.0;
    }

    else
    {
      v65 = v45;
    }

    if (*(v14[2].i64[0] + 62))
    {
      v47 = 0.0;
    }

    v44.f32[1] = v65;
    v44.i64[1] = __PAIR64__(LODWORD(v47), v46);
    v66 = vmulq_f32(v44, *v14);
    *v14 = v66;
    ++v11;
    v12 = v52;
  }

  while (v11 != 4);

  return physx::Dy::createFinalizeSolverContacts4Step(a2 + 4128, a3, a4, a5, a6, a7, a8, a9, a10, 0.0, v66.f32[0]);
}

uint64_t physx::Dy::setupSolverConstraintStep4(uint64_t a1, uint64_t a2, float *a3, uint64_t (***a4)(void, void), float a5, float a6, float a7, float a8, float32_t a9)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v45 = *MEMORY[0x1E69E9840];
  *a3 = 0.0;
  __asm { FMOV            V0.4S, #1.0 }

  v41 = _Q0;
  while (1)
  {
    v23 = a1 + 32 * v14;
    v24 = *(v23 + 8);
    if (!v24)
    {
      break;
    }

    v25 = v15;
    v26 = &v44[5 * v15];
    bzero(&v26[5 * v17], 0x3C0uLL);
    if (v17 <= 0xB)
    {
      v27 = v17 + 1;
      v28 = &v44[5 * v17 + 3 + 5 * v25] + 3;
      do
      {
        *(v28 - 4) = -8388609;
        *v28 = 2139095039;
        v28 += 20;
      }

      while (v27++ != 12);
    }

    v29 = a2 + 208 * v14;
    *v29 = v41;
    *(v29 + 172) = 0;
    *(v29 + 176) = 0;
    v30 = v24(v26, v29 + 172, 12, v29, *(v23 + 16), v29 + 72, v29 + 100, *(v29 + 171), v29 + 184, v29 + 196);
    if (v30 > v16)
    {
      v16 = v30;
    }

    if (!v30)
    {
      break;
    }

    *(v29 + 136) = v26;
    *(v29 + 144) = v30;
    if (*(*(v29 + 24) + 62) == 1)
    {
      *(v29 + 4) = 0;
    }

    if (*(*(v29 + 32) + 62) == 1)
    {
      *(v29 + 12) = 0;
    }

    v17 = 12 - v30;
    v15 = v30 + v25;
    if (++v14 == 4)
    {
      *&v31 = a6;
      *&v32 = a7;
      *&v33 = a8;
      v34.f32[0] = a9;
      return physx::Dy::setupSolverConstraintStep4(a2, a3, a4, v16, a5, v31, v32, v33, v34, v35, v36, v37);
    }
  }

  return 1;
}

uint64_t physx::Dy::setupSolverConstraintStep4(uint64_t a1, float *a2, uint64_t (***a3)(void, void), int a4, float a5, double a6, double a7, double a8, float32x4_t a9, double a10, double a11, float32x4_t a12)
{
  v12 = a9.f32[0];
  v13 = *&a8;
  v14 = *&a7;
  v17 = 0;
  v18 = 0.0;
  v307 = *MEMORY[0x1E69E9840];
  v294 = a1 + 380;
  memset(v306, 0, sizeof(v306));
  do
  {
    v302[v17 + 385] = v18;
    v19 = a1 + 208 * v17;
    v20 = *(v19 + 144);
    v21 = *(v19 + 136);
    if (v20)
    {
      v22 = (v21 + 78);
      for (i = *(v19 + 144); i; --i)
      {
        if ((*(v22 - 1) & 0x40) != 0)
        {
          v24 = *v22;
          if (v24 == 2048)
          {
            v25 = 1024;
            goto LABEL_9;
          }

          if (v24 == 2049)
          {
            v25 = 1025;
LABEL_9:
            *v22 = v25;
          }
        }

        v22 += 40;
      }
    }

    physx::Dy::preprocessRows(v306 + LODWORD(v18), v21, &v302[4 * LODWORD(v18) + 193], &v302[4 * LODWORD(v18) + 1], v20, *(v19 + 40) + 28, *(v19 + 48) + 28, a1 + 208 * v17, *(*(v19 + 56) + 32), *(*(v19 + 64) + 32), a7, a8, a9, a10, a11, a12, *(v19 + 168), HIBYTE(*(v19 + 168)), 0);
    LODWORD(v18) += *(v19 + 144);
    ++v17;
  }

  while (v17 != 4);
  v26 = (**a3)(a3, (368 * a4 + 656));
  if ((v26 + 1) > 1)
  {
    v36 = 0;
    *a2 = v18;
    v275 = *(*(a1 + 24) + 62);
    v274 = *(*(a1 + 32) + 62);
    v273 = *(*(a1 + 232) + 62);
    v272 = *(*(a1 + 240) + 62);
    v271 = *(*(a1 + 440) + 62);
    v270 = *(*(a1 + 448) + 62);
    v269 = *(*(a1 + 648) + 62);
    v268 = *(*(a1 + 656) + 62);
    do
    {
      v37 = *(a1 + v36 + 16);
      *(v37 + 30) = (368 * a4 + 640) >> 4;
      v38 = *(a1 + v36 + 160);
      *(v37 + 32) = v26;
      *(v37 + 40) = v38;
      v36 += 208;
    }

    while (v36 != 832);
    v40.i32[0] = *a1;
    v39.i32[0] = *(a1 + 4);
    v40.i32[1] = *(a1 + 208);
    v40.i32[2] = *(a1 + 416);
    v40.i32[3] = *(a1 + 624);
    v42.i32[0] = *(a1 + 8);
    v41.i32[0] = *(a1 + 12);
    v42.i32[1] = *(a1 + 216);
    v42.i32[2] = *(a1 + 424);
    v42.i32[3] = *(a1 + 632);
    v43.i32[0] = *(*(a1 + 56) + 32);
    v43.i32[1] = *(*(a1 + 264) + 32);
    v43.i32[2] = *(*(a1 + 472) + 32);
    v43.i32[3] = *(*(a1 + 680) + 32);
    v44.i32[0] = *(*(a1 + 64) + 32);
    v44.i32[1] = *(*(a1 + 272) + 32);
    v44.i32[2] = *(*(a1 + 480) + 32);
    v44.i32[3] = *(*(a1 + 688) + 32);
    v39.i32[1] = *(a1 + 212);
    v39.i32[2] = *(a1 + 420);
    v39.i32[3] = *(a1 + 628);
    v41.i32[1] = *(a1 + 220);
    v41.i32[2] = *(a1 + 428);
    v41.i32[3] = *(a1 + 636);
    v278 = v41;
    v279 = v39;
    v27.i64[0] = *(a1 + 172);
    LODWORD(v45) = *(a1 + 180);
    v28.i64[0] = *v294;
    v29.i64[0] = *(v294 + 208);
    v30.i64[0] = *(v294 + 416);
    DWORD1(v45) = *(a1 + 388);
    DWORD2(v45) = *(a1 + 596);
    HIDWORD(v45) = *(a1 + 804);
    v46.i32[0] = *(a1 + 148);
    v47.i32[0] = *(a1 + 152);
    v46.i32[1] = *(a1 + 356);
    v46.i32[2] = *(a1 + 564);
    v46.i32[3] = *(a1 + 772);
    v47.i32[1] = *(a1 + 360);
    v47.i32[2] = *(a1 + 568);
    v48 = v47.f32[0] != 3.4028e38 || v46.f32[0] != 3.4028e38;
    v47.i32[3] = *(a1 + 776);
    *(v26 + 12) = v48;
    v49 = *(a1 + 356) != 3.4028e38 || *(a1 + 360) != 3.4028e38;
    v50 = vzip1q_s32(v27, v29);
    v51 = vzip1q_s32(v28, v30);
    *(v26 + 13) = v49;
    v52 = *(a1 + 564) != 3.4028e38 || *(a1 + 568) != 3.4028e38;
    v53 = v26 + 640;
    v277 = vmulq_f32(v40, v43);
    v276 = vmulq_f32(v42, v44);
    v54 = vzip1q_s32(v50, v51);
    v55 = vzip2q_s32(v50, v51);
    *(v26 + 14) = v52;
    v56 = *(a1 + 772) != 3.4028e38 || *(a1 + 776) != 3.4028e38;
    *(v26 + 15) = v56;
    *(v26 + 48) = v277;
    *(v26 + 64) = v276;
    *(v26 + 80) = v279;
    *(v26 + 96) = v278;
    *(v26 + 112) = v54;
    *(v26 + 128) = v55;
    *(v26 + 144) = v45;
    *(v26 + 4) = a4;
    *v26 = 9;
    *(v26 + 16) = vmulq_n_f32(v46, *&a6);
    *(v26 + 32) = vmulq_n_f32(v47, *&a6);
    *(v26 + 8) = *(a1 + 144);
    *(v26 + 9) = *(a1 + 352);
    *(v26 + 10) = *(a1 + 560);
    *(v26 + 11) = *(a1 + 768);
    v57 = *(a1 + 184);
    v58 = *(v294 + 12);
    v59 = *(v294 + 220);
    v60 = *(v294 + 428);
    v61 = *(a1 + 196);
    v62 = *(v294 + 24);
    v63 = *(v294 + 232);
    v64 = *(v294 + 440);
    v65 = vzip1q_s32(v57, v59);
    v66 = vzip2q_s32(v57, v59);
    v67 = vzip1q_s32(v58, v60);
    v68 = vzip1q_s32(v65, v67);
    v69 = vzip2q_s32(v65, v67);
    v70 = vzip1q_s32(v66, vzip2q_s32(v58, v60));
    v71 = vzip1q_s32(v61, v63);
    v72 = vzip1q_s32(v62, v64);
    v73 = vzip1q_s32(v71, v72);
    v74 = vzip2q_s32(v71, v72);
    v75 = vzip1q_s32(vzip2q_s32(v61, v63), vzip2q_s32(v62, v64));
    v76 = *(*(a1 + 40) + 16);
    v77 = *(*(a1 + 48) + 16);
    v78 = *(*(a1 + 248) + 16);
    v79 = *(*(a1 + 256) + 16);
    v80 = *(*(a1 + 456) + 16);
    v81 = *(*(a1 + 464) + 16);
    v82 = *(*(a1 + 664) + 16);
    v83 = *(*(a1 + 672) + 16);
    v84 = vzip1q_s32(v76, v80);
    v85 = vzip2q_s32(v76, v80);
    v86 = vzip1q_s32(v78, v82);
    v87 = vzip1q_s32(v84, v86);
    v88 = vzip2q_s32(v84, v86);
    v89 = vzip1q_s32(v85, vzip2q_s32(v78, v82));
    v90 = vzip1q_s32(v77, v81);
    v91 = vzip1q_s32(v79, v83);
    v92 = vzip1q_s32(v90, v91);
    v93 = vzip2q_s32(v90, v91);
    v94 = vzip1q_s32(vzip2q_s32(v77, v81), vzip2q_s32(v79, v83));
    v95 = *(a1 + 56);
    v96 = *(a1 + 64);
    v98 = *v95;
    v97 = v95[1];
    v100 = *v96;
    v99 = v96[1];
    v101 = *(a1 + 264);
    v102 = *(a1 + 272);
    v104 = *v101;
    v103 = v101[1];
    v106 = *v102;
    v105 = v102[1];
    v107 = *(a1 + 472);
    v108 = *(a1 + 480);
    v110 = *v107;
    v109 = v107[1];
    v111 = vsubq_f32(v68, v87);
    v112 = vsubq_f32(v69, v88);
    v114 = *v108;
    v113 = v108[1];
    v115 = *(a1 + 680);
    v116 = *(a1 + 688);
    v117 = vsubq_f32(v70, v89);
    v118 = vsubq_f32(v73, v92);
    v120 = *v115;
    v119 = v115[1];
    v121 = vsubq_f32(v74, v93);
    v123 = *v116;
    v122 = v116[1];
    *(v26 + 160) = v111;
    *(v26 + 176) = v112;
    *(v26 + 192) = v117;
    *(v26 + 208) = v118;
    *(v26 + 224) = v121;
    *(v26 + 240) = vsubq_f32(v75, v94);
    v124 = *(a1 + 144);
    v125 = *(a1 + 352);
    v126 = *(a1 + 560);
    v127 = *(a1 + 768);
    *(v26 + 256) = 0u;
    *(v26 + 272) = 0u;
    *(v26 + 288) = 0u;
    *(v26 + 304) = 0u;
    *(v26 + 320) = 0u;
    *(v26 + 336) = 0u;
    *(v26 + 352) = 0u;
    *(v26 + 368) = 0u;
    *(v26 + 384) = 0u;
    *(v26 + 400) = 0u;
    *(v26 + 416) = 0u;
    *(v26 + 432) = 0u;
    *(v26 + 448) = 0u;
    *(v26 + 464) = 0u;
    *(v26 + 480) = 0u;
    *(v26 + 496) = 0u;
    *(v26 + 512) = 0u;
    *(v26 + 528) = 0u;
    *(v26 + 544) = 0u;
    *(v26 + 560) = 0u;
    *(v26 + 576) = 0u;
    *(v26 + 592) = 0u;
    *(v26 + 608) = 0u;
    *(v26 + 624) = 0u;
    v128 = v303;
    v129 = v304;
    v130 = v305;
    if (!a4)
    {
LABEL_107:
      *v53 = 0;
      return 2;
    }

    v131 = 0;
    v132 = 0;
    v242 = 0;
    v243 = 0;
    v133 = vdup_lane_s32(*&a6, 0);
    v134 = vzip1q_s32(v98, v110);
    v135 = vzip1q_s32(v104, v120);
    v136 = vzip2q_s32(v104, v120);
    v137 = vzip1q_s32(v100, v114);
    v138 = vzip1q_s32(v106, v123);
    v139 = vzip2q_s32(v106, v123);
    v266 = vzip2q_s32(v137, v138);
    v267 = vzip2q_s32(v134, v135);
    v140 = vzip1q_s32(v97, v109);
    v141 = vzip1q_s32(v103, v119);
    v142 = vzip2q_s32(v103, v119);
    v143 = vzip1q_s32(v99, v113);
    v144 = vzip1q_s32(v105, v122);
    v264 = vzip2q_s32(v143, v144);
    v265 = vzip2q_s32(v140, v141);
    v250 = v26 + 304;
    v251 = v26 + 256;
    v248 = v26 + 400;
    v249 = v26 + 352;
    v246 = v26 + 496;
    v247 = v26 + 448;
    v244 = v26 + 592;
    v245 = v26 + 544;
    v262 = vzip1q_s32(vzip2q_s32(v98, v110), v136);
    v263 = vzip1q_s32(v134, v135);
    v260 = vzip1q_s32(vzip2q_s32(v100, v114), v139);
    v261 = vzip1q_s32(v137, v138);
    v259 = v124 - 1;
    v258 = v303 + v125 - 1;
    v257 = vzip1q_s32(v140, v141);
    v256 = v304 + v126 - 1;
    v255 = vzip1q_s32(vzip2q_s32(v97, v109), v142);
    v254 = v305 + v127 - 1;
    v252 = vzip1q_s32(vzip2q_s32(v99, v113), vzip2q_s32(v105, v122));
    v253 = vzip1q_s32(v143, v144);
    while (1)
    {
      v145 = *(v306 + v131);
      if (v131 == v259)
      {
        v146 = v131;
      }

      else
      {
        v146 = v131 + 1;
      }

      if (v128 == v258)
      {
        v147 = v128;
      }

      else
      {
        v147 = v128 + 1;
      }

      if (v129 == v256)
      {
        v148 = v129;
      }

      else
      {
        v148 = v129 + 1;
      }

      if (v130 == v254)
      {
        v149 = v130;
      }

      else
      {
        v149 = v130 + 1;
      }

      __asm { FMOV            V0.4S, #1.0 }

      if ((*(v145 + 76) & 0x20) != 0 && *(a1 + 170) == 1)
      {
        __asm { FMOV            V0.2S, #1.0 }

        _Q0 = vorrq_s8(vmin_f32(v133, _D0).u32[0], xmmword_1E305B4C0);
      }

      v156 = *(v306 + v128);
      if ((*(v156 + 76) & 0x20) != 0 && *(a1 + 378) == 1)
      {
        __asm { FMOV            V1.2S, #1.0 }

        _Q0.i32[1] = vmin_f32(v133, _D1).i32[1];
      }

      v158 = *(v306 + v129);
      if ((*(v158 + 76) & 0x20) != 0 && *(a1 + 586) == 1)
      {
        __asm { FMOV            V1.2S, #1.0 }

        _Q0.i32[2] = vmin_f32(v133, _D1).u32[0];
      }

      v161 = *(v306 + v130);
      v162.i16[0] = *(v145 + 76);
      v162.i16[1] = *(v156 + 76);
      v162.i16[2] = *(v158 + 76);
      v162.i16[3] = *(v161 + 76);
      v163 = vand_s8(v162, 0x40004000400040);
      v284 = v146;
      v283 = v147;
      v282 = v148;
      v281 = v149;
      if ((v162.i8[6] & 0x20) != 0 && *(a1 + 794) == 1)
      {
        __asm { FMOV            V1.2S, #1.0 }

        _Q0.i32[3] = vmin_f32(v133, _D1).i32[1];
      }

      v165 = *&v302[4 * v131 + 193];
      v166 = *&v302[4 * v128 + 193];
      v167 = *&v302[4 * v129 + 193];
      v168 = *&v302[4 * v130 + 193];
      v169 = *&v302[4 * v131 + 1];
      v170 = *&v302[4 * v128 + 1];
      v171 = *(v145 + 16);
      v172 = *(v158 + 16);
      v173 = vzip1q_s32(*v145, *v158);
      v174 = *(v156 + 16);
      v175 = *(v161 + 16);
      v176 = vzip1q_s32(*v156, *v161);
      v177 = vzip1q_s32(v173, v176);
      v178 = vzip2q_s32(v173, v176);
      v179 = vzip1q_s32(vzip2q_s32(*v145, *v158), vzip2q_s32(*v156, *v161));
      v180 = vzip1q_s32(v171, v172);
      v181 = vzip2q_s32(v171, v172);
      v182 = vzip1q_s32(v174, v175);
      v183 = vzip1q_s32(v180, v182);
      v184 = vzip2q_s32(v180, v182);
      v185 = vzip1q_s32(v181, vzip2q_s32(v174, v175));
      v186 = *(v145 + 48);
      v187 = *(v156 + 48);
      v188 = *(v158 + 48);
      v189 = *(v161 + 48);
      v190 = vzip1q_s32(v186, v188);
      v191 = vzip1q_s32(v187, v189);
      v192 = vzip1q_s32(v190, v191);
      v193 = vzip2q_s32(v190, v191);
      v194 = vzip1q_s32(vzip2q_s32(v186, v188), vzip2q_s32(v187, v189));
      v195 = *&v302[4 * v129 + 1];
      v187.i64[0] = vuzp2q_s32(vuzp2q_s32(v186, v187), v186).u64[0];
      v196 = *&v302[4 * v130 + 1];
      v197 = vmovl_s16(vtst_s16(v163, v163));
      v187.i64[1] = __PAIR64__(v189.u32[3], v188.u32[3]);
      v188.i32[0] = *(v145 + 44);
      v188.i32[1] = *(v156 + 44);
      v188.i32[2] = *(v158 + 44);
      v188.i32[3] = *(v161 + 44);
      v198 = vzip1q_s32(v165, v167);
      v199 = vzip2q_s32(v165, v167);
      v200 = vzip1q_s32(v166, v168);
      v201 = vzip2q_s32(v166, v168);
      v202 = vzip1q_s32(v198, v200);
      v203 = vzip2q_s32(v198, v200);
      v204 = vzip1q_s32(v199, v201);
      v160.i32[3] = *(a1 + 768);
      v160.i32[2] = *(a1 + 560);
      v160.i32[1] = *(a1 + 352);
      v160.i32[0] = *(a1 + 144);
      v205 = vcgtq_u32(v160, vdupq_n_s32(v132));
      *(v53 + 352) = 0;
      *(v53 + 360) = 0;
      *v53 = vandq_s8(v177, v205);
      *(v53 + 16) = vandq_s8(v178, v205);
      *(v53 + 32) = vandq_s8(v179, v205);
      v206 = vandq_s8(v197, v205);
      *(v53 + 128) = vandq_s8(v183, v206);
      *(v53 + 144) = vandq_s8(v184, v206);
      *(v53 + 160) = vandq_s8(v185, v206);
      __asm { FMOV            V27.4S, #1.0 }

      *(v53 + 336) = vandq_s8(v197, _Q27);
      *(v53 + 272) = vmulq_f32(_Q0, v188);
      *(v53 + 288) = vmulq_f32(_Q0, v187);
      *(v53 + 304) = 0;
      *(v53 + 312) = 0;
      v208 = *(v145 + 32);
      v209 = *(v156 + 32);
      v210 = *(v158 + 32);
      v211 = *(v161 + 32);
      v212 = vzip1q_s32(v208, v210);
      v213 = vzip2q_s32(v208, v210);
      v214 = vzip1q_s32(v209, v211);
      v215 = vzip2q_s32(v209, v211);
      v216 = vzip1q_s32(v212, v214);
      v217 = vzip2q_s32(v212, v214);
      v218 = vzip1q_s32(v213, v215);
      v219 = vzip1q_s32(v169, v195);
      v220 = vzip2q_s32(v169, v195);
      v221 = vzip1q_s32(v170, v196);
      v222 = vzip2q_s32(v170, v196);
      v223 = vzip1q_s32(v219, v221);
      v224 = vzip2q_s32(v219, v221);
      v225 = vzip1q_s32(v220, v222);
      *(v53 + 64) = vandq_s8(v216, v205);
      *(v53 + 80) = vandq_s8(v217, v205);
      *(v53 + 96) = vandq_s8(v218, v205);
      *(v53 + 192) = vandq_s8(v192, v206);
      *(v53 + 208) = vandq_s8(v193, v206);
      *(v53 + 224) = vandq_s8(v194, v206);
      v293 = vaddq_f32(vmlaq_f32(vmulq_f32(v279, vmlaq_f32(vmlaq_f32(vmulq_f32(v202, v202), v203, v203), v204, v204)), v277, vmlaq_f32(vmlaq_f32(vmulq_f32(v177, v177), v178, v178), v179, v179)), vmlaq_f32(vmulq_f32(v278, vmlaq_f32(vmlaq_f32(vmulq_f32(v223, v223), v224, v224), v225, v225)), v276, vmlaq_f32(vmlaq_f32(vmulq_f32(v216, v216), v217, v217), v218, v218)));
      v226 = (v53 + 352);
      v295 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v262, v179), v267, v178), v263, v177), vmlaq_f32(vmlaq_f32(vmulq_f32(v255, v185), v265, v184), v257, v183));
      v297 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v252, v225), v264, v224), v253, v223), vmlaq_f32(vmlaq_f32(vmulq_f32(v260, v218), v266, v217), v261, v216));
      v290 = vmulq_f32(v279, v202);
      v291 = vsubq_f32(v295, v297);
      v288 = vmulq_f32(v279, v204);
      v289 = vmulq_f32(v279, v203);
      v286 = vmulq_f32(v278, v224);
      v287 = vmulq_f32(v278, v223);
      v285 = vmulq_f32(v278, v225);
      v238 = vzip1_s32(*v295.f32, *v297.f32);
      v239 = vzip2_s32(*v295.f32, *v297.f32);
      v240 = vzip2q_s32(v295, v297).u64[0];
      v241 = vuzp2q_s32(vuzp2q_s32(v295, v297), v295).u64[0];
      v227 = *(v145 + 78);
      if (v132 < *(a1 + 144) && (*(a1 + 168) & 1) == 0)
      {
        if (v227 == 1024)
        {
          *v226 |= 8u;
          *(v251 + 16 * HIDWORD(v243)) = v290.i32[0];
          *(v250 + 16 * HIDWORD(v243)) = v289.i32[0];
          *(v249 + 16 * HIDWORD(v243)) = v288.i32[0];
          *(v248 + 16 * HIDWORD(v243)) = v287.i32[0];
          *(v247 + 16 * HIDWORD(v243)) = v286.i32[0];
          *(v246 + 16 * HIDWORD(v243)) = v285.i32[0];
          *(v245 + 16 * HIDWORD(v243)) = v299;
          *(v244 + 16 * HIDWORD(v243)) = *(v53 + 48);
          ++HIDWORD(v243);
        }

        else if ((v227 & 0x800) != 0)
        {
          *v226 |= 0x10u;
        }
      }

      v228 = *(v156 + 78);
      if (v132 < *(a1 + 352) && (*(a1 + 376) & 1) == 0)
      {
        if (v228 == 1024)
        {
          v229 = *(v53 + 356) | 8;
          *(v251 + 16 * v243 + 4) = v290.i32[1];
          *(v250 + 16 * v243 + 4) = v289.i32[1];
          *(v249 + 16 * v243 + 4) = v288.i32[1];
          *(v248 + 16 * v243 + 4) = v287.i32[1];
          *(v247 + 16 * v243 + 4) = v286.i32[1];
          *(v246 + 16 * v243 + 4) = v285.i32[1];
          *(v53 + 356) = v229;
          *(v245 + 16 * v243 + 4) = v300;
          *(v244 + 16 * v243 + 4) = *(v53 + 52);
          LODWORD(v243) = v243 + 1;
        }

        else if ((v228 & 0x800) != 0)
        {
          *(v53 + 356) |= 0x10u;
        }
      }

      v230 = *(v158 + 78);
      if (v132 < *(a1 + 560) && (*(a1 + 584) & 1) == 0)
      {
        if (v230 == 1024)
        {
          v231 = *(v53 + 360) | 8;
          *(v251 + 16 * HIDWORD(v242) + 8) = v290.i32[2];
          *(v250 + 16 * HIDWORD(v242) + 8) = v289.i32[2];
          *(v249 + 16 * HIDWORD(v242) + 8) = v288.i32[2];
          *(v248 + 16 * HIDWORD(v242) + 8) = v287.i32[2];
          *(v247 + 16 * HIDWORD(v242) + 8) = v286.i32[2];
          *(v246 + 16 * HIDWORD(v242) + 8) = v285.i32[2];
          *(v53 + 360) = v231;
          *(v245 + 16 * HIDWORD(v242) + 8) = v301;
          *(v244 + 16 * HIDWORD(v242) + 8) = *(v53 + 56);
          ++HIDWORD(v242);
        }

        else if ((v230 & 0x800) != 0)
        {
          *(v53 + 360) |= 0x10u;
        }
      }

      v232 = *(v161 + 78);
      if (v132 < *(a1 + 768) && (*(a1 + 792) & 1) == 0)
      {
        if (v232 == 1024)
        {
          v233 = *(v53 + 364) | 8;
          *(v251 + 16 * v242 + 12) = v290.i32[3];
          *(v250 + 16 * v242 + 12) = v289.i32[3];
          *(v249 + 16 * v242 + 12) = v288.i32[3];
          *(v248 + 16 * v242 + 12) = v287.i32[3];
          *(v247 + 16 * v242 + 12) = v286.i32[3];
          *(v246 + 16 * v242 + 12) = v285.i32[3];
          *(v53 + 364) = v233;
          *(v245 + 16 * v242 + 12) = v302[0];
          *(v244 + 16 * v242 + 12) = *(v53 + 60);
          LODWORD(v242) = v242 + 1;
        }

        else if ((v232 & 0x800) != 0)
        {
          *(v53 + 364) |= 0x10u;
        }
      }

      v234 = *(v145 + 76);
      if ((v234 & 0x10) != 0)
      {
        *v226 |= 2u;
      }

      v235 = *(v156 + 76);
      if ((v235 & 0x10) != 0)
      {
        *(v53 + 356) |= 2u;
      }

      v236 = *(v158 + 76);
      if ((v236 & 0x10) != 0)
      {
        *(v53 + 360) |= 2u;
      }

      v237 = *(v161 + 76);
      if ((v237 & 0x10) != 0)
      {
        *(v53 + 364) |= 2u;
        if ((v234 & 8) == 0)
        {
LABEL_88:
          if ((v235 & 8) == 0)
          {
            goto LABEL_89;
          }

          goto LABEL_100;
        }
      }

      else if ((v234 & 8) == 0)
      {
        goto LABEL_88;
      }

      *v226 |= 4u;
      if ((v235 & 8) == 0)
      {
LABEL_89:
        if ((v236 & 8) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_101;
      }

LABEL_100:
      *(v53 + 356) |= 4u;
      if ((v236 & 8) == 0)
      {
LABEL_90:
        if ((v237 & 8) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_102;
      }

LABEL_101:
      *(v53 + 360) |= 4u;
      if ((v237 & 8) == 0)
      {
LABEL_91:
        if ((v227 & 1) == 0)
        {
          goto LABEL_92;
        }

        goto LABEL_103;
      }

LABEL_102:
      *(v53 + 364) |= 4u;
      if ((v227 & 1) == 0)
      {
LABEL_92:
        if ((v228 & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_104;
      }

LABEL_103:
      *v226 |= 0x40u;
      if ((v228 & 1) == 0)
      {
LABEL_93:
        if (v230)
        {
          goto LABEL_105;
        }

        goto LABEL_94;
      }

LABEL_104:
      *(v53 + 356) |= 0x40u;
      if (v230)
      {
LABEL_105:
        *(v53 + 360) |= 0x40u;
        if ((v232 & 1) == 0)
        {
          goto LABEL_96;
        }

LABEL_95:
        *(v53 + 364) |= 0x40u;
        goto LABEL_96;
      }

LABEL_94:
      if (v232)
      {
        goto LABEL_95;
      }

LABEL_96:
      v53 += 368;
      ++v132;
      v131 = v284;
      v128 = v283;
      v129 = v282;
      v130 = v281;
      if (a4 == v132)
      {
        goto LABEL_107;
      }
    }
  }

  v31 = (a1 + 160);
  v32 = 4;
  do
  {
    v33 = *(v31 - 18);
    *(v33 + 30) = 0;
    v34 = *v31;
    v31 += 26;
    *(v33 + 32) = 0;
    *(v33 + 40) = v34;
    --v32;
  }

  while (v32);
  return 0;
}

float *physx::Dy::anonymous namespace::setConstants(float *result, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, char a17, float a18, float a19, char a20, char a21)
{
  if (a17)
  {
    *result = 0.0;
    *a2 = 0.0;
    *a4 = 0.0;
    *a5 = 0.0;
    *a6 = 0.0;
    v22 = 0.0;
    *a7 = 0.0;
LABEL_10:
    *a3 = v22;
    return result;
  }

  if ((*(a8 + 76) & 0x40) != 0)
  {
    v23 = 100.0;
  }

  else
  {
    v23 = a15 * 1000.0;
  }

  result = physx::Dy::setSolverConstantsStep(result, a2, a3, a4, a5, a6, a7, a8, a16, a9, a10, 1.0, a11, a12, v23, a13, a14);
  if (a20)
  {
    *a3 = *a3 - a18;
  }

  if (a21)
  {
    v22 = *a3 + a19;
    goto LABEL_10;
  }

  return result;
}

int32x4_t **physx::Dy::solveContact4_Block(int32x4_t **result, int32x2_t a2, float a3)
{
  v4 = *result;
  v3 = result[1];
  v6 = result[6];
  v5 = result[7];
  v8 = result[12];
  v7 = result[13];
  v10 = result[18];
  v9 = result[19];
  v11 = **result;
  v12 = (*result)[1];
  v13 = v3[1];
  v14 = v6[1];
  v15 = v5[1];
  v16 = v8[1];
  v17 = v7[1];
  v18 = v10[1];
  v19 = vzip1q_s32(v11, *v8);
  v20 = v9[1];
  v21 = vzip1q_s32(*v6, *v10);
  v22 = vzip1q_s32(v19, v21);
  v23 = vzip2q_s32(v19, v21);
  v24 = vzip1q_s32(vzip2q_s32(v11, *v8), vzip2q_s32(*v6, *v10));
  v25 = vzip1q_s32(*v3, *v7);
  v26 = vzip1q_s32(*v5, *v9);
  v27 = vzip1q_s32(v25, v26);
  v28 = vzip2q_s32(v25, v26);
  v29 = vzip1q_s32(vzip2q_s32(*v3, *v7), vzip2q_s32(*v5, *v9));
  v30 = vzip1q_s32(v12, v16);
  v31 = vzip2q_s32(v12, v16);
  v32 = vzip1q_s32(v14, v18);
  v33 = vzip1q_s32(v30, v32);
  v34 = vzip2q_s32(v30, v32);
  v35 = vzip1q_s32(v31, vzip2q_s32(v14, v18));
  v36 = vzip1q_s32(v13, v17);
  v37 = vzip2q_s32(v13, v17);
  v38 = vzip1q_s32(v15, v20);
  v39 = vzip1q_s32(v36, v38);
  v40 = vzip2q_s32(v36, v38);
  v41 = vzip1q_s32(v37, vzip2q_s32(v15, v20));
  v42 = (*result)[2];
  v43 = (*result)[3];
  v44 = v3[2];
  v45 = v3[3];
  v47 = v6[2];
  v46 = v6[3];
  v48 = v5[2];
  v49 = v5[3];
  v51 = v8[2];
  v50 = v8[3];
  v53 = v7[2];
  v52 = v7[3];
  v55 = v10[2];
  v54 = v10[3];
  v57 = v9[2];
  v56 = v9[3];
  v58 = result[4];
  v59 = *(result + 15);
  v60.i64[0] = 0x80000000800000;
  v60.i64[1] = 0x80000000800000;
  v202 = vnegq_f32(v60);
  if (v59)
  {
    v61 = vdupq_lane_s32(a2, 0);
    v62 = vzip1q_s32(v43, v50);
    v63 = vzip2q_s32(v43, v50);
    v64 = vzip1q_s32(v46, v54);
    v65 = vzip1q_s32(v63, vzip2q_s32(v46, v54));
    v66 = vzip1q_s32(v45, v52);
    v67 = vzip2q_s32(v45, v52);
    v68 = vzip1q_s32(v49, v56);
    v69 = vzip1q_s32(v67, vzip2q_s32(v49, v56));
    v70 = vzip1q_s32(v42, v51);
    v71 = vzip2q_s32(v42, v51);
    v72 = vzip1q_s32(v47, v55);
    v73 = vzip2q_s32(v47, v55);
    v74 = vzip1q_s32(v70, v72);
    v75 = vzip2q_s32(v70, v72);
    v76 = vzip1q_s32(v71, v73);
    v77 = vzip1q_s32(v44, v53);
    v78 = vzip2q_s32(v44, v53);
    v79 = vzip1q_s32(v48, v57);
    v80 = vzip1q_s32(v77, v79);
    v81 = vzip2q_s32(v77, v79);
    v82 = vzip1q_s32(v78, vzip2q_s32(v48, v57));
    v83 = v58 + 16 * v59;
    v183 = vaddq_f32(*(v58 + 64), *(v58 + 80));
    v184 = v61;
    v84 = v58 + 432;
    v85 = vsubq_f32(vzip1q_s32(v62, v64), vzip1q_s32(v66, v68));
    v86 = vsubq_f32(vzip2q_s32(v62, v64), vzip2q_s32(v66, v68));
    v87 = vsubq_f32(v65, v69);
    v88 = a3;
    v179 = v86;
    v180 = v85;
    v178 = v87;
    v197 = *(v58 + 64);
    v198 = v74;
    v195 = v75;
    v196 = *(v58 + 80);
    v193 = v76;
    v194 = v80;
    v191 = v82;
    v192 = v81;
    do
    {
      v89 = *(v58 + 1);
      v90 = *(v58 + 2);
      v91 = *(v58 + 3);
      if (v91)
      {
        v92 = (v58 + 16 * *(v58 + 1) + 160 * *(v58 + 1) + 272);
      }

      else
      {
        v92 = &v202;
      }

      if (*(v58 + 3))
      {
        v93 = 16 * v89;
      }

      else
      {
        v93 = 0;
      }

      v200 = *(v58 + 112);
      v201 = *(v58 + 96);
      v95 = *(v58 + 128);
      v94 = *(v58 + 144);
      v96 = *(v58 + 160);
      v185 = v96;
      v181 = v95;
      v182 = v94;
      if (*(v58 + 1))
      {
        v97 = 0;
        v189 = vmlaq_f32(vmlaq_f32(vmulq_f32(v85, v95), v94, v86), v96, v87);
        v98 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v22, v95), v94, v23), v96, v24), vmlaq_f32(vmlaq_f32(vmulq_f32(v27, v95), v94, v28), v96, v29));
        v187 = vnegq_f32(*(v58 + 176));
        v99 = (v58 + 416 + 16 * v89);
        v100 = 0uLL;
        _X26 = v84;
        v102 = 0uLL;
        do
        {
          __asm
          {
            PRFM            #0, [X26,#0x40]
            PRFM            #0, [X26,#0x80]
            PRFM            #0, [X26,#0xC0]
          }

          v110 = v99[-9];
          v111 = v99[-8];
          v113 = v99[-7];
          v112 = v99[-6];
          v114 = v99[-5];
          v115 = v99[-4];
          v116 = v76;
          v117 = v80;
          v118 = v58 + 416 + 16 * v97;
          v119 = vsubq_f32(vaddq_f32(v99[-1], vminq_f32(v187, vmulq_f32(*v99, vmaxq_f32(v184, vaddq_f32(v99[-3], vsubq_f32(vaddq_f32(v189, vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v198, v110), v111, v195), v113, v76), vmlaq_f32(vmlaq_f32(vmulq_f32(v80, v112), v114, v81), v115, v82))), vmulq_n_f32(v99[-1], v88))))))), vaddq_f32(v98, vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v33, v110), v34, v111), v35, v113), vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v112), v40, v114), v41, v115))));
          v120 = *(v118 - 144);
          if (v91)
          {
            v121 = v97;
          }

          else
          {
            v121 = 0;
          }

          v122 = vminq_f32(vaddq_f32(v120, vmaxq_f32(vmulq_f32(v99[-2], v119), vnegq_f32(v120))), v92[v121]);
          v123 = vsubq_f32(v122, v120);
          v124 = vmulq_f32(v201, v123);
          v33 = vmlaq_f32(v33, v124, v110);
          v34 = vmlaq_f32(v34, v124, v111);
          v35 = vmlaq_f32(v35, v124, v113);
          v80 = v117;
          v125 = vmulq_f32(v200, v123);
          v39 = vmlsq_f32(v39, v125, v112);
          v40 = vmlsq_f32(v40, v125, v114);
          v41 = vmlsq_f32(v41, v125, v115);
          v102 = vaddq_f32(v102, v123);
          v98 = vmlaq_f32(v98, v123, v183);
          v76 = v116;
          *(v118 - 144) = v122;
          v100 = vaddq_f32(v100, v122);
          v84 = _X26 + 192;
          ++v97;
          v99 += 10;
          _X26 += 192;
        }

        while (v89 != v97);
      }

      else
      {
        v102 = 0uLL;
        v100 = 0uLL;
      }

      v126 = (v58 + 16 * v89 + 160 * v89 + 272 + v93);
      v127 = vmulq_f32(v197, v102);
      v128 = vmulq_f32(v196, v102);
      v22 = vmlaq_f32(v22, v127, v181);
      v27 = vmlsq_f32(v27, v128, v181);
      v23 = vmlaq_f32(v23, v127, v182);
      v28 = vmlsq_f32(v28, v128, v182);
      v24 = vmlaq_f32(v24, v127, v185);
      v29 = vmlsq_f32(v29, v128, v185);
      if (v90)
      {
        v129 = 0;
        v190 = vmulq_f32(v100, *(v58 + 32));
        v188 = vmulq_f32(v100, *(v58 + 48));
        v186 = vnegq_f32(v188);
        v130 = (v58 + 16 * v90 + v93 + 176 * v89 + 464);
        v131 = 0uLL;
        v132 = v126;
        do
        {
          _X23 = v84 + v129;
          __asm
          {
            PRFM            #0, [X23,#0x40]
            PRFM            #0, [X23,#0x80]
            PRFM            #0, [X23,#0xC0]
            PRFM            #0, [X23,#0x100]
          }

          v138 = v130[-12];
          v139 = v130[-11];
          v141 = v130[-10];
          v140 = v130[-9];
          v142 = v130[-6];
          v143 = v130[-5];
          v144 = v130[-8];
          v145 = v130[-7];
          v146 = v130[-4];
          v148 = v130[-2];
          v147 = v130[-1];
          v88 = a3;
          v149 = vaddq_f32(v130[-3], vsubq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v180, v138), v139, v179), v141, v178), vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v198, v140), v144, v195), v145, v193), vmlaq_f32(vmlaq_f32(vmulq_f32(v194, v142), v143, v192), v146, v191))), vmulq_n_f32(v147, a3)));
          v150 = *v130;
          v130 += 13;
          v151 = vmlsq_f32(vmlsq_f32(*v132, v148, vsubq_f32(vmulq_f32(v150, v149), v147)), v148, vsubq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v22, v138), v139, v23), v141, v24), vmlaq_f32(vmlaq_f32(vmulq_f32(v33, v140), v34, v144), v35, v145)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v27, v138), v139, v28), v141, v29), vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v142), v40, v143), v41, v146))));
          v152 = vminq_f32(v188, vmaxq_f32(v186, v151));
          v153 = vsubq_f32(v152, *v132);
          v154 = vmulq_f32(v197, v153);
          v155 = vmulq_f32(v196, v153);
          v22 = vmlaq_f32(v22, v154, v138);
          v27 = vmlsq_f32(v27, v155, v138);
          v23 = vmlaq_f32(v23, v154, v139);
          v28 = vmlsq_f32(v28, v155, v139);
          v24 = vmlaq_f32(v24, v154, v141);
          v29 = vmlsq_f32(v29, v155, v141);
          v156 = vmulq_f32(v201, v153);
          v33 = vmlaq_f32(v33, v156, v140);
          v34 = vmlaq_f32(v34, v156, v144);
          v35 = vmlaq_f32(v35, v156, v145);
          v157 = vmulq_f32(v200, v153);
          v39 = vmlsq_f32(v39, v157, v142);
          v40 = vmlsq_f32(v40, v157, v143);
          v41 = vmlsq_f32(v41, v157, v146);
          v131 = vorrq_s8(v131, vcgtq_f32(vabsq_f32(v151), v190));
          *v132++ = v152;
          v129 += 256;
        }

        while (v90 << 8 != v129);
        *(v58 + 224) = v131;
        v84 += v129;
        v76 = v193;
        v80 = v194;
        v82 = v191;
        v81 = v192;
      }

      v58 = &v126[13 * v90 + v90];
      v86 = v179;
      v85 = v180;
      v87 = v178;
    }

    while (v58 < v83);
  }

  v158 = vzip1q_s32(v22, v24);
  v159 = vzip2q_s32(v22, v24);
  v160 = vzip1q_s32(v23, v23);
  v161 = vzip2q_s32(v23, v23);
  v162 = vzip1q_s32(v158, v160);
  v163 = vzip2q_s32(v158, v160);
  v164 = vzip1q_s32(v159, v161);
  v165 = vzip2q_s32(v159, v161);
  v166 = vzip1q_s32(v27, v29);
  v167 = vzip1q_s32(v28, v28);
  v168 = vzip1q_s32(v33, v35);
  v169 = vzip2q_s32(v33, v35);
  v170 = vzip1q_s32(v34, v34);
  *v4 = v162;
  v4[1] = vzip1q_s32(v168, v170);
  *v6 = v163;
  v6[1] = vzip2q_s32(v168, v170);
  v171 = vzip2q_s32(v34, v34);
  *v8 = v164;
  v8[1] = vzip1q_s32(v169, v171);
  *v10 = v165;
  v10[1] = vzip2q_s32(v169, v171);
  v172 = vzip1q_s32(v39, v41);
  v173 = vzip1q_s32(v40, v40);
  if (*(result + 6))
  {
    *v3 = vzip1q_s32(v166, v167);
    v3[1] = vzip1q_s32(v172, v173);
  }

  if (*(result + 18))
  {
    *v5 = vzip2q_s32(v166, v167);
    v5[1] = vzip2q_s32(v172, v173);
  }

  v174 = vzip2q_s32(v27, v29);
  v175 = vzip2q_s32(v28, v28);
  v176 = vzip2q_s32(v39, v41);
  v177 = vzip2q_s32(v40, v40);
  if (*(result + 30))
  {
    *v7 = vzip1q_s32(v174, v175);
    v7[1] = vzip1q_s32(v176, v177);
  }

  if (*(result + 42))
  {
    *v9 = vzip2q_s32(v174, v175);
    v9[1] = vzip2q_s32(v176, v177);
  }

  return result;
}

unint64_t physx::Dy::writeBackContact4(unint64_t result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2 + 48 * *result;
  if (*(v2 + 30))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = v3 + 16 * *(v2 + 30);
    v6 = *(v2 + 184);
    v7 = *(v2 + 136);
    v8 = *(v2 + 88);
    do
    {
      v9 = v3 + 272;
      v10 = *(v3 + 1);
      result = *(v3 + 2);
      v11 = 16 * v10;
      if ((*(v3 + 3) & 1) == 0)
      {
        v11 = 0;
      }

      if (*(v3 + 1))
      {
        v12 = 0;
        do
        {
          v13 = *(v9 + 16 * v12);
          if (v4 && v12 < *(v3 + 8))
          {
            *v4++ = v13;
          }

          if (v8 && v12 < *(v3 + 9))
          {
            *v8++ = DWORD1(v13);
          }

          if (v7 && v12 < *(v3 + 10))
          {
            *v7++ = DWORD2(v13);
          }

          if (v6 && v12 < *(v3 + 11))
          {
            *v6++ = HIDWORD(v13);
          }

          ++v12;
        }

        while (v10 != v12);
      }

      if (result)
      {
        v14 = 0;
        v15 = *(v3 + 224);
        do
        {
          if (*(v3 + v14 + 8))
          {
            if (*(&v15 + v14))
            {
              **(v3 + 8 * v14 + 240) = 1;
            }
          }

          ++v14;
        }

        while (v14 != 4);
      }

      v3 = v9 + 16 * v10 + 160 * v10 + v11 + 16 * result + 208 * result;
    }

    while (v3 < v5);
  }

  return result;
}

int32x4_t physx::Dy::solve1DStep4(int32x4_t **a1, uint64_t a2, int32x4_t result)
{
  v3 = a1[4];
  if (v3)
  {
    v5 = *a1;
    v4 = a1[1];
    v7 = a1[6];
    v6 = a1[7];
    v9 = a1[12];
    v8 = a1[13];
    v10 = **a1;
    v11 = (*a1)[1];
    v12 = v9[1];
    v13 = vzip1q_s32(v10, *v9);
    v15 = a1[18];
    v14 = a1[19];
    v16 = v7[1];
    v17 = v15[1];
    v18 = vzip1q_s32(*v7, *v15);
    v19 = v4[1];
    v20 = v6[1];
    v21 = v8[1];
    v22 = vzip1q_s32(v13, v18);
    v23 = vzip2q_s32(v13, v18);
    v24 = vzip1q_s32(vzip2q_s32(v10, *v9), vzip2q_s32(*v7, *v15));
    v25 = vzip1q_s32(*v4, *v8);
    v26 = v14[1];
    v27 = vzip1q_s32(*v6, *v14);
    v28 = vzip1q_s32(v25, v27);
    v29 = vzip2q_s32(v25, v27);
    v30 = vzip1q_s32(vzip2q_s32(*v4, *v8), vzip2q_s32(*v6, *v14));
    v31 = vzip1q_s32(v11, v12);
    v32 = vzip2q_s32(v11, v12);
    v33 = vzip1q_s32(v16, v17);
    v34 = vzip2q_s32(v16, v17);
    v35 = vzip1q_s32(v31, v33);
    v36 = vzip2q_s32(v31, v33);
    v37 = vzip1q_s32(v32, v34);
    v38 = vzip1q_s32(v19, v21);
    v39 = vzip1q_s32(v20, v26);
    v40 = vzip1q_s32(v38, v39);
    v41 = vzip2q_s32(v38, v39);
    v42 = vzip1q_s32(vzip2q_s32(v19, v21), vzip2q_s32(v20, v26));
    if (v3->i32[1])
    {
      v43 = 0;
      v45 = v5[2];
      v44 = v5[3];
      v47 = v9[2];
      v46 = v9[3];
      v48 = vzip1q_s32(v44, v46);
      v49 = vzip2q_s32(v44, v46);
      v329 = v28;
      v51 = v7[2];
      v50 = v7[3];
      v331 = v29;
      v325 = v41;
      v53 = v15[2];
      v52 = v15[3];
      v319 = *result.i8;
      v321 = v37;
      v54 = vzip1q_s32(v50, v52);
      v313 = vzip1q_s32(v48, v54);
      v315 = vzip2q_s32(v48, v54);
      v317 = vzip1q_s32(v49, vzip2q_s32(v50, v52));
      v56 = v4[2];
      v55 = v4[3];
      v58 = v8[2];
      v57 = v8[3];
      v323 = v40;
      v59 = vzip1q_s32(v55, v57);
      v60 = vzip2q_s32(v55, v57);
      v62 = v6[2];
      v61 = v6[3];
      v64 = v14[2];
      v63 = v14[3];
      v65 = vzip1q_s32(v61, v63);
      v66 = vzip1q_s32(v59, v65);
      v309 = vzip2q_s32(v59, v65);
      v311 = vzip1q_s32(v60, vzip2q_s32(v61, v63));
      v67 = vzip1q_s32(v45, v47);
      v68 = vzip2q_s32(v45, v47);
      v69 = vzip1q_s32(v51, v53);
      v301 = vzip1q_s32(v67, v69);
      v70 = vzip2q_s32(v67, v69);
      v71 = vzip1q_s32(v68, vzip2q_s32(v51, v53));
      v72 = vzip1q_s32(v56, v58);
      v73 = vzip2q_s32(v56, v58);
      v74 = vzip1q_s32(v62, v64);
      v75 = vzip1q_s32(v72, v74);
      v76 = vzip2q_s32(v72, v74);
      v77 = *(a1 + 6);
      v78 = a2 + (*(a1 + 5) << 6);
      v79 = vzip1q_s32(v73, vzip2q_s32(v62, v64));
      v80 = *(a1 + 30);
      v81 = a2 + (*(a1 + 29) << 6);
      v82 = vzip1q_s32(*v78, *v81);
      v83 = vzip2q_s32(*v78, *v81);
      v84 = *(a1 + 18);
      v85 = a2 + (*(a1 + 17) << 6);
      v86 = *(a1 + 42);
      v87 = a2 + (*(a1 + 41) << 6);
      v88 = vzip1q_s32(*v85, *v87);
      v89 = vzip2q_s32(*v85, *v87);
      v90 = vzip1q_s32(v82, v88);
      v91 = vzip2q_s32(v82, v88);
      v92 = vzip1q_s32(v83, v89);
      v93 = vzip2q_s32(v83, v89);
      v94 = a2 + (v77 << 6);
      v95 = a2 + (v80 << 6);
      v96 = vzip1q_s32(*v94, *v95);
      v97 = vzip2q_s32(*v94, *v95);
      v98 = a2 + (v84 << 6);
      v99 = a2 + (v86 << 6);
      v100 = vzip1q_s32(*v98, *v99);
      v101 = vzip2q_s32(*v98, *v99);
      v102 = vzip1q_s32(v96, v100);
      v327 = v30;
      v103 = vzip2q_s32(v96, v100);
      v104 = vzip1q_s32(v97, v101);
      v105 = vzip2q_s32(v97, v101);
      v101.i64[0] = 0xBF000000BF000000;
      v101.i64[1] = 0xBF000000BF000000;
      v96.i64[0] = 0xBF000000BF000000;
      v96.i64[1] = 0xBF000000BF000000;
      v106 = vmlaq_f32(v96, v93, v93);
      v108 = v3[10];
      v107 = v3[11];
      v109 = v3[12];
      v110 = v3[13];
      v111 = vmulq_f32(v106, v109);
      v112 = vmlaq_f32(vmulq_f32(v108, v106), v93, vmlsq_f32(vmulq_f32(v91, v109), v107, v92));
      v113 = *(v78 + 28);
      v114 = vmlaq_f32(vmulq_f32(v107, v106), v93, vmlsq_f32(vmulq_f32(v92, v108), v109, v90));
      v115 = *(v78 + 40);
      v116 = vmlaq_f32(vmlaq_f32(vmulq_f32(v90, v108), v107, v91), v109, v92);
      v117 = vmlaq_f32(v112, v116, v90);
      v118 = vmlaq_f32(v114, v116, v91);
      v119 = vmlaq_f32(vmlaq_f32(v111, v93, vmlsq_f32(vmulq_f32(v90, v107), v108, v91)), v116, v92);
      v120 = vmlaq_f32(v101, v105, v105);
      v122 = v3[14];
      v121 = v3[15];
      v123 = vmlaq_f32(vmulq_f32(v120, v110), v105, vmlsq_f32(vmulq_f32(v103, v121), v122, v104));
      v124 = vmlaq_f32(vmulq_f32(v120, v122), v105, vmlsq_f32(vmulq_f32(v104, v110), v121, v102));
      v125 = vmlaq_f32(vmulq_f32(v120, v121), v105, vmlsq_f32(vmulq_f32(v102, v122), v110, v103));
      v126 = *(v85 + 28);
      v127 = vmlaq_f32(vmlaq_f32(vmulq_f32(v102, v110), v122, v103), v121, v104);
      v128 = vmlaq_f32(v123, v127, v102);
      v129 = *(v85 + 40);
      v130 = vmlaq_f32(v124, v127, v103);
      v131 = *(v81 + 28);
      v132 = vmlaq_f32(v125, v127, v104);
      v133 = *(v87 + 28);
      v134 = vzip1q_s32(v113, v131);
      v135 = vzip2q_s32(v113, v131);
      v136 = vzip1q_s32(v126, v133);
      v137 = vzip2q_s32(v126, v133);
      v294 = vzip2q_s32(v134, v136);
      v295 = vzip1q_s32(v134, v136);
      v138 = *(v81 + 40);
      v293 = vzip1q_s32(v135, v137);
      v139 = *(v87 + 40);
      v140 = vzip1q_s32(v115, v138);
      v141 = vzip1q_s32(v129, v139);
      v291 = vzip2q_s32(v140, v141);
      v292 = vzip1q_s32(v140, v141);
      v142 = vzip2q_s32(v115, v138);
      v115.i32[0] = vdupq_laneq_s32(v115, 3).u32[0];
      v115.i32[1] = v138.i32[3];
      v138.i32[0] = vdupq_laneq_s32(v129, 3).u32[0];
      v138.i32[1] = v139.i32[3];
      v115.i32[2] = *(v78 + 56);
      v115.i32[3] = *(v81 + 56);
      v138.i32[2] = *(v85 + 56);
      v138.i32[3] = *(v87 + 56);
      v289 = vzip1q_s32(v115, v138);
      v290 = vzip1q_s32(v142, vzip2q_s32(v129, v139));
      v288 = vzip2q_s32(v115, v138);
      v143 = *(v94 + 28);
      v144 = *(v95 + 28);
      v145 = vzip1q_s32(v143, v144);
      v146 = vzip2q_s32(v143, v144);
      v147 = *(v98 + 28);
      v148 = *(v99 + 28);
      v149 = vzip1q_s32(v147, v148);
      v286 = vzip2q_s32(v145, v149);
      v287 = vzip1q_s32(v145, v149);
      v285 = vzip1q_s32(v146, vzip2q_s32(v147, v148));
      v150 = *(v94 + 40);
      v151 = *(v95 + 40);
      v152 = vzip1q_s32(v150, v151);
      v153 = vzip2q_s32(v150, v151);
      v150.i32[0] = vdupq_laneq_s32(v150, 3).u32[0];
      v150.i32[1] = v151.i32[3];
      v154 = *(v98 + 40);
      v155 = *(v99 + 40);
      v156 = vzip1q_s32(v154, v155);
      v283 = vzip2q_s32(v152, v156);
      v284 = vzip1q_s32(v152, v156);
      v157 = vzip2q_s32(v154, v155);
      v154.i32[0] = vdupq_laneq_s32(v154, 3).u32[0];
      v154.i32[1] = v155.i32[3];
      v150.i32[2] = *(v94 + 56);
      v150.i32[3] = *(v95 + 56);
      v154.i32[2] = *(v98 + 56);
      v154.i32[3] = *(v99 + 56);
      v281 = vzip1q_s32(v150, v154);
      v282 = vzip1q_s32(v153, v157);
      v280 = vzip2q_s32(v150, v154);
      v158 = vaddq_f32(v117, v117);
      v278 = vsubq_f32(vaddq_f32(v313, v158), v108);
      v159 = vaddq_f32(v118, v118);
      v276 = vsubq_f32(vaddq_f32(v315, v159), v107);
      v160 = vaddq_f32(v119, v119);
      v274 = vsubq_f32(vaddq_f32(v317, v160), v109);
      v161 = vaddq_f32(v128, v128);
      v272 = vsubq_f32(vaddq_f32(v66, v161), v110);
      v37 = v321;
      v162 = vaddq_f32(v130, v130);
      v271 = vsubq_f32(vaddq_f32(v309, v162), v122);
      v163 = vaddq_f32(v132, v132);
      v269 = vsubq_f32(vaddq_f32(v311, v163), v121);
      v268 = vaddq_f32(v3[37], vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v71, v3[22]), v70, v3[19]), v301, v3[16]), vmlaq_f32(vmlaq_f32(vmulq_f32(v79, v3[31]), v76, v3[28]), v75, v3[25])));
      v41 = v325;
      v267 = vaddq_f32(v3[38], vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v71, v3[23]), v70, v3[20]), v301, v3[17]), vmlaq_f32(vmlaq_f32(vmulq_f32(v79, v3[32]), v76, v3[29]), v75, v3[26])));
      v28 = v329;
      v299 = v71;
      v300 = v70;
      v30 = v327;
      v296 = v79;
      v297 = v76;
      v29 = v331;
      v298 = v75;
      v40 = v323;
      v150.i32[0] = *(v78 + 60);
      v150.i32[1] = *(v85 + 60);
      v150.i32[2] = *(v81 + 60);
      v150.i32[3] = *(v87 + 60);
      v265 = v150;
      v266 = vaddq_f32(v3[39], vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v71, v3[24]), v70, v3[21]), v301, v3[18]), vmlaq_f32(vmlaq_f32(vmulq_f32(v79, v3[33]), v76, v3[30]), v75, v3[27])));
      v150.i32[0] = *(v94 + 60);
      v150.i32[1] = *(v98 + 60);
      v150.i32[2] = *(v95 + 60);
      v150.i32[3] = *(v99 + 60);
      v264 = v150;
      _X0 = v3 + 40;
      v165 = vdupq_lane_s32(v319, 0);
      v166 = v3[6];
      v167 = v3[3];
      v320 = v3[4];
      v275 = v160;
      v262 = vnegq_f32(v160);
      v263 = v165;
      v279 = v158;
      v277 = v159;
      v260 = vnegq_f32(v159);
      v261 = vnegq_f32(v158);
      v270 = v163;
      v273 = v161;
      v258 = vnegq_f32(v161);
      v259 = vnegq_f32(v163);
      v256 = v167;
      v257 = vnegq_f32(v162);
      v255 = v3[5];
      do
      {
        v308 = v24;
        v310 = v22;
        v312 = v23;
        v314 = v35;
        v322 = v37;
        v324 = v40;
        v316 = v36;
        v318 = v42;
        v326 = v41;
        v328 = v30;
        v330 = v28;
        v332 = v29;
        __asm { PRFM            #0, [X0,#0x170] }

        v306 = _X0[2];
        v173 = _X0[1];
        v174 = vaddq_f32(_X0[8], vmlaq_f32(vmulq_f32(v277, v306), v173, v262));
        v175 = vaddq_f32(_X0[9], vmlaq_f32(vmulq_f32(v275, *_X0), v306, v261));
        v176 = vaddq_f32(_X0[10], vmlaq_f32(vmulq_f32(v279, v173), *_X0, v260));
        v304 = _X0[6];
        v305 = *_X0;
        v302 = _X0[4];
        v303 = _X0[5];
        v177 = vaddq_f32(_X0[12], vmlaq_f32(vmulq_f32(v162, v304), v303, v259));
        v178 = vaddq_f32(_X0[13], vmlaq_f32(vmulq_f32(v270, v302), v304, v258));
        v179 = vaddq_f32(_X0[14], vmlaq_f32(vmulq_f32(v273, v303), v302, v257));
        v180.i64[0] = 0x1000000010;
        v180.i64[1] = 0x1000000010;
        v307 = _X0[22];
        __asm { FMOV            V26.4S, #1.0 }

        v182 = vbicq_s8(_Q26, vceqzq_s32(vandq_s8(v307, v180)));
        v183 = vmlaq_f32(vmlaq_f32(vmulq_f32(v295, v174), v175, v294), v176, v293);
        v184 = vmlaq_f32(vmlaq_f32(vmulq_f32(v292, v174), v175, v291), v176, v290);
        v185 = vmlaq_f32(vmlaq_f32(vmulq_f32(v289, v174), v175, v288), v176, v265);
        v186 = vmlaq_f32(vmlaq_f32(vmulq_f32(v287, v177), v178, v286), v179, v285);
        v187 = vmlaq_f32(vmlaq_f32(vmulq_f32(v284, v177), v178, v283), v179, v282);
        v188 = vmlaq_f32(vmlaq_f32(vmulq_f32(v281, v177), v178, v280), v179, v264);
        v190 = v3[30];
        v189 = v3[31];
        v192 = v3[28];
        v191 = v3[29];
        v193 = v167;
        v195 = v3[24];
        v194 = v3[25];
        v196 = v3[22];
        v197 = v3[23];
        v199 = v3[18];
        v198 = v3[19];
        v200 = v3[16];
        v201 = v3[17];
        v202 = vmulq_f32(v3[34], vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v188, v189), v187, v192), v186, v194), v185, v196), v184, v198), v183, v200));
        v204 = v3[32];
        v203 = v3[33];
        v205 = v3[26];
        v206 = v3[27];
        v207 = v3[20];
        v208 = v3[21];
        v209 = vmulq_f32(v3[35], vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v188, v204), v187, v191), v186, v205), v185, v197), v184, v207), v183, v201));
        v210 = vmulq_f32(v3[36], vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v188, v203), v187, v190), v186, v206), v185, v195), v184, v208), v183, v199));
        v211 = vmlsq_f32(v183, v182, vmlaq_f32(vmlaq_f32(vmulq_f32(v199, v210), v209, v201), v202, v200));
        v212 = vmlsq_f32(v184, v182, vmlaq_f32(vmlaq_f32(vmulq_f32(v208, v210), v209, v207), v202, v198));
        v213 = vmlsq_f32(v185, v182, vmlaq_f32(vmlaq_f32(vmulq_f32(v195, v210), v209, v197), v202, v196));
        v214 = vmlsq_f32(v186, v182, vmlaq_f32(vmlaq_f32(vmulq_f32(v206, v210), v209, v205), v202, v194));
        v215 = vmlsq_f32(v187, v182, vmlaq_f32(vmlaq_f32(vmulq_f32(v190, v210), v209, v191), v202, v192));
        v216 = vmlsq_f32(v188, v182, vmlaq_f32(vmlaq_f32(vmulq_f32(v203, v210), v209, v204), v202, v189));
        v217 = vsubq_f32(_X0[3], vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v266, v210), v209, v267), v202, v268), v182));
        v218 = vmlaq_f32(vmulq_f32(v299, v213), v300, v212);
        v219 = vmlaq_f32(vmulq_f32(v296, v216), v297, v215);
        v220 = vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v274, v306), v276, v173), v278, *_X0), vmlaq_f32(vmlaq_f32(vmulq_f32(v269, v304), v271, v303), v272, v302)), v217);
        v221 = vaddq_f32(vmlaq_f32(vmulq_f32(v255, vmlaq_f32(vmlaq_f32(vmulq_f32(v213, v213), v212, v212), v211, v211)), vmlaq_f32(vmlaq_f32(vmulq_f32(v306, v306), v173, v173), v305, v305), v193), vmlaq_f32(vmulq_f32(v166, vmlaq_f32(vmlaq_f32(vmulq_f32(v216, v216), v215, v215), v214, v214)), vmlaq_f32(vmlaq_f32(vmulq_f32(v304, v304), v303, v303), v302, v302), v320));
        v222 = vrecpeq_f32(v221);
        v223 = 4;
        do
        {
          v222 = vmulq_f32(v222, vrecpsq_f32(v222, v221));
          --v223;
        }

        while (v223);
        v224 = vandq_s8(v222, vcgtzq_f32(v221));
        v225.i64[0] = 0x4000000040;
        v225.i64[1] = 0x4000000040;
        v226 = _X0[19];
        v227.i64[0] = 0x80000000800000;
        v227.i64[1] = 0x80000000800000;
        v228 = vmaxq_f32(vminq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v224, vaddq_f32(_X0[16], vmaxq_f32(vminq_f32(vmulq_f32(vmlsq_f32(vaddq_f32(v220, vmulq_f32(_X0[21], vsubq_f32(vmlaq_f32(v218, v301, v211), vmlaq_f32(v219, v298, v214)))), v263, _X0[16]), _X0[7]), _X0[20]), vbslq_s8(vceqzq_s32(vandq_s8(v307, v225)), vnegq_f32(_X0[20]), v227)))), vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v308, v306), v312, _X0[1]), v310, v305), vmlaq_f32(vmlaq_f32(vmulq_f32(v328, v304), v332, v303), v330, v302)), vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v322, v213), v316, v212), v314, v211), vmlaq_f32(vmlaq_f32(vmulq_f32(v318, v216), v326, v215), v324, v214))), vmulq_f32(v224, _X0[11])), v226, _X0[15]), _X0[18]), _X0[17]);
        v229 = vsubq_f32(v228, v226);
        v167 = v256;
        v230 = vmulq_f32(v256, v229);
        v22 = vmlaq_f32(v310, v230, v305);
        v23 = vmlaq_f32(v312, v230, _X0[1]);
        v24 = vmlaq_f32(v308, v230, v306);
        v231 = vmulq_f32(v320, v229);
        v28 = vmlsq_f32(v330, v231, v302);
        v29 = vmlsq_f32(v332, v231, v303);
        v30 = vmlsq_f32(v328, v231, v304);
        v232 = vmulq_f32(v255, v229);
        v35 = vmlaq_f32(v314, v232, v211);
        v36 = vmlaq_f32(v316, v232, v212);
        v37 = vmlaq_f32(v322, v232, v213);
        v233 = vmulq_f32(v166, v229);
        v40 = vmlsq_f32(v324, v233, v214);
        v41 = vmlsq_f32(v326, v233, v215);
        v42 = vmlsq_f32(v318, v233, v216);
        _X0[19] = v228;
        ++v43;
        _X0 += 23;
      }

      while (v43 < v3->i32[1]);
    }

    v234 = vzip1q_s32(v22, v24);
    v235 = vzip2q_s32(v22, v24);
    v236 = vzip1q_s32(v23, v23);
    v237 = vzip2q_s32(v23, v23);
    v238 = vzip1q_s32(v234, v236);
    v239 = vzip2q_s32(v234, v236);
    v240 = vzip1q_s32(v235, v237);
    v241 = vzip1q_s32(v35, v37);
    v242 = vzip1q_s32(v36, v36);
    *v5 = v238;
    v5[1] = vzip1q_s32(v241, v242);
    v243 = vzip2q_s32(v235, v237);
    v244 = vzip1q_s32(v28, v30);
    *v7 = v239;
    v7[1] = vzip2q_s32(v241, v242);
    v245 = vzip2q_s32(v35, v37);
    v246 = vzip2q_s32(v36, v36);
    v247 = v30;
    *v9 = v240;
    v9[1] = vzip1q_s32(v245, v246);
    v248 = vzip1q_s32(v29, v29);
    *v15 = v243;
    v15[1] = vzip2q_s32(v245, v246);
    v249 = vzip1q_s32(v40, v42);
    v250 = vzip1q_s32(v41, v41);
    *v4 = vzip1q_s32(v244, v248);
    v4[1] = vzip1q_s32(v249, v250);
    v251 = vzip2q_s32(v28, v247);
    *v6 = vzip2q_s32(v244, v248);
    v6[1] = vzip2q_s32(v249, v250);
    v252 = vzip2q_s32(v29, v29);
    v253 = vzip2q_s32(v40, v42);
    v254 = vzip2q_s32(v41, v41);
    *v8 = vzip1q_s32(v251, v252);
    v8[1] = vzip1q_s32(v253, v254);
    result = vzip2q_s32(v251, v252);
    *v14 = result;
    v14[1] = vzip2q_s32(v253, v254);
  }

  return result;
}

double physx::Dy::solve1D4(unsigned int *a1, uint64_t a2, uint64_t a3, int32x4_t a4, float a5)
{
  *a4.i32 = a5;
  *&result = physx::Dy::solve1DStep4((a2 + 48 * *a1), a3, a4).u64[0];
  return result;
}

_DWORD *physx::Dy::writeBack1D4(_DWORD *result, uint64_t a2)
{
  v2 = a2 + 48 * *result;
  v3 = *(v2 + 40);
  v4 = *(a2 + 48 * (*result + 1) + 40);
  v5 = *(a2 + 48 * (*result + 2) + 40);
  v6 = *(a2 + 48 * (*result + 3) + 40);
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (!v7 || v5 != 0 || v6 != 0)
  {
    v10 = *(v2 + 32);
    v11 = v10->i32[1];
    if (v11)
    {
      v12 = 0uLL;
      v13 = v10 + 40;
      v14.i64[0] = 0x200000002;
      v14.i64[1] = 0x200000002;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      do
      {
        v20 = vbicq_s8(v13[19], vceqzq_s32(vandq_s8(v13[22], v14)));
        v12 = vmlaq_f32(v12, v20, *v13);
        v15 = vmlaq_f32(v15, v20, v13[1]);
        v16 = vmlaq_f32(v16, v20, v13[2]);
        v17 = vmlaq_f32(v17, v20, v13[8]);
        v19 = vmlaq_f32(v19, v20, v13[9]);
        v18 = vmlaq_f32(v18, v20, v13[10]);
        v13 += 23;
        --v11;
      }

      while (v11);
    }

    else
    {
      v19 = 0uLL;
      v18 = 0uLL;
      v17 = 0uLL;
      v16 = 0uLL;
      v15 = 0uLL;
      v12 = 0uLL;
    }

    v21 = v10[7];
    v22 = v10[8];
    v23 = vsubq_f32(v17, vmlsq_f32(vmulq_f32(v16, v22), v15, v21));
    v24 = v10[9];
    v25 = vsubq_f32(v19, vmlsq_f32(vmulq_f32(v12, v24), v16, v22));
    v26 = vmlsq_f32(vmulq_f32(v15, v21), v12, v24);
    v27 = vmlaq_f32(vmlaq_f32(vmulq_f32(v12, v12), v15, v15), v16, v16);
    v28 = vmlaq_f32(vmulq_f32(v23, v23), v25, v25);
    v29 = vrsqrteq_f32(v27);
    v30 = 4;
    do
    {
      v29 = vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v29, v29), v27));
      --v30;
    }

    while (v30);
    v31 = vsubq_f32(v18, v26);
    v32 = vmlaq_f32(v28, v31, v31);
    v33 = vmulq_f32(v27, v29);
    v34 = vrsqrteq_f32(v32);
    v35 = 4;
    do
    {
      v34 = vmulq_f32(v34, vrsqrtsq_f32(vmulq_f32(v34, v34), v32));
      --v35;
    }

    while (v35);
    v36 = vorrq_s8(vcgtq_f32(vbslq_s8(vceqzq_f32(v32), v32, vmulq_f32(v32, v34)), v10[2]), vcgtq_f32(vbslq_s8(vceqzq_f32(v27), v27, v33), v10[1]));
    if (v3)
    {
      *v3 = vzip1_s32(*v12.f32, *v15.f32);
      v3[1].i32[0] = v16.i32[0];
      v3[2] = vzip1_s32(*v23.f32, *v25.f32);
      v3[3].i32[0] = v31.i32[0];
      if (v10->i8[12])
      {
        v37 = v36.i32[0] == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = !v37;
      v3[1].i32[1] = v38;
    }

    if (v4)
    {
      *v4 = vzip2_s32(*v12.f32, *v15.f32);
      v4[1].i32[0] = v16.i32[1];
      v4[2] = vzip2_s32(*v23.f32, *v25.f32);
      v4[3].i32[0] = v31.i32[1];
      if (v10->i8[13])
      {
        v39 = v36.i32[1] == 0;
      }

      else
      {
        v39 = 1;
      }

      v40 = !v39;
      v4[1].i32[1] = v40;
    }

    v41 = vextq_s8(v15, v15, 8uLL).u64[0];
    v42 = vextq_s8(v12, v12, 8uLL).u64[0];
    v43 = vextq_s8(v25, v25, 8uLL).u64[0];
    v44 = vextq_s8(v23, v23, 8uLL).u64[0];
    if (v5)
    {
      *v5 = vzip1_s32(v42, v41);
      v5[1].i32[0] = v16.i32[2];
      v5[2] = vzip1_s32(v44, v43);
      v5[3].i32[0] = v31.i32[2];
      if (v10->i8[14])
      {
        v45 = v36.i32[2] == 0;
      }

      else
      {
        v45 = 1;
      }

      v46 = !v45;
      v5[1].i32[1] = v46;
    }

    if (v6)
    {
      *v6 = vzip2_s32(v42, v41);
      v6[1].i32[0] = v16.i32[3];
      v6[2] = vzip2_s32(v44, v43);
      v6[3].i32[0] = v31.i32[3];
      if (v10->i8[15])
      {
        v47 = v36.i32[3] == 0;
      }

      else
      {
        v47 = 1;
      }

      v48 = !v47;
      v6[1].i32[1] = v48;
    }
  }

  return result;
}

int32x4_t **physx::Dy::solveConcludeContact4(unsigned int *a1, uint64_t a2, int32x2_t a3)
{
  v3 = *a3.i32;
  a3.i32[0] = -8388609;
  return physx::Dy::solveContact4_Block((a2 + 48 * *a1), a3, v3);
}

void physx::Dy::solveConclude1D4(unsigned int *a1, uint64_t a2, uint64_t a3, int32x4_t a4)
{
  physx::Dy::solve1DStep4((a2 + 48 * *a1), a3, a4);
  v6 = *(a2 + 48 * *a1 + 32);
  if (v6 && v6->i32[1])
  {
    v7 = 0;
    _X10 = v6 + 47;
    v9.i64[0] = 0x400000004;
    v9.i64[1] = 0x400000004;
    do
    {
      __asm { PRFM            #0, [X10,#0x100] }

      *_X10 = vbicq_s8(*_X10, vceqzq_s32(vandq_s8(_X10[15], v9)));
      ++v7;
      _X10 += 23;
    }

    while (v7 < v6->i32[1]);
  }
}

void physx::Dy::PxsPreIntegrateTask::~PxsPreIntegrateTask(physx::Dy::PxsPreIntegrateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PxsSolverCreateFinalizeConstraintsTask::~PxsSolverCreateFinalizeConstraintsTask(physx::Dy::PxsSolverCreateFinalizeConstraintsTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PxsSolverStartTask::~PxsSolverStartTask(physx::Dy::PxsSolverStartTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PxsSolverStartTask::runInternal(physx::Dy::PxsSolverStartTask *this)
{
  v1 = this;
  v348 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  v3 = physx::shdfnd::SListImpl::pop(*(v2 + 400));
  v329 = v1;
  if (!v3)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = (*(*(v4 + 24) + 16))(v4 + 24, 12343, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v6)
    {
      v3 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v3 - 8) = v3 - v6;
    }

    else
    {
      v3 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v3, *(v2 + 408));
    v1 = v329;
  }

  v7 = *(v1 + 6);
  *v7 = v3;
  *(v3 + 12240) = 0;
  *(v3 + 12212) = 0;
  *(v3 + 12280) = *(v3 + 12064);
  *(v3 + 12048) = 0;
  *(v3 + 12024) = 0;
  *(v3 + 12256) = 0;
  *(v3 + 11896) = 0;
  *(v3 + 11912) = 0;
  *(v3 + 11904) = 0;
  v8 = *(v1 + 15);
  *(v3 + 12016) = v8;
  *(v3 + 12032) = *(v1 + 16);
  *(v3 + 12264) = v8;
  *(v3 + 12056) = *(v1 + 17);
  *(v3 + 12040) = *(v1 + 18);
  *(v3 + 11992) = *(v1 + 19);
  *(v3 + 11968) = *(v1 + 20);
  v9 = v1 + 56;
  *(v3 + 11976) = *(v1 + 56);
  *(v3 + 12000) = *(v1 + 104);
  if (*(*(v1 + 5) + 148))
  {
    v10 = *(v7 + 16);
  }

  else
  {
    v10 = 0;
  }

  physx::Dy::ThreadContext::resizeArrays(v3, v10, *(v7 + 12) & 0x7FFFFFFF);
  v11 = *(v3 + 11968);
  v12 = *(v3 + 11976);
  v13 = *(v3 + 12000);
  v14 = *(v3 + 12008);
  v15 = v329;
  v16 = *(v329 + 24);
  v17 = *(v329 + 11);
  v18 = *(v329 + 22);
  if (v16)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = *(v3 + 11984);
    do
    {
      v23 = *(*(v18 + 344) + 44 * *(v17 + 4 * v19));
      if (v23 <= 0xFFFFFF7F)
      {
        do
        {
          v24 = v23 >> 7;
          v25 = *(v18 + 248) + 32 * v24;
          if (*(v25 + 5) == 1)
          {
            *(v22 + 8 * v21++) = *(v25 + 24);
          }

          else
          {
            *(v14 + 4 * v20++) = v24;
          }

          v23 = *(v25 + 8);
        }

        while (v23 < 0xFFFFFF80);
      }

      ++v19;
    }

    while (v19 != v16);
  }

  else
  {
    v20 = 0;
  }

  if (*(v329 + 208))
  {
    physx::shdfnd::sort<unsigned int,physx::shdfnd::Less<unsigned int>,physx::shdfnd::ReflectionAllocator<unsigned int>>(v14, v20, &v340, v333, 32);
    v15 = v329;
  }

  if (v20)
  {
    for (i = 0; i != v20; *(v13 + 4 * *(*(v18 + 264) + 4 * v27)) = i++)
    {
      v27 = *(v14 + 4 * i) & 0x1FFFFFF;
      v28 = *(*(v18 + 248) + 32 * v27 + 24);
      *(v12 + 8 * i) = v28;
      *(v11 + 8 * i) = *(v28 + 40);
    }
  }

  v304 = v9;
  v29 = *(v15 + 10);
  if (v16)
  {
    v330 = v13;
    v30 = 0;
    v31 = 0;
    v323 = v17;
    v326 = v16;
    do
    {
      for (j = *(*(v18 + 344) + 44 * *(v17 + 4 * v30) + 20); j != -1; j = *(v34 + 16 * (j % v33) + 8))
      {
        v33 = *(v18 + 304);
        v34 = *(*(v18 + 280) + 8 * (j / v33));
        v35 = *(*(*(*(v15 + 22) + 176) + 8 * (j / *(*(v15 + 22) + 200))) + 8 * (j % *(*(v15 + 22) + 200)));
        if (v35)
        {
          v36 = *(v18 + 832);
          v37 = *(v36 + 6);
          v38 = *v36;
          v39 = *(*(*v36 + 8 * (2 * j / v37)) + 4 * (2 * j % v37));
          v40 = *(*(v38 + 8 * (((2 * j) | 1) / v37)) + 4 * (((2 * j) | 1) % v37));
          v41 = v29 + 32 * v31;
          *(v41 + 24) = v35;
          v42 = v39 >> 7;
          v43 = *(v18 + 248) + 32 * (v39 >> 7);
          if (*(v43 + 5) == 1)
          {
            (*(**(v43 + 24) + 376))(*(v43 + 24), (v39 >> 1) & 0x3F, v29 + 32 * v31, v41 + 16);
          }

          else
          {
            if ((*(v43 + 4) & 4) != 0)
            {
              *(v41 + 16) = 1;
              v44 = *(v18 + 264);
            }

            else
            {
              *(v41 + 16) = 0;
              v42 = *(*(v18 + 264) + 4 * v42);
              v44 = v330;
            }

            *v41 = *(v44 + 4 * v42);
          }

          ++v31;
          if (v40 < 0xFFFFFF80)
          {
            v45 = v40 >> 7;
            v46 = *(v18 + 248) + 32 * (v40 >> 7);
            if (*(v46 + 5) == 1)
            {
              (*(**(v46 + 24) + 376))(*(v46 + 24), (v40 >> 1) & 0x3F, v41 + 8, v41 + 17);
            }

            else
            {
              if ((*(v46 + 4) & 4) != 0)
              {
                *(v41 + 17) = 1;
                v47 = *(v18 + 264);
              }

              else
              {
                *(v41 + 17) = 0;
                v45 = *(*(v18 + 264) + 4 * v45);
                v47 = v330;
              }

              *(v41 + 8) = *(v47 + 4 * v45);
            }
          }

          else
          {
            *(v41 + 17) = 3;
          }

          v15 = v329;
        }
      }

      ++v30;
      v17 = v323;
    }

    while (v30 != v326);
  }

  else
  {
    v31 = 0;
  }

  if ((*(v15 + 208) & 1) == 0)
  {
    goto LABEL_106;
  }

  v338 = 0;
  v337 = &v340;
  v334 = 0x2000000000;
  v335 = &v340;
  v336 = 0;
  v48 = v31 - 1;
  if ((v31 - 1) < 1)
  {
    goto LABEL_106;
  }

  v49 = 0;
  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v342 = 0u;
  v343 = 0u;
  v50 = &v340;
  v340 = 0u;
  v341 = 0u;
  while (1)
  {
    while (1)
    {
      if (v48 <= v49)
      {
        goto LABEL_99;
      }

      if ((v48 - v49) <= 4)
      {
        break;
      }

      v51 = (v29 + 32 * ((v49 + v48 + ((v49 + v48) >> 31)) >> 1));
      v52 = (v29 + 32 * v49);
      v53 = *(v51 + 3);
      v54 = *(v52 + 3);
      v55 = *(v53 + 96);
      v56 = *(v54 + 96);
      if (v55 < v56 || v55 == v56 && (v56 = *(v53 + 96), *(v53 + 100) < *(v54 + 100)))
      {
        v58 = *v52;
        v57 = v52[1];
        v59 = v51[1];
        *v52 = *v51;
        v52[1] = v59;
        *v51 = v58;
        v51[1] = v57;
        v54 = *(v52 + 3);
        v56 = *(v54 + 96);
      }

      v60 = (v29 + 32 * v48);
      v61 = *(v60 + 3);
      v62 = *(v61 + 96);
      if (v62 >= v56)
      {
        if (v62 != v56)
        {
          v56 = *(v61 + 96);
          goto LABEL_65;
        }

        if (*(v61 + 100) >= *(v54 + 100))
        {
          goto LABEL_65;
        }
      }

      v64 = *v52;
      v63 = v52[1];
      v65 = v60[1];
      *v52 = *v60;
      v52[1] = v65;
      *v60 = v64;
      v60[1] = v63;
      v61 = *(v60 + 3);
      v56 = *(v61 + 96);
LABEL_65:
      v66 = *(v51 + 3);
      v67 = *(v66 + 96);
      if (v56 < v67 || v56 == v67 && *(v61 + 100) < *(v66 + 100))
      {
        v69 = *v51;
        v68 = v51[1];
        v70 = v60[1];
        *v51 = *v60;
        v51[1] = v70;
        *v60 = v69;
        v60[1] = v68;
      }

      v72 = *v51;
      v71 = v51[1];
      v73 = *(v60 - 1);
      *v51 = *(v60 - 2);
      v51[1] = v73;
      *(v60 - 2) = v72;
      *(v60 - 1) = v71;
      LODWORD(v74) = v48 - 1;
      v75 = v29 + 32 * (v48 - 1);
      v76 = v49;
      while (1)
      {
        v77 = 0;
        v78 = *(v75 + 24);
        v79 = *(v78 + 96);
        v80 = v76;
        for (k = v29 + 32 + 32 * v76; ; k += 32)
        {
          v82 = *(k + 24);
          v83 = *(v82 + 96);
          if (v83 >= v79 && (v83 != v79 || *(v82 + 100) >= *(v78 + 100)))
          {
            break;
          }

          ++v77;
        }

        v76 = v77 + v80 + 1;
        v84 = v74;
        v74 = v74 - 1;
        for (m = v29 - 32 + 32 * v84; ; m -= 32)
        {
          v86 = *(m + 24);
          v87 = *(v86 + 96);
          if (v79 >= v87 && (v79 != v87 || *(v78 + 100) >= *(v86 + 100)))
          {
            break;
          }

          --v74;
        }

        if (v80 + v77 + 1 >= v74)
        {
          break;
        }

        v89 = *k;
        v88 = *(k + 16);
        v90 = *(m + 16);
        *k = *m;
        *(k + 16) = v90;
        *m = v89;
        *(m + 16) = v88;
      }

      v92 = *k;
      v91 = *(k + 16);
      v93 = *(v75 + 16);
      *k = *v75;
      *(k + 16) = v93;
      *v75 = v92;
      *(v75 + 16) = v91;
      v94 = v334;
      v95 = HIDWORD(v334) - 1;
      if (v80 - v49 + v77 + 1 >= ~v80 + v48 - v77)
      {
        if (v334 >= v95)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>>::grow(v333);
          v94 = v334;
          v50 = v335;
        }

        LODWORD(v334) = v94 + 1;
        *(v50 + v94) = v77 + v80 + 2;
        v97 = v334;
        LODWORD(v334) = v334 + 1;
        *(v50 + v97) = v48;
        v48 = v80 + v77;
      }

      else
      {
        if (v334 >= v95)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>>::grow(v333);
          v94 = v334;
          v50 = v335;
        }

        LODWORD(v334) = v94 + 1;
        *(v50 + v94) = v49;
        v96 = v334;
        LODWORD(v334) = v334 + 1;
        *(v50 + v96) = v77 + v80;
        v49 = v80 + v77 + 2;
      }
    }

    v98 = v49;
    v99 = v49 + 1;
    v100 = v29 + 56 + 32 * v49;
    do
    {
      v101 = v98++;
      v102 = v100;
      v103 = v101;
      v104 = v99;
      v105 = v101;
      do
      {
        v106 = *(v29 + 32 * v105 + 24);
        v107 = *(*v102 + 96);
        v108 = *(v106 + 96);
        if (v107 < v108 || v107 == v108 && *(*v102 + 100) < *(v106 + 100))
        {
          v105 = v104;
        }

        ++v104;
        ++v103;
        v102 += 32;
      }

      while (v103 < v48);
      if (v105 != v101)
      {
        v109 = (v29 + 32 * v105);
        v110 = (v29 + 32 * v101);
        v112 = *v109;
        v111 = v109[1];
        v113 = v110[1];
        *v109 = *v110;
        v109[1] = v113;
        *v110 = v112;
        v110[1] = v111;
      }

      ++v99;
      v100 += 32;
    }

    while (v98 != v48);
LABEL_99:
    v114 = v334;
    if (!v334)
    {
      break;
    }

    LODWORD(v334) = v334 - 1;
    v48 = *(v50 + (v114 - 1));
    LODWORD(v334) = v114 - 2;
    v49 = *(v50 + (v114 - 2));
  }

  if ((v336 & 1) != 0 && v50)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v15 = v329;
    if (v338)
    {
      physx::shdfnd::TempAllocator::deallocate(&v337, v337);
      goto LABEL_105;
    }
  }

  else
  {
LABEL_105:
    v15 = v329;
  }

LABEL_106:
  v115 = *(v15 + 6);
  *(v115 + 4) = v31;
  v116 = *(v15 + 5);
  v117 = *(v15 + 42);
  v324 = (*(v116 + 544) + 32 * v117);
  v327 = *(v115 + 2);
  v118 = v327 + 255;
  if (v327 + 255 >= 0x100)
  {
    v315 = 0;
    v119 = 0;
    v120 = *v115;
    v310 = *(v116 + 560) + 112 * v117;
    v121 = *(v116 + 88);
    v321 = *(v120 + 11968);
    v309 = *(v329 + 7);
    v308 = *(v120 + 12008);
    v307 = v120 + 12240;
    v306 = v120 + 12244;
    v122 = v118 >> 8;
    v123 = *(v329 + 3);
    v313 = v327;
    v124 = v118 >> 8;
    v305 = v122;
    do
    {
      v311 = v124;
      v125 = v124;
      if (v124 >= 0x40uLL)
      {
        v125 = 64;
      }

      if (v125 <= 1)
      {
        v126 = 1;
      }

      else
      {
        v126 = v125;
      }

      v127 = v122 - v119;
      if ((v122 - v119) >= 0x40)
      {
        v127 = 64;
      }

      v128 = physx::Cm::FlushPool::allocate(*(v116 + 744), 136 * v127, 0x10u);
      v312 = v119;
      v129 = v324;
      v130 = v327;
      v131 = v321;
      v132 = v309;
      if (v119 != v122)
      {
        v133 = 0;
        v317 = 136 * v126;
        v319 = v128;
        v134 = v315;
        v135 = v313;
        do
        {
          v331 = v135 - 256;
          if (v135 >= 0x100)
          {
            v135 = 256;
          }

          v136 = v128 + v133;
          v137 = *(v116 + 768);
          *(v136 + 16) = 0;
          *(v136 + 24) = 0;
          *(v136 + 32) = 0;
          *v136 = &unk_1F5D1D528;
          *(v136 + 8) = v137;
          *(v136 + 40) = v116;
          *(v136 + 48) = v131;
          *(v136 + 56) = v132;
          *(v136 + 64) = v308;
          *(v136 + 72) = v129;
          *(v136 + 80) = v310;
          *(v136 + 88) = v121;
          *(v136 + 92) = v130;
          *(v136 + 96) = v307;
          *(v136 + 104) = v306;
          *(v136 + 112) = v134;
          *(v136 + 116) = v135;
          *(v136 + 120) = *(v116 + 104);
          *(v136 + 128) = *(v116 + 112);
          *(v136 + 32) = 1;
          *(v136 + 24) = v123;
          v138 = v132;
          (*(*v123 + 32))(v123);
          *(v136 + 16) = *(*(v136 + 24) + 16);
          (*(*v136 + 40))(v136);
          v132 = v138;
          v131 = v321;
          v129 = v324;
          v130 = v327;
          v128 = v319;
          v133 += 136;
          v134 += 256;
          v135 = v331;
        }

        while (v317 != v133);
      }

      v119 += 64;
      v124 = v311 - 64;
      v313 -= 0x4000;
      v315 += 0x4000;
      v122 = v305;
    }

    while (v312 + 64 < v305);
  }

  bzero(v324, 32 * v327);
  v139 = v329;
  v140 = **(v329 + 6);
  v141 = *(v140 + 12264);
  v314 = v140;
  v318 = *(v329 + 24);
  if (v318)
  {
    v142 = 0;
    v316 = *(v329 + 11);
    v143 = *(v329 + 22);
    v332 = v143;
    while (1)
    {
      v320 = v142;
      for (n = *(*(v143 + 344) + 44 * *(v316 + 4 * v142) + 24); n != -1; n = *(v146 + 16 * (n % v145) + 8))
      {
        v145 = *(v143 + 304);
        v146 = *(*(v143 + 280) + 8 * (n / v145));
        v148 = *(v139 + 22);
        v147 = *(v139 + 23);
        v149 = *(*(*(v148 + 176) + 8 * (n / *(v148 + 200))) + 8 * (n % *(v148 + 200)));
        v150 = *(v139 + 5);
        v151 = *(v139 + 42);
        v152 = 2 * n;
        v153 = *(*(**(v148 + 832) + 8 * (v152 / *(*(v148 + 832) + 24))) + 4 * (v152 % *(*(v148 + 832) + 24)));
        if (v153 >= 0xFFFFFF80)
        {
          *v141 = v150 + 256;
          *(v141 + 20) = 0;
LABEL_134:
          *(v141 + 16) = -1;
          goto LABEL_135;
        }

        v154 = *(v148 + 248) + 32 * (v153 >> 7);
        if (*(v154 + 5) != 1)
        {
          v157 = *(*(v148 + 264) + 4 * (v153 >> 7));
          if ((*(v154 + 4) & 4) == 0)
          {
            v157 = *(v147 + 4 * v157) + v151;
          }

          *v141 = *(v150 + 544) + 32 * v157;
          *(v141 + 20) = v157 + 1;
          goto LABEL_134;
        }

        v322 = *(v139 + 42);
        v325 = *(v139 + 23);
        v328 = *(*(v143 + 280) + 8 * (n / v145));
        v155 = *(v154 + 24);
        *&v340 = 0;
        v333[0] = 0;
        v156 = (v153 >> 1) & 0x3F;
        (*(*v155 + 376))(v155, v156, &v340, v333);
        if (v333[0] != 2)
        {
          v155 = v150 + 256;
          *(v141 + 20) = 0;
          LOWORD(v156) = -1;
        }

        *v141 = v155;
        *(v141 + 16) = v156;
        v139 = v329;
        v143 = v332;
        v147 = v325;
        v146 = v328;
        v151 = v322;
LABEL_135:
        v158 = *(*(**(v148 + 832) + 8 * ((v152 | 1) / *(*(v148 + 832) + 24))) + 4 * ((v152 | 1) % *(*(v148 + 832) + 24)));
        if (v158 >= 0xFFFFFF80)
        {
          *(v141 + 8) = v150 + 256;
          *(v141 + 24) = 0;
LABEL_144:
          *(v141 + 18) = -1;
          goto LABEL_145;
        }

        v159 = *(v148 + 248) + 32 * (v158 >> 7);
        if (*(v159 + 5) != 1)
        {
          v163 = *(*(v148 + 264) + 4 * (v158 >> 7));
          if ((*(v159 + 4) & 4) == 0)
          {
            v163 = *(v147 + 4 * v163) + v151;
          }

          *(v141 + 8) = *(v150 + 544) + 32 * v163;
          *(v141 + 24) = v163 + 1;
          goto LABEL_144;
        }

        v160 = v146;
        v161 = *(v159 + 24);
        *&v340 = 0;
        v333[0] = 0;
        v162 = (v158 >> 1) & 0x3F;
        (*(*v161 + 376))(v161, v162, &v340, v333);
        if (v333[0] != 2)
        {
          v161 = v150 + 256;
          *(v141 + 24) = 0;
          LOWORD(v162) = -1;
        }

        v139 = v329;
        v143 = v332;
        v146 = v160;
        *(v141 + 8) = v161;
        *(v141 + 18) = v162;
LABEL_145:
        *(v141 + 32) = v149;
        *(v141 + 30) = 2;
        v141 += 48;
      }

      v142 = v320 + 1;
      if (v320 + 1 == v318)
      {
        v164 = *(v140 + 12264);
        goto LABEL_149;
      }
    }
  }

  v164 = *(v140 + 12264);
LABEL_149:
  physx::shdfnd::sort<physx::PxSolverConstraintDesc,physx::Dy::ConstraintLess,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>(v164, -1431655765 * ((v141 - v164) >> 4), v333, &v340, 32);
  *(v140 + 12120) = 0;
  v165 = *(v329 + 6);
  v166 = *(v165 + 16);
  if ((*(v140 + 12124) & 0x7FFFFFFFu) < v166)
  {
    physx::shdfnd::Array<physx::PxsIndexedContactManager const*,physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>>::recreate(v140 + 12112, v166);
    v165 = *(v329 + 6);
    v166 = *(v165 + 16);
  }

  *(v140 + 12120) = v166;
  *(v140 + 12136) = 0;
  if ((*(v140 + 12140) & 0x7FFFFFFFu) < v166)
  {
    physx::shdfnd::Array<physx::PxsIndexedContactManager const*,physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>>::recreate(v140 + 12128, v166);
    v165 = *(v329 + 6);
    v166 = *(v165 + 16);
  }

  *(v140 + 12136) = v166;
  v167 = *(v140 + 12112);
  *(v140 + 12104) = 0;
  if (!v166)
  {
    v176 = v329;
    goto LABEL_288;
  }

  *(v140 + 12152) = 0;
  v339[0] = *(*(v329 + 5) + 680);
  v339[1] = 0;
  v168 = v339[0] + *(v165 + 8) + 1;
  if ((*(v140 + 12156) & 0x7FFFFFFFu) < v168)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v140 + 12144, v168);
  }

  *(v140 + 12152) = v168;
  v169 = 4 * v168;
  bzero(*(v140 + 12144), v169);
  v170 = *(v329 + 6);
  v171 = *(v170 + 16);
  if (v171)
  {
    v172 = 0;
    v173 = (*(v329 + 10) + 17);
    do
    {
      v174 = *(v173 - 1);
      if (v174 != 2 && *v173 != 2)
      {
        v175 = v339[v174] + *(v173 - 17);
        ++*(*(v140 + 12144) + 4 * v175);
        v171 = *(v170 + 16);
      }

      ++v172;
      v173 += 32;
    }

    while (v172 < v171);
  }

  else
  {
    v171 = 0;
  }

  v177 = *(v140 + 12152);
  if (v177)
  {
    v178 = 0;
    v179 = 4 * v177;
    v180 = *(v140 + 12144) - 4;
    do
    {
      v181 = *(v180 + v179);
      *(v180 + v179) = v178;
      v178 += v181;
      v179 -= 4;
    }

    while (v179);
    if (!*(v170 + 16))
    {
      goto LABEL_177;
    }
  }

  else
  {
    v178 = 0;
    if (!v171)
    {
      goto LABEL_177;
    }
  }

  v182 = 0;
  v183 = 0;
  do
  {
    v184 = *(v329 + 10) + v182;
    v185 = *(v184 + 16);
    if (v185 == 2 || *(v184 + 17) == 2)
    {
      v186 = v178++;
    }

    else
    {
      v187 = *(v140 + 12144);
      v188 = v339[v185] + *v184;
      v186 = *(v187 + 4 * v188);
      *(v187 + 4 * v188) = v186 + 1;
    }

    *(*(v140 + 12128) + 8 * v186) = v184;
    ++v183;
    v182 += 32;
  }

  while (v183 < *(*(v329 + 6) + 16));
LABEL_177:
  bzero(*(v140 + 12144), v169);
  v189 = v329;
  v190 = *(v329 + 6);
  v191 = *(v190 + 16);
  if (v191)
  {
    v192 = 0;
    v193 = *(v140 + 12128);
    v194 = 16;
    do
    {
      v195 = *(v193 + 8 * v192);
      v196 = *(v195 + 17);
      if (v196 != 2 && *(*(v329 + 10) + v194) != 2)
      {
        if (v196 == 3)
        {
          v197 = 0;
        }

        else
        {
          v197 = (v339[*(v195 + 17)] + *(v195 + 8));
        }

        ++*(*(v140 + 12144) + 4 * v197);
        v191 = *(v190 + 16);
      }

      ++v192;
      v194 += 32;
    }

    while (v192 < v191);
  }

  else
  {
    v191 = 0;
  }

  v198 = *(v140 + 12152);
  if (v198)
  {
    v199 = 0;
    v200 = 4 * v198;
    v201 = *(v140 + 12144) - 4;
    do
    {
      v202 = *(v201 + v200);
      *(v201 + v200) = v199;
      v199 += v202;
      v200 -= 4;
    }

    while (v200);
    v191 = *(v190 + 16);
  }

  else
  {
    v199 = 0;
  }

  v203 = v199;
  if (v191)
  {
    v204 = 0;
    v205 = 16;
    v203 = v199;
    do
    {
      v206 = *(*(v140 + 12128) + 8 * v204);
      v207 = *(v206 + 17);
      if (v207 == 2 || *(*(v329 + 10) + v205) == 2)
      {
        v208 = v203++;
      }

      else
      {
        if (v207 == 3)
        {
          v209 = 0;
        }

        else
        {
          v209 = (v339[*(v206 + 17)] + *(v206 + 8));
        }

        v210 = *(v140 + 12144);
        v208 = *(v210 + 4 * v209);
        *(v210 + 4 * v209) = v208 + 1;
      }

      v167[v208] = v206;
      ++v204;
      v205 += 32;
    }

    while (v204 < *(*(v329 + 6) + 16));
  }

  v338 = 0;
  v337 = &v340;
  v334 = 0x2000000000;
  v335 = &v340;
  v336 = 0;
  v211 = v203 + ~v199;
  if (v211 < 1)
  {
LABEL_243:
    v244 = v304;
    goto LABEL_244;
  }

  v212 = 0;
  v346 = 0u;
  v347 = 0u;
  v213 = &v167[v199];
  v344 = 0u;
  v345 = 0u;
  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v214 = &v340;
  while (2)
  {
    while (v211 > v212)
    {
      if ((v211 - v212) <= 4)
      {
        v236 = v212;
        v237 = v212 + 1;
        do
        {
          v238 = v236++;
          v239 = v237;
          v240 = v238;
          v241 = v238;
          do
          {
            if (*(*(v213[v240 + 1] + 24) + 88) < *(*(v213[v241] + 24) + 88))
            {
              v241 = v239;
            }

            ++v240;
            ++v239;
          }

          while (v240 < v211);
          if (v241 != v238)
          {
            v242 = v213[v241];
            v213[v241] = v213[v238];
            v213[v238] = v242;
          }

          ++v237;
        }

        while (v236 != v211);
        break;
      }

      v215 = (v212 + v211 + ((v212 + v211) >> 31)) >> 1;
      v216 = v213[(v212 + v211) / 2];
      v217 = v213[v212];
      v218 = *(*(v217 + 24) + 88);
      if (*(*(v216 + 24) + 88) < v218)
      {
        v213[v212] = v216;
        v213[v215] = v217;
        v216 = v217;
        v217 = v213[v212];
        v218 = *(*(v217 + 24) + 88);
      }

      v219 = &v213[v211];
      v220 = *(*(*v219 + 24) + 88);
      if (v220 >= v218)
      {
        v217 = *v219;
      }

      else
      {
        v213[v212] = *v219;
        *v219 = v217;
        v220 = *(*(v217 + 24) + 88);
        v216 = v213[v215];
      }

      if (v220 < *(*(v216 + 24) + 88))
      {
        v213[v215] = v217;
        *v219 = v216;
        v216 = v213[v215];
      }

      v213[v215] = *(v219 - 1);
      *(v219 - 1) = v216;
      v221 = v211 - 1;
      v222 = v212;
      LODWORD(v223) = v211 - 1;
      while (1)
      {
        v224 = 0;
        v225 = *(*(v216 + 24) + 88);
        v226 = v222;
        v227 = &v213[v222];
        do
        {
          v229 = v227[1];
          ++v227;
          v228 = v229;
          ++v224;
        }

        while (*(*(v229 + 24) + 88) < v225);
        v223 = v223;
        do
        {
          v230 = &v213[v223--];
          v231 = *(v230 - 1);
        }

        while (v225 < *(*(v231 + 24) + 88));
        if (v226 + v224 >= v223)
        {
          break;
        }

        *v227 = v231;
        v213[v223] = v228;
        v216 = v213[v221];
        v222 = v224 + v226;
      }

      *v227 = v216;
      v213[v221] = v228;
      v232 = v334;
      v233 = HIDWORD(v334) - 1;
      if (v226 - v212 + v224 >= v211 - v226 - v224)
      {
        if (v334 >= v233)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>>::grow(v333);
          v232 = v334;
          v214 = v335;
        }

        LODWORD(v334) = v232 + 1;
        *(v214 + v232) = v224 + v226 + 1;
        v235 = v334;
        LODWORD(v334) = v334 + 1;
        *(v214 + v235) = v211;
        v211 = v226 + v224 - 1;
      }

      else
      {
        if (v334 >= v233)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>>::grow(v333);
          v232 = v334;
          v214 = v335;
        }

        LODWORD(v334) = v232 + 1;
        *(v214 + v232) = v212;
        v234 = v334;
        LODWORD(v334) = v334 + 1;
        *(v214 + v234) = v226 - 1 + v224;
        v212 = v226 + v224 + 1;
      }
    }

    v243 = v334;
    if (v334)
    {
      LODWORD(v334) = v334 - 1;
      v211 = *(v214 + (v243 - 1));
      LODWORD(v334) = v243 - 2;
      v212 = *(v214 + (v243 - 2));
      continue;
    }

    break;
  }

  if ((v336 & 1) == 0 || !v214)
  {
    v189 = v329;
    goto LABEL_243;
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  v189 = v329;
  v244 = v304;
  if (v338)
  {
    physx::shdfnd::TempAllocator::deallocate(&v337, v337);
    v189 = v329;
  }

LABEL_244:
  *(v314 + 12272) = v141;
  if ((*(v314 + 12108) & 0x7FFFFC00) == 0)
  {
    physx::shdfnd::Array<physx::Dy::CompoundContactManager,physx::shdfnd::ReflectionAllocator<physx::Dy::CompoundContactManager>>::recreate(v314 + 12096, 0x400u);
    v189 = v329;
  }

  *(v314 + 12104) = 0;
  physx::Dy::DynamicsContext::setDescFromIndices(*(v189 + 5), v141, *v167, *(v189 + 42));
  v176 = v329;
  *(v141 + 32) = *(*v167 + 24);
  *(v141 + 30) = 1;
  v245 = *(*(*v167 + 24) + 108);
  v246 = *(*(v176 + 25) + 32) + 32 * (*(*(v176 + 25) + 4 * (v245 & 7)) + (v245 >> 3));
  v247 = *(v246 + 24);
  LODWORD(v248) = *(*(v329 + 6) + 16);
  if (v248 >= 2)
  {
    v249 = 0;
    v250 = 0;
    v251 = 1;
    v252 = v141;
    while (1)
    {
      v253 = (v141 + 48);
      physx::Dy::DynamicsContext::setDescFromIndices(*(v176 + 5), v141 + 48, v167[v251], *(v176 + 42));
      v176 = v329;
      v254 = *(v167[v251] + 24);
      v255 = *(*(v329 + 25) + 32) + 32 * (*(*(v329 + 25) + 4 * (*(v254 + 108) & 7)) + (*(v254 + 108) >> 3));
      *(v141 + 80) = v254;
      *(v141 + 78) = 1;
      if (!v247)
      {
        v256 = *v253;
        v257 = *(v141 + 80);
        v252[1] = *(v141 + 64);
        v252[2] = v257;
        *v252 = v256;
        v249 = v251;
        v246 = v255;
      }

      if (*v252 != *v253 || *(v252 + 1) != *(v141 + 56) || *(v252 + 8) != -1 || *(v252 + 9) != -1 || v247 + *(v255 + 24) > 0x40 || (*(v254 + 16) & 1) != 0)
      {
        if (v247)
        {
          if ((v251 - v249) <= 1)
          {
            v247 = 0;
            v249 = v251;
            v246 = v255;
            v141 += 48;
          }

          else
          {
            v258 = *(v314 + 12108) & 0x7FFFFFFF;
            v259 = *(v314 + 12104);
            if (v258 <= v259)
            {
              if (v258)
              {
                v260 = 2 * *(v314 + 12108);
              }

              else
              {
                v260 = 1;
              }

              physx::shdfnd::Array<physx::Dy::CompoundContactManager,physx::shdfnd::ReflectionAllocator<physx::Dy::CompoundContactManager>>::recreate(v314 + 12096, v260);
              v176 = v329;
              v259 = *(v314 + 12104);
            }

            ++v250;
            v261 = *(v314 + 12096);
            *(v314 + 12104) = v259 + 1;
            v262 = v261 + (v259 << 6);
            *v262 = v249;
            *(v262 + 4) = v251 - v249;
            *(v262 + 6) = v247;
            *(v262 + 8) = *(v167[v249] + 24) + 32;
            *(v262 + 16) = v246;
            *(v262 + 24) = *v246;
            *(v262 + 40) = *(v246 + 24);
            *(v262 + 48) = *(v246 + 16);
            *(v262 + 42) = *(v246 + 26);
            v249 = v251;
            v246 = v255;
            v141 += 48;
            v247 = 0;
          }

          goto LABEL_267;
        }

        v263 = *v253;
        v264 = *(v141 + 80);
        v252[1] = *(v141 + 64);
        v252[2] = v264;
        *v252 = v263;
        v249 = v251;
        v246 = v255;
      }

      v253 = v252;
LABEL_267:
      v247 += *(v255 + 24);
      ++v251;
      v248 = *(*(v176 + 6) + 16);
      v252 = v253;
      if (v251 >= v248)
      {
        v244 = v304;
        if (!v247)
        {
          goto LABEL_279;
        }

        goto LABEL_271;
      }
    }
  }

  v250 = 0;
  v249 = 0;
  if (!*(v246 + 24))
  {
    goto LABEL_279;
  }

LABEL_271:
  v265 = v248 - v249;
  if ((v248 - v249) >= 2)
  {
    ++v250;
    v266 = *(v314 + 12108) & 0x7FFFFFFF;
    v267 = *(v314 + 12104);
    if (v266 <= v267)
    {
      if (v266)
      {
        v268 = 2 * *(v314 + 12108);
      }

      else
      {
        v268 = 1;
      }

      physx::shdfnd::Array<physx::Dy::CompoundContactManager,physx::shdfnd::ReflectionAllocator<physx::Dy::CompoundContactManager>>::recreate(v314 + 12096, v268);
      v176 = v329;
      v267 = *(v314 + 12104);
    }

    v269 = *(v314 + 12096);
    *(v314 + 12104) = v267 + 1;
    v270 = v269 + (v267 << 6);
    *v270 = v249;
    *(v270 + 4) = v265;
    *(v270 + 6) = v247;
    *(v270 + 8) = *(v167[v249] + 24) + 32;
    *(v270 + 16) = v246;
    *(v270 + 24) = *v246;
    *(v270 + 40) = *(v246 + 24);
    *(v270 + 48) = *(v246 + 16);
    *(v270 + 42) = *(v246 + 26);
  }

  v141 += 48;
LABEL_279:
  if (v250)
  {
    v271 = 0;
    v272 = v250;
    do
    {
      v273 = v176;
      v274 = physx::Cm::FlushPool::allocate(*(*(v176 + 5) + 744), 200, 0x10u);
      v275 = v274;
      v276 = *(v273 + 5);
      v277 = *(v273 + 42);
      if (v272 >= 8)
      {
        v278 = 8;
      }

      else
      {
        v278 = v272;
      }

      v279 = *(v276 + 768);
      v280 = *(v273 + 12);
      *(v274 + 16) = 0;
      *(v274 + 24) = 0;
      *(v274 + 32) = 0;
      v281 = &unk_1F5D1D738;
      *v274 = &unk_1F5D1D738;
      *(v274 + 8) = v279;
      *(v274 + 40) = v276;
      *(v274 + 48) = v314;
      v283 = v244[5];
      v282 = v244[6];
      v284 = v244[4];
      *(v274 + 104) = v244[3];
      *(v274 + 120) = v284;
      *(v274 + 136) = v283;
      *(v274 + 152) = v282;
      v286 = v244[1];
      v285 = v244[2];
      *(v274 + 56) = *v244;
      *(v274 + 72) = v286;
      *(v274 + 88) = v285;
      *(v274 + 168) = v277;
      *(v274 + 172) = v271;
      *(v274 + 176) = v278;
      *(v274 + 184) = v280;
      v287 = *(v273 + 3);
      *(v275 + 32) = 1;
      *(v275 + 24) = v287;
      if (v287)
      {
        (*(*v287 + 32))(v287);
        *(v275 + 16) = *(*(v275 + 24) + 16);
        v281 = *v275;
      }

      v281[5](v275);
      v271 += 8;
      v272 -= 8;
      v176 = v329;
    }

    while (v271 < v250);
  }

  v140 = v314;
LABEL_288:
  *(v140 + 12024) = -1431655765 * ((v141 - *(v140 + 12016)) >> 4);
  *(v140 + 12264) = v141;
  v288 = *(v176 + 6);
  if ((v288[3] & 0x7FFFFFFF) != 0)
  {
    v289 = 0;
    v290 = 0;
    v291 = 0;
    v292 = 0;
    v293 = *v288;
    v294 = *(*v288 + 12288);
    do
    {
      v295 = v176;
      v296 = physx::Cm::FlushPool::allocate(*(*(v176 + 5) + 744), 88, 0x10u);
      v297 = v296;
      v298 = *(v295 + 8) + v289;
      v299 = *(v295 + 5);
      v300 = v290 + (*(*(v295 + 6) + 12) & 0x7FFFFFFF);
      if (v300 >= 0x20)
      {
        v300 = 32;
      }

      v301 = *(v299 + 768);
      *(v296 + 16) = 0;
      *(v296 + 24) = 0;
      *(v296 + 32) = 0;
      v302 = &unk_1F5D1D7A8;
      *v296 = &unk_1F5D1D7A8;
      *(v296 + 8) = v301;
      *(v296 + 40) = v293;
      *(v296 + 48) = v298;
      *(v296 + 56) = v294;
      *(v296 + 64) = v300;
      *(v296 + 72) = v299;
      *(v296 + 80) = v291;
      v303 = *(v295 + 3);
      *(v297 + 32) = 1;
      *(v297 + 24) = v303;
      if (v303)
      {
        (*(*v303 + 32))(v303);
        *(v297 + 16) = *(*(v297 + 24) + 16);
        v302 = *v297;
      }

      v302[5](v297);
      v292 += 32;
      v176 = v329;
      v291 += 2048;
      v290 -= 32;
      v294 += 3072;
      v289 += 256;
    }

    while (v292 < (*(*(v329 + 6) + 12) & 0x7FFFFFFFu));
  }
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>::getName() [T = physx::PxsIndexedContactManager]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void physx::shdfnd::sort<physx::PxSolverConstraintDesc,physx::Dy::ConstraintLess,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v8 = (4 * a5);
  v86 = v8 > 0x400;
  if (v8 < 0x401)
  {
    MEMORY[0x1EEE9AC00](a1);
    v9 = &v80[-((v8 + 15) & 0x1FFFFFFF0)];
    bzero(v9, v8);
  }

  else
  {
    v9 = physx::shdfnd::TempAllocator::allocate(v80, (4 * a5), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSort.h", 65);
  }

  v85 = v9;
  v81 = 0;
  v82 = a5;
  v83 = v9;
  v10 = a2 - 1;
  v84 = 0;
  if (a2 - 1 < 1)
  {
    if (v8 <= 0x400)
    {
      return;
    }

    goto LABEL_43;
  }

  v11 = 0;
  for (i = v9; ; v11 = *(i + v79 - 2))
  {
    while (1)
    {
      if (v10 <= v11)
      {
        goto LABEL_36;
      }

      if ((v10 - v11) <= 4)
      {
        break;
      }

      v13 = (a1 + 48 * ((v11 + v10) / 2));
      v14 = (a1 + 48 * v11);
      v15 = *(*(v14 + 4) + 72);
      if (*(*(v13 + 4) + 72) > v15)
      {
        v16 = *v14;
        v17 = v14[1];
        v18 = v14[2];
        v20 = v13[1];
        v19 = v13[2];
        *v14 = *v13;
        v14[1] = v20;
        v14[2] = v19;
        v13[1] = v17;
        v13[2] = v18;
        *v13 = v16;
        v15 = *(*(v14 + 4) + 72);
      }

      v21 = (a1 + 48 * v10);
      v22 = *(*(v21 + 4) + 72);
      if (v22 > v15)
      {
        v23 = *v14;
        v24 = v14[1];
        v25 = v14[2];
        v27 = v21[1];
        v26 = v21[2];
        *v14 = *v21;
        v14[1] = v27;
        v14[2] = v26;
        v21[1] = v24;
        v21[2] = v25;
        *v21 = v23;
        v22 = *(*(v21 + 4) + 72);
      }

      if (v22 > *(*(v13 + 4) + 72))
      {
        v28 = *v13;
        v29 = v13[1];
        v30 = v13[2];
        v32 = v21[1];
        v31 = v21[2];
        *v13 = *v21;
        v13[1] = v32;
        v13[2] = v31;
        v21[1] = v29;
        v21[2] = v30;
        *v21 = v28;
      }

      v33 = *v13;
      v34 = v13[1];
      v35 = v13[2];
      v37 = *(v21 - 2);
      v36 = *(v21 - 1);
      *v13 = *(v21 - 3);
      v13[1] = v37;
      v13[2] = v36;
      *(v21 - 2) = v34;
      *(v21 - 1) = v35;
      v38 = v10 - 1;
      v39 = (a1 + 48 * v38);
      *(v21 - 3) = v33;
      v40 = v11;
      while (1)
      {
        v41 = 0;
        v42 = *(*(v39 + 4) + 72);
        v43 = v40;
        v44 = (a1 + 48 * v40);
        do
        {
          v45 = *(*(v44 + 10) + 72);
          ++v41;
          v44 += 3;
        }

        while (v45 > v42);
        v46 = v38;
        v47 = (a1 + 48 * v38);
        do
        {
          --v46;
          v48 = *(*(v47 - 2) + 72);
          v47 -= 3;
        }

        while (v42 > v48);
        if (v43 + v41 >= v46)
        {
          break;
        }

        v49 = *v44;
        v50 = v44[1];
        v51 = v44[2];
        v53 = v47[1];
        v52 = v47[2];
        *v44 = *v47;
        v44[1] = v53;
        v44[2] = v52;
        v47[1] = v50;
        v47[2] = v51;
        v40 = v41 + v43;
        LODWORD(v38) = v46;
        *v47 = v49;
      }

      v54 = *v44;
      v55 = v44[1];
      v56 = v44[2];
      v58 = v39[1];
      v57 = v39[2];
      *v44 = *v39;
      v44[1] = v58;
      v44[2] = v57;
      v39[1] = v55;
      v39[2] = v56;
      *v39 = v54;
      v59 = v81;
      v60 = v82 - 1;
      if (v43 - v11 + v41 >= v10 - v43 - v41)
      {
        if (v81 >= v60)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>::grow(v80);
          v59 = v81;
          i = v83;
        }

        v81 = v59 + 1;
        *(i + v59) = v41 + v43 + 1;
        v62 = v81++;
        *(i + v62) = v10;
        v10 = v43 + v41 - 1;
      }

      else
      {
        if (v81 >= v60)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>::grow(v80);
          v59 = v81;
          i = v83;
        }

        v81 = v59 + 1;
        *(i + v59) = v11;
        v61 = v81++;
        *(i + v61) = v43 - 1 + v41;
        v11 = v43 + v41 + 1;
      }
    }

    v63 = v11;
    v64 = v11 + 1;
    v65 = a1 + 80 + 48 * v11;
    do
    {
      v66 = v63++;
      v67 = v65;
      v68 = v64;
      v69 = v66;
      v70 = v66;
      do
      {
        v71 = *v67;
        v67 += 6;
        if (*(v71 + 72) > *(*(a1 + 48 * v70 + 32) + 72))
        {
          v70 = v68;
        }

        ++v69;
        ++v68;
      }

      while (v69 < v10);
      if (v70 != v66)
      {
        v72 = (a1 + 48 * v70);
        v73 = *v72;
        v74 = v72[1];
        v75 = (a1 + 48 * v66);
        v76 = v72[2];
        v78 = v75[1];
        v77 = v75[2];
        *v72 = *v75;
        v72[1] = v78;
        v72[2] = v77;
        v75[1] = v74;
        v75[2] = v76;
        *v75 = v73;
      }

      ++v64;
      v65 += 48;
    }

    while (v63 != v10);
LABEL_36:
    v79 = v81;
    if (!v81)
    {
      break;
    }

    --v81;
    v10 = *(i + v79 - 1);
    v81 = v79 - 2;
  }

  if ((v84 & 1) == 0 || !i)
  {
    if (v8 < 0x401)
    {
      return;
    }

LABEL_43:
    physx::shdfnd::TempAllocator::deallocate(&v85, v9);
    return;
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  if (v86)
  {
    v9 = v85;
    goto LABEL_43;
  }
}

uint64_t physx::shdfnd::Array<physx::PxsIndexedContactManager const*,physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>>::recreate(uint64_t a1, unsigned int a2)
{
  result = physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>::allocate(8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = *(a1 + 8);
  v7 = *a1;
  if (v6)
  {
    v8 = result + 8 * v6;
    v9 = result;
    do
    {
      v10 = *v7++;
      *v9++ = v10;
    }

    while (v9 < v8);
    v7 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v7)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *a1 = v5;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<const physx::PxsIndexedContactManager *>::getName() [T = const physx::PxsIndexedContactManager *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = *(*(v6 + 24) + 16);

    return v8(v6 + 24, v5, v7, a2, a3);
  }

  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager const*>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Dy::CompoundContactManager,physx::shdfnd::ReflectionAllocator<physx::Dy::CompoundContactManager>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::CompoundContactManager>::getName() [T = physx::Dy::CompoundContactManager]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, a2 << 6, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[4 * v7];
    v10 = v6;
    do
    {
      v11 = *v8;
      v12 = v8[1];
      v13 = v8[3];
      v10[2] = v8[2];
      v10[3] = v13;
      *v10 = v11;
      v10[1] = v12;
      v10 += 4;
      v8 += 4;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

void physx::Dy::PxsSolverConstraintPostProcessTask::~PxsSolverConstraintPostProcessTask(physx::Dy::PxsSolverConstraintPostProcessTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::PxsSolverConstraintPostProcessTask::runInternal(physx::Dy::PxsSolverConstraintPostProcessTask *this)
{
  v1 = this;
  v238 = *MEMORY[0x1E69E9840];
  v2 = *(this + 44) + *(this + 43);
  v3 = *(this + 5);
  v4 = physx::shdfnd::SListImpl::pop(*(v3 + 400));
  v189 = v1;
  if (!v4)
  {
    v5 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v6 = "<allocation names disabled>";
    }

    v7 = (*(*(v5 + 24) + 16))(v5 + 24, 12343, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v7)
    {
      v4 = (v7 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v4 - 8) = v4 - v7;
    }

    else
    {
      v4 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v4, *(v3 + 408));
    v1 = v189;
  }

  *(v4 + 11880) = 0;
  *(v4 + 11888) = 0;
  v8 = *(v1 + 43);
  v187 = v2;
  if (v8 >= v2)
  {
    goto LABEL_177;
  }

  v9 = (v4 + 16);
  v188 = (v4 + 11872);
  v10 = vdupq_n_s64(2uLL);
  v186 = v10;
  do
  {
    v11 = *(v1 + 6);
    v12 = (*(v11 + 12096) + (v8 << 6));
    v13 = *(v12 + 2);
    v190 = v12;
    v191 = v8;
    if (*(v12 + 2))
    {
      v14 = 0;
      v15 = 0;
      v200 = *v12;
      v16 = *(v1 + 24);
      v196 = *(v16 + 32);
      v198 = *(v11 + 12112);
      do
      {
        v17 = *(*(*(v198 + 8 * (v200 + v14)) + 24) + 108);
        v18 = (v196 + 32 * (*(v16 + 4 * (v17 & 7)) + (v17 >> 3)));
        v19 = *v18;
        v20 = *(v18 + 2);
        v21 = *(v18 + 24);
        v22 = *(v18 + 25);
        v202 = 0;
        v203 = 0;
        if (v19)
        {
          v23 = *(v19 + 43);
          v204 = v19;
          v205 = (v20 + 4 * v21);
          if ((v23 & 2) != 0)
          {
            v24 = 64;
          }

          else
          {
            v24 = 16;
          }

          if ((v23 & 0x80u) == 0)
          {
            v25 = v24;
          }

          else
          {
            v25 = 32;
          }

          v26 = v23 & 1;
          v27 = (v23 >> 2) & 1;
          if ((v23 & 0x80u) == 0)
          {
            v28 = (v23 >> 1) & 1;
          }

          else
          {
            v28 = 2;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v28 = 0;
          v27 = 1;
        }

        v214 = v26;
        v212 = v28;
        v213 = v27;
        v210 = 48;
        v211 = v25;
        v207 = v21;
        v206 = v22;
        if (!v27 && v22)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v33 = *(&v204 + 1);
          v32 = v204;
          v34 = v205;
          do
          {
            if (v29)
            {
              v35 = *(v32 + 41);
              v36 = v35 > v30;
              LODWORD(v37) = (v35 - v30) * v25;
              if (v36)
              {
                v37 = v37;
              }

              else
              {
                v37 = 0;
              }

              v33 += v37;
              v32 += 48;
            }

            v209 = ++v29;
            v208 = 0;
            v30 = *(v32 + 41);
            if (*(v32 + 41))
            {
              v38 = *(v32 + 36);
              v39 = *(v32 + 42);
              v40 = *(v32 + 44);
              v41 = *(v32 + 46);
              v42 = vrev64_s32(*(v32 + 28));
              v43 = *(v32 + 41);
              do
              {
                if (v31)
                {
                  v44 = 4;
                }

                else
                {
                  v44 = 0;
                }

                v34 = (v34 + v44);
                if (v31)
                {
                  v45 = v25;
                }

                else
                {
                  v45 = 0;
                }

                v46 = &v9[16 * v15];
                *(v46 + 11) = v38;
                *(v46 + 7) = v42;
                if (v26)
                {
                  v47 = *v34;
                }

                else
                {
                  v47 = -1;
                }

                v33 += v45;
                *(v46 + 13) = v47;
                *(v46 + 48) = v39;
                if (v28)
                {
                  v48 = *(v33 + 28);
                  v49 = (v33 + 16);
                }

                else
                {
                  v49 = &v202;
                  v48 = 2139095039;
                }

                v50 = &v228[v15];
                *(v46 + 7) = v48;
                *(v46 + 4) = *v49;
                v46[10] = v49[2];
                *&v51 = *(v32 + 16);
                DWORD2(v51) = *(v32 + 24);
                HIDWORD(v51) = *(v33 + 12);
                *v46 = v51;
                *(v46 + 2) = *v33;
                v46[6] = *(v33 + 8);
                *v50 = v40;
                v50[1] = v41;
                ++v15;
                v31 = 1;
                --v43;
              }

              while (v43);
            }

            v208 = v30;
          }

          while (v29 != v22);
        }

        ++v14;
      }

      while (v14 != v13);
    }

    else
    {
      v15 = 0;
    }

    v215 = 0;
    v224[62] = 0;
    v225 = v4 + 16;
    v226 = v228;
    v227 = v15;
    v216 = *(v4 + 16);
    v217 = *(v4 + 24);
    v218 = 0;
    v220[0] = 0;
    v221 = 0;
    v219 = *(v4 + 28);
    if (v15 < 2)
    {
      v53 = 1;
      v52 = 1;
      goto LABEL_73;
    }

    v52 = 1;
    v53 = 1;
    while (1)
    {
      v54 = &v9[16 * v53];
      if (v52)
      {
        v55 = &v228[v53];
        v56 = v52 - 1;
        v57 = (&v216 + 5 * v56);
        do
        {
          v58 = &v228[*(v57 + 14)];
          if (*v58 == *v55 && v58[1] == v55[1] && (((v57[1] * v54[1]) + (*v57 * *v54)) + (v57[2] * v54[2])) >= 0.995)
          {
            break;
          }

          --v56;
          v57 -= 10;
        }

        while (v56 != -1);
      }

      else
      {
        v56 = -1;
      }

      v59 = v52 - 1;
      if (v56 != v59)
      {
        break;
      }

LABEL_69:
      if (v15 <= ++v53)
      {
        goto LABEL_73;
      }
    }

    v220[20 * v59 + 1] = v53 - v220[20 * v59];
    if (v52 != 32)
    {
      v60 = &v216 + 5 * v52;
      *(v60 + 14) = v53;
      v60[2] = 0;
      if (v56 == -1)
      {
        v63 = *v54;
        v64 = *(v54 + 2);
        *(v60 + 6) = v54[3];
        LOWORD(v62) = v52;
      }

      else
      {
        v61 = &v216 + 5 * v56;
        v62 = *(v61 + 16);
        v61[2] = v60;
        v63 = *v61;
        v64 = *(v61 + 2);
        v65 = (&v216 + 5 * v62);
        v66 = v65[6];
        if (v66 >= v54[3])
        {
          v66 = v54[3];
        }

        *(v60 + 6) = v66;
        v65[6] = v66;
      }

      *(v60 + 16) = v62;
      *v60 = v63;
      *(v60 + 17) = v52++;
      *(v60 + 2) = v64;
      goto LABEL_69;
    }

    v52 = 32;
LABEL_73:
    *(&v216 + 20 * v52 - 5) = v53 - *(&v216 + 20 * v52 - 6);
    v67 = v52;
    if (!v52)
    {
      physx::shdfnd::sort<physx::Dy::ContactPatch *,physx::Dy::SortBoundsPredicateManifold,physx::shdfnd::ReflectionAllocator<physx::Dy::ContactPatch *>>(&v223, 0);
      v164 = 0;
      v215 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      goto LABEL_163;
    }

    v68 = (v52 + 1) & 0x1FFFE;
    v69 = vdupq_n_s64(v67 - 1);
    v70 = &v222;
    v71 = v224;
    v72 = xmmword_1E3049620;
    do
    {
      v73 = vmovn_s64(vcgeq_u64(v69, v72));
      if (v73.i8[0])
      {
        *(v71 - 1) = v70 - 5;
      }

      if (v73.i8[4])
      {
        *v71 = v70;
      }

      v72 = vaddq_s64(v72, v10);
      v71 += 2;
      v70 += 10;
      v68 -= 2;
    }

    while (v68);
    v194 = v67;
    physx::shdfnd::sort<physx::Dy::ContactPatch *,physx::Dy::SortBoundsPredicateManifold,physx::shdfnd::ReflectionAllocator<physx::Dy::ContactPatch *>>(&v223, v67);
    v74 = v194;
    v75 = 0;
    v76 = 0;
    v77 = v225;
    v78 = v225 + 24;
    v192 = v225 + 12;
    v193 = v225 + 24;
    while (2)
    {
      v79 = *&v224[2 * v75 - 2];
      if (*(v79 + 32) != *(v79 + 34))
      {
        goto LABEL_151;
      }

      if (v76 == 6)
      {
        v215 = 6;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        goto LABEL_156;
      }

      v80 = 0;
      v81 = *&v224[2 * v75 - 2];
      do
      {
        v80 += *(v81 + 30);
        v81 = *(v81 + 16);
      }

      while (v81);
      v82 = v76 + 1;
      v83 = &v202 + 7 * v76;
      if (v80 >= 7)
      {
        v88 = 0;
        v195 = v76;
        v89 = 0.0;
        v90 = *&v224[2 * v75 - 2];
        do
        {
          v91 = *(v90 + 30);
          if (*(v90 + 30))
          {
            v92 = *(v90 + 28);
            v93 = (v225 + 24 + (v92 << 6));
            do
            {
              v94 = (*(v93 - 1) * *(v93 - 1)) + (*(v93 - 2) * *(v93 - 2));
              v95 = *v93;
              v93 += 16;
              v96 = v94 + (v95 * v95);
              if (v89 < v96)
              {
                v88 = v92;
                v89 = v96;
              }

              LODWORD(v92) = v92 + 1;
              --v91;
            }

            while (v91);
          }

          v90 = *(v90 + 16);
        }

        while (v90);
        v83[1] = v88;
        v97 = (v83 + 1);
        v98 = (v77 + (v88 << 6));
        v99 = v98[4];
        v100 = v98[5];
        v101 = v98[6];
        v102 = 0.0;
        v103 = v79;
        do
        {
          v104 = *(v103 + 30);
          if (*(v103 + 30))
          {
            v105 = *(v103 + 28);
            v106 = (v78 + (v105 << 6));
            do
            {
              v107 = v99 - *(v106 - 2);
              v108 = v100 - *(v106 - 1);
              v109 = *v106;
              v106 += 16;
              v110 = ((v108 * v108) + (v107 * v107)) + ((v101 - v109) * (v101 - v109));
              if (v110 > v102)
              {
                v88 = v105;
                v102 = v110;
              }

              LODWORD(v105) = v105 + 1;
              --v104;
            }

            while (v104);
          }

          v103 = *(v103 + 16);
        }

        while (v103);
        v111 = (v77 + (v88 << 6));
        v112 = v111[4];
        v113 = v111[5];
        v114 = v111[6];
        v83[2] = v88;
        v115 = v99 - v112;
        v116 = v100 - v113;
        v117 = v101 - v114;
        v119 = *(v79 + 4);
        v118 = *(v79 + 8);
        v120 = (v116 * v118) - (v117 * v119);
        v121 = (v117 * *v79) - (v115 * v118);
        v122 = (v115 * v119) - (v116 * *v79);
        v123 = 0.0;
        v124 = v79;
        do
        {
          v125 = *(v124 + 30);
          if (*(v124 + 30))
          {
            v126 = *(v124 + 28);
            v127 = (v78 + (v126 << 6));
            do
            {
              v128 = *(v127 - 2) - v99;
              v129 = *(v127 - 1) - v100;
              v130 = *v127;
              v127 += 16;
              v131 = ((v121 * v129) + (v128 * v120)) + ((v130 - v101) * v122);
              if (v131 > v123)
              {
                v88 = v126;
                v123 = v131;
              }

              LODWORD(v126) = v126 + 1;
              --v125;
            }

            while (v125);
          }

          v124 = *(v124 + 16);
        }

        while (v124);
        v83[3] = v88;
        v132 = -v120;
        v133 = -v121;
        v134 = -v122;
        v135 = v79;
        v136 = 0.0;
        do
        {
          v137 = *(v135 + 30);
          if (*(v135 + 30))
          {
            v138 = *(v135 + 28);
            v139 = (v78 + (v138 << 6));
            do
            {
              v140 = *(v139 - 2) - v99;
              v141 = *(v139 - 1) - v100;
              v142 = *v139;
              v139 += 16;
              v143 = ((v141 * v133) + (v140 * v132)) + ((v142 - v101) * v134);
              if (v143 > v136)
              {
                v88 = v138;
                v136 = v143;
              }

              LODWORD(v138) = v138 + 1;
              --v137;
            }

            while (v137);
          }

          v135 = *(v135 + 16);
        }

        while (v135);
        v201 = v75;
        v83[4] = v88;
        v233 = *v97;
        do
        {
          *(v235 + v135) = *(v77 + (*(v97 + v135) << 6) + 12) + -0.001;
          v135 += 4;
        }

        while (v135 != 16);
        v144 = v79;
        do
        {
          v145 = *(v144 + 30);
          if (*(v144 + 30))
          {
            v146 = 0;
            v147 = *(v144 + 28);
            do
            {
              v148 = 0;
              LODWORD(v149) = 0;
              v150 = (v77 + ((v146 + v147) << 6));
              v151 = v150[4];
              v152 = 3.4028e38;
              do
              {
                v153 = (v77 + (*(v97 + v148) << 6));
                v154 = v153[6] - v150[6];
                v155 = (v153[5] - v150[5]) * (v153[5] - v150[5]);
                if (v152 <= ((v155 + ((v153[4] - v151) * (v153[4] - v151))) + (v154 * v154)))
                {
                  v149 = v149;
                }

                else
                {
                  v152 = (v155 + ((v153[4] - v151) * (v153[4] - v151))) + (v154 * v154);
                  v149 = v148;
                }

                ++v148;
              }

              while (v148 != 4);
              v156 = v150[3];
              if (*&v235[2 * v149] > v156)
              {
                *(&v233 + v149) = v146 + v147;
                *&v235[2 * v149] = v156;
              }

              ++v146;
            }

            while (v146 != v145);
          }

          v144 = *(v144 + 16);
        }

        while (v144);
        v197 = v83;
        v199 = v82;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        do
        {
          v157 = *(&v233 + v144);
          if (v157 <= 0x3F)
          {
            *(v97 + v144) = v157;
            *(&v229 + v157) = 1;
          }

          v144 += 4;
        }

        while (v144 != 16);
        v234 = 0;
        memset_pattern16(&v236, &unk_1E3113FF0, 8uLL);
        v78 = v193;
        while (1)
        {
          v158 = *(v79 + 30);
          if (*(v79 + 30))
          {
            break;
          }

LABEL_149:
          v79 = *(v79 + 16);
          if (!v79)
          {
            *(&v204 + 28 * v195 + 4) = v234;
            *v197 = 6;
            v76 = v199;
            v74 = v194;
            v75 = v201;
            goto LABEL_151;
          }
        }

        v159 = *(v79 + 28);
        v160 = (v192 + (v159 << 6));
        while (2)
        {
          if ((*(&v229 + v159) & 1) == 0)
          {
            v161 = *v160;
            if (*v160 < v236)
            {
              v237 = v236;
              HIDWORD(v234) = v234;
              v162 = &v236;
              v163 = &v234;
              goto LABEL_147;
            }

            v162 = &v237;
            v163 = (&v234 + 4);
            if (v161 < v237)
            {
LABEL_147:
              *v162 = v161;
              *v163 = v159;
            }
          }

          ++v159;
          v160 += 16;
          if (!--v158)
          {
            goto LABEL_149;
          }

          continue;
        }
      }

      v84 = 0;
      do
      {
        v85 = *(v79 + 30);
        if (*(v79 + 30))
        {
          v86 = *(v79 + 28);
          do
          {
            v87 = (v84 + 1);
            v83[v84 + 1] = v86++;
            LODWORD(v84) = v84 + 1;
            --v85;
          }

          while (v85);
        }

        else
        {
          v87 = v84;
        }

        v79 = *(v79 + 16);
        v84 = v87;
      }

      while (v79);
      *v83 = v80;
      ++v76;
LABEL_151:
      if (++v75 != v74)
      {
        continue;
      }

      break;
    }

    v215 = v76;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    if (!v76)
    {
      v164 = 0;
      goto LABEL_163;
    }

LABEL_156:
    v165 = 0;
    v166 = 0;
    v167 = &v202 + 4;
    do
    {
      v168 = *(&v202 + 7 * v165);
      v169 = v167;
      v170 = v168;
      if (v168)
      {
        do
        {
          v171 = *v169++;
          *(&v229 + v171) = 1;
          --v170;
        }

        while (v170);
        v166 += v168;
      }

      ++v165;
      v167 += 28;
    }

    while (v165 != v76);
    v164 = (2 * v166 + 15) & 0xFFFFFFF0;
    if (v164 > 0x4000)
    {
      v172 = physx::PxcNpMemBlockPool::acquireExceptionalConstraintMemory(*v188, (2 * v166 + 15) & 0xFFFFFFF0);
      goto LABEL_167;
    }

LABEL_163:
    v173 = *(v4 + 11880);
    if (v173 && (v174 = *(v4 + 11888), v174 + v164 <= 0x4000))
    {
      v172 = v173 + v174;
      *(v4 + 11888) = v174 + v164;
    }

    else
    {
      v172 = physx::PxcNpMemBlockPool::acquire(*(v4 + 11872), *(v189 + 6) + 11848, (*(v4 + 11872) + 244), (*(v4 + 11872) + 240), 1);
      *(v4 + 11880) = v172;
      *(v4 + 11888) = v164;
    }

LABEL_167:
    *(v190 + 7) = v172;
    if (v15)
    {
      v175 = 0;
      v176 = 0;
      v177 = v4 + 60;
      v178 = v15;
      v1 = v189;
      v179 = v191;
      do
      {
        if (*(&v229 + v175))
        {
          if (v175 != v176)
          {
            v180 = &v9[16 * v176];
            *v180 = *(v177 - 44);
            *(v180 + 1) = *(v177 - 28);
            *(v180 + 4) = *(v177 - 12);
            v180[10] = *(v177 - 4);
            v181 = *v177;
            v180[15] = *(v177 + 16);
            *(v180 + 11) = v181;
            v228[v176] = v228[v175];
          }

          *(v172 + 2 * v176++) = v175;
        }

        ++v175;
        v177 += 64;
      }

      while (v178 != v175);
    }

    else
    {
      v176 = 0;
      v1 = v189;
      v179 = v191;
    }

    v182 = *(v1 + 23);
    v183 = *(*(v1 + 24) + 32) + 32 * (*(*(v1 + 24) + 4 * (*(*(v190 + 1) + 76) & 7)) + (*(*(v190 + 1) + 76) >> 3));
    v235[0] = 0;
    physx::writeCompressedContact(v9, v176, 0, (v183 + 24), v183, (v183 + 8), v235, (v183 + 16), 4 * v176, v182, 0, 0, v228, (v183 + 25), 0, *(v1 + 6) + 11848, v188, 0, 0, 0, 0, 0);
    v8 = v179 + 1;
    v10 = v186;
  }

  while (v187 != v8);
LABEL_177:
  v184 = *(*(v1 + 5) + 400);
  pthread_mutex_lock((v184 + 8));
  *v4 = *v184;
  *v184 = v4;

  return pthread_mutex_unlock((v184 + 8));
}

void physx::shdfnd::sort<physx::Dy::ContactPatch *,physx::Dy::SortBoundsPredicateManifold,physx::shdfnd::ReflectionAllocator<physx::Dy::ContactPatch *>>(uint64_t a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v39 = v41;
  v36 = 0x2000000000;
  v37 = v41;
  v38 = 0;
  if (a2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = a2 - 1;
  v5 = a1 + 8;
  v6 = v41;
  memset(v41, 0, sizeof(v41));
  while (1)
  {
    while (1)
    {
      if (v4 <= v3)
      {
        goto LABEL_34;
      }

      if ((v4 - v3) <= 4)
      {
        break;
      }

      v7 = *(a1 + 8 * ((v3 + v4) / 2));
      v8 = (v3 + v4 + ((v3 + v4) >> 31)) >> 1;
      v9 = *(a1 + 8 * v3);
      v10 = *(v9 + 24);
      if (*(v7 + 24) < v10)
      {
        *(a1 + 8 * v3) = v7;
        *(a1 + 8 * v8) = v9;
        v7 = v9;
        v9 = *(a1 + 8 * v3);
        v10 = *(v9 + 24);
      }

      v11 = (a1 + 8 * v4);
      if (*(*v11 + 24) >= v10)
      {
        v10 = *(*v11 + 24);
        v9 = *v11;
      }

      else
      {
        *(a1 + 8 * v3) = *v11;
        *v11 = v9;
        v7 = *(a1 + 8 * v8);
      }

      if (v10 < *(v7 + 24))
      {
        *(a1 + 8 * v8) = v9;
        *v11 = v7;
        v7 = *(a1 + 8 * v8);
      }

      *(a1 + 8 * v8) = *(v11 - 1);
      *(v11 - 1) = v7;
      v12 = v4 - 1;
      v13 = v3;
      LODWORD(v14) = v4 - 1;
      while (1)
      {
        v15 = 0;
        v16 = *(v7 + 24);
        v17 = v13;
        v18 = (a1 + 8 * v13);
        do
        {
          v20 = v18[1];
          ++v18;
          v19 = v20;
          ++v15;
        }

        while (*(v20 + 24) < v16);
        v14 = v14;
        do
        {
          v21 = a1 + 8 * v14--;
          v22 = *(v21 - 8);
        }

        while (v16 < *(v22 + 24));
        if (v17 + v15 >= v14)
        {
          break;
        }

        *v18 = v22;
        *(a1 + 8 * v14) = v19;
        v7 = *(a1 + 8 * v12);
        v13 = v15 + v17;
      }

      *v18 = v7;
      *(a1 + 8 * v12) = v19;
      v23 = v36;
      v24 = HIDWORD(v36) - 1;
      if (v17 - v3 + v15 >= v4 - v17 - v15)
      {
        if (v36 >= v24)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Dy::ContactPatch *>>::grow(v35);
          v23 = v36;
          v6 = v37;
        }

        LODWORD(v36) = v23 + 1;
        *(v6 + v23) = v15 + v17 + 1;
        v26 = v36;
        LODWORD(v36) = v36 + 1;
        *(v6 + v26) = v4;
        v4 = v17 + v15 - 1;
      }

      else
      {
        if (v36 >= v24)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Dy::ContactPatch *>>::grow(v35);
          v23 = v36;
          v6 = v37;
        }

        LODWORD(v36) = v23 + 1;
        *(v6 + v23) = v3;
        v25 = v36;
        LODWORD(v36) = v36 + 1;
        *(v6 + v25) = v17 - 1 + v15;
        v3 = v17 + v15 + 1;
      }
    }

    v27 = v3;
    v28 = v3 + 1;
    do
    {
      v29 = v27++;
      v30 = v28;
      v31 = v29;
      v32 = v29;
      do
      {
        if (*(*(v5 + 8 * v31) + 24) < *(*(a1 + 8 * v32) + 24))
        {
          v32 = v30;
        }

        ++v31;
        ++v30;
      }

      while (v31 < v4);
      if (v32 != v29)
      {
        v33 = *(a1 + 8 * v32);
        *(a1 + 8 * v32) = *(a1 + 8 * v29);
        *(a1 + 8 * v29) = v33;
      }

      ++v28;
    }

    while (v27 != v4);
LABEL_34:
    v34 = v36;
    if (!v36)
    {
      break;
    }

    LODWORD(v36) = v36 - 1;
    v4 = *(v6 + (v34 - 1));
    LODWORD(v36) = v34 - 2;
    v3 = *(v6 + (v34 - 2));
  }

  if (v38)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v40)
      {
        physx::shdfnd::TempAllocator::deallocate(&v39, v39);
      }
    }
  }
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Dy::ContactPatch *>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  if (v2)
  {
    v3 = 4 * v2;
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ContactPatch *>::getName() [T = physx::Dy::ContactPatch *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = (*(*(v4 + 24) + 16))(v4 + 24, v3, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  }

  else
  {
    v6 = 0;
  }

  result = memcpy(v6, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v6;
  return result;
}

void physx::Dy::SolverArticulationUpdateTask::~SolverArticulationUpdateTask(physx::Dy::SolverArticulationUpdateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::SolverArticulationUpdateTask::runInternal(physx::Dy::SolverArticulationUpdateTask *this)
{
  v2 = *(this + 9);
  v3 = physx::shdfnd::SListImpl::pop(*(v2 + 400));
  if (!v3)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = (*(*(v4 + 24) + 16))(v4 + 24, 12343, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v6)
    {
      v3 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v3 - 8) = v3 - v6;
    }

    else
    {
      v3 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v3, *(v2 + 408));
  }

  *(v3 + 11880) = 0;
  *(v3 + 11888) = 0;
  if (*(this + 16))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(this + 7);
    do
    {
      v11 = *(*(this + 6) + 8 * v8);
      v12 = (v10 + v7);
      v13 = v11[8];
      v15 = v11[5];
      v14 = v11[6];
      v12[4] = v11[7];
      v12[5] = v13;
      v12[2] = v15;
      v12[3] = v14;
      v16 = v11[4];
      *v12 = v11[3];
      v12[1] = v16;
      v10 = *(this + 7);
      if (v9 <= *(v10 + v7 + 92))
      {
        v9 = *(v10 + v7 + 92);
      }

      ++v8;
      v7 += 96;
    }

    while (v8 < *(this + 16));
    v17 = (v3 + 12160);
    *(v3 + 12168) = 0;
    if ((*(v3 + 12172) & 0x7FFFFFFFu) < v9)
    {
      physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v3 + 12160, v9);
    }
  }

  else
  {
    v9 = 0;
    v17 = (v3 + 12160);
  }

  *(v3 + 12168) = v9;
  *(v3 + 12184) = 0;
  if ((*(v3 + 12188) & 0x7FFFFFFFu) < v9)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v3 + 12176, v9);
  }

  *(v3 + 12184) = v9;
  v18 = *(this + 20);
  v19 = *(this + 5);
  v62[0] = &unk_1F5D1DC80;
  v62[1] = v19 + 11848;
  v62[2] = v3 + 11872;
  v62[3] = v3 + 11824;
  v62[4] = v3 + 12208;
  v20 = *(this + 16);
  if (v20)
  {
    v57 = v17;
    v58 = v3;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = *(this + 7);
    do
    {
      v28 = *(this + 5);
      v29 = *(*(this + 6) + 8 * v22);
      v61 = 0;
      v30 = *(this + 9);
      v31 = *(v30 + 88);
      v32 = *(v28 + 12264);
      v59 = *(v30 + 104);
      v60 = *(v30 + 112);
      v33 = physx::Dy::ArticulationPImpl::sComputeUnconstrainedVelocities[*(*(v27 + v21) + 40)];
      if (v33)
      {
        v34 = v33(v27 + v21, v62, v32 + 48 * v18, &v61, &v59, *(v30 + 768), *v57, *(v58 + 12176), v31);
        v27 = *(this + 7);
        v20 = *(this + 16);
      }

      else
      {
        v34 = 0;
      }

      *(v27 + v21 + 93) = v34;
      if (v25 <= *(v27 + v21 + 88))
      {
        v25 = *(v27 + v21 + 88);
      }

      if (v26 <= *(v27 + v21 + 90))
      {
        v26 = *(v27 + v21 + 90);
      }

      v35 = *(*(v29 + 112) + 12);
      if (v35 >> 8 > v23)
      {
        v23 = v35 >> 8;
      }

      if (*(*(v29 + 112) + 12) > v24)
      {
        v24 = *(*(v29 + 112) + 12);
      }

      v18 += 64;
      ++v22;
      v21 += 96;
    }

    while (v22 < v20);
    v19 = *(this + 5);
    v3 = v58;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
  }

  do
  {
    v36 = *(v19 + 12240);
    if (v36 <= v24)
    {
      v37 = v24;
    }

    else
    {
      v37 = *(v19 + 12240);
    }

    v38 = *(v19 + 12240);
    atomic_compare_exchange_strong((v19 + 12240), &v38, v37);
  }

  while (v38 != v36);
  v39 = *(this + 5);
  do
  {
    v40 = *(v39 + 12244);
    if (v40 <= v23)
    {
      v41 = v23;
    }

    else
    {
      v41 = *(v39 + 12244);
    }

    v42 = *(v39 + 12244);
    atomic_compare_exchange_strong((v39 + 12244), &v42, v41);
  }

  while (v42 != v40);
  v43 = *(this + 5);
  do
  {
    v44 = *(v43 + 12248);
    if (v44 <= v25)
    {
      v45 = v25;
    }

    else
    {
      v45 = *(v43 + 12248);
    }

    v46 = *(v43 + 12248);
    atomic_compare_exchange_strong((v43 + 12248), &v46, v45);
  }

  while (v46 != v44);
  v47 = *(this + 5);
  do
  {
    v48 = *(v47 + 12252);
    if (v48 <= v26)
    {
      v49 = v26;
    }

    else
    {
      v49 = *(v47 + 12252);
    }

    v50 = *(v47 + 12252);
    atomic_compare_exchange_strong((v47 + 12252), &v50, v49);
  }

  while (v50 != v48);
  v51 = *(this + 5);
  do
  {
    v52 = *(v51 + 12256);
    if (v52 <= v9)
    {
      v53 = v9;
    }

    else
    {
      v53 = *(v51 + 12256);
    }

    v54 = *(v51 + 12256);
    atomic_compare_exchange_strong((v51 + 12256), &v54, v53);
  }

  while (v54 != v52);
  v55 = *(*(this + 9) + 400);
  pthread_mutex_lock((v55 + 8));
  *v3 = *v55;
  *v55 = v3;
  return pthread_mutex_unlock((v55 + 8));
}

void physx::Dy::PxsSolverEndTask::~PxsSolverEndTask(physx::Dy::PxsSolverEndTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::PxsSolverEndTask::runInternal(physx::Dy::PxsSolverEndTask *this)
{
  v2 = **(this + 6);
  *(v2 + 12316) += *(v2 + 12212);
  v3 = *(v2 + 12104);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 12096);
    do
    {
      v6 = (v5 + (v4 << 6));
      v7 = *(v6 + 2);
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      *v7 = *(v6 + 6);
      *(v7 + 24) = *(v6 + 40);
      *(v7 + 25) = *(v6 + 41);
      *(v7 + 16) = *(v6 + 6);
      v10 = *(v6 + 2);
      if (v10 >= 2)
      {
        v11 = *(v2 + 12112);
        v12 = *(v6 + 1);
        v13 = *(v12 + 40);
        v14 = *(v12 + 50);
        v15 = v10 - 1;
        v16 = *v6 + 1;
        do
        {
          v17 = *(*(v11 + 8 * v16) + 24);
          *(v17 + 72) = v13;
          *(v17 + 82) = v14;
          ++v16;
          --v15;
        }

        while (v15);
      }

      if (v8)
      {
        v18 = v9 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = *v6;
        v23 = *(v6 + 7);
        v24 = *(v2 + 12112);
        v25 = *(this + 22);
        v26 = *(v25 + 32);
        do
        {
          v27 = *(v23 + 2 * v19);
LABEL_12:
          v28 = *(*(*(v24 + 8 * v22) + 24) + 108);
          v29 = v26 + 32 * (*(v25 + 4 * (v28 & 7)) + (v28 >> 3));
          while (1)
          {
            v30 = v27 - v21;
            v31 = v27 <= v21 ? 0 : *(v29 + 24);
            if (v27 <= v21 && *(v29 + 24))
            {
              break;
            }

            if (v30 >= v31 - v20)
            {
              v30 = v31 - v20;
            }

            v21 += v30;
            v20 += v30;
            if (v20 == v31)
            {
              v20 = 0;
              ++v22;
              goto LABEL_12;
            }
          }

          v32 = *(v29 + 16);
          if (v32)
          {
            *(v32 + 4 * v20) = *(v8 + 4 * v19);
          }

          ++v19;
        }

        while (v19 != v9);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  *(v2 + 12104) = 0;
  physx::PxcNpMemBlockPool::releaseConstraintBlocks(*(v2 + 11864), v2 + 11848);
  v33 = *(*(this + 5) + 400);
  pthread_mutex_lock((v33 + 8));
  *v2 = *v33;
  *v33 = v2;

  return pthread_mutex_unlock((v33 + 8));
}

void physx::Dy::PxsSolverSetupSolveTask::~PxsSolverSetupSolveTask(physx::Dy::PxsSolverSetupSolveTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PxsSolverSetupSolveTask::runInternal(physx::Dy::PxsSolverSetupSolveTask *this)
{
  v1 = this;
  v2 = *(this + 5);
  v3 = **(this + 6);
  v4 = *(v3 + 12032);
  v244 = *(v2 + 544) + 32 * *(this + 42);
  v5 = *(v2 + 560);
  if (*(v3 + 11928))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *(v3 + 11920);
    v12 = *(v3 + 12032);
    do
    {
      v13 = *(v11 + 4 * v6) + v10;
      if (v10 >= v13)
      {
        v14 = 0;
        v10 += *(v11 + 4 * v6);
      }

      else
      {
        v14 = 0;
        v15 = v10;
        do
        {
          v16 = *(*(v3 + 12040) + 8 * v15 + 4);
          if (v16)
          {
            v17 = (v16 + v8);
            v18 = v7;
            do
            {
              v19 = (v4 + 48 * v8);
              if (*(v19 + 15))
              {
                if (v8 != v18)
                {
                  v20 = (v4 + 48 * v18);
                  v21 = *v19;
                  v22 = v19[2];
                  v20[1] = v19[1];
                  v20[2] = v22;
                  *v20 = v21;
                }

                v18 = (v18 + 1);
                v12 += 48;
              }

              else
              {
                --v16;
              }

              ++v8;
            }

            while (v17 != v8);
            if (v16)
            {
              v23 = *(v3 + 12040);
              v24 = v23 + 8 * v9;
              *v24 = v7;
              *(v24 + 4) = v16;
              v25 = **(v4 + 48 * v7 + 32);
              if (v25 == 5)
              {
                if (v16 == 1)
                {
                  LOBYTE(v25) = 5;
                }

                else
                {
                  v26 = v16 - 1;
                  v27 = v7 + 1;
                  LOBYTE(v25) = 5;
                  do
                  {
                    if (**(v4 + 48 * v27 + 32) == 1)
                    {
                      LOBYTE(v25) = 1;
                    }

                    ++v27;
                    --v26;
                  }

                  while (v26);
                }
              }

              *(v23 + 8 * v9++ + 6) = v25;
              ++v14;
            }

            v7 = v18;
          }

          ++v15;
        }

        while (v15 != v13);
        v11 = *(v3 + 11920);
        v10 += *(v11 + 4 * v6);
      }

      *(v11 + 4 * v6++) = v14;
    }

    while (v6 < *(v3 + 11928));
    v2 = *(v1 + 5);
  }

  else
  {
    v9 = 0;
    LODWORD(v7) = 0;
    v12 = *(v3 + 12032);
  }

  v28 = -1431655765 * ((v12 - v4) >> 4);
  *(v3 + 11896) = v28;
  *(v3 + 12048) = v9;
  *(v3 + 11904) = v7 - v28;
  *(v3 + 12200) = v7;
  if (*(v2 + 148))
  {
    v29 = *(v3 + 12064);
    *(v3 + 12088) = 0;
    if ((*(v3 + 12092) & 0x7FFFFFFFu) < v9)
    {
      physx::shdfnd::Array<physx::PxConstraintBatchHeader,physx::shdfnd::ReflectionAllocator<physx::PxConstraintBatchHeader>>::recreate(v3 + 12080, v9);
    }

    v30 = *(v3 + 12080);
    *(v3 + 11944) = 0;
    v31 = *(v3 + 11932) & 0x7FFFFFFF;
    if ((*(v3 + 11948) & 0x7FFFFFFFu) < v31)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v3 + 11936, v31);
    }

    v247 = v5;
    v249 = v1;
    v245 = v29;
    if (*(v3 + 11928))
    {
      v32 = 0;
      v33 = 0;
      LODWORD(v34) = 0;
      v35 = 0;
      do
      {
        v36 = (*(*(v3 + 11920) + 4 * v32) + v34);
        if (v34 >= v36)
        {
          v37 = v35;
        }

        else
        {
          v34 = v34;
          v37 = v35;
          do
          {
            v38 = (*(v3 + 12040) + 8 * v34);
            v39 = *(v38 + 3);
            if (v39 <= 8)
            {
              v40 = *(v38 + 2);
              v41 = 1 << v39;
              if ((v41 & 0x2A) != 0)
              {
                if (*(v38 + 2))
                {
                  v42 = 0;
                  v43 = 0;
                  do
                  {
                    v44 = v29 + v42;
                    v45 = v4 + 48 * (v43 + *v38);
                    v46 = *(v45 + 32);
                    v47 = *(v46 + 2);
                    *(v44 + 30) = (16 * *(v45 + 30) - v47) >> 4;
                    *(v44 + 32) = v46 + v47;
                    *v44 = *v45;
                    *(v44 + 8) = *(v45 + 8);
                    *(v44 + 20) = *(v45 + 20);
                    *(v44 + 16) = *(v45 + 16);
                    *(v44 + 40) = 0;
                    *(v44 + 28) = 0;
                    ++v43;
                    v42 += 48;
                  }

                  while (48 * v40 != v42);
                  v48 = *(v46 + v47);
                  v29 += v42;
                  v49 = v40;
                }

                else
                {
                  v49 = 0;
                  v48 = 0;
                }

                *v30 = v33;
                *(v30 + 4) = v40;
                *(v30 + 6) = v48;
                v30 += 8;
                v37 = (v37 + 1);
                v33 += v49;
              }

              else if ((v41 & 0x180) != 0)
              {
                v50 = 0;
                v51 = 0;
                v52 = v4 + 48 * *v38;
                v53 = *(v52 + 32);
                v54 = *(v53 + 2);
                v55 = (v53 + v54);
                LODWORD(v54) = 16 * *(v52 + 30) - v54;
                v56 = *v55;
                v57 = v54 >> 4;
                do
                {
                  v58 = v29 + v50;
                  v59 = v4 + 48 * (v51 + *v38);
                  *(v58 + 30) = v57;
                  *(v58 + 32) = v55;
                  *v58 = *v59;
                  *(v58 + 8) = *(v59 + 8);
                  *(v58 + 20) = *(v59 + 20);
                  *(v58 + 16) = *(v59 + 16);
                  *(v58 + 40) = 0;
                  *(v58 + 28) = 0;
                  ++v51;
                  v50 += 48;
                }

                while (v50 != 192);
                *v30 = v33;
                *(v30 + 4) = v40;
                *(v30 + 6) = v56;
                v30 += 8;
                v37 = (v37 + 1);
                v33 += v40;
                v29 += v50;
              }
            }

            ++v34;
          }

          while (v34 != v36);
        }

        _CF = v37 >= v35;
        v61 = v37 - v35;
        if (v61 != 0 && _CF)
        {
          v251 = v61;
          v62 = *(v3 + 11944);
          if ((*(v3 + 11948) & 0x7FFFFFFFu) <= v62)
          {
            physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v3 + 11936, &v251);
          }

          else
          {
            *(*(v3 + 11936) + 4 * v62) = v61;
            ++*(v3 + 11944);
          }
        }

        ++v32;
        LODWORD(v34) = v36;
        v35 = v37;
      }

      while (v32 < *(v3 + 11928));
    }

    else
    {
      v33 = 0;
    }

    v63 = -1431655765 * ((v29 - v245) >> 4);
    *(v3 + 12088) = (v30 - *(v3 + 12080)) >> 3;
    *(v3 + 11912) = v33 - v63;
    *(v3 + 11900) = v63;
    *(v3 + 12204) = v33;
    v1 = v249;
    v2 = *(v249 + 5);
    v5 = v247;
  }

  v64 = *(v3 + 12032);
  v65 = *(v3 + 12064);
  v66 = v2 + 684;
  v67 = physx::Cm::FlushPool::allocate(*(v2 + 744), 248, 0x10u);
  *v67 = *(v3 + 12240);
  v68 = *(v1 + 42);
  *(v67 + 24) = *(*(v1 + 6) + 8);
  *(v67 + 28) = v68;
  *(v67 + 32) = *(v3 + 12288);
  *(v67 + 40) = *(v3 + 12296);
  *(v67 + 128) = 0;
  *(v67 + 136) = 0;
  *(v67 + 120) = 0;
  *(v67 + 144) = 0;
  v69 = *(v1 + 5);
  v70 = *(v69 + 8);
  *(v67 + 200) = *(v70 + 8);
  *(v67 + 8) = v244;
  *(v67 + 16) = v5;
  *(v67 + 208) = *(v70 + 16);
  *(v67 + 216) = v66;
  *(v67 + 88) = *(v3 + 11992);
  v71 = *(v3 + 11968);
  *(v67 + 148) = 0;
  v72 = *(v3 + 12040);
  *(v67 + 48) = v64;
  *(v67 + 56) = v72;
  *(v67 + 64) = *(v3 + 12048);
  *(v67 + 72) = *(v3 + 11920);
  *(v67 + 80) = *(v3 + 11928);
  v73 = *(v1 + 7);
  *(v67 + 104) = v71;
  *(v67 + 112) = v73;
  *(v67 + 184) = *(v3 + 11936);
  LODWORD(v71) = *(v3 + 11944);
  v74 = *(v3 + 12080);
  *(v67 + 176) = *(v3 + 12088);
  *(v67 + 192) = v71;
  *(v67 + 196) = 0;
  *(v67 + 160) = v65;
  *(v67 + 168) = v74;
  *(v67 + 224) = *(v3 + 12256);
  *(v67 + 152) = *(v69 + 88);
  if ((8 * *(v3 + 12232)) <= 1)
  {
    v75 = 1;
  }

  else
  {
    v75 = 8 * *(v3 + 12232);
  }

  v76 = (*(**(v1 + 2) + 8))(*(v1 + 2));
  v77 = (*(*v76 + 8))(v76);
  v78 = (v75 + *(v3 + 12048) - 1) / v75;
  if (v78 >= v77)
  {
    v79 = v77;
  }

  else
  {
    v79 = (v75 + *(v3 + 12048) - 1) / v75;
  }

  if (v79 >= 2)
  {
    v80 = 8 * v78 / (2 * v79);
    if (v80 <= 8)
    {
      v80 = 8;
    }

    *(v67 + 96) = v80;
    v81 = 1 - v79;
    do
    {
      v82 = physx::Cm::FlushPool::allocate(*(*(v1 + 5) + 744), 72, 0x10u);
      v83 = *(v1 + 5);
      v84 = *(v83 + 148);
      v85 = *(v1 + 22);
      v86 = *(v83 + 768);
      *(v82 + 16) = 0;
      *(v82 + 24) = 0;
      *(v82 + 32) = 0;
      v87 = &unk_1F5D1D8F8;
      *v82 = &unk_1F5D1D8F8;
      *(v82 + 8) = v86;
      *(v82 + 40) = v67;
      *(v82 + 48) = v83;
      *(v82 + 56) = v84;
      *(v82 + 64) = v85;
      v88 = *(v1 + 3);
      *(v82 + 32) = 1;
      *(v82 + 24) = v88;
      if (v88)
      {
        (*(*v88 + 32))(v88);
        *(v82 + 16) = *(*(v82 + 24) + 16);
        v87 = *v82;
      }

      v87[5](v82);
      _CF = __CFADD__(v81++, 1);
    }

    while (!_CF);
    physx::Dy::solveParallel(*(v1 + 5), v67, *(v1 + 22));
    v89 = (*(*(v1 + 6) + 12) & 0x7FFFFFFF) + *(*(v1 + 6) + 8);
    if (*(v67 + 148) < v89)
    {
      v90 = 30000;
      while (*(v67 + 148) < v89)
      {
        if (!--v90)
        {
          sched_yield();
          v90 = 10000;
        }
      }
    }

    return;
  }

  *(v3 + 12168) = 0;
  v91 = *(v3 + 12256);
  if ((*(v3 + 12172) & 0x7FFFFFFFu) < v91)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v3 + 12160, v91);
    v91 = *(v3 + 12256);
  }

  *(v3 + 12168) = v91;
  *(v3 + 12184) = 0;
  if ((*(v3 + 12188) & 0x7FFFFFFFu) < v91)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v3 + 12176, v91);
    v91 = *(v3 + 12256);
  }

  *(v3 + 12184) = v91;
  v92 = *(v3 + 12176);
  *(v67 + 232) = *(v3 + 12160);
  *(v67 + 240) = v92;
  v93 = *(*(v1 + 5) + 8 * *(*(v1 + 5) + 148) + 608);
  (*(*v93 + 32))(v93, v67);
  v98 = *(v1 + 6);
  v99 = *(v98 + 8);
  if (v99)
  {
    v100 = 0;
    v101 = 0;
    v102 = v99 - 1;
    v103 = v5 + 112 * *(v1 + 42) + 112;
    v243 = vdup_n_s32(0x4B189680u);
    v104 = v244;
    do
    {
      v105 = v101 + 4;
      if (v101 + 4 >= v102)
      {
        v105 = v102;
      }

      _X9 = (*(v3 + 11968) + 8 * v105);
      v108 = *_X9;
      _X9 += 16;
      _X10 = v108;
      __asm { PRFM            #0, [X10] }

      v113 = *(v3 + 11992);
      _X26 = (v113 + v100);
      __asm
      {
        PRFM            #0, [X26,#0x80]
        PRFM            #0, [X9]
      }

      v117 = *(v1 + 7);
      _X8 = v117 + 8 * v105;
      __asm { PRFM            #0, [X8] }

      v120 = *(v1 + 5);
      v121 = *(v120 + 88);
      v122 = *(v103 + 108);
      if (!v122)
      {
        goto LABEL_97;
      }

      if (v122)
      {
        *(v113 + v100) = 0;
        *(v104 + v100) = 0;
        if ((v122 & 2) == 0)
        {
LABEL_92:
          if ((v122 & 4) == 0)
          {
            goto LABEL_93;
          }

          goto LABEL_103;
        }
      }

      else if ((v122 & 2) == 0)
      {
        goto LABEL_92;
      }

      *(v113 + v100 + 4) = 0;
      *(v104 + v100 + 4) = 0;
      if ((v122 & 4) == 0)
      {
LABEL_93:
        if ((v122 & 8) != 0)
        {
          goto LABEL_104;
        }

        goto LABEL_94;
      }

LABEL_103:
      *(v113 + v100 + 8) = 0;
      *(v104 + v100 + 8) = 0;
      if ((v122 & 8) != 0)
      {
LABEL_104:
        _X26[2].i32[0] = 0;
        *(v104 + v100 + 16) = 0;
        if ((v122 & 0x10) == 0)
        {
LABEL_95:
          if ((v122 & 0x20) == 0)
          {
            goto LABEL_97;
          }

LABEL_96:
          *(v113 + v100 + 24) = 0;
          *(v104 + v100 + 24) = 0;
          goto LABEL_97;
        }

        goto LABEL_105;
      }

LABEL_94:
      if ((v122 & 0x10) == 0)
      {
        goto LABEL_95;
      }

LABEL_105:
      *(v113 + v100 + 20) = 0;
      *(v104 + v100 + 20) = 0;
      if ((v122 & 0x20) != 0)
      {
        goto LABEL_96;
      }

LABEL_97:
      v123 = *(v103 + 8);
      v124 = v123 + _X26[1].f32[0];
      v125 = *(v103 + 40);
      v126 = _X26[2].f32[0];
      v127 = _X26[2].f32[1];
      v128 = *(v103 + 52);
      v129 = _X26[3].f32[0];
      v130 = *(v103 + 64);
      v131 = ((v126 * v125) + (v127 * v128)) + (v129 * v130);
      v132 = *(v103 + 32);
      v133 = *(v103 + 44);
      v134 = vadd_f32(vmul_n_f32(v132, v126), vmul_n_f32(v133, v127));
      v135 = *(v103 + 56);
      v136 = vadd_f32(v134, vmul_n_f32(v135, v129));
      v137 = *(v103 + 16);
      *v96.f32 = vadd_f32(v136, v137);
      v138 = *(v103 + 24);
      v139 = v131 + v138;
      v140 = (COERCE_FLOAT(vmul_f32(*&v96, *&v96).i32[1]) + (v96.f32[0] * v96.f32[0])) + (v139 * v139);
      *(v103 + 104) = (v121 * v124) + *(v103 + 104);
      v141 = *v103;
      *&v97 = vadd_f32(*v103, *_X26);
      *(v103 + 96) = vadd_f32(vmul_n_f32(*&v97, v121), *(v103 + 96));
      *v103 = vadd_f32(v141, *(v104 + v100));
      *(v103 + 8) = v123 + *(v104 + v100 + 8);
      v142 = *(v104 + v100 + 16);
      v141.i32[0] = *(v104 + v100 + 20);
      v143 = *(v104 + v100 + 24);
      *(v103 + 16) = vadd_f32(v137, vadd_f32(vadd_f32(vmul_n_f32(v132, v142), vmul_n_f32(v133, v141.f32[0])), vmul_n_f32(v135, v143)));
      *(v103 + 24) = v138 + (((v125 * v142) + (v128 * v141.f32[0])) + (v130 * v143));
      v250 = v121;
      if (v140 != 0.0)
      {
        v144 = sqrtf(v140);
        v248 = v97;
        if (v144 <= 10000000.0)
        {
          v246 = v96;
        }

        else
        {
          if (v140 <= 0.0)
          {
            v94.i64[0] = 0;
            v246 = v94;
            v139 = 0.0;
          }

          else
          {
            *v95.f32 = vmul_f32(vmul_n_f32(*v96.f32, 1.0 / v144), v243);
            v246 = v95;
            v139 = (v139 * (1.0 / v144)) * 10000000.0;
          }

          v144 = 10000000.0;
        }

        v145 = __sincosf_stret((v121 * v144) * 0.5);
        v96 = v246;
        *_Q2.i8 = vmul_n_f32(*v246.f32, v145.__sinval / v144);
        v147 = *(v103 + 80);
        *&_Q2.i32[2] = v139 * (v145.__sinval / v144);
        v148 = vextq_s8(vextq_s8(_Q2, _Q2, 0xCuLL), _Q2, 8uLL);
        *&_Q2.i32[3] = -*_Q2.i32;
        v149 = vzip1q_s32(vrev64q_s32(v147), v148);
        v150 = vzip2q_s32(v148, v147);
        v151 = vrev64q_s32(v148);
        v148.f32[3] = -*&_Q2.i32[1];
        v152 = vzip1q_s32(v147, v147);
        v152.i32[0] = *(v103 + 88);
        v149.i32[1] = v152.i32[0];
        _Q0 = vaddq_f32(vmulq_n_f32(v147, v145.__cosval), vmlsq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v147, 3), v147, 4uLL), _Q2), 0, v147), v152, v148), vzip1q_s32(v151, v150), v149));
        _Q1 = vmulq_f32(_Q0, _Q0);
        _Q2.i32[0] = _Q0.i32[2];
        __asm { FMLA            S1, S2, V0.S[2] }

        _Q2.i32[0] = _Q0.i32[3];
        __asm { FMLA            S1, S2, V0.S[3] }

        _Q1.f32[0] = sqrtf(_Q1.f32[0]);
        v95 = vdupq_lane_s32(*_Q1.f32, 0);
        *(v103 + 80) = vdivq_f32(_Q0, v95);
        v104 = v244;
        v97 = v248;
      }

      *(v113 + v100) = v97;
      _X26->i32[1] = DWORD1(v97);
      _X26[1].f32[0] = v124;
      _X26[2] = *v96.f32;
      _X26[3].f32[0] = v139;
      v155 = *(v117 + 8 * v101);
      v156 = *(v155 + 40);
      v94 = *v156;
      *v155 = *v156;
      *(v155 + 16) = *(v156 + 16);
      *(v155 + 24) = *(v156 + 24);
      v157 = *(v103 + 80);
      *v156 = v157;
      _Q5 = *(v103 + 84);
      *(v156 + 4) = _Q5;
      *(v156 + 20) = *(v103 + 100);
      v159 = *v103;
      *(v156 + 64) = *v103;
      v160 = *(v103 + 8);
      *(v156 + 72) = v160;
      v161 = *(v103 + 16);
      *(v156 + 80) = v161;
      v162 = *(v103 + 24);
      *(v156 + 88) = v162;
      v163 = *(*(*(v1 + 22) + 136) + 4 * *(*(*(v1 + 22) + 272) + 4 * (*(v103 + 72) & 0x1FFFFFF)));
      v94.i32[0] = *(v156 + 140);
      if (*(v120 + 100) != 1)
      {
        v174 = v250;
        if (*(v120 + 102) == 1)
        {
          v175 = 1.0;
          if (v163)
          {
            v176 = *(v156 + 152);
            if (v176 >= 2)
            {
              v175 = 1.0 / v176;
            }
          }

          *(v155 + 76) = v175;
        }

        if (v94.f32[0] < 0.2 || v94.f32[0] < v250)
        {
          v177 = *(v156 + 112);
          v178 = *(v156 + 116);
          v179 = *(v156 + 120);
          if (v177 <= 0.0)
          {
            v180 = 1.0;
          }

          else
          {
            v180 = 1.0 / v177;
          }

          if (v178 <= 0.0)
          {
            v181 = 1.0;
          }

          else
          {
            v181 = 1.0 / v178;
          }

          if (v179 <= 0.0)
          {
            v182 = 1.0;
          }

          else
          {
            v182 = 1.0 / v179;
          }

          v183 = _X26[1].f32[0];
          v184 = _X26[2].f32[0] + _X26[2].f32[0];
          v185 = _X26[2].f32[1] + _X26[2].f32[1];
          _S17 = _X26[3].f32[0] + _X26[3].f32[0];
          _S18 = _Q5.i32[2];
          __asm
          {
            FMLA            S19, S18, V5.S[2]
            FMLA            S18, S17, V5.S[1]
          }

          v190 = (vmuls_lane_f32(-((_Q5.f32[0] * _S17) - (_Q5.f32[1] * v185)), _Q5, 2) + (v184 * _S19)) + (v157 * _S18);
          v191 = (vmuls_lane_f32(-((_Q5.f32[1] * v184) - (v157 * _S17)), _Q5, 2) + (v185 * _S19)) + (_Q5.f32[0] * _S18);
          __asm { FMLA            S6, S18, V5.S[1] }

          v193 = vadd_f32(*(v113 + v100), *(v155 + 48));
          *(v155 + 48) = v193;
          v194 = v183 + *(v155 + 56);
          *(v155 + 56) = v194;
          v195 = v190 + *(v155 + 64);
          v196 = v191 + *(v155 + 68);
          *(v155 + 64) = v195;
          *(v155 + 68) = v196;
          v197 = _S6 + *(v155 + 72);
          *(v155 + 72) = v197;
          v198 = *(v156 + 124);
          if (v198 == 0.0)
          {
            v198 = 1.0;
          }

          v199 = (((COERCE_FLOAT(vmul_f32(v193, v193).i32[1]) + (v193.f32[0] * v193.f32[0])) + (v194 * v194)) + ((((v181 * (v196 * v196)) + ((v195 * v195) * v180)) + ((v197 * v197) * v182)) * v198)) * 0.5;
          v200 = (*(v156 + 148) + 1);
          v201 = *(v156 + 132) * v200;
          if (v199 >= v201)
          {
            *(v155 + 48) = 0;
            *(v155 + 56) = 0;
            v202 = 1.0;
            *(v155 + 64) = 0;
            *(v155 + 72) = 0;
            if (v201 != 0.0)
            {
              v202 = fminf(v199 / v201, 2.0) * 0.5;
            }

            v203 = (v250 * (v200 + -1.0)) + (v202 * 0.4);
            *(v156 + 144) = v203;
            *(v155 + 28) = 8 * (v94.f32[0] == 0.0);
            goto LABEL_173;
          }
        }

        goto LABEL_172;
      }

      v164 = *(v156 + 112);
      v165 = *(v156 + 116);
      if (v164 <= 0.0)
      {
        v166 = 1.0;
      }

      else
      {
        v166 = 1.0 / v164;
      }

      if (v165 <= 0.0)
      {
        v167 = 1.0;
      }

      else
      {
        v167 = 1.0 / v165;
      }

      v168 = *(v156 + 120);
      v169 = *(v156 + 124);
      v170 = v168 <= 0.0;
      v171 = 1.0 / v168;
      if (v170)
      {
        v171 = 1.0;
      }

      if (v169 == 0.0)
      {
        v169 = 1.0;
      }

      if (v163)
      {
        v172 = *(v156 + 152);
        if (v172 >= 0xA)
        {
          v172 = 10;
        }

        v173 = v172;
      }

      else
      {
        v173 = 0.0;
      }

      v204 = *(v113 + v100);
      v206 = _X26->f32[1];
      v205 = _X26[1].f32[0];
      v207 = _X26[2].f32[0] + _X26[2].f32[0];
      v208 = _X26[2].f32[1] + _X26[2].f32[1];
      _S27 = _X26[3].f32[0] + _X26[3].f32[0];
      _S18 = _Q5.i32[2];
      __asm
      {
        FMLA            S28, S18, V5.S[2]
        FMLA            S29, S27, V5.S[1]
      }

      v213 = (vmuls_lane_f32(-((_Q5.f32[0] * _S27) - (_Q5.f32[1] * v208)), _Q5, 2) + (v207 * _S28)) + (v157 * _S29);
      v214 = (vmuls_lane_f32(-((_Q5.f32[1] * v207) - (v157 * _S27)), _Q5, 2) + (v208 * _S28)) + (_Q5.f32[0] * _S29);
      __asm { FMLA            S6, S29, V5.S[1] }

      v216 = ((((v206 * v206) + (v204 * v204)) + (v205 * v205)) + (v169 * (((v167 * (v214 * v214)) + ((v213 * v213) * v166)) + ((_S6 * _S6) * v171)))) * 0.5;
      v217 = v173 * *(v156 + 136);
      v174 = v250;
      v218 = fmaxf(*(v155 + 60) - v250, 0.0);
      *(v155 + 60) = v218;
      v219 = v250 + *(v155 + 76);
      if (v219 > 1.0)
      {
        v219 = 1.0;
      }

      if (v216 >= v217)
      {
        *(v155 + 60) = 1069547520;
        if (v163)
        {
          v226 = v219;
        }

        else
        {
          v226 = 1.0;
        }

        goto LABEL_166;
      }

      if (!v163)
      {
        v226 = 1.0;
LABEL_166:
        v222 = (v155 + 28);
        v227 = *(v155 + 28);
        *(v155 + 76) = v226;
        LOWORD(v224) = v227 & 1;
LABEL_167:
        v225 = 4 * v224;
        goto LABEL_168;
      }

      if (v173 > 1.0)
      {
        v220 = (v250 * -0.5) + 1.0;
        *(v156 + 64) = vmul_n_f32(v159, v220);
        *(v156 + 72) = v220 * v160;
        *(v156 + 80) = vmul_n_f32(v161, v220);
        *(v156 + 88) = v220 * v162;
        v219 = (v219 * 0.75) + 0.025;
      }

      v221 = *(v156 + 136);
      v222 = (v155 + 28);
      v223 = *(v155 + 28);
      *(v155 + 76) = v219;
      v224 = v223 & 1;
      if (v218 != 0.0 || v216 >= (v221 * 0.25))
      {
        goto LABEL_167;
      }

      if (v224)
      {
        v225 = 1;
      }

      else
      {
        v225 = 3;
      }

      *v156 = *v155;
      *(v156 + 16) = *(v155 + 16);
      *(v156 + 24) = *(v155 + 24);
LABEL_168:
      *v222 = v225;
      if (v94.f32[0] < 0.2 || v94.f32[0] < v250)
      {
        v228 = v204 + *(v155 + 48);
        v229 = v206 + *(v155 + 52);
        v230 = v205 + *(v155 + 56);
        v231 = *(v155 + 68);
        v232 = v213 + *(v155 + 64);
        *(v155 + 48) = v228;
        *(v155 + 52) = v229;
        *(v155 + 56) = v230;
        v233 = v214 + v231;
        *(v155 + 64) = v232;
        *(v155 + 68) = v233;
        v234 = _S6 + *(v155 + 72);
        *(v155 + 72) = v234;
        v235 = *(v156 + 132);
        if (v216 >= v235)
        {
          v236 = ((((v229 * v229) + (v228 * v228)) + (v230 * v230)) + (v169 * (((v167 * (v233 * v233)) + ((v232 * v232) * v166)) + ((v234 * v234) * v171)))) * 0.5;
          v237 = (*(v156 + 148) + 1);
          if (v236 >= (v235 * v237))
          {
            *(v155 + 64) = 0;
            *(v155 + 72) = 0;
            v238 = 1.0;
            *(v155 + 48) = 0;
            *(v155 + 56) = 0;
            if (v235 != 0.0)
            {
              v238 = fminf(v236 / (v235 * v237), 2.0) * 0.5;
            }

            v203 = (v250 * (v237 + -1.0)) + (v238 * 0.4);
            *(v156 + 144) = v203;
            if (v94.f32[0] == 0.0)
            {
              *v222 = v225 | 8;
            }

            goto LABEL_173;
          }
        }
      }

LABEL_172:
      v203 = fmaxf(v94.f32[0] - v174, 0.0);
      *(v156 + 144) = v203;
LABEL_173:
      if (v203 == 0.0)
      {
        *(v155 + 28) |= 0x10u;
        *(v155 + 48) = 0;
        *(v155 + 56) = 0;
        *(v155 + 64) = 0;
        *(v155 + 72) = 0;
      }

      ++v101;
      v98 = *(v1 + 6);
      v100 += 32;
      v103 += 112;
    }

    while (v101 < *(v98 + 8));
  }

  if ((*(v98 + 12) & 0x7FFFFFFF) != 0)
  {
    v239 = 0;
    v240 = 0;
    do
    {
      v241 = *(v3 + 12288);
      v242 = physx::Dy::ArticulationPImpl::sUpdateBodies[*(*(v241 + v239) + 40)];
      if (v242)
      {
        v242(v241 + v239, *(*(v1 + 5) + 88));
        v98 = *(v1 + 6);
      }

      ++v240;
      v239 += 96;
    }

    while (v240 < (*(v98 + 12) & 0x7FFFFFFFu));
  }
}

void physx::Dy::PxsParallelSolverTask::~PxsParallelSolverTask(physx::Dy::PxsParallelSolverTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PxsSolverConstraintPartitionTask::~PxsSolverConstraintPartitionTask(physx::Dy::PxsSolverConstraintPartitionTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PxsSolverConstraintPartitionTask::runInternal(physx::Dy::PxsSolverConstraintPartitionTask *this)
{
  v1 = *(this + 6);
  v2 = *v1;
  v3 = *(*v1 + 12288);
  v4 = v1[3];
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = *(v3 + 93);
    if ((v4 & 0x7FFFFFFE) != 0)
    {
      v6 = *(v2 + 12264);
      v7 = 64;
      v8 = 1;
      do
      {
        v9 = v7;
        v10 = *(v3 + 96 * v8 + 93);
        if (v8 << 6 < (v10 + (v8 << 6)))
        {
          v11 = (v6 + 48 * v7);
          v12 = v7 + v10 - v7;
          do
          {
            v13 = (v6 + 48 * v5++);
            v14 = *v11;
            v15 = v11[2];
            v13[1] = v11[1];
            v13[2] = v15;
            *v13 = v14;
            v11 += 3;
            --v12;
          }

          while (v12);
          v1 = *(this + 6);
        }

        ++v8;
        v7 = v9 + 64;
      }

      while (v8 < (v1[3] & 0x7FFFFFFFu));
    }

    v16 = *(v2 + 12024) + v5;
    *(v2 + 12024) = v16;
  }

  else
  {
    v16 = *(v2 + 12024);
  }

  v17 = *(v2 + 12016);
  v18 = *(*(this + 5) + 544);
  v19 = *(this + 42);
  *(v2 + 11896) = 0;
  *(v2 + 11912) = 0;
  *(v2 + 11904) = 0;
  if (v16)
  {
    v23 = v18 + 32 * v19;
    v26 = v3;
    v28 = v17;
    v27 = *(v2 + 12296);
    v24 = v1[2];
    v25 = 32;
    v29 = v16;
    v20 = *(v2 + 12056);
    v30 = *(v2 + 12032);
    v31 = v20;
    memset(v32, 0, 12);
    v32[2] = v2 + 11920;
    v32[3] = v2 + 11952;
    v33 = *(this + 172);
    *(v2 + 12232) = physx::Dy::partitionContactConstraints(&v23);
    *(v2 + 11896) = v32[0];
    *(v2 + 11904) = *(v32 + 4);
  }

  else
  {
    v21 = *(v2 + 11920);
    v22 = (4 * *(v2 + 11932));

    bzero(v21, v22);
  }
}

void physx::Dy::UpdateContinuationTask::~UpdateContinuationTask(physx::Dy::UpdateContinuationTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::UpdateContinuationTask::runInternal(physx::Dy::UpdateContinuationTask *this)
{
  v1 = *(this + 5);
  v2 = *(this + 7);
  v3 = *(this + 6);
  v4 = *(v3 + 552);
  v5 = *(v1 + 140);
  v50 = *(v1 + 144);
  v6 = physx::Cm::FlushPool::allocate(*(v1 + 744), 48, 0x10u);
  *(v6 + 8) = *(v1 + 768);
  *(v6 + 16) = 0;
  *(v6 + 32) = 0;
  *v6 = &unk_1F5D1DAB8;
  *(v6 + 40) = v1;
  *(v6 + 32) = 1;
  *(v6 + 24) = v2;
  if (v2)
  {
    (*(*v2 + 32))(v2);
    *(v6 + 16) = *(*(v6 + 24) + 16);
  }

  v49 = v6;
  v7 = v50;
  if (v4)
  {
    v8 = v3;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *(v3 + 544);
    v58 = v1 + 696;
    v45 = v3 + 224;
    v46 = v14;
    v56 = v3;
    v47 = v5;
    v48 = v4;
    do
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = v10;
      v19 = *(v1 + 448) + 48 * v9;
      v72 = *(v1 + 480) + 32 * v11;
      v73 = *(v1 + 464) + 8 * v9;
      v63 = *(v1 + 632);
      v64 = *(v1 + 496) + 8 * v11;
      if (v4 <= v10 + 1)
      {
        v20 = v10 + 1;
      }

      else
      {
        v20 = v4;
      }

      v21 = 0;
      v70 = *(v1 + 648) + 4 * v11;
      v71 = v14 + 4 * v10;
      while (1)
      {
        v22 = v17 && v15 >= v5;
        if (v22 || v16 >= v7)
        {
          break;
        }

        v24 = *(v8 + 344) + 44 * *(v14 + 4 * v10);
        v15 += *(v24 + 8);
        v16 += *(v24 + 12);
        v21 = vadd_s32(*(v24 + 36), v21);
        v17 = vadd_s32(v21, vdup_lane_s32(v21, 1)).u32[0];
        if (v20 == ++v10)
        {
          v10 = v20;
          break;
        }
      }

      if ((v16 & 0x7FFFFFFF) + v15)
      {
        v65 = *(v1 + 432) + 48 * v9;
        v66 = *(v1 + 416) + 48 * v9;
        v67 = *(v1 + 664) + 32 * v12;
        v68 = *(v1 + 512) + 8 * v11;
        v69 = *(v1 + 528) + 8 * v13;
        v57 = v21;
        v52 = v13;
        v53 = v12;
        v55 = v9;
        v25 = *(v1 + 680);
        v51 = *(v1 + 688);
        v62 = *(v1 + 101);
        v74 = *(v1 + 744);
        if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
        {
          v26 = v11;
          pthread_mutex_lock(*v74);
          v11 = v26;
        }

        v27 = v10 - v18;
        v61 = v10 - v18;
        v54 = v11;
        v28 = v25 + v11;
        v59 = v25 + v11;
        v29 = physx::Cm::FlushPool::allocate(v74, 24, 0x10u);
        *v29 = 0;
        *(v29 + 8) = v15;
        *(v29 + 12) = v16 & 0x7FFFFFFF;
        *(v29 + 16) = v57;
        v30 = v29;
        v60 = v29;
        NotThreadSafe = physx::Cm::FlushPool::allocateNotThreadSafe(v74, 216, 0x10u);
        v32 = *(v1 + 680);
        v33 = *(v1 + 768);
        *(NotThreadSafe + 16) = 0;
        *(NotThreadSafe + 24) = 0;
        *(NotThreadSafe + 32) = 0;
        *NotThreadSafe = &unk_1F5D1D6C8;
        *(NotThreadSafe + 8) = v33;
        *(NotThreadSafe + 40) = v1;
        *(NotThreadSafe + 48) = v30;
        *(NotThreadSafe + 56) = v68;
        *(NotThreadSafe + 64) = v69;
        *(NotThreadSafe + 72) = 0;
        *(NotThreadSafe + 80) = v67;
        *(NotThreadSafe + 88) = v71;
        *(NotThreadSafe + 96) = v27;
        *(NotThreadSafe + 104) = v63;
        *(NotThreadSafe + 112) = v70;
        *(NotThreadSafe + 120) = v66;
        *(NotThreadSafe + 128) = v65;
        *(NotThreadSafe + 136) = v19;
        *(NotThreadSafe + 144) = v73;
        *(NotThreadSafe + 152) = v72;
        *(NotThreadSafe + 160) = v64;
        *(NotThreadSafe + 168) = v28;
        *(NotThreadSafe + 172) = v32;
        *(NotThreadSafe + 176) = v56;
        *(NotThreadSafe + 184) = v63;
        *(NotThreadSafe + 192) = v51;
        *(NotThreadSafe + 200) = v58;
        *(NotThreadSafe + 208) = v62;
        v34 = physx::Cm::FlushPool::allocateNotThreadSafe(v74, 184, 0x10u);
        v35 = *(v1 + 768);
        *(v34 + 16) = 0;
        *(v34 + 24) = 0;
        *(v34 + 32) = 0;
        *v34 = &unk_1F5D1D818;
        *(v34 + 8) = v35;
        *(v34 + 40) = v1;
        *(v34 + 48) = v60;
        *(v34 + 56) = v68;
        *(v34 + 64) = v69;
        *(v34 + 72) = 0;
        *(v34 + 80) = v67;
        *(v34 + 88) = v71;
        *(v34 + 96) = v61;
        *(v34 + 104) = v63;
        *(v34 + 112) = v70;
        *(v34 + 120) = v66;
        *(v34 + 128) = v65;
        *(v34 + 136) = v19;
        *(v34 + 144) = v73;
        *(v34 + 152) = v72;
        *(v34 + 160) = v64;
        *(v34 + 168) = v59;
        *(v34 + 176) = v58;
        v36 = physx::Cm::FlushPool::allocateNotThreadSafe(v74, 80, 0x10u);
        v37 = *(v1 + 768);
        *(v36 + 16) = 0;
        *(v36 + 24) = 0;
        *(v36 + 32) = 0;
        *v36 = &unk_1F5D1D598;
        *(v36 + 8) = v37;
        *(v36 + 40) = v1;
        *(v36 + 48) = v60;
        *(v36 + 56) = v59;
        *(v36 + 64) = v58;
        *(v36 + 72) = v62;
        v38 = physx::Cm::FlushPool::allocateNotThreadSafe(v74, 184, 0x10u);
        v39 = *(v1 + 768);
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        *(v38 + 32) = 0;
        *v38 = &unk_1F5D1D888;
        *(v38 + 8) = v39;
        *(v38 + 40) = v1;
        *(v38 + 48) = v60;
        *(v38 + 56) = v68;
        *(v38 + 64) = v69;
        *(v38 + 72) = 0;
        *(v38 + 80) = v67;
        *(v38 + 88) = v71;
        *(v38 + 96) = v61;
        *(v38 + 104) = v63;
        *(v38 + 112) = v70;
        *(v38 + 120) = v66;
        *(v38 + 128) = v65;
        *(v38 + 136) = v19;
        *(v38 + 144) = v73;
        *(v38 + 152) = v72;
        *(v38 + 160) = v64;
        *(v38 + 168) = v59;
        *(v38 + 176) = v45;
        v40 = physx::Cm::FlushPool::allocateNotThreadSafe(v74, 176, 0x10u);
        v41 = *(v1 + 768);
        *(v40 + 16) = 0;
        *(v40 + 24) = 0;
        *(v40 + 32) = 0;
        *v40 = &unk_1F5D1D968;
        *(v40 + 8) = v41;
        *(v40 + 40) = v1;
        *(v40 + 48) = v60;
        *(v40 + 56) = v68;
        *(v40 + 64) = v69;
        *(v40 + 72) = 0;
        *(v40 + 80) = v67;
        *(v40 + 88) = v71;
        *(v40 + 96) = v61;
        *(v40 + 104) = v63;
        *(v40 + 112) = v70;
        *(v40 + 120) = v66;
        *(v40 + 128) = v65;
        *(v40 + 136) = v19;
        *(v40 + 144) = v73;
        *(v40 + 152) = v72;
        *(v40 + 160) = v64;
        *(v40 + 168) = v59;
        *(v40 + 172) = v62;
        *(v34 + 32) = 1;
        *(v34 + 24) = v49;
        (*(*v49 + 32))(v49);
        *(v34 + 16) = *(*(v34 + 24) + 16);
        *(v38 + 32) = 1;
        *(v38 + 24) = v34;
        (*(*v34 + 32))(v34);
        *(v38 + 16) = *(*(v38 + 24) + 16);
        (*(*v34 + 40))(v34);
        *(v36 + 32) = 1;
        *(v36 + 24) = v38;
        (*(*v38 + 32))(v38);
        *(v36 + 16) = *(*(v36 + 24) + 16);
        (*(*v38 + 40))(v38);
        *(v40 + 32) = 1;
        *(v40 + 24) = v36;
        (*(*v36 + 32))(v36);
        *(v40 + 16) = *(*(v40 + 24) + 16);
        (*(*v36 + 40))(v36);
        *(NotThreadSafe + 32) = 1;
        *(NotThreadSafe + 24) = v40;
        (*(*v40 + 32))(v40);
        *(NotThreadSafe + 16) = *(*(NotThreadSafe + 24) + 16);
        (*(*v40 + 40))(v40);
        if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
        {
          pthread_mutex_unlock(*v74);
        }

        (*(*NotThreadSafe + 40))(NotThreadSafe);
        v9 = v55;
        v8 = v56;
        v5 = v47;
        v4 = v48;
        v7 = v50;
        v12 = v53;
        v11 = v54;
        v13 = v52;
        v14 = v46;
        v21.i32[0] = v57.i32[0];
      }

      v11 += v15;
      v13 += v16;
      v12 += v21.i32[0];
      v9 += v17 + (v16 << 6);
    }

    while (v10 < v4);
  }

  (*(*v49 + 40))(v49);
  v42 = *(**(this + 7) + 40);

  return v42();
}

void physx::Dy::KinematicCopyTask::~KinematicCopyTask(physx::Dy::KinematicCopyTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

float physx::Dy::KinematicCopyTask::runInternal(physx::Dy::KinematicCopyTask *this)
{
  if (*(this + 12))
  {
    v2 = 0;
    v3 = 112;
    do
    {
      v4 = *(*(this + 5) + 4 * v2) >> 7;
      v5 = *(*(*(this + 7) + 24) + 32 * v4 + 24);
      v6 = *(v5 + 40);
      ++v2;
      physx::Dy::copyToSolverBodyData(v6 + 64, v6 + 80, (v6 + 112), v6, v4, *(this + 8) + v3, *(v6 + 158), *(v6 + 124), *(v6 + 76), *(v6 + 128), *(v6 + 92));
      v7 = *(v5 + 40);
      *v5 = *v7;
      *(v5 + 16) = *(v7 + 16);
      result = *(v7 + 24);
      *(v5 + 24) = result;
      v3 += 112;
    }

    while (v2 < *(this + 12));
  }

  return result;
}

void physx::Dy::PxsForceThresholdTask::~PxsForceThresholdTask(physx::Dy::PxsForceThresholdTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::Dy::PxsForceThresholdTask::runInternal(physx::Dy::PxsForceThresholdTask *this)
{
  v2 = *(this + 5);
  v3 = *(v2 + 8);
  *(v3 + 16) = *(v2 + 684);
  physx::Dy::ThresholdTable::build(v2 + 24, v3);
  v4 = *(this + 5);
  v5 = *(v4 + 760);
  v6 = *(v4 + 576 + 8 * v5);
  v7 = *(v4 + 576 + 8 * (1 - v5));
  *(v6 + 16) = 0;
  if (*(v2 + 64))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (*(v2 + 48) + v8);
      v11 = *(v3 + 8) + 32 * *v10;
      v12 = v10[1];
      if (v12 > (*(v11 + 12) * *(*(this + 5) + 88)))
      {
        *(v11 + 24) = v12;
        v13 = *(v6 + 16);
        if ((*(v6 + 20) & 0x7FFFFFFFu) <= v13)
        {
          physx::shdfnd::Array<physx::Dy::ThresholdStreamElement,physx::shdfnd::VirtualAllocator>::growAndPushBack(v6, v11);
        }

        else
        {
          v14 = (*(v6 + 8) + 32 * v13);
          v15 = *(v11 + 16);
          *v14 = *v11;
          v14[1] = v15;
          ++*(v6 + 16);
        }
      }

      ++v9;
      v8 += 8;
    }

    while (v9 < *(v2 + 64));
    v4 = *(this + 5);
  }

  v16 = *(v4 + 16);
  *(v16 + 16) = 0;
  v17 = *(v7 + 16);
  v18 = *(v6 + 16);
  if (!v17)
  {
    if ((*(v16 + 20) & 0x7FFFFFFFu) < v18)
    {
      physx::shdfnd::Array<physx::Dy::ThresholdStreamElement,physx::shdfnd::VirtualAllocator>::recreate(v16, *(v6 + 16));
    }

    *(v16 + 16) = v18;
    v21 = *(v16 + 8);
    v22 = *(v6 + 8);

    memcpy(v21, v22, (32 * v18));
    return;
  }

  v19 = (v4 + 592);
  physx::Dy::ThresholdTable::build(v2 + 24, v7);
  v20 = (v18 + v17);
  if ((*(v4 + 604) & 0x7FFFFFFFu) >= v20)
  {
    *(v4 + 600) = v20;
    if (!v20)
    {
      v23 = 1;
      if (!v18)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }
  }

  else
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v4 + 592, v18 + v17);
    *(v4 + 600) = v20;
  }

  memset_pattern16(*v19, &unk_1E3113FE0, 4 * (v20 - 1) + 4);
  v23 = 0;
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_19:
  v24 = 0;
  v25 = *(v6 + 8);
  v26 = *(v2 + 32);
  v28 = *(v2 + 48);
  v27 = *(v2 + 56);
  do
  {
    v29 = (v25 + 32 * v24);
    v30 = *(v29 + 4);
    v31 = *(v29 + 5);
    v32 = ((v31 >> 7) & 0xFE000000FFFFFFFFLL | ((v30 >> 7) << 32)) + ~(v31 >> 7 << 32);
    v33 = (v32 ^ (v32 >> 22)) + ~((v32 ^ (v32 >> 22)) << 13);
    v34 = (9 * (v33 ^ (v33 >> 8))) ^ ((9 * (v33 ^ (v33 >> 8))) >> 15);
    v35 = *(v26 + 4 * ((((v34 + ~(v34 << 27)) >> 31) ^ (v34 + ~(v34 << 27))) % *(v2 + 40)));
    if (v35 != -1)
    {
      v36 = *v29;
      while (1)
      {
        v37 = *(v28 + 8 * v35);
        v38 = *(v7 + 8) + 32 * v37;
        if (*(v38 + 16) == v30 && *(v38 + 20) == v31 && *v38 == v36)
        {
          break;
        }

        v35 = *(v27 + 4 * v35);
        if (v35 == -1)
        {
          goto LABEL_28;
        }
      }

      v39 = *v19;
      *(*v19 + v37) = 0;
      v39[(v17 + v24)] = 0;
    }

LABEL_28:
    ++v24;
  }

  while (v24 != v18);
LABEL_29:
  if ((v23 & 1) == 0)
  {
    v40 = 0;
    v41 = 0;
    v42 = -v17;
    while (!*(*v19 + v41))
    {
      if (v41 < v17)
      {
        v46 = *(v7 + 8) + v40;
        goto LABEL_37;
      }

LABEL_41:
      ++v41;
      v40 += 32;
      ++v42;
      if (!--v20)
      {
        return;
      }
    }

    if (v41 >= v17)
    {
      v46 = *(v6 + 8) + 32 * v42;
LABEL_37:
      *&v52 = 0x7F0000007FLL;
      v47 = *(v46 + 16);
      v51 = *v46;
      v52 = v47;
      v45 = *(v46 + 24);
    }

    else
    {
      v43 = (*(v7 + 8) + v40);
      *&v52 = 0x7F0000007FLL;
      v44 = v43[1];
      v51 = *v43;
      v52 = v44;
      v45 = 0;
    }

    DWORD2(v52) = v45;
    v48 = *(v16 + 16);
    if ((*(v16 + 20) & 0x7FFFFFFFu) <= v48)
    {
      physx::shdfnd::Array<physx::Dy::ThresholdStreamElement,physx::shdfnd::VirtualAllocator>::growAndPushBack(v16, &v51);
    }

    else
    {
      v49 = (*(v16 + 8) + 32 * v48);
      v50 = v52;
      *v49 = v51;
      v49[1] = v50;
      ++*(v16 + 16);
    }

    goto LABEL_41;
  }
}

uint64_t physx::Dy::ThresholdTable::build(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = (2 * v3) | 1;
    v6 = *(result + 44);
    if (v3 <= v6 && v3 >= v6 >> 2)
    {
      v10 = *(result + 8);
      v8 = 4 * v5;
    }

    else
    {
      if (*result)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v8 = 4 * v5;
      if (4 * v5 + 12 * v3)
      {
        v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v5 + 12 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/include/DyThresholdTable.h", 198);
      }

      else
      {
        v9 = 0;
      }

      *(v2 + 24) = v9;
      *(v2 + 32) = v9 + (8 * v3);
      v10 = (v9 + (12 * v3));
      *v2 = v9;
      *(v2 + 8) = v10;
      *(v2 + 44) = v3;
      *(v2 + 20) = v5;
    }

    memset(v10, 255, v8);
    v11 = 0;
    v12 = 0;
    *(v2 + 40) = 0;
    *(v2 + 16) = v5;
    v13 = *(v2 + 8);
    v15 = *(v2 + 24);
    v14 = *(v2 + 32);
    v16 = *(a2 + 8);
    do
    {
      v17 = v16 + 32 * v11;
      v18 = *(v17 + 16);
      v19 = *(v17 + 20);
      v20 = *(v17 + 8);
      v21 = ((v19 >> 7) & 0xFE000000FFFFFFFFLL | ((v18 >> 7) << 32)) + ~(v19 >> 7 << 32);
      v22 = (v21 ^ (v21 >> 22)) + ~((v21 ^ (v21 >> 22)) << 13);
      v23 = (9 * (v22 ^ (v22 >> 8))) ^ ((9 * (v22 ^ (v22 >> 8))) >> 15);
      result = (((v23 + ~(v23 << 27)) >> 31) ^ (v23 + ~(v23 << 27))) % v5;
      v24 = *(v13 + 4 * result);
      if (v24 == -1)
      {
LABEL_22:
        *(v14 + 4 * v12) = v24;
        *(v13 + 4 * result) = v12;
        v27 = v15 + 8 * v12;
        *v27 = v11;
        *(v27 + 4) = v20;
        ++v12;
      }

      else
      {
        v25 = *(v13 + 4 * result);
        while (1)
        {
          v26 = v16 + 32 * *(v15 + 8 * v25);
          if (v18 == *(v26 + 16) && v19 == *(v26 + 20))
          {
            break;
          }

          v25 = *(v14 + 4 * v25);
          if (v25 == -1)
          {
            goto LABEL_22;
          }
        }

        *(v15 + 4 + 8 * v25) = v20 + *(v15 + 4 + 8 * v25);
      }

      ++v11;
    }

    while (v11 != v3);
    *(v2 + 40) = v12;
  }

  else
  {
    *(result + 40) = 0;
    *(result + 16) = 0;
    if (*result)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *v2 = 0;
  }

  return result;
}

void physx::Dy::PxsCreateFinalizeContactsTask::~PxsCreateFinalizeContactsTask(physx::Dy::PxsCreateFinalizeContactsTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::PxsCreateFinalizeContactsTask::runInternal(physx::Dy::PxsCreateFinalizeContactsTask *this)
{
  v111[85] = *MEMORY[0x1E69E9840];
  v2 = *(this + 6);
  v1 = *(this + 7);
  v3 = *(this + 20);
  v4 = *(this + 21);
  v5 = *(this + 8);
  v6 = *(this + 9);
  v7 = *(v5 + 148);
  v8 = *(v5 + 136);
  v9 = *(v5 + 120);
  v10 = *(v5 + 124);
  v11 = *(v5 + 88);
  if (*(v5 + 96) >= *(v5 + 92))
  {
    v12 = *(v5 + 92);
  }

  else
  {
    v12 = *(v5 + 96);
  }

  v13 = *(v5 + 128);
  v14 = *(v1 + 12032);
  v15 = *(v1 + 12040);
  v101 = *(this + 8);
  v16 = physx::shdfnd::SListImpl::pop(*(v5 + 400));
  if (!v16)
  {
    v17 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v18 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v18 = "<allocation names disabled>";
    }

    v19 = (*(*(v17 + 24) + 16))(v17 + 24, 12343, v18, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v19)
    {
      v16 = (v19 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v16 - 8) = v16 - v19;
    }

    else
    {
      v16 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v16, *(v101 + 408));
  }

  *(v16 + 11880) = 0;
  *(v16 + 11888) = 0;
  *(v16 + 12168) = 0;
  v20 = *(v1 + 12256);
  if ((*(v16 + 12172) & 0x7FFFFFFFu) < v20)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v16 + 12160, v20);
    v20 = *(v1 + 12256);
  }

  *(v16 + 12168) = v20;
  v21 = *(v16 + 12160);
  v105[0] = &unk_1F5D1DC80;
  v105[1] = (v1 + 11848);
  v100 = v16;
  v105[2] = (v16 + 11872);
  v105[3] = (v16 + 11824);
  v105[4] = (v16 + 12208);
  v22 = v3;
  if (v3 < v4)
  {
    v23 = 0;
    v24 = *(v101 + 132);
    v98 = v7;
    v25 = xmmword_1E30474D0;
    __asm { FMOV            V15.2S, #1.0 }

    v102 = v4;
    v31 = v21;
    v96 = v2;
    v97 = v15;
    while (1)
    {
      v32 = (v15 + 8 * v22);
      v33 = *v32;
      v34 = *(v14 + 48 * *v32 + 30);
      v103 = v32;
      if (v34 == 2)
      {
        break;
      }

      if (v34 != 1)
      {
        goto LABEL_79;
      }

      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v35 = *(v32 + 2);
      if (!*(v32 + 2))
      {
        goto LABEL_79;
      }

      v36 = 0;
      v37 = 0;
      v38 = *(v6 + 32);
      do
      {
        v39 = v14 + 48 * v33;
        v40 = *(v39 + 32);
        *(&v108 + v36) = v40;
        v41 = v38 + 32 * (*(v6 + 4 * (*(v40 + 108) & 7)) + (*(v40 + 108) >> 3));
        *(&v106 + v36) = v41;
        v42 = v2;
        if (*(v39 + 16) == -1)
        {
          v42 = v2 + 112 * *(v39 + 20);
        }

        v43 = *(v39 + 18);
        v44 = v2;
        if (v43 == 0xFFFF)
        {
          v44 = v2 + 112 * *(v39 + 24);
        }

        v45 = &v110[v37];
        *(v45 + 5) = v42;
        *(v45 + 6) = v44;
        v47 = *(v40 + 32);
        v46 = *(v40 + 40);
        v48 = *(v47 + 28);
        if (v46)
        {
          v48 |= *(v46 + 28);
        }

        *(v45 + 56) = *v47;
        *(v45 + 9) = *(v47 + 16);
        *(v45 + 20) = *(v47 + 24);
        if (v46)
        {
          v49 = *v46;
          v50 = *(v46 + 16);
          v51 = *(v46 + 24);
        }

        else
        {
          v50 = 0;
          v51 = 0;
          v49 = v25;
        }

        *(v45 + 84) = v49;
        v52 = &v110[v37];
        *(v52 + 100) = v50;
        *(v52 + 27) = v51;
        *(v52 + 16) = *(v40 + 24);
        *(v52 + 22) = *(v41 + 16);
        *(v52 + 2) = v39;
        *(v52 + 3) = *v39;
        *(v52 + 4) = *(v39 + 8);
        v53 = *(v40 + 80);
        v52[150] = HIBYTE(v53) & 1;
        v52[149] = (v53 & 4) != 0;
        if ((v53 & 8) != 0)
        {
          v54 = 8;
        }

        else
        {
          v54 = 1;
        }

        *(v52 + 28) = v54;
        if ((v53 & 0x10) != 0)
        {
          if (v43 == 0xFFFF)
          {
            v56 = 2;
          }

          else
          {
            v56 = 8;
          }
        }

        else
        {
          if ((v53 & 0x40) != 0)
          {
            v55 = 1;
          }

          else
          {
            v55 = 2;
          }

          if ((v53 & 0x400) != 0)
          {
            v56 = 4;
          }

          else
          {
            v56 = v55;
          }
        }

        *(v52 + 29) = v56;
        v57 = &v110[v37];
        v58.i32[0] = *(v40 + 84);
        v58.i32[1] = *(v40 + 85);
        v112.val[0] = vbic_s8(_D15, vceqz_s32(v58));
        v112.val[1] = v112.val[0];
        vst2_f32(v57, v112);
        v59 = &v110[v37];
        *(v59 + 38) = *(v40 + 92);
        *(v59 + 20) = *(v40 + 72);
        v59[168] = *(v40 + 82);
        v60 = 3.4028e38;
        if ((v48 & 0x20) != 0)
        {
          v60 = v24;
        }

        *(v59 + 39) = v60;
        v37 += 208;
        v36 += 8;
        ++v33;
      }

      while (208 * v35 != v37);
      if (v35 != 4)
      {
        goto LABEL_48;
      }

      v61 = (physx::Dy::createFinalizeMethods4[v98])(&v106, v100, v110, v105, v12, v9, v10, v8, v13);
      LODWORD(v62) = *(v103 + 2);
      if (v61 == 2)
      {
        goto LABEL_51;
      }

      if (*(v103 + 2))
      {
LABEL_48:
        v99 = v22;
        v63 = 0;
        v64 = v110;
        v65 = (v15 + 8 * v22);
        do
        {
          v66 = v14 + 48 * (v63 + *v65);
          v67 = *(v6 + 32) + 32 * (*(v6 + 4 * (*(*(v66 + 32) + 108) & 7)) + (*(*(v66 + 32) + 108) >> 3));
          (physx::Dy::createFinalizeMethods[v98])(v64, v67, v100, v105, v31, v12, v9, v10, v8, v13);
          v65 = v103;
          *(v66 + 28) = *(v67 + 24);
          *(v66 + 40) = *(v67 + 16);
          ++v63;
          v62 = *(v103 + 2);
          v64 += 208;
        }

        while (v63 < v62);
        v22 = v99;
        v4 = v102;
        v2 = v96;
        v15 = v97;
LABEL_51:
        v25 = xmmword_1E30474D0;
        if (v62)
        {
          v62 = v62;
          v68 = &v108;
          v69 = v111;
          do
          {
            v70 = *v68;
            v68 = (v68 + 8);
            *(v70 + 72) = *v69;
            *(v70 + 82) = *(v69 + 8);
            v23 += *(v69 + 19);
            v69 += 26;
            --v62;
          }

          while (v62);
        }

        goto LABEL_79;
      }

LABEL_78:
      v25 = xmmword_1E30474D0;
LABEL_79:
      if (++v22 == v4)
      {
        goto LABEL_83;
      }
    }

    v108 = v25;
    *&v109 = 0;
    DWORD2(v109) = 0;
    v71 = *(v32 + 2);
    if (*(v32 + 2))
    {
      v72 = 0;
      v73 = *(v101 + 232);
      v74 = &v107;
      do
      {
        v75 = (v14 + 48 * v33);
        v76 = *(v75 + 4);
        v77 = *(v76 + 40);
        if (v77)
        {
          v78 = *(v77 + 40);
        }

        else
        {
          v78 = &v108;
        }

        v79 = *(v76 + 48);
        if (v79)
        {
          v80 = *(v79 + 40);
        }

        else
        {
          v80 = &v108;
        }

        if (*(v75 + 8) == -1)
        {
          v81 = *(v75 + 5);
        }

        else
        {
          v81 = 0;
        }

        if (*(v75 + 9) == -1)
        {
          v82 = *(v75 + 6);
        }

        else
        {
          v82 = 0;
        }

        v83 = *(v76 + 32);
        v84 = *(v76 + 8);
        v85 = *v75;
        *(v74 - 1) = *(v76 + 16);
        *v74 = v83;
        *(v74 + 2) = v84;
        *(v74 - 2) = v76;
        v86 = &v110[v72];
        *(v86 + 2) = v75;
        *(v86 + 56) = *v78;
        *&v87 = *(v78 + 2);
        DWORD2(v87) = *(v78 + 6);
        HIDWORD(v87) = *v80;
        *(v86 + 72) = v87;
        *(v86 + 88) = *(v80 + 4);
        *(v86 + 13) = *(v80 + 20);
        *(v86 + 5) = v2 + 112 * v81;
        *(v86 + 6) = v2 + 112 * v82;
        *(v86 + 24) = v85;
        *(v86 + 140) = *v76;
        *(v86 + 19) = v73 + 32 * *(v76 + 72);
        v88 = *(v76 + 10);
        v86[160] = HIBYTE(v88) & 1;
        v86[161] = (v88 & 0x80) != 0;
        v86[162] = (v88 & 0x20) != 0;
        v86[163] = (v88 & 0x200) != 0;
        *(v86 + 37) = *(v76 + 76);
        v72 += 176;
        ++v33;
        v74 += 2;
      }

      while (176 * v71 != v72);
      if (v71 == 4)
      {
        v104 = 0;
        v89 = physx::Dy::setupSolverConstraint4(&v106, v110, &v104, v105, v11, v12);
        v23 += v104;
        v90 = v15 + 8 * v22;
        if (v89 == 2)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v90 = v15 + 8 * v22;
      }

      if (*(v90 + 4))
      {
        v91 = 0;
        v92 = v110;
        v93 = &v106;
        do
        {
          v23 += physx::Dy::SetupSolverConstraint(v93, v92, v105, v31, v11, v12);
          ++v91;
          v92 += 176;
          v93 += 2;
        }

        while (v91 < *(v103 + 2));
      }
    }

LABEL_77:
    v4 = v102;
    goto LABEL_78;
  }

  v23 = 0;
LABEL_83:
  *(v100 + 12316) += v23;
  v94 = *(v101 + 400);
  pthread_mutex_lock((v94 + 8));
  *v100 = *v94;
  *v94 = v100;
  return pthread_mutex_unlock((v94 + 8));
}

void physx::Dy::PxsCreateArticConstraintsTask::~PxsCreateArticConstraintsTask(physx::Dy::PxsCreateArticConstraintsTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::PxsCreateArticConstraintsTask::runInternal(physx::Dy::PxsCreateArticConstraintsTask *this)
{
  v2 = *(this + 9);
  v4 = *(v2 + 132);
  v3 = *(v2 + 136);
  v5 = *(v2 + 120);
  v6 = *(v2 + 124);
  v7 = *(v2 + 88);
  if (*(v2 + 96) >= *(v2 + 92))
  {
    v8 = *(v2 + 92);
  }

  else
  {
    v8 = *(v2 + 96);
  }

  v9 = *(v2 + 128);
  v10 = physx::shdfnd::SListImpl::pop(*(v2 + 400));
  if (!v10)
  {
    v11 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v12 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v12 = "<allocation names disabled>";
    }

    v13 = (*(*(v11 + 24) + 16))(v11 + 24, 12343, v12, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v13)
    {
      v10 = (v13 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v10 - 8) = v10 - v13;
    }

    else
    {
      v10 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v10, *(v2 + 408));
  }

  *(v10 + 11880) = 0;
  *(v10 + 11888) = 0;
  *(v10 + 12168) = 0;
  v14 = *(*(this + 8) + 12256);
  if ((*(v10 + 12172) & 0x7FFFFFFFu) < v14)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v10 + 12160, v14);
    v14 = *(*(this + 8) + 12256);
  }

  *(v10 + 12168) = v14;
  if (*(this + 12))
  {
    v15 = 0;
    do
    {
      v16 = *(*(this + 5) + 8 * v15);
      (*(*v16 + 288))(v16, *(this + 10), v10, *(this + 7), *(this + 8) + 11848, *(*(this + 9) + 232), v7, v8, v3, v5, v6, v9, v4);
      ++v15;
    }

    while (v15 < *(this + 12));
  }

  v17 = *(*(this + 9) + 400);
  pthread_mutex_lock((v17 + 8));
  *v10 = *v17;
  *v17 = v10;

  return pthread_mutex_unlock((v17 + 8));
}

void physx::Dy::ThreadContext::~ThreadContext(physx::Dy::ThreadContext *this)
{
  v2 = *(this + 3075);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 1536) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v4 = *(this + 3047);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 1522) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v6 = *(this + 3043);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 1520) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v8 = *(this + 3039);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 1518))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v9 = *(this + 3035);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *(this + 1516))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v10 = *(this + 3031);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0 && *(this + 1514))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v11 = *(this + 3027);
  if ((v11 & 0x80000000) == 0 && (v11 & 0x7FFFFFFF) != 0 && *(this + 1512))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v12 = *(this + 3023);
  if ((v12 & 0x80000000) == 0 && (v12 & 0x7FFFFFFF) != 0 && *(this + 1510))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v13 = *(this + 3019);
  if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0 && *(this + 1508))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v14 = *(this + 2991);
  if ((v14 & 0x80000000) == 0 && (v14 & 0x7FFFFFFF) != 0 && *(this + 1494))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v15 = *(this + 2987);
  if ((v15 & 0x80000000) == 0 && (v15 & 0x7FFFFFFF) != 0 && *(this + 1492))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v16 = *(this + 2983);
  if ((v16 & 0x80000000) == 0 && (v16 & 0x7FFFFFFF) != 0 && *(this + 1490))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v17 = *(this + 2965);
  if ((v17 & 0x80000000) == 0 && (v17 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 1481))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

uint64_t physx::shdfnd::Array<physx::PxConstraintBatchHeader,physx::shdfnd::ReflectionAllocator<physx::PxConstraintBatchHeader>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxConstraintBatchHeader>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxConstraintBatchHeader>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxConstraintBatchHeader>::getName() [T = physx::PxConstraintBatchHeader]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxSolverBody,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxSolverBody>>>::recreate(unint64_t *a1, unsigned int a2)
{
  v4 = 32 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxSolverBody>::getName() [T = physx::PxSolverBody]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4 + 135, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  if (result)
  {
    v8 = (result + 135) & 0xFFFFFFFFFFFFFF80;
    *(v8 - 8) = v8 - result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = v8 + 32 * v9;
    v11 = *a1;
    v12 = v8;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 8);
      *(v12 + 12) = *(v11 + 12);
      *(v12 + 16) = *(v11 + 16);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 28) = *(v11 + 28);
      v12 += 32;
      v11 += 32;
    }

    while (v12 < v10);
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *a1 - *(*a1 - 8));
  }

  *a1 = v8;
  *(a1 + 3) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxSolverBodyData,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxSolverBodyData>>>::recreate(unint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 112 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxSolverBodyData>::getName() [T = physx::PxSolverBodyData]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4 + 135, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  if (result)
  {
    v8 = (result + 135) & 0xFFFFFFFFFFFFFF80;
    *(v8 - 8) = v8 - result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = v8 + 112 * v9;
    v11 = *a1;
    v12 = v8;
    do
    {
      *v12 = *v11;
      *(v12 + 16) = *(v11 + 16);
      *(v12 + 32) = *(v11 + 32);
      *(v12 + 40) = *(v11 + 40);
      *(v12 + 48) = *(v11 + 48);
      *(v12 + 56) = *(v11 + 56);
      *(v12 + 64) = *(v11 + 64);
      v13 = *(v11 + 68);
      *(v12 + 76) = *(v11 + 76);
      *(v12 + 68) = v13;
      *(v12 + 80) = *(v11 + 80);
      *(v12 + 96) = *(v11 + 96);
      *(v12 + 104) = *(v11 + 104);
      *(v12 + 108) = *(v11 + 108);
      v12 += 112;
      v11 += 112;
    }

    while (v12 < v10);
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *a1 - *(*a1 - 8));
  }

  *a1 = v8;
  *(a1 + 3) = v2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxSolverConstraintDesc,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2 && (result = physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>::allocate(result, 48 * a2 + 135, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553)) != 0)
  {
    v4 = (result + 135) & 0xFFFFFFFFFFFFFF80;
    *(v4 - 8) = v4 - result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    v6 = v4 + 48 * v5;
    v7 = *v3;
    v8 = v4;
    do
    {
      v9 = *v7;
      v10 = v7[2];
      v8[1] = v7[1];
      v8[2] = v10;
      *v8 = v9;
      v8 += 3;
      v7 += 3;
    }

    while (v8 < v6);
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *v3 - *(*v3 - 8));
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsIndexedContactManager,physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>::allocate(result, 32 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[2 * v5];
    v8 = v4;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 2;
      *v8 = v9;
      v8[1] = v10;
      v8 += 2;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::SpatialVector,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVector>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVector>::allocate(result, 32 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[2 * v5];
    v8 = *v3;
    v9 = v4;
    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9 += 2;
      v8 += 2;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsBodyCore *,physx::shdfnd::ReflectionAllocator<physx::PxsBodyCore *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxsBodyCore *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxsBodyCore *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsBodyCore *>::getName() [T = physx::PxsBodyCore *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxsRigidBody *,physx::shdfnd::ReflectionAllocator<physx::PxsRigidBody *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxsRigidBody *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Dy::ArticulationV *,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationV *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationV *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationV *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationV *>::getName() [T = physx::Dy::ArticulationV *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

float32x2_t physx::Dy::FeatherstoneArticulation::computeLinkAccelerationInv(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[7];
  result = 0;
  *v2 = 0u;
  v2[1] = 0u;
  v6 = *(a1 + 440);
  if (v6 >= 2)
  {
    v7 = *(a1 + 432);
    v8 = *(a1 + 352) + 96;
    v9 = *(a1 + 448);
    v10 = *(a1 + 456);
    for (i = 1; i != v6; ++i)
    {
      v12 = 0;
      v13 = 0.0;
      if (v4)
      {
        v14 = v10 + 80 * i;
        v15 = *(v14 + 76);
        v16 = 0.0;
        v17 = 0;
        if (*(v14 + 76))
        {
          v18 = (v4 + 4 * *(v14 + 72));
          v19 = v8;
          do
          {
            v20 = *v18++;
            v21 = v20;
            v12 = vadd_f32(v12, vmul_n_f32(*(v19 - 5), v20));
            v13 = v13 + (v20 * *(v19 - 3));
            v22 = vmul_n_f32(*(v19 - 2), v20);
            v23 = *v19;
            v19 += 6;
            v17 = vadd_f32(v17, v22);
            v16 = v16 + (v21 * v23);
            --v15;
          }

          while (v15);
        }
      }

      else
      {
        v16 = 0.0;
        v17 = 0;
      }

      v24 = v9 + 160 * i;
      _S4 = *(v24 + 120);
      v26 = &v2[2 * *(v7 + 40 * i + 32)];
      _D6 = *(v24 + 124);
      v28.i32[0] = vdup_lane_s32(_D6, 1).u32[0];
      v28.i32[1] = _S4;
      _D16 = *v26;
      v30 = vrev64_s32(*v26);
      v30.i32[0] = *(v26 + 2);
      v31 = vmls_f32(vmul_f32(v28, *(v26 + 4)), v30, _D6);
      __asm { FMLS            S6, S4, V16.S[1] }

      v36 = vadd_f32(v26[1], v31);
      v37 = (v3 + 32 * i);
      v38 = v16 + ((_D6.f32[0] + *(v26 + 6)) + v37[3].f32[0]);
      v39 = &v2[2 * i];
      result = vadd_f32(v12, vadd_f32(_D16, *v37));
      v39[1].f32[0] = v13 + (v30.f32[0] + v37[1].f32[0]);
      v39[1].i32[1] = 0;
      v40 = vadd_f32(v17, vadd_f32(v36, v37[2]));
      *v39 = result;
      v39[2] = v40;
      v39[3].f32[0] = v38;
      v39[3].i32[1] = 0;
      v8 += 76;
    }
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::computeGeneralizedForceInv(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (*(result + 440) - 1);
  if (*(result + 440) != 1)
  {
    v4 = *(result + 432);
    v5 = *(result + 448);
    v6 = *(result + 456);
    v7 = *(result + 352) + 76 * v3 + 12;
    do
    {
      v8 = v5 + 160 * v3;
      v9 = a2 + 32 * v3;
      _S1 = *(v8 + 120);
      v11 = (a2 + 32 * *(v4 + 40 * v3 + 32));
      _D3 = *v9;
      v13 = *(v8 + 124);
      v14.i32[0] = vdup_lane_s32(v13, 1).u32[0];
      v14.i32[1] = _S1;
      v15 = *(v9 + 8) + v11[1].f32[0];
      v16 = vrev64_s32(*v9);
      v16.i32[0] = *(v9 + 8);
      __asm { FMLA            S0, S1, V3.S[1] }

      v22 = vadd_f32(vmla_f32(vmul_f32(*(v9 + 4), vneg_f32(v14)), v16, v13), *(v9 + 16));
      v23 = _S0 + *(v9 + 24);
      *v11 = vadd_f32(*v9, *v11);
      v11[1].f32[0] = v15;
      v11[2] = vadd_f32(v22, v11[2]);
      v11[3].f32[0] = v23 + v11[3].f32[0];
      result = v6 + 80 * v3;
      v24 = *(result + 76);
      if (*(result + 76))
      {
        result = a3 + 4 * *(result + 72);
        v25 = v7;
        do
        {
          *result = (((v25[1] * *(v9 + 4)) + (*v25 * *v9)) + (v25[2] * *(v9 + 8))) + (((*(v25 - 2) * *(v9 + 20)) + (*(v25 - 3) * *(v9 + 16))) + (*(v25 - 1) * *(v9 + 24)));
          result += 4;
          v25 += 6;
          --v24;
        }

        while (v24);
      }

      v7 -= 76;
      --v3;
    }

    while (v3);
  }

  return result;
}

float physx::Dy::FeatherstoneArticulation::computeZAForceInv(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a7 + 440);
  if (v8)
  {
    v9 = (*(a7 + 432) + 16);
    v10 = (*(a8 + 24) + 16);
    v11 = (*(a8 + 8) + 16);
    result = 1.0;
    __asm { FMOV            V3.2S, #1.0 }

    do
    {
      v19 = *v9;
      v9 += 5;
      v18 = v19;
      v21 = v19[15].f32[0];
      v20 = v19[15].f32[1];
      if (v20 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0 / v20;
      }

      if (v21 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0 / v21;
      }

      v24 = v11[-1].f32[0] + v11[-1].f32[0];
      LODWORD(a5) = v18[1].i32[0];
      v25 = v18[1].f32[1];
      v26 = (v25 * v25) + -0.5;
      v27 = v22 * v11[1].f32[0];
      v28 = vadd_f32(vmul_n_f32(*v11, v22), v10[-2]);
      v10[-1].f32[0] = v27 + v10[-1].f32[0];
      v29 = vadd_f32(v11[-2], v11[-2]);
      LODWORD(v30) = HIDWORD(*v18);
      v31 = (vmuls_lane_f32(v29.f32[1], *v18, 1) + (COERCE_FLOAT(*v18) * v29.f32[0])) + (*&a5 * v24);
      v32 = vneg_f32(vzip1_s32(*&a5, *v18));
      v33.i32[0] = vdup_lane_s32(v29, 1).u32[0];
      v33.f32[1] = v24;
      v34.i32[0] = vdup_lane_s32(*v18, 1).u32[0];
      v34.i32[1] = LODWORD(a5);
      v35 = -v30;
      v36 = vmul_f32(vbic_s8(vdiv_f32(_D3, v18[14]), vceqz_f32(v18[14])), vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v33, v32), vext_s8(v33, v29, 4uLL), v34)), v25), v29, v26), *v18, v31));
      v37 = v23 * (((v24 * v26) - (((-v30 * v29.f32[0]) + (COERCE_FLOAT(*v18) * v29.f32[1])) * v25)) + (*&a5 * v31));
      v38 = vadd_f32(v36, v36);
      v39 = v37 + v37;
      v29.f32[0] = vmuls_lane_f32(v30, v38, 1);
      v40.i32[0] = vdup_lane_s32(v38, 1).u32[0];
      v29.f32[0] = (v29.f32[0] + (COERCE_FLOAT(*v18) * v38.f32[0])) + (*&a5 * v39);
      v40.f32[1] = v39;
      v41 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v40, v32), vext_s8(v40, v38, 4uLL), v34), v25), v38, v26), *v18, v29.f32[0]);
      v42 = ((v25 * ((v35 * v38.f32[0]) + (COERCE_FLOAT(*v18) * v38.f32[1]))) + (v39 * v26)) + (*&a5 * v29.f32[0]);
      v10[-2] = v28;
      *v10 = vadd_f32(*v10, v41);
      v10[1].f32[0] = v42 + v10[1].f32[0];
      v10 += 4;
      v11 += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

float physx::Dy::FeatherstoneArticulation::initCompositeSpatialInertia(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = (a1 + 16);
    v5 = a3 + 52;
    result = 1.0;
    do
    {
      v8 = *v4;
      v4 += 5;
      v7 = v8;
      v9 = v8[31];
      if (v9 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0 / v9;
      }

      *(v5 - 20) = 0;
      *(v5 - 36) = 0uLL;
      *(v5 - 52) = 0uLL;
      *(v5 - 16) = v10;
      *(v5 - 12) = 0;
      *(v5 - 4) = 0;
      *v5 = v10;
      *(v5 + 4) = 0;
      *(v5 + 12) = 0;
      *(v5 + 16) = v10;
      v11 = *v7;
      v12 = v7[1];
      v13 = v7[2];
      v14 = v7[3];
      v15 = v12 + v12;
      v16 = v13 + v13;
      v17 = v12 * (v12 + v12);
      v18 = v13 * (v13 + v13);
      v19 = (v11 + v11) * v12;
      v20 = (v11 + v11) * v13;
      v21 = (v11 + v11) * v14;
      v22 = v15 * v13;
      v23 = v15 * v14;
      v24 = v16 * v14;
      v25 = (1.0 - v17) - v18;
      v26 = v19 + v24;
      v27 = v20 - v23;
      v28 = v19 - v24;
      v29 = 1.0 - (v11 * (v11 + v11));
      v30 = v29 - v18;
      v31 = v22 + v21;
      v32 = v20 + v23;
      v33 = v22 - v21;
      v34 = v29 - v17;
      v35 = v7[28];
      v36 = v7[29];
      if (v35 == 0.0)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = 1.0 / v35;
      }

      if (v36 == 0.0)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = 1.0 / v36;
      }

      v39 = v7[30];
      if (v39 == 0.0)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = 1.0 / v39;
      }

      v41 = v25 * v37;
      v42 = v26 * v37;
      v43 = v28 * v38;
      v44 = v32 * v40;
      v45 = v33 * v40;
      v46 = ((v28 * (v28 * v38)) + ((v25 * v37) * v25)) + ((v32 * v40) * v32);
      v47 = ((v30 * (v30 * v38)) + ((v26 * v37) * v26)) + ((v33 * v40) * v33);
      v48 = ((v31 * (v31 * v38)) + ((v27 * v37) * v27)) + ((v34 * v40) * v34);
      v49 = ((v30 * v43) + (v41 * v26)) + (v44 * v33);
      *(v5 + 20) = v46;
      *(v5 + 24) = v49;
      v50 = ((v31 * v43) + (v41 * v27)) + (v44 * v34);
      *(v5 + 28) = v50;
      *(v5 + 32) = v49;
      v51 = ((v31 * (v30 * v38)) + (v42 * v27)) + (v45 * v34);
      *(v5 + 36) = v47;
      *(v5 + 40) = v51;
      *(v5 + 44) = v50;
      *(v5 + 48) = v51;
      *(v5 + 52) = v48;
      v5 += 112;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::inverseDynamic(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4, int a5)
{
  physx::Dy::FeatherstoneArticulation::computeLinkVelocities(a1, a2, a4);
  if (a5)
  {
    physx::Dy::FeatherstoneArticulation::computeC(v10, v11, v12, a1, a2, a4);
  }

  else
  {
    bzero(*(a4 + 16), (32 * *(a2 + 440)));
  }

  physx::Dy::FeatherstoneArticulation::computeZ(v13, v14, v15, v16, v17, v18, v19, v20, a1, a2, a3, a4);
  *&v21 = physx::Dy::FeatherstoneArticulation::computeLinkAccelerationInv(a2, a4);
  physx::Dy::FeatherstoneArticulation::computeZAForceInv(v21, v23, v24, v25, v26, v22, a2, a4);
  v27 = *(a4 + 24);
  v28 = *(a4 + 64);

  return physx::Dy::FeatherstoneArticulation::computeGeneralizedForceInv(a2, v27, v28);
}

void physx::Dy::FeatherstoneArticulation::inverseDynamicFloatingBase(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4, int a5)
{
  physx::Dy::FeatherstoneArticulation::computeLinkVelocities(a1, a2, a4);
  if (a5)
  {
    physx::Dy::FeatherstoneArticulation::computeC(v10, v11, v12, a1, a2, a4);
  }

  else
  {
    bzero(*(a4 + 16), (32 * *(a2 + 440)));
  }

  physx::Dy::FeatherstoneArticulation::computeZ(v13, v14, v15, v16, v17, v18, v19, v20, a1, a2, a3, a4);
  *&v21 = physx::Dy::FeatherstoneArticulation::computeLinkAccelerationInv(a2, a4);
  physx::Dy::FeatherstoneArticulation::computeZAForceInv(v21, v23, v24, v25, v26, v22, a2, a4);
  v27 = *(a4 + 24);
  v196 = a4;
  v28 = *(a4 + 40);
  v29 = *(a2 + 432);
  v30 = *(a2 + 440);
  physx::Dy::FeatherstoneArticulation::initCompositeSpatialInertia(v29, v30, v28);
  v32 = v30 - 1;
  if (v30 != 1)
  {
    v33 = *(a2 + 448);
    v34 = v32 - 1;
    v35 = (v28 + 112 * v32);
    v36 = v27 + 32 * v32 + 16;
    v37 = 160 * v32 + 124;
    v38 = (v29 + 40 * v32 + 32);
    do
    {
      v203 = *v35;
      v204 = v35[1];
      v205 = v35[2];
      v206 = v35[3];
      v207 = v35[4];
      v208 = v35[5];
      v209 = v35[6];
      v210 = v35[7];
      v211 = v35[8];
      v212 = v35[9];
      v213 = v35[10];
      v214 = v35[11];
      v215 = v35[12];
      v216 = v35[13].f32[0];
      v217 = v35[13].i32[1];
      v39 = (v33 + v37);
      v40 = v39[-1].f32[1];
      v197[0].i32[0] = 0;
      v41 = *v39;
      v42 = vneg_f32(*v39);
      v197[0].i32[1] = HIDWORD(*v39);
      v197[1] = v42;
      v198 = 0;
      v199 = v40;
      v200 = v41.i32[0];
      v201 = -v40;
      v202 = 0;
      physx::Dy::FeatherstoneArticulation::translateInertia(v197, &v203);
      v43 = *v38;
      v38 -= 10;
      v44 = (v28 + 112 * v43);
      v45 = v44[1];
      *v44 = vadd_f32(v203, *v44);
      v44[1] = vadd_f32(v204, v45);
      v46 = v44[3];
      v44[2] = vadd_f32(v205, v44[2]);
      v44[3] = vadd_f32(v206, v46);
      v47 = v44[5];
      v44[4] = vadd_f32(v207, v44[4]);
      v44[5] = vadd_f32(v208, v47);
      v48 = v44[7];
      v44[6] = vadd_f32(v209, v44[6]);
      v44[7] = vadd_f32(v210, v48);
      v49 = v44[9];
      v44[8] = vadd_f32(v211, v44[8]);
      v44[9] = vadd_f32(v212, v49);
      v50 = v44[11];
      v44[10] = vadd_f32(v213, v44[10]);
      v44[11] = vadd_f32(v214, v50);
      v44[12] = vadd_f32(v215, v44[12]);
      v33 = *(a2 + 448);
      v44[13].f32[0] = v216 + v44[13].f32[0];
      _S1 = *(v33 + v37 - 4);
      v52 = (v27 + 32 * v43);
      _D3 = *(v36 - 16);
      v54 = *(v33 + v37);
      v55.i32[0] = vdup_lane_s32(v54, 1).u32[0];
      v56 = *(v36 - 8) + v52[1].f32[0];
      v55.i32[1] = _S1;
      v57 = *v36;
      v58 = vrev64_s32(_D3);
      v58.i32[0] = *(v36 - 8);
      v59 = vmla_f32(vmul_f32(*(v36 - 12), vneg_f32(v55)), v58, v54);
      __asm { FMLA            S0, S1, V3.S[1] }

      v65 = _S0 + *(v36 + 8);
      *v52 = vadd_f32(_D3, *v52);
      v66 = vadd_f32(vadd_f32(v59, v57), v52[2]);
      v67 = v65 + v52[3].f32[0];
      LODWORD(v44) = v34--;
      v52[1].f32[0] = v56;
      v52[3].f32[0] = v67;
      v35 -= 14;
      v36 -= 32;
      v37 -= 160;
      v52[2] = v66;
    }

    while (v44);
  }

  v68 = v196[1];
  v69 = v196[5];
  v70 = v196[3];
  v71.i32[0] = *(v69 + 48);
  v72.i32[0] = *(v69 + 52);
  v73 = *v69;
  v74 = *(v69 + 12);
  v75 = *(v69 + 24);
  v76 = *(v69 + 76) + *(v69 + 84);
  v77 = *(v69 + 92) + *(v69 + 100);
  v78 = (*(v69 + 72) + *(v69 + 72)) * 0.5;
  v79 = v76 * 0.5;
  v80 = (*(v69 + 80) + *(v69 + 96)) * 0.5;
  v81 = (*(v69 + 88) + *(v69 + 88)) * 0.5;
  v82 = (*(v69 + 104) + *(v69 + 104)) * 0.5;
  v83 = *(v69 + 4);
  v84 = *(v69 + 16);
  v85 = *(v69 + 28);
  v71.i32[1] = *(v69 + 60);
  v72.i32[1] = *(v69 + 68);
  _D26 = vmul_f32(vadd_f32(*(v69 + 40), v71), 0x3F0000003F000000);
  v87 = (*(v69 + 56) + *(v69 + 64)) * 0.5;
  v88 = vmul_f32(vadd_f32(v72, v72), 0x3F0000003F000000);
  v89 = (v81 * v82) - ((v77 * 0.5) * (v77 * 0.5));
  v90 = ((v77 * 0.5) * v80) - ((v76 * 0.5) * v82);
  v91 = ((v76 * 0.5) * (v77 * 0.5)) - (v81 * v80);
  v92 = (((v76 * 0.5) * v90) + (v89 * v78)) + (v91 * v80);
  v93 = 1065353216;
  v94 = 0;
  if (v92 == 0.0)
  {
    v98 = 1.0;
    v101 = 1.0;
    v99 = 1065353216;
    v100 = 0;
  }

  else
  {
    v95 = (v79 * -(v76 * 0.5)) + (v78 * v81);
    v96.f32[0] = (v78 * -(v77 * 0.5)) + (v80 * v79);
    v97.f32[0] = (v82 * v78) - (v80 * v80);
    v97.f32[1] = v90;
    v98 = v89 * (1.0 / v92);
    v99 = vmul_n_f32(v97, 1.0 / v92);
    v96.f32[1] = v91;
    v100 = vmul_n_f32(v96, 1.0 / v92);
    v101 = v95 * (1.0 / v92);
  }

  v102 = vdup_lane_s32(v99, 1);
  v103 = vneg_f32(v84);
  *v31.i32 = ((-v74 * v100.f32[0]) - vmuls_lane_f32(*&v73, v100, 1)) - (v75 * v101);
  v104 = vsub_f32(vsub_f32(vmul_n_f32(v99, -v74), vmul_n_f32(__PAIR64__(LODWORD(v98), v102.u32[0]), *&v73)), vmul_n_f32(v100, v75));
  v105 = vsub_f32(vsub_f32(vmul_n_f32(v99, v103.f32[0]), vmul_n_f32(__PAIR64__(LODWORD(v98), v102.u32[0]), v83.f32[0])), vmul_n_f32(v100, v85.f32[0]));
  v106 = vsub_f32(vsub_f32(vmul_lane_f32(v99, v103, 1), vmul_lane_f32(__PAIR64__(LODWORD(v98), v102.u32[0]), v83, 1)), vmul_lane_f32(v100, v85, 1));
  v107 = ((*(v69 + 36) + *(v69 + 36)) * 0.5) + ((vmuls_lane_f32(*&v73, v104, 1) + (v74 * v104.f32[0])) + (v75 * *v31.i32));
  v108 = vsub_f32(vsub_f32(vmul_n_f32(v103, v100.f32[0]), vmul_lane_f32(v83, v100, 1)), vmul_n_f32(v85, v101));
  v103.i32[0] = *(v69 + 28);
  v103.i32[1] = *(v69 + 24);
  v109 = vmul_f32(vzip1_s32(v83, v85), vzip2_s32(v106, v108));
  v110.i32[1] = HIDWORD(*(v69 + 28));
  v110.i32[0] = v103.i32[1];
  v111 = vmul_f32(v110, __PAIR64__(v31.u32[0], v108.u32[0]));
  v112 = vmul_f32(vzip2_s32(v83, v85), vext_s8(v105, v108, 4uLL));
  v113 = vadd_f32(v112, vmul_lane_f32(v105, v84, 1));
  v114.i32[0] = *(v69 + 4);
  v114.i32[1] = *v69;
  v115.i32[0] = *(v69 + 16);
  v115.i32[1] = *(v69 + 12);
  v116 = vadd_f32(vadd_f32(v109, vmul_f32(v84, v106)), vdup_lane_s32(v109, 1)).f32[0];
  v109.i32[1] = HIDWORD(*(v69 + 16));
  v109.i32[0] = v115.i32[1];
  v117 = vadd_f32(vmul_f32(__PAIR64__(v83.u32[1], v73), vzip2_s32(v105, v104)), vmul_f32(v109, vzip1_s32(v105, v104)));
  v118 = vadd_f32(vmul_f32(v83, vzip2_s32(v105, v106)), vmul_f32(v84, vzip1_s32(v105, v106)));
  v119 = vadd_f32(v117, v111);
  v120 = vadd_f32(v118, vmul_f32(v85, v108));
  _D20 = vadd_f32(_D26, vadd_f32(vadd_f32(vmul_f32(v114, vzip2_s32(v104, v106)), vmul_f32(v115, vzip1_s32(v104, v106))), vmul_f32(v103, __PAIR64__(v108.u32[1], v31.u32[0]))));
  *&v122 = v87 + v116;
  v123 = vadd_f32(_D26, v119);
  v124 = v87 + vadd_f32(v113, vdup_lane_s32(v112, 1)).f32[0];
  v125 = vdup_lane_s32(_D20, 0);
  v125.i32[0] = v122;
  v126 = vadd_f32(v88, v120);
  v127 = vmla_f32(vmul_f32(__PAIR64__(v126.u32[1], LODWORD(v124)), vneg_f32(v125)), vzip2_s32(v126, v123), __PAIR64__(v122, v126.u32[0]));
  _D26.f32[0] = vmuls_lane_f32(-v126.f32[0], v123, 1) + (_D20.f32[0] * v124);
  __asm { FMLA            S27, S26, V20.S[1] }

  if (_S27 == 0.0)
  {
    __asm { FMOV            V20.2S, #1.0 }
  }

  else
  {
    v93 = vmul_n_f32(v127, 1.0 / _S27);
    _D26.f32[1] = (v123.f32[1] * v123.f32[0]) - (v124 * v107);
    v94 = vmul_n_f32(_D26, 1.0 / _S27);
    _D20 = vmul_n_f32(vmla_n_f32(vmul_f32(_D20, vneg_f32(v123)), v126, v107), 1.0 / _S27);
  }

  v130 = vrev64_s32(v93);
  v131 = vext_s8(v104, v105, 4uLL);
  v132 = vrev64_s32(__PAIR64__(v93.u32[1], _D20.u32[1]));
  v133 = __PAIR64__(v105.u32[1], v104.u32[0]);
  v134 = ((*v31.i32 * v94.f32[0]) + vmuls_lane_f32(v108.f32[0], v94, 1)) + vmuls_lane_f32(_D20.f32[0], v108, 1);
  v135 = vadd_f32(vmul_f32(v104, v93), vmul_f32(v105, v132));
  v136 = vzip1_s32(v31, v108);
  v132.i32[0] = v93.i32[0];
  v137 = vmul_f32(v136, v132);
  v138 = vadd_f32(v135, vmul_f32(v106, v94));
  v139 = vadd_f32(vadd_f32(vmul_f32(v104, v130), vmul_f32(v105, __PAIR64__(v93.u32[1], _D20.u32[1]))), vmul_f32(v106, vrev64_s32(v94)));
  v140 = vadd_f32(vadd_f32(vmul_f32(__PAIR64__(v105.u32[1], v104.u32[0]), v94), vrev64_s32(vmul_f32(v131, v94))), vmul_n_f32(v106, _D20.f32[0]));
  v141 = vadd_f32(vadd_f32(v137, vrev64_s32(vmul_lane_f32(v136, v93, 1))), vmul_lane_f32(v94, v108, 1));
  v142 = (vmuls_lane_f32(*v31.i32, v139, 1) + vmul_lane_f32(v108, v138, 1).f32[0]) + vmuls_lane_f32(v108.f32[1], v140, 1);
  v143 = vext_s8(v139, v138, 4uLL);
  v144 = vmul_f32(v104, v143);
  v145 = vmul_f32(v104, vrev64_s32(v143));
  v146 = vext_s8(v138, v139, 4uLL);
  v147 = vmul_f32(v105, v146);
  v148 = vadd_f32(v145, vmul_f32(v105, vrev64_s32(v146)));
  v145.f32[0] = ((*v31.i32 * v138.f32[0]) + vmul_f32(v108, v139).f32[0]) + vmuls_lane_f32(v140.f32[0], v108, 1);
  v149 = vadd_f32(vadd_f32(vmul_f32(v133, v141), vrev64_s32(vmul_f32(v131, v141))), vmul_n_f32(v106, v134));
  v150 = ((*v31.i32 * v141.f32[0]) + vmuls_lane_f32(v108.f32[0], v141, 1)) + vmuls_lane_f32(v134, v108, 1);
  v151 = v70[1].f32[0];
  v152 = vadd_f32(v102, vadd_f32(vadd_f32(v144, v147), vmul_f32(v106, vrev64_s32(v140))));
  v99.f32[1] = v98;
  v153 = vadd_f32(v99, vadd_f32(v148, vmul_f32(v106, v140)));
  v154 = v100.f32[0] + v145.f32[0];
  v155 = *v70;
  v156 = v70[2];
  v157 = ((v100.f32[1] + v142) * v156.f32[0]) + vmuls_lane_f32(v154, v156, 1);
  v158 = v70[3].f32[0];
  v159 = vadd_f32(vadd_f32(vadd_f32(vmul_f32(v138, *v70), vmul_f32(v139, vrev64_s32(*v70))), vmul_n_f32(v140, v151)), vadd_f32(vadd_f32(vmul_f32(v156, v152), vmul_f32(vrev64_s32(v156), v153)), vmul_n_f32(vadd_f32(v100, v149), v158)));
  v160 = ((vmul_f32(v141, *v70).f32[0] + vmuls_lane_f32(v141.f32[1], *v70, 1)) + (v134 * v151)) + (v157 + ((v101 + v150) * v158));
  v161 = vmul_f32(v94, *v70).f32[0] + vmuls_lane_f32(v94.f32[1], *v70, 1);
  *v68 = vneg_f32(vrev64_s32(v159));
  v68[1].f32[0] = -v160;
  v130.i32[1] = _D20.i32[1];
  v68[2] = vneg_f32(vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v93, v155.f32[0]), vmul_lane_f32(v130, v155, 1)), vmul_n_f32(v94, v151)), vmla_n_f32(vmla_n_f32(vmul_lane_f32(vzip1_s32(v138, v139), v156, 1), vzip2_s32(v139, v138), v156.f32[0]), v141, v158)));
  v68[3].f32[0] = -((v161 + (v151 * _D20.f32[0])) + ((vmuls_lane_f32(v140.f32[0], v156, 1) + (v140.f32[1] * v156.f32[0])) + (v134 * v158)));
  v162 = v196[8];
  v68[1].i32[1] = 0;
  v68[3].i32[1] = 0;
  v163 = *(a2 + 440);
  if (v163 >= 2)
  {
    v164 = *(a2 + 432);
    v165 = *(a2 + 352) + 96;
    v166 = 1;
    v167 = *(a2 + 448);
    v168 = *(a2 + 456);
    do
    {
      v169 = v167 + 160 * v166;
      v170 = *(v169 + 120);
      v171 = &v68[4 * *(v164 + 40 * v166 + 32)];
      v172 = v171->f32[0];
      v173 = v171[3].f32[0];
      v174 = &v68[4 * v166];
      v174->i32[0] = v171->i32[0];
      v174[1].i32[1] = 0;
      v175 = *(v169 + 124);
      v176 = *(v171 + 4);
      v177.i32[0] = vdup_lane_s32(v175, 1).u32[0];
      v177.f32[1] = v170;
      v178.i32[0] = vdup_lane_s32(v176, 1).u32[0];
      v178.f32[1] = v172;
      v179 = (v172 * v175.f32[0]) - (v176.f32[0] * v170);
      v180 = vadd_f32(v171[2], vmls_f32(vmul_f32(v177, v176), v178, v175));
      v181 = v179 + v173;
      *(v174 + 4) = v176;
      v174[2] = v180;
      v174[3].f32[0] = v181;
      v174[3].i32[1] = 0;
      v182 = v69 + 112 * v166;
      v183.i32[0] = *(v182 + 8);
      v177.i32[0] = *(v182 + 20);
      v184 = *(v182 + 32);
      v178.f32[0] = (((v172 * v183.f32[0]) + (v177.f32[0] * v176.f32[0])) + vmuls_lane_f32(v184, v176, 1)) + (((*(v182 + 44) * v180.f32[0]) + vmuls_lane_f32(*(v182 + 56), v180, 1)) + (v181 * *(v182 + 68)));
      v185 = &v70[4 * v166];
      v186 = *v182;
      v187 = *(v182 + 12);
      v188 = *(v182 + 24);
      v189 = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v182, v172), vmul_n_f32(v187, v176.f32[0])), vmul_lane_f32(v188, v176, 1)), vadd_f32(vadd_f32(vmul_n_f32(*(v182 + 36), v180.f32[0]), vmul_lane_f32(*(v182 + 48), v180, 1)), vmul_n_f32(*(v182 + 60), v181))), *v185);
      v190 = (((COERCE_FLOAT(vmul_f32(v180, v188).i32[1]) + (v188.f32[0] * v180.f32[0])) + (v184 * v181)) + (((v172 * *(v182 + 80)) + (*(v182 + 92) * v176.f32[0])) + vmuls_lane_f32(*(v182 + 104), v176, 1))) + v185[3].f32[0];
      v185[1].f32[0] = v178.f32[0] + v185[1].f32[0];
      v185[1].i32[1] = 0;
      v183.i32[1] = v177.i32[0];
      v191 = vadd_f32(vadd_f32(vmla_n_f32(vmla_n_f32(vmul_lane_f32(vzip2_s32(v186, v187), v180, 1), vzip1_s32(v186, v187), v180.f32[0]), v183, v181), vadd_f32(vadd_f32(vmul_n_f32(*(v182 + 72), v172), vmul_n_f32(*(v182 + 84), v176.f32[0])), vmul_lane_f32(*(v182 + 96), v176, 1))), v185[2]);
      *v185 = v189;
      v185[2] = v191;
      v185[3].f32[0] = v190;
      v185[3].i32[1] = 0;
      v192 = v168 + 80 * v166;
      v193 = *(v192 + 76);
      if (*(v192 + 76))
      {
        v194 = (v162 + 4 * *(v192 + 72));
        v195 = v165;
        do
        {
          *v194++ = (((*(v195 - 1) * v185->f32[1]) + (*(v195 - 2) * v185->f32[0])) + (*v195 * v185[1].f32[0])) + (((*(v195 - 4) * v185[2].f32[1]) + (*(v195 - 5) * v185[2].f32[0])) + (*(v195 - 3) * v185[3].f32[0]));
          v195 += 6;
          --v193;
        }

        while (v193);
      }

      ++v166;
      v165 += 76;
    }

    while (v166 != v163);
  }
}

BOOL physx::Dy::FeatherstoneArticulation::applyCacheToDest(physx::Dy::FeatherstoneArticulation *this, physx::Dy::ArticulationData *a2, uint64_t a3, void *__dst, void *a5, void *a6, void *a7, char *a8, double a9, double a10, double a11, double a12, double a13, double a14, int8x16_t a15, int8x16_t _Q7)
{
  v23 = *(this + 222);
  v24 = *a8;
  if (*a8)
  {
    memcpy(__dst, *(a3 + 24), (4 * *(a2 + 119)));
    v25 = *(this + 222) | 4;
    *(this + 222) = v25;
    v24 = *a8;
    if ((*a8 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v25 = *(this + 222);
  if ((*a8 & 2) != 0)
  {
LABEL_5:
    memcpy(a5, *(a3 + 32), (4 * *(a2 + 119)));
    v25 = *(this + 222) | 8;
    *(this + 222) = v25;
    v24 = *a8;
  }

LABEL_6:
  if ((v24 & 0x40) == 0)
  {
    if ((v24 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    memcpy(a6, *(a3 + 40), (4 * *(a2 + 119)));
    *(this + 222) |= 2u;
    v24 = *a8;
    goto LABEL_15;
  }

  v26 = *(this + 76);
  if ((v24 & 4) != 0)
  {
    v27 = *(a3 + 72);
    v28 = *(v26 + 16);
    _S2 = *(v28 + 48) + *(v28 + 48);
    v30 = *(v28 + 52) + *(v28 + 52);
    _S4 = *(v28 + 56) + *(v28 + 56);
    v32 = *(v27 + 12);
    v33 = *(v27 + 16);
    v34 = (v32 * v32) + -0.5;
    a15.i32[0] = *v27;
    _Q7.i64[0] = *(v27 + 4);
    __asm
    {
      FMLA            S16, S4, V7.S[1]
      FMLA            S18, S2, V7.S[1]
      FMLA            S20, S16, V7.S[1]
    }

    v42 = *(v27 + 20) + (((v32 * _S18) + (v30 * v34)) + (*_Q7.i32 * _S16));
    v43 = *(v28 + 32);
    v44 = v43;
    v44.i32[3] = _Q7.i32[1];
    v45 = *(v27 + 24) + _S20;
    v46 = ((v32 * (vmuls_lane_f32(v30, vnegq_f32(v44), 3) + (*_Q7.i32 * _S4))) + (_S2 * v34)) + (*v27 * _S16);
    v47 = vextq_s8(vextq_s8(a15, a15, 4uLL), _Q7, 0xCuLL);
    v47.f32[3] = -*v27;
    v48 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v43, 3), v43, 4uLL), v47), v43, v32);
    v47.f32[3] = -*_Q7.i32;
    _Q7.i32[2] = *v27;
    _Q7.i32[3] = *(v28 + 40);
    v49 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v48, v48, 4uLL), v48), vextq_s8(vextq_s8(v43, v43, 0xCuLL), v43, 8uLL), v47), _Q7, v44);
    *v28 = vzip2q_s32(vzip1q_s32(v49, vextq_s8(v49, v49, 0xCuLL)), v49);
    *(v28 + 16) = v33 + v46;
    *(v28 + 20) = v42;
    *(v28 + 24) = v45;
  }

  if (v24)
  {
    v50 = *(a3 + 72);
    v51 = *(v26 + 16);
    *(v51 + 64) = *(v50 + 28);
    *(v51 + 72) = *(v50 + 36);
    *(v51 + 80) = *(v50 + 40);
    *(v51 + 88) = *(v50 + 48);
  }

  *(this + 222) = v25 | 0x20;
  if ((v24 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if ((v24 & 8) != 0)
  {
    memcpy(a7, *(a3 + 48), (4 * *(a2 + 119)));
    *(this + 222) |= 0x10u;
    v24 = *a8;
  }

  if ((v24 & 4) != 0)
  {
    physx::Dy::FeatherstoneArticulation::teleportLinks(this, a2);
    v24 = *a8;
  }

  if ((v24 & 5) != 0)
  {
    physx::Dy::FeatherstoneArticulation::computeLinkVelocities(this, a2);
  }

  return v23 == 0;
}

uint64_t physx::Dy::FeatherstoneArticulation::packJointData(uint64_t this, const float *a2, float *a3)
{
  v3 = *(this + 616);
  if (v3 >= 2)
  {
    v4 = *(this + 608);
    v5 = *(this + 632);
    for (i = 1; i != v3; ++i)
    {
      v7 = 0;
      v8 = 0;
      v9 = &a3[*(v5 + 80 * i + 72)];
      v10 = *(v4 + 40 * i + 24) + 258;
      do
      {
        this = *(v10 + v7);
        if (*(v10 + v7))
        {
          v9[v8++] = a2[v7];
        }

        ++v7;
      }

      while (v7 != 6);
      a2 += 6;
    }
  }

  return this;
}

uint64_t physx::Dy::FeatherstoneArticulation::unpackJointData(uint64_t this, const float *a2, float *a3)
{
  v3 = *(this + 616);
  if (v3 >= 2)
  {
    v4 = *(this + 608);
    v5 = *(this + 632);
    for (i = 1; i != v3; ++i)
    {
      v7 = 0;
      v8 = 0;
      v9 = &a2[*(v5 + 80 * i + 72)];
      v10 = *(v4 + 40 * i + 24) + 258;
      do
      {
        this = *(v10 + v7);
        if (*(v10 + v7))
        {
          v11 = v9[v8++];
        }

        else
        {
          v11 = 0.0;
        }

        a3[v7++] = v11;
      }

      while (v7 != 6);
      a3 += 6;
    }
  }

  return this;
}

void physx::Dy::FeatherstoneArticulation::initializeCommonData(physx::Dy::FeatherstoneArticulation *this)
{
  physx::Dy::FeatherstoneArticulation::jcalc(this, (this + 176), 0);
  physx::Dy::FeatherstoneArticulation::computeRelativeTransformC2P(v2, v3, v4, v5, v6, v7, v8, v9, this, this + 176);
  physx::Dy::FeatherstoneArticulation::computeRelativeTransformC2B(this, this + 176);
  physx::Dy::FeatherstoneArticulation::computeSpatialInertia(this, this + 176);
  *(this + 684) = 0;
}

uint64_t physx::Dy::FeatherstoneArticulation::getGeneralizedGravityForce(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 684) == 1)
  {
    v9 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v9, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 420, "Articulation::getGeneralisedGravityForce() commonInit need to be called first to initialize data!", a6, a7, a8, a9);
  }

  else
  {
    v13 = vneg_f32(*a2);
    v14 = -a2[1].f32[0];
    v25 = v13;
    v26 = v14;
    v15 = *(a3 + 104);
    v16 = *(a1 + 616);
    if (**(a1 + 664))
    {
      v18 = physx::PxcScratchAllocator::alloc(*(a3 + 104), 32 * v16, 0);
      v19 = v18;
      if (v16)
      {
        v20 = v18 + 16;
        v21 = (*(a1 + 608) + 16);
        do
        {
          v22 = *v21;
          v21 += 5;
          v23 = 1.0 / *(v22 + 124);
          *(v20 - 16) = vmul_n_f32(v13, v23);
          *(v20 - 8) = v23 * v14;
          *v20 = 0;
          *(v20 + 8) = 0;
          v20 += 32;
          --v16;
        }

        while (v16);
      }

      physx::Dy::FeatherstoneArticulation::computeGeneralizedForceInv(a1 + 176, v18, *(a3 + 48));

      return physx::PxcScratchAllocator::free(v15, v19);
    }

    else
    {
      v24[9] = 0;
      v24[10] = 0;
      v17 = physx::PxcScratchAllocator::alloc(v15, 240 * v16, 0);
      v24[0] = v17;
      v24[1] = v17 + (32 * v16);
      v24[2] = v17 + (v16 << 6);
      v24[3] = v17 + (96 * v16);
      v24[6] = 0;
      v24[7] = 0;
      v24[8] = *(a3 + 48);
      v24[4] = 0;
      v24[5] = v17 + (v16 << 7);
      physx::Dy::FeatherstoneArticulation::inverseDynamicFloatingBase(a1, a1 + 176, &v25, v24, 0);
      return physx::PxcScratchAllocator::free(v15, v17);
    }
  }
}

uint64_t physx::Dy::FeatherstoneArticulation::getCoriolisAndCentrifugalForce(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 684) == 1)
  {
    v11 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v11, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 515, "Articulation::getCoriolisAndCentrifugalForce() commonInit need to be called first to initialize data!", a6, a7, a8, a9);
  }

  else
  {
    v20[17] = v9;
    v20[18] = v10;
    v15 = *(a1 + 616);
    v16 = a2[13];
    v20[9] = 0;
    v20[10] = 0;
    v17 = physx::PxcScratchAllocator::alloc(v16, 240 * v15, 0);
    v20[0] = v17;
    v20[1] = v17 + (32 * v15);
    v20[2] = v17 + (v15 << 6);
    v20[3] = v17 + (96 * v15);
    v20[6] = a2[3];
    v20[7] = 0;
    v20[8] = a2[6];
    v20[4] = 0;
    v20[5] = v17 + (v15 << 7);
    if (**(a1 + 664))
    {
      v18 = 0;
      v19 = 0;
      physx::Dy::FeatherstoneArticulation::inverseDynamic(a1, a1 + 176, &v18, v20, 1);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      physx::Dy::FeatherstoneArticulation::inverseDynamicFloatingBase(a1, a1 + 176, &v18, v20, 1);
    }

    return physx::PxcScratchAllocator::free(v16, v17);
  }
}

uint64_t physx::Dy::FeatherstoneArticulation::getGeneralizedExternalForce(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 684) == 1)
  {
    v11 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v11, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 545, "Articulation::getCoriolisAndCentrifugalForce() commonInit need to be called first to initialize data!", a6, a7, a8, a9);
  }

  else
  {
    v70[17] = v9;
    v70[18] = v10;
    v15 = *(a1 + 616);
    v16 = a2[13];
    v70[9] = 0;
    v70[10] = 0;
    v17 = physx::PxcScratchAllocator::alloc(v16, 240 * v15, 0);
    v70[0] = v17;
    v70[1] = v17 + (32 * v15);
    v70[2] = v17 + (v15 << 6);
    v70[3] = v17 + (96 * v15);
    v70[5] = v17 + (v15 << 7);
    v70[6] = 0;
    v18 = a2[6];
    v70[7] = 0;
    v70[8] = v18;
    v19 = physx::PxcScratchAllocator::alloc(v16, 32 * v15, 0);
    v20 = v19;
    if (v15)
    {
      v21 = (v19 + 24);
      v22 = (*(a1 + 608) + 16);
      v23 = (*a2 + 24);
      do
      {
        v24 = *v22;
        v22 += 5;
        v25 = v24[31];
        v26 = v25 * *(v23 - 4);
        *(v21 - 3) = vmul_n_f32(*(v23 - 6), v25);
        *(v21 - 4) = v26;
        v27 = *v24;
        v28 = v24[1];
        v29 = v24[2];
        v30 = v24[3];
        v31 = v28 + v28;
        v32 = v29 + v29;
        v33 = v28 * (v28 + v28);
        v34 = v29 * (v29 + v29);
        v35 = (v27 + v27) * v28;
        v36 = (v27 + v27) * v29;
        v37 = (v27 + v27) * v30;
        v38 = v31 * v29;
        v39 = v31 * v30;
        v40 = v32 * v30;
        v41 = (1.0 - v33) - v34;
        v42 = v35 + v40;
        v43 = v36 - v39;
        v44 = v35 - v40;
        v45 = 1.0 - (v27 * (v27 + v27));
        v46 = v45 - v34;
        v47 = v38 + v37;
        v48 = v36 + v39;
        v49 = v38 - v37;
        v50 = v45 - v33;
        v51 = v24[28];
        v52 = v24[29];
        v53 = v51 * v41;
        v54 = v51 * v42;
        v55 = v52 * v44;
        v56 = v52 * v46;
        v57 = v24[30];
        v58 = v48 * v57;
        v59 = v49 * v57;
        v60 = ((v44 * (v52 * v44)) + ((v51 * v41) * v41)) + ((v48 * v57) * v48);
        v61 = ((v46 * (v52 * v46)) + ((v51 * v42) * v42)) + ((v49 * v57) * v49);
        v62 = ((v47 * (v52 * v47)) + ((v51 * v43) * v43)) + ((v50 * v57) * v50);
        v63 = ((v46 * v55) + (v53 * v42)) + (v58 * v49);
        v64 = ((v47 * v55) + (v53 * v43)) + (v58 * v50);
        v65 = ((v47 * v56) + (v54 * v43)) + (v59 * v50);
        v66 = *(v23 - 2);
        v67 = *(v23 - 1);
        *&v24 = *v23;
        v23 += 8;
        *(v21 - 2) = (*&v24 * v64) + ((v66 * v60) + (v67 * v63));
        *(v21 - 1) = (*&v24 * v65) + ((v66 * v63) + (v67 * v61));
        *v21 = (*&v24 * v62) + ((v66 * v64) + (v67 * v65));
        v21 += 8;
        --v15;
      }

      while (v15);
    }

    v70[4] = v19;
    if (**(a1 + 664))
    {
      v68 = 0;
      v69 = 0;
      physx::Dy::FeatherstoneArticulation::inverseDynamic(a1, a1 + 176, &v68, v70, 0);
    }

    else
    {
      v68 = 0;
      v69 = 0;
      physx::Dy::FeatherstoneArticulation::inverseDynamicFloatingBase(a1, a1 + 176, &v68, v70, 0);
    }

    physx::PxcScratchAllocator::free(v16, v17);
    return physx::PxcScratchAllocator::free(v16, v20);
  }
}

uint64_t physx::Dy::FeatherstoneArticulation::getJointForce(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 684) == 1)
  {
    v11 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v11, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 596, "ArticulationHelper::getJointForce() commonInit need to be called first to initialize data!", a6, a7, a8, a9);
  }

  else
  {
    v26 = v9;
    v27 = v10;
    v14 = a2[13];
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v15 = a2[4];
    v16 = a2[6];
    v25 = 0;
    *(&v23 + 1) = v15;
    *&v24 = v16;
    v17 = *(a1 + 616);
    v18 = physx::PxcScratchAllocator::alloc(v14, 240 * v17, 0);
    v21[0] = v18;
    v21[1] = v18 + (32 * v17);
    v21[2] = v18 + (v17 << 6);
    v21[3] = v18 + (96 * v17);
    *(&v22 + 1) = v18 + (v17 << 7);
    if (**(a1 + 664))
    {
      v19 = 0;
      v20 = 0;
      physx::Dy::FeatherstoneArticulation::inverseDynamic(a1, a1 + 176, &v19, v21, 0);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      physx::Dy::FeatherstoneArticulation::inverseDynamicFloatingBase(a1, a1 + 176, &v19, v21, 0);
    }

    return physx::PxcScratchAllocator::free(v14, v18);
  }
}

void physx::Dy::FeatherstoneArticulation::getCoefficientMatrix(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, int8x16_t a11, double a12, int32x4_t a13, char a14)
{
  if (*(a1 + 684) == 1)
  {
    v14 = physx::shdfnd::Foundation::mInstance;

    physx::shdfnd::Foundation::error(v14, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 893, "ArticulationHelper::getCoefficientMatrix() commonInit need to be called first to initialize data!", a6, a7, a8, a14);
  }

  else
  {
    v17 = *&a9;
    physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialInertia(a1, a1 + 176, a9, a10, a11, a12, a13);
    v19 = *(a1 + 608);
    v20 = *(a1 + 616);
    v50 = *(a1 + 652);
    v51 = *(a5 + 80);
    bzero(v51, 4 * a4 * v50);
    if (a4)
    {
      v21 = 0;
      v54 = **(a1 + 664);
      v48 = (32 * v20);
      v49 = v19 + 40 * a2;
      v47 = 240 * v20;
      v46 = (v20 << 6);
      v45 = (96 * v20);
      v44 = (v20 << 7);
      v43 = a4;
      v22 = 1.0 / v17;
      do
      {
        (*(*(a3 + 24 * v21) + 320))(a3 + 24 * v21, &v71);
        v23 = *(v49 + 16);
        v24 = *(a5 + 104);
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        v25 = physx::PxcScratchAllocator::alloc(v24, v47, 0);
        *&v65 = v25;
        *(&v65 + 1) = v25 + v48;
        *&v66 = v25 + v46;
        *(&v66 + 1) = v25 + v45;
        *(&v67 + 1) = v25 + v44;
        bzero((v25 + v45), v48);
        v27 = v23[2];
        v26 = v23[3];
        v28 = (v26 * v26) + -0.5;
        v29 = v23[1];
        v30 = (((v72 + v72) * v29) + (*v23 * (v71 + v71))) + (v27 * (v73 + v73));
        *&v31 = (((v71 + v71) * v28) - (((v29 * (v73 + v73)) - (v27 * (v72 + v72))) * v26)) + (*v23 * v30);
        *&v32 = (((v72 + v72) * v28) - (((v27 * (v71 + v71)) - (*v23 * (v73 + v73))) * v26)) + (v29 * v30);
        v33 = (((v73 + v73) * v28) - (((*v23 * (v72 + v72)) - (v29 * (v71 + v71))) * v26)) + (v27 * v30);
        v34 = ((v29 * (v75 + v75)) + (*v23 * (v74 + v74))) + (v27 * (v76 + v76));
        v35 = (((v74 + v74) * v28) - (((v29 * (v76 + v76)) - (v27 * (v75 + v75))) * v26)) + (*v23 * v34);
        v36 = (((v75 + v75) * v28) - (((v27 * (v74 + v74)) - (*v23 * (v76 + v76))) * v26)) + (v29 * v34);
        v37 = ((v76 + v76) * v28) - (((*v23 * (v75 + v75)) - (v29 * (v74 + v74))) * v26);
        v58 = __PAIR64__(v32, v31);
        v59 = v33;
        v60 = 0;
        v61 = v35;
        v62 = v36;
        v63 = v37 + (v27 * v34);
        v64 = 0;
        physx::Dy::FeatherstoneArticulation::getZ(a2, (a1 + 176), v25 + v45, &v58);
        v38 = *(a1 + 652);
        v39 = (4 * v38);
        v40 = physx::PxcScratchAllocator::alloc(v24, 8 * v38, 0);
        bzero(v40, v39);
        physx::Dy::FeatherstoneArticulation::getDeltaVWithDeltaJV(v54 & 1, a2, a1 + 176, v25 + v45, v40, v57, v41);
        v42 = v40;
        if (v38)
        {
          do
          {
            *(v42 + v39) = v22 * *v42;
            ++v42;
            --v38;
          }

          while (v38);
        }

        physx::Dy::FeatherstoneArticulation::computeSpatialInertia(a1, a1 + 176);
        *&v68 = 0;
        *(&v68 + 1) = &v40[v39];
        *&v67 = 0;
        *&v69 = &v51[4 * (v50 * v21)];
        v55 = 0;
        v56 = 0;
        if (v54)
        {
          physx::Dy::FeatherstoneArticulation::inverseDynamic(a1, a1 + 176, &v55, &v65, 0);
        }

        else
        {
          physx::Dy::FeatherstoneArticulation::inverseDynamicFloatingBase(a1, a1 + 176, &v55, &v65, 0);
        }

        physx::PxcScratchAllocator::free(v24, v40);
        physx::PxcScratchAllocator::free(v24, v25);
        ++v21;
      }

      while (v21 != v43);
    }
  }
}