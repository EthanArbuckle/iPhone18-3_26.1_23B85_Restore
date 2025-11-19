uint64_t physx::shdfnd::ReflectionAllocator<internalABP::ABP_Object>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<internalABP::ABP_Object>::getName() [T = internalABP::ABP_Object]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

float32x4_t physx::Dy::PxcLtbFactor(unsigned __int16 *a1)
{
  v1 = (a1 + a1[8]);
  v2 = *a1;
  v3 = (v2 - 1);
  if (v2 != 1)
  {
    v4 = a1 + 32;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    do
    {
      v6 = &v1[25 * v3];
      v7 = *(v4 + v3);
      v8 = *(v6 + 6);
      v9 = *(v6 + 7);
      v10 = *(v6 + 8);
      *v11.f32 = vext_s8(vdup_lane_s32(*v8.f32, 0), *v9.f32, 4uLL);
      v11.i64[1] = v10.i64[0];
      v12 = vext_s8(*v8.f32, vdup_lane_s32(*v9.f32, 1), 4uLL);
      *&v24.u32[2] = vdup_lane_s32(*v10.f32, 1);
      *v13.f32 = vext_s8(vdup_laneq_s32(v8, 2), *&vextq_s8(v9, v9, 8uLL), 4uLL);
      v13.i64[1] = vextq_s8(v10, v10, 8uLL).u64[0];
      v14 = vaddq_f32(v8, v11);
      v15 = vaddq_f32(v10, v13);
      v16 = vmulq_f32(v14, v5);
      v17 = v16;
      v17.i32[3] = 0;
      v18 = vmulq_f32(vaddq_f32(v9, v24), v5);
      v19 = v18;
      v19.i32[3] = 0;
      v20 = vmulq_f32(v15, v5);
      v21 = v20;
      v21.i32[3] = 0;
      v22 = *(v6 + 1);
      v23 = *(v6 + 2);
      *v24.f32 = vext_s8(vdup_lane_s32(*v6, 0), *v22.f32, 4uLL);
      *v25.f32 = vext_s8(*v6, vdup_lane_s32(*v22.f32, 1), 4uLL);
      *&v25.u32[2] = vdup_lane_s32(*v23.f32, 1);
      *v26.f32 = vext_s8(vdup_laneq_s32(*v6, 2), *&vextq_s8(v22, v22, 8uLL), 4uLL);
      v26.i64[1] = vextq_s8(v23, v23, 8uLL).u64[0];
      v27 = vaddq_f32(v22, v25);
      v28 = vaddq_f32(v23, v26);
      v19.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
      v29 = vextq_s8(v21, v21, 8uLL).u64[0];
      v30 = vext_s8(*v20.f32, v29, 4uLL);
      v31 = vext_s8(*v18.f32, *v19.i8, 4uLL);
      v32 = vmls_f32(vmul_f32(*v20.f32, *v19.i8), *v18.f32, v29);
      v33 = vmls_f32(vmul_f32(*v18.f32, v30), v31, *v20.f32);
      *v34.f32 = vext_s8(v33, v32, 4uLL);
      v33.i32[1] = 0;
      v34.i64[1] = v33.u32[0];
      v19.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
      v35 = vext_s8(*v16.f32, *v19.i8, 4uLL);
      *v37.f32 = vdup_lane_s32(vmls_f32(vmul_f32(*v16.f32, v29), *v20.f32, *v19.i8), 0);
      v36 = vmls_f32(vmul_f32(*v20.f32, v35), v30, *v16.f32).u32[0];
      v37.i64[1] = v36;
      v38 = vmulq_f32(v27, v5);
      v39 = vmulq_f32(v17, v34);
      v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
      v40 = vpadd_f32(*v39.f32, *v39.f32);
      v41 = vrecpe_f32(v40);
      v42 = 4;
      do
      {
        v41 = vmul_f32(v41, vrecps_f32(v40, v41));
        --v42;
      }

      while (v42);
      v24.i64[1] = *(v6 + 4);
      v43 = vmulq_f32(vaddq_f32(*v6, v24), v5);
      v44 = vmulq_f32(v28, v5);
      v43.i32[3] = 0;
      v38.i32[3] = 0;
      v44.i32[3] = 0;
      v37.i32[0] = v32.i32[0];
      *v45.f32 = vext_s8(vdup_lane_s32(v33, 0), v36, 4uLL);
      *&v45.u32[2] = vmls_f32(vmul_f32(*v16.f32, v31), v35, *v18.f32);
      v46 = vmulq_n_f32(v34, v41.f32[0]);
      v47 = vmulq_n_f32(v37, v41.f32[0]);
      v48 = vmulq_n_f32(v45, v41.f32[0]);
      v49 = *(v6 + 3);
      v50 = *(v6 + 4);
      v51 = vnegq_f32(v49);
      v51.i32[3] = 0;
      v52 = vnegq_f32(v50);
      v52.i32[3] = 0;
      v53 = *(v6 + 5);
      v54 = vnegq_f32(v53);
      v54.i32[3] = 0;
      v55 = vmulq_n_f32(v51, v46.f32[0]);
      v55.i32[3] = 0;
      v56 = vmulq_lane_f32(v52, *v46.f32, 1);
      v56.i32[3] = 0;
      v57 = vmulq_laneq_f32(v54, v46, 2);
      v57.i32[3] = 0;
      v58 = vaddq_f32(vaddq_f32(v55, v56), v57);
      v59 = vmulq_n_f32(v51, v47.f32[0]);
      v59.i32[3] = 0;
      v60 = vmulq_lane_f32(v52, *v47.f32, 1);
      v60.i32[3] = 0;
      v61 = vmulq_laneq_f32(v54, v47, 2);
      v61.i32[3] = 0;
      v62 = vaddq_f32(v59, v60);
      v63 = vmulq_n_f32(v51, v48.f32[0]);
      v63.i32[3] = 0;
      v64 = vmulq_lane_f32(v52, *v48.f32, 1);
      v64.i32[3] = 0;
      v65 = vmulq_laneq_f32(v54, v48, 2);
      v65.i32[3] = 0;
      v66 = vaddq_f32(v62, v61);
      v67 = vaddq_f32(vaddq_f32(v63, v64), v65);
      v68 = vmulq_n_f32(v58, v49.f32[0]);
      v68.i32[3] = 0;
      v69 = vmulq_n_f32(v66, v50.f32[0]);
      v69.i32[3] = 0;
      v70 = vmulq_n_f32(v67, v53.f32[0]);
      v70.i32[3] = 0;
      v71 = vaddq_f32(v68, v69);
      v72 = vmulq_lane_f32(v58, *v49.f32, 1);
      v72.i32[3] = 0;
      v73 = vmulq_lane_f32(v66, *v50.f32, 1);
      v73.i32[3] = 0;
      v74 = vmulq_n_f32(v67, *vdup_lane_s32(*v53.f32, 1).i32);
      v74.i32[3] = 0;
      v75 = vmulq_laneq_f32(v58, v49, 2);
      v75.i32[3] = 0;
      v76 = vmulq_laneq_f32(v66, v50, 2);
      v76.i32[3] = 0;
      v77 = vmulq_laneq_f32(v67, v53, 2);
      v77.i32[3] = 0;
      v78 = vaddq_f32(v77, vaddq_f32(v75, v76));
      v79 = vaddq_f32(v43, vaddq_f32(v70, v71));
      v80 = vaddq_f32(v38, vaddq_f32(v74, vaddq_f32(v72, v73)));
      v81 = vaddq_f32(v44, v78);
      v72.i64[0] = vextq_s8(v81, v81, 8uLL).u64[0];
      v73.i64[0] = vextq_s8(v81, v81, 4uLL).u64[0];
      v82 = vextq_s8(v80, v80, 4uLL).u64[0];
      v83 = vmls_f32(vmul_f32(*&vextq_s8(v80, v80, 8uLL), *v81.i8), *v80.i8, *v72.f32);
      v84 = vmls_f32(vmul_f32(*v80.i8, *v73.f32), v82, *v81.i8);
      *v85.f32 = vext_s8(v84, v83, 4uLL);
      v84.i32[1] = 0;
      v85.i64[1] = v84.u32[0];
      v86 = vextq_s8(v79, v79, 4uLL).u64[0];
      v87 = vmul_f32(*v72.f32, *v79.f32);
      v88 = vmls_f32(vmul_f32(*v81.i8, v86), *v73.f32, *v79.f32).u32[0];
      *v89.f32 = vdup_lane_s32(vmls_f32(v87, *v81.i8, *&vextq_s8(v79, v79, 8uLL)), 0);
      v89.i64[1] = v88;
      v90 = vmulq_f32(v79, v85);
      v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
      v91 = vpadd_f32(*v90.f32, *v90.f32);
      v92 = vrecpe_f32(v91);
      v93 = 4;
      do
      {
        v92 = vmul_f32(v92, vrecps_f32(v91, v92));
        --v93;
      }

      while (v93);
      v46.i32[3] = 0;
      v47.i32[3] = 0;
      v48.i32[3] = 0;
      v94 = vmls_f32(vmul_f32(*v79.f32, v82), v86, *v80.i8);
      v89.i32[0] = v83.i32[0];
      *v95.f32 = vext_s8(vdup_lane_s32(v84, 0), v88, 4uLL);
      *&v95.u32[2] = v94;
      v96 = vmulq_n_f32(v85, v92.f32[0]);
      v97 = vmulq_n_f32(v96, v58.f32[0]);
      v98 = vmulq_n_f32(v96, v66.f32[0]);
      v99 = vmulq_n_f32(v96, v67.f32[0]);
      v100 = v96;
      v100.i32[3] = 0;
      v101 = vmulq_n_f32(v89, v92.f32[0]);
      v102 = vmulq_lane_f32(v101, *v58.f32, 1);
      v103 = vmulq_lane_f32(v101, *v66.f32, 1);
      v104 = vmulq_lane_f32(v101, *v67.f32, 1);
      v105 = v101;
      v105.i32[3] = 0;
      v106 = vmulq_n_f32(v95, v92.f32[0]);
      v107 = vmulq_laneq_f32(v106, v58, 2);
      v108 = vmulq_laneq_f32(v106, v66, 2);
      v109 = v106;
      v109.i32[3] = 0;
      v110 = vdupq_laneq_s32(v58, 2).u64[0];
      v97.i32[3] = 0;
      v102.i32[3] = 0;
      v111 = vmulq_laneq_f32(v106, v67, 2);
      v107.i32[3] = 0;
      v112 = vaddq_f32(v97, v102);
      v97.i64[0] = vdupq_lane_s32(*v66.f32, 1).u64[0];
      v113 = vaddq_f32(v107, v112);
      v107.i64[0] = vextq_s8(v66, v66, 8uLL).u64[0];
      v98.i32[3] = 0;
      v103.i32[3] = 0;
      v108.i32[3] = 0;
      v114 = vaddq_f32(v108, vaddq_f32(v98, v103));
      v99.i32[3] = 0;
      v104.i32[3] = 0;
      v111.i32[3] = 0;
      *v115.f32 = vext_s8(*&vdupq_lane_s32(*v58.f32, 0), *v66.f32, 4uLL);
      v115.i64[1] = vdup_lane_s32(*v67.f32, 0).u32[0];
      v116 = vaddq_f32(v111, vaddq_f32(v99, v104));
      *v117.f32 = vext_s8(*v58.f32, *v97.f32, 4uLL);
      v117.i64[1] = vdup_lane_s32(*v67.f32, 1).u32[0];
      *v111.f32 = vext_s8(v110, *v107.f32, 4uLL);
      v111.i64[1] = vdup_laneq_s32(v67, 2).u32[0];
      v118 = vmulq_n_f32(v115, v113.f32[0]);
      v118.i32[3] = 0;
      v119 = vmulq_lane_f32(v117, *v113.f32, 1);
      v119.i32[3] = 0;
      v120 = vmulq_laneq_f32(v111, v113, 2);
      v120.i32[3] = 0;
      v121 = vaddq_f32(v120, vaddq_f32(v118, v119));
      v122 = vmulq_n_f32(v115, v114.f32[0]);
      v122.i32[3] = 0;
      v123 = vmulq_lane_f32(v117, *v114.f32, 1);
      v123.i32[3] = 0;
      v124 = vmulq_laneq_f32(v111, v114, 2);
      v124.i32[3] = 0;
      v125 = vmulq_n_f32(v115, v116.f32[0]);
      v125.i32[3] = 0;
      v126 = vmulq_lane_f32(v117, *v116.f32, 1);
      v126.i32[3] = 0;
      v127 = vmulq_laneq_f32(v111, v116, 2);
      v127.i32[3] = 0;
      v345 = v100;
      v346[0] = v100;
      v343 = v109;
      v344 = v105;
      v346[1] = v105;
      v346[2] = v109;
      v341 = v113;
      v342 = v114;
      v346[3] = v113;
      v346[4] = v114;
      v346[5] = v116;
      v347 = vaddq_f32(v46, v121);
      v337 = vaddq_f32(v47, vaddq_f32(v124, vaddq_f32(v122, v123)));
      v338 = v347;
      v348 = v337;
      v349 = vaddq_f32(v48, vaddq_f32(v127, vaddq_f32(v125, v126)));
      v339 = v349;
      v340 = v116;
      *v128.f32 = physx::Dy::ArticulationFnsSimdBase::computeSIS(v346, v6 + 30, v6 + 15);
      v129 = vnegq_f32(v128);
      v130 = v129;
      v130.i32[3] = 0;
      v132 = vnegq_f32(v131);
      v133 = v132;
      v133.i32[3] = 0;
      v135 = vnegq_f32(v134);
      v136 = v135;
      v136.i32[3] = 0;
      v133.i64[0] = vextq_s8(v133, v133, 8uLL).u64[0];
      v137 = vextq_s8(v136, v136, 8uLL).u64[0];
      v138 = vext_s8(*v135.f32, v137, 4uLL);
      v139 = vext_s8(*v132.f32, *v133.i8, 4uLL);
      v140 = vmls_f32(vmul_f32(*v135.f32, *v133.i8), *v132.f32, v137);
      v141 = vmls_f32(vmul_f32(*v132.f32, v138), v139, *v135.f32);
      *v142.f32 = vext_s8(v141, v140, 4uLL);
      v141.i32[1] = 0;
      v142.i64[1] = v141.u32[0];
      v143 = vextq_s8(v130, v130, 8uLL).u64[0];
      v144 = vext_s8(*v129.f32, v143, 4uLL);
      v145 = vmul_f32(*v129.f32, v137);
      v146 = vmls_f32(vmul_f32(*v135.f32, v144), v138, *v129.f32).u32[0];
      *v147.f32 = vdup_lane_s32(vmls_f32(v145, *v135.f32, v143), 0);
      v147.i64[1] = v146;
      v148 = vmulq_f32(v130, v142);
      v148.i64[0] = vpaddq_f32(v148, v148).u64[0];
      v149 = vpadd_f32(*v148.f32, *v148.f32);
      v150 = vrecpe_f32(v149);
      v151 = 4;
      do
      {
        v150 = vmul_f32(v150, vrecps_f32(v149, v150));
        --v151;
      }

      while (v151);
      v147.i32[0] = v140.i32[0];
      *v152.f32 = vext_s8(vdup_lane_s32(v141, 0), v146, 4uLL);
      *&v152.u32[2] = vmls_f32(vmul_f32(*v129.f32, v139), v144, *v132.f32);
      v153 = vmulq_n_f32(v142, v150.f32[0]);
      v155 = *(v6 + 9);
      v154 = *(v6 + 10);
      v157 = *(v6 + 11);
      v156 = *(v6 + 12);
      v159 = *(v6 + 13);
      v158 = *(v6 + 14);
      v160 = vmulq_laneq_f32(v159, v153, 2);
      v160.i32[3] = 0;
      v161 = vmlaq_lane_f32(v160, v157, *v153.f32, 1);
      v161.i64[1] = vextq_s8(v161, v161, 8uLL).u32[0];
      v162 = vmlaq_n_f32(v161, v155, v153.f32[0]);
      v163 = vmulq_laneq_f32(v158, v153, 2);
      v163.i32[3] = 0;
      v164 = vmlaq_lane_f32(v163, v156, *v153.f32, 1);
      v164.i64[1] = vextq_s8(v164, v164, 8uLL).u32[0];
      v165 = vmlaq_n_f32(v164, v154, v153.f32[0]);
      v153.i32[3] = 0;
      v166 = vmulq_n_f32(v147, v150.f32[0]);
      v167 = vmulq_laneq_f32(v159, v166, 2);
      v167.i32[3] = 0;
      v168 = vmlaq_lane_f32(v167, v157, *v166.f32, 1);
      v168.i64[1] = vextq_s8(v168, v168, 8uLL).u32[0];
      v169 = vmlaq_n_f32(v168, v155, v166.f32[0]);
      v170 = vmulq_laneq_f32(v158, v166, 2);
      v170.i32[3] = 0;
      v171 = vmlaq_lane_f32(v170, v156, *v166.f32, 1);
      v171.i64[1] = vextq_s8(v171, v171, 8uLL).u32[0];
      v172 = vmlaq_n_f32(v171, v154, v166.f32[0]);
      v166.i32[3] = 0;
      v173 = vmulq_n_f32(v152, v150.f32[0]);
      v174 = vmulq_laneq_f32(v159, v173, 2);
      v174.i32[3] = 0;
      v175 = vmlaq_lane_f32(v174, v157, *v173.f32, 1);
      v175.i64[1] = vextq_s8(v175, v175, 8uLL).u32[0];
      v176 = vmlaq_n_f32(v175, v155, v173.f32[0]);
      v177 = vmulq_laneq_f32(v158, v173, 2);
      v177.i32[3] = 0;
      v178 = vmlaq_lane_f32(v177, v156, *v173.f32, 1);
      v178.i64[1] = vextq_s8(v178, v178, 8uLL).u32[0];
      v179 = vmlaq_n_f32(v178, v154, v173.f32[0]);
      v173.i32[3] = 0;
      *v6 = v345;
      *(v6 + 1) = v344;
      v162.i64[1] = vextq_s8(v162, v162, 8uLL).u32[0];
      *(v6 + 2) = v343;
      *(v6 + 3) = v341;
      v169.i64[1] = vextq_s8(v169, v169, 8uLL).u32[0];
      v176.i64[1] = vextq_s8(v176, v176, 8uLL).u32[0];
      *(v6 + 4) = v342;
      *(v6 + 5) = v340;
      v165.i64[1] = vextq_s8(v165, v165, 8uLL).u32[0];
      v172.i64[1] = vextq_s8(v172, v172, 8uLL).u32[0];
      *(v6 + 6) = v338;
      *(v6 + 7) = v337;
      v179.i64[1] = vextq_s8(v179, v179, 8uLL).u32[0];
      v180 = &v1[25 * v7];
      v181 = *v180;
      v182 = v180[1];
      v184 = v180[2];
      v183 = v180[3];
      v185 = v180[4];
      v186 = v180[5];
      v187 = v180[6];
      v188 = v180[7];
      *(v6 + 8) = v339;
      v189 = vmlsq_lane_f32(v181, v162, *v155.f32, 0);
      v189.i64[1] = vextq_s8(v189, v189, 8uLL).u32[0];
      v190 = vmlsq_lane_f32(v183, v162, *v154.f32, 0);
      v190.i64[1] = vextq_s8(v190, v190, 8uLL).u32[0];
      v191 = vmlsq_lane_f32(v187, v165, *v154.f32, 0);
      v191.i64[1] = vextq_s8(v191, v191, 8uLL).u32[0];
      v192 = vmlsq_lane_f32(v182, v162, *v155.f32, 1);
      v192.i64[1] = vextq_s8(v192, v192, 8uLL).u32[0];
      v193 = vmlsq_lane_f32(v185, v162, *v154.f32, 1);
      v193.i64[1] = vextq_s8(v193, v193, 8uLL).u32[0];
      v194 = vmlsq_lane_f32(v188, v165, *v154.f32, 1);
      v194.i64[1] = vextq_s8(v194, v194, 8uLL).u32[0];
      v195 = vmlsq_laneq_f32(v184, v162, v155, 2);
      v195.i64[1] = vextq_s8(v195, v195, 8uLL).u32[0];
      v196 = vmlsq_laneq_f32(v186, v162, v154, 2);
      v196.i64[1] = vextq_s8(v196, v196, 8uLL).u32[0];
      v197 = vmlsq_laneq_f32(v180[8], v165, v154, 2);
      v197.i64[1] = vextq_s8(v197, v197, 8uLL).u32[0];
      v198 = vmlsq_lane_f32(v189, v169, *v157.f32, 0);
      v198.i64[1] = vextq_s8(v198, v198, 8uLL).u32[0];
      v199 = vmlsq_lane_f32(v190, v169, *v156.f32, 0);
      v199.i64[1] = vextq_s8(v199, v199, 8uLL).u32[0];
      v200 = vmlsq_lane_f32(v191, v172, *v156.f32, 0);
      v200.i64[1] = vextq_s8(v200, v200, 8uLL).u32[0];
      v201 = vmlsq_lane_f32(v192, v169, *v157.f32, 1);
      v201.i64[1] = vextq_s8(v201, v201, 8uLL).u32[0];
      v202 = vmlsq_lane_f32(v193, v169, *v156.f32, 1);
      v202.i64[1] = vextq_s8(v202, v202, 8uLL).u32[0];
      v203 = vmlsq_lane_f32(v194, v172, *v156.f32, 1);
      v203.i64[1] = vextq_s8(v203, v203, 8uLL).u32[0];
      v204 = vmlsq_laneq_f32(v195, v169, v157, 2);
      v204.i64[1] = vextq_s8(v204, v204, 8uLL).u32[0];
      v205 = vmlsq_laneq_f32(v196, v169, v156, 2);
      v205.i64[1] = vextq_s8(v205, v205, 8uLL).u32[0];
      v206 = vmlsq_laneq_f32(v197, v172, v156, 2);
      v206.i64[1] = vextq_s8(v206, v206, 8uLL).u32[0];
      v207 = vmlsq_lane_f32(v198, v176, *v159.f32, 0);
      v207.i64[1] = vextq_s8(v207, v207, 8uLL).u32[0];
      v208 = vmlsq_lane_f32(v199, v176, *v158.f32, 0);
      v208.i64[1] = vextq_s8(v208, v208, 8uLL).u32[0];
      v209 = vmlsq_lane_f32(v200, v179, *v158.f32, 0);
      v209.i64[1] = vextq_s8(v209, v209, 8uLL).u32[0];
      v210 = vmlsq_lane_f32(v201, v176, *v159.f32, 1);
      v210.i64[1] = vextq_s8(v210, v210, 8uLL).u32[0];
      v211 = vmlsq_lane_f32(v202, v176, *v158.f32, 1);
      v211.i64[1] = vextq_s8(v211, v211, 8uLL).u32[0];
      v212 = vmlsq_lane_f32(v203, v179, *v158.f32, 1);
      v212.i64[1] = vextq_s8(v212, v212, 8uLL).u32[0];
      v213 = vmlsq_laneq_f32(v204, v176, v159, 2);
      v213.i64[1] = vextq_s8(v213, v213, 8uLL).u32[0];
      v214 = vmlsq_laneq_f32(v205, v176, v158, 2);
      v214.i64[1] = vextq_s8(v214, v214, 8uLL).u32[0];
      v215 = vmlsq_laneq_f32(v206, v179, v158, 2);
      v215.i64[1] = vextq_s8(v215, v215, 8uLL).u32[0];
      *(v6 + 9) = v162;
      *(v6 + 10) = v165;
      *(v6 + 11) = v169;
      *(v6 + 12) = v172;
      *(v6 + 13) = v176;
      *(v6 + 14) = v179;
      *v180 = v207;
      v180[1] = v210;
      v180[2] = v213;
      v180[3] = v208;
      v180[4] = v211;
      v180[5] = v214;
      v180[6] = v209;
      v180[7] = v212;
      v180[8] = v215;
      *(v6 + 21) = v153;
      *(v6 + 22) = v166;
      *(v6 + 23) = v173;
      --v3;
      v5.i64[0] = 0x3F0000003F000000;
      v5.i64[1] = 0x3F0000003F000000;
    }

    while (v3);
  }

  v216 = v1[6];
  v217 = v1[7];
  v218 = v1[8];
  *v219.f32 = vext_s8(vdup_lane_s32(*v216.f32, 0), *v217.f32, 4uLL);
  v219.i64[1] = v218.i64[0];
  v220 = vext_s8(*v216.f32, vdup_lane_s32(*v217.f32, 1), 4uLL);
  *&v234.u32[2] = vdup_lane_s32(*v218.f32, 1);
  *v221.f32 = vext_s8(vdup_laneq_s32(v216, 2), *&vextq_s8(v217, v217, 8uLL), 4uLL);
  v221.i64[1] = vextq_s8(v218, v218, 8uLL).u64[0];
  v222 = vaddq_f32(v216, v219);
  v223 = vaddq_f32(v217, v234);
  v224 = vaddq_f32(v218, v221);
  v225.i64[0] = 0x3F0000003F000000;
  v225.i64[1] = 0x3F0000003F000000;
  v226 = vmulq_f32(v222, v225);
  v227 = v226;
  v227.i32[3] = 0;
  v228 = vmulq_f32(v223, v225);
  v229 = v228;
  v229.i32[3] = 0;
  v230 = vmulq_f32(v224, v225);
  v231 = v230;
  v231.i32[3] = 0;
  v232 = v1[1];
  v233 = v1[2];
  *v234.f32 = vext_s8(vdup_lane_s32(*v1->f32, 0), *v232.f32, 4uLL);
  *v235.f32 = vext_s8(*v1->f32, vdup_lane_s32(*v232.f32, 1), 4uLL);
  *&v235.u32[2] = vdup_lane_s32(*v233.f32, 1);
  *v236.f32 = vext_s8(vdup_laneq_s32(*v1, 2), *&vextq_s8(v232, v232, 8uLL), 4uLL);
  v236.i64[1] = vextq_s8(v233, v233, 8uLL).u64[0];
  v237 = vaddq_f32(v232, v235);
  v238 = vaddq_f32(v233, v236);
  v229.i64[0] = vextq_s8(v229, v229, 8uLL).u64[0];
  v239 = vextq_s8(v231, v231, 8uLL).u64[0];
  v240 = vext_s8(*v230.f32, v239, 4uLL);
  v241 = vext_s8(*v228.f32, *v229.i8, 4uLL);
  v242 = vmls_f32(vmul_f32(*v230.f32, *v229.i8), *v228.f32, v239);
  v243 = vmls_f32(vmul_f32(*v228.f32, v240), v241, *v230.f32);
  *v244.f32 = vext_s8(v243, v242, 4uLL);
  v243.i32[1] = 0;
  v244.i64[1] = v243.u32[0];
  v245 = vextq_s8(v227, v227, 8uLL).u64[0];
  v246 = vext_s8(*v226.f32, v245, 4uLL);
  *v248.f32 = vdup_lane_s32(vmls_f32(vmul_f32(*v226.f32, v239), *v230.f32, v245), 0);
  v247 = vmls_f32(vmul_f32(*v230.f32, v246), v240, *v226.f32).u32[0];
  v248.i64[1] = v247;
  v249 = vmulq_f32(v237, v225);
  v250 = vmulq_f32(v227, v244);
  v250.i64[0] = vpaddq_f32(v250, v250).u64[0];
  v251 = vpadd_f32(*v250.f32, *v250.f32);
  v252 = vrecpe_f32(v251);
  v253 = 4;
  do
  {
    v252 = vmul_f32(v252, vrecps_f32(v251, v252));
    --v253;
  }

  while (v253);
  v234.i64[1] = v1[2].i64[0];
  v254.i64[0] = 0x3F0000003F000000;
  v254.i64[1] = 0x3F0000003F000000;
  v255 = vmulq_f32(vaddq_f32(*v1, v234), v254);
  v256 = vmulq_f32(v238, v254);
  v255.i32[3] = 0;
  v249.i32[3] = 0;
  v256.i32[3] = 0;
  v248.i32[0] = v242.i32[0];
  *v257.f32 = vext_s8(vdup_lane_s32(v243, 0), v247, 4uLL);
  *&v257.u32[2] = vmls_f32(vmul_f32(*v226.f32, v241), v246, *v228.f32);
  v258 = vmulq_n_f32(v244, v252.f32[0]);
  v259 = vmulq_n_f32(v248, v252.f32[0]);
  v260 = v1[3];
  v261 = v1[4];
  v262 = vnegq_f32(v260);
  v262.i32[3] = 0;
  v263 = vnegq_f32(v261);
  v263.i32[3] = 0;
  v264 = v1[5];
  v265 = vnegq_f32(v264);
  v265.i32[3] = 0;
  v266 = vmulq_n_f32(v262, v258.f32[0]);
  v266.i32[3] = 0;
  v267 = vmulq_lane_f32(v263, *v258.f32, 1);
  v267.i32[3] = 0;
  v268 = vmulq_n_f32(v257, v252.f32[0]);
  v269 = vmulq_laneq_f32(v265, v258, 2);
  v269.i32[3] = 0;
  v270 = vaddq_f32(vaddq_f32(v266, v267), v269);
  v271 = vmulq_n_f32(v262, v259.f32[0]);
  v271.i32[3] = 0;
  v272 = vmulq_lane_f32(v263, *v259.f32, 1);
  v272.i32[3] = 0;
  v273 = vmulq_laneq_f32(v265, v259, 2);
  v273.i32[3] = 0;
  v274 = vaddq_f32(vaddq_f32(v271, v272), v273);
  v275 = vmulq_n_f32(v262, v268.f32[0]);
  v275.i32[3] = 0;
  v276 = vmulq_lane_f32(v263, *v268.f32, 1);
  v276.i32[3] = 0;
  v277 = vmulq_laneq_f32(v265, v268, 2);
  v277.i32[3] = 0;
  v278 = vaddq_f32(vaddq_f32(v275, v276), v277);
  v279 = vmulq_n_f32(v270, v260.f32[0]);
  v279.i32[3] = 0;
  v280 = vmulq_n_f32(v274, v261.f32[0]);
  v280.i32[3] = 0;
  v281 = vmulq_n_f32(v278, v264.f32[0]);
  v281.i32[3] = 0;
  v282 = vaddq_f32(v281, vaddq_f32(v279, v280));
  v283 = vmulq_lane_f32(v270, *v260.f32, 1);
  v283.i32[3] = 0;
  v284 = vmulq_lane_f32(v274, *v261.f32, 1);
  v284.i32[3] = 0;
  v285 = vmulq_n_f32(v278, *vdup_lane_s32(*v264.f32, 1).i32);
  v285.i32[3] = 0;
  v286 = vmulq_laneq_f32(v270, v260, 2);
  v286.i32[3] = 0;
  v287 = vmulq_laneq_f32(v274, v261, 2);
  v287.i32[3] = 0;
  v288 = vmulq_laneq_f32(v278, v264, 2);
  v288.i32[3] = 0;
  v289 = vaddq_f32(v249, vaddq_f32(v285, vaddq_f32(v283, v284)));
  v290 = vaddq_f32(v256, vaddq_f32(v288, vaddq_f32(v286, v287)));
  v291 = vextq_s8(v290, v290, 8uLL).u64[0];
  v292 = vextq_s8(v290, v290, 4uLL).u64[0];
  v293 = vextq_s8(v289, v289, 4uLL).u64[0];
  v294 = vmls_f32(vmul_f32(*&vextq_s8(v289, v289, 8uLL), *v290.i8), *v289.i8, v291);
  v295 = vmls_f32(vmul_f32(*v289.i8, v292), v293, *v290.i8);
  *v296.f32 = vext_s8(v295, v294, 4uLL);
  v295.i32[1] = 0;
  v296.i64[1] = v295.u32[0];
  v297 = vaddq_f32(v255, v282);
  v298 = vmulq_f32(v297, v296);
  v298.i64[0] = vpaddq_f32(v298, v298).u64[0];
  v299 = vpadd_f32(*v298.f32, *v298.f32);
  v300 = vrecpe_f32(v299);
  v301 = 4;
  do
  {
    v300 = vmul_f32(v300, vrecps_f32(v299, v300));
    --v301;
  }

  while (v301);
  v302 = vextq_s8(v297, v297, 4uLL).u64[0];
  v303 = vmls_f32(vmul_f32(*v290.i8, v302), v292, *v297.f32);
  *v304.f32 = vdup_lane_s32(vmls_f32(vmul_f32(v291, *v297.f32), *v290.i8, *&vextq_s8(v297, v297, 8uLL)), 0);
  *&v304.u32[2] = v303;
  v268.i32[3] = 0;
  v259.i32[3] = 0;
  v258.i32[3] = 0;
  v304.i32[0] = v294.i32[0];
  *v305.f32 = vext_s8(vdup_lane_s32(v295, 0), v303, 4uLL);
  *&v305.u32[2] = vmls_f32(vmul_f32(*v297.f32, v293), v302, *v289.i8);
  v306 = vmulq_n_f32(v296, v300.f32[0]);
  v307 = vmulq_n_f32(v306, v270.f32[0]);
  v308 = vmulq_n_f32(v306, v274.f32[0]);
  v309 = vmulq_n_f32(v306, v278.f32[0]);
  v306.i32[3] = 0;
  v310 = vmulq_n_f32(v304, v300.f32[0]);
  v311 = vmulq_lane_f32(v310, *v270.f32, 1);
  v312 = vmulq_lane_f32(v310, *v274.f32, 1);
  v313 = vmulq_lane_f32(v310, *v278.f32, 1);
  v310.i32[3] = 0;
  v314 = vmulq_n_f32(v305, v300.f32[0]);
  v315 = vmulq_laneq_f32(v314, v270, 2);
  v316 = vmulq_laneq_f32(v314, v274, 2);
  v317 = v314;
  v317.i32[3] = 0;
  v318 = vdupq_laneq_s32(v270, 2).u64[0];
  v307.i32[3] = 0;
  v311.i32[3] = 0;
  v319 = vmulq_laneq_f32(v314, v278, 2);
  v315.i32[3] = 0;
  v320 = vaddq_f32(v307, v311);
  v311.i64[0] = vdupq_lane_s32(*v274.f32, 1).u64[0];
  v321 = vaddq_f32(v315, v320);
  v315.i64[0] = vextq_s8(v274, v274, 8uLL).u64[0];
  v308.i32[3] = 0;
  v312.i32[3] = 0;
  v316.i32[3] = 0;
  v322 = vaddq_f32(v316, vaddq_f32(v308, v312));
  v309.i32[3] = 0;
  v313.i32[3] = 0;
  v319.i32[3] = 0;
  *v323.f32 = vext_s8(*&vdupq_lane_s32(*v270.f32, 0), *v274.f32, 4uLL);
  v323.i64[1] = vdup_lane_s32(*v278.f32, 0).u32[0];
  v324 = vaddq_f32(v319, vaddq_f32(v309, v313));
  *v325.f32 = vext_s8(*v270.f32, *v311.f32, 4uLL);
  v325.i64[1] = vdup_lane_s32(*v278.f32, 1).u32[0];
  *v311.f32 = vext_s8(v318, *v315.f32, 4uLL);
  v311.i64[1] = vdup_laneq_s32(v278, 2).u32[0];
  v326 = vmulq_n_f32(v323, v321.f32[0]);
  v326.i32[3] = 0;
  v327 = vmulq_lane_f32(v325, *v321.f32, 1);
  v327.i32[3] = 0;
  v328 = vmulq_laneq_f32(v311, v321, 2);
  v328.i32[3] = 0;
  v329 = vaddq_f32(v328, vaddq_f32(v326, v327));
  v330 = vmulq_n_f32(v323, v322.f32[0]);
  v330.i32[3] = 0;
  v331 = vmulq_lane_f32(v325, *v322.f32, 1);
  v331.i32[3] = 0;
  v332 = vmulq_laneq_f32(v311, v322, 2);
  v332.i32[3] = 0;
  v333 = vmulq_n_f32(v323, v324.f32[0]);
  v333.i32[3] = 0;
  v334 = vmulq_lane_f32(v325, *v324.f32, 1);
  v334.i32[3] = 0;
  v335 = vmulq_laneq_f32(v311, v324, 2);
  v335.i32[3] = 0;
  result = vaddq_f32(v259, vaddq_f32(v332, vaddq_f32(v330, v331)));
  *v1 = v306;
  v1[1] = v310;
  v1[2] = v317;
  v1[3] = v321;
  v1[4] = v322;
  v1[5] = v324;
  v1[6] = vaddq_f32(v258, v329);
  v1[7] = result;
  v1[8] = vaddq_f32(v268, vaddq_f32(v335, vaddq_f32(v333, v334)));
  return result;
}

int8x8_t physx::Dy::ArticulationFnsSimdBase::computeSIS(float32x4_t *a1, float32x2_t *a2, float32x4_t *a3)
{
  v3 = *a2[2].f32;
  v5 = *a2[4].f32;
  v4 = *a2[6].f32;
  v7 = *a2[8].f32;
  v6 = *a2[10].f32;
  v8 = a1[1];
  v9 = vmulq_n_f32(*a1, COERCE_FLOAT(*a2->f32));
  v9.i32[3] = 0;
  v10 = vmulq_lane_f32(v8, *a2, 1);
  v10.i32[3] = 0;
  v12 = a1[2];
  v11 = a1[3];
  v13 = vmulq_laneq_f32(v12, *a2->f32, 2);
  v13.i32[3] = 0;
  v14 = vaddq_f32(vaddq_f32(v9, v10), v13);
  v15 = vmulq_n_f32(v11, v3.f32[0]);
  v15.i32[3] = 0;
  v16 = a1[4];
  v17 = a1[5];
  v18 = vmulq_lane_f32(v16, *v3.f32, 1);
  v18.i32[3] = 0;
  v19 = vmulq_laneq_f32(v17, v3, 2);
  v19.i32[3] = 0;
  v20 = vaddq_f32(vaddq_f32(v15, v18), v19);
  v21 = vmulq_f32(*a2->f32, v11);
  v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
  v22 = vmulq_f32(*a2->f32, v16);
  v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
  v23 = vmulq_f32(*a2->f32, v17);
  v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
  *v21.f32 = vext_s8(vpadd_f32(*v21.f32, *v21.f32), vpadd_f32(*v22.f32, *v22.f32), 4uLL);
  v21.i64[1] = vpadd_f32(*v23.f32, *v23.f32).u32[0];
  v24 = a1[6];
  v25 = a1[7];
  v26 = vmulq_n_f32(v24, v3.f32[0]);
  v26.i32[3] = 0;
  v27 = vmulq_lane_f32(v25, *v3.f32, 1);
  v27.i32[3] = 0;
  v28 = vaddq_f32(v14, v20);
  v29 = a1[8];
  v30 = vmulq_laneq_f32(v29, v3, 2);
  v30.i32[3] = 0;
  v31 = vaddq_f32(vaddq_f32(vaddq_f32(v26, v27), v30), v21);
  v32 = vmulq_n_f32(*a1, v5.f32[0]);
  v32.i32[3] = 0;
  v33 = vmulq_lane_f32(v8, *v5.f32, 1);
  v33.i32[3] = 0;
  v34 = vmulq_laneq_f32(v12, v5, 2);
  v34.i32[3] = 0;
  v35 = vaddq_f32(v32, v33);
  v36 = vmulq_n_f32(v11, v4.f32[0]);
  v36.i32[3] = 0;
  v37 = vmulq_lane_f32(v16, *v4.f32, 1);
  v37.i32[3] = 0;
  v38 = vaddq_f32(v35, v34);
  v39 = vmulq_laneq_f32(v17, v4, 2);
  v39.i32[3] = 0;
  v40 = vaddq_f32(v38, vaddq_f32(vaddq_f32(v36, v37), v39));
  v41 = vmulq_f32(v5, v11);
  v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
  v42 = vmulq_f32(v5, v16);
  v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
  v43 = vmulq_f32(v5, v17);
  v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
  *v41.f32 = vext_s8(vpadd_f32(*v41.f32, *v41.f32), vpadd_f32(*v42.f32, *v42.f32), 4uLL);
  v41.i64[1] = vpadd_f32(*v43.f32, *v43.f32).u32[0];
  v44 = vmulq_n_f32(v24, v4.f32[0]);
  v44.i32[3] = 0;
  v45 = vmulq_lane_f32(v25, *v4.f32, 1);
  v45.i32[3] = 0;
  v46 = vmulq_laneq_f32(v29, v4, 2);
  v46.i32[3] = 0;
  v47 = vaddq_f32(vaddq_f32(vaddq_f32(v44, v45), v46), v41);
  v48 = vmulq_n_f32(*a1, v7.f32[0]);
  v48.i32[3] = 0;
  v49 = vmulq_lane_f32(v8, *v7.f32, 1);
  v49.i32[3] = 0;
  v50 = vmulq_laneq_f32(v12, v7, 2);
  v50.i32[3] = 0;
  v51 = vaddq_f32(vaddq_f32(v48, v49), v50);
  v52 = vmulq_n_f32(v11, v6.f32[0]);
  v52.i32[3] = 0;
  v53 = vmulq_lane_f32(v16, *v6.f32, 1);
  v53.i32[3] = 0;
  v54 = vmulq_laneq_f32(v17, v6, 2);
  v54.i32[3] = 0;
  v55 = vaddq_f32(vaddq_f32(v52, v53), v54);
  v56 = vmulq_f32(v7, v11);
  v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
  v57 = vmulq_f32(v7, v16);
  v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
  v58 = vmulq_f32(v7, v17);
  v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
  *v57.f32 = vext_s8(vpadd_f32(*v56.f32, *v56.f32), vpadd_f32(*v57.f32, *v57.f32), 4uLL);
  v57.i64[1] = vpadd_f32(*v58.f32, *v58.f32).u32[0];
  v59 = vmulq_n_f32(v24, v6.f32[0]);
  v59.i32[3] = 0;
  v60 = vmulq_lane_f32(v25, *v6.f32, 1);
  v60.i32[3] = 0;
  v61 = vmulq_laneq_f32(v29, v6, 2);
  v61.i32[3] = 0;
  v62 = vaddq_f32(v51, v55);
  v63 = vaddq_f32(vaddq_f32(vaddq_f32(v59, v60), v61), v57);
  v64 = vmulq_f32(*a2->f32, v28);
  v64.i64[0] = vpaddq_f32(v64, v64).u64[0];
  v65 = vmulq_f32(v3, v31);
  v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
  *v64.f32 = vadd_f32(vpadd_f32(*v64.f32, *v64.f32), vpadd_f32(*v65.f32, *v65.f32));
  v66 = vmulq_f32(*a2->f32, v40);
  v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
  v67 = vmulq_f32(v3, v47);
  v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
  *a3 = v28;
  a3[1] = v31;
  a3[2] = v40;
  a3[3] = v47;
  result = vext_s8(*v64.f32, vadd_f32(vpadd_f32(*v66.f32, *v66.f32), vpadd_f32(*v67.f32, *v67.f32)), 4uLL);
  a3[4] = v62;
  a3[5] = v63;
  return result;
}

void physx::Dy::Articulation::~Articulation(physx::Dy::Articulation *this)
{
  *this = &unk_1F5D1CFA8;
  v2 = *(this + 69);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 33) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v4 = *(this + 65);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 31) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v6 = *(this + 61);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 29) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v8 = *(this + 57);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 27))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v9 = *(this + 53);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *(this + 25))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v10 = *(this + 49);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0 && *(this + 23))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v11 = *(this + 45);
  if ((v11 & 0x80000000) == 0 && (v11 & 0x7FFFFFFF) != 0 && *(this + 21))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *this = &unk_1F5D1D138;
  v12 = *(this + 39);
  if ((v12 & 0x80000000) == 0 && (v12 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 18))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

{
  physx::Dy::Articulation::~Articulation(this);

  JUMPOUT(0x1E6906510);
}

uint64_t physx::Dy::Articulation::resize(physx::Dy::Articulation *this, uint64_t a2)
{
  v2 = *(this + 160);
  if (v2 == 1)
  {
    v5 = *(this + 140);
    if (v5 != a2)
    {
      v14 = 0;
      v13 = 0;
      (*(*this + 48))(this, a2, &v14 + 4, &v14, &v13);
      LOBYTE(v10) = 0;
      physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resize(this + 168, v14, &v10);
      v10 = xmmword_1E3047670;
      v11 = xmmword_1E3047680;
      v12 = xmmword_1E30476A0;
      physx::shdfnd::Array<physx::shdfnd::aos::Mat33V,physx::shdfnd::ReflectionAllocator<physx::shdfnd::aos::Mat33V>>::resize(this + 200, a2, &v10);
      v10 = xmmword_1E3047670;
      v11 = xmmword_1E3047680;
      v12 = xmmword_1E30476A0;
      physx::shdfnd::Array<physx::shdfnd::aos::Mat33V,physx::shdfnd::ReflectionAllocator<physx::shdfnd::aos::Mat33V>>::resize(this + 184, a2, &v10);
      v10 = xmmword_1E30474D0;
      *&v11 = 0;
      DWORD2(v11) = 0;
      physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::resize(this + 232, a2, &v10);
      v10 = xmmword_1E30474D0;
      physx::shdfnd::Array<physx::PxQuat,physx::shdfnd::ReflectionAllocator<physx::PxQuat>>::resize(this + 248, a2, &v10);
      v6 = *(this + 23);
      *(this + 12) = *(this + 25);
      *(this + 13) = v6;
      LOBYTE(v10) = 0;
      physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resize(this + 216, v13, &v10);
      *(this + 16) = *(this + 27);
      *(this + 71) = v13;
      v7 = v14;
      *(this + 69) = WORD2(v14);
      *(this + 68) = v7;
      v8 = *(this + 31);
      *(this + 10) = *(this + 29);
      *(this + 11) = v8;
      v10 = 0u;
      v11 = 0u;
      physx::shdfnd::Array<physx::Cm::SpatialVectorV,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorV>>::resize(this + 264, a2, &v10);
      *(this + 8) = *(this + 33);
      if ((*(this + 160) & 1) == 0)
      {
        return v2;
      }

      v5 = *(this + 140);
    }

    if (v5 != a2)
    {
      *(this + 9) = *(this + 18);
      *(this + 6) = this;
    }

    *(this + 160) = 0;
  }

  return v2;
}

uint64_t physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resize(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    result = memset((*v5 + v6), *a3, a2 - v6);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::shdfnd::aos::Mat33V,physx::shdfnd::ReflectionAllocator<physx::shdfnd::aos::Mat33V>>::resize(uint64_t result, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::shdfnd::aos::Mat33V,physx::shdfnd::ReflectionAllocator<physx::shdfnd::aos::Mat33V>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < v4)
  {
    v7 = *v5 + 48 * v4;
    v8 = (*v5 + 48 * v6);
    do
    {
      v9 = *a3;
      v10 = a3[2];
      v8[1] = a3[1];
      v8[2] = v10;
      *v8 = v9;
      v8 += 3;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = v4;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::resize(uint64_t result, unsigned int a2, __int128 *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 28 * a2;
    v8 = *v5 + 28 * v6;
    v9 = *a3;
    v10 = *(a3 + 2);
    v11 = *(a3 + 6);
    do
    {
      *v8 = v9;
      *(v8 + 16) = v10;
      *(v8 + 24) = v11;
      v8 += 28;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxQuat,physx::shdfnd::ReflectionAllocator<physx::PxQuat>>::resize(uint64_t result, unsigned int a2, __int128 *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxQuat,physx::shdfnd::ReflectionAllocator<physx::PxQuat>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 16 * a2;
    v8 = (*v5 + 16 * v6);
    v9 = *a3;
    do
    {
      *v8++ = v9;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::SpatialVectorV,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorV>>::resize(uint64_t result, unsigned int a2, _OWORD *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Cm::SpatialVectorV,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorV>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 32 * a2;
    v8 = (*v5 + 32 * v6);
    do
    {
      *v8 = *a3;
      v8[1] = a3[1];
      v8 += 2;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::Dy::ArticulationV::resize(physx::Dy::ArticulationV *this, int a2)
{
  result = *(this + 160);
  if (result == 1)
  {
    if (*(this + 140) != a2)
    {
      *(this + 9) = *(this + 18);
      *(this + 6) = this;
    }

    *(this + 160) = 0;
  }

  return result;
}

void physx::Dy::PxvRegisterArticulations(physx::Dy *this)
{
  qword_1EE1C7E60 = physx::Dy::Articulation::computeUnconstrainedVelocities;
  qword_1EE1C7EC0 = physx::Dy::Articulation::updateBodies;
  qword_1EE1C7EA0 = physx::Dy::Articulation::updateBodies;
  qword_1EE1C7ED0 = physx::Dy::Articulation::saveVelocity;
  qword_1EE1C7EB0 = physx::Dy::Articulation::saveVelocityTGS;
  qword_1EE1C7E90 = physx::Dy::Articulation::recordDeltaMotion;
  qword_1EE1C7E80 = physx::Dy::Articulation::deltaMotionToMotionVelocity;
  qword_1EE1C7E50 = physx::Dy::Articulation::computeUnconstrainedVelocitiesTGS;
  qword_1EE1C7E70 = physx::Dy::Articulation::setupSolverConstraintsTGS;
  physx::Dy::SolverCoreRegisterArticulationFns(this);

  physx::Dy::SolverCoreRegisterArticulationFnsCoulomb(v1);
}

uint64_t physx::Dy::Articulation::computeUnconstrainedVelocities(uint64_t a1, uint64_t (***a2)(void), uint64_t a3, _DWORD *a4, float a5)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 80);
  v9 = *(a1 + 92);
  v10 = 9 * v9;
  v11 = v8 + 144 * v9;
  physx::Dy::Articulation::computeUnconstrainedVelocitiesInternal(*a1);
  v114 = 0;
  v104 = a4;
  *a4 = 0;
  v101 = v7;
  v108 = *(v7 + 168);
  v16 = *v108;
  if (v16 >= 2)
  {
    v114 = 0;
    v17 = 1.0;
    v18 = v8 + 16 * v10;
    v19 = v18 + 168;
    v20 = v18 + 251;
    v21 = 1;
    v22 = -0.5;
    *ImpulseSelfResponse.i64 = -2.84809454e-306;
    v96 = -2.84809454e-306;
    v107 = *v108;
    v112 = v6;
    v100 = v11;
    do
    {
      v24 = v6 + 40 * v21;
      v25 = *(v24 + 24);
      v26 = v21 + 1;
      if (v21 + 1 < v16)
      {
        v27 = ~(v20 >> 5) + (v19 >> 5);
        _X9 = *(v6 + 40 * v26 + 24);
        v29 = ~((_X9 + 359) >> 5) + (_X9 >> 5);
        do
        {
          __asm { PRFM            #0, [X9] }

          _X9 += 32;
          _CF = __CFADD__(v29++, 1);
        }

        while (!_CF);
        _X9 = v11 + 84 * v26;
        do
        {
          __asm { PRFM            #0, [X9] }

          _X9 += 32;
          _CF = __CFADD__(v27++, 1);
        }

        while (!_CF);
      }

      if ((*(v25 + 329) & 1) != 0 || *(v25 + 328) == 1)
      {
        v37 = v11 + 84 * v21;
        v38 = *(v37 + 56);
        v39 = *(v37 + 68);
        if (v38 == 0.0)
        {
          v42 = 1.0;
          v41 = 0.0;
          v12 = 0.0;
        }

        else
        {
          v40 = sqrtf(((v38 * v38) + 0.0) + (v39 * v39));
          v41 = v38 / v40;
          *&v12 = 0.0 / v40;
          v42 = v39 / v40;
        }

        LODWORD(v14) = *(v37 + 60);
        LODWORD(v15) = *(v37 + 64);
        *&v13 = (((v38 * v42) - (v39 * v41)) - (*&v14 * *&v12)) + (*&v12 * *&v15);
        v123[0] = *&v13;
        v123[1] = (((v42 * *&v14) - (v39 * *&v12)) - (*&v15 * v41)) + (*&v12 * v38);
        v123[2] = (((v42 * *&v15) - (v39 * *&v12)) - (v38 * *&v12)) + (v41 * *&v14);
        v123[3] = (((v38 * v41) + (v39 * v42)) + (*&v14 * *&v12)) + (*&v15 * *&v12);
        ImpulseSelfResponse.i32[0] = *(v25 + 344);
        v43 = *(v25 + 336);
        v121 = v43;
        v122 = ImpulseSelfResponse.i32[0];
        v117 = 0.0;
        if (*(v25 + 328) == 1 && physx::Cm::ConeLimitHelper::getLimit(&v121, v123, &v118, &v117, *ImpulseSelfResponse.i64, v43, v12, v13, v14, v15))
        {
          if (*(v25 + 320) <= 0.0)
          {
            v45 = *(v25 + 324) > 0.0;
            v44 = 1;
          }

          else
          {
            v44 = 1;
            v45 = 1;
          }
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        v47 = *(v37 + 36);
        v46 = *(v37 + 40);
        v48 = v22 + (v46 * v46);
        v49 = *(v37 + 28);
        v50 = *(v37 + 32);
        v51 = ((v50 * 0.0) + (v49 * 2.0)) + (v47 * 0.0);
        v52 = ((v46 * ((v47 * -0.0) + (v50 * 0.0))) + (v48 * 2.0)) + (v49 * v51);
        v53 = ((v46 * ((v49 * -0.0) + (v47 * 2.0))) + (v48 * 0.0)) + (v50 * v51);
        v54 = ((v46 * ((v50 * -2.0) + (v49 * 0.0))) + (v48 * 0.0)) + (v47 * v51);
        v116[0] = v52;
        v116[1] = v53;
        v116[2] = v54;
        if (v42 == -1.0)
        {
          if (v41 >= 0.0)
          {
            v55 = 1.8447e19;
          }

          else
          {
            v55 = -1.8447e19;
          }
        }

        else
        {
          v55 = v41 / (v42 + v17);
        }

        if (*(v25 + 329) == 1)
        {
          v56 = *(v25 + 356);
          v57 = v55 < ((*(v25 + 352) + v56) / (v17 - (*(v25 + 352) * v56)));
          v58 = v55 > ((*(v25 + 348) - v56) / (v17 + (*(v25 + 348) * v56)));
        }

        else
        {
          v57 = 0;
          v58 = 0;
        }

        v59 = v45 + v44 + v57 + v58;
        if (v59)
        {
          v105 = v45;
          v109 = v58;
          v110 = v57;
          v60 = a3 + 48 * v114;
          *v60 = v101;
          *(v60 + 16) = *(v24 + 32);
          *(v60 + 8) = v101;
          *(v60 + 18) = v21;
          *(v60 + 30) = (160 * v59 + 48) >> 4;
          v61 = (**a2)();
          v63 = 0;
          *(v60 + 32) = v61;
          *(v60 + 40) = 0;
          v113 = (v61 + 48);
          *v61 = 4;
          v111 = v59;
          *(v61 + 1) = v59;
          *(v61 + 2) = 0;
          ImpulseSelfResponse.i32[1] = 1065353216;
          *(v61 + 32) = xmmword_1E3113F30;
          if (v44)
          {
            v64 = v61;
            v66 = *(v37 + 8);
            v65 = *(v37 + 12);
            v67 = v22 + (v65 * v65);
            v68 = *(v37 + 4);
            v69 = (((v119 + v119) * v68) + (*v37 * (v118 + v118))) + (v66 * (v120 + v120));
            v70 = ((v65 * ((v68 * (v120 + v120)) - (v66 * (v119 + v119)))) + ((v118 + v118) * v67)) + (*v37 * v69);
            v71 = ((v65 * ((v66 * (v118 + v118)) - (*v37 * (v120 + v120)))) + ((v119 + v119) * v67)) + (v68 * v69);
            v72 = ((v65 * ((*v37 * (v119 + v119)) - (v68 * (v118 + v118)))) + ((v120 + v120) * v67)) + (v66 * v69);
            v115[0] = v70;
            v115[1] = v71;
            v115[2] = v72;
            v62.f32[0] = 1.0 / a5;
            physx::Dy::ArticulationHelper::createHardLimit(v108, v112, v21, v113, v115, v117, v62);
            if (v105)
            {
              v73 = (v53 * v72) - (v54 * v71);
              v74 = (v54 * v70) - (v52 * v72);
              v75 = (v52 * v71) - (v53 * v70);
              v76 = ((v74 * v74) + (v73 * v73)) + (v75 * v75);
              v77 = 0;
              v78 = 0;
              v79 = 0;
              if (v76 > 0.0)
              {
                v80 = 1.0 / sqrtf(v76);
                *&v77 = v73 * v80;
                *&v78 = v74 * v80;
                *&v79 = v75 * v80;
              }

              v98 = v78;
              *v99 = v77;
              *v106 = v79;
              v81 = *(v25 + 320);
              v82 = *(v25 + 324);
              *(v64 + 208) = 0;
              *(v64 + 216) = 0;
              *(v64 + 224) = 0;
              *(v64 + 232) = 0;
              *(v64 + 240) = v77;
              *(v64 + 244) = v78;
              *(v64 + 248) = v79;
              *(v64 + 256) = v77;
              *(v64 + 260) = v78;
              *(v64 + 264) = v79;
              *(v64 + 288) = v96;
              *(v64 + 296) = 0;
              v83 = *(v112 + 40 * v21 + 32);
              v125[0] = 0uLL;
              v84.i64[0] = __PAIR64__(v78, v77);
              v84.i64[1] = v79;
              v125[1] = v84;
              v85.i32[3] = 0;
              v85.f32[0] = -*&v77;
              v85.f32[1] = -*&v78;
              v85.f32[2] = -*&v79;
              v124[0] = xmmword_1E3113F40;
              v124[1] = v85;
              ImpulseSelfResponse = physx::Dy::ArticulationHelper::getImpulseSelfResponse(v108, v83, v125, (v64 + 304), v21, v124, (v64 + 336));
              HIDWORD(v15) = HIDWORD(v98);
              *(&v14 + 1) = v99[1];
              HIDWORD(v13) = v106[1];
              v89 = (((*&v98 * *(v64 + 324)) + (v99[0] * *(v64 + 320))) + (*v106 * *(v64 + 328))) - (((*&v98 * *(v64 + 356)) + (v99[0] * *(v64 + 352))) + (*v106 * *(v64 + 360)));
              if (v89 < 0.0)
              {
                physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyArticulationHelper.cpp", 372, "Warning: articulation ill-conditioned or under severe stress, tangential spring ignored", v86, v87, v88, SLOBYTE(v96));
              }

              v90 = 1.0 / v89;
              if (v89 <= 0.0)
              {
                v90 = 0.0;
              }

              v91 = v82 * a5;
              v17 = 1.0;
              v92 = v91 + ((a5 * a5) * v81);
              v93 = 1.0 / (v92 + 1.0);
              *(v64 + 236) = 0;
              *(v64 + 220) = 0;
              *(v64 + 252) = v92 * -(v93 * v90);
              *(v64 + 268) = 1.0 - v93;
              v63 = 2;
            }

            else
            {
              v63 = 1;
              v17 = 1.0;
            }

            v22 = -0.5;
          }

          if (v109)
          {
            v94 = v63 + 1;
            v6 = v112;
            v62.f32[0] = 1.0 / a5;
            physx::Dy::ArticulationHelper::createHardLimit(v108, v112, v21, &v113[10 * v63], v116, (*(v25 + 348) - v55) * 4.0, v62);
            v63 = v94;
          }

          else
          {
            v6 = v112;
          }

          v16 = v107;
          if (v110)
          {
            v125[0].f32[0] = -v52;
            v125[0].f32[1] = -v53;
            v125[0].f32[2] = -v54;
            v62.f32[0] = 1.0 / a5;
            physx::Dy::ArticulationHelper::createHardLimit(v108, v6, v21, &v113[10 * v63], v125[0].f32, (*(v25 + 352) - v55) * -4.0, v62);
          }

          ++v114;
          *(*(v60 + 32) + 16 * *(v60 + 30)) = 0;
          *v104 += v111;
          v11 = v100;
        }

        else
        {
          v6 = v112;
          v16 = v107;
        }
      }

      v19 += 84;
      v20 += 84;
      ++v21;
    }

    while (v26 != v16);
  }

  return v114;
}

void physx::Dy::Articulation::updateBodies(uint64_t a1, float a2)
{
  v158[254] = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 168);
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v148 = *(a1 + 8);
  v149 = *(a1 + 16);
  v6 = *v3;
  physx::Dy::PxcFsFlushVelocity(v3);
  physx::Dy::PxcLtbComputeJv(&v155, v3, v3 + 8);
  physx::Dy::PxcLtbSolve(v3, &v155, v157);
  v8 = *v3;
  if (*v3)
  {
    v9 = (v3 + 72);
    v10 = v158;
    do
    {
      v7 = v10[-1];
      v11 = vsubq_f32(*v9, *v10);
      v9[-1] = vsubq_f32(v9[-1], v7);
      *v9 = v11;
      v9 += 2;
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  v153 = *(a1 + 80);
  v12 = *(a1 + 92);
  v13 = a2;
  if (v6)
  {
    v14 = 0;
    v15 = v149 + 2;
    do
    {
      v16 = (v5 + v14 * 4);
      v17 = v153 + v14 * 4;
      *v17 = *&v5->f32[v14];
      v18 = v5[3].f32[v14];
      *(v17 + 24) = v18;
      v19 = *(v5 + v14 * 4 + 16);
      *(v17 + 16) = v19;
      v20 = v15[-2];
      v21 = v15[-1].f32[0];
      v22 = vmul_n_f32(*v15, v13);
      v23 = v15[1].f32[0] * v13;
      v24 = (COERCE_FLOAT(vmul_f32(v22, v22).i32[1]) + (v22.f32[0] * v22.f32[0])) + (v23 * v23);
      if (v24 >= 1.0e-24)
      {
        v27 = sqrtf(v24);
        v28 = vmul_n_f32(v22, 1.0 / v27);
        v29 = v23 * (1.0 / v27);
        v30 = __sincosf_stret(v27 * 0.5);
        cosval = v30.__cosval;
        v13 = a2;
        *v7.f32 = vmul_n_f32(v28, v30.__sinval);
        v25 = v30.__sinval * v29;
      }

      else
      {
        v7.i64[0] = 0;
        v25 = 0.0;
        cosval = 1.0;
      }

      v31 = *&v5->f32[v14];
      v32 = -v7.f32[1];
      v7.f32[2] = v25;
      v33 = v7;
      v33.f32[3] = -v7.f32[0];
      v34 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v31, 3), v31, 4uLL), v33), v31, cosval);
      v35 = vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL);
      v7 = vzip1q_s32(v31, v31);
      v7.i32[0] = *(&v5[1] + v14 * 4);
      v36 = vuzp1q_s32(vextq_s8(v7, v7, 8uLL), vuzp2q_s32(v7, v35));
      v37 = vzip1q_s32(vrev64q_s32(v35), v36);
      v37.i32[1] = v35.i32[2];
      v35.f32[3] = v32;
      *&v5->f32[v14] = vmlsq_f32(vmlaq_f32(v34, v7, v35), v37, v36);
      v16[2] = vadd_f32(v19, vmul_n_f32(v20, v13));
      v16[3].f32[0] = v18 + (v21 * v13);
      v14 += 7;
      v15 += 4;
    }

    while (7 * v6 != v14);
  }

  if (*(v4 + 8))
  {
    v38 = 0;
    v39 = 0;
    v146 = v153 + 176 * v12;
    v151 = 32 * v12;
    v152 = 1.0 / v13;
    v147 = v4;
    while (1)
    {
      v40 = -3.4028e38;
      if (v6 >= 2)
      {
        v41 = &v5[6] + 1;
        v42 = (v148 + 72);
        v43 = v6 - 1;
        do
        {
          v44 = *(v42 - 1);
          v45 = *v42;
          v42 += 10;
          v46 = v5 + 7 * v45;
          v47 = v44[4] + v44[4];
          v48 = v44[5] + v44[5];
          v49 = v44[6] + v44[6];
          v51 = v46[2];
          v50 = v46[3];
          v52 = v46[1];
          v53 = (v50 * v50) + -0.5;
          v54 = ((v48 * v52) + (*v46 * v47)) + (v51 * v49);
          v55 = (v50 * ((v52 * v49) - (v51 * v48))) + (v47 * v53);
          v56 = (v50 * ((v51 * v47) - (*v46 * v49))) + (v48 * v53);
          v57 = (v50 * ((*v46 * v48) - (v52 * v47))) + (v49 * v53);
          v58 = v44[11] + v44[11];
          v59 = v44[12] + v44[12];
          v60 = v55 + (*v46 * v54);
          v61 = v44[13] + v44[13];
          v63 = *(v41 - 4);
          v62 = *(v41 - 3);
          v64 = (v62 * v62) + -0.5;
          v65 = v56 + (v52 * v54);
          v67 = *(v41 - 6);
          v66 = *(v41 - 5);
          v68 = ((v59 * v66) + (v67 * v58)) + (v63 * v61);
          v69 = v57 + (v51 * v54);
          v70 = v46[4] + v60;
          v71 = *(v41 - 2) + (((v62 * ((v66 * v61) - (v63 * v59))) + (v58 * v64)) + (v67 * v68));
          v72 = *(v41 - 1) + (((v62 * ((v63 * v58) - (v67 * v61))) + (v59 * v64)) + (v66 * v68));
          v73 = *v41;
          v41 += 7;
          v74 = (v46[6] + v69) - (v73 + (((v62 * ((v67 * v59) - (v66 * v58))) + (v61 * v64)) + (v63 * v68)));
          v75 = sqrtf(((((v46[5] + v65) - v72) * ((v46[5] + v65) - v72)) + ((v70 - v71) * (v70 - v71))) + (v74 * v74));
          if (v40 <= v75)
          {
            v40 = v75;
          }

          --v43;
        }

        while (v43);
      }

      if (v40 <= *(v4 + 16))
      {
        break;
      }

      v150 = v39;
      bzero((v153 + v151), 144 * v6);
      physx::Dy::Articulation::setInertia(v153 + v151, *(v148 + 16), v5);
      v76 = (v148 + 72);
      v77 = 32 * v12 + v153 + 144;
      v78 = (v5 + 28);
      v79 = v146 + 84;
      v80 = v6 - 1;
      if (v6 >= 2)
      {
        do
        {
          physx::Dy::Articulation::setInertia(v77, *(v76 - 2), v78);
          physx::Dy::Articulation::setJointTransforms(v79, v5 + 28 * *v76, v78, *(v76 - 1));
          v79 += 84;
          v78 = (v78 + 28);
          v77 += 144;
          v76 += 10;
          --v80;
        }

        while (v80);
      }

      physx::Dy::Articulation::prepareLtbMatrix(v3, (v153 + v151), v5, v146, v152);
      physx::Dy::PxcLtbFactor(v3);
      if (v6 >= 2)
      {
        v81 = &v156;
        v82 = (v3 + v3[8] + 784);
        v83 = v6 - 1;
        do
        {
          *v81 = *v82;
          v81 += 2;
          v82 += 25;
          --v83;
        }

        while (v83);
      }

      bzero(v149, 32 * v6);
      physx::Dy::PxcLtbSolve(v3, &v155, v157);
      v4 = v147;
      if (*v3)
      {
        v85 = 0;
        v86 = v158;
        v87 = &v149[2];
        do
        {
          v84 = v86[-1];
          v88 = vsubq_f32(*v87, *v86);
          v87[-1] = vsubq_f32(v87[-1], v84);
          *v87 = v88;
          ++v85;
          v87 += 2;
          v86 += 2;
        }

        while (v85 < *v3);
      }

      v89 = v149 + 2;
      v90 = &v5[3];
      v91 = v6;
      v92 = a2;
      if (v6)
      {
        do
        {
          v93 = v89[-1].f32[0];
          v94 = v89[-2];
          v95 = *(v90 - 2);
          v96 = *v90;
          v97 = vmul_n_f32(*v89, v92);
          v98 = v89[1].f32[0] * v92;
          v99 = (COERCE_FLOAT(vmul_f32(v97, v97).i32[1]) + (v97.f32[0] * v97.f32[0])) + (v98 * v98);
          if (v99 >= 1.0e-24)
          {
            v102 = sqrtf(v99);
            v103 = vmul_n_f32(v97, 1.0 / v102);
            v104 = v98 * (1.0 / v102);
            v105 = __sincosf_stret(v102 * 0.5);
            v100 = v105.__cosval;
            v92 = a2;
            *v84.f32 = vmul_n_f32(v103, v105.__sinval);
            v101 = v105.__sinval * v104;
          }

          else
          {
            v84.i64[0] = 0;
            v100 = 1.0;
            v101 = 0.0;
          }

          v106 = -v84.f32[1];
          v84.f32[2] = v101;
          v107 = v84;
          v107.f32[3] = -v84.f32[0];
          v108 = *(v90 - 6);
          v109 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v108, 3), v108, 4uLL), v107), v108, v100);
          v110 = vextq_s8(vextq_s8(v84, v84, 0xCuLL), v84, 8uLL);
          v84 = vzip1q_s32(v108, v108);
          v84.i32[0] = *(v90 - 2);
          v111 = vuzp1q_s32(vextq_s8(v84, v84, 8uLL), vuzp2q_s32(v84, v110));
          v112 = vzip1q_s32(vrev64q_s32(v110), v111);
          v112.i32[1] = v110.i32[2];
          v110.f32[3] = v106;
          *(v90 - 6) = vmlsq_f32(vmlaq_f32(v109, v84, v110), v112, v111);
          *(v90 - 1) = vadd_f32(vmul_n_f32(v94, v92), v95);
          *v90 = (v93 * v92) + v96;
          v90 += 7;
          v89 += 4;
          --v91;
        }

        while (v91);
        v39 = v150 + 1;
        v38 = 1;
        if ((v150 + 1) >= *(v147 + 8))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v39 = v150 + 1;
        v38 = 1;
        if ((v150 + 1) >= *(v147 + 8))
        {
          return;
        }
      }
    }

    if ((v38 & (v6 != 0)) == 0)
    {
      goto LABEL_48;
    }

LABEL_36:
    if (v6 <= 1)
    {
      v113 = 1;
    }

    else
    {
      v113 = v6;
    }

    v114 = &v5[1] + 4;
    v115 = v149 + 2;
    v116 = v153 + 12;
    do
    {
      *&v117 = vmul_n_f32(vsub_f32(*(v114 + 4), *(v116 + 4)), v152);
      *(&v117 + 2) = v152 * (*(v114 + 3) - *(v116 + 12));
      HIDWORD(v117) = 0;
      *v115[-2].f32 = v117;
      v119 = *(v116 - 12);
      v118 = *(v116 - 8);
      v120 = *(v116 - 4);
      v121 = *(v114 - 3);
      v122 = *(v114 - 2);
      v123 = *(v114 - 1);
      v124 = (((*v116 * v121) - (*v114 * v119)) - (v122 * v120)) + (v118 * v123);
      v125 = (((*v116 * v122) - (*v114 * v118)) - (v123 * v119)) + (v120 * v121);
      v126 = (((*v116 * v123) - (*v114 * v120)) - (v121 * v118)) + (v119 * v122);
      v127 = ((v125 * v125) + (v124 * v124)) + (v126 * v126);
      v128 = sqrtf(v127);
      v129 = 0.0;
      v130 = 0.0;
      v131 = 0.0;
      if (v128 >= 1.0e-12)
      {
        v132 = (((v119 * v121) + (*v114 * *v116)) + (v122 * v118)) + (v123 * v120);
        if (v132 >= 0.0)
        {
          v133 = v128;
        }

        else
        {
          v133 = -v128;
          v132 = -v132;
        }

        v134 = atan2f(v133, v132);
        v135 = 0.0;
        v136 = 0.0;
        v137 = 0.0;
        if (v127 > 0.0)
        {
          v135 = (v124 * (1.0 / v128)) + (v124 * (1.0 / v128));
          v136 = (v125 * (1.0 / v128)) + (v125 * (1.0 / v128));
          v137 = (v126 * (1.0 / v128)) + (v126 * (1.0 / v128));
        }

        v129 = v134 * v135;
        v130 = v134 * v136;
        v131 = v134 * v137;
      }

      HIDWORD(v138) = 0;
      *&v138 = v152 * v129;
      *(&v138 + 1) = v152 * v130;
      *(&v138 + 2) = v152 * v131;
      *v115->f32 = v138;
      v115 += 4;
      v114 += 28;
      v116 += 28;
      --v113;
    }

    while (v113);
  }

LABEL_48:
  if (v6)
  {
    v139 = (v3 + 72);
    v140 = (v148 + 16);
    v141 = v5 + 3;
    do
    {
      v143 = *v140;
      v140 += 5;
      v142 = v143;
      *v143 = *v141[-3].f32;
      *(v143 + 16) = v141[-1];
      LODWORD(v143) = v141->i32[0];
      v141 = (v141 + 28);
      *(v142 + 24) = v143;
      v144 = *(v139 - 1);
      *(v142 + 64) = v144;
      *(v142 + 72) = DWORD2(v144);
      v145 = *v139;
      v139 += 2;
      *(v142 + 80) = v145;
      *(v142 + 88) = DWORD2(v145);
      --v6;
    }

    while (v6);
  }
}

float32x4_t physx::Dy::Articulation::saveVelocity(void *a1)
{
  v14[255] = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 168);
  physx::Dy::PxcFsFlushVelocity(v2);
  if (*v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (a1[2] + v3 * 2);
      *v5 = *&v2[v3 + 64];
      v5[1] = *&v2[v3 + 72];
      ++v4;
      v6 = *v2;
      v3 += 16;
    }

    while (v4 < v6);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  physx::Dy::PxcLtbComputeJv(v12, v2, v2 + 8);
  result.i64[0] = physx::Dy::PxcLtbSolve(v2, v12, v13).u64[0];
  if (v6)
  {
    v8 = v6;
    v9 = (v2 + 72);
    v10 = v14;
    do
    {
      result = vsubq_f32(v9[-1], v10[-1]);
      v11 = vsubq_f32(*v9, *v10);
      v9[-1] = result;
      *v9 = v11;
      v9 += 2;
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

float32x4_t physx::Dy::Articulation::saveVelocityTGS(void *a1, float a2)
{
  v19[255] = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 168);
  physx::Dy::PxcFsFlushVelocity(v3);
  if (*v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = &v3[32 * *v3];
    do
    {
      v7 = vmulq_n_f32(*&v6[v4 + 64], a2);
      v7.i32[3] = 0;
      v8 = vmulq_n_f32(*&v6[v4 + 72], a2);
      v8.i32[3] = 0;
      v9 = (a1[2] + v4 * 2);
      *v9 = v7;
      v9[1] = v8;
      ++v5;
      v10 = *v3;
      v4 += 16;
    }

    while (v5 < v10);
  }

  else
  {
    LODWORD(v10) = 0;
  }

  physx::Dy::PxcLtbComputeJv(v17, v3, v3 + 8);
  result.i64[0] = physx::Dy::PxcLtbSolve(v3, v17, v18).u64[0];
  if (v10)
  {
    v12 = v10;
    v13 = (v3 + 72);
    v14 = v19;
    do
    {
      result = vsubq_f32(v13[-1], v14[-1]);
      v15 = vsubq_f32(*v13, *v14);
      v13[-1] = result;
      *v13 = v15;
      v13 += 2;
      v14 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

void physx::Dy::Articulation::recordDeltaMotion(void *a1, double a2)
{
  v2 = *(*a1 + 168);
  v3 = a1[5];
  v4 = v2->u16[0];
  physx::Dy::PxcFsFlushVelocity(v2);
  v7 = v2->u16[0];
  v5 = v2 + 8;
  v6 = v7;
  if (v7)
  {
    v8 = vdupq_lane_s32(*&a2, 0).u64[0];
    v9 = v4 << 6;
    v30 = v8;
    do
    {
      v10 = vmulq_n_f32(*v5, *&a2);
      v10.i32[3] = 0;
      v11 = (v5 + v9);
      v16 = *(v5 + v9);
      v12 = vmulq_n_f32(v5[1], *&a2);
      v12.i32[3] = 0;
      v13 = vaddq_f32(v12, *(v5 + v9 + 16));
      *v11 = vaddq_f32(v16, v10);
      v11[1] = v13;
      v14 = vmul_f32(*v5[1].f32, v8);
      v15 = v5[1].f32[2] * *&a2;
      v16.f32[0] = (COERCE_FLOAT(vmul_f32(v14, v14).i32[1]) + (v14.f32[0] * v14.f32[0])) + (v15 * v15);
      if (v16.f32[0] >= 1.0e-24)
      {
        v19 = sqrtf(v16.f32[0]);
        v20 = vmul_n_f32(v14, 1.0 / v19);
        v21 = v15 * (1.0 / v19);
        v22 = __sincosf_stret(v19 * 0.5);
        cosval = v22.__cosval;
        v8 = v30;
        *v16.f32 = vmul_n_f32(v20, v22.__sinval);
        v17 = v22.__sinval * v21;
      }

      else
      {
        v16.i64[0] = 0;
        v17 = 0.0;
        cosval = 1.0;
      }

      v23 = -v16.f32[1];
      v16.f32[2] = v17;
      v24 = v16;
      v24.f32[3] = -v16.f32[0];
      v25 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v3, 3), *v3, 4uLL), v24), *v3, cosval);
      v26 = vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL);
      v27 = vzip1q_s32(*v3, *v3);
      v27.i32[0] = v3->i64[1];
      v28 = vuzp1q_s32(vextq_s8(v27, v27, 8uLL), vuzp2q_s32(v27, v26));
      v29 = vzip1q_s32(vrev64q_s32(v26), v28);
      v29.i32[1] = v26.i32[2];
      v26.f32[3] = v23;
      *v3++ = vmlsq_f32(vmlaq_f32(v25, v27, v26), v29, v28);
      v5 += 2;
      --v6;
    }

    while (v6);
  }
}

void *physx::Dy::Articulation::deltaMotionToMotionVelocity(void *result, float a2)
{
  v2 = *(*result + 168);
  if (*v2)
  {
    v3 = 0;
    v4 = *v2 << 6;
    v5 = 64;
    do
    {
      v6 = vmulq_n_f32(*(v2 + v4 + 128), a2);
      v6.i32[3] = 0;
      v7 = vmulq_n_f32(*(v2 + v4 + 144), a2);
      v7.i32[3] = 0;
      v8 = result[2] + v5 * 2;
      *(v8 - 128) = v6;
      *(v8 - 112) = v7;
      v9 = &v2[v5];
      *v9 = v6;
      v9[1] = *(v8 - 112);
      ++v3;
      v5 += 16;
      v4 += 32;
    }

    while (v3 < *v2);
  }

  return result;
}

void physx::Dy::Articulation::getDataSizes(physx::Dy::Articulation *this, int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = 304 * a2 + 4 * ((a2 + 15) & 0x3FFFFFF0) + 272;
  *a3 = v5;
  *a4 = v5 + 528 * a2;
  *a5 = 672 * a2;
}

uint64_t physx::Dy::Articulation::getImpulseResponse(uint64_t a1, unsigned int a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5)
{
  return physx::Dy::ArticulationHelper::getImpulseResponse(*(a1 + 168), a2, a4, a5);
}

{
  return physx::Dy::ArticulationHelper::getImpulseResponse(*(a1 + 168), a2, a4, a5);
}

uint64_t physx::Dy::ArticulationHelper::getImpulseResponse(uint64_t result, unsigned int a2, float32x4_t *a3, float32x4_t *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = (result + *(result + 18));
  v5 = v4 + 9;
  v6 = result + *(result + 2);
  v7 = vnegq_f32(*a3);
  v7.i32[3] = 0;
  v8 = vnegq_f32(a3[1]);
  v8.i32[3] = 0;
  if (a2)
  {
    v9 = 0;
    v10 = v7;
    do
    {
      v11 = &v5[10 * a2];
      v12 = (v6 + 32 * a2);
      v14 = *v12;
      v13 = *(v12 + 1);
      v15 = vextq_s8(v13, v13, 8uLL).u64[0];
      v16 = vmls_f32(vmul_f32(*v10.f32, vext_s8(*v13.f32, v15, 4uLL)), *&vextq_s8(v10, v10, 4uLL), *v13.f32);
      *v13.f32 = vext_s8(v16, vmls_f32(vmul_f32(*&vextq_s8(v10, v10, 8uLL), *v13.f32), *v10.f32, v15), 4uLL);
      v13.i64[1] = v16.u32[0];
      v17 = vaddq_f32(v8, v13);
      *&v67[4 * v9 + 64] = v17;
      v18 = vmlsq_laneq_f32(v10, v11[4], v17, 2);
      v18.i64[1] = vextq_s8(v18, v18, 8uLL).u32[0];
      v19 = vmlsq_lane_f32(v18, v11[2], *v17.f32, 1);
      v19.i64[1] = vextq_s8(v19, v19, 8uLL).u32[0];
      v20 = vmlsq_lane_f32(v19, *v11, *v17.f32, 0);
      v7.i64[0] = v20.i64[0];
      v7.i64[1] = vextq_s8(v20, v20, 8uLL).u32[0];
      v21 = vmlsq_laneq_f32(v8, v11[5], v17, 2);
      v21.i64[1] = vextq_s8(v21, v21, 8uLL).u32[0];
      v22 = vmlsq_lane_f32(v21, v11[3], *v17.f32, 1);
      v22.i64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
      v23 = vmlsq_lane_f32(v22, v11[1], *v17.f32, 0);
      v24 = vextq_s8(v14, v14, 8uLL).u64[0];
      v25 = vmls_f32(vmul_f32(*v14.i8, *&vextq_s8(v20, v20, 4uLL)), vext_s8(*v14.i8, v24, 4uLL), *v20.f32);
      *v20.f32 = vext_s8(v25, vmls_f32(vmul_f32(v24, *v20.f32), *v14.i8, *&v7.u32[2]), 4uLL);
      v20.i64[1] = v25.u32[0];
      v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
      v8 = vaddq_f32(v23, v20);
      v26 = v9 + 1;
      v67[v9] = a2;
      a2 = *(result + 64 + a2);
      v10 = v7;
      ++v9;
    }

    while (a2);
  }

  else
  {
    v26 = 0;
  }

  v27 = vmulq_n_f32(*v4, v7.f32[0]);
  v27.i32[3] = 0;
  v28 = vmulq_lane_f32(v4[1], *v7.f32, 1);
  v28.i32[3] = 0;
  v29 = v4[3];
  v30 = vmulq_laneq_f32(v4[2], v7, 2);
  v30.i32[3] = 0;
  v31 = vmulq_n_f32(v29, v8.f32[0]);
  v31.i32[3] = 0;
  v32 = vaddq_f32(v27, v28);
  v33 = v4[4];
  v34 = v4[5];
  v35 = vmulq_lane_f32(v33, *v8.f32, 1);
  v35.i32[3] = 0;
  v36 = vaddq_f32(v32, v30);
  v37 = vmulq_laneq_f32(v34, v8, 2);
  v37.i32[3] = 0;
  v38 = vnegq_f32(vaddq_f32(v36, vaddq_f32(vaddq_f32(v31, v35), v37)));
  v38.i32[3] = 0;
  v39 = vmulq_f32(v7, v29);
  v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
  v40 = vmulq_f32(v7, v33);
  v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
  v41 = vmulq_f32(v7, v34);
  v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
  *v40.f32 = vext_s8(vpadd_f32(*v39.f32, *v39.f32), vpadd_f32(*v40.f32, *v40.f32), 4uLL);
  v40.i64[1] = vpadd_f32(*v41.f32, *v41.f32).u32[0];
  v42 = vmulq_n_f32(v4[6], v8.f32[0]);
  v42.i32[3] = 0;
  v43 = vmulq_lane_f32(v4[7], *v8.f32, 1);
  v43.i32[3] = 0;
  v44 = vmulq_laneq_f32(v4[8], v8, 2);
  v44.i32[3] = 0;
  v45 = vnegq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v42, v43), v44), v40));
  v45.i32[3] = 0;
  if (v26)
  {
    v46 = v26;
    do
    {
      v47 = v67[v46 - 1];
      v48 = v6 + 32 * v47;
      v49 = *(v48 + 16);
      v50 = vextq_s8(*v48, *v48, 8uLL).u64[0];
      v51 = vmls_f32(vmul_f32(*&vextq_s8(v45, v45, 4uLL), *v48), vext_s8(*v48, v50, 4uLL), *v45.f32);
      *v52.f32 = vext_s8(v51, vmls_f32(vmul_f32(*v45.f32, v50), *v48, *&vextq_s8(v45, v45, 8uLL)), 4uLL);
      v52.i64[1] = v51.u32[0];
      v53 = &v5[10 * v47];
      v54 = vsubq_f32(v38, v52);
      v55 = vmulq_f32(*v53, v54);
      v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
      v56 = vmulq_f32(v53[2], v54);
      v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
      *v55.f32 = vext_s8(vpadd_f32(*v55.f32, *v55.f32), vpadd_f32(*v56.f32, *v56.f32), 4uLL);
      v57 = vmulq_f32(v53[4], v54);
      v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
      v58 = vmulq_f32(v45, v53[1]);
      v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
      v59 = vmulq_f32(v45, v53[3]);
      v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
      v60 = vmulq_f32(v45, v53[5]);
      v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
      *v58.f32 = vext_s8(vpadd_f32(*v58.f32, *v58.f32), vpadd_f32(*v59.f32, *v59.f32), 4uLL);
      v55.i64[1] = vpadd_f32(*v57.f32, *v57.f32).u32[0];
      v58.i64[1] = vpadd_f32(*v60.f32, *v60.f32).u32[0];
      v61 = vaddq_f32(v55, v58);
      v62 = *&v67[4 * v46 + 60];
      v63 = vmulq_n_f32(v53[6], v62.f32[0]);
      v63.i32[3] = 0;
      v64 = vmulq_lane_f32(v53[7], *v62.f32, 1);
      v64.i32[3] = 0;
      v65 = vmulq_laneq_f32(v53[8], v62, 2);
      v65.i32[3] = 0;
      v66 = vaddq_f32(v61, vaddq_f32(vaddq_f32(v63, v64), v65));
      v65.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
      *v64.f32 = vmls_f32(vmul_f32(*v49.f32, *&vextq_s8(v66, v66, 4uLL)), vext_s8(*v49.f32, *v65.f32, 4uLL), *v66.f32);
      *v49.f32 = vext_s8(*v64.f32, vmls_f32(vmul_f32(*v65.f32, *v66.f32), *v49.f32, *&vextq_s8(v66, v66, 8uLL)), 4uLL);
      v49.i64[1] = v64.u32[0];
      v38 = vsubq_f32(v54, v49);
      v45 = vsubq_f32(v45, v66);
      --v46;
    }

    while (v46);
  }

  *a4 = v38;
  a4[1] = v45;
  return result;
}

float32x4_t physx::Dy::ArticulationHelper::getImpulseSelfResponse(uint64_t a1, unsigned int a2, float32x4_t *a3, float32x4_t *a4, unsigned int a5, float32x4_t *a6, float32x4_t *a7)
{
  v113 = *MEMORY[0x1E69E9840];
  v11 = a1 + 64;
  if (*(a1 + 64 + a5) == a2)
  {
    v12 = (a1 + *(a1 + 18));
    v13 = v12 + 9;
    v14 = a1 + *(a1 + 2);
    v15 = &v12[10 * a5 + 9];
    v16 = (v14 + 32 * a5);
    v17 = vnegq_f32(*a6);
    v18 = v17;
    v18.i32[3] = 0;
    v19 = vnegq_f32(a6[1]);
    v19.i32[3] = 0;
    v20 = vextq_s8(v18, v18, 8uLL).u64[0];
    v21 = v16[1];
    v22 = vextq_s8(v21, v21, 8uLL).u64[0];
    v23 = vmls_f32(vmul_f32(*v17.f32, vext_s8(*v21.i8, v22, 4uLL)), vext_s8(*v17.f32, v20, 4uLL), *v21.i8);
    *v17.f32 = vext_s8(v23, vmls_f32(vmul_f32(v20, *v21.i8), *v17.f32, v22), 4uLL);
    v17.i64[1] = v23.u32[0];
    v24 = vaddq_f32(v19, v17);
    v25 = vmulq_laneq_f32(v15[4], v24, 2);
    v25.i32[3] = 0;
    v26 = vmlaq_lane_f32(v25, v15[2], *v24.f32, 1);
    v26.i64[1] = vextq_s8(v26, v26, 8uLL).u32[0];
    v27 = vmlaq_n_f32(v26, *v15, v24.f32[0]);
    v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
    v28 = vsubq_f32(v18, v27);
    v29 = vmulq_laneq_f32(v15[5], v24, 2);
    v29.i32[3] = 0;
    v30 = vmlaq_lane_f32(v29, v15[3], *v24.f32, 1);
    v30.i64[1] = vextq_s8(v30, v30, 8uLL).u32[0];
    v31 = vmlaq_n_f32(v30, v15[1], v24.f32[0]);
    v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
    v32 = vextq_s8(*v16, *v16, 8uLL).u64[0];
    v33 = vmls_f32(vmul_f32(*v16->i8, *&vextq_s8(v28, v28, 4uLL)), vext_s8(*v16->i8, v32, 4uLL), *v28.f32);
    *v34.f32 = vext_s8(v33, vmls_f32(vmul_f32(v32, *v28.f32), *v16->i8, *&vextq_s8(v28, v28, 8uLL)), 4uLL);
    v34.i64[1] = v33.u32[0];
    v35 = vsubq_f32(a3[1], vaddq_f32(vsubq_f32(v19, v31), v34));
    v36 = vnegq_f32(vsubq_f32(*a3, v28));
    v36.i32[3] = 0;
    v37 = vnegq_f32(v35);
    v37.i32[3] = 0;
    if (a2)
    {
      v38 = 0;
      v39 = v36;
      do
      {
        v40 = &v13[10 * a2];
        v41 = (v14 + 32 * a2);
        v43 = *v41;
        v42 = *(v41 + 1);
        v44 = vextq_s8(v42, v42, 8uLL).u64[0];
        v45 = vmls_f32(vmul_f32(*v39.f32, vext_s8(*v42.f32, v44, 4uLL)), *&vextq_s8(v39, v39, 4uLL), *v42.f32);
        *v42.f32 = vext_s8(v45, vmls_f32(vmul_f32(*&vextq_s8(v39, v39, 8uLL), *v42.f32), *v39.f32, v44), 4uLL);
        v42.i64[1] = v45.u32[0];
        v46 = vaddq_f32(v37, v42);
        *&v112[4 * v38 + 64] = v46;
        v47 = vmlsq_laneq_f32(v39, v40[4], v46, 2);
        v47.i64[1] = vextq_s8(v47, v47, 8uLL).u32[0];
        v48 = vmlsq_lane_f32(v47, v40[2], *v46.f32, 1);
        v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
        v49 = vmlsq_lane_f32(v48, *v40, *v46.f32, 0);
        v36.i64[0] = v49.i64[0];
        v36.i64[1] = vextq_s8(v49, v49, 8uLL).u32[0];
        v50 = vmlsq_laneq_f32(v37, v40[5], v46, 2);
        v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
        v51 = vmlsq_lane_f32(v50, v40[3], *v46.f32, 1);
        v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
        v52 = vmlsq_lane_f32(v51, v40[1], *v46.f32, 0);
        v53 = vextq_s8(v43, v43, 8uLL).u64[0];
        v54 = vmls_f32(vmul_f32(*v43.i8, *&vextq_s8(v49, v49, 4uLL)), vext_s8(*v43.i8, v53, 4uLL), *v49.f32);
        *v49.f32 = vext_s8(v54, vmls_f32(vmul_f32(v53, *v49.f32), *v43.i8, *&v36.u32[2]), 4uLL);
        v49.i64[1] = v54.u32[0];
        v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
        v37 = vaddq_f32(v52, v49);
        v55 = v38 + 1;
        v112[v38] = a2;
        a2 = *(v11 + a2);
        v39 = v36;
        ++v38;
      }

      while (a2);
    }

    else
    {
      v55 = 0;
    }

    v57 = vmulq_n_f32(*v12, v36.f32[0]);
    v57.i32[3] = 0;
    v58 = vmulq_lane_f32(v12[1], *v36.f32, 1);
    v58.i32[3] = 0;
    v59 = v12[3];
    v60 = vmulq_laneq_f32(v12[2], v36, 2);
    v60.i32[3] = 0;
    v61 = vmulq_n_f32(v59, v37.f32[0]);
    v61.i32[3] = 0;
    v62 = vaddq_f32(v57, v58);
    v63 = v12[4];
    v64 = v12[5];
    v65 = vmulq_lane_f32(v63, *v37.f32, 1);
    v65.i32[3] = 0;
    v66 = vaddq_f32(v62, v60);
    v67 = vmulq_laneq_f32(v64, v37, 2);
    v67.i32[3] = 0;
    v68 = vnegq_f32(vaddq_f32(v66, vaddq_f32(vaddq_f32(v61, v65), v67)));
    v68.i32[3] = 0;
    v69 = vmulq_f32(v36, v59);
    v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
    v70 = vmulq_f32(v36, v63);
    v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
    v71 = vmulq_f32(v36, v64);
    v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
    *v70.f32 = vext_s8(vpadd_f32(*v69.f32, *v69.f32), vpadd_f32(*v70.f32, *v70.f32), 4uLL);
    v70.i64[1] = vpadd_f32(*v71.f32, *v71.f32).u32[0];
    v72 = vmulq_n_f32(v12[6], v37.f32[0]);
    v72.i32[3] = 0;
    v73 = vmulq_lane_f32(v12[7], *v37.f32, 1);
    v73.i32[3] = 0;
    v74 = vmulq_laneq_f32(v12[8], v37, 2);
    v74.i32[3] = 0;
    v75 = vnegq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v72, v73), v74), v70));
    v75.i32[3] = 0;
    if (v55)
    {
      v76 = v55;
      do
      {
        v77 = v112[v76 - 1];
        v78 = v14 + 32 * v77;
        v79 = *(v78 + 16);
        v80 = vextq_s8(*v78, *v78, 8uLL).u64[0];
        v81 = vmls_f32(vmul_f32(*&vextq_s8(v75, v75, 4uLL), *v78), vext_s8(*v78, v80, 4uLL), *v75.f32);
        *v82.f32 = vext_s8(v81, vmls_f32(vmul_f32(*v75.f32, v80), *v78, *&vextq_s8(v75, v75, 8uLL)), 4uLL);
        v82.i64[1] = v81.u32[0];
        v83 = &v13[10 * v77];
        v84 = vsubq_f32(v68, v82);
        v85 = vmulq_f32(*v83, v84);
        v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
        v86 = vmulq_f32(v83[2], v84);
        v86.i64[0] = vpaddq_f32(v86, v86).u64[0];
        *v85.f32 = vext_s8(vpadd_f32(*v85.f32, *v85.f32), vpadd_f32(*v86.f32, *v86.f32), 4uLL);
        v87 = vmulq_f32(v83[4], v84);
        v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
        v88 = vmulq_f32(v75, v83[1]);
        v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
        v89 = vmulq_f32(v75, v83[3]);
        v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
        v90 = vmulq_f32(v75, v83[5]);
        v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
        *v88.f32 = vext_s8(vpadd_f32(*v88.f32, *v88.f32), vpadd_f32(*v89.f32, *v89.f32), 4uLL);
        v85.i64[1] = vpadd_f32(*v87.f32, *v87.f32).u32[0];
        v88.i64[1] = vpadd_f32(*v90.f32, *v90.f32).u32[0];
        v91 = vaddq_f32(v85, v88);
        v92 = *&v112[4 * v76 + 60];
        v93 = vmulq_n_f32(v83[6], v92.f32[0]);
        v93.i32[3] = 0;
        v94 = vmulq_lane_f32(v83[7], *v92.f32, 1);
        v94.i32[3] = 0;
        v95 = vmulq_laneq_f32(v83[8], v92, 2);
        v95.i32[3] = 0;
        v96 = vaddq_f32(v91, vaddq_f32(vaddq_f32(v93, v94), v95));
        v95.i64[0] = vextq_s8(v79, v79, 8uLL).u64[0];
        *v94.f32 = vmls_f32(vmul_f32(*v79.f32, *&vextq_s8(v96, v96, 4uLL)), vext_s8(*v79.f32, *v95.f32, 4uLL), *v96.f32);
        *v79.f32 = vext_s8(*v94.f32, vmls_f32(vmul_f32(*v95.f32, *v96.f32), *v79.f32, *&vextq_s8(v96, v96, 8uLL)), 4uLL);
        v79.i64[1] = v94.u32[0];
        v68 = vsubq_f32(v84, v79);
        v75 = vsubq_f32(v75, v96);
        --v76;
      }

      while (v76);
    }

    *a4 = v68;
    a4[1] = v75;
    v97 = v16[1];
    v98 = vextq_s8(*v16, *v16, 8uLL).u64[0];
    v99 = vmls_f32(vmul_f32(*&vextq_s8(v75, v75, 4uLL), *v16->i8), vext_s8(*v16->i8, v98, 4uLL), *v75.f32);
    *v100.f32 = vext_s8(v99, vmls_f32(vmul_f32(*v75.f32, v98), *v16->i8, *&vextq_s8(v75, v75, 8uLL)), 4uLL);
    v100.i64[1] = v99.u32[0];
    v101 = vsubq_f32(v68, v100);
    v102 = vmulq_f32(*v15, v101);
    v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
    v103 = vmulq_f32(v15[2], v101);
    v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
    *v102.f32 = vext_s8(vpadd_f32(*v102.f32, *v102.f32), vpadd_f32(*v103.f32, *v103.f32), 4uLL);
    v104 = vmulq_f32(v15[4], v101);
    v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
    v105 = vmulq_f32(v75, v15[1]);
    v105.i64[0] = vpaddq_f32(v105, v105).u64[0];
    v106 = vmulq_f32(v75, v15[3]);
    v106.i64[0] = vpaddq_f32(v106, v106).u64[0];
    v107 = vmulq_f32(v75, v15[5]);
    v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
    *v105.f32 = vext_s8(vpadd_f32(*v105.f32, *v105.f32), vpadd_f32(*v106.f32, *v106.f32), 4uLL);
    v102.i64[1] = vpadd_f32(*v104.f32, *v104.f32).u32[0];
    v105.i64[1] = vpadd_f32(*v107.f32, *v107.f32).u32[0];
    v108 = vmulq_n_f32(v15[6], v24.f32[0]);
    v109 = vmulq_lane_f32(v15[7], *v24.f32, 1);
    v110 = vmulq_laneq_f32(v15[8], v24, 2);
    v108.i32[3] = 0;
    v109.i32[3] = 0;
    v110.i32[3] = 0;
    v111 = vaddq_f32(vaddq_f32(v102, v105), vaddq_f32(vaddq_f32(v108, v109), v110));
    v102.i64[0] = vextq_s8(v97, v97, 8uLL).u64[0];
    *v108.f32 = vmls_f32(vmul_f32(*v97.i8, *&vextq_s8(v111, v111, 4uLL)), vext_s8(*v97.i8, *v102.f32, 4uLL), *v111.f32);
    *v102.f32 = vext_s8(*v108.f32, vmls_f32(vmul_f32(*v102.f32, *v111.f32), *v97.i8, *&vextq_s8(v111, v111, 8uLL)), 4uLL);
    v102.i64[1] = v108.u32[0];
    result = vsubq_f32(v75, v111);
    *a7 = vsubq_f32(v101, v102);
    a7[1] = result;
  }

  else
  {
    physx::Dy::ArticulationHelper::getImpulseResponse(a1, a2, a3, a4);

    physx::Dy::ArticulationHelper::getImpulseResponse(a1, a5, a6, a7);
  }

  return result;
}

__n128 physx::Dy::Articulation::getLinkVelocity@<Q0>(physx::Dy::Articulation *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 21) + 32 * a2;
  result = *(v3 + 128);
  v5 = *(v3 + 144);
  *a3 = result;
  *(a3 + 16) = v5;
  return result;
}

__n128 physx::Dy::Articulation::getLinkMotionVector@<Q0>(physx::Dy::Articulation *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 21) + 32 * **(this + 21) + 32 * **(this + 21) + 32 * a2;
  result = *(v3 + 128);
  v5 = *(v3 + 144);
  *a3 = result;
  *(a3 + 16) = v5;
  return result;
}

__n128 physx::Dy::Articulation::getMotionVelocity@<Q0>(physx::Dy::Articulation *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 33) + 32 * a2;
  result = *v3;
  v5 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 8) = result.n128_u32[2];
  *(a3 + 12) = 0;
  *(a3 + 16) = v5;
  *(a3 + 24) = DWORD2(v5);
  *(a3 + 28) = 0;
  return result;
}

double physx::Dy::Articulation::getMotionAcceleration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t physx::Dy::Articulation::fillIndexedManager(unint64_t this, unsigned int a2, unint64_t *a3, unsigned __int8 *a4)
{
  *a4 = 2;
  *a3 = a2 | this;
  return this;
}

float physx::Dy::Articulation::setInertia(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v3 = 1.0 / a2[15].f32[1];
  *a1 = v3;
  *(a1 + 20) = v3;
  *(a1 + 40) = v3;
  v4 = a3[1];
  v5 = vadd_f32(*a3, *a3);
  v6 = vadd_f32(v4, v4);
  v7 = vmul_f32(*a3, v5);
  v8 = vmul_f32(v4, v6);
  v9 = vmul_lane_f32(v5, *a3, 1);
  v10 = vrev64_s32(vmul_n_f32(v4, v5.f32[0]));
  v11 = vmul_lane_f32(v4, v5, 1);
  v12 = vmul_lane_f32(v6, v4, 1);
  v13 = vsub_f32(v9, v12);
  *&v14 = vdup_lane_s32(v13, 0);
  v12.i32[0] = vadd_f32(v9, v12).u32[0];
  __asm { FMOV            V20.2S, #1.0 }

  v20 = vsub_f32(_D20, v7);
  v21 = vsub_f32(v20, vdup_lane_s32(v8, 0));
  LODWORD(v14) = v12.i32[0];
  v22 = vsub_f32(v10, v11);
  v23 = vadd_f32(v10, v11);
  v12.i32[0] = vsub_f32(v11, v10).u32[0];
  v12.i32[1] = v23.i32[1];
  v24 = vdiv_f32(_D20, a2[14]);
  v25 = vmul_f32(v12, 0);
  v26 = vmul_f32(__PAIR64__(v21.u32[1], v14), 0);
  v27 = vadd_f32(v25, vadd_f32(v26, vmul_lane_f32(__PAIR64__(DWORD1(v14), v21.u32[0]), v24, 1)));
  v28 = vmul_n_f32(v27, v23.f32[0]);
  v23.i32[1] = v22.i32[1];
  v29 = vsub_f32(v20, vdup_lane_s32(v7, 1));
  v30 = vmul_f32(__PAIR64__(DWORD1(v14), v21.u32[0]), 0);
  v31 = vadd_f32(v25, vadd_f32(v30, vmul_n_f32(__PAIR64__(v21.u32[1], v14), v24.f32[0])));
  v32 = vmul_f32(v23, 0);
  v33 = vrev64_s32(v23);
  v34 = vadd_f32(vdup_lane_s32(COERCE_UNSIGNED_INT(0.0 * v29.f32[0]), 0), vadd_f32(v32, vmul_f32(v33, v24)));
  v35 = vadd_f32(vadd_f32(v26, v30), vmul_n_f32(v12, 1.0 / a2[15].f32[0]));
  v36 = vzip2_s32(v35, v31);
  v37 = vmul_f32(vzip2_s32(v12, v21), v36);
  v38 = vadd_f32(v37, vdup_lane_s32(vadd_f32(v37, vmul_n_f32(v27, *v13.i32)), 1));
  v39 = vadd_f32(vmul_f32(*&v14, v34), vmul_f32(v21, vrev64_s32(v34)));
  v40 = vmul_f32(vzip1_s32(v12, *&v14), v36);
  v40.f32[0] = v40.f32[0] + (v40.f32[1] + vmuls_lane_f32(v21.f32[0], v27, 1));
  v32.i32[0] = vadd_f32(vdup_lane_s32(v32, 1), v32).u32[0];
  v32.i32[1] = vmul_n_f32(v22, *&v34).i32[1];
  v33.i32[0] = v29.i32[0];
  v34.f32[0] = 1.0 / a2[15].f32[0];
  v41 = vadd_f32(v32, vmul_f32(v33, v34));
  v42 = vadd_f32(vmul_n_f32(v12, v41.f32[0]), v39);
  v43 = vadd_f32(vmul_f32(v29, v41), vdup_lane_s32(v41, 1));
  v44 = vadd_f32(vmul_n_f32(v12, v35.f32[0]), vadd_f32(vmul_f32(*&v14, vzip1_s32(v31, v27)), vmul_f32(v21, vzip1_s32(v27, v31))));
  v45 = vmul_f32(vadd_f32(v44, __PAIR64__(v40.u32[0], v44.u32[0])), 0x3F0000003F000000);
  *&v14 = 0.5 * vadd_f32(v38, v38).f32[0];
  DWORD1(v14) = v45.i32[1];
  v46 = vmul_f32(vadd_f32(v42, vadd_f32(vmul_n_f32(v35, v29.f32[0]), vadd_f32(vmul_lane_f32(v31, v22, 1), v28))), 0x3F0000003F000000);
  *(&v14 + 1) = v46.u32[1];
  *&v47 = vrev64_s32(v45);
  *(&v47 + 1) = v46.u32[0];
  result = 0.5 * vadd_f32(v43, v43).f32[0];
  *&v49 = vrev64_s32(v46);
  *(&v49 + 1) = LODWORD(result);
  *(a1 + 96) = v14;
  *(a1 + 112) = v47;
  *(a1 + 128) = v49;
  return result;
}

float32x4_t physx::Dy::Articulation::setJointTransforms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _S4 = *(a4 + 16) + *(a4 + 16);
  v8 = *(a4 + 20) + *(a4 + 20);
  _S6 = *(a4 + 24) + *(a4 + 24);
  v10 = *(a2 + 12);
  v11 = (v10 * v10) + -0.5;
  v4.i32[0] = *a2;
  _Q18.i64[0] = *(a2 + 4);
  __asm
  {
    FMLA            S19, S6, V18.S[1]
    FMLA            S2, S4, V18.S[1]
    FMLA            S3, S19, V18.S[1]
  }

  v18 = *(a2 + 20) + (((v10 * _S2) + (v8 * v11)) + (_Q18.f32[0] * *_Q19.i32));
  v19 = *(a2 + 24) + _S3;
  v20 = *a4;
  v20.i32[3] = _Q18.i32[1];
  v21 = *(a2 + 16) + (((v10 * (vmuls_lane_f32(v8, vnegq_f32(v20), 3) + (_Q18.f32[0] * _S6))) + (_S4 * v11)) + (*a2 * *_Q19.i32));
  _Q6 = vextq_s8(vextq_s8(v4, v4, 4uLL), _Q18, 0xCuLL);
  _Q6.f32[3] = -*a2;
  v23 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*a4, 3), *a4, 4uLL), _Q6), *a4, v10);
  _Q6.f32[3] = -_Q18.f32[0];
  _Q18.i32[2] = *a2;
  _Q18.i32[3] = *(a4 + 8);
  _Q1 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v23, v23, 4uLL), v23), vextq_s8(vextq_s8(*a4, *a4, 0xCuLL), *a4, 8uLL), _Q6), _Q18, v20);
  *a1 = vzip2q_s32(vzip1q_s32(_Q1, vextq_s8(_Q1, _Q1, 0xCuLL)), _Q1);
  *(a1 + 16) = v21;
  *(a1 + 20) = v18;
  *(a1 + 24) = v19;
  _Q6.f32[0] = *(a4 + 52) + *(a4 + 52);
  _Q18.i32[0] = *(a3 + 12);
  *v23.i32 = (_Q18.f32[0] * _Q18.f32[0]) + -0.5;
  v25 = *(a4 + 28);
  _Q7 = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL);
  _Q19.i64[0] = *a3;
  v20.i64[0] = *a3;
  v20.i32[2] = *(a3 + 8);
  v20.f32[3] = -COERCE_FLOAT(*a3);
  v27 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v25, 3), v25, 4uLL), v20), v25, _Q18.f32[0]);
  _Q24 = vuzp2q_s32(_Q19, vzip1q_s32(_Q19, _Q19));
  _Q24.i32[1] = v20.i32[2];
  _Q24.i32[3] = *(a4 + 36);
  v25.i32[3] = v20.i32[2];
  v29 = vadd_f32(*(a4 + 44), *(a4 + 44));
  v30 = (vmuls_lane_f32(v29.f32[1], *a3, 1) + (COERCE_FLOAT(*a3) * v29.f32[0])) + (v20.f32[2] * _Q6.f32[0]);
  v31 = *(a3 + 24) + (((_Q18.f32[0] * ((-COERCE_FLOAT(HIDWORD(*a3)) * v29.f32[0]) + (COERCE_FLOAT(*a3) * v29.f32[1]))) + (_Q6.f32[0] * *v23.i32)) + (v20.f32[2] * v30));
  _D17.i32[0] = vdup_lane_s32(v29, 1).u32[0];
  _D17.f32[1] = _Q6.f32[0];
  _Q6.i32[0] = vdup_laneq_s32(vnegq_f32(v25), 3).u32[0];
  _Q6.f32[1] = v20.f32[3];
  _D18 = vadd_f32(*(a3 + 16), vmla_n_f32(vmla_n_f32(vmul_f32(*&vdupq_lane_s32(*_Q18.f32, 0), vmla_f32(vmul_f32(_D17, *_Q6.f32), vext_s8(_D17, v29, 4uLL), *(a3 + 4))), v29, *v23.i32), *a3, v30));
  v20.f32[3] = -COERCE_FLOAT(HIDWORD(*a3));
  _Q5 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v27, v27, 4uLL), v27), _Q7, v20), _Q24, v25);
  *(a1 + 28) = _Q5.i32[1];
  _S19 = _Q5.i32[1];
  _Q6.i32[0] = _Q5.i32[2];
  *(a1 + 32) = _Q5.i32[2];
  *(a1 + 36) = _Q5.i32[0];
  _Q7.i32[0] = _Q5.i32[3];
  *(a1 + 40) = _Q5.i32[3];
  *(a1 + 44) = _D18;
  _S21 = _Q1.i32[2];
  _S4 = (_D18.f32[0] - v21) + (_D18.f32[0] - v21);
  _S2 = (_D18.f32[1] - v18) + (_D18.f32[1] - v18);
  _S3 = (v31 - v19) + (v31 - v19);
  _D18.i32[0] = _Q1.i32[3];
  __asm
  {
    FMLA            S0, S18, V1.S[3]
    FMLS            S24, S4, V1.S[1]
  }

  _Q24.f32[0] = _Q24.f32[0] - (_S3 * _Q1.f32[0]);
  __asm
  {
    FMLS            S25, S3, V1.S[2]
    FMLS            S25, S24, V1.S[1]
    FMLS            S26, S24, V1.S[2]
    FMLS            S4, S2, V1.S[1]
  }

  v45 = (vmuls_lane_f32(_S4, _Q1, 3) + (_S3 * _S0)) - (_Q24.f32[0] * _Q1.f32[0]);
  __asm { FMLA            S0, S19, V1.S[3] }

  result.f32[0] = (_S0 - (*_Q5.i32 * _Q1.f32[2])) + (*&_Q5.i32[2] * _Q1.f32[0]);
  __asm { FMLA            S2, S6, V1.S[3] }

  v49 = (_S2 - (*&_Q5.i32[1] * _Q1.f32[0])) + (*_Q5.i32 * _Q1.f32[1]);
  __asm
  {
    FMLS            S3, S6, V1.S[1]
    FMLA            S3, S21, V5.S[1]
    FMLA            S17, S7, V1.S[3]
    FMLA            S17, S6, V1.S[2]
  }

  v52 = _D17.f32[0] + (_Q1.f32[0] * *_Q5.i32);
  *(a1 + 52) = v31;
  *(a1 + 56) = result.i32[0];
  *(a1 + 60) = v49;
  *(a1 + 64) = _S3;
  *(a1 + 68) = v52;
  *(a1 + 72) = _S25;
  *(a1 + 76) = _S26;
  *(a1 + 80) = v45;
  if (v52 < 0.0)
  {
    *(a1 + 56) = -result.f32[0];
    *(a1 + 60) = -v49;
    *(a1 + 64) = -_S3;
    *(a1 + 68) = -v52;
    result = vnegq_f32(vzip2q_s32(vzip1q_s32(_Q5, vextq_s8(_Q5, _Q5, 0xCuLL)), _Q5));
    *(a1 + 28) = result;
  }

  return result;
}

__n128 physx::Dy::Articulation::prepareDataBlock(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v58 = a3;
  v13 = 112 * a3 + ((4 * a3 + 60) & 0xFFC0) + 128;
  v14 = v13 + 32 * a3;
  v15 = v14 + 160 * a3 + 144;
  bzero(a1, 112 * a3 + ((4 * a3 + 60) & 0x7FFC0) + 128);
  a1[1] = v13;
  a1[9] = v14;
  a1[8] = v15;
  *a1 = a3;
  if (a3 >= 2)
  {
    v16 = v58 - 1;
    v17 = a1 + 65;
    v18 = (a2 + 72);
    do
    {
      v19 = *v18;
      v18 += 10;
      *v17++ = v19;
      --v16;
    }

    while (v16);
  }

  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  bzero(a6, 144 * a3);
  if (a3)
  {
    v21 = 0;
    v22 = 0;
    v53 = a3;
    v23 = 32 * a3;
    v56 = &a1[v23 / 2 + 64 + v23 / 2];
    v24 = a1;
    v25 = a4;
    v26 = &a1[32 * *a1 + 64 + 16 * *a1 + 8 * *a1];
    v27 = (a2 + 104);
    v28 = a7;
    v54 = a7;
    v55 = v25;
    v29 = v25;
    do
    {
      if (v22 + 2 < v58)
      {
        _X9 = *(v27 - 1);
        _X8 = *v27;
        __asm
        {
          PRFM            #0, [X9]
          PRFM            #0, [X8]
        }
      }

      v38 = *(v27 - 11);
      *v29 = *v38->f32;
      *(v29 + 16) = v38[2];
      *(v29 + 24) = v38[3].i32[0];
      *(a5 + 16 * v22) = xmmword_1E30474D0;
      v39 = v38[11].i32[0];
      v40 = &v24[v21 / 2];
      v41 = v38[8];
      v40[17].i32[0] = v38[9].i32[0];
      v40[17].i32[1] = 0;
      v42 = v38[10];
      v40[16] = v41;
      v40[18] = v42;
      v40[19].i32[0] = v39;
      v40[19].i32[1] = 0;
      v43 = &v56[v21 / 2];
      *v43 = 0u;
      v43[1] = 0u;
      physx::Dy::Articulation::setInertia(a6, v38, v38);
      result.n128_u32[0] = v38[9].u32[1];
      *(v26 + 4 * v22) = result.n128_u32[0];
      if (v21)
      {
        result.n128_u64[0] = physx::Dy::Articulation::setJointTransforms(v28, v55 + 28 * *(v27 - 18), v38, *(v27 - 10)).u64[0];
      }

      ++v22;
      v28 += 84;
      v21 += 32;
      a6 += 144;
      v27 += 5;
      v29 += 28;
    }

    while (v23 != v21);
    if (v53 >= 2)
    {
      v44 = 0;
      v45 = (v55 + 52);
      v46 = (v24 + v24[1] + 48);
      v47 = v24 + 65;
      do
      {
        v48 = *v47++;
        v49 = (v55 + 28 * v48);
        v50 = *(v45 - 2);
        v51.n128_u64[0] = vsub_f32(v50, v49[2]);
        v52 = *v45;
        v45 += 7;
        result.n128_u64[0] = vsub_f32(*(v54 + v44 + 128), v50);
        v51.n128_u64[1] = COERCE_UNSIGNED_INT(v52 - v49[3].f32[0]);
        result.n128_f32[2] = *(v54 + v44 + 136) - v52;
        result.n128_u32[3] = 0;
        v46[-1] = v51;
        *v46 = result;
        v44 += 84;
        v46 += 2;
      }

      while (84 * v58 - 84 != v44);
    }
  }

  return result;
}

unsigned __int16 *physx::Dy::Articulation::prepareFsData(unsigned __int16 *result, void *a2)
{
  v2 = *result;
  v3 = result[9];
  v4 = result + v3;
  v5 = result[8];
  v6 = result[1];
  *(v4 + 36) = *a2;
  *(v4 + 37) = 1;
  if (v2 >= 2)
  {
    v7 = (result + v3 + 448);
    v8 = v2 - 1;
    v9 = (result + v6 + 48);
    v10 = (a2 + 5);
    v11 = (&result[216 * v2 + 88] + v5);
    do
    {
      v12 = *v10;
      v10 = (v10 + 40);
      *v7 = v12;
      v7 += 10;
      v13 = *v9;
      v9 += 2;
      v14 = vextq_s8(v13, v13, 8uLL).u64[0];
      v15 = vext_s8(*v13.i8, v14, 4uLL);
      v16 = vmla_f32(vmul_f32(*v13.i8, 0), 0x80000000BF800000, v15);
      *v17.f32 = vext_s8(v16, vmla_f32(vmul_f32(v14, 1065353216), 0x8000000080000000, *v13.i8), 4uLL);
      v18 = vmla_f32(vmul_f32(*v13.i8, 1065353216), 0xBF80000080000000, v15);
      *v19.f32 = vext_s8(v18, vmla_f32(vmul_f32(v14, 0x3F80000000000000), 0x8000000080000000, *v13.i8), 4uLL);
      v17.i64[1] = v16.u32[0];
      v19.i64[1] = v18.u32[0];
      v20 = vmla_f32(vmul_f32(*v13.i8, 0x3F80000000000000), 0x8000000080000000, v15);
      *(v11 - 5) = vaddq_f32(v17, 0);
      *(v11 - 4) = xmmword_1E3047670;
      *v21.f32 = vext_s8(v20, vmla_f32(vmul_f32(v14, 0), 0x80000000BF800000, *v13.i8), 4uLL);
      v21.i64[1] = v20.u32[0];
      *(v11 - 3) = vaddq_f32(v19, 0);
      *(v11 - 2) = xmmword_1E3047680;
      *(v11 - 1) = vaddq_f32(v21, 0);
      *v11 = xmmword_1E30476A0;
      v11 += 6;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *physx::Dy::Articulation::prepareLtbMatrix(unsigned __int16 *result, _OWORD *a2, uint64_t a3, uint64_t a4, float a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *result;
  v7 = result[8];
  v8 = (result + v7);
  *v8 = *a2;
  v8[1] = a2[1];
  v8[2] = a2[2];
  v8[3] = a2[3];
  v8[4] = a2[4];
  v8[5] = a2[5];
  v8[6] = a2[6];
  v8[7] = a2[7];
  v8[8] = a2[8];
  *(&v41[0] + 1) = 0;
  v41[1] = xmmword_1E3047670;
  v42 = 1065353216;
  if (v6 >= 2)
  {
    v9 = result + 32;
    v10 = result + v7 + 656;
    v11 = 1;
    v12 = vdup_n_s32(0x3F7D70A4u);
    do
    {
      v13 = &a2[9 * v11];
      result = &v8[25 * v11];
      *result = *v13;
      *(result + 1) = v13[1];
      *(result + 2) = v13[2];
      *(result + 3) = v13[3];
      *(result + 4) = v13[4];
      *(result + 5) = v13[5];
      *(result + 6) = v13[6];
      *(result + 7) = v13[7];
      *(result + 8) = v13[8];
      v14 = a4 + 84 * v11;
      v15 = (a3 + 28 * *(v9 + v11));
      v16 = v15[4];
      v17 = v15[5];
      v18 = *(v14 + 52);
      v19 = v18 - v15[6];
      v20 = (a3 + 28 * v11);
      v21 = v18 - v20[6];
      v22 = *(v14 + 44);
      _S6 = v22.f32[0] - v16;
      v24 = v22.f32[1] - v17;
      v25 = v22.f32[0] - v20[4];
      v26 = v22.f32[1] - v20[5];
      v27 = *(v14 + 24) - v18;
      v28 = *(v14 + 16);
      v29 = v10;
      v30 = v41 + 2;
      v31 = 3;
      do
      {
        _Q28.i64[0] = *(v30 - 1);
        __asm { FMLA            S31, S6, V28.S[1] }

        *&v37 = vnegq_f32(_Q28).u64[0];
        *(&v37 + 2) = -*v30;
        *&v38 = vmuls_lane_f32(-v19, *_Q28.f32, 1) + (v24 * *v30);
        HIDWORD(v39) = 0;
        *&v39 = -(vmuls_lane_f32(-v21, *_Q28.f32, 1) + (v26 * *v30));
        *(&v38 + 1) = (*v30 * -_S6) + (v19 * _Q28.f32[0]);
        _Q28.i64[1] = *v30;
        HIDWORD(v37) = 0;
        *(&v38 + 1) = _S31;
        *(&v39 + 1) = -((*v30 * -v25) + (v21 * _Q28.f32[0]));
        *(&v39 + 2) = -((-v26 * _Q28.f32[0]) + (v25 * _Q28.f32[1]));
        *(v29 - 7) = _Q28;
        *(v29 - 6) = v38;
        *(v29 - 1) = v37;
        *v29 = v39;
        v30 += 3;
        v29 += 2;
        --v31;
      }

      while (v31);
      *&v40 = vmul_n_f32(vmul_f32(vsub_f32(v28, v22), v12), a5);
      *(&v40 + 2) = (v27 * 0.99) * a5;
      HIDWORD(v40) = 0;
      *(result + 24) = v40;
      ++v11;
      v10 += 400;
    }

    while (v11 != v6);
  }

  return result;
}

float32x4_t physx::Dy::PxcLtbComputeJv(float32x4_t *a1, unsigned __int16 *a2, int8x16_t *a3)
{
  if (*a2 >= 2u)
  {
    v3 = a1 + 1;
    v4 = a2[1] + 48;
    v5 = a3 + 3;
    v6 = 65;
    do
    {
      v7 = &a3[2 * *(a2 + v6)];
      v8 = v7[1];
      v9 = *(a2 + v4);
      v10 = vaddq_f32(v9, *(a2 + v4 - 16));
      v11 = vextq_s8(v8, v8, 8uLL).u64[0];
      v12 = vext_s8(*v8.i8, v11, 4uLL);
      v13 = vmls_f32(vmul_f32(v11, *v10.i8), *v8.i8, *&vextq_s8(v10, v10, 8uLL));
      v14 = vmls_f32(vmul_f32(*v8.i8, *&vextq_s8(v10, v10, 4uLL)), v12, *v10.i8);
      v8.i64[0] = vextq_s8(*v5, *v5, 8uLL).u64[0];
      v10.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
      *v15.f32 = vext_s8(v14, v13, 4uLL);
      v16 = vmls_f32(vmul_f32(*v5->i8, vext_s8(*v9.f32, *v10.i8, 4uLL)), vext_s8(*v5->i8, *v8.i8, 4uLL), *v9.f32);
      *v17.f32 = vext_s8(v16, vmls_f32(vmul_f32(*v8.i8, *v9.f32), *v5->i8, *v10.i8), 4uLL);
      v17.i64[1] = v16.u32[0];
      v15.i64[1] = v14.u32[0];
      result = vsubq_f32(vaddq_f32(*v7, v15), vaddq_f32(v5[-1], v17));
      *v3++ = result;
      v19 = v6 - 63;
      ++v6;
      v4 += 32;
      v5 += 2;
    }

    while (v19 < *a2);
  }

  return result;
}

float32x4_t physx::Dy::PxcLtbSolve(unsigned __int16 *a1, uint64_t a2, float32x2_t *a3)
{
  v6 = a1[8];
  v7 = (a1 + v6);
  bzero(a3, 32 * *a1);
  v8 = *a1;
  if (v8 >= 2)
  {
    v9 = (&a1[200 * *a1 - 64] + v6);
    v10 = &a3[4 * v8 - 2];
    v11 = a2 - 16;
    do
    {
      v12 = *(a1 + v8 + 63);
      v13 = v10[-1];
      v14 = vmulq_f32(v9[-2], v13);
      v14.i64[0] = vpaddq_f32(v14, v14).u64[0];
      v15 = vmulq_f32(v9[-1], *v10);
      v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
      *v14.f32 = vadd_f32(vpadd_f32(*v14.f32, *v14.f32), vpadd_f32(*v15.f32, *v15.f32));
      v16 = vmulq_f32(v13, *v9);
      v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
      v17 = vmulq_f32(*v10, v9[1]);
      v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
      v18 = vmulq_f32(v13, v9[2]);
      v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
      v19 = vmulq_f32(*v10, v9[3]);
      v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
      *v14.f32 = vext_s8(*v14.f32, vadd_f32(vpadd_f32(*v16.f32, *v16.f32), vpadd_f32(*v17.f32, *v17.f32)), 4uLL);
      v14.i64[1] = vadd_f32(vpadd_f32(*v18.f32, *v18.f32), vpadd_f32(*v19.f32, *v19.f32)).u32[0];
      v20 = vsubq_f32(*(v11 + 16 * v8), v14);
      *(v11 + 16 * v8) = v20;
      v21 = vmulq_laneq_f32(v9[-4], v20, 2);
      v21.i32[3] = 0;
      v22 = vmlaq_lane_f32(v21, v9[-6], *v20.f32, 1);
      v23 = &a3[4 * v12];
      v22.i64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
      v24 = vmlaq_n_f32(v22, v9[-8], v20.f32[0]);
      v24.i64[1] = vextq_s8(v24, v24, 8uLL).u32[0];
      v25 = vmulq_laneq_f32(v9[-3], v20, 2);
      v25.i32[3] = 0;
      v26 = vmlaq_lane_f32(v25, v9[-5], *v20.f32, 1);
      v26.i64[1] = vextq_s8(v26, v26, 8uLL).u32[0];
      v27 = vmlaq_n_f32(v26, v9[-7], v20.f32[0]);
      v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
      v28 = vsubq_f32(*v23, v24);
      v29 = vsubq_f32(v23[1], v27);
      *v23 = v28;
      v23[1] = v29;
      v9 -= 25;
      v10 -= 2;
      --v8;
    }

    while (v8 > 1);
  }

  v30 = *a3[2].f32;
  v31 = vmulq_n_f32(*v7, COERCE_FLOAT(*a3->f32));
  v31.i32[3] = 0;
  v32 = vmulq_lane_f32(v7[1], *a3, 1);
  v32.i32[3] = 0;
  v33 = v7[3];
  v34 = vmulq_laneq_f32(v7[2], *a3->f32, 2);
  v34.i32[3] = 0;
  v35 = vaddq_f32(vaddq_f32(v31, v32), v34);
  v36 = vmulq_n_f32(v33, v30.f32[0]);
  v36.i32[3] = 0;
  v37 = v7[4];
  v38 = v7[5];
  v39 = vmulq_lane_f32(v37, *v30.f32, 1);
  v39.i32[3] = 0;
  v40 = vmulq_laneq_f32(v38, v30, 2);
  v40.i32[3] = 0;
  v41 = vmulq_f32(*a3->f32, v33);
  v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
  v42 = vmulq_f32(*a3->f32, v37);
  v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
  v43 = vmulq_f32(*a3->f32, v38);
  v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
  *v42.f32 = vext_s8(vpadd_f32(*v41.f32, *v41.f32), vpadd_f32(*v42.f32, *v42.f32), 4uLL);
  v42.i64[1] = vpadd_f32(*v43.f32, *v43.f32).u32[0];
  v44 = vmulq_n_f32(v7[6], v30.f32[0]);
  v44.i32[3] = 0;
  v45 = vmulq_lane_f32(v7[7], *v30.f32, 1);
  v45.i32[3] = 0;
  result = vaddq_f32(v35, vaddq_f32(vaddq_f32(v36, v39), v40));
  v47 = vmulq_laneq_f32(v7[8], v30, 2);
  v47.i32[3] = 0;
  *a3->f32 = result;
  *a3[2].f32 = vaddq_f32(vaddq_f32(vaddq_f32(v44, v45), v47), v42);
  if (*a1 >= 2u)
  {
    v48 = 0;
    v49 = a3 + 6;
    v50 = a1 + v6 + 400;
    do
    {
      v51 = *(a2 + 16 + 16 * v48);
      v52 = vmulq_n_f32(*(v50 + 336), v51.f32[0]);
      v52.i32[3] = 0;
      v53 = vmulq_lane_f32(*(v50 + 352), *v51.f32, 1);
      v53.i32[3] = 0;
      v54 = vmulq_laneq_f32(*(v50 + 368), v51, 2);
      v54.i32[3] = 0;
      v55 = &a3[4 * *(a1 + v48 + 65)];
      v56 = v55[1];
      v57 = vmulq_f32(*(v50 + 144), *v55);
      v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
      v58 = vmulq_f32(*(v50 + 160), v56);
      v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
      v59 = vmulq_f32(*v55, *(v50 + 176));
      v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
      v60 = vmulq_f32(v56, *(v50 + 192));
      v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
      v61 = vmulq_f32(*v55, *(v50 + 208));
      v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
      v62 = vmulq_f32(v56, *(v50 + 224));
      v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
      *v57.f32 = vext_s8(vadd_f32(vpadd_f32(*v57.f32, *v57.f32), vpadd_f32(*v58.f32, *v58.f32)), vadd_f32(vpadd_f32(*v59.f32, *v59.f32), vpadd_f32(*v60.f32, *v60.f32)), 4uLL);
      v63 = vaddq_f32(v52, v53);
      v57.i64[1] = vadd_f32(vpadd_f32(*v61.f32, *v61.f32), vpadd_f32(*v62.f32, *v62.f32)).u32[0];
      v64 = *v49[-2].f32;
      v65 = vmulq_n_f32(*v50, v64.f32[0]);
      v65.i32[3] = 0;
      v66 = vmulq_lane_f32(*(v50 + 16), *v64.f32, 1);
      v66.i32[3] = 0;
      v67 = vaddq_f32(v63, v54);
      v68 = *(v50 + 48);
      v69 = vmulq_laneq_f32(*(v50 + 32), v64, 2);
      v69.i32[3] = 0;
      v70 = vmulq_n_f32(v68, COERCE_FLOAT(*v49->f32));
      v71 = *(v50 + 64);
      v72 = *(v50 + 80);
      v73 = vmulq_lane_f32(v71, *v49, 1);
      v70.i32[3] = 0;
      v73.i32[3] = 0;
      v74 = vmulq_f32(v64, v68);
      v75 = vmulq_f32(v64, v71);
      v76 = vmulq_f32(v64, v72);
      v77 = vaddq_f32(v65, v66);
      v78 = vmulq_laneq_f32(v72, *v49->f32, 2);
      v78.i32[3] = 0;
      v74.i64[0] = vpaddq_f32(v74, v74).u64[0];
      v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
      v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
      *v74.f32 = vext_s8(vpadd_f32(*v74.f32, *v74.f32), vpadd_f32(*v75.f32, *v75.f32), 4uLL);
      v79 = vaddq_f32(v77, v69);
      v80 = vmulq_n_f32(*(v50 + 96), COERCE_FLOAT(*v49->f32));
      v81 = vaddq_f32(vaddq_f32(v70, v73), v78);
      v80.i32[3] = 0;
      v82 = vmulq_lane_f32(*(v50 + 112), *v49, 1);
      v82.i32[3] = 0;
      v83 = vsubq_f32(v67, v57);
      v84 = vmulq_laneq_f32(*(v50 + 128), *v49->f32, 2);
      v84.i32[3] = 0;
      v74.i64[1] = vpadd_f32(*v76.f32, *v76.f32).u32[0];
      v85 = vmulq_laneq_f32(*(v50 + 304), v83, 2);
      v85.i32[3] = 0;
      v86 = vmlaq_lane_f32(v85, *(v50 + 272), *v83.f32, 1);
      v86.i64[1] = vextq_s8(v86, v86, 8uLL).u32[0];
      v87 = vmlaq_n_f32(v86, *(v50 + 240), v83.f32[0]);
      v88 = vmulq_laneq_f32(*(v50 + 320), v83, 2);
      v88.i32[3] = 0;
      v89 = vmlaq_lane_f32(v88, *(v50 + 288), *v83.f32, 1);
      v89.i64[1] = vextq_s8(v89, v89, 8uLL).u32[0];
      v90 = vmlaq_n_f32(v89, *(v50 + 256), v83.f32[0]);
      v87.i64[1] = vextq_s8(v87, v87, 8uLL).u32[0];
      v90.i64[1] = vextq_s8(v90, v90, 8uLL).u32[0];
      result = vsubq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v80, v82), v84), v74), v90);
      *v49[-2].f32 = vsubq_f32(vaddq_f32(v79, v81), v87);
      *v49->f32 = result;
      v91 = v48 + 2;
      ++v48;
      v49 += 4;
      v50 += 400;
    }

    while (v91 < *a1);
  }

  return result;
}

void physx::Dy::PxcFsComputeJointLoadsSimd(unsigned __int16 *a1, const void *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, uint64_t *a7)
{
  v579 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v7 = a5;
    v524 = a5;
    if (a5 >= 2)
    {
      v9 = a5 - 1;
      v10 = &v561;
      v11 = (a4 + 4);
      do
      {
        v12 = vld1_dup_f32(v11++);
        *v10++ = v12;
        --v9;
      }

      while (v9);
    }

    v13 = *a7;
    v14 = a7[2];
    v15 = (*a7 + v14);
    v16 = v14 + 144 * a5;
    a7[2] = v16 + 144 * a5;
    v17 = *a1;
    v18 = &a1[200 * v17] + a1[8];
    v19 = a1 + a1[1];
    if (a5)
    {
      v20 = (a1 + 32);
      v21 = v560;
      v22 = a5;
      do
      {
        v23 = *v20++;
        *v21++ = v23;
        --v22;
      }

      while (v22);
    }

    v24 = v13 + v16;
    v25 = v18 + 32 * v17;
    __n = 144 * a5;
    do
    {
      v523 = a6;
      memcpy(v15, a2, __n);
      if (v7 >= 2)
      {
        v26 = v524;
        do
        {
          _X26 = a3 + 48 * v26;
          _X8 = &v19[32 * v26--];
          __asm
          {
            PRFUM           #0, [X26,#-0x60]
            PRFUM           #0, [X8,#-0x40]
          }

          v35 = &v15[144 * v26];
          v555 = v560[v26 + 64];
          *v36.f32 = physx::Dy::ArticulationFnsSimdBase::computeSIS(v35, (v25 + 96 * v26), &v562);
          v39 = vdupq_lane_s32(v555, 0);
          v40 = vmlaq_n_f32(v36, *(_X26 - 48), *v555.i32);
          v41 = vdup_lane_s32(*v40.f32, 0);
          v42 = vrecpe_f32(v41);
          v43 = 4;
          do
          {
            v42 = vmul_f32(v42, vrecps_f32(v41, v42));
            --v43;
          }

          while (v43);
          v44 = vmlaq_f32(v37, v39, *(_X26 - 32));
          v45 = vmax_f32(v42, 0);
          v46 = vrsqrte_f32(v45);
          v47 = 4;
          do
          {
            v46 = vmul_f32(v46, vrsqrts_f32(vmul_f32(v46, v46), v45));
            --v47;
          }

          while (v47);
          v48 = vbsl_s8(vdup_lane_s32(vceqz_f32(v45), 0), v45, vmul_f32(v45, v46));
          v49 = vmulq_n_f32(v40, v48.f32[0]);
          v50 = vdup_lane_s32(*v49.f32, 1);
          v51 = vneg_f32(v50);
          v52 = vmls_lane_f32(vdup_lane_s32(*v44.i8, 1), v50, *v49.f32, 1);
          v53 = vrecpe_f32(v52);
          v54 = 4;
          do
          {
            v53 = vmul_f32(v53, vrecps_f32(v52, v53));
            --v54;
          }

          while (v54);
          v55 = vmlaq_f32(v38, v39, *(_X26 - 16));
          v56 = vmax_f32(v53, 0);
          v57 = vrsqrte_f32(v56);
          v58 = 4;
          do
          {
            v57 = vmul_f32(v57, vrsqrts_f32(vmul_f32(v57, v57), v56));
            --v58;
          }

          while (v58);
          v59 = vdup_laneq_s32(v55, 2);
          v60 = vbsl_s8(vdup_lane_s32(vceqz_f32(v56), 0), v56, vmul_f32(v56, v57));
          v61 = vdup_laneq_s32(v49, 2);
          v62 = vmul_f32(vmla_laneq_f32(vdup_laneq_s32(v44, 2), v51, v49, 2), v60);
          v63 = vneg_f32(v62);
          v64 = vneg_f32(v61);
          v65 = vmls_laneq_f32(vmls_f32(v59, v62, v62), v61, v49, 2);
          v66 = vrecpe_f32(v65);
          v67 = 4;
          do
          {
            v66 = vmul_f32(v66, vrecps_f32(v65, v66));
            --v67;
          }

          while (v67);
          v68 = vmax_f32(v66, 0);
          v69 = vrsqrte_f32(v68);
          v70 = 4;
          do
          {
            v69 = vmul_f32(v69, vrsqrts_f32(vmul_f32(v69, v69), v68));
            --v70;
          }

          while (v70);
          v71 = vbsl_s8(vdup_lane_s32(vceqz_f32(v68), 0), v68, vmul_f32(v68, v69));
          v72 = vmul_f32(vmul_lane_f32(v48, *v49.f32, 1), v60);
          v73 = vmulq_lane_f32(v562, v48, 1);
          v74 = v73;
          v74.i32[3] = 0;
          v75 = vmul_f32(vext_s8(vmla_f32(vmul_f32(v62, v72), v48, v64), vmul_f32(v60, v71), 4uLL), vext_s8(v71, v63, 4uLL));
          v76 = vmulq_lane_f32(v563, v48, 1);
          v77 = v76;
          v77.i32[3] = 0;
          v78 = vmulq_n_f32(v564, v60.f32[0]);
          v78.i32[3] = 0;
          v79 = vmlsq_lane_f32(v78, v562, v72, 1);
          v80.i64[0] = v79.i64[0];
          v80.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
          v81 = vmulq_n_f32(v565, v60.f32[0]);
          v81.i32[3] = 0;
          v82 = vmlsq_lane_f32(v81, v563, v72, 1);
          v83.i64[0] = v82.i64[0];
          v83.i64[1] = vextq_s8(v82, v82, 8uLL).u32[0];
          v84 = vmulq_n_f32(v566, v71.f32[0]);
          v84.i32[3] = 0;
          v85 = vmlaq_lane_f32(v84, v564, v75, 1);
          v85.i64[1] = vextq_s8(v85, v85, 8uLL).u32[0];
          v86 = vmlaq_n_f32(v85, v562, v75.f32[0]);
          v87.i64[0] = v86.i64[0];
          v87.i64[1] = vextq_s8(v86, v86, 8uLL).u32[0];
          v88 = vmulq_n_f32(v567, v71.f32[0]);
          v88.i32[3] = 0;
          v89 = vmlaq_lane_f32(v88, v565, v75, 1);
          v89.i64[1] = vextq_s8(v89, v89, 8uLL).u32[0];
          v90 = vmlaq_n_f32(v89, v563, v75.f32[0]);
          v91.i64[0] = v90.i64[0];
          v91.i64[1] = vextq_s8(v90, v90, 8uLL).u32[0];
          v92 = vmlsq_lane_f32(*v35, v74, *v73.f32, 0);
          v92.i64[1] = vextq_s8(v92, v92, 8uLL).u32[0];
          v93 = vmlsq_lane_f32(v35[3], v74, *v76.f32, 0);
          v93.i64[1] = vextq_s8(v93, v93, 8uLL).u32[0];
          v94 = vmlsq_lane_f32(v35[6], v77, *v76.f32, 0);
          v94.i64[1] = vextq_s8(v94, v94, 8uLL).u32[0];
          v95 = vmlsq_lane_f32(v35[1], v74, *v73.f32, 1);
          v95.i64[1] = vextq_s8(v95, v95, 8uLL).u32[0];
          v96 = vmlsq_lane_f32(v35[4], v74, *v76.f32, 1);
          v96.i64[1] = vextq_s8(v96, v96, 8uLL).u32[0];
          v97 = vmlsq_lane_f32(v35[7], v77, *v76.f32, 1);
          v97.i64[1] = vextq_s8(v97, v97, 8uLL).u32[0];
          v98 = vmlsq_laneq_f32(v35[2], v74, v73, 2);
          v98.i64[1] = vextq_s8(v98, v98, 8uLL).u32[0];
          v99 = vmlsq_laneq_f32(v35[5], v74, v76, 2);
          v99.i64[1] = vextq_s8(v99, v99, 8uLL).u32[0];
          v100 = vmlsq_laneq_f32(v35[8], v77, v76, 2);
          v100.i64[1] = vextq_s8(v100, v100, 8uLL).u32[0];
          v101 = vmlsq_lane_f32(v92, v80, *v79.f32, 0);
          v101.i64[1] = vextq_s8(v101, v101, 8uLL).u32[0];
          v102 = vmlsq_lane_f32(v93, v80, *v82.f32, 0);
          v102.i64[1] = vextq_s8(v102, v102, 8uLL).u32[0];
          v103 = vmlsq_lane_f32(v94, v83, *v82.f32, 0);
          v103.i64[1] = vextq_s8(v103, v103, 8uLL).u32[0];
          v104 = vmlsq_lane_f32(v95, v80, *v79.f32, 1);
          v104.i64[1] = vextq_s8(v104, v104, 8uLL).u32[0];
          v105 = vmlsq_lane_f32(v96, v80, *v82.f32, 1);
          v105.i64[1] = vextq_s8(v105, v105, 8uLL).u32[0];
          v106 = vmlsq_lane_f32(v97, v83, *v82.f32, 1);
          v106.i64[1] = vextq_s8(v106, v106, 8uLL).u32[0];
          v107 = vmlsq_laneq_f32(v98, v80, v79, 2);
          v107.i64[1] = vextq_s8(v107, v107, 8uLL).u32[0];
          v108 = vmlsq_laneq_f32(v99, v80, v82, 2);
          v108.i64[1] = vextq_s8(v108, v108, 8uLL).u32[0];
          v109 = vmlsq_laneq_f32(v100, v83, v82, 2);
          v109.i64[1] = vextq_s8(v109, v109, 8uLL).u32[0];
          v110 = vmlsq_lane_f32(v101, v87, *v86.f32, 0);
          v110.i64[1] = vextq_s8(v110, v110, 8uLL).u32[0];
          v116 = vmlsq_lane_f32(v102, v87, *v90.f32, 0);
          v111 = *&v19[32 * v26];
          v112 = vnegq_f32(v111);
          *v77.f32 = vext_s8(0, *&vextq_s8(v111, v111, 8uLL), 4uLL);
          v77.i64[1] = vdup_lane_s32(*v112.f32, 1).u32[0];
          *v76.f32 = vext_s8(vdup_laneq_s32(v112, 2), 0, 4uLL);
          v76.i64[1] = vdup_lane_s32(*v111.f32, 0).u32[0];
          *v83.f32 = vext_s8(*v111.f32, *v112.f32, 4uLL);
          v113 = vmulq_laneq_f32(v83.u64[0], v116, 2);
          v113.i32[3] = 0;
          v114 = vmlaq_lane_f32(v113, v76, *v116.f32, 1);
          v114.i64[1] = vextq_s8(v114, v114, 8uLL).u32[0];
          v115 = vmlaq_n_f32(v114, v77, v116.f32[0]);
          v116.i64[1] = vextq_s8(v116, v116, 8uLL).u32[0];
          v117 = vmlsq_lane_f32(v103, v91, *v90.f32, 0);
          v117.i64[1] = vextq_s8(v117, v117, 8uLL).u32[0];
          v118 = vmlsq_lane_f32(v104, v87, *v86.f32, 1);
          v118.i64[1] = vextq_s8(v118, v118, 8uLL).u32[0];
          v119 = vmlsq_lane_f32(v105, v87, *v90.f32, 1);
          v82.i64[0] = v119.i64[0];
          v82.i64[1] = vextq_s8(v119, v119, 8uLL).u32[0];
          v120 = vmlsq_lane_f32(v106, v91, *v90.f32, 1);
          v120.i64[1] = vextq_s8(v120, v120, 8uLL).u32[0];
          v121 = vmlsq_laneq_f32(v107, v87, v86, 2);
          v121.i64[1] = vextq_s8(v121, v121, 8uLL).u32[0];
          v122 = vmulq_laneq_f32(v83.u64[0], v119, 2);
          v123 = vmlsq_laneq_f32(v108, v87, v90, 2);
          v86.i64[0] = v123.i64[0];
          v86.i64[1] = vextq_s8(v123, v123, 8uLL).u32[0];
          v124 = vmlsq_laneq_f32(v109, v91, v90, 2);
          v124.i64[1] = vextq_s8(v124, v124, 8uLL).u32[0];
          v122.i32[3] = 0;
          v125 = vmlaq_lane_f32(v122, v76, *v119.f32, 1);
          v125.i64[1] = vextq_s8(v125, v125, 8uLL).u32[0];
          v126 = vmlaq_n_f32(v125, v77, v119.f32[0]);
          v115.i64[1] = vextq_s8(v115, v115, 8uLL).u32[0];
          v127 = vmulq_laneq_f32(v83.u64[0], v123, 2);
          v127.i32[3] = 0;
          v128 = vmlaq_lane_f32(v127, v76, *v123.f32, 1);
          v128.i64[1] = vextq_s8(v128, v128, 8uLL).u32[0];
          v129 = vmlaq_n_f32(v128, v77, v123.f32[0]);
          v126.i64[1] = vextq_s8(v126, v126, 8uLL).u32[0];
          v129.i64[1] = vextq_s8(v129, v129, 8uLL).u32[0];
          v130 = vmulq_laneq_f32(v118, v112, 2);
          v130.i32[3] = 0;
          v131 = vmlaq_lane_f32(v130, v121, *v111.f32, 1);
          v132 = vmulq_n_f32(v77, v131.f32[0]);
          v132.i32[3] = 0;
          v133 = vmlaq_lane_f32(v132, v76, *v131.f32, 1);
          v133.i64[1] = vextq_s8(v133, v133, 8uLL).u32[0];
          v134 = vmlaq_laneq_f32(v133, v83.u64[0], v131, 2);
          v131.i64[1] = vextq_s8(v131, v131, 8uLL).u32[0];
          v135 = vmulq_n_f32(v121, v112.f32[0]);
          v135.i32[3] = 0;
          v136 = vmlaq_laneq_f32(v135, v110, v111, 2);
          v137 = vmulq_n_f32(v77, v136.f32[0]);
          v87.i64[0] = v136.i64[0];
          v87.i64[1] = vextq_s8(v136, v136, 8uLL).u32[0];
          v137.i32[3] = 0;
          v138 = vmlaq_lane_f32(v137, v76, *v136.f32, 1);
          v138.i64[1] = vextq_s8(v138, v138, 8uLL).u32[0];
          v139 = vmlaq_laneq_f32(v138, v83.u64[0], v136, 2);
          v140 = vmulq_lane_f32(v110, *v112.f32, 1);
          v140.i32[3] = 0;
          v141 = vmlaq_n_f32(v140, v118, v111.f32[0]);
          v142 = vmulq_n_f32(v77, v141.f32[0]);
          v136.i64[0] = v141.i64[0];
          v136.i64[1] = vextq_s8(v141, v141, 8uLL).u32[0];
          v134.i64[1] = vextq_s8(v134, v134, 8uLL).u32[0];
          v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
          v142.i32[3] = 0;
          v143 = vmlaq_lane_f32(v142, v76, *v141.f32, 1);
          v143.i64[1] = vextq_s8(v143, v143, 8uLL).u32[0];
          v144 = vmlaq_laneq_f32(v143, v83.u64[0], v141, 2);
          v144.i64[1] = vextq_s8(v144, v144, 8uLL).u32[0];
          v83.i64[0] = 0x3F0000003F000000;
          v83.i64[1] = 0x3F0000003F000000;
          v145 = vmlaq_f32(v115, v83, v134);
          v146 = vmlaq_f32(v126, v83, v139);
          v76.i64[0] = vextq_s8(v146, v146, 8uLL).u64[0];
          v111.i64[0] = v76.u32[0];
          v147 = vmlaq_f32(v129, v83, v144);
          *v76.f32 = vext_s8(vdup_laneq_s32(v145, 2), *v76.f32, 4uLL);
          *v144.f32 = vext_s8(vdup_lane_s32(*v145.f32, 0), *v146.f32, 4uLL);
          v144.i64[1] = vdup_lane_s32(*v147.f32, 0).u32[0];
          *v141.f32 = vext_s8(*v145.f32, vdup_lane_s32(*v146.f32, 1), 4uLL);
          v145.i64[1] = vextq_s8(v145, v145, 8uLL).u32[0];
          v141.i64[1] = vdup_lane_s32(*v147.f32, 1).u32[0];
          v146.i64[1] = v111.i64[0];
          v76.i64[1] = vdup_laneq_s32(v147, 2).u32[0];
          v147.i64[1] = vextq_s8(v147, v147, 8uLL).u32[0];
          v148 = &v15[144 * v560[v26]];
          v149 = vaddq_f32(v145, v144);
          v150 = vaddq_f32(v147, v76);
          v151 = v148[6];
          v152 = v148[7];
          v153 = vaddq_f32(v148[3], vaddq_f32(v116, v131));
          v154 = v148[8];
          v155 = vaddq_f32(v148[1], v118);
          v156 = vaddq_f32(v148[2], v121);
          v157 = vaddq_f32(v148[4], vaddq_f32(v82, v87));
          v158 = vaddq_f32(v148[5], vaddq_f32(v86, v136));
          *v148 = vaddq_f32(*v148, v110);
          v148[1] = v155;
          v148[2] = v156;
          v148[3] = v153;
          v148[4] = v157;
          v148[5] = v158;
          v148[6] = vaddq_f32(v151, vaddq_f32(v117, v149));
          v148[7] = vaddq_f32(v152, vaddq_f32(v120, vaddq_f32(v146, v141)));
          v148[8] = vaddq_f32(v154, vaddq_f32(v124, v150));
          v159 = (v24 + 144 * v26);
          *v159 = v110;
          v159[1] = v118;
          v159[2] = v121;
          v159[3] = v116;
          v159[4] = v82;
          v159[5] = v86;
          v159[6] = v117;
          v159[7] = v120;
          v159[8] = v124;
        }

        while (v26 > 1);
        v160 = 1;
        do
        {
          v161 = *&v19[32 * v160];
          v162 = vnegq_f32(v161);
          v163 = v162;
          v163.i32[3] = 0;
          v164 = &v15[144 * v560[v160]];
          v165 = vnegq_f32(v163);
          v166 = v164[4];
          v167 = v164[5];
          *v168.f32 = vext_s8(0, *&vextq_s8(v162, v162, 8uLL), 4uLL);
          v168.i64[1] = vdup_lane_s32(*v165.f32, 1).u32[0];
          v169 = *v164;
          v170 = v164[1];
          v171 = v164[2];
          v172 = v164[3];
          *v173.f32 = vext_s8(vdup_laneq_s32(v165, 2), 0, 4uLL);
          v173.i64[1] = vdup_lane_s32(*v162.i8, 0).u32[0];
          *v116.f32 = vext_s8(*v162.i8, *v165.f32, 4uLL);
          v174 = vmulq_laneq_f32(v116, v172, 2);
          v174.i32[3] = 0;
          v175 = vmlaq_lane_f32(v174, v173, *v172.f32, 1);
          v175.i64[1] = vextq_s8(v175, v175, 8uLL).u32[0];
          v176 = vmlaq_n_f32(v175, v168, v172.f32[0]);
          v176.i64[1] = vextq_s8(v176, v176, 8uLL).u32[0];
          v177 = vmulq_laneq_f32(v116, v166, 2);
          v177.i32[3] = 0;
          v178 = vmlaq_lane_f32(v177, v173, *v166.f32, 1);
          v178.i64[1] = vextq_s8(v178, v178, 8uLL).u32[0];
          v179 = vmlaq_n_f32(v178, v168, v166.f32[0]);
          v179.i64[1] = vextq_s8(v179, v179, 8uLL).u32[0];
          v180 = vmulq_laneq_f32(v116, v167, 2);
          v180.i32[3] = 0;
          v181 = vmlaq_lane_f32(v180, v173, *v167.f32, 1);
          v181.i64[1] = vextq_s8(v181, v181, 8uLL).u32[0];
          v182 = vmlaq_n_f32(v181, v168, v167.f32[0]);
          v182.i64[1] = vextq_s8(v182, v182, 8uLL).u32[0];
          v183 = vmulq_laneq_f32(v170, v165, 2);
          v183.i32[3] = 0;
          v184 = vmlsq_lane_f32(v183, v171, *v161.f32, 1);
          v185.i64[0] = v184.i64[0];
          v185.i64[1] = vextq_s8(v184, v184, 8uLL).u32[0];
          v186 = vmulq_n_f32(v168, v184.f32[0]);
          v187 = vmulq_n_f32(v171, v165.f32[0]);
          v187.i32[3] = 0;
          v186.i32[3] = 0;
          v188 = vmlaq_lane_f32(v186, v173, *v184.f32, 1);
          v188.i64[1] = vextq_s8(v188, v188, 8uLL).u32[0];
          v189 = vmlaq_laneq_f32(v188, v116, v184, 2);
          v190 = vmlsq_laneq_f32(v187, *v164, v161, 2);
          v191 = vmulq_n_f32(v168, v190.f32[0]);
          v184.i64[0] = v190.i64[0];
          v184.i64[1] = vextq_s8(v190, v190, 8uLL).u32[0];
          v192 = vmulq_lane_f32(*v164, *v165.f32, 1);
          v192.i32[3] = 0;
          v193 = vmlsq_lane_f32(v192, v170, *v161.f32, 0);
          v191.i32[3] = 0;
          v194 = vmlaq_lane_f32(v191, v173, *v190.f32, 1);
          v194.i64[1] = vextq_s8(v194, v194, 8uLL).u32[0];
          v195 = vmlaq_laneq_f32(v194, v116, v190, 2);
          v196 = vmulq_n_f32(v168, v193.f32[0]);
          v196.i32[3] = 0;
          v197 = vmlaq_lane_f32(v196, v173, *v193.f32, 1);
          v197.i64[1] = vextq_s8(v197, v197, 8uLL).u32[0];
          v198 = vmlaq_laneq_f32(v197, v116, v193, 2);
          v161.i64[0] = v193.i64[0];
          v161.i64[1] = vextq_s8(v193, v193, 8uLL).u32[0];
          v189.i64[1] = vextq_s8(v189, v189, 8uLL).u32[0];
          v199 = v164[8];
          v195.i64[1] = vextq_s8(v195, v195, 8uLL).u32[0];
          v198.i64[1] = vextq_s8(v198, v198, 8uLL).u32[0];
          v193.i64[0] = 0x3F0000003F000000;
          v193.i64[1] = 0x3F0000003F000000;
          v200 = vmlaq_f32(v176, v193, v189);
          v201 = vmlaq_f32(v179, v193, v195);
          v195.i64[0] = vextq_s8(v201, v201, 8uLL).u64[0];
          *v190.f32 = vext_s8(vdup_laneq_s32(v200, 2), *v195.f32, 4uLL);
          v202 = vmlaq_f32(v182, v193, v198);
          *v193.f32 = vext_s8(vdup_lane_s32(*v200.f32, 0), *v201.f32, 4uLL);
          v193.i64[1] = vdup_lane_s32(*v202.f32, 0).u32[0];
          *v203.f32 = vext_s8(*v200.f32, vdup_lane_s32(*v201.f32, 1), 4uLL);
          v200.i64[1] = vextq_s8(v200, v200, 8uLL).u32[0];
          v203.i64[1] = vdup_lane_s32(*v202.f32, 1).u32[0];
          v201.i64[1] = v195.u32[0];
          v190.i64[1] = vdup_laneq_s32(v202, 2).u32[0];
          v202.i64[1] = vextq_s8(v202, v202, 8uLL).u32[0];
          v204 = vaddq_f32(v172, v185);
          v205 = vaddq_f32(v167, v161);
          v206 = vaddq_f32(v164[6], vaddq_f32(v200, v193));
          v207 = vaddq_f32(v164[7], vaddq_f32(v201, v203));
          v208 = (v24 + 144 * v160);
          v209 = vaddq_f32(v199, vaddq_f32(v202, v190));
          v210 = vsubq_f32(v169, *v208);
          v211 = vsubq_f32(v170, v208[1]);
          v212 = vsubq_f32(v171, v208[2]);
          v213 = vsubq_f32(v204, v208[3]);
          v214 = vsubq_f32(vaddq_f32(v166, v184), v208[4]);
          v215 = vsubq_f32(v205, v208[5]);
          v216 = vsubq_f32(v206, v208[6]);
          v217 = vsubq_f32(v207, v208[7]);
          v218 = vsubq_f32(v209, v208[8]);
          v535 = v211;
          v536 = v210;
          v559[0] = v210;
          v559[1] = v211;
          v537 = v213;
          v538 = v212;
          v559[2] = v212;
          v559[3] = v213;
          v539 = v215;
          v540 = v214;
          v559[4] = v214;
          v559[5] = v215;
          v541 = v217;
          v542 = v216;
          v559[6] = v216;
          v559[7] = v217;
          v543 = v218;
          v559[8] = v218;
          v556 = v560[v160 + 64];
          v219 = (a3 + 48 * v160);
          *v220.f32 = physx::Dy::ArticulationFnsSimdBase::computeSIS(v559, (v25 + 96 * v160), &v562);
          v223 = vdupq_lane_s32(v556, 0);
          v224 = vmlaq_n_f32(v220, *v219, *v556.i32);
          v225 = vdup_lane_s32(*v224.f32, 0);
          v226 = vrecpe_f32(v225);
          v227 = 4;
          do
          {
            v226 = vmul_f32(v226, vrecps_f32(v225, v226));
            --v227;
          }

          while (v227);
          v228 = vmlaq_f32(v221, v223, v219[1]);
          v229 = vmax_f32(v226, 0);
          v230 = vrsqrte_f32(v229);
          v231 = 4;
          do
          {
            v230 = vmul_f32(v230, vrsqrts_f32(vmul_f32(v230, v230), v229));
            --v231;
          }

          while (v231);
          v232 = vbsl_s8(vdup_lane_s32(vceqz_f32(v229), 0), v229, vmul_f32(v229, v230));
          v233 = vmulq_n_f32(v224, v232.f32[0]);
          v234 = vdup_lane_s32(*v233.f32, 1);
          v235 = vneg_f32(v234);
          v236 = vmls_lane_f32(vdup_lane_s32(*v228.i8, 1), v234, *v233.f32, 1);
          v237 = vrecpe_f32(v236);
          v238 = 4;
          do
          {
            v237 = vmul_f32(v237, vrecps_f32(v236, v237));
            --v238;
          }

          while (v238);
          v239 = vmlaq_f32(v222, v223, v219[2]);
          v240 = vmax_f32(v237, 0);
          v241 = vrsqrte_f32(v240);
          v242 = 4;
          do
          {
            v241 = vmul_f32(v241, vrsqrts_f32(vmul_f32(v241, v241), v240));
            --v242;
          }

          while (v242);
          v243 = vdup_laneq_s32(v239, 2);
          v244 = vbsl_s8(vdup_lane_s32(vceqz_f32(v240), 0), v240, vmul_f32(v240, v241));
          v245 = vdup_laneq_s32(v233, 2);
          v246 = vmul_f32(vmla_laneq_f32(vdup_laneq_s32(v228, 2), v235, v233, 2), v244);
          v247 = vneg_f32(v246);
          v248 = vneg_f32(v245);
          v249 = vmls_laneq_f32(vmls_f32(v243, v246, v246), v245, v233, 2);
          v250 = vrecpe_f32(v249);
          v251 = 4;
          do
          {
            v250 = vmul_f32(v250, vrecps_f32(v249, v250));
            --v251;
          }

          while (v251);
          v252 = vmax_f32(v250, 0);
          v253 = vrsqrte_f32(v252);
          v254 = 4;
          do
          {
            v253 = vmul_f32(v253, vrsqrts_f32(vmul_f32(v253, v253), v252));
            --v254;
          }

          while (v254);
          v255 = vbsl_s8(vdup_lane_s32(vceqz_f32(v252), 0), v252, vmul_f32(v252, v253));
          v256 = vmul_f32(vmul_lane_f32(v232, *v233.f32, 1), v244);
          v257 = vext_s8(vmla_f32(vmul_f32(v246, v256), v232, v248), vmul_f32(v244, v255), 4uLL);
          v258 = vmulq_lane_f32(v562, v232, 1);
          v259 = v258;
          v259.i32[3] = 0;
          v260 = vmulq_lane_f32(v563, v232, 1);
          v261 = v260;
          v261.i32[3] = 0;
          v262 = vmulq_n_f32(v564, v244.f32[0]);
          v262.i32[3] = 0;
          v263 = vmlsq_lane_f32(v262, v562, v256, 1);
          v264.i64[0] = v263.i64[0];
          v264.i64[1] = vextq_s8(v263, v263, 8uLL).u32[0];
          v265 = vmul_f32(v257, vext_s8(v255, v247, 4uLL));
          v266 = vmulq_n_f32(v565, v244.f32[0]);
          v266.i32[3] = 0;
          v267 = vmlsq_lane_f32(v266, v563, v256, 1);
          v268.i64[0] = v267.i64[0];
          v268.i64[1] = vextq_s8(v267, v267, 8uLL).u32[0];
          v269 = vmulq_n_f32(v566, v255.f32[0]);
          v269.i32[3] = 0;
          v270 = vmlaq_lane_f32(v269, v564, v265, 1);
          v270.i64[1] = vextq_s8(v270, v270, 8uLL).u32[0];
          v271 = vmlaq_n_f32(v270, v562, v265.f32[0]);
          v272.i64[0] = v271.i64[0];
          v272.i64[1] = vextq_s8(v271, v271, 8uLL).u32[0];
          v273 = vmulq_n_f32(v567, v255.f32[0]);
          v273.i32[3] = 0;
          v274 = vmlaq_lane_f32(v273, v565, v265, 1);
          v274.i64[1] = vextq_s8(v274, v274, 8uLL).u32[0];
          v275 = vmlaq_n_f32(v274, v563, v265.f32[0]);
          v276.i64[0] = v275.i64[0];
          v276.i64[1] = vextq_s8(v275, v275, 8uLL).u32[0];
          v277 = vmlsq_lane_f32(v536, v259, *v258.f32, 0);
          v277.i64[1] = vextq_s8(v277, v277, 8uLL).u32[0];
          v278 = vmlsq_lane_f32(v537, v259, *v260.f32, 0);
          v278.i64[1] = vextq_s8(v278, v278, 8uLL).u32[0];
          v279 = vmlsq_lane_f32(v542, v261, *v260.f32, 0);
          v279.i64[1] = vextq_s8(v279, v279, 8uLL).u32[0];
          v280 = vmlsq_lane_f32(v535, v259, *v258.f32, 1);
          v280.i64[1] = vextq_s8(v280, v280, 8uLL).u32[0];
          v281 = vmlsq_lane_f32(v540, v259, *v260.f32, 1);
          v281.i64[1] = vextq_s8(v281, v281, 8uLL).u32[0];
          v282 = vmlsq_lane_f32(v541, v261, *v260.f32, 1);
          v282.i64[1] = vextq_s8(v282, v282, 8uLL).u32[0];
          v283 = vmlsq_laneq_f32(v538, v259, v258, 2);
          v283.i64[1] = vextq_s8(v283, v283, 8uLL).u32[0];
          v284 = vmlsq_laneq_f32(v539, v259, v260, 2);
          v284.i64[1] = vextq_s8(v284, v284, 8uLL).u32[0];
          v285 = vmlsq_laneq_f32(v543, v261, v260, 2);
          v285.i64[1] = vextq_s8(v285, v285, 8uLL).u32[0];
          v286 = vmlsq_lane_f32(v277, v264, *v263.f32, 0);
          v286.i64[1] = vextq_s8(v286, v286, 8uLL).u32[0];
          v287 = vmlsq_lane_f32(v278, v264, *v267.f32, 0);
          v287.i64[1] = vextq_s8(v287, v287, 8uLL).u32[0];
          v288 = vmlsq_lane_f32(v279, v268, *v267.f32, 0);
          v288.i64[1] = vextq_s8(v288, v288, 8uLL).u32[0];
          v289 = vmlsq_lane_f32(v280, v264, *v263.f32, 1);
          v289.i64[1] = vextq_s8(v289, v289, 8uLL).u32[0];
          v290 = vmlsq_lane_f32(v281, v264, *v267.f32, 1);
          v290.i64[1] = vextq_s8(v290, v290, 8uLL).u32[0];
          v291 = vmlsq_lane_f32(v282, v268, *v267.f32, 1);
          v291.i64[1] = vextq_s8(v291, v291, 8uLL).u32[0];
          v292 = vmlsq_laneq_f32(v283, v264, v263, 2);
          v292.i64[1] = vextq_s8(v292, v292, 8uLL).u32[0];
          v293 = vmlsq_laneq_f32(v284, v264, v267, 2);
          v293.i64[1] = vextq_s8(v293, v293, 8uLL).u32[0];
          v294 = vmlsq_laneq_f32(v285, v268, v267, 2);
          v294.i64[1] = vextq_s8(v294, v294, 8uLL).u32[0];
          v553 = vmlsq_lane_f32(v287, v272, *v275.f32, 0);
          v557 = vmlsq_lane_f32(v286, v272, *v271.f32, 0);
          v295 = vmlsq_lane_f32(v288, v276, *v275.f32, 0);
          v527 = vextq_s8(v557, v557, 8uLL).u32[0];
          v528 = vextq_s8(v295, v295, 8uLL).u32[0];
          v549 = vmlsq_lane_f32(v290, v272, *v275.f32, 1);
          v551 = v295.i64[0];
          v533 = vmlsq_lane_f32(v291, v276, *v275.f32, 1);
          v534 = vmlsq_lane_f32(v289, v272, *v271.f32, 1);
          v545 = vextq_s8(v533, v533, 8uLL).u32[0];
          v546 = vextq_s8(v534, v534, 8uLL).u32[0];
          v296 = vmlsq_laneq_f32(v292, v272, v271, 2);
          v529 = vextq_s8(v553, v553, 8uLL).u32[0];
          v530 = vextq_s8(v296, v296, 8uLL).u32[0];
          v531 = vmlsq_laneq_f32(v293, v272, v275, 2);
          v532 = v296.i64[0];
          v544 = vextq_s8(v531, v531, 8uLL).u32[0];
          v547 = vmlsq_laneq_f32(v294, v276, v275, 2);
          v525 = vextq_s8(v547, v547, 8uLL).u32[0];
          v526 = vextq_s8(v549, v549, 8uLL).u32[0];
          v297 = &v15[144 * v160];
          *v298.f32 = physx::Dy::ArticulationFnsSimdBase::computeSIS(v297, (v25 + 96 * v160), &v573);
          v300 = vextq_s8(v299, v299, 8uLL).u64[0];
          v302 = vextq_s8(v301, v301, 8uLL).u64[0];
          v303 = vext_s8(*v301.i8, v302, 4uLL);
          v304 = vext_s8(*v299.i8, v300, 4uLL);
          v305 = vmls_f32(vmul_f32(v300, *v301.i8), *v299.i8, v302);
          v306 = vmls_f32(vmul_f32(*v299.i8, v303), v304, *v301.i8);
          *v307.f32 = vext_s8(v306, v305, 4uLL);
          v306.i32[1] = 0;
          v307.i64[1] = v306.u32[0];
          v308 = vextq_s8(v298, v298, 8uLL).u64[0];
          v309 = vext_s8(*v298.f32, v308, 4uLL);
          v310 = vmul_f32(v302, *v298.f32);
          v311 = vmls_f32(vmul_f32(*v301.i8, v309), v303, *v298.f32).u32[0];
          *v312.f32 = vdup_lane_s32(vmls_f32(v310, *v301.i8, v308), 0);
          v312.i64[1] = v311;
          v313 = vmulq_f32(v298, v307);
          v313.i64[0] = vpaddq_f32(v313, v313).u64[0];
          v314 = vpadd_f32(*v313.f32, *v313.f32);
          v315 = vrecpe_f32(v314);
          v316 = 4;
          do
          {
            v315 = vmul_f32(v315, vrecps_f32(v314, v315));
            --v316;
          }

          while (v316);
          v317 = vmls_f32(vmul_f32(*v298.f32, v304), v309, *v299.i8);
          v312.i32[0] = v305.i32[0];
          *v318.f32 = vext_s8(vdup_lane_s32(v306, 0), v311, 4uLL);
          *&v318.u32[2] = v317;
          v319 = vmulq_n_f32(v307, v315.f32[0]);
          v320 = vmulq_n_f32(v312, v315.f32[0]);
          v321 = vmulq_n_f32(v318, v315.f32[0]);
          v322 = vmulq_laneq_f32(v577, v319, 2);
          v322.i32[3] = 0;
          v323 = vmlaq_lane_f32(v322, v575, *v319.f32, 1);
          v323.i64[1] = vextq_s8(v323, v323, 8uLL).u32[0];
          v324 = vmlaq_n_f32(v323, v573, v319.f32[0]);
          v324.i64[1] = vextq_s8(v324, v324, 8uLL).u32[0];
          v325 = vmulq_laneq_f32(v577, v320, 2);
          v325.i32[3] = 0;
          v326 = vmlaq_lane_f32(v325, v575, *v320.f32, 1);
          v326.i64[1] = vextq_s8(v326, v326, 8uLL).u32[0];
          v327 = vmlaq_n_f32(v326, v573, v320.f32[0]);
          v327.i64[1] = vextq_s8(v327, v327, 8uLL).u32[0];
          v328 = vmulq_laneq_f32(v577, v321, 2);
          v328.i32[3] = 0;
          v329 = vmlaq_lane_f32(v328, v575, *v321.f32, 1);
          v329.i64[1] = vextq_s8(v329, v329, 8uLL).u32[0];
          v330 = vmlaq_n_f32(v329, v573, v321.f32[0]);
          v330.i64[1] = vextq_s8(v330, v330, 8uLL).u32[0];
          v331 = vmulq_laneq_f32(v578, v319, 2);
          v331.i32[3] = 0;
          v332 = vmlaq_lane_f32(v331, v576, *v319.f32, 1);
          v332.i64[1] = vextq_s8(v332, v332, 8uLL).u32[0];
          v333 = vmlaq_n_f32(v332, v574, v319.f32[0]);
          v333.i64[1] = vextq_s8(v333, v333, 8uLL).u32[0];
          v334 = vmulq_laneq_f32(v578, v320, 2);
          v334.i32[3] = 0;
          v335 = vmlaq_lane_f32(v334, v576, *v320.f32, 1);
          v335.i64[1] = vextq_s8(v335, v335, 8uLL).u32[0];
          v336 = vmlaq_n_f32(v335, v574, v320.f32[0]);
          v381.i64[1] = vextq_s8(v336, v336, 8uLL).u32[0];
          v337 = vmulq_laneq_f32(v578, v321, 2);
          v337.i32[3] = 0;
          v338 = vmlaq_lane_f32(v337, v576, *v321.f32, 1);
          v338.i64[1] = vextq_s8(v338, v338, 8uLL).u32[0];
          v339 = vmlaq_n_f32(v338, v574, v321.f32[0]);
          v339.i64[1] = vextq_s8(v339, v339, 8uLL).u32[0];
          v340 = vmlsq_lane_f32(vaddq_f32(v536, *v297), v324, *v573.f32, 0);
          v340.i64[1] = vextq_s8(v340, v340, 8uLL).u32[0];
          v341 = vmlsq_lane_f32(vaddq_f32(v537, v297[3]), v324, *v574.f32, 0);
          v341.i64[1] = vextq_s8(v341, v341, 8uLL).u32[0];
          v342 = vmlsq_lane_f32(vaddq_f32(v542, v297[6]), v333, *v574.f32, 0);
          v342.i64[1] = vextq_s8(v342, v342, 8uLL).u32[0];
          v343 = vmlsq_lane_f32(vaddq_f32(v535, v297[1]), v324, *v573.f32, 1);
          v343.i64[1] = vextq_s8(v343, v343, 8uLL).u32[0];
          v344 = vmlsq_lane_f32(vaddq_f32(v540, v297[4]), v324, *v574.f32, 1);
          v344.i64[1] = vextq_s8(v344, v344, 8uLL).u32[0];
          v345 = vmlsq_lane_f32(vaddq_f32(v541, v297[7]), v333, *v574.f32, 1);
          v345.i64[1] = vextq_s8(v345, v345, 8uLL).u32[0];
          v346 = vmlsq_laneq_f32(vaddq_f32(v538, v297[2]), v324, v573, 2);
          v346.i64[1] = vextq_s8(v346, v346, 8uLL).u32[0];
          v347 = vmlsq_laneq_f32(vaddq_f32(v539, v297[5]), v324, v574, 2);
          v347.i64[1] = vextq_s8(v347, v347, 8uLL).u32[0];
          v348 = vmlsq_laneq_f32(vaddq_f32(v543, v297[8]), v333, v574, 2);
          v348.i64[1] = vextq_s8(v348, v348, 8uLL).u32[0];
          v349 = vmlsq_lane_f32(v340, v327, *v575.f32, 0);
          v349.i64[1] = vextq_s8(v349, v349, 8uLL).u32[0];
          v350 = vmlsq_lane_f32(v341, v327, *v576.f32, 0);
          v350.i64[1] = vextq_s8(v350, v350, 8uLL).u32[0];
          v351 = vmlsq_lane_f32(v342, v381, *v576.f32, 0);
          v351.i64[1] = vextq_s8(v351, v351, 8uLL).u32[0];
          v352 = vmlsq_lane_f32(v343, v327, *v575.f32, 1);
          v352.i64[1] = vextq_s8(v352, v352, 8uLL).u32[0];
          v353 = vmlsq_lane_f32(v344, v327, *v576.f32, 1);
          v353.i64[1] = vextq_s8(v353, v353, 8uLL).u32[0];
          v354 = vmlsq_lane_f32(v345, v381, *v576.f32, 1);
          v354.i64[1] = vextq_s8(v354, v354, 8uLL).u32[0];
          v355 = vmlsq_laneq_f32(v346, v327, v575, 2);
          v355.i64[1] = vextq_s8(v355, v355, 8uLL).u32[0];
          v356 = vmlsq_laneq_f32(v347, v327, v576, 2);
          v356.i64[1] = vextq_s8(v356, v356, 8uLL).u32[0];
          v357 = vmlsq_laneq_f32(v348, v381, v576, 2);
          v357.i64[1] = vextq_s8(v357, v357, 8uLL).u32[0];
          v358 = vmlsq_lane_f32(v349, v330, *v577.f32, 0);
          v359 = vmlsq_lane_f32(v350, v330, *v578.f32, 0);
          v360 = vextq_s8(v359, v359, 8uLL).u32[0];
          v361 = vmlsq_lane_f32(v351, v339, *v578.f32, 0);
          v362 = vmlsq_lane_f32(v352, v330, *v577.f32, 1);
          v363 = vmlsq_lane_f32(v353, v330, *v578.f32, 1);
          v364 = vextq_s8(v363, v363, 8uLL).u32[0];
          v365 = vmlsq_lane_f32(v354, v339, *v578.f32, 1);
          v366 = vmlsq_laneq_f32(v355, v330, v577, 2);
          v367 = vmlsq_laneq_f32(v356, v330, v578, 2);
          v368 = vextq_s8(v367, v367, 8uLL).u32[0];
          v369 = vmlsq_laneq_f32(v357, v339, v578, 2);
          *v370.f32 = vext_s8(vdup_lane_s32(*v361.f32, 0), *v365.f32, 4uLL);
          v370.i64[1] = v369.i64[0];
          v572[0] = v324;
          v572[1] = v333;
          v572[2] = v327;
          v572[3] = v381;
          *v324.f32 = vext_s8(*v361.f32, vdup_lane_s32(*v365.f32, 1), 4uLL);
          *&v324.u32[2] = vdup_lane_s32(*v369.f32, 1);
          *v327.f32 = vext_s8(vdup_laneq_s32(v361, 2), *&vextq_s8(v365, v365, 8uLL), 4uLL);
          v327.i64[1] = vextq_s8(v369, v369, 8uLL).u64[0];
          v572[4] = v330;
          v572[5] = v339;
          v371 = vaddq_f32(v361, v370);
          v372 = vaddq_f32(v365, v324);
          v373 = vaddq_f32(v369, v327);
          v374.i64[0] = 0x3F0000003F000000;
          v374.i64[1] = 0x3F0000003F000000;
          v375 = vmulq_f32(v371, v374);
          v376 = v375;
          v376.i32[3] = 0;
          v377 = vmulq_f32(v372, v374);
          v378 = v377;
          v378.i32[3] = 0;
          v379 = vmulq_f32(v373, v374);
          v380 = v379;
          v380.i32[3] = 0;
          *v381.f32 = vext_s8(vdup_lane_s32(*v358.f32, 0), *v362.f32, 4uLL);
          *v372.f32 = vext_s8(*v358.f32, vdup_lane_s32(*v362.f32, 1), 4uLL);
          *&v372.u32[2] = vdup_lane_s32(*v366.f32, 1);
          *v333.f32 = vext_s8(vdup_laneq_s32(v358, 2), *&vextq_s8(v362, v362, 8uLL), 4uLL);
          v333.i64[1] = vextq_s8(v366, v366, 8uLL).u64[0];
          v382 = vaddq_f32(v362, v372);
          v383 = vaddq_f32(v366, v333);
          v362.i64[0] = vextq_s8(v378, v378, 8uLL).u64[0];
          v369.i64[0] = vextq_s8(v380, v380, 8uLL).u64[0];
          v384 = vext_s8(*v379.f32, *v369.f32, 4uLL);
          v385 = vext_s8(*v377.f32, *v362.f32, 4uLL);
          v386 = vmls_f32(vmul_f32(*v379.f32, *v362.f32), *v377.f32, *v369.f32);
          v387 = vmls_f32(vmul_f32(*v377.f32, v384), v385, *v379.f32);
          *v388.f32 = vext_s8(v387, v386, 4uLL);
          v387.i32[1] = 0;
          v388.i64[1] = v387.u32[0];
          v389 = vextq_s8(v376, v376, 8uLL).u64[0];
          v390 = vext_s8(*v375.f32, v389, 4uLL);
          *v392.f32 = vdup_lane_s32(vmls_f32(vmul_f32(*v375.f32, *v369.f32), *v379.f32, v389), 0);
          v391 = vmls_f32(vmul_f32(*v379.f32, v390), v384, *v375.f32).u32[0];
          v392.i64[1] = v391;
          v393 = vmulq_f32(v382, v374);
          v394 = vmulq_f32(v376, v388);
          v394.i64[0] = vpaddq_f32(v394, v394).u64[0];
          v395 = vpadd_f32(*v394.f32, *v394.f32);
          v396 = vrecpe_f32(v395);
          v397 = 4;
          do
          {
            v396 = vmul_f32(v396, vrecps_f32(v395, v396));
            --v397;
          }

          while (v397);
          v381.i64[1] = v366.i64[0];
          v398.i64[0] = v557.i64[0];
          v398.i64[1] = v527;
          v558 = v398;
          v398.i64[0] = 0x3F0000003F000000;
          v398.i64[1] = 0x3F0000003F000000;
          v399 = vmulq_f32(vaddq_f32(v358, v381), v398);
          v400.i64[0] = v549.i64[0];
          v400.i64[1] = v526;
          v550 = v400;
          v400.i64[0] = v547.i64[0];
          v400.i64[1] = v525;
          v548 = v400;
          v401.i64[0] = v359.i64[0];
          v401.i64[1] = v360;
          v402.i64[0] = v363.i64[0];
          v402.i64[1] = v364;
          v403.i64[0] = v367.i64[0];
          v403.i64[1] = v368;
          v399.i32[3] = 0;
          v393.i32[3] = 0;
          v404 = vmulq_f32(v383, v398);
          v404.i32[3] = 0;
          v392.i32[0] = v386.i32[0];
          *v400.f32 = vmls_f32(vmul_f32(*v375.f32, v385), v390, *v377.f32);
          *v405.f32 = vext_s8(vdup_lane_s32(v387, 0), v391, 4uLL);
          v405.i64[1] = v400.i64[0];
          v406 = vmulq_n_f32(v388, v396.f32[0]);
          v407 = vmulq_n_f32(v392, v396.f32[0]);
          v408 = vmulq_n_f32(v405, v396.f32[0]);
          v409 = vnegq_f32(v401);
          v409.i32[3] = 0;
          v410 = vnegq_f32(v402);
          v410.i32[3] = 0;
          v411 = vnegq_f32(v403);
          v411.i32[3] = 0;
          v412 = vmulq_n_f32(v409, v406.f32[0]);
          v412.i32[3] = 0;
          v413 = vmulq_lane_f32(v410, *v406.f32, 1);
          v413.i32[3] = 0;
          v414 = vmulq_laneq_f32(v411, v406, 2);
          v414.i32[3] = 0;
          v415 = vaddq_f32(v414, vaddq_f32(v412, v413));
          v416 = vmulq_n_f32(v409, v407.f32[0]);
          v416.i32[3] = 0;
          v417 = vmulq_lane_f32(v410, *v407.f32, 1);
          v417.i32[3] = 0;
          v418 = vmulq_laneq_f32(v411, v407, 2);
          v418.i32[3] = 0;
          v419 = vaddq_f32(v416, v417);
          v420 = vmulq_n_f32(v409, v408.f32[0]);
          v420.i32[3] = 0;
          v421 = vmulq_lane_f32(v410, *v408.f32, 1);
          v421.i32[3] = 0;
          v422 = vmulq_laneq_f32(v411, v408, 2);
          v422.i32[3] = 0;
          v423 = vaddq_f32(v418, v419);
          v424 = vaddq_f32(v422, vaddq_f32(v420, v421));
          v425 = vmulq_n_f32(v415, v359.f32[0]);
          v425.i32[3] = 0;
          v426 = vmulq_n_f32(v423, v363.f32[0]);
          v426.i32[3] = 0;
          v427 = vmulq_n_f32(v424, v367.f32[0]);
          v427.i32[3] = 0;
          v428 = vaddq_f32(v425, v426);
          v429 = vmulq_lane_f32(v415, *v359.f32, 1);
          v429.i32[3] = 0;
          v430 = vmulq_lane_f32(v423, *v363.f32, 1);
          v430.i32[3] = 0;
          v431 = vmulq_n_f32(v424, *vdup_lane_s32(*v367.f32, 1).i32);
          v431.i32[3] = 0;
          v432 = vaddq_f32(v431, vaddq_f32(v429, v430));
          v433 = vmulq_laneq_f32(v415, v359, 2);
          v433.i32[3] = 0;
          v434 = vmulq_laneq_f32(v423, v363, 2);
          v434.i32[3] = 0;
          v435 = vmulq_laneq_f32(v424, v367, 2);
          v435.i32[3] = 0;
          v436 = vaddq_f32(v435, vaddq_f32(v433, v434));
          v437 = vaddq_f32(v399, vaddq_f32(v427, v428));
          v438 = vaddq_f32(v393, v432);
          v439 = vaddq_f32(v404, v436);
          v427.i64[0] = vextq_s8(v439, v439, 8uLL).u64[0];
          v399.i64[0] = vextq_s8(v439, v439, 4uLL).u64[0];
          v440 = vextq_s8(v438, v438, 4uLL).u64[0];
          v441 = vmls_f32(vmul_f32(*&vextq_s8(v438, v438, 8uLL), *v439.i8), *v438.i8, *v427.f32);
          v442 = vmls_f32(vmul_f32(*v438.i8, *v399.f32), v440, *v439.i8);
          *v443.f32 = vext_s8(v442, v441, 4uLL);
          v442.i32[1] = 0;
          v443.i64[1] = v442.u32[0];
          v444 = vextq_s8(v437, v437, 4uLL).u64[0];
          v445 = vmul_f32(*v427.f32, *v437.f32);
          v446 = vmls_f32(vmul_f32(*v439.i8, v444), *v399.f32, *v437.f32).u32[0];
          *v447.f32 = vdup_lane_s32(vmls_f32(v445, *v439.i8, *&vextq_s8(v437, v437, 8uLL)), 0);
          v447.i64[1] = v446;
          v448 = vmulq_f32(v437, v443);
          v448.i64[0] = vpaddq_f32(v448, v448).u64[0];
          v449 = vpadd_f32(*v448.f32, *v448.f32);
          v450 = vrecpe_f32(v449);
          v451 = 4;
          do
          {
            v450 = vmul_f32(v450, vrecps_f32(v449, v450));
            --v451;
          }

          while (v451);
          v452.i64[0] = v551;
          v452.i64[1] = v528;
          v552 = v452;
          v320.i32[3] = 0;
          v452.i64[0] = v553.i64[0];
          v452.i64[1] = v529;
          v554 = v452;
          v319.i32[3] = 0;
          v321.i32[3] = 0;
          v406.i32[3] = 0;
          v407.i32[3] = 0;
          v408.i32[3] = 0;
          v447.i32[0] = v441.i32[0];
          *v453.f32 = vext_s8(vdup_lane_s32(v442, 0), v446, 4uLL);
          *&v453.u32[2] = vmls_f32(vmul_f32(*v437.f32, v440), v444, *v438.i8);
          v454 = vmulq_n_f32(v443, v450.f32[0]);
          v455 = vmulq_n_f32(v454, v415.f32[0]);
          v456 = vmulq_n_f32(v454, v423.f32[0]);
          v457 = vmulq_n_f32(v454, v424.f32[0]);
          v454.i32[3] = 0;
          v458 = vmulq_n_f32(v447, v450.f32[0]);
          v459 = vmulq_lane_f32(v458, *v415.f32, 1);
          v460 = vmulq_lane_f32(v458, *v423.f32, 1);
          v461 = vmulq_lane_f32(v458, *v424.f32, 1);
          v458.i32[3] = 0;
          v462 = vmulq_n_f32(v453, v450.f32[0]);
          v463 = vmulq_laneq_f32(v462, v415, 2);
          v464 = vmulq_laneq_f32(v462, v423, 2);
          v465 = v462;
          v465.i32[3] = 0;
          v466 = vdupq_laneq_s32(v415, 2).u64[0];
          v455.i32[3] = 0;
          v459.i32[3] = 0;
          v467 = vmulq_laneq_f32(v462, v424, 2);
          v463.i32[3] = 0;
          v468 = vaddq_f32(v455, v459);
          v459.i64[0] = vdupq_lane_s32(*v423.f32, 1).u64[0];
          v469 = vaddq_f32(v463, v468);
          v463.i64[0] = vextq_s8(v423, v423, 8uLL).u64[0];
          v456.i32[3] = 0;
          v460.i32[3] = 0;
          v464.i32[3] = 0;
          v470 = vaddq_f32(v464, vaddq_f32(v456, v460));
          v457.i32[3] = 0;
          v461.i32[3] = 0;
          v467.i32[3] = 0;
          *v471.f32 = vext_s8(*&vdupq_lane_s32(*v415.f32, 0), *v423.f32, 4uLL);
          v471.i64[1] = vdup_lane_s32(*v424.f32, 0).u32[0];
          v472 = vaddq_f32(v467, vaddq_f32(v457, v461));
          *v473.f32 = vext_s8(*v415.f32, *v459.f32, 4uLL);
          v473.i64[1] = vdup_lane_s32(*v424.f32, 1).u32[0];
          *v457.f32 = vext_s8(v466, *v463.f32, 4uLL);
          v457.i64[1] = vdup_laneq_s32(v424, 2).u32[0];
          v474 = vmulq_n_f32(v471, v469.f32[0]);
          v474.i32[3] = 0;
          v475 = vmulq_lane_f32(v473, *v469.f32, 1);
          v475.i32[3] = 0;
          v476 = vmulq_laneq_f32(v457, v469, 2);
          v476.i32[3] = 0;
          v477 = vaddq_f32(v476, vaddq_f32(v474, v475));
          v478 = vmulq_n_f32(v471, v470.f32[0]);
          v478.i32[3] = 0;
          v479 = vmulq_lane_f32(v473, *v470.f32, 1);
          v479.i32[3] = 0;
          v480 = vmulq_laneq_f32(v457, v470, 2);
          v480.i32[3] = 0;
          v481 = vmulq_n_f32(v471, v472.f32[0]);
          v481.i32[3] = 0;
          v482 = vmulq_lane_f32(v473, *v472.f32, 1);
          v482.i32[3] = 0;
          v483 = vmulq_laneq_f32(v457, v472, 2);
          v483.i32[3] = 0;
          v562 = v454;
          v563 = v458;
          v564 = v465;
          v565 = v469;
          v566 = v470;
          v567 = v472;
          v568 = vaddq_f32(v406, v477);
          v569 = vaddq_f32(v407, vaddq_f32(v480, vaddq_f32(v478, v479)));
          v570 = vaddq_f32(v408, vaddq_f32(v483, vaddq_f32(v481, v482)));
          *v484.f32 = physx::Dy::ArticulationFnsSimdBase::computeSIS(&v562, v572, v571);
          v485 = vaddq_f32(v319, v484);
          v487 = vaddq_f32(v320, v486);
          v489 = vaddq_f32(v321, v488);
          v490 = vextq_s8(v489, v489, 8uLL).u64[0];
          v491 = vextq_s8(v489, v489, 4uLL).u64[0];
          v492 = vextq_s8(v487, v487, 4uLL).u64[0];
          v493 = vmls_f32(vmul_f32(*&vextq_s8(v487, v487, 8uLL), *v489.i8), *v487.i8, v490);
          v494 = vmls_f32(vmul_f32(*v487.i8, v491), v492, *v489.i8);
          *v495.f32 = vext_s8(v494, v493, 4uLL);
          v494.i32[1] = 0;
          v495.i64[1] = v494.u32[0];
          v496 = vextq_s8(v485, v485, 4uLL).u64[0];
          v497 = vmul_f32(v490, *v485.f32);
          v498 = vmls_f32(vmul_f32(*v489.i8, v496), v491, *v485.f32).u32[0];
          *v499.f32 = vdup_lane_s32(vmls_f32(v497, *v489.i8, *&vextq_s8(v485, v485, 8uLL)), 0);
          v499.i64[1] = v498;
          v500 = vmulq_f32(v485, v495);
          v500.i64[0] = vpaddq_f32(v500, v500).u64[0];
          v501 = vpadd_f32(*v500.f32, *v500.f32);
          v502 = vrecpe_f32(v501);
          v503 = 4;
          do
          {
            v502 = vmul_f32(v502, vrecps_f32(v501, v502));
            --v503;
          }

          while (v503);
          v116.i64[0] = v532;
          v504.i64[0] = v533.i64[0];
          v116.i64[1] = v530;
          v504.i64[1] = v545;
          v505.i64[0] = v534.i64[0];
          v505.i64[1] = v546;
          v506.i64[0] = v531.i64[0];
          v506.i64[1] = v544;
          v499.i32[0] = v493.i32[0];
          v507 = vmls_f32(vmul_f32(*v485.f32, v492), v496, *v487.i8);
          *v508.f32 = vext_s8(vdup_lane_s32(v494, 0), v498, 4uLL);
          *&v508.u32[2] = v507;
          v509 = vmulq_n_f32(v495, v502.f32[0]);
          v509.i32[3] = 0;
          v510 = vmulq_n_f32(v499, v502.f32[0]);
          v510.i32[3] = 0;
          v511 = vmulq_n_f32(v508, v502.f32[0]);
          v511.i32[3] = 0;
          *v219 = v509;
          v219[1] = v510;
          v219[2] = v511;
          v512 = vaddq_f32(v505, v297[1]);
          v513 = vaddq_f32(v116, v297[2]);
          v514 = vaddq_f32(v554, v297[3]);
          v515 = vaddq_f32(v550, v297[4]);
          v516 = vaddq_f32(v506, v297[5]);
          v517 = vaddq_f32(v552, v297[6]);
          v518 = vaddq_f32(v504, v297[7]);
          v519 = vaddq_f32(v548, v297[8]);
          *v297 = vaddq_f32(v558, *v297);
          v297[1] = v512;
          v297[2] = v513;
          v297[3] = v514;
          v297[4] = v515;
          v297[5] = v516;
          v297[6] = v517;
          v297[7] = v518;
          v297[8] = v519;
          ++v160;
        }

        while (v160 != v524);
      }

      a6 = v523 - 1;
      v7 = a5;
    }

    while (v523 != 1);
  }
}

void physx::Dy::PxcFsPropagateDrivenInertiaSimd(unsigned __int16 *a1, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v273 = *MEMORY[0x1E69E9840];
  v8 = a1[9];
  v9 = a1[8];
  v10 = *a1;
  v11 = a1[1];
  v12 = a5[2];
  v13 = *a5 + v12;
  a5[2] = v12 + 144 * v10;
  memcpy(v13, a2, 144 * v10);
  v266 = a1;
  v14 = *a1;
  v15 = (v14 - 1);
  if (v14 != 1)
  {
    v16 = v266 + v8 + 144;
    v17 = &v266[200 * v10 + 16 * v10] + v9;
    v18 = v266 + v11;
    do
    {
      v19 = (v13 + 144 * v15);
      *v20.f32 = physx::Dy::ArticulationFnsSimdBase::computeSIS(v19, (v17 + 96 * v15), &v267);
      v21 = *(a3 + 4 * v15);
      v22 = (a4 + 48 * v15);
      v23 = vmlaq_n_f32(v20, *v22, v21);
      v24 = vextq_s8(v23, v23, 8uLL).u32[0];
      v26 = vmlaq_n_f32(v25, v22[1], v21);
      v28 = vmlaq_n_f32(v27, v22[2], v21);
      v29 = vextq_s8(v28, v28, 8uLL).u32[0];
      v30 = vextq_s8(v28, v28, 4uLL).u64[0];
      v31 = vextq_s8(v26, v26, 4uLL).u64[0];
      v32 = vmls_f32(vmul_f32(vextq_s8(v26, v26, 8uLL).u32[0], *v28.i8), *v26.i8, v29);
      v34 = vmls_f32(vmul_f32(*v26.i8, v30), v31, *v28.i8);
      v33 = vext_s8(v34, v32, 4uLL);
      v34.i32[1] = 0;
      *v35.f32 = v33;
      v35.i64[1] = v34.u32[0];
      v36 = vextq_s8(v23, v23, 4uLL).u64[0];
      *v38.f32 = vdup_lane_s32(vmls_f32(vmul_f32(*v23.i8, v29), *v28.i8, v24), 0);
      v37 = vmls_f32(vmul_f32(v36, *v28.i8), v30, *v23.i8).u32[0];
      v38.i64[1] = v37;
      *v28.i8 = vpadd_f32(vmul_f32(*v23.i8, v33), vmul_f32(v24, v34.u32[0]));
      v39 = vpadd_f32(*v28.i8, *v28.i8);
      v40 = vrecpe_f32(v39);
      v41 = 4;
      do
      {
        v40 = vmul_f32(v40, vrecps_f32(v39, v40));
        --v41;
      }

      while (v41);
      v42 = vmls_f32(vmul_f32(*v23.i8, v31), v36, *v26.i8);
      v38.i32[0] = v32.i32[0];
      *v43.f32 = vext_s8(vdup_lane_s32(v34, 0), v37, 4uLL);
      *&v43.u32[2] = v42;
      v44 = vmulq_n_f32(v35, v40.f32[0]);
      v46 = v267;
      v45 = v268;
      v48 = v269;
      v47 = v270;
      v50 = v271;
      v49 = v272;
      v51 = vmulq_laneq_f32(v271, v44, 2);
      v51.i32[3] = 0;
      v52 = vmlaq_lane_f32(v51, v269, *v44.f32, 1);
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
      v53 = vmlaq_n_f32(v52, v267, v44.f32[0]);
      v54 = vmulq_laneq_f32(v272, v44, 2);
      v54.i32[3] = 0;
      v55 = vmlaq_lane_f32(v54, v270, *v44.f32, 1);
      v55.i64[1] = vextq_s8(v55, v55, 8uLL).u32[0];
      v56 = vmlaq_n_f32(v55, v268, v44.f32[0]);
      v44.i32[3] = 0;
      v57 = vmulq_n_f32(v38, v40.f32[0]);
      v58 = vmulq_laneq_f32(v271, v57, 2);
      v58.i32[3] = 0;
      v59 = vmlaq_lane_f32(v58, v269, *v57.f32, 1);
      v59.i64[1] = vextq_s8(v59, v59, 8uLL).u32[0];
      v60 = (v16 + 160 * v15);
      v61 = vmlaq_n_f32(v59, v267, v57.f32[0]);
      v62 = vmulq_laneq_f32(v272, v57, 2);
      v63 = v57;
      v63.i32[3] = 0;
      v64 = vmulq_n_f32(v43, v40.f32[0]);
      v65 = vmulq_laneq_f32(v271, v64, 2);
      v65.i32[3] = 0;
      v66 = vmlaq_lane_f32(v65, v269, *v64.f32, 1);
      v66.i64[1] = vextq_s8(v66, v66, 8uLL).u32[0];
      v67 = vmlaq_n_f32(v66, v267, v64.f32[0]);
      v68 = v64;
      v68.i32[3] = 0;
      v60[6] = v44;
      v60[7] = v63;
      v60[8] = v68;
      v69 = *(v266 + v15 + 64);
      v70 = *&v18[32 * v15];
      v62.i32[3] = 0;
      v71 = vmlaq_lane_f32(v62, v47, *v57.f32, 1);
      v71.i64[1] = vextq_s8(v71, v71, 8uLL).u32[0];
      v72 = vmlaq_n_f32(v71, v45, v57.f32[0]);
      v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
      v73 = vmulq_laneq_f32(v49, v64, 2);
      v61.i64[1] = vextq_s8(v61, v61, 8uLL).u32[0];
      v67.i64[1] = vextq_s8(v67, v67, 8uLL).u32[0];
      v56.i64[1] = vextq_s8(v56, v56, 8uLL).u32[0];
      v73.i32[3] = 0;
      v74 = vmlaq_lane_f32(v73, v47, *v64.f32, 1);
      v74.i64[1] = vextq_s8(v74, v74, 8uLL).u32[0];
      v75 = vmlaq_n_f32(v74, v45, v64.f32[0]);
      v72.i64[1] = vextq_s8(v72, v72, 8uLL).u32[0];
      v75.i64[1] = vextq_s8(v75, v75, 8uLL).u32[0];
      v76 = vmlsq_lane_f32(*v19, v53, *v46.f32, 0);
      v76.i64[1] = vextq_s8(v76, v76, 8uLL).u32[0];
      v77 = vmlsq_lane_f32(v19[3], v53, *v45.f32, 0);
      v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
      v78 = vmlsq_lane_f32(v19[6], v56, *v45.f32, 0);
      v78.i64[1] = vextq_s8(v78, v78, 8uLL).u32[0];
      v79 = vmlsq_lane_f32(v19[1], v53, *v46.f32, 1);
      v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
      v80 = vmlsq_lane_f32(v19[4], v53, *v45.f32, 1);
      v80.i64[1] = vextq_s8(v80, v80, 8uLL).u32[0];
      v81 = vmlsq_lane_f32(v19[7], v56, *v45.f32, 1);
      v81.i64[1] = vextq_s8(v81, v81, 8uLL).u32[0];
      v82 = vmlsq_laneq_f32(v19[2], v53, v46, 2);
      v82.i64[1] = vextq_s8(v82, v82, 8uLL).u32[0];
      v83 = vmlsq_laneq_f32(v19[5], v53, v45, 2);
      v83.i64[1] = vextq_s8(v83, v83, 8uLL).u32[0];
      v84 = vmlsq_laneq_f32(v19[8], v56, v45, 2);
      v84.i64[1] = vextq_s8(v84, v84, 8uLL).u32[0];
      v85 = vmlsq_lane_f32(v76, v61, *v48.f32, 0);
      v85.i64[1] = vextq_s8(v85, v85, 8uLL).u32[0];
      v86 = vmlsq_lane_f32(v77, v61, *v47.f32, 0);
      v86.i64[1] = vextq_s8(v86, v86, 8uLL).u32[0];
      v87 = vmlsq_lane_f32(v78, v72, *v47.f32, 0);
      v87.i64[1] = vextq_s8(v87, v87, 8uLL).u32[0];
      v88 = vmlsq_lane_f32(v79, v61, *v48.f32, 1);
      v88.i64[1] = vextq_s8(v88, v88, 8uLL).u32[0];
      v89 = vmlsq_lane_f32(v80, v61, *v47.f32, 1);
      v89.i64[1] = vextq_s8(v89, v89, 8uLL).u32[0];
      v90 = vmlsq_lane_f32(v81, v72, *v47.f32, 1);
      v90.i64[1] = vextq_s8(v90, v90, 8uLL).u32[0];
      v91 = vmlsq_laneq_f32(v82, v61, v48, 2);
      v91.i64[1] = vextq_s8(v91, v91, 8uLL).u32[0];
      v92 = vmlsq_laneq_f32(v83, v61, v47, 2);
      v92.i64[1] = vextq_s8(v92, v92, 8uLL).u32[0];
      v93 = vmlsq_laneq_f32(v84, v72, v47, 2);
      v93.i64[1] = vextq_s8(v93, v93, 8uLL).u32[0];
      v94 = vmlsq_lane_f32(v85, v67, *v50.f32, 0);
      v94.i64[1] = vextq_s8(v94, v94, 8uLL).u32[0];
      v95 = vmlsq_lane_f32(v86, v67, *v49.f32, 0);
      v96 = vmlsq_lane_f32(v87, v75, *v49.f32, 0);
      v97 = vmlsq_lane_f32(v88, v67, *v50.f32, 1);
      v97.i64[1] = vextq_s8(v97, v97, 8uLL).u32[0];
      v98 = vmlsq_lane_f32(v89, v67, *v49.f32, 1);
      v99 = vmlsq_lane_f32(v90, v75, *v49.f32, 1);
      v100 = vmlsq_laneq_f32(v91, v67, v50, 2);
      v100.i64[1] = vextq_s8(v100, v100, 8uLL).u32[0];
      v101 = vmlsq_laneq_f32(v92, v67, v49, 2);
      v102 = vnegq_f32(v70);
      *v48.f32 = vext_s8(0, *&vextq_s8(v70, v70, 8uLL), 4uLL);
      v48.i64[1] = vdup_lane_s32(*v102.f32, 1).u32[0];
      v103 = vmlsq_laneq_f32(v93, v75, v49, 2);
      *v60 = v53;
      v60[1] = v56;
      *v104.f32 = vext_s8(vdup_laneq_s32(v102, 2), 0, 4uLL);
      v104.i64[1] = vdup_lane_s32(*v70.f32, 0).u32[0];
      *v45.f32 = vext_s8(*v70.f32, *v102.f32, 4uLL);
      v105 = vmulq_laneq_f32(v45.u64[0], v95, 2);
      v105.i32[3] = 0;
      v106 = vmlaq_lane_f32(v105, v104, *v95.f32, 1);
      v106.i64[1] = vextq_s8(v106, v106, 8uLL).u32[0];
      v107 = vmlaq_n_f32(v106, v48, v95.f32[0]);
      v107.i64[1] = vextq_s8(v107, v107, 8uLL).u32[0];
      v108 = vmulq_laneq_f32(v45.u64[0], v98, 2);
      v108.i32[3] = 0;
      v109 = vmlaq_lane_f32(v108, v104, *v98.f32, 1);
      v109.i64[1] = vextq_s8(v109, v109, 8uLL).u32[0];
      v110 = vmlaq_n_f32(v109, v48, v98.f32[0]);
      v110.i64[1] = vextq_s8(v110, v110, 8uLL).u32[0];
      v111 = vmulq_laneq_f32(v45.u64[0], v101, 2);
      v111.i32[3] = 0;
      v112 = vmlaq_lane_f32(v111, v104, *v101.f32, 1);
      v112.i64[1] = vextq_s8(v112, v112, 8uLL).u32[0];
      v113 = vmlaq_n_f32(v112, v48, v101.f32[0]);
      v113.i64[1] = vextq_s8(v113, v113, 8uLL).u32[0];
      v114 = vmulq_laneq_f32(v97, v102, 2);
      v114.i32[3] = 0;
      v115 = vmlaq_lane_f32(v114, v100, *v70.f32, 1);
      v116 = vmulq_n_f32(v100, v102.f32[0]);
      v116.i32[3] = 0;
      v117 = vmulq_lane_f32(v94, *v102.f32, 1);
      v117.i32[3] = 0;
      v118 = vmlaq_laneq_f32(v116, v94, v70, 2);
      v119 = vmlaq_n_f32(v117, v97, v70.f32[0]);
      v120 = vmulq_n_f32(v48, v115.f32[0]);
      v120.i32[3] = 0;
      v121 = vmlaq_lane_f32(v120, v104, *v115.f32, 1);
      v121.i64[1] = vextq_s8(v121, v121, 8uLL).u32[0];
      v122 = vmlaq_laneq_f32(v121, v45.u64[0], v115, 2);
      v122.i64[1] = vextq_s8(v122, v122, 8uLL).u32[0];
      v123 = vmulq_n_f32(v48, v118.f32[0]);
      v123.i32[3] = 0;
      v124 = vmlaq_lane_f32(v123, v104, *v118.f32, 1);
      v124.i64[1] = vextq_s8(v124, v124, 8uLL).u32[0];
      v125 = vmlaq_laneq_f32(v124, v45.u64[0], v118, 2);
      v125.i64[1] = vextq_s8(v125, v125, 8uLL).u32[0];
      v126 = vmulq_n_f32(v48, v119.f32[0]);
      v126.i32[3] = 0;
      v127 = vmlaq_lane_f32(v126, v104, *v119.f32, 1);
      v127.i64[1] = vextq_s8(v127, v127, 8uLL).u32[0];
      v60[2] = v61;
      v60[3] = v72;
      v128 = vmlaq_laneq_f32(v127, v45.u64[0], v119, 2);
      v60[4] = v67;
      v60[5] = v75;
      v128.i64[1] = vextq_s8(v128, v128, 8uLL).u32[0];
      v72.i64[0] = 0x3F0000003F000000;
      v72.i64[1] = 0x3F0000003F000000;
      v129 = vmlaq_f32(v107, v72, v122);
      v115.i64[1] = vextq_s8(v115, v115, 8uLL).u32[0];
      v130 = vmlaq_f32(v110, v72, v125);
      v95.i64[1] = vextq_s8(v95, v95, 8uLL).u32[0];
      v131 = vmlaq_f32(v113, v72, v128);
      v118.i64[1] = vextq_s8(v118, v118, 8uLL).u32[0];
      v132 = vaddq_f32(v95, v115);
      v98.i64[1] = vextq_s8(v98, v98, 8uLL).u32[0];
      v119.i64[1] = vextq_s8(v119, v119, 8uLL).u32[0];
      v101.i64[1] = vextq_s8(v101, v101, 8uLL).u32[0];
      *v67.f32 = vext_s8(vdup_lane_s32(*v129.f32, 0), *v130.f32, 4uLL);
      *v75.f32 = vext_s8(*v129.f32, vdup_lane_s32(*v130.f32, 1), 4uLL);
      v67.i64[1] = vdup_lane_s32(*v131.f32, 0).u32[0];
      *v95.f32 = vdup_laneq_s32(v129, 2);
      v129.i64[1] = vextq_s8(v129, v129, 8uLL).u32[0];
      v96.i64[1] = vextq_s8(v96, v96, 8uLL).u32[0];
      v133 = vaddq_f32(v96, vaddq_f32(v129, v67));
      v75.i64[1] = vdup_lane_s32(*v131.f32, 1).u32[0];
      v72.i64[0] = vextq_s8(v130, v130, 8uLL).u64[0];
      *v67.f32 = vext_s8(*v95.f32, *v72.f32, 4uLL);
      v130.i64[1] = v72.u32[0];
      v99.i64[1] = vextq_s8(v99, v99, 8uLL).u32[0];
      v67.i64[1] = vdup_laneq_s32(v131, 2).u32[0];
      v131.i64[1] = vextq_s8(v131, v131, 8uLL).u32[0];
      v103.i64[1] = vextq_s8(v103, v103, 8uLL).u32[0];
      v134 = (v13 + 144 * v69);
      v135 = vaddq_f32(v134[1], v97);
      v136 = vaddq_f32(v134[2], v100);
      v137 = vaddq_f32(v134[3], v132);
      v138 = vaddq_f32(v134[4], vaddq_f32(v98, v118));
      v139 = vaddq_f32(v134[5], vaddq_f32(v101, v119));
      v140 = vaddq_f32(v134[6], v133);
      v141 = vaddq_f32(v134[7], vaddq_f32(v99, vaddq_f32(v130, v75)));
      *v134 = vaddq_f32(*v134, v94);
      v134[1] = v135;
      v134[2] = v136;
      v134[3] = v137;
      v134[4] = v138;
      v134[5] = v139;
      v142 = vaddq_f32(v134[8], vaddq_f32(v103, vaddq_f32(v131, v67)));
      v134[6] = v140;
      v134[7] = v141;
      v134[8] = v142;
      --v15;
    }

    while (v15);
  }

  v143 = *(v13 + 96);
  v144 = *(v13 + 112);
  v145 = *(v13 + 128);
  *v146.f32 = vext_s8(vdup_lane_s32(*v143.f32, 0), *v144.f32, 4uLL);
  v146.i64[1] = v145.i64[0];
  v147 = vext_s8(*v143.f32, vdup_lane_s32(*v144.f32, 1), 4uLL);
  *&v161.u32[2] = vdup_lane_s32(*v145.f32, 1);
  *v148.f32 = vext_s8(vdup_laneq_s32(v143, 2), *&vextq_s8(v144, v144, 8uLL), 4uLL);
  v148.i64[1] = vextq_s8(v145, v145, 8uLL).u64[0];
  v149 = vaddq_f32(v143, v146);
  v150 = vaddq_f32(v144, v161);
  v151 = vaddq_f32(v145, v148);
  v152.i64[0] = 0x3F0000003F000000;
  v152.i64[1] = 0x3F0000003F000000;
  v153 = vmulq_f32(v149, v152);
  v154 = v153;
  v154.i32[3] = 0;
  v155 = vmulq_f32(v150, v152);
  v156 = v155;
  v156.i32[3] = 0;
  v157 = vmulq_f32(v151, v152);
  v158 = v157;
  v158.i32[3] = 0;
  v159 = *(v13 + 16);
  v160 = *(v13 + 32);
  *v161.f32 = vext_s8(vdup_lane_s32(*v13, 0), *v159.f32, 4uLL);
  *v162.f32 = vext_s8(*v13, vdup_lane_s32(*v159.f32, 1), 4uLL);
  *&v162.u32[2] = vdup_lane_s32(*v160.f32, 1);
  *v163.f32 = vext_s8(vdup_laneq_s32(*v13, 2), *&vextq_s8(v159, v159, 8uLL), 4uLL);
  v163.i64[1] = vextq_s8(v160, v160, 8uLL).u64[0];
  v164 = vaddq_f32(v159, v162);
  v165 = vaddq_f32(v160, v163);
  v156.i64[0] = vextq_s8(v156, v156, 8uLL).u64[0];
  v166 = vextq_s8(v158, v158, 8uLL).u64[0];
  v167 = vext_s8(*v157.f32, v166, 4uLL);
  v168 = vext_s8(*v155.f32, *v156.i8, 4uLL);
  v169 = vmls_f32(vmul_f32(*v157.f32, *v156.i8), *v155.f32, v166);
  v170 = vmls_f32(vmul_f32(*v155.f32, v167), v168, *v157.f32);
  *v171.f32 = vext_s8(v170, v169, 4uLL);
  v170.i32[1] = 0;
  v171.i64[1] = v170.u32[0];
  v172 = vextq_s8(v154, v154, 8uLL).u64[0];
  v173 = vext_s8(*v153.f32, v172, 4uLL);
  *v175.f32 = vdup_lane_s32(vmls_f32(vmul_f32(*v153.f32, v166), *v157.f32, v172), 0);
  v174 = vmls_f32(vmul_f32(*v157.f32, v173), v167, *v153.f32).u32[0];
  v175.i64[1] = v174;
  v176 = vmulq_f32(v164, v152);
  v177 = vmulq_f32(v154, v171);
  v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
  v178 = vpadd_f32(*v177.f32, *v177.f32);
  v179 = vrecpe_f32(v178);
  v180 = 4;
  do
  {
    v179 = vmul_f32(v179, vrecps_f32(v178, v179));
    --v180;
  }

  while (v180);
  v161.i64[1] = *(v13 + 32);
  v181.i64[0] = 0x3F0000003F000000;
  v181.i64[1] = 0x3F0000003F000000;
  v182 = vmulq_f32(vaddq_f32(*v13, v161), v181);
  v183 = vmulq_f32(v165, v181);
  v182.i32[3] = 0;
  v176.i32[3] = 0;
  v183.i32[3] = 0;
  v175.i32[0] = v169.i32[0];
  *v184.f32 = vext_s8(vdup_lane_s32(v170, 0), v174, 4uLL);
  *&v184.u32[2] = vmls_f32(vmul_f32(*v153.f32, v168), v173, *v155.f32);
  v185 = vmulq_n_f32(v171, v179.f32[0]);
  v186 = vmulq_n_f32(v175, v179.f32[0]);
  v187 = *(v13 + 48);
  v188 = *(v13 + 64);
  v189 = vnegq_f32(v187);
  v189.i32[3] = 0;
  v190 = vnegq_f32(v188);
  v190.i32[3] = 0;
  v191 = *(v13 + 80);
  v192 = vnegq_f32(v191);
  v192.i32[3] = 0;
  v193 = vmulq_n_f32(v189, v185.f32[0]);
  v193.i32[3] = 0;
  v194 = vmulq_lane_f32(v190, *v185.f32, 1);
  v194.i32[3] = 0;
  v195 = vmulq_n_f32(v184, v179.f32[0]);
  v196 = vmulq_laneq_f32(v192, v185, 2);
  v196.i32[3] = 0;
  v197 = vaddq_f32(vaddq_f32(v193, v194), v196);
  v198 = vmulq_n_f32(v189, v186.f32[0]);
  v198.i32[3] = 0;
  v199 = vmulq_lane_f32(v190, *v186.f32, 1);
  v199.i32[3] = 0;
  v200 = vmulq_laneq_f32(v192, v186, 2);
  v200.i32[3] = 0;
  v201 = vaddq_f32(vaddq_f32(v198, v199), v200);
  v202 = vmulq_n_f32(v189, v195.f32[0]);
  v202.i32[3] = 0;
  v203 = vmulq_lane_f32(v190, *v195.f32, 1);
  v203.i32[3] = 0;
  v204 = vmulq_laneq_f32(v192, v195, 2);
  v204.i32[3] = 0;
  v205 = vaddq_f32(vaddq_f32(v202, v203), v204);
  v206 = vmulq_n_f32(v197, v187.f32[0]);
  v206.i32[3] = 0;
  v207 = vmulq_n_f32(v201, v188.f32[0]);
  v207.i32[3] = 0;
  v208 = vmulq_n_f32(v205, v191.f32[0]);
  v208.i32[3] = 0;
  v209 = vaddq_f32(v208, vaddq_f32(v206, v207));
  v210 = vmulq_lane_f32(v197, *v187.f32, 1);
  v210.i32[3] = 0;
  v211 = vmulq_lane_f32(v201, *v188.f32, 1);
  v211.i32[3] = 0;
  v212 = vmulq_n_f32(v205, *vdup_lane_s32(*v191.f32, 1).i32);
  v212.i32[3] = 0;
  v213 = vmulq_laneq_f32(v197, v187, 2);
  v213.i32[3] = 0;
  v214 = vmulq_laneq_f32(v201, v188, 2);
  v214.i32[3] = 0;
  v215 = vmulq_laneq_f32(v205, v191, 2);
  v215.i32[3] = 0;
  v216 = vaddq_f32(v215, vaddq_f32(v213, v214));
  v217 = vaddq_f32(v176, vaddq_f32(v212, vaddq_f32(v210, v211)));
  v218 = vaddq_f32(v183, v216);
  v219 = vextq_s8(v218, v218, 8uLL).u64[0];
  v220 = vextq_s8(v218, v218, 4uLL).u64[0];
  v221 = vextq_s8(v217, v217, 4uLL).u64[0];
  v222 = vmls_f32(vmul_f32(*&vextq_s8(v217, v217, 8uLL), *v218.i8), *v217.i8, v219);
  v223 = vmls_f32(vmul_f32(*v217.i8, v220), v221, *v218.i8);
  *v224.f32 = vext_s8(v223, v222, 4uLL);
  v223.i32[1] = 0;
  v224.i64[1] = v223.u32[0];
  v225 = vaddq_f32(v182, v209);
  v226 = vmulq_f32(v225, v224);
  v226.i64[0] = vpaddq_f32(v226, v226).u64[0];
  v227 = vpadd_f32(*v226.f32, *v226.f32);
  v228 = vrecpe_f32(v227);
  v229 = 4;
  do
  {
    v228 = vmul_f32(v228, vrecps_f32(v227, v228));
    --v229;
  }

  while (v229);
  v230 = vextq_s8(v225, v225, 4uLL).u64[0];
  v231 = vmls_f32(vmul_f32(*v225.f32, v221), v230, *v217.i8);
  v232 = vmls_f32(vmul_f32(*v218.i8, v230), v220, *v225.f32);
  *v233.f32 = vdup_lane_s32(vmls_f32(vmul_f32(v219, *v225.f32), *v218.i8, *&vextq_s8(v225, v225, 8uLL)), 0);
  *&v233.u32[2] = v232;
  v195.i32[3] = 0;
  v186.i32[3] = 0;
  v185.i32[3] = 0;
  v233.i32[0] = v222.i32[0];
  *v234.f32 = vext_s8(vdup_lane_s32(v223, 0), v232, 4uLL);
  *&v234.u32[2] = v231;
  v235 = vmulq_n_f32(v224, v228.f32[0]);
  v236 = vmulq_n_f32(v235, v197.f32[0]);
  v237 = vmulq_n_f32(v235, v201.f32[0]);
  v238 = vmulq_n_f32(v235, v205.f32[0]);
  v235.i32[3] = 0;
  v239 = vmulq_n_f32(v233, v228.f32[0]);
  v240 = vmulq_lane_f32(v239, *v197.f32, 1);
  v241 = vmulq_lane_f32(v239, *v201.f32, 1);
  v242 = vmulq_lane_f32(v239, *v205.f32, 1);
  v239.i32[3] = 0;
  v243 = vmulq_n_f32(v234, v228.f32[0]);
  v244 = vmulq_laneq_f32(v243, v197, 2);
  v245 = vmulq_laneq_f32(v243, v201, 2);
  v246 = vmulq_laneq_f32(v243, v205, 2);
  v243.i32[3] = 0;
  v247 = vdupq_laneq_s32(v197, 2).u64[0];
  v236.i32[3] = 0;
  v240.i32[3] = 0;
  v244.i32[3] = 0;
  v248 = vaddq_f32(v244, vaddq_f32(v236, v240));
  v236.i64[0] = vdupq_lane_s32(*v201.f32, 1).u64[0];
  v237.i32[3] = 0;
  v241.i32[3] = 0;
  v249 = vextq_s8(v201, v201, 8uLL).u64[0];
  v245.i32[3] = 0;
  v238.i32[3] = 0;
  v242.i32[3] = 0;
  v246.i32[3] = 0;
  v250 = vaddq_f32(v245, vaddq_f32(v237, v241));
  *v251.f32 = vext_s8(*&vdupq_lane_s32(*v197.f32, 0), *v201.f32, 4uLL);
  v251.i64[1] = vdup_lane_s32(*v205.f32, 0).u32[0];
  v252 = vaddq_f32(v238, v242);
  *v253.f32 = vext_s8(*v197.f32, *v236.f32, 4uLL);
  v253.i64[1] = vdup_lane_s32(*v205.f32, 1).u32[0];
  *v236.f32 = vext_s8(v247, v249, 4uLL);
  v236.i64[1] = vdup_laneq_s32(v205, 2).u32[0];
  v254 = vmulq_n_f32(v251, v248.f32[0]);
  v254.i32[3] = 0;
  v255 = vmulq_lane_f32(v253, *v248.f32, 1);
  v255.i32[3] = 0;
  v256 = vmulq_laneq_f32(v236, v248, 2);
  v256.i32[3] = 0;
  v257 = vaddq_f32(v246, v252);
  v258 = vaddq_f32(v256, vaddq_f32(v254, v255));
  v259 = vmulq_n_f32(v251, v250.f32[0]);
  v259.i32[3] = 0;
  v260 = vmulq_lane_f32(v253, *v250.f32, 1);
  v260.i32[3] = 0;
  v261 = vmulq_laneq_f32(v236, v250, 2);
  v261.i32[3] = 0;
  v262 = vmulq_n_f32(v251, v257.f32[0]);
  v262.i32[3] = 0;
  v263 = vmulq_lane_f32(v253, *v257.f32, 1);
  v263.i32[3] = 0;
  v264 = vmulq_laneq_f32(v236, v257, 2);
  v264.i32[3] = 0;
  v265 = (v266 + v266[9]);
  *v265 = v235;
  v265[1] = v239;
  v265[2] = v243;
  v265[3] = v248;
  v265[4] = v250;
  v265[5] = v257;
  v265[6] = vaddq_f32(v185, v258);
  v265[7] = vaddq_f32(v186, vaddq_f32(v261, vaddq_f32(v259, v260)));
  v265[8] = vaddq_f32(v195, vaddq_f32(v264, vaddq_f32(v262, v263)));
}

float32x4_t physx::Dy::Articulation::applyImpulses(unsigned __int16 *a1, float32x4_t *a2, float32x4_t *a3)
{
  v86[251] = *MEMORY[0x1E69E9840];
  v3 = a1[9];
  v4 = *a1;
  v5 = a1[1];
  v6 = v3;
  if (v4 >= 2)
  {
    v7 = 32 * v4 - 16;
    v8 = (a2 + v7);
    v9 = v3 + 160 * *a1 + 64;
    v10 = v7 + v5;
    do
    {
      v12 = v8[-1];
      v11 = *v8;
      v14 = *(a1 + v10 - 16);
      v13 = *(a1 + v10);
      v15 = vextq_s8(v12, v12, 8uLL).u64[0];
      v16 = vextq_s8(v13, v13, 8uLL).u64[0];
      v17 = vmls_f32(vmul_f32(*v12.f32, vext_s8(*v13.f32, v16, 4uLL)), vext_s8(*v12.f32, v15, 4uLL), *v13.f32);
      *v13.f32 = vext_s8(v17, vmls_f32(vmul_f32(v15, *v13.f32), *v12.f32, v16), 4uLL);
      v13.i64[1] = v17.u32[0];
      v18 = vaddq_f32(*v8, v13);
      v19 = vmulq_laneq_f32(*(a1 + v9 - 16), v18, 2);
      v19.i32[3] = 0;
      v20 = *(a1 + v9 - 32);
      v21 = vmlaq_lane_f32(v19, *(a1 + v9 - 48), *v18.f32, 1);
      v22 = *(a1 + v9 - 64);
      v21.i64[1] = vextq_s8(v21, v21, 8uLL).u32[0];
      v23 = vmlaq_n_f32(v21, *(a1 + v9 - 80), v18.f32[0]);
      v24 = vmulq_laneq_f32(*(a1 + v9), v18, 2);
      v24.i32[3] = 0;
      *(&v82 + v4 - 1) = v18;
      v25 = vmlaq_lane_f32(v24, v20, *v18.f32, 1);
      v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
      v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
      v26 = vmlaq_n_f32(v25, v22, v18.f32[0]);
      v27 = vsubq_f32(v12, v23);
      v26.i64[1] = vextq_s8(v26, v26, 8uLL).u32[0];
      v18.i64[0] = vextq_s8(v14, v14, 8uLL).u64[0];
      *v23.f32 = vmls_f32(vmul_f32(*v14.i8, *&vextq_s8(v27, v27, 4uLL)), vext_s8(*v14.i8, *v18.f32, 4uLL), *v27.f32);
      *v18.f32 = vext_s8(*v23.f32, vmls_f32(vmul_f32(*v18.f32, *v27.f32), *v14.i8, *&vextq_s8(v27, v27, 8uLL)), 4uLL);
      v18.i64[1] = v23.u32[0];
      v28 = &a2[2 * *(a1 + v4 + 63)];
      v29 = vaddq_f32(v28[1], vaddq_f32(vsubq_f32(v11, v26), v18));
      v8 -= 2;
      *v28 = vaddq_f32(*v28, v27);
      v28[1] = v29;
      v9 -= 160;
      v10 -= 32;
      --v4;
    }

    while (v4 > 1);
    v6 = a1[9];
    LODWORD(v4) = *a1;
  }

  v30 = (a1 + v6);
  v31 = vnegq_f32(*a2);
  v32 = vmulq_n_f32(*v30, v31.f32[0]);
  v33 = vmulq_lane_f32(v30[1], *v31.f32, 1);
  v34 = v30[3];
  v35 = vmulq_laneq_f32(v30[2], v31, 2);
  v31.i32[3] = 0;
  v36 = vnegq_f32(a2[1]);
  v32.i32[3] = 0;
  v33.i32[3] = 0;
  v35.i32[3] = 0;
  v37 = vaddq_f32(v32, v33);
  v38 = vmulq_n_f32(v34, v36.f32[0]);
  v38.i32[3] = 0;
  v39 = v30[4];
  v40 = v30[5];
  v41 = vmulq_lane_f32(v39, *v36.f32, 1);
  v41.i32[3] = 0;
  v42 = vmulq_laneq_f32(v40, v36, 2);
  v42.i32[3] = 0;
  v43 = vaddq_f32(vaddq_f32(v37, v35), vaddq_f32(vaddq_f32(v38, v41), v42));
  v44 = vmulq_f32(v31, v34);
  v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
  v45 = vmulq_f32(v31, v39);
  v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
  v46 = vmulq_f32(v31, v40);
  v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
  *v44.f32 = vext_s8(vpadd_f32(*v44.f32, *v44.f32), vpadd_f32(*v45.f32, *v45.f32), 4uLL);
  v44.i64[1] = vpadd_f32(*v46.f32, *v46.f32).u32[0];
  v47 = vmulq_n_f32(v30[6], v36.f32[0]);
  v47.i32[3] = 0;
  v48 = vmulq_lane_f32(v30[7], *v36.f32, 1);
  v48.i32[3] = 0;
  v49 = vmulq_laneq_f32(v30[8], v36, 2);
  v49.i32[3] = 0;
  result = vaddq_f32(vaddq_f32(vaddq_f32(v47, v48), v49), v44);
  v84 = v43;
  v85 = result;
  if (v4 >= 2)
  {
    v51 = v4 - 1;
    v52 = v86;
    v53 = a1 + 65;
    v54 = &v83;
    v55 = (a1 + v3 + 432);
    v56 = (a1 + v5 + 48);
    do
    {
      v57 = *v53++;
      v58 = &v84 + 2 * v57;
      v59 = vnegq_f32(v56[-1]);
      v60 = v59;
      v60.i32[3] = 0;
      v61 = v58[1];
      v60.i64[0] = vextq_s8(v60, v60, 8uLL).u64[0];
      v62 = vextq_s8(v61, v61, 8uLL).u64[0];
      v63 = vmls_f32(vmul_f32(*v59.f32, vext_s8(*v61.f32, v62, 4uLL)), vext_s8(*v59.f32, *v60.i8, 4uLL), *v61.f32);
      *v59.f32 = vext_s8(v63, vmls_f32(vmul_f32(*v60.i8, *v61.f32), *v59.f32, v62), 4uLL);
      v59.i64[1] = v63.u32[0];
      v64 = *v54++;
      v65 = vmulq_n_f32(v55[-2], v64.f32[0]);
      v65.i32[3] = 0;
      v66 = vmulq_lane_f32(v55[-1], *v64.f32, 1);
      v66.i32[3] = 0;
      v67 = vaddq_f32(*v58, v59);
      v68 = vmulq_laneq_f32(*v55, v64, 2);
      v69 = vaddq_f32(v65, v66);
      v70 = vmulq_f32(v55[-8], v67);
      v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
      v71 = vmulq_f32(v61, v55[-7]);
      v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
      v72 = vmulq_f32(v67, v55[-6]);
      v73 = vmulq_f32(v67, v55[-4]);
      *v70.f32 = vadd_f32(vpadd_f32(*v70.f32, *v70.f32), vpadd_f32(*v71.f32, *v71.f32));
      v71.i64[0] = vpaddq_f32(v73, v73).u64[0];
      v74 = vmulq_f32(v61, v55[-3]);
      v74.i64[0] = vpaddq_f32(v74, v74).u64[0];
      v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
      v75 = vmulq_f32(v61, v55[-5]);
      v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
      v68.i32[3] = 0;
      *v70.f32 = vext_s8(*v70.f32, vadd_f32(vpadd_f32(*v72.f32, *v72.f32), vpadd_f32(*v75.f32, *v75.f32)), 4uLL);
      v70.i64[1] = vadd_f32(vpadd_f32(*v71.f32, *v71.f32), vpadd_f32(*v74.f32, *v74.f32)).u32[0];
      v76 = vaddq_f32(vaddq_f32(v69, v68), v70);
      v69.i64[0] = vextq_s8(*v56, *v56, 8uLL).u64[0];
      *v70.f32 = vmls_f32(vmul_f32(*v56->i8, *&vextq_s8(v76, v76, 4uLL)), vext_s8(*v56->i8, *v69.f32, 4uLL), *v76.f32);
      *v77.f32 = vext_s8(*v70.f32, vmls_f32(vmul_f32(*v69.f32, *v76.f32), *v56->i8, *&vextq_s8(v76, v76, 8uLL)), 4uLL);
      v77.i64[1] = v70.u32[0];
      result = vsubq_f32(v61, v76);
      v52[-1] = vsubq_f32(v67, v77);
      *v52 = result;
      v52 += 2;
      v55 += 10;
      v56 += 2;
      --v51;
    }

    while (v51);
    LODWORD(v4) = *a1;
  }

  if (v4)
  {
    v78 = 0;
    v79 = a3 + 1;
    v80 = &v85;
    do
    {
      result = vaddq_f32(v79[-1], v80[-1]);
      v81 = vaddq_f32(*v79, *v80);
      v79[-1] = result;
      *v79 = v81;
      ++v78;
      v79 += 2;
      v80 += 2;
    }

    while (v78 < *a1);
  }

  return result;
}

void *physx::Dy::Articulation::computeUnconstrainedVelocitiesInternal(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v225 = v2;
  v226 = v3;
  v5 = v4;
  v7 = v6;
  v231 = v8;
  v10 = v9;
  v11 = v1;
  v243 = *MEMORY[0x1E69E9840];
  v12 = *(v9 + 92);
  v13 = *(v9 + 8);
  v14 = *(*v9 + 168);
  v15 = *(v9 + 32);
  physx::Dy::Articulation::prepareDataBlock(v14, v13, v12, v15, *(v9 + 40), v6, v4);
  bzero(&v14->i8[v14[1].u16[0]], 400 * v12);
  physx::Dy::Articulation::prepareLtbMatrix(v14, v7, v15, v5, 1.0 / *&v231);
  physx::Dy::PxcLtbFactor(v14);
  v227 = &v14[8];
  physx::Dy::PxcLtbComputeJv(&v238, v14, v14 + 8);
  if (v12 >= 2)
  {
    v16 = v12 - 1;
    v17 = &v14[49].i8[v14[1].u16[0]];
    v18 = v239;
    do
    {
      *v18 = vaddq_f32(*v18, *v17);
      ++v18;
      v17 += 25;
      --v16;
    }

    while (v16);
  }

  physx::Dy::PxcLtbSolve(v14, &v238, &v241);
  v19 = v14->u16[0];
  if (v14->i16[0])
  {
    v20 = &v14[9];
    v21 = v242;
    do
    {
      v22 = vsubq_f32(*v20, *v21);
      v20[-1] = vsubq_f32(v20[-1], v21[-1]);
      *v20 = v22;
      v20 += 2;
      v21 += 2;
      --v19;
    }

    while (v19);
  }

  bzero(&v14->i8[v14[1].u16[1]], 160 * v12 + 144);
  physx::Dy::Articulation::prepareFsData(v14, v13);
  v23 = *(v10 + 64);
  if ((v23[1] & 0x80000000) == 0)
  {
    bzero(*(v10 + 48), 48 * v12);
    v23 = *(v10 + 64);
  }

  v24 = *v23;
  if ((*v23 & 0x80000000) == 0)
  {
    bzero(*(v10 + 56), 48 * v12);
    v23 = *(v10 + 64);
    v24 = *v23;
  }

  v25 = *&v231;
  v26 = v24;
  v27 = *(v23 + 2) == v24;
  if (v12 >= 2)
  {
    v28 = v12 - 1;
    v29 = &v234;
    v30 = v236;
    v31 = (v13 + 8);
    do
    {
      v32 = *v31;
      v31 += 5;
      v33 = ((v32[76] * v25) + 1.0) + ((v32[75] * v25) * v25);
      v34 = v32[77];
      *v30++ = v33 * (1.0 / v34);
      v35 = v32[78];
      *v29++ = v33 * (1.0 / v35);
      v27 &= v34 == v35;
      --v28;
    }

    while (v28);
  }

  v36 = *(v10 + 56);
  v241 = *v226;
  v242[0].i64[0] = v226[1].i64[0];
  physx::Dy::PxcFsComputeJointLoadsSimd(v14, v7, v36, v235, v12, v26, &v241);
  v37 = *(v10 + 56);
  v241 = *v226;
  v242[0].i64[0] = v226[1].i64[0];
  physx::Dy::PxcFsPropagateDrivenInertiaSimd(v14, v7, v235, v37, &v241);
  v38 = v14->u16[0];
  if (v38 <= 1)
  {
    v110 = &v14->i8[v14[1].u16[1]];
    v111 = v14->u16[1];
    bzero(&v241, 32 * v38);
  }

  else
  {
    v221 = v7;
    v222 = v12;
    v223 = v10;
    v224 = v11;
    v39 = v38 - 1;
    v40 = &v232;
    v41 = (v13 + 9);
    v42 = (*(v10 + 56) + 80);
    v43 = (v5 + 152);
    v44 = &v14[11].i32[2];
    v45 = -0.5;
    v46 = 1.0;
    v47 = *&v231;
    v48 = v14 + 8;
    do
    {
      v49 = *(v41 - 1);
      v50 = *(v44 - 1);
      v51 = *v44;
      v52 = *(v44 - 2);
      i32 = v48[2 * *v41].i32;
      v54 = i32[5];
      v55 = i32[6];
      v56 = i32[4];
      if (*(v49 + 330) == 1)
      {
        v57 = *(v49 + 272);
        v58 = *(v49 + 276);
        v59 = *(v49 + 280);
      }

      else
      {
        v61 = *(v43 - 3);
        v60 = *(v43 - 2);
        v62 = *(v43 - 1);
        v63 = *(v49 + 284);
        v64 = *(v49 + 272);
        v65 = *(v49 + 276);
        v66 = *(v49 + 280);
        v67 = (((*v43 * v64) - (v63 * v61)) - (v65 * v62)) + (v60 * v66);
        v68 = (((*v43 * v65) - (v63 * v60)) - (v66 * v61)) + (v62 * v64);
        v69 = (((*v43 * v66) - (v63 * v62)) - (v64 * v60)) + (v61 * v65);
        v70 = ((v68 * v68) + (v67 * v67)) + (v69 * v69);
        v71 = sqrtf(v70);
        v57 = 0.0;
        v58 = 0.0;
        v59 = 0.0;
        if (v71 >= 1.0e-12)
        {
          v228 = (((*v43 * v65) - (v63 * v60)) - (v66 * v61)) + (v62 * v64);
          v229 = (((*v43 * v64) - (v63 * v61)) - (v65 * v62)) + (v60 * v66);
          v230 = *v44;
          v72 = (((v61 * v64) + (v63 * *v43)) + (v65 * v60)) + (v66 * v62);
          if (v72 >= 0.0)
          {
            v73 = v71;
          }

          else
          {
            v73 = -v71;
            v72 = -v72;
          }

          v74 = atan2f(v73, v72);
          v75 = 0.0;
          v76 = 0.0;
          v77 = 0.0;
          v47 = *&v231;
          v48 = v14 + 8;
          v45 = -0.5;
          v46 = 1.0;
          v51 = v230;
          if (v70 > 0.0)
          {
            v75 = (v229 * (1.0 / v71)) + (v229 * (1.0 / v71));
            v76 = (v228 * (1.0 / v71)) + (v228 * (1.0 / v71));
            v77 = (v69 * (1.0 / v71)) + (v69 * (1.0 / v71));
          }

          v57 = v74 * v75;
          v58 = v74 * v76;
          v59 = v74 * v77;
        }
      }

      v78 = v51 - v55;
      v41 += 10;
      v79 = v57 + v57;
      v80 = v58 + v58;
      v81 = v59 + v59;
      v83 = *(v43 - 15);
      v82 = *(v43 - 14);
      v84 = v45 + (v82 * v82);
      v85 = *(v43 - 17);
      v86 = *(v43 - 16);
      v87 = ((v80 * v86) + (v85 * v79)) + (v83 * v81);
      v88 = ((v82 * ((v86 * v81) - (v83 * v80))) + (v79 * v84)) + (v85 * v87);
      v89 = ((v82 * ((v83 * v79) - (v85 * v81))) + (v80 * v84)) + (v86 * v87);
      v90 = ((v82 * ((v85 * v80) - (v86 * v79))) + (v81 * v84)) + (v83 * v87);
      v91 = *(v49 + 288) + *(v49 + 288);
      v92 = *(v49 + 292) + *(v49 + 292);
      v93 = *(v49 + 296) + *(v49 + 296);
      v94 = ((v86 * v92) + (v85 * v91)) + (v83 * v93);
      v95 = ((v82 * ((v86 * v93) - (v83 * v92))) + (v91 * v84)) + (v85 * v94);
      v96 = ((v82 * ((v83 * v91) - (v85 * v93))) + (v92 * v84)) + (v86 * v94);
      v97 = (((v82 * ((v85 * v92) - (v86 * v91))) + (v93 * v84)) + (v83 * v94)) - v78;
      v98 = *(v49 + 300);
      v99 = v98 * v88;
      v100 = v89 * v98;
      v101 = v90 * v98;
      v102 = *(v49 + 304);
      v103 = (v101 + (v102 * v97)) * v47;
      v104 = v46 / *(v49 + 308);
      v105 = vmulq_n_f32(v42[-2], v104 * ((v99 + (v102 * (v95 - (v52 - v56)))) * v47));
      v105.i32[3] = 0;
      v106 = vmulq_n_f32(v42[-1], v104 * ((v100 + (v102 * (v96 - (v50 - v54)))) * v47));
      v106.i32[3] = 0;
      v107 = *v42;
      v42 += 3;
      v108 = vmulq_n_f32(v107, v104 * v103);
      v108.i32[3] = 0;
      *v40++ = vaddq_f32(v108, vaddq_f32(v105, v106));
      v43 += 21;
      v44 += 8;
      --v39;
    }

    while (v39);
    v109 = v14[1].u16[1];
    v110 = &v14->i8[v109];
    v111 = v14->u16[1];
    bzero(&v241, 32 * v38);
    v112 = v109 + 160 * v38 + 64;
    v113 = &v241 + 2 * v38 - 1;
    v114 = 32 * v38 - 16 + v111;
    v115 = v38;
    do
    {
      v117 = v113[-1];
      v116 = *v113;
      v118 = vextq_s8(v117, v117, 8uLL).u64[0];
      v120 = *(&v14[-1] + v114);
      v119 = *(v14 + v114);
      v121 = vextq_s8(v119, v119, 8uLL).u64[0];
      v122 = vmls_f32(vmul_f32(*v117.f32, vext_s8(*v119.f32, v121, 4uLL)), vext_s8(*v117.f32, v118, 4uLL), *v119.f32);
      *v119.f32 = vext_s8(v122, vmls_f32(vmul_f32(v118, *v119.f32), *v117.f32, v121), 4uLL);
      v119.i64[1] = v122.u32[0];
      v123 = vsubq_f32(vaddq_f32(*v113, v119), *(&v231 + v115));
      v124 = vmulq_laneq_f32(*(&v14[-1] + v112), v123, 2);
      v124.i32[3] = 0;
      v125 = vmlaq_lane_f32(v124, *(&v14[-3] + v112), *v123.f32, 1);
      v125.i64[1] = vextq_s8(v125, v125, 8uLL).u32[0];
      v126 = *(&v14[-4] + v112);
      v127 = vmlaq_n_f32(v125, *(&v14[-5] + v112), v123.f32[0]);
      v127.i64[1] = vextq_s8(v127, v127, 8uLL).u32[0];
      v128 = vmulq_laneq_f32(*(v14 + v112), v123, 2);
      v128.i32[3] = 0;
      v129 = vmlaq_lane_f32(v128, *(&v14[-2] + v112), *v123.f32, 1);
      v129.i64[1] = vextq_s8(v129, v129, 8uLL).u32[0];
      *&v236[16 * v115 + 236] = v123;
      v130 = vmlaq_n_f32(v129, v126, v123.f32[0]);
      v130.i64[1] = vextq_s8(v130, v130, 8uLL).u32[0];
      v131 = v115 - 1;
      v132 = vsubq_f32(v117, v127);
      v133 = vsubq_f32(v116, v130);
      v123.i64[0] = vextq_s8(v120, v120, 8uLL).u64[0];
      *v130.f32 = vmls_f32(vmul_f32(*v120.i8, *&vextq_s8(v132, v132, 4uLL)), vext_s8(*v120.i8, *v123.f32, 4uLL), *v132.f32);
      *v123.f32 = vext_s8(*v130.f32, vmls_f32(vmul_f32(*v123.f32, *v132.f32), *v120.i8, *&vextq_s8(v132, v132, 8uLL)), 4uLL);
      v123.i64[1] = v130.u32[0];
      v134 = &v241 + 2 * v14[3].u8[v115 + 15];
      v135 = vaddq_f32(v134[1], vaddq_f32(v133, v123));
      v112 -= 160;
      *v134 = vaddq_f32(*v134, v132);
      v134[1] = v135;
      v113 -= 2;
      v114 -= 32;
      v115 = v131;
    }

    while (v131 > 1);
    v10 = v223;
    v11 = v224;
    v7 = v221;
    v12 = v222;
  }

  v136 = *&v231;
  v137 = vnegq_f32(v241);
  v138 = vmulq_n_f32(*v110, v137.f32[0]);
  v139 = vmulq_lane_f32(v110[1], *v137.f32, 1);
  v140 = v110[3];
  v141 = vmulq_laneq_f32(v110[2], v137, 2);
  v137.i32[3] = 0;
  v142 = vnegq_f32(v242[0]);
  v138.i32[3] = 0;
  v139.i32[3] = 0;
  v141.i32[3] = 0;
  v143 = vaddq_f32(v138, v139);
  v144 = vmulq_n_f32(v140, v142.f32[0]);
  v144.i32[3] = 0;
  v145 = v110[4];
  v146 = v110[5];
  v147 = vmulq_lane_f32(v145, *v142.f32, 1);
  v147.i32[3] = 0;
  v148 = vmulq_laneq_f32(v146, v142, 2);
  v148.i32[3] = 0;
  v149 = vaddq_f32(vaddq_f32(v143, v141), vaddq_f32(vaddq_f32(v144, v147), v148));
  v150 = vmulq_f32(v137, v140);
  v150.i64[0] = vpaddq_f32(v150, v150).u64[0];
  v151 = vmulq_f32(v137, v145);
  v151.i64[0] = vpaddq_f32(v151, v151).u64[0];
  v152 = vmulq_f32(v137, v146);
  v152.i64[0] = vpaddq_f32(v152, v152).u64[0];
  *v150.f32 = vext_s8(vpadd_f32(*v150.f32, *v150.f32), vpadd_f32(*v151.f32, *v151.f32), 4uLL);
  v150.i64[1] = vpadd_f32(*v152.f32, *v152.f32).u32[0];
  v153 = vmulq_n_f32(v110[6], v142.f32[0]);
  v153.i32[3] = 0;
  v154 = vmulq_lane_f32(v110[7], *v142.f32, 1);
  v154.i32[3] = 0;
  v155 = vmulq_laneq_f32(v110[8], v142, 2);
  v155.i32[3] = 0;
  v156 = vaddq_f32(vaddq_f32(vaddq_f32(v153, v154), v155), v150);
  v238 = v149;
  v239[0] = v156;
  if (v38 >= 2)
  {
    v157 = v38 - 1;
    v158 = v110 + 27;
    v159 = &v240;
    v160 = &v14[4].u8[1];
    v161 = &v237;
    v162 = (v14 + v111 + 48);
    do
    {
      v163 = *v160++;
      v164 = &v238 + 2 * v163;
      v165 = vnegq_f32(v162[-1]);
      v166 = v165;
      v166.i32[3] = 0;
      v167 = v164[1];
      v166.i64[0] = vextq_s8(v166, v166, 8uLL).u64[0];
      v168 = vextq_s8(v167, v167, 8uLL).u64[0];
      v169 = vmls_f32(vmul_f32(*v165.f32, vext_s8(*v167.f32, v168, 4uLL)), vext_s8(*v165.f32, *v166.i8, 4uLL), *v167.f32);
      *v165.f32 = vext_s8(v169, vmls_f32(vmul_f32(*v166.i8, *v167.f32), *v165.f32, v168), 4uLL);
      v165.i64[1] = v169.u32[0];
      v170 = *v161++;
      v171 = vmulq_n_f32(v158[-2], v170.f32[0]);
      v171.i32[3] = 0;
      v172 = vmulq_lane_f32(v158[-1], *v170.f32, 1);
      v172.i32[3] = 0;
      v173 = vaddq_f32(*v164, v165);
      v174 = vmulq_laneq_f32(*v158, v170, 2);
      v175 = vaddq_f32(v171, v172);
      v176 = vmulq_f32(v158[-8], v173);
      v176.i64[0] = vpaddq_f32(v176, v176).u64[0];
      v177 = vmulq_f32(v167, v158[-7]);
      v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
      v178 = vmulq_f32(v173, v158[-6]);
      v179 = vmulq_f32(v173, v158[-4]);
      *v176.f32 = vadd_f32(vpadd_f32(*v176.f32, *v176.f32), vpadd_f32(*v177.f32, *v177.f32));
      v177.i64[0] = vpaddq_f32(v179, v179).u64[0];
      v180 = vmulq_f32(v167, v158[-3]);
      v180.i64[0] = vpaddq_f32(v180, v180).u64[0];
      v178.i64[0] = vpaddq_f32(v178, v178).u64[0];
      v181 = vmulq_f32(v167, v158[-5]);
      v181.i64[0] = vpaddq_f32(v181, v181).u64[0];
      v174.i32[3] = 0;
      *v176.f32 = vext_s8(*v176.f32, vadd_f32(vpadd_f32(*v178.f32, *v178.f32), vpadd_f32(*v181.f32, *v181.f32)), 4uLL);
      v176.i64[1] = vadd_f32(vpadd_f32(*v177.f32, *v177.f32), vpadd_f32(*v180.f32, *v180.f32)).u32[0];
      v182 = vaddq_f32(vaddq_f32(v175, v174), v176);
      v154 = vextq_s8(*v162, *v162, 8uLL);
      *v178.f32 = vext_s8(*v162->i8, *v154.f32, 4uLL);
      *v154.f32 = vmls_f32(vmul_f32(*v154.f32, *v182.f32), *v162->i8, *&vextq_s8(v182, v182, 8uLL));
      *v176.f32 = vmls_f32(vmul_f32(*v162->i8, *&vextq_s8(v182, v182, 4uLL)), *v178.f32, *v182.f32);
      *v183.f32 = vext_s8(*v176.f32, *v154.f32, 4uLL);
      v183.i64[1] = v176.u32[0];
      v156 = vsubq_f32(v167, v182);
      v159[-1] = vsubq_f32(v173, v183);
      *v159 = v156;
      v158 += 10;
      v159 += 2;
      v162 += 2;
      --v157;
    }

    while (v157);
  }

  if (v38)
  {
    v184 = &v14[9];
    v185 = v239;
    do
    {
      v156 = vaddq_f32(v184[-1], v185[-1]);
      v186 = vaddq_f32(*v184, *v185);
      v184[-1] = v156;
      *v184 = v186;
      v184 += 2;
      v185 += 2;
      --v38;
    }

    while (v38);
  }

  if ((v27 & 1) == 0)
  {
    v187 = *(v10 + 48);
    v188 = *(*(v10 + 64) + 4);
    v241 = *v226;
    v242[0].i64[0] = v226[1].i64[0];
    physx::Dy::PxcFsComputeJointLoadsSimd(v14, v7, v187, v233, v12, v188, &v241);
    v189 = *(v10 + 48);
    v241 = *v226;
    v242[0].i64[0] = v226[1].i64[0];
    physx::Dy::PxcFsPropagateDrivenInertiaSimd(v14, v7, v233, v189, &v241);
    v136 = *&v231;
  }

  if (v12)
  {
    v156.i32[0] = 0;
    v190.i64[0] = *v225;
    v190.i64[1] = *(v225 + 8);
    v191 = *(v10 + 24) + 16;
    v192 = v242;
    v193 = (*(v10 + 8) + 16);
    v194 = (v7 + 64);
    v195 = v12;
    do
    {
      v196.i64[0] = *(v191 - 16);
      v196.i64[1] = *(v191 - 8);
      v197 = *v193;
      v193 += 5;
      v154.i8[0] = *(v197 + 157);
      v198 = vdupq_lane_s8(*&vceqq_s8(v154, v156), 0);
      v199 = v191;
      v200 = vld1q_dup_f32(v199++);
      v201 = vbslq_s8(v198, vaddq_f32(v190, v196), v196);
      v202 = vmulq_n_f32(v194[-4], v201.f32[0]);
      v202.i32[3] = 0;
      v198.i32[0] = *(v191 + 8);
      v203 = vmulq_lane_f32(v194[-3], *v201.f32, 1);
      v204 = v194[-1];
      v203.i32[3] = 0;
      v205 = vmulq_laneq_f32(v194[-2], v201, 2);
      v206 = vmulq_f32(v200, v204);
      v206.i32[3] = 0;
      v205.i32[3] = 0;
      v207 = v194[1];
      v208 = vmulq_n_f32(*v194, *v199);
      v208.i32[3] = 0;
      v209 = vaddq_f32(v206, v208);
      v210 = vmulq_n_f32(v207, *v198.i32);
      v210.i32[3] = 0;
      v211 = vmulq_f32(v201, v204);
      v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
      v212 = vmulq_f32(v201, *v194);
      v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
      v213 = vmulq_f32(v201, v207);
      v214 = vaddq_f32(v202, v203);
      v213.i64[0] = vpaddq_f32(v213, v213).u64[0];
      *v202.f32 = vext_s8(vpadd_f32(*v211.f32, *v211.f32), vpadd_f32(*v212.f32, *v212.f32), 4uLL);
      v215 = vmulq_f32(v200, v194[2]);
      v215.i32[3] = 0;
      v216 = vmulq_n_f32(v194[3], *v199);
      v216.i32[3] = 0;
      v202.i64[1] = vpadd_f32(*v213.f32, *v213.f32).u32[0];
      v217 = vmulq_n_f32(v194[4], *v198.i32);
      v217.i32[3] = 0;
      v218 = vaddq_f32(vaddq_f32(vaddq_f32(v215, v216), v217), v202);
      v154 = vmulq_n_f32(vnegq_f32(vaddq_f32(vaddq_f32(v214, v205), vaddq_f32(v209, v210))), v136);
      v219 = vmulq_n_f32(vnegq_f32(v218), v136);
      v154.i32[3] = 0;
      v219.i32[3] = 0;
      *v191 = 0;
      *(v191 + 8) = 0;
      v192[-1] = v154;
      *v192 = v219;
      *(v191 - 16) = 0;
      *(v191 - 8) = 0;
      v191 += 32;
      v192 += 2;
      v194 += 9;
      --v195;
    }

    while (v195);
  }

  physx::Dy::Articulation::applyImpulses(v14, &v241, v227);
  result = memcpy(*(v10 + 16), v227, 32 * v12);
  v14->i64[1] = 0;
  *(v11 + 8) = 0;
  return result;
}

float32x4_t *physx::Dy::PxcFsFlushVelocity(float32x4_t *result)
{
  v1 = (result + result[1].u16[1]);
  v2 = result->u16[0];
  v3 = 16 * v2;
  v4 = result->u16[1];
  v5 = vnegq_f32(result[2]);
  v6 = vmulq_n_f32(*v1, v5.f32[0]);
  v7 = vmulq_lane_f32(v1[1], *v5.f32, 1);
  v8 = v1[3];
  v9 = vmulq_laneq_f32(v1[2], v5, 2);
  v10 = v5;
  v10.i32[3] = 0;
  v6.i32[3] = 0;
  v7.i32[3] = 0;
  v11 = vnegq_f32(result[3]);
  v9.i32[3] = 0;
  v12 = vmulq_n_f32(v8, v11.f32[0]);
  v12.i32[3] = 0;
  v13 = vaddq_f32(v6, v7);
  v14 = v1[4];
  v15 = v1[5];
  v16 = vmulq_lane_f32(v14, *v11.f32, 1);
  v16.i32[3] = 0;
  v17 = vaddq_f32(v13, v9);
  v18 = vmulq_laneq_f32(v15, v11, 2);
  v18.i32[3] = 0;
  v19 = vaddq_f32(v17, vaddq_f32(vaddq_f32(v12, v16), v18));
  v20 = vmulq_f32(v10, v8);
  v20.i64[0] = vpaddq_f32(v20, v20).u64[0];
  v21 = vmulq_f32(v10, v14);
  v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
  v22 = vmulq_f32(v10, v15);
  v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
  *v20.f32 = vext_s8(vpadd_f32(*v20.f32, *v20.f32), vpadd_f32(*v21.f32, *v21.f32), 4uLL);
  v20.i64[1] = vpadd_f32(*v22.f32, *v22.f32).u32[0];
  v23 = vmulq_n_f32(v1[6], v11.f32[0]);
  v23.i32[3] = 0;
  v24 = vmulq_lane_f32(v1[7], *v11.f32, 1);
  v24.i32[3] = 0;
  v25 = vmulq_laneq_f32(v1[8], v11, 2);
  v25.i32[3] = 0;
  v26 = vaddq_f32(vaddq_f32(vaddq_f32(v23, v24), v25), v20);
  v27 = &result[8];
  v28 = result[8];
  result[2] = 0u;
  result[3] = 0u;
  result[8] = vaddq_f32(v19, v28);
  result[9] = vaddq_f32(v26, result[9]);
  for (i = v1[18].i64[0]; i; i &= i - 1)
  {
    v30 = __clz(__rbit32(i));
    LODWORD(v31) = __clz(__rbit32(HIDWORD(i))) + 32;
    if (i)
    {
      v31 = v30;
    }

    else
    {
      v31 = v31;
    }

    v32 = &v27[16 * v31 + v3];
    v33 = vaddq_f32(v26, v32[1]);
    *v32 = vaddq_f32(v19, *v32);
    v32[1] = v33;
  }

  if (v2 >= 2)
  {
    v34 = v1 + 9;
    v35 = result + v4;
    v36 = &v27[v3];
    for (j = 1; j != v2; ++j)
    {
      v38 = &v34[10 * j];
      v39 = &v35[32 * j];
      v40 = &v27[32 * v2 + 16 * v2 + 8 * j];
      v41 = &v36[16 * j];
      v42 = v41[1];
      v43 = vextq_s8(v42, v42, 8uLL).u64[0];
      v44 = v39[1];
      v45 = vextq_s8(*v39, *v39, 8uLL).u64[0];
      v46 = vmls_f32(vmul_f32(*v42.f32, vext_s8(*v39->i8, v45, 4uLL)), vext_s8(*v42.f32, v43, 4uLL), *v39->i8);
      *v47.f32 = vext_s8(v46, vmls_f32(vmul_f32(v43, *v39->i8), *v42.f32, v45), 4uLL);
      v47.i64[1] = v46.u32[0];
      v48 = vmulq_n_f32(v38[6], COERCE_FLOAT(*v40->f32));
      v48.i32[3] = 0;
      v49 = vaddq_f32(*v41, v47);
      v50 = vmulq_lane_f32(v38[7], *v40, 1);
      v50.i32[3] = 0;
      v51 = vmulq_laneq_f32(v38[8], *v40->f32, 2);
      v51.i32[3] = 0;
      v52 = vaddq_f32(vaddq_f32(v48, v50), v51);
      v53 = vmulq_f32(*v38, v49);
      v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
      v54 = vmulq_f32(v42, v38[1]);
      v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
      *v53.f32 = vadd_f32(vpadd_f32(*v53.f32, *v53.f32), vpadd_f32(*v54.f32, *v54.f32));
      v55 = vmulq_f32(v49, v38[2]);
      v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
      v56 = vmulq_f32(v42, v38[3]);
      v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
      *v55.f32 = vadd_f32(vpadd_f32(*v55.f32, *v55.f32), vpadd_f32(*v56.f32, *v56.f32));
      v57 = vmulq_f32(v49, v38[4]);
      v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
      v58 = vmulq_f32(v42, v38[5]);
      v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
      *v53.f32 = vext_s8(*v53.f32, *v55.f32, 4uLL);
      v53.i64[1] = vadd_f32(vpadd_f32(*v57.f32, *v57.f32), vpadd_f32(*v58.f32, *v58.f32)).u32[0];
      v59 = vaddq_f32(v52, v53);
      v53.i64[0] = vextq_s8(v44, v44, 8uLL).u64[0];
      *v57.f32 = vmls_f32(vmul_f32(*v44.i8, *&vextq_s8(v59, v59, 4uLL)), vext_s8(*v44.i8, *v53.f32, 4uLL), *v59.f32);
      *v53.f32 = vext_s8(*v57.f32, vmls_f32(vmul_f32(*v53.f32, *v59.f32), *v44.i8, *&vextq_s8(v59, v59, 8uLL)), 4uLL);
      v53.i64[1] = v57.u32[0];
      v60 = vsubq_f32(v49, v53);
      v61 = vsubq_f32(v42, v59);
      *v41 = 0uLL;
      v41[1] = 0uLL;
      *v40 = 0;
      v40[1] = 0;
      v62 = &v27[16 * j];
      v63 = vaddq_f32(v62[1], v61);
      *v62 = vaddq_f32(*v62, v60);
      v62[1] = v63;
      for (k = v38[9].i64[0]; k; k &= k - 1)
      {
        v65 = __clz(__rbit32(k));
        LODWORD(v66) = __clz(__rbit32(HIDWORD(k))) + 32;
        if (k)
        {
          v66 = v65;
        }

        else
        {
          v66 = v66;
        }

        v67 = &v36[16 * v66];
        v68 = vaddq_f32(v61, v67[1]);
        *v67 = vaddq_f32(v60, *v67);
        v67[1] = v68;
      }
    }
  }

  result->i64[1] = 0;
  return result;
}

float32x4_t physx::Dy::Articulation::pxcFsApplyImpulse(uint64_t a1, unsigned int a2, float32x4_t a3, float32x4_t a4)
{
  v4 = *(a1 + 168);
  v5 = vnegq_f32(a3);
  v5.i32[3] = 0;
  v6 = vnegq_f32(a4);
  v6.i32[3] = 0;
  v7 = &v4[9] + v4[1].u16[1];
  if (a2)
  {
    v8 = v4 + v4->u16[1];
    v9 = &v4[2 * v4->u16[0] + 8 + 2 * v4->u16[0] + 2 * v4->u16[0]];
    v10 = a2;
    do
    {
      v11 = (v7 + 160 * v10);
      v12 = &v8[32 * v10];
      v13 = *(v12 + 1);
      v14 = vextq_s8(v13, v13, 8uLL).u64[0];
      v15 = vmls_f32(vmul_f32(*v5.f32, vext_s8(*v13.f32, v14, 4uLL)), *&vextq_s8(v5, v5, 4uLL), *v13.f32);
      *v13.f32 = vext_s8(v15, vmls_f32(vmul_f32(*&vextq_s8(v5, v5, 8uLL), *v13.f32), *v5.f32, v14), 4uLL);
      v13.i64[1] = v15.u32[0];
      v16 = vaddq_f32(v6, v13);
      v17 = vmulq_laneq_f32(v11[4], v16, 2);
      v17.i32[3] = 0;
      v18 = vmlaq_lane_f32(v17, v11[2], *v16.f32, 1);
      v18.i64[1] = vextq_s8(v18, v18, 8uLL).u32[0];
      v19 = vmlaq_n_f32(v18, *v11, v16.f32[0]);
      v19.i64[1] = vextq_s8(v19, v19, 8uLL).u32[0];
      v5 = vsubq_f32(v5, v19);
      v20 = vmulq_laneq_f32(v11[5], v16, 2);
      v20.i32[3] = 0;
      v21 = vmlaq_lane_f32(v20, v11[3], *v16.f32, 1);
      v21.i64[1] = vextq_s8(v21, v21, 8uLL).u32[0];
      v22 = vmlaq_n_f32(v21, v11[1], v16.f32[0]);
      v22.i64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
      v23 = vsubq_f32(v6, v22);
      v22.i64[0] = vextq_s8(*v12, *v12, 8uLL).u64[0];
      v24 = vmls_f32(vmul_f32(*v12, *&vextq_s8(v5, v5, 4uLL)), vext_s8(*v12, *v22.f32, 4uLL), *v5.f32);
      *v22.f32 = vext_s8(v24, vmls_f32(vmul_f32(*v22.f32, *v5.f32), *v12, *&vextq_s8(v5, v5, 8uLL)), 4uLL);
      v22.i64[1] = v24.u32[0];
      v6 = vaddq_f32(v23, v22);
      *(v9 + 16 * v10) = vaddq_f32(*(v9 + 16 * v10), v16);
      v10 = v4[4].u8[v10];
    }

    while (v10);
  }

  result = vaddq_f32(v5, v4[2]);
  v26 = vaddq_f32(v6, v4[3]);
  v4[2] = result;
  v4[3] = v26;
  v4->i64[1] |= *(v7 + 160 * a2 + 152);
  return result;
}

double physx::Dy::Articulation::pxcFsGetVelocities(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  (*(*a1 + 312))(&v12);
  v9 = v13;
  *a4 = v12;
  a4[1] = v9;
  (*(*a1 + 312))(&v12, a1, a3);
  result = *&v12;
  v11 = v13;
  *a5 = v12;
  a5[1] = v11;
  return result;
}

uint64_t physx::Dy::Articulation::pxcFsApplyImpulses(uint64_t a1, uint64_t a2, __n128 *a3, __n128 *a4, uint64_t a5, __n128 *a6, __n128 *a7, uint64_t a8, uint64_t a9)
{
  (*(*a1 + 256))(a1, a2, a8, a9, *a3, *a4);
  v14 = *a6;
  v15 = *a7;
  v16 = *(*a1 + 256);

  return v16(a1, a5, a8, a9, v14, v15);
}

__n128 physx::Dy::Articulation::pxcFsGetVelocity@<Q0>(physx::Dy::Articulation *this@<X0>, unsigned int a2@<W1>, float32x4_t *a3@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(this + 21);
  v4 = (v3 + v3[1].u16[1]);
  v5 = v4 + 9;
  v6 = v3 + 8;
  v7 = a2;
  v8 = v4[10 * a2 + 18].i64[1];
  v9 = v3->i64[1];
  if ((v9 & v8) != 0)
  {
    v10 = (v9 | -(v9 & v8)) & v8;
    v11 = v3->u16[0];
    if (v10)
    {
      v17 = vnegq_f32(v3[2]);
      v18 = vmulq_n_f32(*v4, v17.f32[0]);
      v19 = vmulq_lane_f32(v4[1], *v17.f32, 1);
      v20 = v4[3];
      v21 = vmulq_laneq_f32(v4[2], v17, 2);
      v17.i32[3] = 0;
      v22 = vnegq_f32(v3[3]);
      v18.i32[3] = 0;
      v19.i32[3] = 0;
      v21.i32[3] = 0;
      v23 = vaddq_f32(v18, v19);
      v24 = vmulq_n_f32(v20, v22.f32[0]);
      v24.i32[3] = 0;
      v25 = v4[4];
      v26 = v4[5];
      v27 = vmulq_lane_f32(v25, *v22.f32, 1);
      v27.i32[3] = 0;
      v28 = vmulq_laneq_f32(v26, v22, 2);
      v28.i32[3] = 0;
      v15 = vaddq_f32(vaddq_f32(v23, v21), vaddq_f32(vaddq_f32(v24, v27), v28));
      v29 = vmulq_f32(v17, v20);
      v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
      v30 = vmulq_f32(v17, v25);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      v31 = vmulq_f32(v17, v26);
      v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
      *v29.f32 = vext_s8(vpadd_f32(*v29.f32, *v29.f32), vpadd_f32(*v30.f32, *v30.f32), 4uLL);
      v29.i64[1] = vpadd_f32(*v31.f32, *v31.f32).u32[0];
      v32 = vmulq_n_f32(v4[6], v22.f32[0]);
      v32.i32[3] = 0;
      v33 = vmulq_lane_f32(v4[7], *v22.f32, 1);
      v33.i32[3] = 0;
      v34 = vmulq_laneq_f32(v4[8], v22, 2);
      v34.i32[3] = 0;
      v14 = vaddq_f32(vaddq_f32(vaddq_f32(v32, v33), v34), v29);
      v35 = vaddq_f32(v3[9], v14);
      v3[8] = vaddq_f32(v15, v3[8]);
      v3[9] = v35;
      v3[2] = 0u;
      v3[3] = 0u;
      v79[0] = 0;
      v78[0] = v15;
      v78[1] = v14;
      v12 = v4[18].i64[0];
      v16 = v10 - 1;
      v13 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = v10;
    }

    v36 = &v6[2 * v11];
    if (v16)
    {
      v37 = v3 + v3->u16[1];
      v38 = &v36[2 * v11 + 2 * v11];
      do
      {
        LODWORD(v39) = __clz(__rbit32(v16));
        v40 = __clz(__rbit32(HIDWORD(v16))) + 32;
        if (v16)
        {
          v39 = v39;
        }

        else
        {
          v39 = v40;
        }

        v41 = &v37[32 * v39];
        v42 = &v5[10 * v39];
        v43 = &v36[2 * v39];
        v44 = vaddq_f32(v15, *v43);
        v45 = (v38 + 16 * v39);
        v46 = vmulq_n_f32(v42[6], COERCE_FLOAT(*v45->f32));
        v46.i32[3] = 0;
        v47 = vmulq_lane_f32(v42[7], *v45, 1);
        v47.i32[3] = 0;
        v48 = vmulq_laneq_f32(v42[8], *v45->f32, 2);
        v48.i32[3] = 0;
        v49 = vaddq_f32(v14, v43[1]);
        v50 = vaddq_f32(vaddq_f32(v46, v47), v48);
        v51 = v41[1];
        v52 = vextq_s8(*v41, *v41, 8uLL).u64[0];
        v53 = vmls_f32(vmul_f32(*v49.f32, vext_s8(*v41->i8, v52, 4uLL)), *&vextq_s8(v49, v49, 4uLL), *v41->i8);
        *v54.f32 = vext_s8(v53, vmls_f32(vmul_f32(*&vextq_s8(v49, v49, 8uLL), *v41->i8), *v49.f32, v52), 4uLL);
        v54.i64[1] = v53.u32[0];
        v55 = vaddq_f32(v44, v54);
        v56 = vmulq_f32(*v42, v55);
        v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
        v57 = vmulq_f32(v42[2], v55);
        v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
        v58 = vmulq_f32(v42[4], v55);
        v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
        *v56.f32 = vext_s8(vpadd_f32(*v56.f32, *v56.f32), vpadd_f32(*v57.f32, *v57.f32), 4uLL);
        v59 = vmulq_f32(v49, v42[1]);
        v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
        v60 = vmulq_f32(v49, v42[3]);
        v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
        v61 = vmulq_f32(v49, v42[5]);
        v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
        *v59.f32 = vext_s8(vpadd_f32(*v59.f32, *v59.f32), vpadd_f32(*v60.f32, *v60.f32), 4uLL);
        v56.i64[1] = vpadd_f32(*v58.f32, *v58.f32).u32[0];
        v59.i64[1] = vpadd_f32(*v61.f32, *v61.f32).u32[0];
        v62 = vaddq_f32(v50, vaddq_f32(v56, v59));
        v50.i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
        *v60.f32 = vmls_f32(vmul_f32(*v51.i8, *&vextq_s8(v62, v62, 4uLL)), vext_s8(*v51.i8, *v50.f32, 4uLL), *v62.f32);
        *v50.f32 = vext_s8(*v60.f32, vmls_f32(vmul_f32(*v50.f32, *v62.f32), *v51.i8, *&vextq_s8(v62, v62, 8uLL)), 4uLL);
        v50.i64[1] = v60.u32[0];
        v15 = vsubq_f32(v55, v50);
        v14 = vsubq_f32(v49, v62);
        v63 = &v6[2 * v39];
        v64 = vaddq_f32(v63[1], v14);
        *v63 = vaddq_f32(*v63, v15);
        v63[1] = v64;
        *v43 = 0uLL;
        v43[1] = 0uLL;
        *v45 = 0;
        v45[1] = 0;
        v79[v39] = v13;
        v65 = v13++;
        v66 = &v78[2 * v65];
        v12 |= v42[9].u64[0];
        *v66 = v15;
        v66[1] = v14;
        v16 &= v16 - 1;
      }

      while (v16);
    }

    v67 = ~v10;
    for (i = v12 & ~v10; i; i &= i - 1)
    {
      v69 = __clz(__rbit32(i));
      LODWORD(v70) = __clz(__rbit32(HIDWORD(i))) + 32;
      if (i)
      {
        v70 = v69;
      }

      else
      {
        v70 = v70;
      }

      v71 = v79[v3[4].u8[v70]];
      v72 = &v36[2 * v70];
      v73 = &v78[2 * v71];
      v74 = vaddq_f32(v72[1], v73[1]);
      *v72 = vaddq_f32(*v72, *v73);
      v72[1] = v74;
    }

    v3->i64[1] = (v12 | v9) & v67;
  }

  v75 = &v6[2 * v7];
  result = *v75;
  v77 = v75[1];
  *a3 = *v75;
  a3[1] = v77;
  return result;
}

void physx::Dy::PxvArticulationDriveCache::initialize(unsigned __int16 *a1, unsigned int a2, void *a3, unsigned __int16 a4, char *a5, unsigned int a6, float a7)
{
  v25[31] = *MEMORY[0x1E69E9840];
  v14 = a2;
  physx::Dy::Articulation::prepareDataBlock(a1, a3, a2, &a5[240 * a2], &a5[272 * a2], a5, &a5[144 * a2]);
  bzero(a1 + a1[9], 160 * a2 + 144);
  physx::Dy::Articulation::prepareFsData(a1, a3);
  v24 = 0;
  if (a2 >= 2)
  {
    v15 = 0;
    v16 = vdupq_n_s64(v14 - 2);
    v17 = v25;
    v18 = 1.0 / a7;
    do
    {
      v19 = vdupq_n_s64(v15);
      v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_1E3049620)));
      if (vuzp1_s16(v20, *v16.i8).u8[0])
      {
        *(v17 - 1) = v18;
      }

      if (vuzp1_s16(v20, *&v16).i8[2])
      {
        *v17 = v18;
      }

      if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_1E3049640)))).i32[1])
      {
        v17[1] = v18;
        v17[2] = v18;
      }

      v15 += 4;
      v17 += 4;
    }

    while (((v14 + 2) & 0x1FFFC) != v15);
  }

  bzero(&a5[288 * v14], 48 * a2);
  v21 = a5;
  v22 = a6;
  v23 = 336 * v14;
  physx::Dy::PxcFsComputeJointLoadsSimd(a1, a5, &a5[288 * v14], &v24, a2, a4, &v21);
  v21 = a5;
  v22 = a6;
  v23 = 336 * v14;
  physx::Dy::PxcFsPropagateDrivenInertiaSimd(a1, a5, &v24, &a5[288 * v14], &v21);
}

float physx::Dy::SolverExtBody::projectVelocity(uint64_t a1, float *a2, float *a3)
{
  if (*(a1 + 16) == 0xFFFF)
  {
    v9 = *(a1 + 8);
    return (((v9[1] * a2[1]) + (*v9 * *a2)) + (v9[2] * a2[2])) + (((v9[5] * a3[1]) + (v9[4] * *a3)) + (v9[6] * a3[2]));
  }

  else
  {
    (*(**a1 + 232))(v10);
    v5.i64[0] = *a2;
    v5.i64[1] = *(a2 + 2);
    v6.i64[0] = *a3;
    v6.i64[1] = *(a3 + 2);
    v7 = vaddq_f32(vmulq_f32(v5, v10[0]), vmulq_f32(v6, v10[1]));
    v7.i64[0] = vpaddq_f32(v7, v7).u64[0];
    LODWORD(result) = vpadd_f32(*v7.f32, *v7.f32).u32[0];
  }

  return result;
}

float32x2_t physx::Dy::SolverExtBody::projectVelocity(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  if (*(a1 + 16) == 0xFFFF)
  {
    v7 = *(a1 + 8);
    v8.i64[0] = *v7;
    v8.i64[1] = *(v7 + 8);
    v5 = vmulq_f32(v8, *a2);
    v9.i64[0] = *(v7 + 16);
    v9.i64[1] = *(v7 + 24);
    v6 = vmulq_f32(v9, *a3);
  }

  else
  {
    (*(**a1 + 232))(v12);
    v5 = vmulq_f32(*a2, v12[0]);
    v6 = vmulq_f32(*a3, v12[1]);
  }

  v10 = vaddq_f32(v5, v6);
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  return vpadd_f32(*v10.f32, *v10.f32);
}

void *physx::Dy::SolverExtBody::getLinVel(void *this, uint64_t a2)
{
  v2 = this;
  if (*(a2 + 16) == 0xFFFF)
  {
    v5 = *(a2 + 8);
    v3 = *v5;
    v4 = *(v5 + 2);
  }

  else
  {
    this = (*(**a2 + 232))(&v6);
    v3 = v6;
    v4 = v7;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  return this;
}

float physx::Dy::SolverExtBody::getVelocity(physx::Dy::SolverExtBody *this, void *a2)
{
  if (*(a2 + 8) == 0xFFFF)
  {
    v3 = a2[1];
    *&v2 = *v3;
    *(&v2 + 1) = *(v3 + 8);
    *&v4 = *(v3 + 16);
    *(&v4 + 1) = *(v3 + 24);
    *this = v2;
    *(this + 1) = v4;
  }

  else
  {
    (*(**a2 + 232))(*a2);
  }

  return *&v2;
}

float32x2_t *physx::Dy::createImpulseResponseVector@<X0>(float32x2_t *result@<X0>, float *a2@<X1>, uint64_t a3@<X2>, float32x2_t *a4@<X8>)
{
  if (*(a3 + 16) == -1)
  {
    v6 = *(a3 + 8);
    v7 = a2[1];
    v8 = a2[2];
    v9 = v8 * *(v6 + 64);
    v4 = vadd_f32(vadd_f32(vmul_n_f32(*(v6 + 32), *a2), vmul_n_f32(*(v6 + 44), v7)), vmul_n_f32(*(v6 + 56), v8));
    v5 = ((*a2 * *(v6 + 40)) + (v7 * *(v6 + 52))) + v9;
  }

  else
  {
    v4 = *a2;
    v5 = a2[2];
  }

  v10 = result[1].i32[0];
  *a4 = *result;
  a4[1].i32[0] = v10;
  a4[1].i32[1] = 0;
  a4[2] = v4;
  a4[3].f32[0] = v5;
  a4[3].i32[1] = 0;
  return result;
}

float physx::Dy::getImpulseResponse(uint64_t *a1, float32x2_t *a2, float32x2_t *a3, uint64_t *a4, float32x2_t *a5, float32x2_t *a6, uint64_t a7, float a8, float a9, float a10, float a11)
{
  v17 = *(a1 + 8);
  if (v17 == 0xFFFF)
  {
    v27 = *(a1[1] + 12);
    v23 = (v27 * a2[1].f32[0]) * a8;
    v22 = vmul_n_f32(vmul_n_f32(*a2, v27), a8);
    *a3 = v22;
    a3[1].f32[0] = v23;
    v26 = a2[3].f32[0] * a9;
    v25 = vmul_n_f32(a2[2], a9);
    a3[2] = v25;
    a3[3].f32[0] = v26;
    v21 = v22.f32[1];
    v24 = v25.f32[1];
  }

  else
  {
    v18 = *a1;
    v19 = a2[1].f32[0] * a8;
    v48 = a10;
    v50 = a11;
    v20 = a2[3].f32[0] * a9;
    v52 = vmul_n_f32(*a2, a8);
    v53 = v19;
    v54 = 0;
    v55 = vmul_n_f32(a2[2], a9);
    v56 = v20;
    v57 = 0;
    (*(*v18 + 208))(v18, v17, a7, &v52, a3);
    a10 = v48;
    a11 = v50;
    v22.i32[0] = a3->i32[0];
    v21 = a3->f32[1];
    v23 = a3[1].f32[0];
    v25.i32[0] = a3[2].i32[0];
    v24 = a3[2].f32[1];
    v26 = a3[3].f32[0];
  }

  v28 = a2->f32[0];
  v29 = a2->f32[1];
  v30 = a2[1].f32[0];
  v32 = a2[2].f32[0];
  v31 = a2[2].f32[1];
  v33 = a2[3].f32[0];
  v34 = *(a4 + 8);
  if (v34 == 0xFFFF)
  {
    v44 = *(a4[1] + 12);
    v40 = (v44 * a5[1].f32[0]) * a10;
    v38 = vmul_n_f32(vmul_n_f32(*a5, v44), a10);
    *a6 = v38;
    a6[1].f32[0] = v40;
    v43 = a5[3].f32[0] * a11;
    v41 = vmul_n_f32(a5[2], a11);
    a6[2] = v41;
    a6[3].f32[0] = v43;
    v39 = v38.f32[1];
    v42 = v41.f32[1];
  }

  else
  {
    v35 = *a4;
    v36 = a5[1].f32[0] * a10;
    v37 = a5[3].f32[0] * a11;
    v52 = vmul_n_f32(*a5, a10);
    v53 = v36;
    v54 = 0;
    v55 = vmul_n_f32(a5[2], a11);
    v56 = v37;
    v57 = 0;
    v49 = v25.i32[0];
    v51 = v22.i32[0];
    v46 = v21;
    v47 = v29;
    (*(*v35 + 208))(v35, v34, a7, &v52, a6);
    v21 = v46;
    v29 = v47;
    v25.i32[0] = v49;
    v22.i32[0] = v51;
    v38.i32[0] = a6->i32[0];
    v39 = a6->f32[1];
    v40 = a6[1].f32[0];
    v41.i32[0] = a6[2].i32[0];
    v42 = a6[2].f32[1];
    v43 = a6[3].f32[0];
  }

  return ((((v21 * v29) + (v28 * v22.f32[0])) + (v30 * v23)) + (((v24 * v31) + (v32 * v25.f32[0])) + (v33 * v26))) + ((((v39 * a5->f32[1]) + (a5->f32[0] * v38.f32[0])) + (a5[1].f32[0] * v40)) + (((v42 * a5[2].f32[1]) + (a5[2].f32[0] * v41.f32[0])) + (a5[3].f32[0] * v43)));
}

float32x2_t physx::Dy::getImpulseResponse(uint64_t *a1, float32x4_t *a2, float32x4_t *a3, float32x2_t *a4, float32x2_t *a5, uint64_t *a6, float32x4_t *a7, float32x4_t *a8, double a9, float32x2_t a10, float32x2_t *a11, void *a12, uint64_t a13)
{
  v18 = *(a1 + 8);
  if (v18 == 0xFFFF)
  {
    a10.i32[0] = *(a1[1] + 12);
    v23 = vmulq_n_f32(*a2, vmul_f32(a10, *a4).f32[0]);
    v23.i32[3] = 0;
    *a3 = v23;
    v22 = *a5;
    v24 = vmulq_n_f32(a2[1], COERCE_FLOAT(*a5));
    v24.i32[3] = 0;
    a3[1] = v24;
  }

  else
  {
    v19 = *a1;
    v20 = vmulq_n_f32(*a2, COERCE_FLOAT(*a4));
    v20.i32[3] = 0;
    v21 = vmulq_n_f32(a2[1], COERCE_FLOAT(*a5));
    v21.i32[3] = 0;
    v39 = v20;
    v40 = v21;
    (*(*v19 + 216))(v19, v18, a13, &v39, a3);
    v23 = *a3;
    v24 = a3[1];
  }

  v25 = *a2;
  v26 = a2[1];
  v27 = *(a6 + 8);
  if (v27 == 0xFFFF)
  {
    v22.i32[0] = *(a6[1] + 12);
    v31 = vmulq_n_f32(*a7, vmul_f32(v22, *a11).f32[0]);
    v31.i32[3] = 0;
    *a8 = v31;
    v32 = vmulq_n_f32(a7[1], COERCE_FLOAT(*a12));
    v32.i32[3] = 0;
    a8[1] = v32;
  }

  else
  {
    v28 = *a6;
    v29 = vmulq_n_f32(*a7, COERCE_FLOAT(*a11));
    v29.i32[3] = 0;
    v30 = vmulq_n_f32(a7[1], COERCE_FLOAT(*a12));
    v30.i32[3] = 0;
    v39 = v29;
    v40 = v30;
    v37 = v24;
    v38 = v23;
    v35 = v26;
    v36 = v25;
    (*(*v28 + 216))(v28, v27, a13, &v39, a8);
    v26 = v35;
    v25 = v36;
    v24 = v37;
    v23 = v38;
    v31 = *a8;
    v32 = a8[1];
  }

  v33 = vaddq_f32(vaddq_f32(vmulq_f32(v23, v25), vmulq_f32(v24, v26)), vaddq_f32(vmulq_f32(v31, *a7), vmulq_f32(v32, a7[1])));
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  return vpadd_f32(*v33.f32, *v33.f32);
}

void physx::Dy::setupFinalizeExtSolverContacts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int32x2_t a10, int32x2_t a11, int32x2_t a12, int32x2_t a13, int32x2_t a14, int32x2_t a15, int32x2_t a16, uint64_t a17)
{
  _X26 = a5;
  v24 = vdup_lane_s32(a16, 0);
  v257[0] = v24;
  if (*(a6 + 16) == 0xFFFF)
  {
    v25 = *(*(a6 + 8) + 68);
  }

  else
  {
    v25 = (*(**a6 + 248))();
  }

  if (*(a7 + 16) == 0xFFFF)
  {
    v24.i32[0] = *(*(a7 + 8) + 68);
  }

  else
  {
    (*(**a7 + 248))();
  }

  if (v25 > *v24.i32)
  {
    *v24.i32 = v25;
  }

  v256 = vdup_lane_s32(v24, 0);
  v26.i64[0] = *(a3 + 16);
  v26.i64[1] = *(a3 + 24);
  v255 = v26;
  v26.i64[0] = *(a4 + 16);
  v26.i64[1] = *(a4 + 24);
  v254 = v26;
  physx::Dy::SolverExtBody::getVelocity(v253, a6);
  physx::Dy::SolverExtBody::getVelocity(&v252, a7);
  v251 = vdup_lane_s32(a11, 0);
  v250 = vdup_lane_s32(a13, 0);
  v249 = vdup_lane_s32(a12, 0);
  v248 = vdup_lane_s32(a14, 0);
  v247 = vdup_lane_s32(a15, 0);
  _X8 = a2 + 7556;
  __asm { PRFM            #0, [X8] }

  _X8 = a2 + 7684;
  __asm { PRFM            #0, [X8] }

  v246 = vdup_lane_s32(*&a9, 0);
  v245 = vdup_lane_s32(a10, 0);
  v35 = vdup_n_s32(0x3F4CCCCDu);
  v244 = vmul_n_f32(v35, *&a9);
  v36 = *(a2 + 7688);
  if (v36)
  {
    v37 = 0;
    v38 = 0;
    v39.i64[0] = 0;
    v39.i32[2] = 0;
    v39.i32[3] = vdupq_lane_s32(a13, 0).i32[3];
    v40.i64[0] = 0;
    v40.i64[1] = a11.u32[0];
    v195 = a2 + 7296;
    v191 = a2 + 2816;
    v192 = a3;
    v221 = a2 + 7424;
    v188 = vdup_n_s32(0x38D1B717u);
    v189 = vdup_n_s32(0x3F3504F3u);
    v41 = vorrq_s8(v39, v40);
    v198 = v35;
    v204 = a1;
    v208 = a2;
    do
    {
      v42 = *(v195 + 4 * v37);
      if (v42)
      {
        v43 = v191 + 104 * v37;
        v44 = a1 + (*(a2 + 44 * *(v221 + 4 * v37)) << 6);
        v45 = *(v44 + 48);
        v40.i32[0] = 1.0;
        if ((v45 & 4) != 0 && *(v43 + 2) == 2)
        {
          *v40.i32 = 0.5;
        }

        v46 = *(v44 + 44);
        v47 = *(v44 + 56);
        v39.i32[0] = *(v44 + 60);
        __asm
        {
          PRFM            #0, [X26,#0xD0]
          PRFM            #0, [X26,#0x150]
          PRFM            #0, [X26,#0x1D0]
        }

        _X26->i8[2] = v42;
        v205 = v191 + 104 * v37;
        if (v45)
        {
          v51 = 0;
        }

        else
        {
          v51 = 2 * *(v43 + 2);
        }

        v213 = v45;
        v217 = v42;
        v197 = v38;
        *v41.i32 = *v40.i32 * v46;
        *v40.i32 = *v40.i32 * v47;
        v41.i32[1] = vdupq_lane_s32(*&v40, 0).i32[1];
        _X26->i8[3] = v51;
        _X26->i16[0] = 3;
        v243 = vdup_lane_s32(*v39.i8, 0);
        v196 = v41.i64[1];
        _X26[1] = v41;
        _X26->i32[1] = a12.i32[0];
        _X26->i32[2] = a14.i32[0];
        v52 = *(v221 + 4 * v37);
        v53 = a1 + (*(a2 + 44 * v52) << 6);
        v55.i64[0] = *v53;
        v55.i32[2] = *(v53 + 8);
        v223 = _X26;
        i64 = _X26[5].i64;
        v55.i64[1] = v55.u32[2];
        v242 = v55;
        v56 = 0;
        if (v52 == 0xFFFF)
        {
          i8 = _X26[5].i8;
        }

        else
        {
          do
          {
            v58 = (a2 + 44 * v52);
            v59 = *(v58 + 5);
            v228 = v58;
            if (*(v58 + 5))
            {
              v60 = v204 + (*v58 << 6);
              do
              {
                i8 = (i64 + 112);
                *v55.i8 = physx::Dy::setupExtSolverContact(a6, a7, &v251, &v250, &v249, &v248, &v255, &v254, &v242, &v246, &v244, &v247, &v256, &v243, &v245, v60, i64, v257, a17, v253, &v252);
                v56 = vadd_f32(v56, *v55.i8);
                v60 += 64;
                i64 = i8;
                --v59;
              }

              while (v59);
            }

            else
            {
              i8 = i64;
            }

            v52 = v228[1];
            i64 = i8;
            a2 = v208;
          }

          while (v52 != 0xFFFF);
        }

        *v55.i32 = v217;
        v61 = vdup_lane_s32(*v55.i8, 0);
        v62 = vrecpe_f32(v61);
        v63 = 4;
        do
        {
          v62 = vmul_f32(v62, vrecps_f32(v61, v62));
          --v63;
        }

        while (v63);
        v64 = v242;
        v64.i32[3] = vmul_f32(v56, v62).i32[1];
        _X26[2] = v64;
        bzero(i8, 4 * v217);
        _X26 = &i8[4 * ((v217 + 3) & 0xFFFFFFFC)];
        v223[3].i32[1] = 0;
        v65 = v197;
        if (v213)
        {
          a1 = v204;
        }

        else
        {
          v66.i64[1] = v252.i64[1];
          v67 = vdup_lane_s32(*v242.i8, 1);
          *v68.i8 = vext_s8(0, vneg_f32(vdup_laneq_s32(v242, 2)), 4uLL);
          v68.i64[1] = v67.u32[0];
          v69 = vsubq_f32(v253[0], v252);
          *v66.i8 = vext_s8(vneg_f32(v67), *v242.i8, 4uLL);
          v70 = vmulq_f32(v242, v69);
          v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
          v71 = vmulq_n_f32(v242, vpadd_f32(*v70.f32, *v70.f32).f32[0]);
          v71.i32[3] = 0;
          v72 = vsubq_f32(v69, v71);
          v73 = vmulq_f32(v72, v72);
          v73.i64[0] = vpaddq_f32(v73, v73).u64[0];
          v74 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v73.f32, *v73.f32), v188), 0)), v72, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(v189, vabs_f32(vdup_lane_s32(*v242.i8, 0))), 0)), 0x1FuLL)), v68, v66));
          v75 = vmulq_f32(v74, v74);
          v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
          v76 = vpadd_f32(*v75.f32, *v75.f32);
          v77 = vrsqrte_f32(v76);
          v78 = 4;
          do
          {
            v77 = vmul_f32(v77, vrsqrts_f32(vmul_f32(v77, v77), v76));
            --v78;
          }

          while (v78);
          v79 = vbsl_s8(vdup_lane_s32(vceqz_f32(v76), 0), v76, vmul_f32(v76, v77));
          v80 = vrecpe_f32(v79);
          v81 = 4;
          a1 = v204;
          do
          {
            v80 = vmul_f32(v80, vrecps_f32(v79, v80));
            --v81;
          }

          while (v81);
          v82 = vmulq_n_f32(v74, v80.f32[0]);
          v39 = v82;
          v39.i32[3] = 0;
          v241 = v39;
          v39.i64[0] = vextq_s8(v39, v39, 8uLL).u64[0];
          v203 = vext_s8(*v82.f32, *v39.i8, 4uLL);
          v84 = vmls_f32(vmul_f32(*v242.i8, v203), *&vextq_s8(v242, v242, 4uLL), *v82.f32);
          v83 = vext_s8(v84, vmls_f32(vmul_f32(*&vextq_s8(v242, v242, 8uLL), *v82.f32), *v242.i8, *v39.i8), 4uLL);
          v84.i32[1] = 0;
          *v40.i8 = v83;
          v40.i64[1] = v84.u32[0];
          v240 = v40;
          v223[3].i64[1] = a8 + 104 * v197;
          if (*(v205 + 2))
          {
            v85 = 0;
            v199 = vneg_f32(*v82.f32);
            v200 = vneg_f32(*v39.i8);
            v86 = vext_s8(v83, v84, 4uLL);
            v87 = vneg_f32(v84);
            v201 = v83;
            v202 = v82.i64[0];
            v88 = vneg_f32(v83);
            do
            {
              v89 = v85;
              v90 = 3 * v85;
              v91 = (v205 + 40 + 12 * v85);
              v92 = *v91 + *v91;
              v93 = v91[1] + v91[1];
              v94 = v91[2] + v91[2];
              v96 = v192[2];
              v95 = v192[3];
              v97 = (v95 * v95) + -0.5;
              v98 = v192[1];
              v99 = ((v93 * v98) + (*v192 * v92)) + (v96 * v94);
              v100.f32[0] = ((v95 * ((v98 * v94) - (v96 * v93))) + (v92 * v97)) + (*v192 * v99);
              v100.f32[1] = ((v95 * ((v96 * v92) - (*v192 * v94))) + (v93 * v97)) + (v98 * v99);
              v101 = ((v95 * ((*v192 * v93) - (v98 * v92))) + (v94 * v97)) + (v96 * v99);
              v102 = v100;
              v102.f32[2] = v101;
              v103 = (v205 + 64 + 4 * v90);
              v104 = *v103 + *v103;
              v105 = v103[1] + v103[1];
              v106 = v103[2] + v103[2];
              v108 = *(a4 + 8);
              v107 = *(a4 + 12);
              v109 = (v107 * v107) + -0.5;
              v110 = *(a4 + 4);
              v111 = ((v105 * v110) + (*a4 * v104)) + (v108 * v106);
              v112 = ((v107 * ((v108 * v104) - (*a4 * v106))) + (v105 * v109)) + (v110 * v111);
              v113.f32[0] = ((v107 * ((v110 * v106) - (v108 * v105))) + (v104 * v109)) + (*a4 * v111);
              v114 = ((v107 * ((*a4 * v105) - (v110 * v104))) + (v106 * v109)) + (v108 * v111);
              v113.f32[1] = v112;
              v115 = v113;
              v115.f32[2] = v114;
              v116 = _X26;
              v117 = vextq_s8(v102, v102, 8uLL).u64[0];
              v118 = vext_s8(v100, v117, 4uLL);
              v210 = v117;
              v214 = v113;
              v218 = v100;
              v119 = vmla_f32(vmul_f32(*v82.f32, v117), v100, v200);
              v120 = vmla_f32(vmul_f32(v203, v100), v118, v199);
              v121 = v120.f32[0];
              *v122.f32 = vext_s8(v120, v119, 4uLL);
              v122.i64[1] = v120.u32[0];
              v123 = vextq_s8(v115, v115, 8uLL).u64[0];
              v124 = vext_s8(v113, v123, 4uLL);
              v209 = v123;
              v125 = vmla_f32(vmul_f32(v203, v113), v124, v199);
              *v126.f32 = vext_s8(v125, vmla_f32(vmul_f32(*v82.f32, v123), v113, v200), 4uLL);
              v126.i64[1] = v125.u32[0];
              v238 = v126;
              v239 = v122;
              if (*(a6 + 16) == -1)
              {
                v127 = *(a6 + 8);
                v128 = *(v127 + 44);
                v129 = vdupq_laneq_s32(v128, 3);
                v129.i32[1] = *(v127 + 60);
                v129.i32[2] = *(v127 + 64);
                v130 = vmulq_lane_f32(*(v127 + 32), v120, 1);
                v130.i32[3] = 0;
                v131 = vmulq_n_f32(v128, *v119.i32);
                v131.i32[3] = 0;
                v132 = vmulq_n_f32(v129, v121);
                v132.i32[3] = 0;
                v122 = vaddq_f32(vaddq_f32(v130, v131), v132);
              }

              v232 = v241;
              v233 = v122;
              v133 = vnegq_f32(v126);
              if (*(a7 + 16) == -1)
              {
                v134 = *(a7 + 8);
                v135 = *(v134 + 44);
                v136 = vdupq_laneq_s32(v135, 3);
                v136.i32[1] = *(v134 + 60);
                v136.i32[2] = *(v134 + 64);
                v137 = vmulq_n_f32(*(v134 + 32), v133.f32[0]);
                v137.i32[3] = 0;
                v138 = vmulq_lane_f32(v135, *v133.f32, 1);
                v138.i32[3] = 0;
                v139 = vmulq_laneq_f32(v136, v133, 2);
                v139.i32[3] = 0;
                v133 = vaddq_f32(vaddq_f32(v137, v138), v139);
              }

              else
              {
                v133.i32[3] = 0;
              }

              _X26 += 16;
              v140 = vaddq_f32(v254, v115);
              v224 = v241;
              v141 = vnegq_f32(v241);
              v141.i32[3] = 0;
              v229 = vsubq_f32(vaddq_f32(v102, v255), v140);
              v230 = v141;
              v231 = v133;
              ImpulseResponse = physx::Dy::getImpulseResponse(a6, &v232, &v236, &v251, &v249, a7, &v230, &v234, *v229.i64, *v140.f32, &v250, &v248, a17);
              v143 = vrecpe_f32(ImpulseResponse);
              v144 = 4;
              do
              {
                v143 = vmul_f32(v143, vrecps_f32(ImpulseResponse, v143));
                --v144;
              }

              while (v144);
              v145 = v204 + (*(a2 + 44 * *(v221 + 4 * v37)) << 6);
              v146.i64[0] = *(v145 + 32);
              v146.i64[1] = *(v145 + 40);
              v147 = v224;
              v148 = vmulq_f32(v224, v146);
              v148.i64[0] = vpaddq_f32(v148, v148).u64[0];
              v149 = vpadd_f32(*v148.f32, *v148.f32);
              if (*(a6 + 16) == -1)
              {
                v207 = v149;
                v151 = physx::Dy::SolverExtBody::projectVelocity(a6, &v241, &v239);
                v147 = v224;
                v149.i32[0] = vsub_f32(v207, v151).u32[0];
              }

              else if (*(a7 + 16) == -1)
              {
                v206 = v149;
                v150 = physx::Dy::SolverExtBody::projectVelocity(a7, &v241, &v238);
                v147 = v224;
                v149.i32[0] = vadd_f32(v206, v150).u32[0];
              }

              v152 = vdup_n_s32(0x3727C5ACu);
              v147.i32[3] = 0;
              *v116 = v147;
              v153 = v233;
              v153.i32[3] = vand_s8(vdup_lane_s32(vcgt_f32(ImpulseResponse, v152), 0), vmul_f32(v143, v198)).i32[1];
              v116[1] = v153;
              v154 = vnegq_f32(v231);
              v155 = vmulq_f32(v229, v241);
              v155.i64[0] = vpaddq_f32(v155, v155).u64[0];
              v154.i32[3] = vmul_f32(vpadd_f32(*&v155, *&v155), v246).i32[1];
              v116[2] = v154;
              v156 = v237;
              v116[4] = v236;
              v116[5] = v156;
              v159 = v235;
              v116[6] = v234;
              v116[7] = v159;
              v116[3].i32[0] = v149.i32[0];
              v157 = vmla_f32(vmul_f32(v201, v210), v218, v87);
              v158 = vmla_f32(vmul_f32(v86, v218), v118, v88);
              *v160.f32 = vext_s8(v158, v157, 4uLL);
              v159.i64[0] = v158.u32[0];
              v160.i64[1] = v158.u32[0];
              v161 = vmla_f32(vmul_f32(v86, v214), v124, v88);
              *v162.f32 = vext_s8(v161, vmla_f32(vmul_f32(v201, v209), v214, v87), 4uLL);
              v162.i64[1] = v161.u32[0];
              v238 = v162;
              v239 = v160;
              if (*(a6 + 16) == -1)
              {
                v163 = *(a6 + 8);
                v164 = *(v163 + 44);
                v165 = vdupq_laneq_s32(v164, 3);
                v165.i32[1] = *(v163 + 60);
                v165.i32[2] = *(v163 + 64);
                v166 = vmulq_lane_f32(*(v163 + 32), v158, 1);
                v166.i32[3] = 0;
                v167 = vmulq_n_f32(v164, *v157.i32);
                v167.i32[3] = 0;
                v159 = vmulq_n_f32(v165, v159.f32[0]);
                v159.i32[3] = 0;
                v160 = vaddq_f32(vaddq_f32(v166, v167), v159);
              }

              v232 = v240;
              v233 = v160;
              v168 = vnegq_f32(v162);
              v219 = v160;
              if (*(a7 + 16) == -1)
              {
                v169 = *(a7 + 8);
                v170 = *(v169 + 44);
                v171 = vdupq_laneq_s32(v170, 3);
                v171.i32[1] = *(v169 + 60);
                v171.i32[2] = *(v169 + 64);
                v172 = vmulq_n_f32(*(v169 + 32), v168.f32[0]);
                v172.i32[3] = 0;
                v159 = vmulq_lane_f32(v170, *v168.f32, 1);
                v159.i32[3] = 0;
                v173 = vmulq_laneq_f32(v171, v168, 2);
                v173.i32[3] = 0;
                v168 = vaddq_f32(vaddq_f32(v172, v159), v173);
              }

              else
              {
                v168.i32[3] = 0;
              }

              v225 = v240;
              v174 = vnegq_f32(v240);
              v174.i32[3] = 0;
              v230 = v174;
              v231 = v168;
              v215 = v168;
              v175 = physx::Dy::getImpulseResponse(a6, &v232, &v236, &v251, &v249, a7, &v230, &v234, *v174.i64, *v159.f32, &v250, &v248, a17);
              v176 = vrecpe_f32(v175);
              v177 = 4;
              do
              {
                v176 = vmul_f32(v176, vrecps_f32(v175, v176));
                --v177;
              }

              while (v177);
              v178 = v204 + (*(a2 + 44 * *(v221 + 4 * v37)) << 6);
              v179.i64[0] = *(v178 + 32);
              v179.i64[1] = *(v178 + 40);
              v180 = v225;
              v181 = vmulq_f32(v225, v179);
              v181.i64[0] = vpaddq_f32(v181, v181).u64[0];
              v182 = vpadd_f32(*v181.f32, *v181.f32);
              if (*(a6 + 16) == -1)
              {
                v212 = v182;
                v184 = physx::Dy::SolverExtBody::projectVelocity(a6, &v240, &v239);
                v180 = v225;
                v182.i32[0] = vsub_f32(v212, v184).u32[0];
              }

              else if (*(a7 + 16) == -1)
              {
                v211 = v182;
                v183 = physx::Dy::SolverExtBody::projectVelocity(a7, &v240, &v238);
                v180 = v225;
                v182.i32[0] = vadd_f32(v211, v183).u32[0];
              }

              v185 = vmulq_f32(v229, v180);
              v180.i32[3] = 0;
              v186 = v219;
              v186.i32[3] = vand_s8(vdup_lane_s32(vcgt_f32(v175, v152), 0), vmul_f32(v176, v198)).i32[1];
              v116[8] = v180;
              v116[9] = v186;
              v40 = vnegq_f32(v215);
              v185.i64[0] = vpaddq_f32(v185, v185).u64[0];
              v40.i32[3] = vmul_f32(vpadd_f32(*&v185, *&v185), v246).i32[1];
              v116[10] = v40;
              v187 = v237;
              v116[12] = v236;
              v116[13] = v187;
              v40.i32[1] = v234.i32[1];
              v39 = v235;
              v116[14] = v234;
              v116[15] = v39;
              v116[11].i32[0] = v182.i32[0];
              v85 = v89 + 1;
              v82.i64[0] = v202;
            }

            while (v89 + 1 < *(v205 + 2));
          }

          v65 = v197;
        }

        v38 = v65 + 1;
        v36 = *(a2 + 7688);
        v41.i64[1] = v196;
      }

      ++v37;
    }

    while (v37 < v36);
  }
}

uint64_t physx::Dy::setupFinalizeExtSolverContactsCoulomb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5, uint64_t a6, uint64_t a7, int a8, double a9, int32x2_t a10, int32x2_t a11, int32x2_t a12, int32x2_t a13, int32x2_t a14, int32x2_t a15, int32x2_t a16, uint64_t a17)
{
  _X24 = a5;
  v195 = *MEMORY[0x1E69E9840];
  v24 = vdup_lane_s32(a16, 0);
  v193 = v24;
  if (*(a6 + 16) == 0xFFFF)
  {
    v25 = *(*(a6 + 8) + 68);
  }

  else
  {
    v25 = (*(**a6 + 248))();
  }

  if (*(a7 + 16) == 0xFFFF)
  {
    v24.i32[0] = *(*(a7 + 8) + 68);
  }

  else
  {
    (*(**a7 + 248))();
  }

  if (v25 > *v24.i32)
  {
    *v24.i32 = v25;
  }

  *v24.i32 = *v24.i32 / *&a9;
  v191 = vdup_lane_s32(a15, 0);
  v192 = vdup_lane_s32(v24, 0);
  v190 = vdup_lane_s32(a10, 0);
  physx::Dy::SolverExtBody::getVelocity(&v188, a6);
  physx::Dy::SolverExtBody::getVelocity(&v186, a7);
  v185 = vdup_lane_s32(*&a9, 0);
  v26.i64[0] = *(a3 + 16);
  v26.i32[2] = *(a3 + 24);
  v184 = vmul_n_f32(vdup_n_s32(0x3F4CCCCDu), *&a9);
  v26.i64[1] = v26.u32[2];
  v27.i64[0] = *(a4 + 16);
  v27.i64[1] = *(a4 + 24);
  v182 = v27;
  v183 = v26;
  _X8 = a2 + 7556;
  __asm { PRFM            #0, [X8] }

  _X8 = a2 + 7684;
  __asm { PRFM            #0, [X8] }

  v36 = *(a2 + 7688);
  v181 = vdup_lane_s32(a11, 0);
  v180 = vdup_lane_s32(a13, 0);
  v179 = vdup_lane_s32(a12, 0);
  v178 = vdup_lane_s32(a14, 0);
  v150 = v36;
  if (v36)
  {
    v37 = 0;
    v149 = a2 + 7296;
    v148 = a2 + 7424;
    v141 = _X24;
    v153 = a2;
    do
    {
      v38 = *(v149 + 4 * v37);
      if (v38)
      {
        v167 = v37;
        v39 = *(v148 + 4 * v37);
        v40 = a1 + (*(a2 + 44 * v39) << 6);
        v41 = *(v40 + 8);
        v42 = (v40 + 60);
        v43 = vld1_dup_f32(v42);
        v44 = *v40;
        v45.i64[0] = *v40;
        v45.i64[1] = v41;
        v46 = &_X24[6];
        v177[0] = v45;
        __asm
        {
          PRFM            #0, [X24,#0xB0]
          PRFM            #0, [X24,#0x130]
          PRFM            #0, [X24,#0x1B0]
        }

        *v176[0].f32 = v43;
        _X24->i8[1] = v38;
        _X24->i8[0] = 3;
        v50 = vzip1_s32(v181, v180);
        _X24->i32[1] = a12.i32[0];
        _X24[5].i8[0] = 0;
        _X24[1] = v50;
        _X24[2] = v44;
        _X24[3].i32[0] = v41;
        for (_X24[3].i32[1] = a14.i32[0]; v39 != 0xFFFF; a2 = v153)
        {
          v51 = (a2 + 44 * v39);
          v52 = *(v51 + 5);
          v170 = v51;
          if (*(v51 + 5))
          {
            v53 = a1 + (*v51 << 6);
            do
            {
              v54 = v46 + 112;
              physx::Dy::setupExtSolverContact(a6, a7, &v181, &v180, &v179, &v178, &v183, &v182, v177, &v185, &v184, &v191, &v192, v176, &v190, v53, v46, &v193, a17, &v188, &v186);
              v53 += 64;
              v46 = v54;
              --v52;
            }

            while (v52);
          }

          else
          {
            v54 = v46;
          }

          v39 = v170[1];
          v46 = v54;
        }

        _X24 = v46;
        v37 = v167;
      }

      ++v37;
    }

    while (v37 != v150);
    v55 = 0;
    v171 = 0;
    v56 = v141;
    do
    {
      v57 = *(v149 + 4 * v55);
      if (v57)
      {
        v56->i16[1] = _X24 - v56;
        v147 = v56->u8[1];
        v58 = a1 + (*(v153 + 44 * *(v148 + 4 * v55)) << 6);
        v60 = *v58;
        v59 = *(v58 + 4);
        v61 = *(v58 + 8);
        v62 = *(v58 + 44);
        v63 = *(v58 + 48);
        _X24->i8[1] = v57;
        v64 = v57 * a8;
        if (v63)
        {
          v64 = 0;
        }

        _X24->i8[2] = v64;
        _X24->i8[3] = 0;
        v65 = _X24;
        v66 = _X24 + 4;
        v67 = (4 * v57);
        _X24 = (_X24 + ((v67 + 12) & 0xFFFFFFF0) + 32);
        bzero(v66, v67);
        __asm
        {
          PRFM            #0, [X24,#0x80]
          PRFM            #0, [X24,#0x100]
          PRFM            #0, [X24,#0x180]
        }

        v71 = fabsf(v60);
        v72 = 0.0;
        if (v71 >= 0.70711)
        {
          v73 = -v59;
        }

        else
        {
          v73 = 0.0;
        }

        if (v71 >= 0.70711)
        {
          v74 = v60;
        }

        else
        {
          v74 = -v61;
        }

        if (v71 >= 0.70711)
        {
          v75 = 0.0;
        }

        else
        {
          v75 = v59;
        }

        physx::Dy::SolverExtBody::getLinVel(v177, a6);
        physx::Dy::SolverExtBody::getLinVel(v176, a7);
        v76 = ((v59 * (v177[0].f32[1] - v176[0].f32[1])) + (v60 * (v177[0].f32[0] - v176[0].f32[0]))) + (v61 * (v177[0].f32[2] - v176[0].f32[2]));
        v77 = (v177[0].f32[2] - v176[0].f32[2]) - (v61 * v76);
        v78 = ((((v177[0].f32[1] - v176[0].f32[1]) - (v59 * v76)) * ((v177[0].f32[1] - v176[0].f32[1]) - (v59 * v76))) + (((v177[0].f32[0] - v176[0].f32[0]) - (v60 * v76)) * ((v177[0].f32[0] - v176[0].f32[0]) - (v60 * v76)))) + (v77 * v77);
        v79 = v78 <= 0.00001;
        if (v78 <= 0.00001)
        {
          v80 = v73;
        }

        else
        {
          v80 = (v177[0].f32[0] - v176[0].f32[0]) - (v60 * v76);
        }

        if (v79)
        {
          v81 = v74;
        }

        else
        {
          v81 = (v177[0].f32[1] - v176[0].f32[1]) - (v59 * v76);
        }

        if (v79)
        {
          v77 = v75;
        }

        v82 = ((v81 * v81) + (v80 * v80)) + (v77 * v77);
        v83 = 0.0;
        v84 = 0.0;
        if (v82 > 0.0)
        {
          v85 = 1.0 / sqrtf(v82);
          v84 = v80 * v85;
          v83 = v81 * v85;
          v72 = v77 * v85;
        }

        *v194 = v84;
        *&v194[1] = v83;
        *&v194[2] = v72;
        *&v194[3] = (v83 * v61) - (v72 * v59);
        *&v194[4] = (v72 * v60) - (v84 * v61);
        *&v194[5] = (v84 * v59) - (v83 * v60);
        if ((v63 & 1) == 0)
        {
          v65->i32[1] = v62;
          v65[1].i32[0] = a11.i32[0];
          v65[1].i32[1] = a13.i32[0];
          v65[2].i32[0] = a12.i32[0];
          v65[2].i32[1] = a14.i32[0];
          v65->i8[0] = 12;
          v86 = *(v148 + 4 * v55);
          if (v86 == 0xFFFF)
          {
            v171 = 1;
          }

          else
          {
            v140 = v55;
            v142 = v56;
            v87 = 0;
            do
            {
              v88 = (v153 + 44 * v86);
              v155 = *(v88 + 5);
              v151 = v88;
              if (*(v88 + 5))
              {
                v89 = 0;
                v154 = a1 + (*v88 << 6);
                v90 = _X24;
                do
                {
                  if (a8)
                  {
                    v91 = 0;
                    v92 = v154 + (v89 << 6);
                    v93.i64[0] = *(v92 + 16);
                    v93.i64[1] = *(v92 + 24);
                    v94.i64[0] = *(v92 + 32);
                    v94.i64[1] = *(v92 + 40);
                    v163 = v94;
                    v165 = vsubq_f32(v93, v183);
                    v95 = vextq_s8(v189, v189, 8uLL).u64[0];
                    v161 = vextq_s8(v165, v165, 4uLL).u64[0];
                    v162 = vextq_s8(v165, v165, 8uLL).u64[0];
                    v96 = vmls_f32(vmul_f32(v161, *v189.i8), vext_s8(*v189.i8, v95, 4uLL), *v165.i8);
                    *v97.f32 = vext_s8(v96, vmls_f32(vmul_f32(*v165.i8, v95), *v189.i8, v162), 4uLL);
                    v97.i64[1] = v96.u32[0];
                    v98 = vsubq_f32(v93, v182);
                    v156 = vaddq_f32(v188, v97);
                    v94.i64[0] = vextq_s8(v187, v187, 8uLL).u64[0];
                    v158 = vextq_s8(v98, v98, 4uLL).u64[0];
                    v159 = vextq_s8(v98, v98, 8uLL).u64[0];
                    v160 = *v98.i8;
                    v99 = vmls_f32(vmul_f32(v158, *v187.i8), vext_s8(*v187.i8, *v94.f32, 4uLL), *v98.i8);
                    *v100.f32 = vext_s8(v99, vmls_f32(vmul_f32(*v98.i8, *v94.f32), *v187.i8, v159), 4uLL);
                    v100.i64[1] = v99.u32[0];
                    v157 = vaddq_f32(v186, v100);
                    do
                    {
                      v101 = &v194[3 * v87];
                      v102 = *v101;
                      *v103.f32 = *v101;
                      v103.i64[1] = v101[1].u32[0];
                      v104 = vextq_s8(v103, v103, 8uLL).u64[0];
                      v105 = vext_s8(*v101, v104, 4uLL);
                      v106 = vmls_f32(vmul_f32(v162, *v101), *v165.i8, v104);
                      v107 = vmls_f32(vmul_f32(*v165.i8, v105), v161, *v101);
                      v108 = v107.u32[0];
                      if (*(a6 + 16) == -1)
                      {
                        v110 = *(a6 + 8);
                        v111 = *(v110 + 44);
                        v112 = vdupq_laneq_s32(v111, 3);
                        v112.i32[1] = *(v110 + 60);
                        v112.i32[2] = *(v110 + 64);
                        v113 = vmulq_lane_f32(*(v110 + 32), v107, 1);
                        v113.i32[3] = 0;
                        v114 = vmulq_n_f32(v111, *v106.i32);
                        v114.i32[3] = 0;
                        v115 = vmulq_n_f32(v112, *&v108);
                        v115.i32[3] = 0;
                        v109 = vaddq_f32(vaddq_f32(v113, v114), v115);
                      }

                      else
                      {
                        *v109.f32 = vext_s8(v107, v106, 4uLL);
                        v109.i64[1] = v108;
                      }

                      v116 = vmls_f32(vmul_f32(v160, v105), v158, v102);
                      *v117.f32 = vext_s8(v116, vmls_f32(vmul_f32(v159, v102), v160, v104), 4uLL);
                      v117.i64[1] = v116.u32[0];
                      v175[0] = v103;
                      v175[1] = v109;
                      v118 = vnegq_f32(v117);
                      v168 = v109;
                      if (*(a7 + 16) == -1)
                      {
                        v119 = *(a7 + 8);
                        v120 = *(v119 + 44);
                        v121 = vdupq_laneq_s32(v120, 3);
                        v121.i32[1] = *(v119 + 60);
                        v121.i32[2] = *(v119 + 64);
                        v122 = vmulq_n_f32(*(v119 + 32), v118.f32[0]);
                        v122.i32[3] = 0;
                        v123 = vmulq_lane_f32(v120, *v118.f32, 1);
                        v123.i32[3] = 0;
                        v124 = vmulq_laneq_f32(v121, v118, 2);
                        v124.i32[3] = 0;
                        v118 = vaddq_f32(vaddq_f32(v122, v123), v124);
                      }

                      else
                      {
                        v118.i32[3] = 0;
                      }

                      v125 = vnegq_f32(v103);
                      v125.i32[3] = 0;
                      v173 = v125;
                      v174 = v118;
                      v172 = v103;
                      ImpulseResponse = physx::Dy::getImpulseResponse(a6, v175, v177, &v181, &v179, a7, &v173, v176, *v118.i64, *v125.f32, &v180, &v178, a17);
                      v127 = v172;
                      v128 = vmulq_f32(v163, v172);
                      v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
                      v129 = COERCE_DOUBLE(vpadd_f32(*v128.f32, *v128.f32));
                      if (*(a6 + 16) == -1)
                      {
                        v132 = vmulq_f32(v156, v172);
                        v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
                        LODWORD(v129) = vadd_f32(*&v129, vpadd_f32(*v132.f32, *v132.f32)).u32[0];
                      }

                      else
                      {
                        v130 = vmulq_f32(v157, v172);
                        v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
                        v131 = COERCE_DOUBLE(vsub_f32(*&v129, vpadd_f32(*v130.f32, *v130.f32)));
                        if (*(a7 + 16) == -1)
                        {
                          v129 = v131;
                        }
                      }

                      v133 = v168;
                      _X24 = v90 + 16;
                      v87 = 1 - v87;
                      v134 = vrecpe_f32(ImpulseResponse);
                      v135 = 4;
                      do
                      {
                        v134 = vmul_f32(v134, vrecps_f32(ImpulseResponse, v134));
                        --v135;
                      }

                      while (v135);
                      v133.i32[3] = vand_s8(vdup_lane_s32(vcgtz_f32(ImpulseResponse), 0), *&v134).i32[1];
                      *v90[2].i8 = v133;
                      v136 = vnegq_f32(v174);
                      v136.i32[3] = 0;
                      *v90[4].i8 = v136;
                      v127.i32[3] = 0;
                      *v90->i8 = v127;
                      v90[6].i32[0] = LODWORD(v129);
                      v137 = v177[1];
                      *v90[8].i8 = v177[0];
                      *v90[10].i8 = v137;
                      v138 = v176[1];
                      *v90[12].i8 = v176[0];
                      *v90[14].i8 = v138;
                      ++v91;
                      v90 += 16;
                    }

                    while (v91 != a8);
                  }

                  else
                  {
                    _X24 = v90;
                  }

                  ++v89;
                  v90 = _X24;
                }

                while (v89 != v155);
              }

              v86 = v151[1];
            }

            while (v86 != 0xFFFF);
            v171 = 1;
            v55 = v140;
            v56 = v142;
          }
        }

        v56 += 14 * v147 + 6;
      }

      ++v55;
    }

    while (v55 != v150);
  }

  else
  {
    v171 = 0;
  }

  return v171 & 1;
}

float32_t physx::Dy::ArticulationHelper::createHardLimit(uint64_t a1, uint64_t a2, unsigned int a3, float32x4_t *a4, float *a5, float a6, float32x4_t a7)
{
  v9 = a7.f32[0];
  a4->i64[0] = 0;
  a4->i32[2] = 0;
  a4[1].i64[0] = 0;
  a4[1].i32[2] = 0;
  v11 = *a5;
  a7.f32[0] = a5[1];
  a4[2].f32[0] = *a5;
  a4[2].i32[1] = a7.i32[0];
  v12 = *(a5 + 2);
  a4[2].i32[2] = v12;
  a4[3].f32[0] = v11;
  a4[3].i32[1] = a7.i32[0];
  a4[3].i32[2] = v12;
  a4[5].i64[0] = 0x7F7FFFFF00000000;
  a4[5].i64[1] = 0;
  v13 = *(a2 + 40 * a3 + 32);
  a7.i64[0] = *a5;
  v14.i64[0] = vnegq_f32(a7).u64[0];
  a7.i64[1] = *(a5 + 2);
  v23[0] = 0u;
  v23[1] = a7;
  v14.f32[2] = -a7.f32[2];
  v14.i32[3] = 0;
  v22[0] = 0u;
  v22[1] = v14;
  physx::Dy::ArticulationHelper::getImpulseSelfResponse(a1, v13, v23, a4 + 6, a3, v22, a4 + 8);
  v18 = (((a5[1] * a4[7].f32[1]) + (*a5 * a4[7].f32[0])) + (a5[2] * a4[7].f32[2])) - (((a5[1] * a4[9].f32[1]) + (*a5 * a4[9].f32[0])) + (a5[2] * a4[9].f32[2]));
  if (v18 < 0.0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyArticulationHelper.cpp", 345, "Warning: articulation ill-conditioned or under severe stress, joint limit ignored", v15, v16, v17, v22[0].i8[0]);
  }

  v19 = 1.0 / v18;
  v20 = 0.0;
  if (v18 <= 0.0)
  {
    v19 = 0.0;
  }

  a4->f32[3] = -(a6 * v19) * v9;
  if (a6 > 0.0)
  {
    v20 = -(a6 * v19) * v9;
  }

  a4[1].f32[3] = v20;
  result = -v19;
  a4[2].f32[3] = result;
  a4[3].i32[3] = 1065353216;
  return result;
}

BOOL physx::Cm::ConeLimitHelper::getLimit(float32x2_t *a1, uint64_t a2, float *a3, float *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = *(a2 + 12);
  _D4 = *(a2 + 4);
  v13 = vrev64_s32(_D4);
  *&a10 = v11 + 1.0;
  v14 = COERCE_DOUBLE(vdiv_f32(v13, vdup_lane_s32(*&a10, 0)));
  v15 = vbsl_s8(vcltz_f32(v13), vdup_n_s32(0xDF7FFFFF), vdup_n_s32(0x5F7FFFFFu));
  if (v11 == -1.0)
  {
    v16 = *&v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = vabs_f32(*&v16);
  v15.i32[0] = a1[1].i32[0];
  v18 = *a1;
  __asm { FMOV            V16.2S, #1.0 }

  v24 = vdiv_f32(vdiv_f32(vadd_f32(v17, vdup_lane_s32(v15, 0)), vmls_lane_f32(_D16, v17, v15, 0)), *a1);
  v25 = vaddv_f32(vmul_f32(v24, v24));
  if (v25 > 1.0)
  {
    v26 = *a2;
    _S19 = v11 + v11;
    v28 = ((v11 * (v11 + v11)) + -1.0) + (v26 * (v26 + v26));
    __asm { FMLA            S3, S19, V4.S[1] }

    v30 = vmuls_lane_f32(v26 + v26, _D4, 1) - (_S19 * _D4.f32[0]);
    if (v18.f32[0] >= v18.f32[1])
    {
      if (v17.f32[1] < 0.000001)
      {
        if (*&v16 <= 0.0)
        {
          *&v16 = -v18.f32[0];
        }

        else
        {
          LODWORD(v16) = *a1;
        }

        v31 = 0.0;
        goto LABEL_23;
      }
    }

    else if (v17.f32[0] < 0.000001)
    {
      if (*(&v16 + 1) >= 0.0)
      {
        v31 = -v18.f32[1];
      }

      else
      {
        LODWORD(v31) = HIDWORD(*a1);
      }

      LODWORD(v16) = 0;
LABEL_23:
      v18.f32[0] = *&v16 / vmul_f32(v18, v18).f32[0];
      v44 = -v31 / (v18.f32[1] * v18.f32[1]);
      v45 = (v31 * v31) + (*&v16 * *&v16);
      v46 = 1.0 / (v45 + 1.0);
      v47 = ((1.0 - v45) + (1.0 - v45)) * (v46 * v46);
      v48 = *&v16 + *&v16;
      v49 = v31 + v31;
      v50 = (*&v16 + *&v16) * v47;
      v51 = (v31 + v31) * v47;
      v52 = ((1.0 - v45) * v47) + -1.0;
      v53 = (0.0 - (v31 * v44)) + (*&v16 * v18.f32[0]);
      v54 = v46 * ((v46 * v46) * ((3.0 - v45) * (v53 * -4.0)));
      v55 = ((1.0 - v45) * v54) - ((v53 + v53) * v47);
      v56 = ((v18.f32[0] + v18.f32[0]) * v47) + (v48 * v54);
      v57 = (v49 * v54) - ((v44 + v44) * v47);
      v58 = (v50 * v57) - (v51 * v56);
      v59 = (v51 * v55) - (v52 * v57);
      v60 = (v52 * v56) - (v50 * v55);
      v61 = 1.0 / sqrtf(((v56 * v56) + (v55 * v55)) + (v57 * v57));
      v62 = v58 * v61;
      v63 = v59 * v61;
      v64 = v60 * v61;
      *a3 = v62;
      a3[1] = v63;
      a3[2] = v64;
      *a4 = ((_S3 * ((v51 * v62) - (v52 * v64))) + (((v50 * v64) - (v51 * v63)) * v28)) + (((v52 * v63) - (v50 * v62)) * v30);
      return v25 > 1.0;
    }

    v32 = vmul_f32(v18, v18);
    v33 = vmul_f32(v17, v18);
    v34 = vsub_f32(v33, v32);
    v10.i32[0] = v34.i32[1];
    if (v34.f32[0] > v34.f32[1])
    {
      *v10.i32 = v34.f32[0];
    }

    v35 = 20;
    while (1)
    {
      _D20 = vdiv_f32(_D16, vadd_f32(v32, vdup_lane_s32(v10, 0)));
      v37 = vmul_f32(v33, _D20);
      v38 = vmul_f32(v37, v37);
      v39 = vaddv_f32(v38) + -1.0;
      if (v39 < 0.0001)
      {
        break;
      }

      _S27 = v38.i32[1];
      __asm { FMLA            S26, S27, V20.S[1] }

      *v10.i32 = *v10.i32 + (v39 / (_S26 + _S26));
      if (!--v35)
      {
        *(&v16 + 1) = -*(&v16 + 1);
        v42 = vmul_f32(vmul_f32(*&v16, v32), _D20);
        v16 = COERCE_DOUBLE(vdiv_f32(v42, v18));
        v43 = 1.0 / sqrtf(vaddv_f32(vmul_f32(*&v16, *&v16)));
        *&v16 = v43 * v42.f32[0];
        v31 = vmuls_lane_f32(v43, v42, 1);
        goto LABEL_23;
      }
    }

    LODWORD(v16) = vmul_f32(vmul_f32(*&v16, v32), _D20).u32[0];
    v31 = vmuls_lane_f32(vmuls_lane_f32(-*(&v16 + 1), v32, 1), _D20, 1);
    goto LABEL_23;
  }

  return v25 > 1.0;
}

uint64_t physx::Dy::ArticulationV::addBody(uint64_t this)
{
  v1 = this;
  memset(v4, 0, sizeof(v4));
  v2 = *(this + 152);
  if ((*(this + 156) & 0x7FFFFFFFu) <= v2)
  {
    this = physx::shdfnd::Array<physx::Cm::SpatialVector,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVector>>::growAndPushBack(this + 144, v4);
  }

  else
  {
    v3 = (*(this + 144) + 32 * v2);
    *v3 = 0uLL;
    v3[1] = 0uLL;
    *(this + 152) = v2 + 1;
  }

  *(v1 + 160) = 1;
  return this;
}

void physx::Dy::Articulation::onUpdateSolverDesc(void **this)
{
  bzero(this[25], (48 * *(this + 52)));
  v2 = this[23];
  v3 = (48 * *(this + 52));

  bzero(v2, v3);
}

uint64_t physx::shdfnd::Array<physx::Cm::SpatialVector,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVector>>::growAndPushBack(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVector>::allocate(a1, 32 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = (v6 + 32 * v7);
  v9 = *a1;
  if (v7)
  {
    v10 = *a1;
    v11 = v6;
    do
    {
      *v11 = *v10;
      v11[1] = v10[1];
      v11 += 2;
      v10 += 2;
    }

    while (v11 < v8);
  }

  *v8 = *a2;
  v8[1] = a2[1];
  if ((*(a1 + 12) & 0x80000000) == 0 && v9)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(a1 + 8);
  }

  *a1 = v6;
  *(a1 + 8) = v7 + 1;
  *(a1 + 12) = v5;
  return v6 + 32 * v7;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVector>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVector>::getName() [T = physx::Cm::SpatialVector]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<char>::allocate(result, a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = v4;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
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

uint64_t physx::shdfnd::ReflectionAllocator<char>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<char>::getName() [T = char]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::shdfnd::aos::Mat33V,physx::shdfnd::ReflectionAllocator<physx::shdfnd::aos::Mat33V>>::recreate(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 48 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::aos::Mat33V>::getName() [T = physx::shdfnd::aos::Mat33V]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 48 * v9;
    v12 = result;
    do
    {
      v13 = *v10;
      v14 = v10[2];
      v12[1] = v10[1];
      v12[2] = v14;
      *v12 = v13;
      v12 += 3;
      v10 += 3;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = v2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxTransform>::allocate(result, 28 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = v4 + 28 * v5;
    v8 = *v3;
    v9 = v4;
    do
    {
      *v9 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *(v9 + 24) = *(v8 + 24);
      v9 += 28;
      v8 += 28;
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxTransform>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTransform>::getName() [T = physx::PxTransform]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxQuat,physx::shdfnd::ReflectionAllocator<physx::PxQuat>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxQuat>::allocate(result, 16 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v8 = *v3;
    v9 = v4;
    do
    {
      v10 = *v8++;
      *v9++ = v10;
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxQuat>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxQuat>::getName() [T = physx::PxQuat]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Cm::SpatialVectorV,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorV>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 32 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorV>::getName() [T = physx::Cm::SpatialVectorV]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 32 * v9;
    v12 = result;
    do
    {
      *v12 = *v10;
      v12[1] = v10[1];
      v12 += 2;
      v10 += 2;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

void physx::Dy::PxvRegisterArticulationsReducedCoordinate(physx::Dy *this)
{
  physx::Dy::ArticulationPImpl::sComputeUnconstrainedVelocities = physx::Dy::FeatherstoneArticulation::computeUnconstrainedVelocities;
  physx::Dy::ArticulationPImpl::sUpdateBodies = physx::Dy::FeatherstoneArticulation::updateBodies;
  physx::Dy::ArticulationPImpl::sUpdateBodiesTGS[0] = physx::Dy::FeatherstoneArticulation::updateBodiesTGS;
  physx::Dy::ArticulationPImpl::sSaveVelocity[0] = physx::Dy::FeatherstoneArticulation::saveVelocity;
  physx::Dy::ArticulationPImpl::sSaveVelocityTGS = physx::Dy::FeatherstoneArticulation::saveVelocityTGS;
  physx::Dy::ArticulationPImpl::sUpdateDeltaMotion[0] = physx::Dy::FeatherstoneArticulation::recordDeltaMotion;
  physx::Dy::ArticulationPImpl::sDeltaMotionToMotionVel = physx::Dy::FeatherstoneArticulation::deltaMotionToMotionVelocity;
  physx::Dy::ArticulationPImpl::sComputeUnconstrainedVelocitiesTGS = physx::Dy::FeatherstoneArticulation::computeUnconstrainedVelocitiesTGS;
  physx::Dy::ArticulationPImpl::sSetupInternalConstraintsTGS = physx::Dy::FeatherstoneArticulation::setupSolverConstraintsTGS;
  physx::Dy::SolverCoreRegisterArticulationFns(this);

  physx::Dy::SolverCoreRegisterArticulationFnsCoulomb(v1);
}

uint64_t physx::Dy::FeatherstoneArticulation::computeUnconstrainedVelocities(uint64_t *a1, float a2, uint64_t a3, uint64_t a4, _DWORD *a5, float32x2_t *a6, uint64_t a7, float *a8, float32x2_t *a9)
{
  v11 = *a1;
  *(v11 + 648) = a2;
  physx::Dy::FeatherstoneArticulation::computeUnconstrainedVelocitiesInternal(v11, a6, a8, a9);
  v12 = **(v11 + 664);
  v13 = *(v11 + 608);
  v14 = *(v11 + 616);
  *a5 = 0;
  v15.i32[0] = *(v11 + 648);
  v16.f32[0] = 1.0 / v15.f32[0];
  v17.i32[0] = 1.0;
  v18.i32[0] = v15.i32[0];
  physx::Dy::FeatherstoneArticulation::setupInternalConstraints(v11, v13, v14, v12 & 1, v11 + 176, a8, 0, v15, v18, v16, v17, v19, v20, v21, v22);
  return 0;
}

uint64_t physx::Dy::FeatherstoneArticulation::saveVelocity(uint64_t *a1, float32x2_t *a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if (*(*a1 + 685) == 1)
  {
    physx::Dy::PxcFsFlushVelocity(*a1, a2, a3, a4, a5);
  }

  memcpy(*(v6 + 304), *(v6 + 320), (32 * *(v6 + 616)));
  result = memcpy(*(v6 + 288), *(v6 + 240), (4 * *(v6 + 652)));
  v8 = *a1;
  v9 = *(v8 + 880);
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      result = *(v8 + 872) + 48 * i;
      v11 = *(result + 32);
      v12 = *v11;
      if (v12 == 3)
      {
        result = physx::Dy::concludeContact(result);
        v9 = *(v8 + 880);
      }

      else
      {
        v13 = v11[1];
        if (v11[1])
        {
          if (v12 == 4)
          {
            v14 = 160;
          }

          else
          {
            v14 = 96;
          }

          v15 = v11 + 76;
          do
          {
            *(v15 - 4) = *v15;
            v15 = (v15 + v14);
            --v13;
          }

          while (v13);
        }
      }
    }
  }

  return result;
}

void physx::Dy::FeatherstoneArticulation::recordDeltaMotion(uint64_t *a1, float32x2_t *a2, int8x16_t _Q0, double _D1, int8x16_t _Q2, float a6, float a7, float a8)
{
  v8 = *_Q0.i32;
  v9 = *a1;
  v10 = *(*a1 + 616);
  v233 = _Q0.u32[0];
  v228 = v10;
  if (*(*a1 + 685) == 1)
  {
    physx::Dy::PxcFsFlushVelocity(v9, a2, *_Q0.i64, _D1, *_Q2.i64);
    v10 = v228;
    v8 = *&v233;
  }

  v11 = *(v9 + 432);
  v12 = *(v9 + 320);
  v13 = *(v9 + 256);
  v14 = *(v9 + 224);
  v15 = *(v9 + 240);
  *_Q0.i32 = *(v9 + 728) + v8;
  *(v9 + 728) = _Q0.i32[0];
  *(v9 + 648) = v8;
  v226 = v12;
  v227 = v11;
  v224 = v14;
  v225 = v13;
  if ((**(v9 + 664) & 1) == 0)
  {
    v16 = *(v9 + 696);
    v18 = v16->f32[0];
    v17 = v16->f32[1];
    v19 = v16[1].f32[0];
    v20 = v16[1].f32[1];
    v21 = vadd_f32(v16[2], vmul_n_f32(v12[2], v8));
    v22 = v16[3].f32[0] + (v12[3].f32[0] * v8);
    v23 = v12->f32[0] * v8;
    v24 = v12->f32[1] * v8;
    v25 = v12[1].f32[0] * v8;
    v26 = ((v24 * v24) + (v23 * v23)) + (v25 * v25);
    if (v26 >= 1.0e-24)
    {
      v29 = sqrtf(v26);
      v30 = v23 * (1.0 / v29);
      v31 = v24 * (1.0 / v29);
      v229 = v25 * (1.0 / v29);
      v32 = __sincosf_stret(v29 * 0.5);
      cosval = v32.__cosval;
      v14 = v224;
      v13 = v225;
      v12 = v226;
      v11 = v227;
      v10 = v228;
      v8 = *&v233;
      *_Q2.i32 = v32.__sinval * v30;
      v28 = v32.__sinval * v31;
      *_Q0.i32 = v32.__sinval * v229;
    }

    else
    {
      cosval = 1.0;
      _Q2.i32[0] = 0;
      v28 = 0.0;
      _Q0.i32[0] = 0;
    }

    v33 = (((v20 * *_Q2.i32) + (cosval * v18)) + (v28 * v19)) - (v17 * *_Q0.i32);
    a8 = (((v20 * v28) + (cosval * v17)) + (*_Q0.i32 * v18)) - (v19 * *_Q2.i32);
    v34 = (((v20 * *_Q0.i32) + (cosval * v19)) + (*_Q2.i32 * v17)) - (v18 * v28);
    v35 = (((cosval * v20) - (*_Q2.i32 * v18)) - (v28 * v17)) - (*_Q0.i32 * v19);
    v16->f32[0] = v33;
    v16->f32[1] = a8;
    v16[1].f32[0] = v34;
    v16[1].f32[1] = v35;
    v16[2] = v21;
    v16[3].f32[0] = v22;
    v36 = *(v9 + 448);
    v37 = v36[1];
    v38 = v36[2];
    v39 = v36[3];
    v40 = (((v33 * v39) - (v35 * *v36)) - (a8 * v38)) + (v37 * v34);
    v41 = (((a8 * v39) - (v35 * v37)) - (v34 * *v36)) + (v38 * v33);
    v42 = (((v34 * v39) - (v35 * v38)) - (v33 * v37)) + (*v36 * a8);
    a7 = v33 * *v36;
    v43 = ((a7 + (v35 * v39)) + (a8 * v37)) + (v34 * v38);
    if (v43 < 0.0)
    {
      v40 = -v40;
      v41 = -v41;
      v42 = -v42;
      v43 = -v43;
    }

    v44 = *(v9 + 712);
    *v44 = v40;
    v44[1] = v41;
    v44[2] = v42;
    v44[3] = v43;
    *&_D1 = v12[3].f32[0] * v8;
    v45 = vadd_f32(vmul_n_f32(*v12, v8), *v11);
    a6 = v11[1].f32[0];
    v11[1].f32[0] = (v12[1].f32[0] * v8) + a6;
    *_Q0.i8 = vmul_n_f32(v12[2], v8);
    *v11 = v45;
    *_Q2.i8 = v11[2];
    v11[2] = vadd_f32(*_Q0.i8, *_Q2.i8);
    *_Q0.i32 = *&_D1 + v11[3].f32[0];
    v11[3].i32[0] = _Q0.i32[0];
  }

  if (v10 >= 2)
  {
    v46 = *(v9 + 696);
    v47 = 1;
    v48 = 84;
    v49 = -0.5;
    while (1)
    {
      v50 = *(v9 + 632) + 80 * v47;
      v51 = *(v9 + 608) + 40 * v47;
      v52 = (v46 + 28 * *(v51 + 32));
      v53 = *(v9 + 512);
      v54 = (v53 + 76 * v47);
      v55 = *(v50 + 72);
      _Q21 = *(*(v9 + 592) + 16 * v47);
      v57 = *(v51 + 24);
      v58 = (v14 + 4 * v55);
      v59 = (v15 + 4 * v55);
      v60 = (v13 + 4 * v55);
      v62 = *(v57 + 44);
      v61 = *(v57 + 48);
      v63 = *(v57 + 52);
      v65 = *(v57 + 16);
      v64 = *(v57 + 20);
      v66 = *(v57 + 24);
      v67 = *(v57 + 270);
      if (v67 <= 1)
      {
        if (*(v57 + 270))
        {
          if (v67 == 1)
          {
            v68 = *v60 + ((*v58 + *v59) * v8);
            v230 = *(*(v9 + 592) + 16 * v47);
            v69 = *(v9 + 632) + 80 * v47;
            v70 = v48;
            if (*(v57 + 329) == 1)
            {
              v71 = v57 + 8 * *(v57 + 252);
              if (v68 < *(v71 + 56))
              {
                v68 = *(v71 + 56);
              }

              if (v68 > *(v71 + 60))
              {
                v68 = *(v71 + 60);
              }
            }

            *v60 = v68;
            *v58 = *v59 + *v58;
            *v59 = 0.0;
            v72 = __sincosf_stret(v68 * v49);
            *&_D1 = v72.__cosval;
            *_Q2.i8 = vmul_n_f32(*v54, v72.__sinval);
            *_Q2.i8 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, *&_D1), 0), vneg_f32(*_Q2.i8), *_Q2.i8);
            *_Q0.i32 = -(v72.__sinval * v54[1].f32[0]);
            if (v72.__cosval < 0.0)
            {
              *&_D1 = -v72.__cosval;
            }

            else
            {
              *_Q0.i32 = v72.__sinval * v54[1].f32[0];
            }

            _V16.D[1] = *(&v230 + 1);
            _S6 = DWORD2(v230);
            __asm { FMLA            S4, S6, V2.S[1] }

            _S7 = DWORD1(v230);
            __asm
            {
              FMLS            S4, S0, V16.S[1]
              FMLA            S3, S1, V16.S[1]
            }

            v83 = (_S3 + (*_Q0.i32 * *&v230)) - (*_Q2.i32 * *(&v230 + 2));
            __asm { FMLA            S6, S1, V16.S[2] }

            v85 = (_S6 + (*_Q2.i32 * *(&v230 + 1))) - (*&_Q2.i32[1] * *&v230);
            __asm
            {
              FMLA            S6, S1, V16.S[3]
              FMLS            S6, S7, V2.S[1]
              FMLS            S6, S0, V16.S[2]
            }

            v89 = sqrtf((((v83 * v83) + (_S4 * _S4)) + (v85 * v85)) + (_S6 * _S6));
            _Q21.f32[0] = _S4 / v89;
            *_Q0.i32 = v83 / v89;
            *_Q2.i32 = v85 / v89;
            *&_D1 = _S6 / v89;
            v90 = v49 + (*&_D1 * *&_D1);
            v91 = (((v64 + v64) * *_Q0.i32) + (_Q21.f32[0] * (v65 + v65))) + (*_Q2.i32 * (v66 + v66));
            a6 = (((*&_D1 * ((*_Q0.i32 * (v66 + v66)) - (*_Q2.i32 * (v64 + v64)))) + ((v65 + v65) * v90)) + (_Q21.f32[0] * v91)) - v62;
            a7 = (((*&_D1 * ((*_Q2.i32 * (v65 + v65)) - (_Q21.f32[0] * (v66 + v66)))) + ((v64 + v64) * v90)) + (*_Q0.i32 * v91)) - v61;
            a8 = (((*&_D1 * ((_Q21.f32[0] * (v64 + v64)) - (*_Q0.i32 * (v65 + v65)))) + ((v66 + v66) * v90)) + (*_Q2.i32 * v91)) - v63;
            v8 = *&v233;
            v11 = v227;
            v10 = v228;
            v13 = v225;
            v12 = v226;
            v14 = v224;
            v48 = v70;
            v50 = v69;
          }
        }

        else
        {
          v101 = *v60 + ((*v58 + *v59) * v8);
          v102 = *(v57 + 252);
          if (*(v57 + v102 + 258) == 1)
          {
            v103 = v57 + 8 * v102;
            v104 = *(v103 + 56);
            if (v101 >= v104)
            {
              v104 = *v60 + ((*v58 + *v59) * v8);
            }

            if (v104 > *(v103 + 60))
            {
              v101 = *(v103 + 60);
            }

            else
            {
              v101 = v104;
            }
          }

          *v60 = v101;
          *v58 = *v59 + *v58;
          *v59 = 0.0;
          _S4 = v65 + v65;
          _S6 = v66 + v66;
          LODWORD(_D1) = _Q21.i32[3];
          __asm { FMLA            S7, S1, V21.S[3] }

          _Q0.i32[0] = _Q21.i32[1];
          _Q2.i32[0] = _Q21.i32[2];
          __asm
          {
            FMLA            S16, S6, V21.S[2]
            FMLA            S17, S6, V21.S[1]
            FMLA            S18, S4, V21.S[2]
            FMLA            S18, S16, V21.S[1]
            FMLA            S4, S16, V21.S[2]
          }

          v113 = ((vmuls_lane_f32(_S17, _Q21, 3) + ((v65 + v65) * _S7)) + (_Q21.f32[0] * _S16)) - v62;
          v114 = _S4 - v63;
          v115 = (v53 + 76 * v47);
          v116 = v101 * v115[4];
          v117 = v101 * v115[5];
          a6 = v113 + (v101 * v115[3]);
          a7 = (_S18 - v61) + v116;
          a8 = v114 + v117;
        }

        goto LABEL_52;
      }

      if (v67 == 2)
      {
        break;
      }

      if (v67 == 3)
      {
        _S3 = v65 + v65;
        _S5 = v66 + v66;
        LODWORD(_D1) = HIDWORD(*(*(v9 + 592) + 16 * v47));
        __asm { FMLA            S6, S1, V21.S[3] }

        _Q0.i32[0] = HIDWORD(*(*(v9 + 592) + 16 * v47));
        _Q2.i32[0] = *(*(v9 + 592) + 16 * v47 + 8);
        __asm
        {
          FMLA            S7, S5, V21.S[2]
          FMLA            S16, S5, V21.S[1]
        }

        v97 = (vmuls_lane_f32(_S16, _Q21, 3) + ((v65 + v65) * _S6)) + (_Q21.f32[0] * _S7);
        __asm
        {
          FMLA            S17, S3, V21.S[2]
          FMLA            S17, S7, V21.S[1]
          FMLA            S5, S7, V21.S[2]
        }

LABEL_51:
        a6 = v97 - v62;
        a7 = _S17 - v61;
        a8 = _S5 - v63;
      }

LABEL_52:
      v179 = v52[1];
      v181 = v52[2];
      v180 = v52[3];
      v182 = (((*&_D1 * *v52) - (v180 * _Q21.f32[0])) - (v179 * *_Q2.i32)) + (*_Q0.i32 * v181);
      v183 = (((*&_D1 * v179) - (v180 * *_Q0.i32)) - (v181 * _Q21.f32[0])) + (*_Q2.i32 * *v52);
      v184 = (((*&_D1 * v181) - (v180 * *_Q2.i32)) - (*v52 * *_Q0.i32)) + (_Q21.f32[0] * v179);
      v185 = (((_Q21.f32[0] * *v52) + (v180 * *&_D1)) + (v179 * *_Q0.i32)) + (v181 * *_Q2.i32);
      v186 = sqrtf((((v183 * v183) + (v182 * v182)) + (v184 * v184)) + (v185 * v185));
      *_Q0.i32 = v182 / v186;
      *&_D1 = v183 / v186;
      *_Q2.i32 = v184 / v186;
      v187 = v185 / v186;
      v188 = v52[4];
      v189 = v52[5];
      v190 = v52[6];
      v191 = (*(v9 + 448) + 28 * v47);
      v192 = v191[1];
      v193 = v191[2];
      v194 = v191[3];
      v195 = (((v194 * *_Q0.i32) - (v187 * *v191)) - (*&_D1 * v193)) + (v192 * *_Q2.i32);
      v196 = (((v194 * *&_D1) - (v187 * v192)) - (*_Q2.i32 * *v191)) + (v193 * *_Q0.i32);
      v197 = (((v194 * *_Q2.i32) - (v187 * v193)) - (*_Q0.i32 * v192)) + (*v191 * *&_D1);
      v198 = (((*v191 * *_Q0.i32) + (v187 * v194)) + (*&_D1 * v192)) + (*_Q2.i32 * v193);
      if (v198 < 0.0)
      {
        v195 = -v195;
        v196 = -v196;
        v197 = -v197;
        v198 = -v198;
      }

      v199 = (*(v9 + 712) + 16 * v47);
      *v199 = v195;
      v199[1] = v196;
      v199[2] = v197;
      v199[3] = v198;
      v200 = *(v50 + 76);
      if (*(v50 + 76))
      {
        v201 = *(v50 + 72);
        do
        {
          *(v15 + 4 * v201++) = 0;
          --v200;
        }

        while (v200);
      }

      v202 = a6 + a6;
      v203 = a7 + a7;
      v204 = a8 + a8;
      v205 = v49 + (v187 * v187);
      v206 = ((v203 * *&_D1) + (*_Q0.i32 * v202)) + (*_Q2.i32 * v204);
      v207 = ((v187 * ((*&_D1 * v204) - (*_Q2.i32 * v203))) + (v202 * v205)) + (*_Q0.i32 * v206);
      v208 = ((v187 * ((*_Q2.i32 * v202) - (*_Q0.i32 * v204))) + (v203 * v205)) + (*&_D1 * v206);
      v209 = ((v187 * ((*_Q0.i32 * v203) - (*&_D1 * v202))) + (v204 * v205)) + (*_Q2.i32 * v206);
      a7 = v188 + v207;
      a8 = v189 + v208;
      a6 = v190 + v209;
      v210 = (v188 + v207) - v191[4];
      v211 = (v189 + v208) - v191[5];
      v212 = a6 - v191[6];
      v213 = &v12[4 * v47];
      v214 = v213[1].f32[0] * v8;
      v215 = &v11[4 * v47];
      *v215 = vadd_f32(vmul_n_f32(*v213, v8), *v215);
      v215[1].f32[0] = v214 + v215[1].f32[0];
      v215[2].f32[0] = v210;
      v215[2].f32[1] = v211;
      v215[3].f32[0] = v212;
      v46 = *(v9 + 696);
      v216 = v46 + 28 * v47;
      *v216 = _Q0.i32[0];
      *(v216 + 4) = LODWORD(_D1);
      *(v216 + 8) = _Q2.i32[0];
      *(v216 + 12) = v187;
      *(v216 + 16) = a7;
      *(v216 + 20) = a8;
      *(v216 + 24) = a6;
      ++v47;
      v48 += 76;
      if (v47 == v10)
      {
        return;
      }
    }

    v118 = *(v50 + 76);
    v222 = *(v9 + 632) + 80 * v47;
    v223 = v48;
    if (v118 > 2)
    {
      v139 = *(v9 + 320);
      v221 = *(v9 + 528);
      v140 = v139 + 32 * v47;
      v218 = *v140;
      v220 = *(v140 + 4);
      _D1 = vmul_n_f32(v220, v8);
      _S3 = _D1.i32[1];
      __asm { FMLA            S2, S3, V1.S[1] }

      if (_S2 >= 1.0e-24)
      {
        v145 = sqrtf(_S2);
        v146 = (v218 * v8) * (1.0 / v145);
        v147 = vmul_n_f32(_D1, 1.0 / v145);
        v232 = *(*(v9 + 592) + 16 * v47);
        v148 = __sincosf_stret(v145 * 0.5);
        v144 = v148.__cosval;
        _Q21 = v232;
        *_Q2.i32 = v148.__sinval * v146;
        v49 = -0.5;
        *_Q0.i8 = vmul_n_f32(v147, v148.__sinval);
      }

      else
      {
        _Q0.i64[0] = 0;
        v144 = 1.0;
        _Q2.i64[0] = 0;
      }

      v149 = (v46 + 28 * v47);
      v150 = -*_Q2.i32;
      v151 = -*_Q0.i32;
      v236 = _Q21;
      v152 = vextq_s8(vextq_s8(_Q2, _Q2, 4uLL), _Q0, 0xCuLL);
      v153 = vextq_s8(vextq_s8(v152, v152, 0xCuLL), v152, 8uLL);
      v152.f32[3] = v150;
      v154 = vzip1q_s32(*v149, *v149);
      v154.i32[0] = v149->i64[1];
      v155 = vuzp1q_s32(vextq_s8(v154, v154, 8uLL), vuzp2q_s32(v154, v153));
      v156 = vzip1q_s32(vrev64q_s32(v153), v155);
      v156.i32[1] = v153.i32[2];
      v153.f32[3] = v151;
      v235 = vmlsq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v149, 3), *v149, 4uLL), v152), *v149, v144), v154, v153), v156, v155);
      v234 = *v52;
      physx::Dy::computeSphericalJointPositions(v237, v236.f32, v235.f32, &v234, v60, v54);
      v157 = 0;
      v158 = (v139 + 32 * *(v51 + 32));
      _Q21.f32[0] = v237[0];
      *_Q0.i32 = v237[1];
      *_Q2.i32 = v237[2];
      *&_D1 = v237[3];
      v159 = v218 - *v158;
      v160 = v220.f32[0] - v158[1];
      v161 = v220.f32[1] - v158[2];
      v48 = v223;
      v162 = (v221 + v223);
      do
      {
        v163 = (v160 * *(v162 - 1)) + (*(v162 - 2) * v159);
        v164 = *v162;
        v162 += 6;
        v58[v157++] = v163 + (v164 * v161);
      }

      while (v157 != 3);
      v8 = *&v233;
      v11 = v227;
      v10 = v228;
      v13 = v225;
      v12 = v226;
      v14 = v224;
      v50 = v222;
    }

    else
    {
      v217 = v66;
      v219 = v61;
      v231 = *(*(v9 + 592) + 16 * v47);
      if (*(v50 + 76))
      {
        v119 = 0;
        v120 = 4 * v118;
        v121 = (v53 + v48);
        _S8 = 0.0;
        _S9 = 1.0;
        _S12 = 0.0;
        _S13 = 0.0;
        do
        {
          v126 = v58[v119 / 4] + v59[v119 / 4];
          v58[v119 / 4] = v126;
          v60[v119 / 4] = v60[v119 / 4] + (v126 * v8);
          v59[v119 / 4] = 0.0;
          v128 = __sincosf_stret(v60[v119 / 4] * -0.5);
          v127.f32[0] = v128.__cosval;
          v8 = *&v233;
          *_Q2.i8 = vmul_n_f32(*(v121 - 2), v128.__sinval);
          v129 = *v121;
          v121 += 6;
          v130 = v128.__sinval * v129;
          _D5 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, v127), 0), vneg_f32(*_Q2.i8), *_Q2.i8);
          *_Q0.i32 = -(v128.__sinval * v129);
          if (v128.__cosval >= 0.0)
          {
            v132 = v130;
          }

          else
          {
            v132 = *_Q0.i32;
          }

          __asm
          {
            FMLS            S0, S8, V5.S[1]
            FMLA            S1, S9, V5.S[1]
          }

          _S1 = (_S1 + (_S8 * *_D5.i32)) - (v132 * _S13);
          __asm { FMLA            S2, S13, V5.S[1] }

          _S2 = _S2 - (_S12 * *_D5.i32);
          __asm { FMLS            S4, S12, V5.S[1] }

          v119 += 4;
          _S9 = _S4 - (_S8 * v132);
          _S8 = _S2;
          _S12 = _S1;
          _S13 = _S0;
        }

        while (v120 != v119);
      }

      else
      {
        _S9 = 1.0;
        _S0 = 0.0;
        _S1 = 0.0;
        _S2 = 0.0;
      }

      _Q7 = v231;
      __asm
      {
        FMLA            S3, S1, V7.S[2]
        FMLS            S3, S2, V7.S[1]
        FMLA            S4, S9, V7.S[1]
        FMLS            S4, S0, V7.S[2]
        FMLA            S5, S9, V7.S[2]
        FMLA            S5, S0, V7.S[1]
      }

      v172 = _S5 - (_S1 * *&v231);
      __asm
      {
        FMLA            S6, S9, V7.S[3]
        FMLS            S6, S1, V7.S[1]
        FMLS            S6, S2, V7.S[2]
      }

      v176 = sqrtf((((_S4 * _S4) + (_S3 * _S3)) + (v172 * v172)) + (_S6 * _S6));
      _Q21.f32[0] = _S3 / v176;
      *_Q0.i32 = _S4 / v176;
      *_Q2.i32 = v172 / v176;
      *&_D1 = _S6 / v176;
      v11 = v227;
      v10 = v228;
      v13 = v225;
      v12 = v226;
      v48 = v223;
      v14 = v224;
      v49 = -0.5;
      v50 = v222;
      v61 = v219;
      v66 = v217;
    }

    v177 = v49 + (*&_D1 * *&_D1);
    v178 = (((v64 + v64) * *_Q0.i32) + (_Q21.f32[0] * (v65 + v65))) + (*_Q2.i32 * (v66 + v66));
    v97 = ((*&_D1 * ((*_Q0.i32 * (v66 + v66)) - (*_Q2.i32 * (v64 + v64)))) + ((v65 + v65) * v177)) + (_Q21.f32[0] * v178);
    _S17 = ((((*_Q2.i32 * (v65 + v65)) - (_Q21.f32[0] * (v66 + v66))) * *&_D1) + ((v64 + v64) * v177)) + (*_Q0.i32 * v178);
    _S5 = ((((_Q21.f32[0] * (v64 + v64)) - (*_Q0.i32 * (v65 + v65))) * *&_D1) + ((v66 + v66) * v177)) + (*_Q2.i32 * v178);
    goto LABEL_51;
  }
}

void *physx::Dy::FeatherstoneArticulation::deltaMotionToMotionVelocity(void *result, float a2)
{
  v2 = *result;
  v3 = *(*result + 616);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 432);
    v6 = 32 * v3;
    do
    {
      v7 = *(v2 + 320) + v4;
      *&v8 = *(v5 + v4 + 8) * a2;
      v9 = *(v5 + v4 + 24);
      *&v10 = vmul_n_f32(*(v5 + v4), a2);
      *(v7 + 8) = *&v8;
      *(v7 + 12) = 0;
      v11 = *(v5 + v4 + 16);
      *v7 = v10;
      *(&v10 + 1) = v8;
      *&v12 = v9 * a2;
      *&v13 = vmul_n_f32(v11, a2);
      *(v7 + 16) = v13;
      *(&v13 + 1) = v12;
      *(v7 + 24) = *&v12;
      *(v7 + 28) = 0;
      v14 = (result[2] + v4);
      *v14 = v10;
      v14[1] = v13;
      v4 += 32;
    }

    while (v6 != v4);
  }

  return result;
}

void physx::Dy::FeatherstoneArticulation::computeUnconstrainedVelocitiesTGS(uint64_t *a1, float32x2_t *a2, float a3, uint64_t a4, float *a5, float32x2_t *a6)
{
  v6 = *a1;
  *(v6 + 648) = a3;
  physx::Dy::FeatherstoneArticulation::computeUnconstrainedVelocitiesInternal(v6, a2, a5, a6);
}

uint64_t physx::Dy::FeatherstoneArticulation::setupSolverConstraintsTGS(uint64_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, uint64_t a14)
{
  a6.i32[0] = a3.i32[0];
  *a12 = 0;
  a5.i32[0] = 1060320051;
  a3.i32[0] = a4.i32[0];
  a4.i32[0] = a6.i32[0];
  physx::Dy::FeatherstoneArticulation::setupInternalConstraints(*a1, *(*a1 + 608), *(*a1 + 616), **(*a1 + 664) & 1, *a1 + 176, a14, 1, a2, a3, a4, a5, a6, a7, a8, a9);
  return 0;
}

uint64_t physx::shdfnd::Array<physx::Dy::SpatialSubspaceMatrix,physx::shdfnd::ReflectionAllocator<physx::Dy::SpatialSubspaceMatrix>>::resize(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Dy::SpatialSubspaceMatrix,physx::shdfnd::ReflectionAllocator<physx::Dy::SpatialSubspaceMatrix>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < v4)
  {
    v7 = *v5 + 76 * v4;
    v8 = *v5 + 76 * v6;
    v9 = a3 + 8;
    do
    {
      for (i = 0; i != 72; i += 24)
      {
        v11 = (v8 + i);
        *v11 = *(a3 + i);
        v11[1] = *(v9 + i);
        v11[2] = *(v9 + i + 8);
      }

      *(v8 + 72) = *(a3 + 72);
      v8 += 76;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = v4;
  return result;
}

void physx::Dy::ArticulationData::resizeJointData(physx::Dy::ArticulationData *this, unsigned int a2)
{
  if ((*(this + 11) & 0x7FFFFFFFu) < a2)
  {
    physx::shdfnd::Array<float,physx::shdfnd::ReflectionAllocator<float>>::recreate(this + 32, a2);
  }

  *(this + 10) = a2;
  if ((*(this + 15) & 0x7FFFFFFFu) < a2)
  {
    physx::shdfnd::Array<float,physx::shdfnd::ReflectionAllocator<float>>::recreate(this + 48, a2);
  }

  *(this + 14) = a2;
  if ((*(this + 19) & 0x7FFFFFFFu) < a2)
  {
    physx::shdfnd::Array<float,physx::shdfnd::ReflectionAllocator<float>>::recreate(this + 64, a2);
  }

  *(this + 18) = a2;
  if ((*(this + 23) & 0x7FFFFFFFu) < a2)
  {
    physx::shdfnd::Array<float,physx::shdfnd::ReflectionAllocator<float>>::recreate(this + 80, a2);
  }

  *(this + 22) = a2;
  if ((*(this + 27) & 0x7FFFFFFFu) < a2)
  {
    physx::shdfnd::Array<float,physx::shdfnd::ReflectionAllocator<float>>::recreate(this + 96, a2);
  }

  *(this + 26) = a2;
  if ((*(this + 31) & 0x7FFFFFFFu) < a2)
  {
    physx::shdfnd::Array<float,physx::shdfnd::ReflectionAllocator<float>>::recreate(this + 112, a2);
  }

  *(this + 30) = a2;
  v4 = 4 * a2;
  bzero(*(this + 4), v4);
  bzero(*(this + 6), v4);
  bzero(*(this + 8), v4);
  bzero(*(this + 14), v4);
  bzero(*(this + 10), v4);
  v5 = *(this + 12);

  bzero(v5, v4);
}

void physx::Dy::FeatherstoneArticulation::~FeatherstoneArticulation(physx::Dy::FeatherstoneArticulation *this)
{
  *this = &unk_1F5D1D2F0;
  v2 = *(this + 221);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 109) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v4 = *(this + 215);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 106) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 78))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 78) = 0;
  }

  if (*(this + 79))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 79) = 0;
  }

  if (*(this + 80))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 80) = 0;
  }

  v6 = *(this + 181);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 89))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v7 = *(this + 177);
  if ((v7 & 0x80000000) == 0 && (v7 & 0x7FFFFFFF) != 0 && *(this + 87))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v8 = *(this + 151);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 74))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v9 = *(this + 147);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *(this + 72))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v10 = *(this + 143);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0 && *(this + 70))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v11 = *(this + 139);
  if ((v11 & 0x80000000) == 0 && (v11 & 0x7FFFFFFF) != 0 && *(this + 68))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v12 = *(this + 135);
  if ((v12 & 0x80000000) == 0 && (v12 & 0x7FFFFFFF) != 0 && *(this + 66))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v13 = *(this + 131);
  if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0 && *(this + 64))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v14 = *(this + 127);
  if ((v14 & 0x80000000) == 0 && (v14 & 0x7FFFFFFF) != 0 && *(this + 62))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v15 = *(this + 123);
  if ((v15 & 0x80000000) == 0 && (v15 & 0x7FFFFFFF) != 0 && *(this + 60))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v16 = *(this + 119);
  if ((v16 & 0x80000000) == 0 && (v16 & 0x7FFFFFFF) != 0 && *(this + 58))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v17 = *(this + 115);
  if ((v17 & 0x80000000) == 0 && (v17 & 0x7FFFFFFF) != 0 && *(this + 56))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v18 = *(this + 111);
  if ((v18 & 0x80000000) == 0 && (v18 & 0x7FFFFFFF) != 0 && *(this + 54))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v19 = *(this + 107);
  if ((v19 & 0x80000000) == 0 && (v19 & 0x7FFFFFFF) != 0 && *(this + 52))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v20 = *(this + 103);
  if ((v20 & 0x80000000) == 0 && (v20 & 0x7FFFFFFF) != 0 && *(this + 50))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v21 = *(this + 99);
  if ((v21 & 0x80000000) == 0 && (v21 & 0x7FFFFFFF) != 0 && *(this + 48))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v22 = *(this + 95);
  if ((v22 & 0x80000000) == 0 && (v22 & 0x7FFFFFFF) != 0 && *(this + 46))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v23 = *(this + 91);
  if ((v23 & 0x80000000) == 0 && (v23 & 0x7FFFFFFF) != 0 && *(this + 44))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v24 = *(this + 87);
  if ((v24 & 0x80000000) == 0 && (v24 & 0x7FFFFFFF) != 0 && *(this + 42))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v25 = *(this + 83);
  if ((v25 & 0x80000000) == 0 && (v25 & 0x7FFFFFFF) != 0 && *(this + 40))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v26 = *(this + 79);
  if ((v26 & 0x80000000) == 0 && (v26 & 0x7FFFFFFF) != 0 && *(this + 38))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v27 = *(this + 75);
  if ((v27 & 0x80000000) == 0 && (v27 & 0x7FFFFFFF) != 0 && *(this + 36))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v28 = *(this + 71);
  if ((v28 & 0x80000000) == 0 && (v28 & 0x7FFFFFFF) != 0 && *(this + 34))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v29 = *(this + 67);
  if ((v29 & 0x80000000) == 0 && (v29 & 0x7FFFFFFF) != 0 && *(this + 32))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v30 = *(this + 63);
  if ((v30 & 0x80000000) == 0 && (v30 & 0x7FFFFFFF) != 0 && *(this + 30))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v31 = *(this + 59);
  if ((v31 & 0x80000000) == 0 && (v31 & 0x7FFFFFFF) != 0 && *(this + 28))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v32 = *(this + 55);
  if ((v32 & 0x80000000) == 0 && (v32 & 0x7FFFFFFF) != 0 && *(this + 26))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *this = &unk_1F5D1D138;
  v33 = *(this + 39);
  if ((v33 & 0x80000000) == 0 && (v33 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 18))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }
}

{
  physx::Dy::FeatherstoneArticulation::~FeatherstoneArticulation(this);

  JUMPOUT(0x1E6906510);
}

void physx::Dy::FeatherstoneArticulation::computeDofs(physx::Dy::FeatherstoneArticulation *this)
{
  v2 = *(this + 154);
  if (v2 < 2)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    v6 = 80;
    do
    {
      v7 = 0;
      v8 = *(this + 79);
      v9 = *(*(this + 76) + 40 * v5 + 24);
      v10 = v8 + 80 * v5;
      *(v10 + 76) = 0;
      *(v10 + 79) = 0;
      v11 = v9 + 258;
      v12 = v9 + 252;
      do
      {
        if (*(v11 + v7))
        {
          v13 = *(v10 + 76);
          *(v8 + v6 + 24 * v13 + 4 * v7) = 1065353216;
          if (*(v11 + v7) == 1)
          {
            ++*(v10 + 77);
          }

          *(v10 + 76) = v13 + 1;
          *(v12 + v13) = v7;
        }

        ++v7;
      }

      while (v7 != 6);
      *(v10 + 79) = 0;
      v14 = *(v10 + 76);
      if (*(v9 + 270) == 2 && v14 == 2)
      {
        v17 = 0;
        v18 = 0;
        v19 = v8 + v6;
        do
        {
          if (!*(v11 + v18))
          {
            v20 = *(v10 + 76);
            *(v19 + 24 * v20 + 4 * v18) = 1065353216;
            *(v10 + 76) = v20 + 1;
            *(v12 + v20) = v18;
            v17 = *(v10 + 79) + 1;
            *(v10 + 79) = v17;
          }

          ++v18;
        }

        while (v18 != 3);
        v14 = *(v10 + 76);
        v16 = v17;
      }

      else
      {
        v16 = 0;
      }

      *(v9 + 269) &= ~1u;
      *(v10 + 72) = v3;
      v3 += v14;
      v4 += v16;
      ++v5;
      v6 += 80;
    }

    while (v5 != v2);
  }

  if (v3 != *(this + 163))
  {
    physx::Dy::ArticulationData::resizeJointData((this + 176), v3);
  }

  *(this + 163) = v3;
  *(this + 164) = v4;
}

uint64_t physx::Dy::FeatherstoneArticulation::resize(physx::Dy::FeatherstoneArticulation *this, uint64_t a2)
{
  v2 = *(this + 160);
  if (v2 == 1)
  {
    if (*(this + 140) == a2)
    {
      *(this + 160) = 0;
    }

    else
    {
      *(this + 9) = *(this + 18);
      *(this + 6) = this;
      *(this + 160) = 0;
      v5 = 288 * ((a2 + 3) & 0xFFFC);
      LOBYTE(v11[0]) = 0;
      physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resize(this + 848, 288 * ((a2 + 3) & 0x7FFFFFC), v11);
      *(this + 16) = *(this + 106);
      *(this + 71) = v5;
      if ((*(this + 83) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(this + 320, a2);
      }

      *(this + 82) = a2;
      if ((*(this + 87) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(this + 336, a2);
      }

      *(this + 86) = a2;
      if ((*(this + 91) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(this + 352, a2);
      }

      *(this + 90) = a2;
      if ((*(this + 95) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(this + 368, a2);
      }

      *(this + 94) = a2;
      if ((*(this + 143) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 560, a2);
      }

      *(this + 142) = a2;
      if ((*(this + 147) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 576, a2);
      }

      *(this + 146) = a2;
      if ((*(this + 111) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(this + 432, a2);
      }

      *(this + 110) = a2;
      if ((*(this + 115) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::recreate(this + 448, a2);
      }

      *(this + 114) = a2;
      if ((*(this + 119) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Dy::SpatialImpulseResponseMatrix,physx::shdfnd::ReflectionAllocator<physx::Dy::SpatialImpulseResponseMatrix>>::recreate(this + 58, a2);
      }

      *(this + 118) = a2;
      if ((*(this + 123) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Dy::SpatialMatrix,physx::shdfnd::ReflectionAllocator<physx::Dy::SpatialMatrix>>::recreate(this + 60, a2);
      }

      *(this + 122) = a2;
      if ((*(this + 127) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Dy::InvStIs,physx::shdfnd::ReflectionAllocator<physx::Dy::InvStIs>>::recreate(this + 62, a2);
      }

      *(this + 126) = a2;
      memset(v11, 0, 76);
      physx::shdfnd::Array<physx::Dy::SpatialSubspaceMatrix,physx::shdfnd::ReflectionAllocator<physx::Dy::SpatialSubspaceMatrix>>::resize(this + 512, a2, v11);
      if ((*(this + 135) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Dy::SpatialSubspaceMatrix,physx::shdfnd::ReflectionAllocator<physx::Dy::SpatialSubspaceMatrix>>::recreate(this + 66, a2);
      }

      *(this + 134) = a2;
      if ((*(this + 139) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Dy::IsInvD,physx::shdfnd::ReflectionAllocator<physx::Dy::IsInvD>>::recreate(this + 68, a2);
      }

      *(this + 138) = a2;
      if ((*(this + 177) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::recreate(this + 696, a2);
      }

      *(this + 176) = a2;
      if ((*(this + 181) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::PxQuat,physx::shdfnd::ReflectionAllocator<physx::PxQuat>>::recreate(this + 712, a2);
      }

      *(this + 180) = a2;
      if ((*(this + 79) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(this + 304, a2);
      }

      *(this + 78) = a2;
      if ((*(this + 99) & 0x7FFFFFFFu) < a2)
      {
        physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(this + 384, a2);
      }

      *(this + 98) = a2;
      physx::shdfnd::Array<physx::PxQuat,physx::shdfnd::ReflectionAllocator<physx::PxQuat>>::resize(this + 592, a2, v11);
      if (*(this + 78))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        *(this + 78) = 0;
      }

      if (*(this + 79))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        *(this + 79) = 0;
      }

      if (*(this + 80))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        *(this + 80) = 0;
      }

      v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 160 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneArticulation.cpp", 172);
      *(v6 + 144) = 0;
      *(this + 78) = v6;
      v7 = 80 * a2;
      v8 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneArticulation.cpp", 173);
      *(v8 + 72) = -1;
      *(v8 + 78) = 0;
      *(this + 79) = v8;
      v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 96 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneArticulation.cpp", 174);
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      *(this + 80) = v9;
      bzero(*(this + 40), (32 * a2));
      bzero(*(this + 42), (32 * a2));
      bzero(*(this + 44), (32 * a2));
      bzero(*(this + 46), (32 * a2));
      bzero(*(this + 54), (32 * a2));
      bzero(*(this + 56), (28 * a2));
      bzero(*(this + 78), (160 * a2));
      bzero(*(this + 79), v7);
      bzero(*(this + 80), (96 * a2));
    }
  }

  return v2;
}

void physx::Dy::FeatherstoneArticulation::getDataSizes(physx::Dy::FeatherstoneArticulation *this, unsigned int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
}

void physx::Dy::FeatherstoneArticulation::onUpdateSolverDesc(physx::Dy::FeatherstoneArticulation *this)
{
  *(this + 76) = *(this + 7);
  *(this + 154) = *(this + 140);
  v1 = *(this + 14);
  if (v1)
  {
    v2 = v1 + 32;
  }

  else
  {
    v2 = *(this + 15);
  }

  *(this + 83) = v2;
  *(this + 84) = *(this + 9);
  *(this + 170) = *(this + 69);
  *(this + 86) = this;
  physx::Dy::FeatherstoneArticulation::computeDofs(this);
}

uint64_t physx::Dy::FeatherstoneArticulation::getDofs(physx::Dy::FeatherstoneArticulation *this)
{
  result = *(this + 163);
  if (result == -1)
  {
    physx::Dy::FeatherstoneArticulation::computeDofs(this);
    return *(this + 163);
  }

  return result;
}

BOOL physx::Dy::FeatherstoneArticulation::applyCache(void *a1, uint64_t a2, char *a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10, int8x16_t a11)
{
  v11 = a1[28];
  v12 = a1[26];
  v13 = a1[32];
  v14 = a1[34];
  v16 = *a3;
  return physx::Dy::FeatherstoneArticulation::applyCacheToDest(a1, (a1 + 22), a2, v11, v12, v13, v14, &v16, a4, a5, a6, a7, a8, a9, a10, a11);
}

float physx::Dy::FeatherstoneArticulation::copyInternalStateToCache(float32x2_t *a1, uint64_t a2, char *a3, float result)
{
  v7 = *a3;
  if (*a3)
  {
    memcpy(*(a2 + 24), *&a1[28], (4 * a1[81].i32[1]));
    v7 = *a3;
    if ((*a3 & 2) == 0)
    {
LABEL_3:
      if ((v7 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  memcpy(*(a2 + 32), *&a1[26], (4 * a1[81].i32[1]));
  v7 = *a3;
  if ((*a3 & 4) == 0)
  {
LABEL_4:
    if ((v7 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  memcpy(*(a2 + 40), *&a1[32], (4 * a1[81].i32[1]));
  v7 = *a3;
  if ((*a3 & 8) == 0)
  {
LABEL_5:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_10:
  memcpy(*(a2 + 48), *&a1[34], (4 * a1[81].i32[1]));
  v7 = *a3;
  if ((*a3 & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = a1[77].u32[0];
  if (v8)
  {
    v9 = *&a1[40] + 16;
    v10 = *(a2 + 56) + 16;
    do
    {
      *(v10 - 16) = *v9;
      *(v10 - 8) = *(v9 + 8);
      *v10 = *(v9 - 16);
      result = *(v9 - 8);
      *(v10 + 8) = result;
      v9 += 32;
      v10 += 32;
      --v8;
    }

    while (v8);
  }

LABEL_14:
  if ((v7 & 0x20) != 0)
  {
    v11 = a1[77].u32[0];
    result = a1[81].f32[0];
    if (result <= 0.0)
    {
      v13 = a1[42];
    }

    else
    {
      v12 = a1[79];
      v13 = a1[42];
      v14 = a1[30];
      result = 1.0 / result;
      if (**&a1[83])
      {
        v13[1].i32[1] = 0;
        v13[3].i32[1] = 0;
        v16 = 0;
        v17 = 0.0;
        v19 = 0.0;
        v18 = 0;
      }

      else
      {
        v15 = a1[40];
        v16 = vmul_n_f32(vsub_f32(*v15, a1[22]), result);
        v17 = result * (v15[1].f32[0] - a1[23].f32[0]);
        v18 = vmul_n_f32(vsub_f32(v15[2], a1[24]), result);
        v19 = result * (v15[3].f32[0] - a1[25].f32[0]);
      }

      *v13 = v16;
      v13[1].f32[0] = v17;
      v13[2] = v18;
      v13[3].f32[0] = v19;
      if (v11 >= 2)
      {
        v20 = 1;
        v21 = 96;
        do
        {
          v22 = *&v12 + 80 * v20;
          v23 = *(v22 + 76);
          if (*(v22 + 76))
          {
            v24 = (*&v14 + 4 * *(v22 + 72));
            v25 = &v13[4 * v20];
            v26 = *v25;
            v27 = v25[1].f32[0];
            v28 = v25[2];
            v29 = v25[3].f32[0];
            v30 = (*&a1[66] + v21);
            do
            {
              v31 = *v24++;
              v32 = (result * v31) * *(v30 - 3);
              v26 = vadd_f32(v26, vmul_n_f32(*(v30 - 5), result * v31));
              *v25 = v26;
              v27 = v27 + v32;
              v25[1].f32[0] = v27;
              v33 = (result * v31) * *v30;
              v28 = vadd_f32(v28, vmul_n_f32(*(v30 - 2), result * v31));
              v25[2] = v28;
              v29 = v29 + v33;
              v25[3].f32[0] = v29;
              v30 += 6;
              --v23;
            }

            while (v23);
          }

          ++v20;
          v21 += 76;
        }

        while (v20 != v11);
      }
    }

    if (v11)
    {
      v34 = v13 + 2;
      v35 = *(a2 + 64) + 16;
      do
      {
        *(v35 - 16) = *v34;
        *(v35 - 8) = v34[1].i32[0];
        *v35 = v34[-2];
        result = v34[-1].f32[0];
        *(v35 + 8) = result;
        v34 += 4;
        v35 += 32;
        --v11;
      }

      while (v11);
    }
  }

  if ((v7 & 0x40) != 0)
  {
    v36 = a1[40];
    v37 = *(*&a1[76] + 16);
    v38 = v37[12] * -2.0;
    v39 = v37[13] * -2.0;
    v40 = v37[14] * -2.0;
    v42 = v37[10];
    v41 = v37[11];
    v43 = (v41 * v41) + -0.5;
    v45 = v37[8];
    v44 = v37[9];
    v46 = ((v39 * v44) + (v45 * v38)) + (v42 * v40);
    v47 = ((v38 * v43) - (((v44 * v40) - (v42 * v39)) * v41)) + (v45 * v46);
    v48 = ((v39 * v43) - (((v42 * v38) - (v45 * v40)) * v41)) + (v44 * v46);
    v49 = ((v40 * v43) - (((v45 * v39) - (v44 * v38)) * v41)) + (v42 * v46);
    v50 = v48 + v48;
    v51 = v49 + v49;
    v53 = v37[2];
    v52 = v37[3];
    v54 = (v52 * v52) + -0.5;
    v55 = v37[1];
    v56 = ((v55 * v50) + (*v37 * (v47 + v47))) + (v53 * v51);
    v57 = ((v52 * ((v55 * v51) - (v53 * v50))) + ((v47 + v47) * v54)) + (*v37 * v56);
    v58 = ((v52 * ((v53 * (v47 + v47)) - (*v37 * v51))) + (v50 * v54)) + (v55 * v56);
    v59 = ((v52 * ((*v37 * v50) - (v55 * (v47 + v47)))) + (v51 * v54)) + (v53 * v56);
    v60 = v37[4] + v57;
    v61 = v37[5] + v58;
    v62 = v37[6] + v59;
    v63 = (((v41 * *v37) - (v52 * v45)) - (v55 * v42)) + (v44 * v53);
    v64 = (((v41 * v55) - (v52 * v44)) - (v53 * v45)) + (v42 * *v37);
    v65 = (((v41 * v53) - (v52 * v42)) - (*v37 * v44)) + (v45 * v55);
    v66 = v45 * *v37;
    v67 = *(a2 + 72);
    *v67 = v63;
    *(v67 + 4) = v64;
    *(v67 + 8) = v65;
    *(v67 + 12) = ((v66 + (v52 * v41)) + (v55 * v44)) + (v53 * v42);
    *(v67 + 16) = v60;
    *(v67 + 20) = v61;
    *(v67 + 24) = v62;
    *(v67 + 28) = *(*&v36 + 16);
    *(v67 + 36) = *(*&v36 + 24);
    *(v67 + 40) = **&v36;
    *(v67 + 48) = *(*&v36 + 8);
    v68 = a1[42];
    *(v67 + 52) = *(*&v68 + 16);
    *(v67 + 60) = *(*&v68 + 24);
    *(v67 + 64) = **&v68;
    result = *(*&v68 + 8);
    *(v67 + 72) = result;
  }

  return result;
}

int8x16_t physx::Dy::FeatherstoneArticulation::translateInertia(float32x2_t *a1, uint64_t a2)
{
  v2 = *a1->f32;
  v2.i32[3] = 0;
  v3 = *&a1[1].i32[1];
  v4 = v3;
  v4.i32[3] = 0;
  v5.i32[0] = v3.i32[3];
  v5.i32[1] = a1[3].i32[1];
  LODWORD(v6) = vdup_lane_s32(*v5.f32, 1).u32[0];
  v5.i64[1] = a1[4].u32[0];
  LODWORD(v7) = vdup_laneq_s32(v3, 3).u32[0];
  v8 = *(a2 + 12);
  v9.i32[0] = v8.i32[3];
  v9.i32[1] = *(a2 + 28);
  v10 = vmulq_lane_f32(v4, *v9.f32, 1);
  v9.i64[1] = *(a2 + 32);
  v11 = *(a2 + 36);
  v12 = vmulq_n_f32(v2, v11.f32[0]);
  v13 = vmulq_lane_f32(v4, *v11.f32, 1);
  v14 = vmulq_laneq_f32(v5, v11, 2);
  v15 = vmulq_n_f32(v11, COERCE_FLOAT(*a1->f32));
  v11.i32[3] = 0;
  v16 = *(a2 + 48);
  v17.i32[0] = v16.i32[3];
  v18 = vmulq_n_f32(v2, v16.f32[0]);
  v19 = vmulq_lane_f32(v4, *v16.f32, 1);
  v20 = vmulq_laneq_f32(v5, v16, 2);
  v21 = vmulq_laneq_f32(v2, v16, 3);
  v22 = vmulq_n_f32(v16, v3.f32[0]);
  v16.i32[3] = 0;
  v17.i32[1] = *(a2 + 64);
  v23 = vmulq_lane_f32(v4, *v17.f32, 1);
  v17.i64[1] = *(a2 + 68);
  v24 = *(a2 + 72);
  v24.i32[3] = 0;
  v25 = *(a2 + 84);
  v26.i32[0] = v25.i32[3];
  v25.i32[3] = 0;
  v26.i32[1] = *(a2 + 100);
  v26.i64[1] = *(a2 + 104);
  v27 = vmulq_n_f32(v2, COERCE_FLOAT(*a2));
  v27.i32[3] = 0;
  v28 = vmulq_lane_f32(v4, *a2, 1);
  v28.i32[3] = 0;
  v29 = vmulq_laneq_f32(v5, *a2, 2);
  v29.i32[3] = 0;
  v30 = vaddq_f32(v29, vaddq_f32(v27, v28));
  v31 = vmulq_n_f32(v2, v8.f32[0]);
  v31.i32[3] = 0;
  v32 = vmulq_lane_f32(v4, *v8.f32, 1);
  v32.i32[3] = 0;
  v33 = vaddq_f32(v31, v32);
  v34 = vmulq_laneq_f32(v5, v8, 2);
  v34.i32[3] = 0;
  v35 = vmulq_laneq_f32(v2, v8, 3);
  v35.i32[3] = 0;
  v10.i32[3] = 0;
  v36 = vaddq_f32(v35, v10);
  v37 = vmulq_laneq_f32(v5, v9, 2);
  v37.i32[3] = 0;
  v38 = vaddq_f32(vaddq_f32(v36, v37), v26);
  v12.i32[3] = 0;
  v13.i32[3] = 0;
  v14.i32[3] = 0;
  v18.i32[3] = 0;
  v39 = vaddq_f32(v14, vaddq_f32(v12, v13));
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v40 = vaddq_f32(v20, vaddq_f32(v18, v19));
  v21.i32[3] = 0;
  v23.i32[3] = 0;
  v41 = vmulq_laneq_f32(v5, v17, 2);
  v41.i32[3] = 0;
  *v19.f32 = vext_s8(*&vdupq_lane_s32(*a2, 0), *v8.f32, 4uLL);
  v19.i64[1] = vdup_laneq_s32(v8, 3).u32[0];
  v42 = vaddq_f32(vaddq_f32(v21, v23), v41);
  *v21.f32 = vext_s8(*a2, *&vdupq_lane_s32(*v8.f32, 1), 4uLL);
  v21.i64[1] = vdup_lane_s32(*v9.f32, 1).u32[0];
  *v26.f32 = vext_s8(*&vdupq_laneq_s32(*a2, 2), *&vextq_s8(v8, v8, 8uLL), 4uLL);
  v26.i64[1] = vdup_laneq_s32(v9, 2).u32[0];
  v43 = vaddq_f32(v39, v19);
  v44 = vaddq_f32(v40, v21);
  v45 = vaddq_f32(v42, v26);
  v46 = vmulq_n_f32(v43, COERCE_FLOAT(*a1->f32));
  v46.i32[3] = 0;
  v47 = vmulq_n_f32(v44, v3.f32[0]);
  v47.i32[3] = 0;
  v48 = vmulq_n_f32(v45, v7);
  v48.i32[3] = 0;
  v49 = vaddq_f32(v46, v47);
  v50 = vmulq_lane_f32(v43, *a1, 1);
  v50.i32[3] = 0;
  v51 = vmulq_lane_f32(v44, *v3.f32, 1);
  v51.i32[3] = 0;
  v52 = vaddq_f32(v49, v48);
  v53 = vmulq_n_f32(v45, v6);
  v53.i32[3] = 0;
  v54 = vmulq_laneq_f32(v43, *a1->f32, 2);
  v54.i32[3] = 0;
  v55 = vmulq_laneq_f32(v44, v3, 2);
  v55.i32[3] = 0;
  v56 = vmulq_laneq_f32(v45, v5, 2);
  v56.i32[3] = 0;
  v57 = vaddq_f32(vaddq_f32(v54, v55), v56);
  v58 = vaddq_f32(vaddq_f32(v30, v24), v52);
  v59 = vaddq_f32(vaddq_f32(vaddq_f32(v34, v33), v25), vaddq_f32(vaddq_f32(v50, v51), v53));
  v60 = vaddq_f32(v38, v57);
  v61 = vaddq_f32(vaddq_f32(vmulq_lane_f32(v11, *a1, 1), vmulq_lane_f32(v16, *v3.f32, 1)), vmulq_n_f32(v17, v6));
  v62 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v11, *a1->f32, 2), vmulq_laneq_f32(v16, v3, 2)), vmulq_laneq_f32(v17, v5, 2));
  v63 = vaddq_f32(*a2, vaddq_f32(vaddq_f32(v15, v22), vmulq_n_f32(v17, v7)));
  v64 = vaddq_f32(v8, v61);
  v65 = vaddq_f32(v9, v62);
  v63.i32[3] = v64.i32[0];
  v66 = vextq_s8(vextq_s8(v64, v64, 0xCuLL), v65, 8uLL);
  *(a2 + 32) = v65.i32[2];
  *v65.f32 = vext_s8(vdup_lane_s32(*v58.f32, 0), *v59.f32, 4uLL);
  v65.i64[1] = v60.i64[0];
  *a2 = v63;
  *(a2 + 16) = v66;
  *v63.f32 = vext_s8(*v58.f32, vdup_lane_s32(*v59.f32, 1), 4uLL);
  *&v63.u32[2] = vdup_lane_s32(*v60.f32, 1);
  *v66.f32 = vext_s8(vdup_laneq_s32(v58, 2), *&vextq_s8(v59, v59, 8uLL), 4uLL);
  v66.i64[1] = vextq_s8(v60, v60, 8uLL).u64[0];
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v67 = vmulq_f32(vaddq_f32(v58, v65), v8);
  v68 = vmulq_f32(vaddq_f32(v59, v63), v8);
  v69 = vmulq_f32(vaddq_f32(v60, v66), v8);
  v67.i32[3] = v68.i32[0];
  *(a2 + 72) = v67;
  result = vextq_s8(vextq_s8(v68, v68, 0xCuLL), v69, 8uLL);
  *(a2 + 88) = result;
  *(a2 + 104) = v69.i32[2];
  return result;
}

float32_t physx::Dy::FeatherstoneArticulation::getImpulseResponse(uint64_t a1, unsigned int a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, uint64_t a11, float32x4_t *a12, uint64_t a13)
{
  physx::Dy::SpatialImpulseResponseMatrix::getResponse(&v15, *(a1 + 464) + 192 * a2, *a12, a12[1], a5, a6, a7, a8, a9, a10);
  *a13 = v16;
  *(a13 + 8) = v17;
  *(a13 + 16) = v15.i64[0];
  result = v15.f32[2];
  *(a13 + 24) = v15.i32[2];
  return result;
}

float32x4_t physx::Dy::SpatialImpulseResponseMatrix::getResponse(float32x4_t *a1, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10)
{
  a5.i64[0] = *a2;
  a5.i32[2] = *(a2 + 8);
  a6.i64[0] = *(a2 + 16);
  a6.i32[2] = *(a2 + 24);
  a7.i64[0] = *(a2 + 32);
  a7.i32[2] = *(a2 + 40);
  a8.i64[0] = *(a2 + 48);
  a8.i32[2] = *(a2 + 56);
  a9.i64[0] = *(a2 + 64);
  a9.i32[2] = *(a2 + 72);
  a10.i64[0] = *(a2 + 80);
  a10.i32[2] = *(a2 + 88);
  v10.i64[0] = *(a2 + 96);
  v10.i32[2] = *(a2 + 104);
  v11.i64[0] = *(a2 + 112);
  v11.i32[2] = *(a2 + 120);
  v12.i64[0] = *(a2 + 128);
  v12.i32[2] = *(a2 + 136);
  v13.i64[0] = *(a2 + 144);
  v13.i32[2] = *(a2 + 152);
  v14.i64[0] = *(a2 + 160);
  v14.i32[2] = *(a2 + 168);
  v15.i64[0] = *(a2 + 176);
  v15.i32[2] = *(a2 + 184);
  v16 = vmulq_n_f32(a5, a3.f32[0]);
  v16.i32[3] = 0;
  v17 = vmulq_n_f32(a6, a3.f32[0]);
  v17.i32[3] = 0;
  v18 = vmulq_lane_f32(a7, *a3.f32, 1);
  v18.i32[3] = 0;
  v19 = vmulq_lane_f32(a8, *a3.f32, 1);
  v19.i32[3] = 0;
  v20 = vaddq_f32(v16, v18);
  v21 = vmulq_laneq_f32(a9, a3, 2);
  v21.i32[3] = 0;
  v22 = vmulq_laneq_f32(a10, a3, 2);
  v22.i32[3] = 0;
  v23 = vaddq_f32(v20, v21);
  v24 = vmulq_n_f32(v10, a4.f32[0]);
  v24.i32[3] = 0;
  v25 = vaddq_f32(vaddq_f32(v17, v19), v22);
  v26 = vmulq_n_f32(v11, a4.f32[0]);
  v26.i32[3] = 0;
  v27 = vaddq_f32(v23, v24);
  v28 = vaddq_f32(v25, v26);
  v29 = vmulq_lane_f32(v12, *a4.f32, 1);
  v29.i32[3] = 0;
  v30 = vmulq_lane_f32(v13, *a4.f32, 1);
  v30.i32[3] = 0;
  v31 = vaddq_f32(v27, v29);
  v32 = vmulq_laneq_f32(v14, a4, 2);
  v32.i32[3] = 0;
  v33 = vmulq_laneq_f32(v15, a4, 2);
  v33.i32[3] = 0;
  result = vaddq_f32(vaddq_f32(v28, v30), v33);
  *a1 = vaddq_f32(v31, v32);
  a1[1] = result;
  return result;
}

float32x4_t physx::Dy::FeatherstoneArticulation::getImpulseResponse(uint64_t a1, unsigned int a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, uint64_t a11, float32x2_t *a12, float32x4_t *a13)
{
  v19 = *(a1 + 464) + 192 * a2;
  v20 = *a12[2].f32;
  a5.i64[0] = *v19;
  a5.i32[2] = *(v19 + 8);
  a6.i64[0] = *(v19 + 16);
  a6.i32[2] = *(v19 + 24);
  a7.i64[0] = *(v19 + 32);
  a7.i32[2] = *(v19 + 40);
  a8.i64[0] = *(v19 + 48);
  a8.i32[2] = *(v19 + 56);
  a9.i64[0] = *(v19 + 64);
  a9.i32[2] = *(v19 + 72);
  a10.i64[0] = *(v19 + 80);
  a10.i32[2] = *(v19 + 88);
  v13.i64[0] = *(v19 + 96);
  v13.i32[2] = *(v19 + 104);
  v14.i64[0] = *(v19 + 112);
  v14.i32[2] = *(v19 + 120);
  v15.i64[0] = *(v19 + 128);
  v15.i32[2] = *(v19 + 136);
  v16.i64[0] = *(v19 + 144);
  v16.i32[2] = *(v19 + 152);
  v17.i64[0] = *(v19 + 160);
  v17.i32[2] = *(v19 + 168);
  v18.i64[0] = *(v19 + 176);
  v18.i32[2] = *(v19 + 184);
  v21 = vmulq_n_f32(a5, COERCE_FLOAT(*a12->f32));
  v21.i32[3] = 0;
  v22 = vmulq_n_f32(a6, COERCE_FLOAT(*a12->f32));
  v22.i32[3] = 0;
  v23 = vmulq_lane_f32(a7, *a12, 1);
  v23.i32[3] = 0;
  v24 = vmulq_lane_f32(a8, *a12, 1);
  v24.i32[3] = 0;
  v25 = vaddq_f32(v21, v23);
  v26 = vmulq_laneq_f32(a9, *a12->f32, 2);
  v26.i32[3] = 0;
  v27 = vmulq_laneq_f32(a10, *a12->f32, 2);
  v27.i32[3] = 0;
  v28 = vaddq_f32(v25, v26);
  v29 = vmulq_n_f32(v13, v20.f32[0]);
  v29.i32[3] = 0;
  v30 = vaddq_f32(vaddq_f32(v22, v24), v27);
  v31 = vmulq_n_f32(v14, v20.f32[0]);
  v31.i32[3] = 0;
  v32 = vaddq_f32(v28, v29);
  v33 = vaddq_f32(v30, v31);
  v34 = vmulq_lane_f32(v15, *v20.f32, 1);
  v34.i32[3] = 0;
  v35 = vmulq_lane_f32(v16, *v20.f32, 1);
  v35.i32[3] = 0;
  v36 = vaddq_f32(v32, v34);
  v37 = vmulq_laneq_f32(v17, v20, 2);
  v37.i32[3] = 0;
  v38 = vmulq_laneq_f32(v18, v20, 2);
  v38.i32[3] = 0;
  result = vaddq_f32(vaddq_f32(v33, v35), v38);
  *a13 = result;
  a13[1] = vaddq_f32(v36, v37);
  return result;
}

float physx::Dy::FeatherstoneArticulation::getLinkVelocity@<S0>(physx::Dy::FeatherstoneArticulation *this@<X0>, unsigned int a2@<W1>, _OWORD *a3@<X8>)
{
  v3 = *(this + 40) + 32 * a2;
  *&v4 = *(v3 + 16);
  *(&v4 + 1) = *(v3 + 24);
  *&v5 = *v3;
  *(&v5 + 1) = *(v3 + 8);
  *a3 = v4;
  a3[1] = v5;
  return *&v4;
}

float physx::Dy::FeatherstoneArticulation::getLinkMotionVector@<S0>(physx::Dy::FeatherstoneArticulation *this@<X0>, unsigned int a2@<W1>, _OWORD *a3@<X8>)
{
  v3 = *(this + 54) + 32 * a2;
  *&v4 = *(v3 + 16);
  *(&v4 + 1) = *(v3 + 24);
  *&v5 = *v3;
  *(&v5 + 1) = *(v3 + 8);
  *a3 = v4;
  a3[1] = v5;
  return *&v4;
}

float physx::Dy::FeatherstoneArticulation::getMotionVelocity@<S0>(physx::Dy::FeatherstoneArticulation *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 40) + 32 * a2;
  *a3 = *(v3 + 16);
  *(a3 + 8) = *(v3 + 24);
  *(a3 + 12) = 0;
  *(a3 + 16) = *v3;
  result = *(v3 + 8);
  *(a3 + 24) = result;
  *(a3 + 28) = 0;
  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::getMotionAcceleration@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 608);
  v4 = 1.0 / *(this + 648);
  if (a2)
  {
    v5 = *(this + 632) + 80 * a2;
    v6 = *(v3 + 40 * a2 + 16);
    if (*(v5 + 76))
    {
      v7 = *(v5 + 76) - 1;
      v8 = v4 * *(*(this + 240) + 4 * *(v5 + 72) + 4 * v7);
      v9 = *(this + 336) + 32 * a2;
      v10 = (*(this + 512) + 76 * a2 + 24 * v7);
      v11.i64[0] = *v9;
      v12 = v8 * v10[1].f32[0];
      v13 = v8 * v10[1].f32[1];
      v11.i32[2] = *(v9 + 8);
      v11.i32[3] = *(v9 + 16);
      v14 = vaddq_f32(vmulq_n_f32(*v10, v8), v11);
      v11.f32[0] = v12 + *(v9 + 20);
      v15 = v13 + *(v9 + 24);
      _Q3 = vaddq_f32(v14, v14);
      v17 = v11.f32[0] + v11.f32[0];
      v18 = v15 + v15;
    }

    else
    {
      v46.i64[0] = 0x3F0000003FLL;
      v46.i64[1] = 0x3F0000003FLL;
      _Q3 = vnegq_f32(v46);
      v17 = NAN;
      v18 = NAN;
    }

    _S17 = v6[2];
    v47 = v6[3];
    _S18 = (v47 * v47) + -0.5;
    _S19 = *v6;
    _S7 = v6[1];
    __asm
    {
      FMLA            S2, S17, V3.S[2]
      FMLA            S0, S7, V3.S[2]
    }

    v19 = ((v47 * _S0) + (_Q3.f32[0] * _S18)) + (*v6 * _S2);
    __asm { FMLA            S1, S18, V3.S[1] }

    v20 = _S1 + (_S7 * _S2);
    v58 = -_S7;
    __asm
    {
      FMLA            S6, S19, V3.S[1]
      FMLA            S6, S18, V3.S[2]
    }

    v21 = _S6 + (_S17 * _S2);
    __asm { FMLA            S6, S19, V3.S[3] }

    v44 = _S6 + (_S17 * v18);
    __asm { FMLA            S6, S18, V3.S[3] }

    v22 = _S6 + (*v6 * v44);
    __asm { FMLA            S22, S17, V3.S[3] }

    v23 = ((v47 * _S22) + (v17 * _S18)) + (_S7 * v44);
    v45 = (v47 * (vmuls_lane_f32(v58, _Q3, 3) + (*v6 * v17))) + (v18 * _S18);
    goto LABEL_8;
  }

  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  if ((**(this + 664) & 1) == 0)
  {
    v25 = *(v3 + 16);
    v26 = *(this + 320);
    v27 = v4 * (*v26 - *(this + 176));
    v28 = v4 * (v26[1] - *(this + 180));
    v29 = v4 * (v26[2] - *(this + 184));
    v30 = v4 * (v26[4] - *(this + 192));
    v31 = v4 * (v26[5] - *(this + 196));
    v32 = v4 * (v26[6] - *(this + 200));
    v33 = v27 + v27;
    v34 = v28 + v28;
    v35 = v29 + v29;
    _S17 = v25[2];
    v36 = v25[3];
    v38 = (v36 * v36) + -0.5;
    v39 = v25[1];
    v40 = (((v28 + v28) * v39) + (*v25 * (v27 + v27))) + (_S17 * v35);
    v19 = ((v36 * ((v39 * v35) - (_S17 * (v28 + v28)))) + ((v27 + v27) * v38)) + (*v25 * v40);
    v20 = ((v36 * ((_S17 * v33) - (*v25 * v35))) + ((v28 + v28) * v38)) + (v39 * v40);
    v21 = ((v36 * ((*v25 * v34) - (v39 * v33))) + (v35 * v38)) + (_S17 * v40);
    v41 = v30 + v30;
    v42 = v31 + v31;
    v43 = v32 + v32;
    v44 = ((v42 * v39) + (*v25 * v41)) + (_S17 * v43);
    v22 = ((v36 * ((v39 * v43) - (_S17 * v42))) + (v41 * v38)) + (*v25 * v44);
    v23 = ((v36 * ((_S17 * v41) - (*v25 * v43))) + (v42 * v38)) + (v39 * v44);
    v45 = (v36 * ((*v25 * v42) - (v39 * v41))) + (v43 * v38);
LABEL_8:
    v24 = v45 + (_S17 * v44);
  }

  *a3 = v22;
  *(a3 + 4) = v23;
  *(a3 + 8) = v24;
  *(a3 + 12) = 0;
  *(a3 + 16) = v19;
  *(a3 + 20) = v20;
  *(a3 + 24) = v21;
  *(a3 + 28) = 0;
  return this;
}

unint64_t physx::Dy::FeatherstoneArticulation::fillIndexedManager(unint64_t this, unsigned int a2, unint64_t *a3, unsigned __int8 *a4)
{
  if (*(*(*(this + 608) + 40 * a2 + 16) + 159))
  {
    *a4 = 3;
  }

  else
  {
    *a4 = 2;
    *a3 = a2 | this;
  }

  return this;
}

void physx::Dy::PxcFsFlushVelocity(uint64_t a1, float32x2_t *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 320);
  v7 = *(a1 + 368);
  v8 = *(a1 + 608);
  v9 = *(a1 + 632);
  v10 = *(a1 + 624);
  v11 = *(a1 + 240);
  v45 = v7;
  if (**(a1 + 664))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[3].i32[0] = 0;
    a2[2] = 0;
  }

  else
  {
    v12 = *v7;
    v13 = v7[1];
    v14 = -v13;
    v15 = v7[2];
    *&a5 = v7[4];
    v16 = v7[5];
    v17 = -v16;
    *&a3 = v7[6];
    v18.i32[0] = *(a1 + 740);
    v19 = *(a1 + 752);
    v20 = *(a1 + 764);
    v21 = ((-(v13 * v19) - (*v7 * v18.f32[0])) - (v15 * v20)) + ((-(v16 * *(a1 + 788)) - (*&a5 * *(a1 + 776))) - (*&a3 * *(a1 + 800)));
    v22 = *(a1 + 732);
    v23 = *(a1 + 744);
    v24 = *(a1 + 756);
    v25 = vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(v23, -v13), vmul_n_f32(v22, *v7)), vmul_n_f32(v24, v15)), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 780), v17), vmul_n_f32(*(a1 + 768), *&a5)), vmul_n_f32(*(a1 + 792), *&a3)));
    v26 = ((vmuls_lane_f32(v17, v24, 1) - (v24.f32[0] * *&a5)) - (v20 * *&a3)) + ((-(v13 * *(a1 + 824)) - (*v7 * *(a1 + 812))) - (v15 * *(a1 + 836)));
    a2[1].f32[0] = v21;
    a2[1].i32[1] = 0;
    v18.f32[1] = v19;
    v27 = vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(vzip2_s32(v22, v23), v17), vzip1_s32(v22, v23), *&a5, 0), v18, *&a3, 0), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 816), v14), vmul_n_f32(*(a1 + 804), v12)), vmul_n_f32(*(a1 + 828), v15)));
    *a2 = v25;
    a2[2] = v27;
    a2[3].f32[0] = v26;
    *v6 = vadd_f32(v25, *v6);
    v6[1].f32[0] = v21 + v6[1].f32[0];
    v6[2] = vadd_f32(a2[2], v6[2]);
    v6[3].f32[0] = a2[3].f32[0] + v6[3].f32[0];
  }

  a2[3].i32[1] = 0;
  v44 = *(a1 + 616);
  if (v44 >= 2)
  {
    v28 = 0;
    v29 = v10 + 280;
    v30 = (v9 + 152);
    v31 = (v8 + 72);
    v32 = 112;
    v33 = 36;
    v34 = 76;
    do
    {
      v35 = *v30;
      v30 += 20;
      v36 = v11 + 4 * v35;
      v37 = *v31;
      v31 += 10;
      physx::Dy::FeatherstoneArticulation::propagateVelocityW(v29, (*(a1 + 480) + v32), (*(a1 + 496) + v33), *(a1 + 528) + v34, &v45[v28 / 4 + 8], v36, &a2[4 * v37], &v47);
      v38 = &a2[v28 / 8 + 4];
      v39 = v48;
      v38[1].f32[0] = v48;
      v38[1].i32[1] = 0;
      v40 = v50;
      v38[3].f32[0] = v50;
      v38[3].i32[1] = 0;
      v41 = &v6[v28 / 8];
      v42 = v47;
      *v38 = v47;
      v41[5].f32[0] = v39 + v6[v28 / 8 + 5].f32[0];
      v43 = v49;
      v38[2] = v49;
      v41[4] = vadd_f32(v42, v6[v28 / 8 + 4]);
      v41[6] = vadd_f32(v43, v6[v28 / 8 + 6]);
      v43.i32[0] = v6[v28 / 8 + 7].i32[0];
      v28 += 32;
      v29 += 160;
      v41[7].f32[0] = v40 + v43.f32[0];
      v32 += 112;
      v33 += 36;
      v34 += 76;
    }

    while (32 * v44 - 32 != v28);
  }

  bzero(v45, (32 * v44));
}

float32_t physx::Dy::FeatherstoneArticulation::propagateVelocityW@<S0>(uint64_t a1@<X0>, float *a2@<X1>, float *a3@<X2>, uint64_t a4@<X3>, float *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, float32x2_t *a8@<X8>)
{
  v60[3] = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 72);
  _S2 = *a1;
  v10 = *(a7 + 8);
  _D1 = *a7;
  _D3 = *(a1 + 4);
  v13.i32[0] = vdup_lane_s32(_D3, 1).u32[0];
  v13.i32[1] = *a1;
  v14 = vrev64_s32(*a7);
  v14.f32[0] = v10;
  v15 = vmls_f32(vmul_f32(v13, *(a7 + 4)), v14, _D3);
  __asm { FMLS            S3, S2, V1.S[1] }

  v20 = vadd_f32(v15, *(a7 + 16));
  v21 = _D3.f32[0] + *(a7 + 24);
  if (v8)
  {
    v22 = a2[1];
    v23 = a2[2];
    v24 = a2[3];
    v25 = vmuls_lane_f32(v24, _D1, 1);
    v27 = a2[4];
    v26 = a2[5];
    v28 = a2[6];
    v29 = a2[7];
    v30 = a2[8];
    v31 = (((v22 * _D1.f32[0]) + vmuls_lane_f32(v27, _D1, 1)) + (v10 * v29)) + (((a2[10] * v20.f32[0]) + vmuls_lane_f32(a2[13], v20, 1)) + (v21 * a2[16]));
    v32 = (((v23 * _D1.f32[0]) + vmuls_lane_f32(v26, _D1, 1)) + (v10 * v30)) + (((a2[11] * v20.f32[0]) + vmuls_lane_f32(a2[14], v20, 1)) + (v21 * a2[17]));
    v33 = (vmuls_lane_f32(v22, v20, 1) + (*a2 * v20.f32[0])) + (v23 * v21);
    v34 = (vmuls_lane_f32(v27, v20, 1) + (v24 * v20.f32[0])) + (v26 * v21);
    v35 = v33 + (((a2[18] * _D1.f32[0]) + vmuls_lane_f32(a2[21], _D1, 1)) + (v10 * a2[24]));
    v36 = v34 + (((a2[19] * _D1.f32[0]) + vmuls_lane_f32(a2[22], _D1, 1)) + (v10 * a2[25]));
    v37 = ((((*a2 * _D1.f32[0]) + v25) + (v10 * v28)) + (((a2[9] * v20.f32[0]) + vmuls_lane_f32(a2[12], v20, 1)) + (v21 * a2[15]))) + *a5;
    v38 = v31 + a5[1];
    v39 = v32 + a5[2];
    v40 = v35 + a5[4];
    v41 = v36 + a5[5];
    v42 = (((vmuls_lane_f32(v29, v20, 1) + (v28 * v20.f32[0])) + (v30 * v21)) + (((a2[20] * _D1.f32[0]) + vmuls_lane_f32(a2[23], _D1, 1)) + (v10 * a2[26]))) + a5[6];
    v43 = (a4 + 12);
    v44 = v60;
    v45 = *(a4 + 72);
    do
    {
      *v44++ = -((((v38 * v43[1]) + (*v43 * v37)) + (v43[2] * v39)) + (((v41 * *(v43 - 2)) + (*(v43 - 3) * v40)) + (*(v43 - 1) * v42)));
      v43 += 6;
      --v45;
    }

    while (v45);
    v46 = 0;
    v47 = 0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0;
    do
    {
      v51 = v60;
      v52 = a3;
      v53 = v8;
      v54 = 0.0;
      do
      {
        v55 = *v52;
        v52 += 3;
        v56 = v55;
        v57 = *v51++;
        v54 = v54 + (v56 * v57);
        --v53;
      }

      while (v53);
      *(a6 + 4 * v46) = v54 + *(a6 + 4 * v46);
      v58 = a4 + 24 * v46;
      v47 = vadd_f32(v47, vmul_n_f32(*v58, v54));
      v49 = v49 + (v54 * *(v58 + 8));
      v50 = vadd_f32(v50, vmul_n_f32(*(v58 + 12), v54));
      v48 = v48 + (v54 * *(v58 + 20));
      ++v46;
      ++a3;
    }

    while (v46 != v8);
  }

  else
  {
    v47 = 0;
    v49 = 0.0;
    v48 = 0.0;
    v50 = 0;
  }

  result = v10 + v49;
  *a8 = vadd_f32(_D1, v47);
  a8[1].f32[0] = result;
  a8[1].i32[1] = 0;
  a8[2] = vadd_f32(v20, v50);
  a8[3].f32[0] = v21 + v48;
  a8[3].i32[1] = 0;
  return result;
}