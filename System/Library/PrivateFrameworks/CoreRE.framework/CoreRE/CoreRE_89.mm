void re::PhysicsDebugRenderer::drawCapsuleLines(uint64_t a1, float32x4_t *a2, __n128 *a3, float a4, float a5)
{
  v9 = a5 * 0.5;
  LODWORD(v10) = 0;
  *(&v10 + 1) = a5 * 0.5;
  _Q2 = a2[1];
  v12 = vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL);
  v13 = vnegq_f32(_Q2);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v15 = vmlaq_f32(vmulq_f32(_Q2, v14), 0, v12);
  v16 = vaddq_f32(_Q2, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), 0, _Q2, 3));
  v17 = vmulq_f32(_Q2, 0);
  v134 = v16;
  v136 = _Q2.f32[3] - (v17.f32[2] + vaddv_f32(*v17.f32));
  v18 = v16;
  v18.f32[3] = v136;
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v13), v10, v12);
  v20 = vaddq_f32(v19, v19);
  v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
  _Q6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v13), v21, v12);
  v23 = vmulq_f32(*a2, vaddq_f32(vaddq_f32(v10, vmulq_laneq_f32(v21, _Q2, 3)), vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL)));
  v24 = a2[2];
  v121 = vaddq_f32(v24, v23);
  v152[0] = *a2;
  v152[1] = v18;
  v152[2] = v121;
  v128 = v9;
  v18.i32[0] = 0;
  v18.f32[1] = 0.0 - v9;
  _Q6.i32[1] = 0;
  _Q3 = vmlaq_f32(vmulq_f32(_Q2, xmmword_1E30661D0), xmmword_1E3047670, v12);
  v26 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), xmmword_1E3047670, _Q2, 3), vdupq_n_s32(0xB33BBD2E), _Q2);
  v132 = v26;
  _Q3.i32[0] = -1287930578;
  __asm { FMLA            S6, S3, V2.S[3] }

  v130 = *_Q6.i8;
  v26.i32[3] = _Q6.i32[0];
  v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18.u64[0], v18.u64[0]), v18.u64[0], 0xCuLL), v13), v18.u64[0], v12);
  v32 = vaddq_f32(v31, v31);
  v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
  v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v13), v33, v12);
  v141 = v152[0];
  v124 = vaddq_f32(v24, vmulq_f32(v152[0], vaddq_f32(vaddq_f32(v18.u64[0], vmulq_laneq_f32(v33, _Q2, 3)), vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL))));
  v151[0] = v152[0];
  v151[1] = v26;
  v116 = v26;
  v151[2] = v124;
  drawArc(a1, v152, a3 + 1, 0x10u, 3.1416, a4);
  drawArc(a1, v151, a3 + 1, 0x10u, 3.1416, a4);
  v35 = vextq_s8(vuzp1q_s32(v134, v134), v134, 0xCuLL);
  v36 = vmlaq_f32(vmulq_f32(v134, xmmword_1E3071480), xmmword_1E3071490, v35);
  v139 = vdupq_n_s32(0x3F3504F3u);
  v37 = vmlaq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), xmmword_1E3071490, v136), v139, v134);
  v38 = vmulq_f32(v134, xmmword_1E3071490);
  _S10 = 1060439283;
  v37.f32[3] = -((v38.f32[2] + vaddv_f32(*v38.f32)) - (v136 * 0.70711));
  v38.i64[0] = 0x8000000080000000;
  v38.i64[1] = 0x8000000080000000;
  v40 = vmlaq_f32(vmulq_f32(v134, v38), 0, v35);
  v41 = vaddq_f32(v40, v40);
  v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
  v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v134)), v42, v35);
  v119 = v35;
  v122 = vaddq_f32(v121, vmulq_f32(v141, vaddq_f32(vaddq_f32(vmulq_n_f32(v42, v136), 0), vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL))));
  v148 = v141;
  v149 = v37;
  v150 = v122;
  drawArc(a1, &v148, a3 + 1, 0x10u, 3.1416, a4);
  v44 = vextq_s8(vuzp1q_s32(v132, v132), v132, 0xCuLL);
  v45 = vmlaq_f32(vmulq_f32(v132, xmmword_1E3071480), xmmword_1E3071490, v44);
  v46 = vmlaq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), xmmword_1E3071490, *v130.i32), v139, v132);
  v47 = vmulq_f32(v132, xmmword_1E3071490);
  v46.f32[3] = -((v47.f32[2] + vaddv_f32(*v47.f32)) - (*v130.i32 * 0.70711));
  v47.i64[0] = 0x8000000080000000;
  v47.i64[1] = 0x8000000080000000;
  v48 = vmlaq_f32(vmulq_f32(v132, v47), 0, v44);
  v49 = vaddq_f32(v48, v48);
  v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
  v114 = v44;
  v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v132)), v50, v44);
  v148 = v141;
  v149 = v46;
  v125 = vaddq_f32(v124, vmulq_f32(v141, vaddq_f32(vaddq_f32(vmulq_n_f32(v50, *v130.i32), 0), vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL))));
  v150 = v125;
  drawArc(a1, &v148, a3 + 1, 0x10u, 3.1416, a4);
  v52 = vmlaq_f32(vmulq_f32(v134, xmmword_1E30714A0), xmmword_1E30714B0, v119);
  v53 = vmlaq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), xmmword_1E30714B0, v136), v139, v134);
  v54 = vmulq_f32(v134, xmmword_1E30714B0);
  v53.f32[3] = -((v54.f32[2] + vaddv_f32(*v54.f32)) - (v136 * 0.70711));
  v148 = v141;
  v149 = v53;
  v150 = v122;
  drawArc(a1, &v148, a3 + 1, 0x10u, 6.2832, a4);
  if (a5 != 0.0)
  {
    v55 = vmlaq_f32(vmulq_f32(v132, xmmword_1E30714A0), xmmword_1E30714B0, v114);
    v56 = vmlaq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), xmmword_1E30714B0, vdupq_lane_s32(v130, 0)), v139, v132);
    v57 = vmulq_f32(v116, xmmword_1E30714B0);
    v56.f32[3] = -((v57.f32[2] + vaddv_f32(*v57.f32)) - (*v130.i32 * 0.70711));
    v148 = v141;
    v149 = v56;
    v150 = v125;
    drawArc(a1, &v148, a3 + 1, 0x10u, 6.2832, a4);
    *&v58 = a4;
    v59 = LODWORD(a4);
    v59.f32[1] = -v128;
    *(&v58 + 1) = v128;
    *&v60 = -a4;
    v61 = COERCE_UNSIGNED_INT(-a4);
    v61.f32[1] = v128;
    v126 = v61;
    *(&v60 + 1) = -v128;
    v117 = v60;
    v62 = a2[1];
    v123 = vmulq_f32(v59, *a2);
    v145 = *a2;
    v131 = vextq_s8(vuzp1q_s32(v123, v123), v123, 0xCuLL);
    v133 = vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL);
    v63 = vnegq_f32(v62);
    v64 = vmlaq_f32(vmulq_f32(v131, v63), v123, v133);
    v65 = vaddq_f32(v64, v64);
    v66 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
    v135 = v62;
    v137 = v63;
    v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL), v63), v66, v133);
    v142 = a2[2];
    v148 = vaddq_f32(v142, vaddq_f32(vaddq_f32(v123, vmulq_laneq_f32(v66, v62, 3)), vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL)));
    v120 = vmulq_f32(v58, v145);
    v129 = vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL);
    v68 = vmlaq_f32(vmulq_f32(v129, v63), v120, v133);
    v69 = vaddq_f32(v68, v68);
    v70 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
    v71 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), v63), v70, v133);
    v147 = vaddq_f32(v142, vaddq_f32(vaddq_f32(v120, vmulq_laneq_f32(v70, v62, 3)), vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL)));
    v72 = re::PrimitiveRenderingContext::addLine(a1, &v148, &v147);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v72, a3 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v115 = vmulq_f32(v126, v145);
    v127 = vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL);
    v73 = vmlaq_f32(vmulq_f32(v127, v137), v115, v133);
    v74 = vaddq_f32(v73, v73);
    v75 = vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL);
    v76 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), v137), v75, v133);
    v148 = vaddq_f32(v142, vaddq_f32(vaddq_f32(v115, vmulq_laneq_f32(v75, v135, 3)), vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL)));
    v113 = vmulq_f32(v117, v145);
    v118 = vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL);
    v77 = vmlaq_f32(vmulq_f32(v118, v137), v113, v133);
    v78 = vaddq_f32(v77, v77);
    v79 = vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL);
    v80 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), v137), v79, v133);
    v147 = vaddq_f32(v142, vaddq_f32(vaddq_f32(v113, vmulq_laneq_f32(v79, v135, 3)), vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL)));
    v81 = re::PrimitiveRenderingContext::addLine(a1, &v148, &v147);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v81, a3 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    _V3.S[3] = v135.i32[3];
    v83 = vmlaq_f32(vmulq_f32(v135, xmmword_1E3071480), xmmword_1E3071490, v133);
    v84 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL), xmmword_1E3071490, v135, 3), v139, v135);
    __asm { FMLA            S1, S10, V3.S[3] }

    v86 = _S1;
    v87.i64[0] = 0x8000000080000000;
    v87.i64[1] = 0x8000000080000000;
    v88 = vmlaq_f32(vmulq_f32(v135, v87), 0, v133);
    v89 = vaddq_f32(v88, v88);
    v90 = vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL);
    v91 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL), v137), v90, v133);
    v92 = vaddq_f32(v142, vmulq_f32(v145, vaddq_f32(vaddq_f32(vmulq_laneq_f32(v90, v135, 3), 0), vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL))));
    v140 = v86;
    v143 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
    v138 = vnegq_f32(v84);
    v93 = vmlaq_f32(vmulq_f32(v131, v138), v123, v143);
    v94 = vaddq_f32(v93, v93);
    v95 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
    v96 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL), v138), v95, v143);
    v97 = vaddq_f32(v92, vaddq_f32(vaddq_f32(v123, vmulq_n_f32(v95, v86)), vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL)));
    v146 = v92;
    v98 = vmlaq_f32(vmulq_f32(v129, v138), v120, v143);
    v99 = vaddq_f32(v98, v98);
    v100 = vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL);
    v101 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL), v138), v100, v143);
    v147 = vaddq_f32(v92, vaddq_f32(vaddq_f32(v120, vmulq_n_f32(v100, v86)), vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL)));
    v148 = v97;
    v102 = re::PrimitiveRenderingContext::addLine(a1, &v148, &v147);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v102, a3 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v103 = vmlaq_f32(vmulq_f32(v127, v138), v115, v143);
    v104 = vaddq_f32(v103, v103);
    v105 = vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL);
    v106 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL), v138), v105, v143);
    v107 = vaddq_f32(v146, vaddq_f32(vaddq_f32(v115, vmulq_n_f32(v105, v140)), vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL)));
    v108 = vmlaq_f32(vmulq_f32(v118, v138), v113, v143);
    v109 = vaddq_f32(v108, v108);
    v110 = vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL);
    v111 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v110, v110), v110, 0xCuLL), v138), v110, v143);
    v147 = vaddq_f32(v146, vaddq_f32(vaddq_f32(v113, vmulq_n_f32(v110, v140)), vextq_s8(vuzp1q_s32(v111, v111), v111, 0xCuLL)));
    v148 = v107;
    v112 = re::PrimitiveRenderingContext::addLine(a1, &v148, &v147);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v112, a3 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
  }
}

void drawArc(uint64_t a1, float32x4_t *a2, __n128 *a3, unsigned int a4, float a5, float a6)
{
  v6 = a4;
  v10 = __sincosf_stret((a5 / a4) * 0.5);
  v11 = LODWORD(a6);
  v12.i64[0] = 0;
  v12.i64[1] = LODWORD(v10.__sinval);
  v35 = vnegq_f32(v12);
  do
  {
    v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v35), v11, LODWORD(v10.__sinval));
    v14 = vaddq_f32(v13, v13);
    v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
    v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v35), v15, LODWORD(v10.__sinval));
    v37 = vaddq_f32(vaddq_f32(v11, vmulq_n_f32(v15, v10.__cosval)), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
    v17 = *a2;
    v18 = a2[1];
    v19 = vmulq_f32(v11, *a2);
    v20 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
    v21 = vnegq_f32(v18);
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v21), v19, v20);
    v23 = vaddq_f32(v22, v22);
    v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
    v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v21), v24, v20);
    v26 = vaddq_f32(vaddq_f32(v19, vmulq_laneq_f32(v24, v18, 3)), vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
    v27 = a2[2];
    v39 = vaddq_f32(v27, v26);
    v28 = vmulq_f32(v17, v37);
    v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v21), v28, v20);
    v30 = vaddq_f32(v29, v29);
    v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
    v32 = vaddq_f32(v28, vmulq_laneq_f32(v31, v18, 3));
    v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v21), v31, v20);
    v38 = vaddq_f32(v27, vaddq_f32(v32, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL)));
    v34 = re::PrimitiveRenderingContext::addLine(a1, &v39, &v38);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v34, a3, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v11 = v37;
    --v6;
  }

  while (v6);
}

void re::PhysicsDebugRenderer::drawCapsuleShape(uint64_t a1, float32x4_t *a2, __n128 *a3, int32x2_t a4, __n128 a5)
{
  _Q0 = a2[1];
  v9 = a2[2];
  _Q3 = vmlaq_f32(vmulq_f32(_Q0, xmmword_1E30714C0), xmmword_1E30714D0, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  v33 = vdupq_n_s32(0x3F3504F3u);
  v11 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), xmmword_1E30714D0, _Q0, 3), v33, _Q0);
  _S8 = 1060439283;
  __asm { FMLA            S3, S8, V0.S[3] }

  v17 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v18 = vnegq_f32(v11);
  v19 = vmulq_f32(v11, xmmword_1E30714E0);
  v11.i32[3] = _Q3.i32[0];
  v39 = v11;
  v20 = vmlaq_f32(v19, xmmword_1E30714F0, v17);
  v21 = vaddq_f32(v20, v20);
  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vaddq_f32(vmulq_n_f32(v22, *_Q3.i32), xmmword_1E30714F0);
  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v18), v22, v17);
  v36 = vmulq_n_f32(vaddq_f32(v23, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL)), a5.n128_f32[0]);
  v38 = vsubq_f32(v9, v36);
  v25 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 2u, &v38, &v39);
  v26 = a5;
  v26.n128_u32[1] = a4.i32[0];
  v26.n128_u32[2] = a4.i32[0];
  v38 = v26;
  re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v25, 2u, 2, &v38);
  re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a1, v25, 2u, 3, a3 + 1);
  v38 = vaddq_f32(a2[2], v36);
  v27 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 7u, &v38, &v39);
  v35 = vdupq_lane_s32(a4, 0);
  v38 = v35;
  re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v27, 7u, 2, &v38);
  re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a1, v27, 7u, 3, a3 + 1);
  _Q0 = a2[1];
  _Q3 = vmlaq_f32(vmulq_f32(_Q0, xmmword_1E3071500), xmmword_1E3071510, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  v30 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), xmmword_1E3071510, _Q0, 3), v33, _Q0);
  __asm { FMLA            S3, S8, V0.S[3] }

  v30.i32[3] = _Q3.i32[0];
  v37 = vsubq_f32(a2[2], v36);
  v38 = v30;
  v31 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 7u, &v37, &v38);
  v37 = v35;
  re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v31, 7u, 2, &v37);
  re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a1, v31, 7u, 3, a3 + 1);
}

void re::PhysicsDebugRenderer::drawContacts(uint64_t a1, float32x4_t *a2, uint64_t a3, __n128 *a4)
{
  v8 = a2->f32[0];
  if (a2->f32[0] < a2->f32[1])
  {
    v8 = a2->f32[1];
  }

  if (v8 >= a2->f32[2])
  {
    v9 = v8;
  }

  else
  {
    v9 = a2->f32[2];
  }

  v10 = *(a3 + 104);
  if (v10)
  {
    v11 = 0;
    v12 = *(a3 + 88);
    while (1)
    {
      v13 = *v12;
      v12 += 36;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(a3 + 104);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 != v10)
  {
    v14.i64[0] = 0x3F0000003F000000;
    v14.i64[1] = 0x3F0000003F000000;
    v15 = *(a3 + 104);
    do
    {
      v16 = *(a3 + 88) + 144 * v11;
      v17 = *(v16 + 48);
      if (v17)
      {
        v18 = *(v16 + 64);
        v19 = &v18[5 * v17];
        v20 = 80 * v17;
        f32 = v18[4].f32;
        while (*f32 > 0.0)
        {
          v22 = vmulq_f32(*(f32 - 4), *(f32 - 4));
          if ((v22.f32[2] + vaddv_f32(*v22.f32)) != 0.0)
          {
            break;
          }

          f32 += 20;
          v20 -= 80;
          if (!v20)
          {
            goto LABEL_22;
          }
        }

        do
        {
          v23 = vmulq_f32(vaddq_f32(*v18, v18[1]), v14);
          v24 = a2[1];
          v25 = vmulq_f32(*a2, v23);
          v26 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
          v27 = vnegq_f32(v24);
          v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v27), v25, v26);
          v29 = vaddq_f32(v28, v28);
          v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
          v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v27), v30, v26);
          v32 = vaddq_f32(a2[2], vaddq_f32(vaddq_f32(v25, vmulq_laneq_f32(v30, v24, 3)), vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL)));
          v33 = v18[2];
          v34 = v18[3];
          v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v27), v33, v26);
          v36 = vaddq_f32(v35, v35);
          v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
          v45 = v32;
          v38 = vaddq_f32(v33, vmulq_laneq_f32(v37, v24, 3));
          v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), v27), v37, v26);
          v40 = vaddq_f32(v38, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
          v41 = vmulq_f32(v34, v34);
          v46 = vaddq_f32(v32, vmulq_n_f32(v40, v9 * sqrtf(v41.f32[2] + vaddv_f32(*v41.f32))));
          v42 = re::PrimitiveRenderingContext::addPoint(a1, &v45);
          re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(1, v42, a4 + 1, (a1 + 40), (a1 + 513), *(a1 + 16), *(a1 + 520), *(a1 + 1192));
          v43 = re::PrimitiveRenderingContext::addLine(a1, &v45, &v46);
          re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v43, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
          v14.i64[0] = 0x3F0000003F000000;
          v14.i64[1] = 0x3F0000003F000000;
          v18 += 5;
        }

        while (v18 != v19);
        v15 = *(a3 + 104);
      }

LABEL_22:
      if (v15 <= v11 + 1)
      {
        v44 = v11 + 1;
      }

      else
      {
        v44 = v15;
      }

      while (v44 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(*(a3 + 88) + 144 * v11) & 0x80000000) != 0)
        {
          goto LABEL_29;
        }
      }

      LODWORD(v11) = v44;
LABEL_29:
      ;
    }

    while (v11 != v10);
  }
}

void re::PhysicsDebugRenderer::drawTransformedShape(uint64_t a1, float32x4_t *a2, const void *a3, __n128 *a4)
{
  v718 = *MEMORY[0x1E69E9840];
  v9 = (*(*a3 + 24))(a3);
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
LABEL_62:
        memset(v705, 0, 24);
        *&v705[24] = 0x3F80000000000000;
        (*(*a3 + 16))(buf, a3, v705);
        v557 = vcgtq_f32(*buf, v714);
        v557.i32[3] = v557.i32[2];
        v558 = vmaxvq_u32(v557);
        v559.i64[0] = 0x3F0000003F000000;
        v559.i64[1] = 0x3F0000003F000000;
        v560 = vmulq_f32(vaddq_f32(*buf, v714), v559);
        if (v558 >= 0)
        {
          v561 = v560.i64[1];
        }

        else
        {
          v561 = 0;
        }

        if (v558 >= 0)
        {
          v562 = v560.i64[0];
        }

        else
        {
          v562 = 0;
        }

        v563.i64[0] = v562;
        v563.i64[1] = v561;
        v564 = a2[1];
        v565 = vmulq_f32(*a2, v563);
        v566 = vextq_s8(vuzp1q_s32(v564, v564), v564, 0xCuLL);
        v567 = vnegq_f32(v564);
        v568 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v565, v565), v565, 0xCuLL), v567), v565, v566);
        v569 = vaddq_f32(v568, v568);
        v570 = vextq_s8(vuzp1q_s32(v569, v569), v569, 0xCuLL);
        v571 = vaddq_f32(v565, vmulq_laneq_f32(v570, v564, 3));
        v572 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v570, v570), v570, 0xCuLL), v567), v570, v566);
        v700 = vaddq_f32(a2[2], vaddq_f32(v571, vextq_s8(vuzp1q_s32(v572, v572), v572, 0xCuLL)));
        v547 = re::PrimitiveRenderingContext::addPoint(a1, &v700);
        v548 = *(a1 + 520);
        v549 = *(a1 + 16);
        v550 = *(a1 + 1192);
        v551 = a4 + 1;
        v552 = (a1 + 40);
        v553 = (a1 + 513);
        v554 = 1;
        goto LABEL_69;
      }

      if (v9 != 2)
      {
LABEL_60:
        v555 = *re::physicsLogObjects(v9);
        if (os_log_type_enabled(v555, OS_LOG_TYPE_DEFAULT))
        {
          v556 = (*(*a3 + 24))(a3);
          *buf = 67109120;
          *&buf[4] = v556;
          _os_log_impl(&dword_1E1C61000, v555, OS_LOG_TYPE_DEFAULT, "Unsupported triangulation %d", buf, 8u);
        }

        goto LABEL_62;
      }

      (*(*v188 + 64))(v188);
      v190.n128_u64[0] = 0;
      v191 = a1;
      v192 = a2;
    }

    else
    {
      if (v9 == 3)
      {
        v222.i64[0] = (*(*v219 + 64))(v219);
        v222.i64[1] = v221;
        if (a4->n128_u32[0] != 3)
        {
          v697 = v222;
          v573 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 0, a2[2].f32, a2[1].f32);
          v574.i64[0] = 0x3F0000003F000000;
          v574.i64[1] = 0x3F0000003F000000;
          *buf = vmulq_f32(v697, v574);
          re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v573, 0, 2, buf);
          v575 = a4 + 1;
          v576 = a1;
          v577 = v573;
          v578 = 0;
          goto LABEL_73;
        }

        v223.i64[0] = 0x3F0000003F000000;
        v223.i64[1] = 0x3F0000003F000000;
        v675 = vmulq_f32(v222, v223);
        v220.f32[0] = -v675.f32[0];
        v224 = v220;
        v224.i32[1] = v675.i32[1];
        v225 = v224;
        v225.f32[2] = -v675.f32[2];
        v226 = v225;
        v660 = v225;
        v227 = v675;
        v227.f32[2] = -v675.f32[2];
        v228 = v227;
        v663 = v227;
        v224.i32[2] = v675.i32[2];
        v687 = v224;
        v229 = v675;
        v229.f32[1] = -v675.f32[1];
        v665 = vnegq_f32(v675);
        v230 = v229;
        v230.f32[2] = -v675.f32[2];
        v670 = v230;
        v229.i32[2] = v675.i32[2];
        v681 = v229;
        v220.f32[1] = -v675.f32[1];
        v220.i32[2] = v675.i32[2];
        v695 = v220;
        v231 = *a2;
        v232 = a2[1];
        v233 = vmulq_f32(v226, *a2);
        v234 = vextq_s8(vuzp1q_s32(v232, v232), v232, 0xCuLL);
        v235 = vnegq_f32(v232);
        v236 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v233, v233), v233, 0xCuLL), v235), v233, v234);
        v237 = vaddq_f32(v236, v236);
        v238 = vextq_s8(vuzp1q_s32(v237, v237), v237, 0xCuLL);
        v239 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v238, v238), v238, 0xCuLL), v235), v238, v234);
        v240 = vaddq_f32(vaddq_f32(v233, vmulq_laneq_f32(v238, v232, 3)), vextq_s8(vuzp1q_s32(v239, v239), v239, 0xCuLL));
        v241 = a2[2];
        *buf = vaddq_f32(v241, v240);
        v242 = vmulq_f32(v228, v231);
        v243 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v242, v242), v242, 0xCuLL), v235), v242, v234);
        v244 = vaddq_f32(v243, v243);
        v245 = vextq_s8(vuzp1q_s32(v244, v244), v244, 0xCuLL);
        v246 = vaddq_f32(v242, vmulq_laneq_f32(v245, v232, 3));
        v247 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v245, v245), v245, 0xCuLL), v235), v245, v234);
        *v705 = vaddq_f32(v241, vaddq_f32(v246, vextq_s8(vuzp1q_s32(v247, v247), v247, 0xCuLL)));
        v248 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v248, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v249 = *a2;
        v250 = a2[1];
        v251 = vmulq_f32(v663, *a2);
        v252 = vextq_s8(vuzp1q_s32(v250, v250), v250, 0xCuLL);
        v253 = vnegq_f32(v250);
        v254 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v251, v251), v251, 0xCuLL), v253), v251, v252);
        v255 = vaddq_f32(v254, v254);
        v256 = vextq_s8(vuzp1q_s32(v255, v255), v255, 0xCuLL);
        v257 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v256, v256), v256, 0xCuLL), v253), v256, v252);
        v258 = vaddq_f32(vaddq_f32(v251, vmulq_laneq_f32(v256, v250, 3)), vextq_s8(vuzp1q_s32(v257, v257), v257, 0xCuLL));
        v259 = a2[2];
        *buf = vaddq_f32(v259, v258);
        v260 = vmulq_f32(v675, v249);
        v261 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v260, v260), v260, 0xCuLL), v253), v260, v252);
        v262 = vaddq_f32(v261, v261);
        v263 = vextq_s8(vuzp1q_s32(v262, v262), v262, 0xCuLL);
        v264 = vaddq_f32(v260, vmulq_laneq_f32(v263, v250, 3));
        v265 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v263, v263), v263, 0xCuLL), v253), v263, v252);
        *v705 = vaddq_f32(v259, vaddq_f32(v264, vextq_s8(vuzp1q_s32(v265, v265), v265, 0xCuLL)));
        v266 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v266, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v267 = *a2;
        v268 = a2[1];
        v269 = vmulq_f32(v675, *a2);
        v270 = vextq_s8(vuzp1q_s32(v268, v268), v268, 0xCuLL);
        v271 = vnegq_f32(v268);
        v272 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v269, v269), v269, 0xCuLL), v271), v269, v270);
        v273 = vaddq_f32(v272, v272);
        v274 = vextq_s8(vuzp1q_s32(v273, v273), v273, 0xCuLL);
        v275 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v274, v274), v274, 0xCuLL), v271), v274, v270);
        v276 = vaddq_f32(vaddq_f32(v269, vmulq_laneq_f32(v274, v268, 3)), vextq_s8(vuzp1q_s32(v275, v275), v275, 0xCuLL));
        v277 = a2[2];
        *buf = vaddq_f32(v277, v276);
        v278 = vmulq_f32(v687, v267);
        v279 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v278, v278), v278, 0xCuLL), v271), v278, v270);
        v280 = vaddq_f32(v279, v279);
        v281 = vextq_s8(vuzp1q_s32(v280, v280), v280, 0xCuLL);
        v282 = vaddq_f32(v278, vmulq_laneq_f32(v281, v268, 3));
        v283 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v281, v281), v281, 0xCuLL), v271), v281, v270);
        *v705 = vaddq_f32(v277, vaddq_f32(v282, vextq_s8(vuzp1q_s32(v283, v283), v283, 0xCuLL)));
        v284 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v284, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v285 = *a2;
        v286 = a2[1];
        v287 = vmulq_f32(v687, *a2);
        v288 = vextq_s8(vuzp1q_s32(v286, v286), v286, 0xCuLL);
        v289 = vnegq_f32(v286);
        v290 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v287, v287), v287, 0xCuLL), v289), v287, v288);
        v291 = vaddq_f32(v290, v290);
        v292 = vextq_s8(vuzp1q_s32(v291, v291), v291, 0xCuLL);
        v293 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v292, v292), v292, 0xCuLL), v289), v292, v288);
        v294 = vaddq_f32(vaddq_f32(v287, vmulq_laneq_f32(v292, v286, 3)), vextq_s8(vuzp1q_s32(v293, v293), v293, 0xCuLL));
        v295 = a2[2];
        *buf = vaddq_f32(v295, v294);
        v296 = vmulq_f32(v660, v285);
        v297 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v296, v296), v296, 0xCuLL), v289), v296, v288);
        v298 = vaddq_f32(v297, v297);
        v299 = vextq_s8(vuzp1q_s32(v298, v298), v298, 0xCuLL);
        v300 = vaddq_f32(v296, vmulq_laneq_f32(v299, v286, 3));
        v301 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v299, v299), v299, 0xCuLL), v289), v299, v288);
        *v705 = vaddq_f32(v295, vaddq_f32(v300, vextq_s8(vuzp1q_s32(v301, v301), v301, 0xCuLL)));
        v302 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v302, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v303 = *a2;
        v304 = a2[1];
        v305 = vmulq_f32(*a2, v665);
        v306 = vextq_s8(vuzp1q_s32(v304, v304), v304, 0xCuLL);
        v307 = vnegq_f32(v304);
        v308 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v305, v305), v305, 0xCuLL), v307), v305, v306);
        v309 = vaddq_f32(v308, v308);
        v310 = vextq_s8(vuzp1q_s32(v309, v309), v309, 0xCuLL);
        v311 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v310, v310), v310, 0xCuLL), v307), v310, v306);
        v312 = vaddq_f32(vaddq_f32(v305, vmulq_laneq_f32(v310, v304, 3)), vextq_s8(vuzp1q_s32(v311, v311), v311, 0xCuLL));
        v313 = a2[2];
        *buf = vaddq_f32(v313, v312);
        v314 = vmulq_f32(v670, v303);
        v315 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v314, v314), v314, 0xCuLL), v307), v314, v306);
        v316 = vaddq_f32(v315, v315);
        v317 = vextq_s8(vuzp1q_s32(v316, v316), v316, 0xCuLL);
        v318 = vaddq_f32(v314, vmulq_laneq_f32(v317, v304, 3));
        v319 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v317, v317), v317, 0xCuLL), v307), v317, v306);
        *v705 = vaddq_f32(v313, vaddq_f32(v318, vextq_s8(vuzp1q_s32(v319, v319), v319, 0xCuLL)));
        v320 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v320, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v321 = *a2;
        v322 = a2[1];
        v323 = vmulq_f32(v670, *a2);
        v324 = vextq_s8(vuzp1q_s32(v322, v322), v322, 0xCuLL);
        v325 = vnegq_f32(v322);
        v326 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v323, v323), v323, 0xCuLL), v325), v323, v324);
        v327 = vaddq_f32(v326, v326);
        v328 = vextq_s8(vuzp1q_s32(v327, v327), v327, 0xCuLL);
        v329 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v328, v328), v328, 0xCuLL), v325), v328, v324);
        v330 = vaddq_f32(vaddq_f32(v323, vmulq_laneq_f32(v328, v322, 3)), vextq_s8(vuzp1q_s32(v329, v329), v329, 0xCuLL));
        v331 = a2[2];
        *buf = vaddq_f32(v331, v330);
        v332 = vmulq_f32(v681, v321);
        v333 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v332, v332), v332, 0xCuLL), v325), v332, v324);
        v334 = vaddq_f32(v333, v333);
        v335 = vextq_s8(vuzp1q_s32(v334, v334), v334, 0xCuLL);
        v336 = vaddq_f32(v332, vmulq_laneq_f32(v335, v322, 3));
        v337 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v335, v335), v335, 0xCuLL), v325), v335, v324);
        *v705 = vaddq_f32(v331, vaddq_f32(v336, vextq_s8(vuzp1q_s32(v337, v337), v337, 0xCuLL)));
        v338 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v338, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v339 = *a2;
        v340 = a2[1];
        v341 = vmulq_f32(v681, *a2);
        v342 = vextq_s8(vuzp1q_s32(v340, v340), v340, 0xCuLL);
        v343 = vnegq_f32(v340);
        v344 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v341, v341), v341, 0xCuLL), v343), v341, v342);
        v345 = vaddq_f32(v344, v344);
        v346 = vextq_s8(vuzp1q_s32(v345, v345), v345, 0xCuLL);
        v347 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v346, v346), v346, 0xCuLL), v343), v346, v342);
        v348 = vaddq_f32(vaddq_f32(v341, vmulq_laneq_f32(v346, v340, 3)), vextq_s8(vuzp1q_s32(v347, v347), v347, 0xCuLL));
        v349 = a2[2];
        *buf = vaddq_f32(v349, v348);
        v350 = vmulq_f32(v695, v339);
        v351 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v350, v350), v350, 0xCuLL), v343), v350, v342);
        v352 = vaddq_f32(v351, v351);
        v353 = vextq_s8(vuzp1q_s32(v352, v352), v352, 0xCuLL);
        v354 = vaddq_f32(v350, vmulq_laneq_f32(v353, v340, 3));
        v355 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v353, v353), v353, 0xCuLL), v343), v353, v342);
        *v705 = vaddq_f32(v349, vaddq_f32(v354, vextq_s8(vuzp1q_s32(v355, v355), v355, 0xCuLL)));
        v356 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v356, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v357 = *a2;
        v358 = a2[1];
        v359 = vmulq_f32(v695, *a2);
        v360 = vextq_s8(vuzp1q_s32(v358, v358), v358, 0xCuLL);
        v361 = vnegq_f32(v358);
        v362 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v359, v359), v359, 0xCuLL), v361), v359, v360);
        v363 = vaddq_f32(v362, v362);
        v364 = vextq_s8(vuzp1q_s32(v363, v363), v363, 0xCuLL);
        v365 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v364, v364), v364, 0xCuLL), v361), v364, v360);
        v366 = vaddq_f32(vaddq_f32(v359, vmulq_laneq_f32(v364, v358, 3)), vextq_s8(vuzp1q_s32(v365, v365), v365, 0xCuLL));
        v367 = a2[2];
        *buf = vaddq_f32(v367, v366);
        v368 = vmulq_f32(v357, v665);
        v369 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v368, v368), v368, 0xCuLL), v361), v368, v360);
        v370 = vaddq_f32(v369, v369);
        v371 = vextq_s8(vuzp1q_s32(v370, v370), v370, 0xCuLL);
        v372 = vaddq_f32(v368, vmulq_laneq_f32(v371, v358, 3));
        v373 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v371, v371), v371, 0xCuLL), v361), v371, v360);
        *v705 = vaddq_f32(v367, vaddq_f32(v372, vextq_s8(vuzp1q_s32(v373, v373), v373, 0xCuLL)));
        v374 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v374, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v375 = *a2;
        v376 = a2[1];
        v377 = vmulq_f32(v660, *a2);
        v378 = vextq_s8(vuzp1q_s32(v376, v376), v376, 0xCuLL);
        v379 = vnegq_f32(v376);
        v380 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v377, v377), v377, 0xCuLL), v379), v377, v378);
        v381 = vaddq_f32(v380, v380);
        v382 = vextq_s8(vuzp1q_s32(v381, v381), v381, 0xCuLL);
        v383 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v382, v382), v382, 0xCuLL), v379), v382, v378);
        v384 = vaddq_f32(vaddq_f32(v377, vmulq_laneq_f32(v382, v376, 3)), vextq_s8(vuzp1q_s32(v383, v383), v383, 0xCuLL));
        v385 = a2[2];
        *buf = vaddq_f32(v385, v384);
        v386 = vmulq_f32(v375, v665);
        v387 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v386, v386), v386, 0xCuLL), v379), v386, v378);
        v388 = vaddq_f32(v387, v387);
        v389 = vextq_s8(vuzp1q_s32(v388, v388), v388, 0xCuLL);
        v390 = vaddq_f32(v386, vmulq_laneq_f32(v389, v376, 3));
        v391 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v389, v389), v389, 0xCuLL), v379), v389, v378);
        *v705 = vaddq_f32(v385, vaddq_f32(v390, vextq_s8(vuzp1q_s32(v391, v391), v391, 0xCuLL)));
        v392 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v392, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v393 = *a2;
        v394 = a2[1];
        v395 = vmulq_f32(v663, *a2);
        v396 = vextq_s8(vuzp1q_s32(v394, v394), v394, 0xCuLL);
        v397 = vnegq_f32(v394);
        v398 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v395, v395), v395, 0xCuLL), v397), v395, v396);
        v399 = vaddq_f32(v398, v398);
        v400 = vextq_s8(vuzp1q_s32(v399, v399), v399, 0xCuLL);
        v401 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v400, v400), v400, 0xCuLL), v397), v400, v396);
        v402 = vaddq_f32(vaddq_f32(v395, vmulq_laneq_f32(v400, v394, 3)), vextq_s8(vuzp1q_s32(v401, v401), v401, 0xCuLL));
        v403 = a2[2];
        *buf = vaddq_f32(v403, v402);
        v404 = vmulq_f32(v670, v393);
        v405 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v404, v404), v404, 0xCuLL), v397), v404, v396);
        v406 = vaddq_f32(v405, v405);
        v407 = vextq_s8(vuzp1q_s32(v406, v406), v406, 0xCuLL);
        v408 = vaddq_f32(v404, vmulq_laneq_f32(v407, v394, 3));
        v409 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v407, v407), v407, 0xCuLL), v397), v407, v396);
        *v705 = vaddq_f32(v403, vaddq_f32(v408, vextq_s8(vuzp1q_s32(v409, v409), v409, 0xCuLL)));
        v410 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v410, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v411 = *a2;
        v412 = a2[1];
        v413 = vmulq_f32(v675, *a2);
        v414 = vextq_s8(vuzp1q_s32(v412, v412), v412, 0xCuLL);
        v415 = vnegq_f32(v412);
        v416 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v413, v413), v413, 0xCuLL), v415), v413, v414);
        v417 = vaddq_f32(v416, v416);
        v418 = vextq_s8(vuzp1q_s32(v417, v417), v417, 0xCuLL);
        v419 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v418, v418), v418, 0xCuLL), v415), v418, v414);
        v420 = vaddq_f32(vaddq_f32(v413, vmulq_laneq_f32(v418, v412, 3)), vextq_s8(vuzp1q_s32(v419, v419), v419, 0xCuLL));
        v421 = a2[2];
        *buf = vaddq_f32(v421, v420);
        v422 = vmulq_f32(v681, v411);
        v423 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v422, v422), v422, 0xCuLL), v415), v422, v414);
        v424 = vaddq_f32(v423, v423);
        v425 = vextq_s8(vuzp1q_s32(v424, v424), v424, 0xCuLL);
        v426 = vaddq_f32(v422, vmulq_laneq_f32(v425, v412, 3));
        v427 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v425, v425), v425, 0xCuLL), v415), v425, v414);
        *v705 = vaddq_f32(v421, vaddq_f32(v426, vextq_s8(vuzp1q_s32(v427, v427), v427, 0xCuLL)));
        v428 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v428, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v429 = *a2;
        v430 = a2[1];
        v431 = vmulq_f32(v687, *a2);
        v432 = vextq_s8(vuzp1q_s32(v430, v430), v430, 0xCuLL);
        v433 = vnegq_f32(v430);
        v434 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v431, v431), v431, 0xCuLL), v433), v431, v432);
        v435 = vaddq_f32(v434, v434);
        v436 = vextq_s8(vuzp1q_s32(v435, v435), v435, 0xCuLL);
        v437 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v436, v436), v436, 0xCuLL), v433), v436, v432);
        v438 = vaddq_f32(vaddq_f32(v431, vmulq_laneq_f32(v436, v430, 3)), vextq_s8(vuzp1q_s32(v437, v437), v437, 0xCuLL));
        v439 = a2[2];
        *buf = vaddq_f32(v439, v438);
        v440 = v695;
LABEL_58:
        v541 = vmulq_f32(v440, v429);
        v542 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v541, v541), v541, 0xCuLL), v433), v541, v432);
        v543 = vaddq_f32(v542, v542);
        v544 = vextq_s8(vuzp1q_s32(v543, v543), v543, 0xCuLL);
        v545 = vaddq_f32(v541, vmulq_laneq_f32(v544, v430, 3));
        v546 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v544, v544), v544, 0xCuLL), v433), v544, v432);
        v107 = vaddq_f32(v439, vaddq_f32(v545, vextq_s8(vuzp1q_s32(v546, v546), v546, 0xCuLL)));
        goto LABEL_59;
      }

      if (v9 != 4)
      {
        v109 = (*(*v108 + 88))(v108, 0, 0);
        if (!v109)
        {
          return;
        }

        v110 = v109;
        v703 = 0;
        v701 = 0;
        v700 = 0uLL;
        v702 = 0;
        re::DynamicArray<unsigned short>::resize(&v700, v109);
        if (v701)
        {
          (*(*v108 + 88))(v108, v703, v110);
          v111 = 0;
          while (1)
          {
            v112 = v701;
            if (v701 <= v111)
            {
              break;
            }

            v113 = *(v703 + 2 * v111);
            v114 = (*(*v108 + 72))(v108);
            v115 = (*(*v108 + 64))(v108) + v114 * v113;
            v116.i64[0] = *v115;
            v116.i32[2] = *(v115 + 8);
            v117 = a2[1];
            v118 = vmulq_f32(*a2, v116);
            v119 = vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL);
            v120 = vnegq_f32(v117);
            v121 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL), v120), v118, v119);
            v122 = vaddq_f32(v121, v121);
            v123 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
            v124 = vaddq_f32(v118, vmulq_laneq_f32(v123, v117, 3));
            v125 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v123, v123), v123, 0xCuLL), v120), v123, v119);
            *v705 = vaddq_f32(a2[2], vaddq_f32(v124, vextq_s8(vuzp1q_s32(v125, v125), v125, 0xCuLL)));
            v4 = v111 + 1;
            v112 = v701;
            if (v701 <= v111 + 1)
            {
              goto LABEL_92;
            }

            v126 = *(v703 + 2 * v111 + 2);
            v127 = (*(*v108 + 72))(v108);
            v128 = (*(*v108 + 64))(v108) + v127 * v126;
            v129.i64[0] = *v128;
            v129.i32[2] = *(v128 + 8);
            v130 = a2[1];
            v131 = vmulq_f32(*a2, v129);
            v132 = vextq_s8(vuzp1q_s32(v130, v130), v130, 0xCuLL);
            v133 = vnegq_f32(v130);
            v134 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v131, v131), v131, 0xCuLL), v133), v131, v132);
            v135 = vaddq_f32(v134, v134);
            v136 = vextq_s8(vuzp1q_s32(v135, v135), v135, 0xCuLL);
            v137 = vaddq_f32(v131, vmulq_laneq_f32(v136, v130, 3));
            v138 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v136, v136), v136, 0xCuLL), v133), v136, v132);
            *&v705[16] = vaddq_f32(a2[2], vaddq_f32(v137, vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL)));
            v4 = v111 + 2;
            v112 = v701;
            if (v701 <= v111 + 2)
            {
              goto LABEL_93;
            }

            v4 = *(v703 + 2 * v111 + 4);
            v139 = (*(*v108 + 72))(v108);
            v140 = (*(*v108 + 64))(v108) + v139 * v4;
            v141.i64[0] = *v140;
            v141.i32[2] = *(v140 + 8);
            v142 = a2[1];
            v143 = vmulq_f32(*a2, v141);
            v144 = vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL);
            v145 = vnegq_f32(v142);
            v146 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v143, v143), v143, 0xCuLL), v145), v143, v144);
            v147 = vaddq_f32(v146, v146);
            v148 = vextq_s8(vuzp1q_s32(v147, v147), v147, 0xCuLL);
            v149 = vaddq_f32(v143, vmulq_laneq_f32(v148, v142, 3));
            v150 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v148, v148), v148, 0xCuLL), v145), v148, v144);
            *&v705[32] = vaddq_f32(a2[2], vaddq_f32(v149, vextq_s8(vuzp1q_s32(v150, v150), v150, 0xCuLL)));
            v151 = re::PrimitiveRenderingContext::addLine(a1, v705, &v705[16]);
            re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v151, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
            v152 = re::PrimitiveRenderingContext::addLine(a1, &v705[16], &v705[32]);
            re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v152, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
            v153 = re::PrimitiveRenderingContext::addLine(a1, &v705[32], v705);
            v154 = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v153, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
            v111 += 3;
            if (v111 >= v110)
            {
              if (v700.i64[0] && v703)
              {
                (*(*v700.i64[0] + 40))(v154);
              }

              return;
            }
          }

          v704 = 0;
          v716 = 0u;
          v717 = 0u;
          v714 = 0u;
          v715 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v706 = 136315906;
          *&v706[4] = "operator[]";
          v707 = 1024;
          v708 = 789;
          v709 = 2048;
          v710 = v111;
          v711 = 2048;
          v712 = v112;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_92:
          v704 = 0;
          v716 = 0u;
          v717 = 0u;
          v714 = 0u;
          v715 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v706 = 136315906;
          *&v706[4] = "operator[]";
          v707 = 1024;
          v708 = 789;
          v709 = 2048;
          v710 = v4;
          v711 = 2048;
          v712 = v112;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_93:
          v704 = 0;
          v716 = 0u;
          v717 = 0u;
          v714 = 0u;
          v715 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v706 = 136315906;
          *&v706[4] = "operator[]";
          v707 = 1024;
          v708 = 789;
          v709 = 2048;
          v710 = v4;
          v711 = 2048;
          v712 = v112;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *v706 = 0;
        v716 = 0u;
        v717 = 0u;
        v714 = 0u;
        v715 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v705 = 136315906;
        *&v705[4] = "operator[]";
        *&v705[12] = 1024;
        *&v705[14] = 789;
        *&v705[18] = 2048;
        *&v705[20] = 0;
        *&v705[28] = 2048;
        *&v705[30] = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v194 = (*(*v193 + 72))(v193);
      v195 = (*(*v193 + 64))(v193);
      (*(*v193 + 72))(v193);
      v190.n128_f32[0] = v195 + (*&v189 * -2.0);
      v191 = a1;
      v192 = a2;
      *&v189 = v194;
    }

    drawCapsule(v191, v192, a4, v189, v190);
    return;
  }

  if (v9 <= 8)
  {
    if (v9 != 6)
    {
      if (v9 == 7)
      {
        v197 = v196[4];
        if (v197)
        {
          v198 = 240 * v197;
          v199 = (v196[5] + 128);
          do
          {
            v200 = v199[-1];
            _Q2 = a2[1];
            v202 = vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL);
            v203 = vnegq_f32(_Q2);
            v204 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v199, *v199), *v199, 0xCuLL), v203), *v199, v202);
            _S6 = HIDWORD(*v199);
            v206 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v204, v204), v204, 0xCuLL), *v199, _Q2, 3), _Q2, *v199, 3);
            __asm { FMLA            S1, S6, V2.S[3] }

            v206.i32[3] = _S1;
            v208 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v200, v200), v200, 0xCuLL), v203), v200, v202);
            v209 = vaddq_f32(v208, v208);
            v210 = vextq_s8(vuzp1q_s32(v209, v209), v209, 0xCuLL);
            v211 = vaddq_f32(v200, vmulq_laneq_f32(v210, _Q2, 3));
            v212 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v210, v210), v210, 0xCuLL), v203), v210, v202);
            v213 = vaddq_f32(a2[2], vmulq_f32(*a2, vaddq_f32(v211, vextq_s8(vuzp1q_s32(v212, v212), v212, 0xCuLL))));
            *buf = *a2;
            v714 = v206;
            v715 = v213;
            re::PhysicsDebugRenderer::drawTransformedShape(a1, buf, v199[-4].i64[0], a4);
            v199 += 15;
            v198 -= 240;
          }

          while (v198);
        }

        return;
      }

      v11 = (*(*v10 + 72))(v10);
      v691 = *&v11;
      v12 = (*(*v10 + 64))(v10);
      *&v13 = v12;
      if (a4->n128_u32[0] == 3)
      {
        v684 = v12 * 0.5;
        LODWORD(v14) = 0;
        *(&v14 + 1) = v12 * 0.5;
        v15 = a2[1];
        v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
        v17 = vnegq_f32(v15);
        v18.i64[0] = 0x8000000080000000;
        v18.i64[1] = 0x8000000080000000;
        v19.i64[0] = 0x8000000080000000;
        v19.i64[1] = 0x8000000080000000;
        v20 = vmlaq_f32(vmulq_f32(v15, v18), 0, v16);
        v21 = vaddq_f32(v15, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), 0, v15, 3));
        v22 = vmulq_f32(v15, 0);
        v22.f32[0] = v15.f32[3] - (v22.f32[2] + vaddv_f32(*v22.f32));
        v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), v17), v14, v16);
        v24 = vaddq_f32(v23, v23);
        v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
        v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v17), v25, v16);
        v27 = vmulq_f32(*a2, vaddq_f32(vaddq_f32(v14, vmulq_laneq_f32(v25, v15, 3)), vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL)));
        v28 = a2[2];
        v29 = vaddq_f32(v28, v27);
        v678 = -(*&v13 * 0.5);
        LODWORD(v30) = 0;
        *(&v30 + 1) = v678;
        v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v17), v30, v16);
        v32 = vaddq_f32(v31, v31);
        v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
        v34 = vaddq_f32(v30, vmulq_laneq_f32(v33, v15, 3));
        v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v17), v33, v16);
        v672 = vaddq_f32(v28, vmulq_f32(*a2, vaddq_f32(v34, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL))));
        v36 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
        v37 = vnegq_f32(v21);
        v38 = vmlaq_f32(vmulq_f32(v21, xmmword_1E30714A0), xmmword_1E30714B0, v36);
        v664 = vdupq_n_s32(0x3F3504F3u);
        v39 = vmlaq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), xmmword_1E30714B0, v22.f32[0]), v664, v21);
        v40 = vmulq_f32(v21, xmmword_1E30714B0);
        _S9 = 1060439283;
        v39.f32[3] = -((v40.f32[2] + vaddv_f32(*v40.f32)) - (v22.f32[0] * 0.70711));
        v42 = vmlaq_f32(vmulq_f32(v21, v19), 0, v36);
        v43 = vaddq_f32(v42, v42);
        v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
        v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), v37), v44, v36);
        v658 = vmulq_f32(*a2, vaddq_f32(vaddq_f32(vmulq_n_f32(v44, v22.f32[0]), 0), vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL)));
        v661 = v39;
        *buf = *a2;
        v666 = *buf;
        v714 = v39;
        v715 = vaddq_f32(v29, v658);
        drawArc(a1, buf, a4 + 1, 0x20u, 6.2832, v691);
        *buf = v666;
        v714 = v661;
        v715 = vaddq_f32(v672, v658);
        drawArc(a1, buf, a4 + 1, 0x20u, 6.2832, v691);
        *&v46 = v691;
        v47 = LODWORD(v691);
        v47.f32[1] = v678;
        *(&v46 + 1) = v684;
        *&v48 = -v691;
        v49 = COERCE_UNSIGNED_INT(-v691);
        v49.f32[1] = v684;
        v656 = v49;
        *(&v48 + 1) = v678;
        v652 = v48;
        v50 = a2[1];
        v655 = vmulq_f32(v47, *a2);
        v692 = *a2;
        v51 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
        v662 = vextq_s8(vuzp1q_s32(v655, v655), v655, 0xCuLL);
        v52 = vnegq_f32(v50);
        v53 = vmlaq_f32(vmulq_f32(v662, v52), v655, v51);
        v54 = vaddq_f32(v53, v53);
        v55 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
        v679 = v50;
        v685 = a2[2];
        v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v52), v55, v51);
        v647 = vaddq_f32(v685, vaddq_f32(vaddq_f32(v655, vmulq_laneq_f32(v55, v50, 3)), vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL)));
        *buf = v647;
        v654 = vmulq_f32(v46, v692);
        v659 = vextq_s8(vuzp1q_s32(v654, v654), v654, 0xCuLL);
        v667 = v51;
        v673 = v52;
        v57 = vmlaq_f32(vmulq_f32(v659, v52), v654, v51);
        v58 = vaddq_f32(v57, v57);
        v59 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
        v60 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), v52), v59, v51);
        v650 = vaddq_f32(v685, vaddq_f32(vaddq_f32(v654, vmulq_laneq_f32(v59, v50, 3)), vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL)));
        *v705 = v650;
        v61 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v61, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        *buf = v650;
        v651 = vmulq_f32(v656, v692);
        v657 = vextq_s8(vuzp1q_s32(v651, v651), v651, 0xCuLL);
        v62 = vmlaq_f32(vmulq_f32(v657, v673), v651, v667);
        v63 = vaddq_f32(v62, v62);
        v64 = vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL);
        v65 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), v673), v64, v667);
        v648 = vaddq_f32(v685, vaddq_f32(vaddq_f32(v651, vmulq_laneq_f32(v64, v679, 3)), vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL)));
        *v705 = v648;
        v66 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v66, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        *buf = v648;
        v649 = vmulq_f32(v652, v692);
        v653 = vextq_s8(vuzp1q_s32(v649, v649), v649, 0xCuLL);
        v67 = vmlaq_f32(vmulq_f32(v653, v673), v649, v667);
        v68 = vaddq_f32(v67, v67);
        v69 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
        v70 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL), v673), v69, v667);
        v646 = vaddq_f32(v685, vaddq_f32(vaddq_f32(v649, vmulq_laneq_f32(v69, v679, 3)), vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL)));
        *v705 = v646;
        v71 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v71, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        *buf = v646;
        *v705 = v647;
        v72 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v72, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        _V3.S[3] = v679.i32[3];
        v74 = vmlaq_f32(vmulq_f32(v679, xmmword_1E3071480), xmmword_1E3071490, v667);
        v75 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL), xmmword_1E3071490, v679, 3), v664, v679);
        __asm { FMLA            S1, S9, V3.S[3] }

        v81 = _S1;
        v82.i64[0] = 0x8000000080000000;
        v82.i64[1] = 0x8000000080000000;
        v83 = vmlaq_f32(vmulq_f32(v679, v82), 0, v667);
        v84 = vaddq_f32(v83, v83);
        v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
        v86 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL), v673), v85, v667);
        v87 = vaddq_f32(v685, vmulq_f32(v692, vaddq_f32(vaddq_f32(vmulq_laneq_f32(v85, v679, 3), 0), vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL))));
        v680 = vnegq_f32(v75);
        v686 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
        v88 = vmlaq_f32(vmulq_f32(v662, v680), v655, v686);
        v89 = vaddq_f32(v88, v88);
        v90 = vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL);
        v664.f32[0] = v81;
        v91 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL), v680), v90, v686);
        v693 = v87;
        v674 = vaddq_f32(v87, vaddq_f32(vaddq_f32(v655, vmulq_n_f32(v90, v81)), vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL)));
        *buf = v674;
        v92 = vmlaq_f32(vmulq_f32(v659, v680), v654, v686);
        v93 = vaddq_f32(v92, v92);
        v94 = vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL);
        v95 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL), v680), v94, v686);
        v668 = vaddq_f32(v87, vaddq_f32(vaddq_f32(v654, vmulq_n_f32(v94, v81)), vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL)));
        *v705 = v668;
        v96 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v96, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        *buf = v668;
        v97 = vmlaq_f32(vmulq_f32(v657, v680), v651, v686);
        v98 = vaddq_f32(v97, v97);
        v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
        v100 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL), v680), v99, v686);
        v669 = vaddq_f32(v693, vaddq_f32(vaddq_f32(v651, vmulq_n_f32(v99, v664.f32[0])), vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL)));
        *v705 = v669;
        v101 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v101, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        *buf = v669;
        v102 = vmlaq_f32(vmulq_f32(v653, v680), v649, v686);
        v103 = vaddq_f32(v102, v102);
        v104 = vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL);
        v105 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL), v680), v104, v686);
        v694 = vaddq_f32(v693, vaddq_f32(vaddq_f32(v649, vmulq_n_f32(v104, v664.f32[0])), vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL)));
        *v705 = v694;
        v106 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v106, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        *buf = v694;
        v107 = v674;
LABEL_59:
        *v705 = v107;
        v547 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        v548 = *(a1 + 528);
        v549 = *(a1 + 136);
        v550 = *(a1 + 1192);
        v551 = a4 + 1;
        v552 = (a1 + 200);
        v553 = (a1 + 517);
        v554 = 5;
LABEL_69:
        re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(v554, v547, v551, v552, v553, v549, v548, v550);
        return;
      }

      _Q0 = a2[1];
      v580 = a2[2];
      _Q3 = vmlaq_f32(vmulq_f32(_Q0, xmmword_1E30714C0), xmmword_1E30714D0, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
      v582 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), xmmword_1E30714D0, _Q0, 3), vdupq_n_s32(0x3F3504F3u), _Q0);
      _S4 = 1060439283;
      __asm { FMLA            S3, S4, V0.S[3] }

      v584 = vextq_s8(vuzp1q_s32(v582, v582), v582, 0xCuLL);
      v585 = vnegq_f32(v582);
      v586 = vmulq_f32(v582, xmmword_1E30714E0);
      v582.i32[3] = _Q3.i32[0];
      *buf = v582;
      v587 = vmlaq_f32(v586, xmmword_1E30714F0, v584);
      v588 = vaddq_f32(v587, v587);
      v589 = vextq_s8(vuzp1q_s32(v588, v588), v588, 0xCuLL);
      v590 = vaddq_f32(vmulq_n_f32(v589, *_Q3.i32), xmmword_1E30714F0);
      v591 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v589, v589), v589, 0xCuLL), v585), v589, v584);
      *v705 = vsubq_f32(v580, vmulq_n_f32(vaddq_f32(v590, vextq_s8(vuzp1q_s32(v591, v591), v591, 0xCuLL)), *&v13));
      v689 = v13;
      v592 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 2u, v705, buf);
      v593 = v689;
      *(&v593 + 1) = v691;
      *(&v593 + 2) = v691;
      *v705 = v593;
      re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v592, 2u, 2, v705);
      v575 = a4 + 1;
      v576 = a1;
      v577 = v592;
      v578 = 2;
LABEL_73:
      re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(v576, v577, v578, 3, v575);
      return;
    }

    v442 = (*(*v441 + 64))(v441);
    v443 = vrsqrte_f32(1065353216);
    v444 = vmul_f32(v443, vrsqrts_f32(1065353216, vmul_f32(v443, v443)));
    v445 = vmulq_n_f32(xmmword_1E3047680, vmul_f32(v444, vrsqrts_f32(1065353216, vmul_f32(v444, v444))).f32[0]);
    v446 = *v442;
    v447 = vmulq_f32(v446, v446);
    v448 = v447.f32[2] + vaddv_f32(*v447.f32);
    if (fabsf(v448) >= 1.0e-10)
    {
      v449 = v448;
      v450 = vrsqrte_f32(LODWORD(v448));
      v451 = vmul_f32(v450, vrsqrts_f32(LODWORD(v449), vmul_f32(v450, v450)));
      v446 = vmulq_n_f32(v446, vmul_f32(v451, vrsqrts_f32(LODWORD(v449), vmul_f32(v451, v451))).f32[0]);
    }

    v452 = vmulq_f32(v445, v446);
    v453 = v452.f32[2] + vaddv_f32(*v452.f32);
    if (v453 == -1.0 || (v454 = ((fabsf(v453) + 1.0) + 1.0) * 0.00001, v455 = v453 + 1.0, fabsf(v455) < v454))
    {
      if (fabsf(v445.f32[2]) >= 0.00001)
      {
        v456.i32[0] = 0;
        v456.f32[1] = -v445.f32[2];
        v456.i64[1] = v445.u32[1];
      }

      else
      {
        v456 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v445.f32[1]), v445);
      }

      v600 = vmulq_f32(v456, v456);
      *&v601 = v600.f32[2] + vaddv_f32(*v600.f32);
      *v600.f32 = vrsqrte_f32(v601);
      *v600.f32 = vmul_f32(*v600.f32, vrsqrts_f32(v601, vmul_f32(*v600.f32, *v600.f32)));
      v690 = vmulq_n_f32(v456, vmul_f32(*v600.f32, vrsqrts_f32(v601, vmul_f32(*v600.f32, *v600.f32))).f32[0]);
      v699 = 0.0;
    }

    else
    {
      v643 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v446, v446), v446, 0xCuLL), vnegq_f32(v445)), v446, vextq_s8(vuzp1q_s32(v445, v445), v445, 0xCuLL));
      v644 = vuzp1q_s32(v643, v643);
      v645 = vextq_s8(v644, v643, 0xCuLL);
      *v644.i32 = sqrtf(v455 + v455);
      v690 = vdivq_f32(v645, vdupq_lane_s32(*v644.i8, 0));
      v699 = *v644.i32 * 0.5;
    }

    v602 = (*(*v441 + 64))(v441);
    v603 = vmulq_n_f32(*v602, (*(*v441 + 72))(v441));
    _Q2 = a2[1];
    v605 = vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL);
    _S16 = v699;
    v607 = vnegq_f32(_Q2);
    v608 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v690, v690), v690, 0xCuLL), v607), v690, v605);
    v609 = vmlaq_n_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v608, v608), v608, 0xCuLL), v690, _Q2, 3), _Q2, v699);
    __asm { FMLA            S6, S16, V2.S[3] }

    v609.i32[3] = _S6;
    v611 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v603, v603), v603, 0xCuLL), v607), v603, v605);
    v612 = vaddq_f32(v611, v611);
    v613 = vextq_s8(vuzp1q_s32(v612, v612), v612, 0xCuLL);
    v614 = vaddq_f32(v603, vmulq_laneq_f32(v613, _Q2, 3));
    v615 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v613, v613), v613, 0xCuLL), v607), v613, v605);
    _Q0 = vaddq_f32(a2[2], vmulq_f32(*a2, vaddq_f32(v614, vextq_s8(vuzp1q_s32(v615, v615), v615, 0xCuLL))));
    *buf = *a2;
    v714 = v609;
    v715 = _Q0;
    __asm { FMOV            V0.2S, #10.0 }

    *v705 = _Q0.n128_u64[0];
    v218 = buf;
    v216 = v705;
    v217 = a1;
LABEL_77:
    drawRectangle(v217, v218, v216, a4, _Q0);
    return;
  }

  if (v9 == 9)
  {
    *v458.i64 = (*(*v457 + 72))(v457);
    v688 = v458;
    (*(*v457 + 64))(v457);
    if (a4->n128_u32[0] != 3)
    {
      _Q4 = a2[1];
      v698 = v459;
      _Q2 = vmlaq_f32(vmulq_f32(_Q4, xmmword_1E30714C0), xmmword_1E30714D0, vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL));
      v596 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), xmmword_1E30714D0, _Q4, 3), vdupq_n_s32(0x3F3504F3u), _Q4);
      _S3 = 1060439283;
      __asm { FMLA            S2, S3, V4.S[3] }

      v596.i32[3] = _Q2.i32[0];
      *buf = v596;
      v598 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 4u, a2[2].f32, buf);
      v599 = v698;
      DWORD1(v599) = v688.i32[0];
      DWORD2(v599) = v688.i32[0];
      *v705 = v599;
      re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v598, 4u, 2, v705);
      v575 = a4 + 1;
      v576 = a1;
      v577 = v598;
      v578 = 4;
      goto LABEL_73;
    }

    _Q2 = a2[1];
    v461 = vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL);
    v462 = vnegq_f32(_Q2);
    v463 = vmlaq_f32(vmulq_f32(_Q2, xmmword_1E30714A0), xmmword_1E30714B0, v461);
    v464 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v463, v463), v463, 0xCuLL), xmmword_1E30714B0, _Q2, 3), vdupq_n_s32(0x3F3504F3u), _Q2);
    _S7 = 1060439283;
    __asm { FMLA            S6, S7, V2.S[3] }

    v464.i32[3] = _S6;
    v467 = a2[2];
    LODWORD(v468) = 0;
    *(&v468 + 1) = *&v459 * 0.5;
    v696 = v468;
    *buf = *a2;
    v714 = v464;
    v469 = v688;
    v469.f32[1] = *&v459 * 0.5;
    v470 = vnegq_f32(v469);
    v471 = v470;
    v471.i32[0] = 0;
    v676 = v470;
    v682 = v471;
    v471.i32[2] = 0;
    v472 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v471, v471), v471, 0xCuLL), v462), v471, v461);
    v473 = vaddq_f32(v472, v472);
    v474 = vextq_s8(vuzp1q_s32(v473, v473), v473, 0xCuLL);
    v475 = vaddq_f32(v471, vmulq_laneq_f32(v474, _Q2, 3));
    v476 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v474, v474), v474, 0xCuLL), v462), v474, v461);
    v715 = vaddq_f32(v467, vmulq_f32(*buf, vaddq_f32(v475, vextq_s8(vuzp1q_s32(v476, v476), v476, 0xCuLL))));
    drawArc(a1, buf, a4 + 1, 0x20u, 6.2832, v688.f32[0]);
    v478 = v688.u32[0];
    v477 = v676;
    v478.i32[1] = v676.i32[1];
    v479 = v682;
    v480 = v682;
    v480.i32[2] = v676.i32[0];
    v477.i32[2] = 0;
    v671 = v480;
    v677 = v477;
    v479.i32[2] = v688.i32[0];
    v683 = v479;
    v481 = *a2;
    v482 = a2[1];
    v483 = vmulq_f32(v696, *a2);
    v484 = vextq_s8(vuzp1q_s32(v482, v482), v482, 0xCuLL);
    v485 = vnegq_f32(v482);
    v486 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v483, v483), v483, 0xCuLL), v485), v483, v484);
    v487 = vaddq_f32(v486, v486);
    v488 = vextq_s8(vuzp1q_s32(v487, v487), v487, 0xCuLL);
    v489 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v488, v488), v488, 0xCuLL), v485), v488, v484);
    v490 = vaddq_f32(vaddq_f32(v483, vmulq_laneq_f32(v488, v482, 3)), vextq_s8(vuzp1q_s32(v489, v489), v489, 0xCuLL));
    v491 = a2[2];
    *buf = vaddq_f32(v491, v490);
    v492 = vmulq_f32(v478, v481);
    v493 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v492, v492), v492, 0xCuLL), v485), v492, v484);
    v494 = vaddq_f32(v493, v493);
    v495 = vextq_s8(vuzp1q_s32(v494, v494), v494, 0xCuLL);
    v496 = vaddq_f32(v492, vmulq_laneq_f32(v495, v482, 3));
    v497 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v495, v495), v495, 0xCuLL), v485), v495, v484);
    *v705 = vaddq_f32(v491, vaddq_f32(v496, vextq_s8(vuzp1q_s32(v497, v497), v497, 0xCuLL)));
    v498 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v498, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v499 = *a2;
    v500 = a2[1];
    v501 = vmulq_f32(v696, *a2);
    v502 = vextq_s8(vuzp1q_s32(v500, v500), v500, 0xCuLL);
    v503 = vnegq_f32(v500);
    v504 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v501, v501), v501, 0xCuLL), v503), v501, v502);
    v505 = vaddq_f32(v504, v504);
    v506 = vextq_s8(vuzp1q_s32(v505, v505), v505, 0xCuLL);
    v507 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v506, v506), v506, 0xCuLL), v503), v506, v502);
    v508 = vaddq_f32(vaddq_f32(v501, vmulq_laneq_f32(v506, v500, 3)), vextq_s8(vuzp1q_s32(v507, v507), v507, 0xCuLL));
    v509 = a2[2];
    *buf = vaddq_f32(v509, v508);
    v510 = vmulq_f32(v671, v499);
    v511 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v510, v510), v510, 0xCuLL), v503), v510, v502);
    v512 = vaddq_f32(v511, v511);
    v513 = vextq_s8(vuzp1q_s32(v512, v512), v512, 0xCuLL);
    v514 = vaddq_f32(v510, vmulq_laneq_f32(v513, v500, 3));
    v515 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v513, v513), v513, 0xCuLL), v503), v513, v502);
    *v705 = vaddq_f32(v509, vaddq_f32(v514, vextq_s8(vuzp1q_s32(v515, v515), v515, 0xCuLL)));
    v516 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v516, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v517 = *a2;
    v518 = a2[1];
    v519 = vmulq_f32(v696, *a2);
    v520 = vextq_s8(vuzp1q_s32(v518, v518), v518, 0xCuLL);
    v521 = vnegq_f32(v518);
    v522 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v519, v519), v519, 0xCuLL), v521), v519, v520);
    v523 = vaddq_f32(v522, v522);
    v524 = vextq_s8(vuzp1q_s32(v523, v523), v523, 0xCuLL);
    v525 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v524, v524), v524, 0xCuLL), v521), v524, v520);
    v526 = vaddq_f32(vaddq_f32(v519, vmulq_laneq_f32(v524, v518, 3)), vextq_s8(vuzp1q_s32(v525, v525), v525, 0xCuLL));
    v527 = a2[2];
    *buf = vaddq_f32(v527, v526);
    v528 = vmulq_f32(v677, v517);
    v529 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v528, v528), v528, 0xCuLL), v521), v528, v520);
    v530 = vaddq_f32(v529, v529);
    v531 = vextq_s8(vuzp1q_s32(v530, v530), v530, 0xCuLL);
    v532 = vaddq_f32(v528, vmulq_laneq_f32(v531, v518, 3));
    v533 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v531, v531), v531, 0xCuLL), v521), v531, v520);
    *v705 = vaddq_f32(v527, vaddq_f32(v532, vextq_s8(vuzp1q_s32(v533, v533), v533, 0xCuLL)));
    v534 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v534, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v429 = *a2;
    v430 = a2[1];
    v535 = vmulq_f32(v696, *a2);
    v432 = vextq_s8(vuzp1q_s32(v430, v430), v430, 0xCuLL);
    v433 = vnegq_f32(v430);
    v536 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v535, v535), v535, 0xCuLL), v433), v535, v432);
    v537 = vaddq_f32(v536, v536);
    v538 = vextq_s8(vuzp1q_s32(v537, v537), v537, 0xCuLL);
    v539 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v538, v538), v538, 0xCuLL), v433), v538, v432);
    v540 = vaddq_f32(vaddq_f32(v535, vmulq_laneq_f32(v538, v430, 3)), vextq_s8(vuzp1q_s32(v539, v539), v539, 0xCuLL));
    v439 = a2[2];
    *buf = vaddq_f32(v439, v540);
    v440 = v683;
    goto LABEL_58;
  }

  if (v9 == 11)
  {
    *buf = (*(*v214 + 64))(v214);
    v216 = buf;
    v217 = a1;
    v218 = a2;
    goto LABEL_77;
  }

  if (v9 != 12)
  {
    goto LABEL_60;
  }

  v158 = *(v155 + 8);
  v159 = *(v155 + 16);
  v160 = *(v155 + 58);
  if (v160 == 2)
  {
    if (*(v155 + 40))
    {
      v616 = 0;
      v617 = *(v155 + 32);
      v618 = *(v155 + 16);
      do
      {
        v619 = 0;
        while (1)
        {
          v620 = *(v155 + 40);
          if (v620 <= v616 + v619)
          {
            break;
          }

          v621 = *(v618 + 4 * v619);
          v622 = v619 + 1;
          if (v619 == 2)
          {
            v623 = 0;
          }

          else
          {
            v623 = v619 + 1;
          }

          v624 = v158 + v617 * v621;
          v156.n128_u64[0] = *v624;
          v156.n128_u32[2] = *(v624 + 8);
          v625 = v158 + v617 * *(v159 + 4 * (v623 + v616));
          v157.i64[0] = *v625;
          v157.i32[2] = *(v625 + 8);
          v626 = *a2;
          v627 = a2[1];
          v628 = vmulq_f32(v156, *a2);
          v629 = vextq_s8(vuzp1q_s32(v627, v627), v627, 0xCuLL);
          v630 = vnegq_f32(v627);
          v631 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v628, v628), v628, 0xCuLL), v630), v628, v629);
          v632 = vaddq_f32(v631, v631);
          v633 = vextq_s8(vuzp1q_s32(v632, v632), v632, 0xCuLL);
          v634 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v633, v633), v633, 0xCuLL), v630), v633, v629);
          v635 = vaddq_f32(vaddq_f32(v628, vmulq_laneq_f32(v633, v627, 3)), vextq_s8(vuzp1q_s32(v634, v634), v634, 0xCuLL));
          v636 = a2[2];
          *buf = vaddq_f32(v636, v635);
          v637 = vmulq_f32(v157, v626);
          v638 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v637, v637), v637, 0xCuLL), v630), v637, v629);
          v639 = vaddq_f32(v638, v638);
          v640 = vextq_s8(vuzp1q_s32(v639, v639), v639, 0xCuLL);
          v641 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v640, v640), v640, 0xCuLL), v630), v640, v629);
          *v705 = vaddq_f32(v636, vaddq_f32(vaddq_f32(v637, vmulq_laneq_f32(v640, v627, 3)), vextq_s8(vuzp1q_s32(v641, v641), v641, 0xCuLL)));
          v642 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
          v156 = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v642, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
          v619 = v622;
          if (v622 == 3)
          {
            v620 = *(v155 + 40);
            break;
          }
        }

        v616 += 3;
        v618 += 12;
      }

      while (v620 > v616);
    }
  }

  else if (v160 == 1 && *(v155 + 40))
  {
    v161 = 0;
    v162 = *(v155 + 32);
    v163 = *(v155 + 16);
    do
    {
      v164 = 0;
      while (1)
      {
        v165 = *(v155 + 40);
        if (v165 <= v161 + v164)
        {
          break;
        }

        v166 = *(v163 + 2 * v164);
        v167 = v164 + 1;
        if (v164 == 2)
        {
          v168 = 0;
        }

        else
        {
          v168 = v164 + 1;
        }

        v169 = v158 + v162 * v166;
        v156.n128_u64[0] = *v169;
        v156.n128_u32[2] = *(v169 + 8);
        v170 = v158 + v162 * *(v159 + 2 * (v168 + v161));
        v157.i64[0] = *v170;
        v157.i32[2] = *(v170 + 8);
        v171 = *a2;
        v172 = a2[1];
        v173 = vmulq_f32(v156, *a2);
        v174 = vextq_s8(vuzp1q_s32(v172, v172), v172, 0xCuLL);
        v175 = vnegq_f32(v172);
        v176 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v173, v173), v173, 0xCuLL), v175), v173, v174);
        v177 = vaddq_f32(v176, v176);
        v178 = vextq_s8(vuzp1q_s32(v177, v177), v177, 0xCuLL);
        v179 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v178, v178), v178, 0xCuLL), v175), v178, v174);
        v180 = vaddq_f32(vaddq_f32(v173, vmulq_laneq_f32(v178, v172, 3)), vextq_s8(vuzp1q_s32(v179, v179), v179, 0xCuLL));
        v181 = a2[2];
        *buf = vaddq_f32(v181, v180);
        v182 = vmulq_f32(v157, v171);
        v183 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v182, v182), v182, 0xCuLL), v175), v182, v174);
        v184 = vaddq_f32(v183, v183);
        v185 = vextq_s8(vuzp1q_s32(v184, v184), v184, 0xCuLL);
        v186 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v185, v185), v185, 0xCuLL), v175), v185, v174);
        *v705 = vaddq_f32(v181, vaddq_f32(vaddq_f32(v182, vmulq_laneq_f32(v185, v172, 3)), vextq_s8(vuzp1q_s32(v186, v186), v186, 0xCuLL)));
        v187 = re::PrimitiveRenderingContext::addLine(a1, buf, v705);
        v156 = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v187, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
        v164 = v167;
        if (v167 == 3)
        {
          v165 = *(v155 + 40);
          break;
        }
      }

      v161 += 3;
      v163 += 6;
    }

    while (v165 > v161);
  }
}

double drawRectangle(uint64_t a1, float32x4_t *a2, float32x2_t *a3, __n128 *a4, __n128 a5)
{
  if (a4->n128_u32[0] == 3)
  {
    a5.n128_u64[0] = vmul_f32(*a3, 0x3F0000003F000000);
    v9 = a5;
    v9.n128_u32[1] = 0;
    v10 = v9;
    v10.n128_u32[2] = a5.n128_u32[1];
    v11 = v10;
    v9.n128_f32[2] = -a5.n128_f32[1];
    v12 = v9;
    v97 = v9;
    v98 = v10;
    v9.n128_u32[1] = 0;
    v9.n128_f32[0] = -a5.n128_f32[0];
    v13 = COERCE_UNSIGNED_INT(-a5.n128_f32[0]);
    v13.f32[2] = -a5.n128_f32[1];
    v9.n128_u64[1] = a5.n128_u32[1];
    v99 = v13;
    v100 = v9;
    v14 = *a2;
    v15 = a2[1];
    v16 = vmulq_f32(*a2, v11);
    v17 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
    v18 = vnegq_f32(v15);
    v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v18), v16, v17);
    v20 = vaddq_f32(v19, v19);
    v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v18), v21, v17);
    v23 = vaddq_f32(vaddq_f32(v16, vmulq_laneq_f32(v21, v15, 3)), vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
    v24 = a2[2];
    v102 = vaddq_f32(v24, v23);
    v25 = vmulq_f32(v14, v12);
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v18), v25, v17);
    v27 = vaddq_f32(v26, v26);
    v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
    v29 = vaddq_f32(v25, vmulq_laneq_f32(v28, v15, 3));
    v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v18), v28, v17);
    v101 = vaddq_f32(v24, vaddq_f32(v29, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL)));
    v31 = re::PrimitiveRenderingContext::addLine(a1, &v102, &v101);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v31, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v32 = *a2;
    v33 = a2[1];
    v34 = vmulq_f32(v97, *a2);
    v35 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
    v36 = vnegq_f32(v33);
    v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v36), v34, v35);
    v38 = vaddq_f32(v37, v37);
    v39 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
    v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v36), v39, v35);
    v41 = vaddq_f32(vaddq_f32(v34, vmulq_laneq_f32(v39, v33, 3)), vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
    v42 = a2[2];
    v102 = vaddq_f32(v42, v41);
    v43 = vmulq_f32(v99, v32);
    v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v36), v43, v35);
    v45 = vaddq_f32(v44, v44);
    v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
    v47 = vaddq_f32(v43, vmulq_laneq_f32(v46, v33, 3));
    v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), v36), v46, v35);
    v101 = vaddq_f32(v42, vaddq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL)));
    v49 = re::PrimitiveRenderingContext::addLine(a1, &v102, &v101);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v49, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v50 = *a2;
    v51 = a2[1];
    v52 = vmulq_f32(v99, *a2);
    v53 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
    v54 = vnegq_f32(v51);
    v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), v54), v52, v53);
    v56 = vaddq_f32(v55, v55);
    v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
    v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), v54), v57, v53);
    v59 = vaddq_f32(vaddq_f32(v52, vmulq_laneq_f32(v57, v51, 3)), vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL));
    v60 = a2[2];
    v102 = vaddq_f32(v60, v59);
    v61 = vmulq_f32(v100, v50);
    v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL), v54), v61, v53);
    v63 = vaddq_f32(v62, v62);
    v64 = vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL);
    v65 = vaddq_f32(v61, vmulq_laneq_f32(v64, v51, 3));
    v66 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), v54), v64, v53);
    v101 = vaddq_f32(v60, vaddq_f32(v65, vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL)));
    v67 = re::PrimitiveRenderingContext::addLine(a1, &v102, &v101);
    re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v67, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192));
    v68 = *a2;
    v69 = a2[1];
    v70 = vmulq_f32(v100, *a2);
    v71 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
    v72 = vnegq_f32(v69);
    v73 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), v72), v70, v71);
    v74 = vaddq_f32(v73, v73);
    v75 = vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL);
    v76 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), v72), v75, v71);
    v77 = vaddq_f32(vaddq_f32(v70, vmulq_laneq_f32(v75, v69, 3)), vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL));
    v78 = a2[2];
    v102 = vaddq_f32(v78, v77);
    v79 = vmulq_f32(v98, v68);
    v80 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), v72), v79, v71);
    v81 = vaddq_f32(v80, v80);
    v82 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
    v83 = vaddq_f32(v79, vmulq_laneq_f32(v82, v69, 3));
    v84 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), v72), v82, v71);
    v101 = vaddq_f32(v78, vaddq_f32(v83, vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL)));
    v85 = re::PrimitiveRenderingContext::addLine(a1, &v102, &v101);
    *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v85, a4 + 1, (a1 + 200), (a1 + 517), *(a1 + 136), *(a1 + 528), *(a1 + 1192)).n128_u64[0];
  }

  else
  {
    _Q0 = a2[1];
    _Q2 = vmlaq_f32(vmulq_f32(_Q0, xmmword_1E3071520), xmmword_1E3071530, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
    v89 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), xmmword_1E3071530, _Q0, 3), vdupq_n_s32(0x3F3504F3u), _Q0);
    _S3 = 1060439283;
    __asm { FMLA            S2, S3, V0.S[3] }

    v89.i32[3] = _Q2.i32[0];
    v102 = v89;
    v95 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 1u, a2[2].f32, &v102);
    *v96.f32 = vmul_f32(*a3, 0x3F0000003F000000);
    v96.i32[2] = 1.0;
    v101 = v96;
    re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v95, 1u, 2, &v101);
    return re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a1, v95, 1u, 3, a4 + 1);
  }

  return result;
}

void drawCapsule(uint64_t a1, float32x4_t *a2, __n128 *a3, double a4, __n128 a5)
{
  if (a3->n128_u32[0] == 3)
  {
    re::PhysicsDebugRenderer::drawCapsuleLines(a1, a2, a3, *&a4, a5.n128_f32[0]);
  }

  else
  {
    re::PhysicsDebugRenderer::drawCapsuleShape(a1, a2, a3, *&a4, a5);
  }
}

void re::PhysicsDebugRenderer::drawTransformFrame(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *a2 * a3;
  if (v5 < 0.05)
  {
    v5 = 0.05;
  }

  v23 = v5;
  v26 = *(a2 + 16);
  v6 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 2u, (a2 + 32), &v26);
  v7 = &dword_1E3071574;
  v8 = vld1q_dup_f32(v7);
  v8.f32[0] = v23;
  v24 = v8;
  v25 = v8;
  re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v6, 2u, 2, &v25);
  v25 = xmmword_1E3060D30;
  re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a1, v6, 2u, 3, &v25);
  _Q0 = *(a2 + 16);
  _Q2 = vmlaq_f32(vmulq_f32(_Q0, xmmword_1E30714C0), xmmword_1E30714D0, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  v22 = vdupq_n_s32(0x3F3504F3u);
  v11 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), xmmword_1E30714D0, _Q0, 3), v22, _Q0);
  _S8 = 1060439283;
  __asm { FMLA            S2, S8, V0.S[3] }

  v11.i32[3] = _Q2.i32[0];
  v26 = v11;
  v17 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 2u, (a2 + 32), &v26);
  v25 = v24;
  re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v17, 2u, 2, &v25);
  v25 = xmmword_1E3071540;
  re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a1, v17, 2u, 3, &v25);
  _Q0 = *(a2 + 16);
  _Q2 = vmlaq_f32(vmulq_f32(_Q0, xmmword_1E3071550), xmmword_1E3071560, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  v20 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), xmmword_1E3071560, _Q0, 3), v22, _Q0);
  __asm { FMLA            S2, S8, V0.S[3] }

  v20.i32[3] = _Q2.i32[0];
  v26 = v20;
  v21 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 2u, (a2 + 32), &v26);
  v25 = v24;
  re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v21, 2u, 2, &v25);
  v25 = xmmword_1E3063230;
  re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a1, v21, 2u, 3, &v25);
}

double re::PhysicsDebugRenderer::drawCenterOfMass(uint64_t a1, float32x4_t *a2, float32x4_t *a3, int32x2_t a4)
{
  *a4.i32 = (a2->f32[0] * *a4.i32) * 0.1;
  if (*a4.i32 < 0.008)
  {
    *a4.i32 = 0.008;
  }

  v27 = a4;
  _Q1 = a3[1];
  _Q3 = a2[1];
  v7 = vmulq_f32(*a3, *a2);
  v8 = vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL);
  v9 = vnegq_f32(_Q3);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v9), _Q1, v8);
  _S7 = _Q1.i32[3];
  v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), _Q1, _Q3, 3), _Q3, _Q1, 3);
  __asm { FMLA            S1, S7, V3.S[3] }

  v12.i32[3] = _Q1.i32[0];
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v9), v7, v8);
  v18 = vaddq_f32(v17, v17);
  v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v20 = vaddq_f32(v7, vmulq_laneq_f32(v19, _Q3, 3));
  v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v9), v19, v8);
  __asm { FMOV            V1.4S, #1.0 }

  v26 = _Q1;
  v23 = vaddq_f32(a2[2], vaddq_f32(v20, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL)));
  v28[1] = _Q1;
  v29 = v12;
  v30 = v23;
  v24 = re::PrimitiveRenderingContext::addShape<re::PrimitiveRenderingShape>(a1, 3u, &v30, &v29);
  v28[0] = vdupq_lane_s32(v27, 0);
  re::PrimitiveRenderingContext::setAttribute<re::Vector3<float>,re::PrimitiveRenderingShape>(a1, v24, 3u, 2, v28);
  v28[0] = v26;
  return re::PrimitiveRenderingContext::setAttribute<re::Vector4<float>,re::PrimitiveRenderingShape>(a1, v24, 3u, 3, v28);
}

void re::DynamicArray<unsigned short>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<unsigned short>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 2 * v4), 2 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::serializeObject@<X0>(re *this@<X0>, re::NetworkCompatSerializer *a2@<X1>, re::DynamicArrayBufferedOutputStream *a3@<X2>, const void *a4@<X3>, const re::TypeInfo *a5@<X4>, uint64_t a6@<X8>)
{
  if (*(this + 64) != 1)
  {
    (*(*this + 72))(this, "object", 1, a3, a4, a5, 0);
  }

  (*(*this + 56))(this);
  result = re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(this + 24);
  if (*(this + 64) == 1)
  {
    v15 = *(this + 72);
    re::DynamicString::DynamicString(&v16, (this + 88));
    v18 = v15;
    re::DynamicString::DynamicString(&v19, &v16);
    *a6 = 0;
    *(a6 + 8) = v18;
    *(a6 + 24) = v19;
    *(a6 + 48) = v21;
    *(a6 + 32) = v20;
    v21 = 0;
    v19 = 0;
    v20 = 0uLL;
    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))();
      }
    }
  }

  else
  {
    *a6 = 1;
  }

  return result;
}

_anonymous_namespace_ *re::deserializeObject@<X0>(re *this@<X0>, re::NetworkCompatDeserializer *a2@<X1>, re::FixedArrayInputStream *a3@<X2>, void *a4@<X3>, const re::TypeInfo *a5@<X4>, uint64_t a6@<X8>)
{
  if (*(this + 64) != 1)
  {
    (*(*this + 72))(this, "object", 1, a3, a4, a5, 0);
  }

  (*(*this + 56))(this);
  result = re::Encoder<re::EncoderBinary<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close((this + 24));
  if (*(this + 64) == 1)
  {
    v15 = *(this + 72);
    re::DynamicString::DynamicString(&v16, (this + 88));
    v18 = v15;
    re::DynamicString::DynamicString(&v19, &v16);
    *a6 = 0;
    *(a6 + 8) = v18;
    *(a6 + 24) = v19;
    *(a6 + 48) = v21;
    *(a6 + 32) = v20;
    v21 = 0;
    v19 = 0;
    v20 = 0uLL;
    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))();
      }
    }
  }

  else
  {
    *a6 = 1;
  }

  return result;
}

_anonymous_namespace_ *re::serializeObject@<X0>(re *this@<X0>, re::NetworkOPACKSerializer *a2@<X1>, re::DynamicArrayBufferedOutputStream *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(this + 64) != 1)
  {
    (*(*this + 72))(this, "object", 1, a3, a4, a4, 0);
  }

  (*(*this + 56))(this);
  result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close((this + 24));
  if (*(this + 64) == 1)
  {
    v13 = *(this + 72);
    re::DynamicString::DynamicString(&v14, (this + 88));
    v16 = v13;
    re::DynamicString::DynamicString(&v17, &v14);
    *a5 = 0;
    *(a5 + 8) = v16;
    *(a5 + 24) = v17;
    *(a5 + 48) = v19;
    *(a5 + 32) = v18;
    v19 = 0;
    v17 = 0;
    v18 = 0uLL;
    result = v14;
    if (v14)
    {
      if (v15)
      {
        return (*(*v14 + 40))();
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

_anonymous_namespace_ *re::deserializeObject@<X0>(re *this@<X0>, re::NetworkOPACKDeserializer *a2@<X1>, re::FixedArrayInputStream *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(this + 64) != 1)
  {
    (*(*this + 72))(this, "object", 1, a3, a4, a4, 0);
  }

  (*(*this + 56))(this);
  result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close((this + 24));
  if (*(this + 64) == 1)
  {
    v13 = *(this + 72);
    re::DynamicString::DynamicString(&v14, (this + 88));
    v16 = v13;
    re::DynamicString::DynamicString(&v17, &v14);
    *a5 = 0;
    *(a5 + 8) = v16;
    *(a5 + 24) = v17;
    *(a5 + 48) = v19;
    *(a5 + 32) = v18;
    v19 = 0;
    v17 = 0;
    v18 = 0uLL;
    result = v14;
    if (v14)
    {
      if (v15)
      {
        return (*(*v14 + 40))();
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void *re::allocInfo_NetworkOPACKSerializer(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_160))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0018, "NetworkOPACKSerializer");
    __cxa_guard_release(&_MergedGlobals_160);
  }

  return &unk_1EE1A0018;
}

void re::initInfo_NetworkOPACKSerializer(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xD66B7D4190E6B598;
  v6[1] = "NetworkOPACKSerializer";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1E800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_NetworkOPACKSerializer(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::NetworkOPACKSerializer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NetworkOPACKSerializer>;
  *(this + 13) = re::internal::defaultConstructV2<re::NetworkOPACKSerializer>;
  *(this + 14) = re::internal::defaultDestructV2<re::NetworkOPACKSerializer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_NetworkOPACKDeserializer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0000))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A00A8, "NetworkOPACKDeserializer");
    __cxa_guard_release(&qword_1EE1A0000);
  }

  return &unk_1EE1A00A8;
}

void re::initInfo_NetworkOPACKDeserializer(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xDEED4B9BC35C271ALL;
  v6[1] = "NetworkOPACKDeserializer";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1E800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_NetworkOPACKDeserializer(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::NetworkOPACKDeserializer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NetworkOPACKDeserializer>;
  *(this + 13) = re::internal::defaultConstructV2<re::NetworkOPACKDeserializer>;
  *(this + 14) = re::internal::defaultDestructV2<re::NetworkOPACKDeserializer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_NetworkCompatSerializer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0008))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0138, "NetworkCompatSerializer");
    __cxa_guard_release(&qword_1EE1A0008);
  }

  return &unk_1EE1A0138;
}

void re::initInfo_NetworkCompatSerializer(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x287C37956ADFC9C4;
  v6[1] = "NetworkCompatSerializer";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1D800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_NetworkCompatSerializer(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::NetworkCompatSerializer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NetworkCompatSerializer>;
  *(this + 13) = re::internal::defaultConstructV2<re::NetworkCompatSerializer>;
  *(this + 14) = re::internal::defaultDestructV2<re::NetworkCompatSerializer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_NetworkCompatDeserializer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0010))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A01C8, "NetworkCompatDeserializer");
    __cxa_guard_release(&qword_1EE1A0010);
  }

  return &unk_1EE1A01C8;
}

void re::initInfo_NetworkCompatDeserializer(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xEFB8C0610360E046;
  v6[1] = "NetworkCompatDeserializer";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1D800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_NetworkCompatDeserializer(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::NetworkCompatDeserializer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NetworkCompatDeserializer>;
  *(this + 13) = re::internal::defaultConstructV2<re::NetworkCompatDeserializer>;
  *(this + 14) = re::internal::defaultDestructV2<re::NetworkCompatDeserializer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 192);
  if (*(v8 + 24) != *(a1 + 200))
  {
    re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::deinit(a1);
    re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::init(a1, v8);
  }

  v9.n128_f64[0] = re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::open(a1 + 24, a2, 0, 0xFFFFFFFFLL, a3, a4);
  v10 = *(*a1 + 48);

  return v10(a1, v9);
}

void *re::ecs2::allocInfo_ImageBasedReflectionRootComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_161, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_161))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0270, "ImageBasedReflectionRootComponent");
    __cxa_guard_release(&_MergedGlobals_161);
  }

  return &unk_1EE1A0270;
}

void re::ecs2::initInfo_ImageBasedReflectionRootComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xCAF0671912AB7AF0;
  v10[1] = "ImageBasedReflectionRootComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A0268, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A0268);
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
      qword_1EE1A0260 = v8;
      __cxa_guard_release(&qword_1EE1A0268);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A0260;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionRootComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedReflectionRootComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionRootComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedReflectionRootComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs233ImageBasedReflectionRootComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionRootComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD68A8;
}

void re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionRootComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD68A8;
}

void re::ecs2::ImageBasedReflectionRootComponent::~ImageBasedReflectionRootComponent(re::ecs2::ImageBasedReflectionRootComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs233ImageBasedReflectionRootComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

uint64_t *re::spatialMediaLogObjects(re *this)
{
  {
    re::spatialMediaLogObjects(void)::logObjects = os_log_create("com.apple.re", "SpatialMedia");
  }

  return &re::spatialMediaLogObjects(void)::logObjects;
}

void re::introspect_REForceEffectInputs(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A0308, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A0310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0310))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A0470, "REForceEffectInputs", 4, 4, 1, 1);
      qword_1EE1A0470 = &unk_1F5D0C658;
      qword_1EE1A04B0 = &re::introspect_REForceEffectInputs(BOOL)::enumTable;
      dword_1EE1A0480 = 9;
      __cxa_guard_release(&qword_1EE1A0310);
    }

    if (_MergedGlobals_162)
    {
      break;
    }

    _MergedGlobals_162 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A0470, a2);
    v45 = 0xDDBD7482084DEE4;
    v46 = "REForceEffectInputs";
    v49 = 0x607DD0F01DCLL;
    v50 = "uint32_t";
    v4 = v48[0];
    v5 = v48[1];
    if (v49)
    {
      if (v49)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A04B0;
      v49 = v4;
      v50 = v5;
      re::TypeBuilder::beginEnumType(v48, &v45, 1, 1, &v49);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(v48, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v48, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v48, v26);
      xmmword_1EE1A0490 = v47;
      if (v45)
      {
        if (v45)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v46);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A0308);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "REForceEffectInputsNone";
      qword_1EE1A03B0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "REForceEffectInputsPosition";
      qword_1EE1A03B8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "REForceEffectInputsOrientation";
      qword_1EE1A03C0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 4;
      *(v36 + 2) = "REForceEffectInputsVelocity";
      qword_1EE1A03C8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 8;
      *(v38 + 2) = "REForceEffectInputsAngularVelocity";
      qword_1EE1A03D0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 16;
      *(v40 + 2) = "REForceEffectInputsDistance";
      qword_1EE1A03D8 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 32;
      *(v42 + 2) = "REForceEffectInputsMass";
      qword_1EE1A03E0 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 8) = 64;
      *(v44 + 16) = "REForceEffectInputsInertiaTensor";
      qword_1EE1A03E8 = v44;
      __cxa_guard_release(&qword_1EE1A0308);
    }
  }
}

void *re::ecs2::allocInfo_ForceEffectDesc(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0328))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0500, "ForceEffectDesc");
    __cxa_guard_release(&qword_1EE1A0328);
  }

  return &unk_1EE1A0500;
}

void re::ecs2::initInfo_ForceEffectDesc(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xA2B91F6A98FF61DALL;
  v21[1] = "ForceEffectDesc";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1A0330, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A0330);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_ForceEffectDefinition(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "def";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A0390 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspect_REForceEffectInputs(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "inputs";
      *(v11 + 16) = &qword_1EE1A0470;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0xB000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A0398 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_uint64_t(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "eventKey";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0xB800000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A03A0 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "userData";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0xC000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1A03A8 = v19;
      __cxa_guard_release(&qword_1EE1A0330);
    }
  }

  *(this + 2) = 0x10000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A0390;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ForceEffectDesc>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ForceEffectDesc>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ForceEffectDesc>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ForceEffectDesc>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

double re::internal::defaultConstruct<re::ecs2::ForceEffectDesc>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0x3F80000000000000;
  *(a3 + 32) = -3229614080;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = 0;
  *(a3 + 152) = 0;
  *(a3 + 168) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 176) = 0;
  *(a3 + 224) = 0;
  *(a3 + 248) = 0;
  result = 0.0;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0;
  return result;
}

uint64_t *re::internal::defaultDestruct<re::ecs2::ForceEffectDesc>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 192);

  return std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100]((a3 + 88));
}

double re::internal::defaultConstructV2<re::ecs2::ForceEffectDesc>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3F80000000000000;
  *(a1 + 32) = -3229614080;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 176) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  result = 0.0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return result;
}

uint64_t *re::internal::defaultDestructV2<re::ecs2::ForceEffectDesc>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 192);

  return std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100]((a1 + 88));
}

void *re::ecs2::allocInfo_ForceEffectComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0340))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0590, "ForceEffectComponent");
    __cxa_guard_release(&qword_1EE1A0340);
  }

  return &unk_1EE1A0590;
}

void re::ecs2::initInfo_ForceEffectComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xC509062FDBB70842;
  v15[1] = "ForceEffectComponent";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1A0348, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A0348);
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
      qword_1EE1A0378 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::Optional<REPhysicsForceEffectPlaybackRequest>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "state";
      *(v11 + 16) = &qword_1EE1A03F0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1900000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A0380 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::ForceEffectDesc>>::get(v12);
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "descriptions";
      *(v13 + 16) = &qword_1EE1A0430;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A0388 = v13;
      __cxa_guard_release(&qword_1EE1A0348);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A0378;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ForceEffectComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ForceEffectComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ForceEffectComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ForceEffectComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220ForceEffectComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::IntrospectionInfo<re::Optional<REPhysicsForceEffectPlaybackRequest>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A0350, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1A0302 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1A0318, memory_order_acquire) & 1) == 0)
    {
      v34 = __cxa_guard_acquire(&qword_1EE1A0318);
      if (v34)
      {
        v35 = re::introspectionAllocator(v34);
        v36 = (*(*v35 + 32))(v35, 24, 8);
        *v36 = 1;
        *(v36 + 1) = 0;
        *(v36 + 2) = "REPhysicsForceEffectPlaybackRequestStart";
        qword_1EE1A0360 = v36;
        v37 = re::introspectionAllocator(v36);
        v38 = (*(*v37 + 32))(v37, 24, 8);
        *v38 = 1;
        *(v38 + 1) = 1;
        *(v38 + 2) = "REPhysicsForceEffectPlaybackRequestPause";
        qword_1EE1A0368 = v38;
        v39 = re::introspectionAllocator(v38);
        v40 = (*(*v39 + 32))(v39, 24, 8);
        *v40 = 1;
        *(v40 + 8) = 2;
        *(v40 + 16) = "REPhysicsForceEffectPlaybackRequestResume";
        qword_1EE1A0370 = v40;
        __cxa_guard_release(&qword_1EE1A0318);
      }
    }

    if ((atomic_load_explicit(&qword_1EE1A0320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0320))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A04B8, "REPhysicsForceEffectPlaybackRequest", 1, 1, 1, 1);
      qword_1EE1A04B8 = &unk_1F5D0C658;
      qword_1EE1A04F8 = &re::introspect_REPhysicsForceEffectPlaybackRequest(BOOL)::enumTable;
      dword_1EE1A04C8 = 9;
      __cxa_guard_release(&qword_1EE1A0320);
    }

    if (byte_1EE1A0301)
    {
      goto LABEL_43;
    }

    byte_1EE1A0301 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A04B8, a2);
    *&v44 = 0x1265D1D99F95FF58;
    *(&v44 + 1) = "REPhysicsForceEffectPlaybackRequest";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v45;
    v5 = v46[0];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A04F8;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(&v45, &v44, 1, 1, &v47);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v49.var0 = 2 * v11;
            v49.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v45, v15, &v49);
            if (*&v49.var0)
            {
              if (*&v49.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v49.var0 = 2 * v20;
              v49.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v45, v24, &v49);
              if (*&v49.var0)
              {
                if (*&v49.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v45, v26);
      xmmword_1EE1A04D8 = v49;
      if (v44)
      {
        if (v44)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1A0302 & 1) == 0)
      {
        byte_1EE1A0302 = 1;
        v28 = dword_1EE1A04D0;
        ArcSharedObject::ArcSharedObject(&qword_1EE1A03F0, 0);
        qword_1EE1A0400 = 0x20000000DLL;
        dword_1EE1A0408 = v28;
        word_1EE1A040C = 0;
        *&xmmword_1EE1A0410 = 0;
        *(&xmmword_1EE1A0410 + 1) = 0xFFFFFFFFLL;
        qword_1EE1A0420 = &qword_1EE1A04B8;
        qword_1EE1A0428 = 0;
        qword_1EE1A03F0 = &unk_1F5CD6998;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&qword_1EE1A03F0, &v45);
        if (v46[0])
        {
          v31 = v46[1];
        }

        else
        {
          v31 = v46 + 1;
        }

        if (v45 && (v46[0] & 1) != 0)
        {
          (*(*v45 + 40))();
        }

        v42 = xmmword_1EE1A04D8;
        if (*&v49.var0)
        {
          v41 = v49;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v47);
          re::TypeBuilder::TypeBuilder(&v45, &v47);
          v44 = v42;
          re::TypeBuilder::beginOptionalType(&v45, &v43, 2uLL, 1uLL, &v44);
          re::TypeBuilder::setOptionalAccessors(&v45, re::TypeBuilderHelper::registerOptional<REPhysicsForceEffectPlaybackRequest>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<REPhysicsForceEffectPlaybackRequest>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v45, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v47);
        }

        xmmword_1EE1A0410 = v41;
        if (v43)
        {
          if (v43)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v44 + 1));
    _os_crash();
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1A0350))
    {
      re::IntrospectionOptional<REPhysicsForceEffectPlaybackRequest>::IntrospectionOptional();
      __cxa_guard_release(&qword_1EE1A0350);
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ForceEffectDesc>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1A0358, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1A0358);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1A0430);
      qword_1EE1A0430 = &unk_1F5CD6A18;
      __cxa_guard_release(&qword_1EE1A0358);
    }
  }

  if ((byte_1EE1A0303 & 1) == 0)
  {
    v1 = qword_1EE1A0338;
    if (qword_1EE1A0338 || (v1 = re::ecs2::allocInfo_ForceEffectDesc(a1), qword_1EE1A0338 = v1, re::ecs2::initInfo_ForceEffectDesc(v1, v2), (byte_1EE1A0303 & 1) == 0))
    {
      byte_1EE1A0303 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A0430, 0);
      qword_1EE1A0440 = 0x2800000003;
      dword_1EE1A0448 = v3;
      word_1EE1A044C = 0;
      *&xmmword_1EE1A0450 = 0;
      *(&xmmword_1EE1A0450 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A0460 = v1;
      unk_1EE1A0468 = 0;
      qword_1EE1A0430 = &unk_1F5CD6A18;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1A0430, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1A0450 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

re *re::internal::destroyPersistent<re::ForceEffectDefinition>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100]((a3 + 88));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re *re::ecs2::ForceEffectComponent::removeDefinitionLast(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 120) + 8 * *(a1 + 104) - 8);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = WeakRetained - 8;
  if (!WeakRetained)
  {
    v6 = 0;
  }

  v9 = v4;
  *(v4 + 128) = 0;
  re::DynamicArray<unsigned long long>::remove((v6 + 344), &v9);
  if (WeakRetained)
  {
  }

  v7 = *(a2 + 48);
  v9 = *(v4 + 88);
  re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(v7 + 8, &v9);
  --*(a1 + 144);
  ++*(a1 + 152);
  --*(a1 + 104);
  ++*(a1 + 112);

  return re::internal::destroyPersistent<re::ForceEffectDefinition>("removeDefinitionLast", 95, v4);
}

uint64_t re::ecs2::ForceEffectComponent::updateForceEffectDefinitionAt(re::ecs2::ForceEffectComponent *this, unint64_t a2, float32x4_t *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(this + 13);
  if (v4 <= a2)
  {
    v43[0].i64[0] = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    *&v52[14] = 789;
    *&v52[18] = 2048;
    *&v52[20] = a2;
    *&v52[28] = 2048;
    *&v52[30] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v43[0].i64[0] = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    *&v52[14] = 789;
    *&v52[18] = 2048;
    *&v52[20] = a2;
    *&v52[28] = 2048;
    *&v52[30] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(this + 6);
  if (v4 <= a2)
  {
    goto LABEL_29;
  }

  v6 = *(*(this + 15) + 8 * a2);
  v7 = (*(this + 8) + (a2 << 8));
  *(*(v6 + 88) + 16) = *(v7 + 44);
  re::TransformService::worldMatrix(a3->i64[1], *(this + 2), 0, v43);
  v8 = 0;
  v9 = *(v7 + 4);
  v10 = *(v7 + 5);
  v11 = v9 + v9;
  v12 = v10 + v10;
  v13 = *(v7 + 6);
  v14 = *(v7 + 7);
  v15 = v13 + v13;
  v16 = v9 * (v9 + v9);
  v17 = v10 * (v10 + v10);
  v18 = v13 * (v13 + v13);
  v19 = v11 * v10;
  v20 = v11 * v13;
  v21 = v12 * v13;
  v22 = v12 * v14;
  v23 = v15 * v14;
  HIDWORD(v24) = 0;
  *&v24 = 1.0 - (v17 + v18);
  *(&v24 + 1) = v19 + v23;
  *(&v24 + 2) = v20 - v22;
  v25 = v11 * v14;
  v26 = 1.0 - (v16 + v18);
  HIDWORD(v27) = 0;
  *&v27 = v19 - v23;
  *(&v27 + 1) = v26;
  *(&v27 + 2) = v21 + v25;
  HIDWORD(v28) = 0;
  *&v28 = v20 + v22;
  *(&v28 + 1) = v21 - v25;
  *(&v28 + 2) = 1.0 - (v16 + v17);
  v29 = *v7;
  HIDWORD(v29) = 1.0;
  v30 = v43[0];
  v31 = v43[1];
  v32 = v43[2];
  v33 = v43[3];
  *v52 = v24;
  *&v52[16] = v27;
  *&v52[32] = v28;
  v53 = v29;
  do
  {
    *(&v47 + v8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*&v52[v8])), v31, *&v52[v8], 1), v32, *&v52[v8], 2), v33, *&v52[v8], 3);
    v8 += 16;
  }

  while (v8 != 64);
  *v52 = v47;
  *&v52[16] = v48;
  *&v52[32] = v49;
  v53 = v50;
  re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(a3, v52, &v47);
  v45 = xmmword_1E30474D0;
  v46 = 0u;
  v44 = 0u;
  result = re::decomposeScaleRotationTranslation<float>(&v47, &v46, &v45, &v44);
  v35 = v45;
  v36 = *(&v44 + 1);
  *v6 = v44;
  *(v6 + 8) = v36;
  *(v6 + 16) = v35;
  *(v6 + 32) = *(v7 + 8);
  *(v6 + 36) = *(v7 + 9);
  *(v6 + 40) = *(v7 + 40);
  if (*(v6 + 44))
  {
    if ((*(v7 + 44) & 1) == 0)
    {
      *(v6 + 44) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if ((*(v7 + 44) & 1) == 0)
    {
      goto LABEL_11;
    }

    *(v6 + 44) = 1;
  }

  v37 = *(v7 + 6);
  *(v6 + 56) = *(v7 + 14);
  *(v6 + 48) = v37;
LABEL_11:
  if (*(v7 + 44) == 1)
  {
    v38 = *(v6 + 48);
    if (v38 < 0.0)
    {
      v38 = 0.0;
    }

    v39 = *(v6 + 52);
    *(v6 + 48) = v38;
    *(v6 + 52) = vbsl_s8(vcgt_f32(v39.u32[0], __PAIR64__(v39.u32[1], LODWORD(v38))), LODWORD(v38), v39);
  }

  if (*(v6 + 64))
  {
    if (v7[4])
    {
      v40 = *(v7 + 9);
      *(v6 + 80) = *(v7 + 20);
      *(v6 + 72) = v40;
    }

    else
    {
      *(v6 + 64) = 0;
    }
  }

  else if (v7[4])
  {
    *(v6 + 64) = 1;
    *(v6 + 72) = *(v7 + 72);
  }

  if (*(v7 + 64) == 1)
  {
    v41 = *(v6 + 72);
    if (v41 < 0.0)
    {
      v41 = 0.0;
    }

    *(v6 + 72) = v41;
    v42 = *(v6 + 80);
    if (v42 < 0.0)
    {
      v42 = 0.0;
    }

    *(v6 + 80) = v42;
  }

  return result;
}

BOOL re::ecs2::ForceEffectComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v37, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v36[0] = v12, (v36[1] = v13) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v33, a5, 0);
    v15 = v33;
    v14 = v34;
    v33 = a4;
    v34 = v15;
    v35 = v14;
    if (v15 != a5 || v14 != 0xFFFFFFFFLL)
    {
      do
      {
        v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v33);
        v17 = *(v16 + 16);
        v18 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v36, v17);
        if (v18 && (v19 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v18), (*(v17 + 304) & 1) != 0) && (v20 = v19) != 0)
        {
          WeakRetained = objc_loadWeakRetained((v16 + 72));
          if (WeakRetained)
          {
            v22 = WeakRetained - 8;
          }

          else
          {
            v22 = 0;
          }

          if (v22 != v20)
          {
            for (i = *(v16 + 144); i; --i)
            {
              re::ecs2::ForceEffectComponent::removeDefinitionLast(v16, *(v16 + 80));
            }
          }

          v27 = v33;
          v28 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v34);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v27, v28, *(a3 + 40));
        }

        else
        {
          v23 = v33;
          v24 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v34);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v23, v24, *(a3 + 32));
          for (j = *(v16 + 144); j; --j)
          {
            re::ecs2::ForceEffectComponent::removeDefinitionLast(v16, *(v16 + 80));
          }
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v34);
      }

      while (v34 != a5 || v35 != 0xFFFF || HIWORD(v35) != 0xFFFF);
    }

    v31 = *(a5 + 40) != 0;
  }

  else
  {
    v31 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v37);
  return v31;
}

BOOL re::ecs2::ForceEffectComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v93 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v80, 3047, a1);
  v7 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v8 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v7);
  if (!v8 || (v9 = v8, v10 = *(a3 + 8), v11 = (*(*v8 + 24))(v8), v12 = (*(*v9 + 40))(v9, v10), v79[0] = v11, (v79[1] = v12) == 0))
  {
    v71 = 0;
    goto LABEL_103;
  }

  v73 = a3;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v88, a5, 0);
  v76 = a4;
  v77 = v88;
  v78 = DWORD2(v88);
  if (v88 != a5 || DWORD2(v88) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v76);
      v14 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v79, *(v13 + 16));
      v15 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v14);
      v16 = v15 ? (v15 + 8) : 0;
      v17 = objc_storeWeak((v13 + 72), v16);
      *(v13 + 80) = v14;
      v18 = *(v13 + 144);
      v19 = *(v13 + 48);
      v20 = v18 >= v19 ? *(v13 + 48) : *(v13 + 144);
      if (v20)
      {
        v21 = *(v13 + 160);
        v22 = *(v13 + 64);
        if (*v21 == *(v22 + 184))
        {
          v23 = 0;
          v24 = (v22 + 440);
          v25 = v21 + 1;
          do
          {
            if (v20 - 1 == v23)
            {
              goto LABEL_17;
            }

            v26 = v25[v23];
            v27 = *v24;
            v24 += 32;
            ++v23;
          }

          while (v26 == v27);
          v28 = v23 < v20;
        }

        else
        {
          v28 = 1;
        }

        v75 = v28;
      }

      else
      {
LABEL_17:
        if (v18 == v19)
        {
          goto LABEL_64;
        }

        v75 = 0;
      }

      v29 = v18 - v19;
      if (v18 <= v19)
      {
        break;
      }

      do
      {
        re::ecs2::ForceEffectComponent::removeDefinitionLast(v13, v14);
        --v29;
      }

      while (v29);
LABEL_53:
      v18 = *(v13 + 144);
      if (!v75)
      {
LABEL_64:
        if (v18)
        {
LABEL_65:
          v55 = 0;
          do
          {
            re::ecs2::ForceEffectComponent::updateForceEffectDefinitionAt(v13, v55++, v14);
          }

          while (v55 < *(v13 + 144));
        }

        goto LABEL_67;
      }

      if (v18)
      {
        v50 = 0;
        v11 = *(v13 + 48);
        v51 = 184;
        while (v11 > v50)
        {
          v52 = *(*(v13 + 64) + v51);
          if (*(*(v13 + 160) + 8 * v50) != v52)
          {
            v18 = *(v13 + 104);
            if (v18 <= v50)
            {
              goto LABEL_106;
            }

            v53 = *(v14 + 6);
            *&v88 = *(*(*(v13 + 120) + 8 * v50) + 88);
            v18 = v88;
            re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(v53 + 8, &v88);
            v54 = *(v14 + 6);
            *&v88 = *(v13 + 16);
            *(&v88 + 1) = v52;
            *&v89 = v50;
            *v83 = v18;
            re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(v54 + 8, v83, &v88);
            v11 = *(v13 + 48);
            if (v11 <= v50)
            {
              goto LABEL_107;
            }

            v18 = *(v13 + 144);
            if (v18 <= v50)
            {
              goto LABEL_108;
            }

            *(*(v13 + 160) + 8 * v50) = *(*(v13 + 64) + v51);
          }

          ++v50;
          v51 += 256;
          if (v50 >= v18)
          {
            goto LABEL_65;
          }
        }

        v82 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        v84 = 1024;
        v85 = 789;
        v86 = 2048;
        *v87 = v50;
        *&v87[8] = 2048;
        *&v87[10] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_105:
        v82 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v50 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        v84 = 1024;
        v85 = 789;
        v86 = 2048;
        *v87 = v29 + v18;
        *&v87[8] = 2048;
        *&v87[10] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_106:
        v82 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        v84 = 1024;
        v85 = 789;
        v86 = 2048;
        *v87 = v50;
        *&v87[8] = 2048;
        *&v87[10] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_107:
        v82 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        v84 = 1024;
        v85 = 789;
        v86 = 2048;
        *v87 = v50;
        *&v87[8] = 2048;
        *&v87[10] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_108:
        v82 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        v84 = 1024;
        v85 = 789;
        v86 = 2048;
        *v87 = v50;
        *&v87[8] = 2048;
        *&v87[10] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_67:
      if (*(v13 + 25) != 1)
      {
        goto LABEL_98;
      }

      v56 = *(v13 + 26);
      if (v56 == 2)
      {
        v66 = *(v13 + 104);
        if (v66)
        {
          v67 = *(v13 + 120);
          do
          {
            v68 = *v67;
            if (*(*v67 + 128) && *(v68 + 136) == 1)
            {
              *(v68 + 168) = 1;
            }

            ++v67;
            --v66;
          }

          while (v66);
        }

LABEL_95:
        LOBYTE(v63) = 1;
LABEL_96:
        *(v13 + 168) = v63;
        goto LABEL_97;
      }

      if (v56 == 1)
      {
        v63 = *(v13 + 104);
        if (v63)
        {
          v64 = *(v13 + 120);
          do
          {
            v65 = *v64;
            if (*(*v64 + 128) && *(v65 + 136) == 1)
            {
              *(v65 + 168) = 0;
            }

            ++v64;
            --v63;
          }

          while (v63);
        }

        goto LABEL_96;
      }

      if (!*(v13 + 26))
      {
        v57 = *(v13 + 104);
        if (v57)
        {
          for (i = 0; i < v57; ++i)
          {
            v59 = *(*(v13 + 120) + 8 * i);
            v60 = *(v59 + 128);
            if (v60)
            {
              v61 = *(v60 + 24);
              if (*(v59 + 136) != 1)
              {
                *(v59 + 136) = 1;
              }

              *(v59 + 144) = v61;
              if ((*(v59 + 152) & 1) == 0)
              {
                *(v59 + 152) = 1;
              }

              *(v59 + 160) = v61;
              *(v59 + 168) = 1;
              v57 = *(v13 + 104);
            }
          }

          v62 = *(v13 + 25);
          *(v13 + 168) = 1;
          if ((v62 & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        goto LABEL_95;
      }

LABEL_97:
      *(v13 + 25) = 0;
LABEL_98:
      v69 = v76;
      v70 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v77);
      re::ecs2::ComponentBucketsBase::moveComponent(*(v73 + 16), v69, v70, *(v73 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v77);
      if (v77 == a5 && v78 == 0xFFFF && HIWORD(v78) == 0xFFFF)
      {
        goto LABEL_101;
      }
    }

    if (v18 >= v19)
    {
      goto LABEL_53;
    }

    while (1)
    {
      v18 = *(v13 + 48);
      v30 = v29 + v18;
      if (!__CFADD__(v29, v18))
      {
        goto LABEL_105;
      }

      v31 = *(v13 + 64);
      v32 = re::globalAllocators(v17);
      v33 = (*(*v32[2] + 32))(v32[2], 176, 16);
      *v33 = 0u;
      *(v33 + 32) = 0u;
      *(v33 + 48) = 0u;
      *(v33 + 64) = 0u;
      *(v33 + 80) = 0u;
      *(v33 + 96) = 0u;
      *(v33 + 112) = 0u;
      *(v33 + 128) = 0u;
      *(v33 + 144) = 0u;
      *(v33 + 160) = 0u;
      *(v33 + 16) = 0;
      *(v33 + 24) = 0x3F80000000000000;
      *(v33 + 32) = -3229614080;
      *(v33 + 120) = 0;
      v34 = (v33 + 120);
      *(v33 + 136) = 0;
      *(v33 + 128) = 0;
      v82 = v33;
      v35 = re::globalAllocators(v33);
      v36 = (*(*v35[2] + 32))(v35[2], 24, 8);
      v36[1] = 0;
      v36[2] = 0;
      *v36 = &unk_1F5D0D7E8;
      *v83 = &unk_1F5CD6B38;
      *&v87[4] = v83;
      *&v90 = &v88 + 8;
      *&v88 = 0;
      *(&v88 + 1) = &unk_1F5CD6B38;
      v37 = *(v33 + 88);
      *(v33 + 88) = v36;
      if (v37)
      {
        std::function<void ()(re::ForceEffectFunctionBase *)>::operator()(v33 + 96, v37);
      }

      v38 = *(v33 + 120);
      *(v33 + 120) = 0;
      if (v38 == v33 + 96)
      {
        (*(*v38 + 32))(v38);
      }

      else if (v38)
      {
        (*(*v38 + 40))(v38);
      }

      v39 = v90;
      if (v90)
      {
        if (v90 == (&v88 + 8))
        {
          *v34 = v33 + 96;
          (*(*v39 + 24))(v39, v33 + 96);
        }

        else
        {
          *v34 = v90;
          *&v90 = 0;
        }
      }

      else
      {
        *v34 = 0;
      }

      v40 = v31 + (v30 << 8);
      std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100](&v88);
      std::__function::__value_func<void ()(re::ForceEffectFunctionBase *)>::~__value_func[abi:nn200100](v83);
      v81 = *(v40 + 184);
      v41 = v81;
      v36[1] = v36;
      *(v36 + 4) = *(v40 + 176);
      v42 = *(v14 + 6);
      *&v88 = *(v13 + 16);
      *(&v88 + 1) = v41;
      *&v89 = *(v13 + 104);
      *v83 = v36;
      re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(v42 + 8, v83, &v88);
      WeakRetained = objc_loadWeakRetained((v13 + 72));
      v11 = WeakRetained;
      if (WeakRetained)
      {
        v44 = WeakRetained - 8;
      }

      else
      {
        v44 = 0;
      }

      *&v88 = v33;
      re::DynamicArray<re::TransitionCondition *>::add(v44 + 43, &v88);
      *(v88 + 128) = *(v44 + 42);
      if (v11)
      {
      }

      re::DynamicArray<re::TransitionCondition *>::add((v13 + 88), &v82);
      v17 = re::DynamicArray<re::TransitionCondition *>::add((v13 + 128), &v81);
      v45 = v82;
      v46 = *(v82 + 128);
      if (v46)
      {
        break;
      }

LABEL_51:
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_53;
      }
    }

    v47 = *(v46 + 24);
    if (*(v82 + 136) == 1)
    {
      *(v82 + 144) = v47;
      if (*(v45 + 152))
      {
LABEL_49:
        *(v45 + 168) = 1;
        v48 = (v45 + 168);
        *(v48 - 1) = v47;
        if ((*(v13 + 168) & 1) == 0)
        {
          *v48 = 0;
        }

        goto LABEL_51;
      }
    }

    else
    {
      *(v82 + 136) = 1;
      *(v45 + 144) = v47;
      if (*(v45 + 152))
      {
        goto LABEL_49;
      }
    }

    *(v45 + 152) = 1;
    goto LABEL_49;
  }

LABEL_101:
  v71 = *(a5 + 40) != 0;
LABEL_103:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v80);
  return v71;
}

BOOL re::ecs2::ForceEffectComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v38, 3047, a1);
  v10 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v10);
  if (v11 && (v12 = v11, v13 = *(a3 + 8), v14 = (*(*v11 + 24))(v11), v15 = (*(*v12 + 40))(v12, v13), v37[0] = v14, (v37[1] = v15) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&buf, a5, 0);
    v34 = a4;
    v35 = buf.i64[0];
    v36 = buf.i32[2];
    if (buf.i64[0] != a5 || buf.u32[2] != 0xFFFFFFFFLL)
    {
      do
      {
        v17 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v34);
        v18 = *(v17 + 2);
        v19 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v37, v18);
        v20 = v19;
        if (!a6 || re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v19) == a6)
        {
          re::TransformService::worldMatrix(v20->i64[1], v18, 0, &buf);
          re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v20, &buf, v33);
          buf = 0u;
          v39 = 0u;
          v40 = xmmword_1E30474D0;
          v21 = re::decomposeScaleRotationTranslation<float>(v33, &buf, &v40, &v39);
          v22.i64[0] = v39;
          v22.i64[1] = __PAIR64__(buf.u32[0], DWORD2(v39));
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v22, v22)))) & 1) == 0 && ((v23 = vmulq_f32(v40, v40), v24 = vaddv_f32(vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL))), v24 == 1.0) || fabsf(v24 + -1.0) <= 0.00001))
          {
            if (*(v17 + 18))
            {
              v16 = 0;
              do
              {
                re::ecs2::ForceEffectComponent::updateForceEffectDefinitionAt(v17, v16++, v20);
              }

              while (v16 < *(v17 + 18));
            }
          }

          else
          {
            v25 = *re::ecsComponentsLogObjects(v21);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              buf.i16[0] = 0;
              _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "NaN or non-unit rotation detected in transform (PhysicsSystem_Collider). Skipping.", &buf, 2u);
            }

            for (i = *(v17 + 18); i; --i)
            {
              re::ecs2::ForceEffectComponent::removeDefinitionLast(v17, *(v17 + 10));
            }

            v27 = v34;
            v28 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v35);
            re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v27, v28, *(a3 + 32));
          }
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v35);
      }

      while (v35 != a5 || v36 != 0xFFFF || HIWORD(v36) != 0xFFFF);
    }

    v31 = *(a5 + 40) != 0;
  }

  else
  {
    v31 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v38);
  return v31;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::ForceEffectComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 3;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(a2[2], a2[v6], v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      ++v6;
    }

    while (v6 != 7);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::IntrospectionOptional<REPhysicsForceEffectPlaybackRequest>::IntrospectionOptional()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1A03F0, 0);
  *(&qword_1EE1A0400 + 6) = 0;
  qword_1EE1A0400 = 0;
  *&xmmword_1EE1A0410 = 0;
  *(&xmmword_1EE1A0410 + 1) = 0xFFFFFFFFLL;
  qword_1EE1A03F0 = &unk_1F5CBA310;
  qword_1EE1A0428 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1A0420);
  qword_1EE1A03F0 = &unk_1F5CD6998;
  return result;
}

void *re::IntrospectionOptional<REPhysicsForceEffectPlaybackRequest>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<REPhysicsForceEffectPlaybackRequest>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<REPhysicsForceEffectPlaybackRequest>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<REPhysicsForceEffectPlaybackRequest>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<REPhysicsForceEffectPlaybackRequest>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<REPhysicsForceEffectPlaybackRequest>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ForceEffectDesc>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::ForceEffectDesc>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::ForceEffectDesc>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::ForceEffectDesc>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::ForceEffectDesc>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

uint64_t *re::IntrospectionDynamicArray<re::ecs2::ForceEffectDesc>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::ForceEffectDesc>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::ForceEffectDesc>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = 0uLL;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  memset(v21, 0, sizeof(v21));
  *v20 = 0;
  *&v20[8] = 0x3F80000000000000;
  *&v20[16] = 0xFFFFFFFF3F800000;
  BYTE8(v22) = 0;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
      {
        v12 = 2 * v9;
        v13 = v9 == 0;
        v14 = 8;
        if (!v13)
        {
          v14 = v12;
        }

        if (v14 <= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v14;
        }

        re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(a4, v15);
      }

      else
      {
        re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }

      v8 = 0uLL;
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + (v10 << 8);
  *(v16 + 25) = *&v20[9];
  *v16 = 0u;
  *(v16 + 16) = *v20;
  *(v16 + 44) = 0;
  *(v16 + 64) = 0;
  *(&v21[0] + 1) = 0;
  *(v16 + 88) = 0;
  *(v16 + 152) = 0;
  *(v16 + 168) = 0;
  *(v16 + 120) = v8;
  *(v16 + 136) = 0;
  *(v16 + 176) = v23[0];
  *(v16 + 192) = v8;
  v23[1] = v8;
  *(v16 + 208) = 0;
  *&v23[2] = 0;
  *(v16 + 224) = 0;
  *&v23[3] = 0;
  DWORD2(v23[2]) = 1;
  *(v16 + 216) = 1;
  v17 = *(&v23[3] + 8);
  *(v16 + 248) = *(&v23[4] + 1);
  *(v16 + 232) = v17;
  ++*(a4 + 16);
  ++*(a4 + 24);
  std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100](v21 + 1);
  v18 = (*(a4 + 32) + (*(a4 + 16) << 8) - 256);
  re::introspectionInitElement(a2, a3, a1[6], v18);
  return v18;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::ForceEffectDesc>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 8);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 8);
}

uint64_t re::DynamicArray<re::ecs2::ForceEffectDesc>::deinit(uint64_t a1)
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
        v5 = v4 << 8;
        v6 = v3 + 192;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100]((v6 - 104));
          v6 += 256;
          v5 -= 256;
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

void *re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(void *result, unint64_t a2)
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

        if (HIBYTE(a2))
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 256, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 8;
          result = (*(*result + 32))(result, a2 << 8, 16);
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
            re::ObjectHelper::move<re::ecs2::ForceEffectDesc>(v5[4], (v5[4] + (v5[2] << 8)), v7);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t *re::ObjectHelper::move<re::ecs2::ForceEffectDesc>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = &v5[v6];
      v8 = a3 + v6 * 8;
      v9 = *&v5[v6];
      v10 = *&v5[v6 + 2];
      *(v8 + 25) = *(&v5[v6 + 3] + 1);
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = BYTE4(v5[v6 + 5]);
      *(v8 + 44) = v11;
      if (v11 == 1)
      {
        v12 = v7[6];
        *(v8 + 56) = *(v7 + 14);
        *(v8 + 48) = v12;
      }

      v13 = *(v7 + 64);
      *(v8 + 64) = v13;
      if (v13 == 1)
      {
        *(a3 + v6 * 8 + 72) = *&v5[v6 + 9];
      }

      v14 = &v5[v6];
      v15 = v7[11];
      v7[11] = 0;
      *(v8 + 88) = v15;
      std::__function::__value_func<void ()(re::ForceEffectFunctionBase *)>::__value_func[abi:nn200100](a3 + v6 * 8 + 96, &v5[v6 + 12]);
      *(v8 + 128) = v7[16];
      v16 = *(v7 + 136);
      *(v8 + 136) = v16;
      if (v16 == 1)
      {
        *(a3 + v6 * 8 + 144) = v14[18];
      }

      v17 = *(v7 + 152);
      *(v8 + 152) = v17;
      if (v17 == 1)
      {
        *(a3 + v6 * 8 + 160) = v5[v6 + 20];
      }

      *(v8 + 168) = *(v7 + 168);
      *(v8 + 176) = *(v7 + 11);
      *(v8 + 224) = 0;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 192) = 0;
      *(v8 + 216) = 0;
      v18 = v7[24];
      v19 = v7[25];
      v20 = (v7 + 24);
      *(v8 + 192) = v18;
      *(v8 + 200) = v19;
      *v20 = 0;
      *(v20 + 8) = 0;
      v21 = *(v8 + 208);
      *(v8 + 208) = *(v20 + 16);
      *(v20 + 16) = v21;
      v22 = *(v8 + 224);
      *(v8 + 224) = *(v20 + 32);
      *(v20 + 32) = v22;
      ++*(v20 + 24);
      ++*(v8 + 216);
      v23 = *(v20 + 40);
      *(v8 + 248) = *(v20 + 56);
      *(v8 + 232) = v23;
      re::DynamicArray<unsigned long>::deinit(v20);
      result = std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100](v14 + 11);
      v6 += 32;
    }

    while ((v20 + 64) != a2);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::ForceEffectFunctionBase *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *re::DynamicArray<re::ecs2::ForceEffectDesc>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = (a2 << 8) | 0xC0;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10);
      result = std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100]((v10 - 104));
      ++v9;
      v8 += 256;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 8) | 0xE0;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 5) = 0uLL;
        *(v7 - 4) = 0uLL;
        *(v7 - 7) = 0uLL;
        *(v7 - 6) = 0uLL;
        *(v7 - 9) = 0uLL;
        *(v7 - 8) = 0uLL;
        *(v7 - 11) = 0uLL;
        *(v7 - 10) = 0uLL;
        *(v7 - 12) = 0uLL;
        *(v7 - 14) = 0uLL;
        *(v7 - 26) = 0;
        *(v7 - 25) = 0x3F80000000000000;
        *(v7 - 24) = -3229614080;
        *(v7 - 13) = 0;
        *(v7 - 12) = 0;
        *(v7 - 88) = 0;
        *(v7 - 12) = 0;
        *(v7 - 40) = 0uLL;
        *(v7 - 24) = 0uLL;
        *(v7 - 2) = 0;
        v6 += 256;
        *v7 = 0uLL;
        v7[1] = 0uLL;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = v8 << 8;
      v10 = *(a1 + 32) + 192;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v10);
        std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100]((v10 - 104));
        v10 += 256;
        v9 -= 256;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::ecs2::ForceEffectDesc>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::ForceEffectDesc>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::ecs2::ForceEffectDesc>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = v12 << 8;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 256;
        v14 -= 256;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 8);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 8);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ForceEffectDesc>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::ForceEffectComponent>(uint64_t a1)
{
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD6AB0;
  *(v2 + 64) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  objc_initWeak((v2 + 72), 0);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 168) = 1;
  return a1;
}

void re::ecs2::ForceEffectComponent::~ForceEffectComponent(id *this)
{
  *this = &unk_1F5CD6AB0;
  re::DynamicArray<unsigned long>::deinit((this + 16));
  re::DynamicArray<unsigned long>::deinit((this + 11));
  objc_destroyWeak(this + 9);
  this[9] = 0;
  re::DynamicArray<re::ecs2::ForceEffectDesc>::deinit((this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5CD6AB0;
  re::DynamicArray<unsigned long>::deinit((this + 16));
  re::DynamicArray<unsigned long>::deinit((this + 11));
  objc_destroyWeak(this + 9);
  this[9] = 0;
  re::DynamicArray<re::ecs2::ForceEffectDesc>::deinit((this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220ForceEffectComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::ForceEffectFunctionBase *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::ForceEffectFunctionBase,std::function<void ()(re::ForceEffectFunctionBase*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::ForceEffectFunctionBase *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::ForceEffectFunctionBase *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::ForceEffectFunctionBase *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1E22996D8);
  }

  return (*(*v2 + 48))(v2, &v4);
}

re *std::__function::__func<re::ecs2::ForceEffectComponent::createAndAppendDefinition(re::ecs2::ForceEffectDesc &,re::ecs2::PhysicsSimulationData &)::$_0,std::allocator<re::ecs2::ForceEffectComponent::createAndAppendDefinition(re::ecs2::ForceEffectDesc &,re::ecs2::PhysicsSimulationData &)::$_0>,void ()(re::ForceEffectFunctionBase *)>::operator()(re *result, void (****a2)(void))
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    (**v2)(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::ecs2::ForceEffectComponent::createAndAppendDefinition(re::ecs2::ForceEffectDesc &,re::ecs2::PhysicsSimulationData &)::$_0,std::allocator<re::ecs2::ForceEffectComponent::createAndAppendDefinition(re::ecs2::ForceEffectDesc &,re::ecs2::PhysicsSimulationData &)::$_0>,void ()(re::ForceEffectFunctionBase *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN2re16TransformService9isEnabledEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("EnableTransformService", a2, v5);
  if (v5[0] == 1)
  {
    re::TransformService::isEnabled(void)::isEnabled = v5[1];
  }

  v3 = *re::foundationCoreLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::TransformService::isEnabled(void)::isEnabled)
    {
      v4 = "TRUE";
    }

    else
    {
      v4 = "FALSE";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "EnableTransformService is %s", buf, 0xCu);
  }
}

re::TransformService *re::TransformService::TransformService(re::TransformService *this)
{
  v2 = 0;
  *this = &unk_1F5CD6BE8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 44) = 0x7FFFFFFFLL;
  do
  {
    v3 = this + v2;
    *(v3 + 11) = 0;
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    *(v3 + 7) = 0;
    v2 += 40;
    *(v3 + 20) = 0;
  }

  while (v2 != 120);
  *(this + 56) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 228) = 0x7FFFFFFFLL;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 30) = 0;
  v4 = (this + 240);
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 292) = 0x1FFFFFFFFLL;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 84) = 0;
  *(this + 340) = 0x7FFFFFFFLL;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 96) = 0;
  *(this + 388) = 0x7FFFFFFFLL;
  *(this + 50) = 0;
  *(this + 54) = 0;
  *(this + 440) = 0;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 30, 0);
  ++*(this + 66);
  *(this + 71) = 128;
  v5 = re::DataArray<re::TransformCache>::allocBlock(this + 30);
  return this;
}

void re::TransformService::~TransformService(re::TransformService *this)
{
  v2 = 0;
  *this = &unk_1F5CD6BE8;
  v3 = this + 56;
  do
  {
    v4 = &v3[40 * v2];
    v5 = *(v4 + 2);
    *(v4 + 2) = 0;
    if (v5)
    {
      v6 = *(v4 + 4);
      v7 = 8 * v5;
      do
      {
        if (*v6)
        {

          *v6 = 0;
        }

        v6 += 8;
        v7 -= 8;
      }

      while (v7);
    }

    ++*(v4 + 6);
    ++v2;
  }

  while (v2 != 3);
  if (*(this + 55))
  {
    v8 = *(this + 54);
    if (v8)
    {
      memset_pattern16(*(this + 25), &memset_pattern_9, 4 * v8);
    }

    v9 = *(this + 56);
    if (v9)
    {
      v10 = 0;
      for (i = 0; i < v9; ++i)
      {
        v12 = *(this + 26) + v10;
        v13 = *(v12 + 8);
        if (v13 < 0)
        {
          *(v12 + 8) = v13 & 0x7FFFFFFF;
          v14 = *(v12 + 16);
          if (v14)
          {

            *(v12 + 16) = 0;
            v9 = *(this + 56);
          }
        }

        v10 += 24;
      }
    }

    *(this + 55) = 0;
    *(this + 56) = 0;
    v15 = *(this + 58) + 1;
    *(this + 57) = 0x7FFFFFFF;
    *(this + 58) = v15;
  }

  if (*(this + 83))
  {
    v16 = *(this + 82);
    if (v16)
    {
      memset_pattern16(*(this + 39), &memset_pattern_9, 4 * v16);
    }

    v17 = *(this + 84);
    if (v17)
    {
      v18 = *(this + 40);
      do
      {
        if ((*v18 & 0x80000000) != 0)
        {
          *v18 &= ~0x80000000;
        }

        v18 += 8;
        --v17;
      }

      while (v17);
    }

    *(this + 85) = 0x7FFFFFFF;
    *(this + 332) = 0;
    ++*(this + 86);
  }

  re::DataArray<re::TransformCache>::deinit(this + 240);
  std::__function::__value_func<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::~__value_func[abi:nn200100](this + 408);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 352);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 38);
  re::DataArray<re::TransformCache>::deinit(this + 240);
  re::DynamicArray<unsigned long>::deinit(this + 240);
  v19.n128_f64[0] = re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 24);
  v20 = 176;
  do
  {
    v20 -= 40;
    v21 = this + v20;
    v22 = *(this + v20);
    if (v22)
    {
      v23 = *(v21 + 4);
      if (v23)
      {
        v24 = *(v21 + 2);
        if (v24)
        {
          v25 = 8 * v24;
          do
          {
            if (*v23)
            {

              *v23 = 0;
            }

            v23 += 8;
            v25 -= 8;
          }

          while (v25);
          v22 = *v21;
          v23 = *(v21 + 4);
        }

        (*(*v22 + 40))(v22, v23, v19);
      }

      *(v21 + 4) = 0;
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      *v21 = 0;
      ++*(v21 + 6);
    }
  }

  while (v20 != 56);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 1);
}

{
  re::TransformService::~TransformService(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DataArray<re::TransformCache>::deinit(uint64_t result)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v10 = result;
  if (*(result + 40))
  {
    LODWORD(v11) = 0;
    if (!*(result + 16))
    {
      goto LABEL_29;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = result;
  }

  v10 = v3;
  if (v3 != v2 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_28;
      }

      re::DataArray<re::TransformCache>::destroy(v2, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != v2 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_23;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_27:
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "removeAt";
      v15 = 1024;
      v16 = 931;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_27;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v9 = v2[4];
  (*(**v2 + 40))(*v2, *v9);
  (*(**v2 + 40))(*v2, v9[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

void ___ZN2re16TransformService37flushDirtyComponentsQueueOnEveryQueryEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("TransformServiceFlushOnQuery", a2, v5);
  if (v5[0] == 1)
  {
    re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::flushEveryTime = v5[1];
  }

  v3 = *re::foundationCoreLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::flushEveryTime)
    {
      v4 = "TRUE";
    }

    else
    {
      v4 = "FALSE";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "TransformServiceFlushOnQuery is %s", buf, 0xCu);
  }
}

void re::TransformService::willAddSceneToECSService(re::TransformService *this, re::EventBus **a2)
{
  v65[4] = *MEMORY[0x1E69E9840];
  v43 = a2;
  if (re::TransformService::isEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
  }

  if (re::TransformService::isEnabled(void)::isEnabled == 1)
  {
    re::Defaults::BOOLValue("EnableTransformServiceVisitationLogging", a2, v51);
    v4 = v51[0] & BYTE1(v51[0]);
    v6 = *re::foundationCoreLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "FALSE";
      if (v4)
      {
        v7 = "TRUE";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "EnableTransformServiceVisitationLogging is %s", &buf, 0xCu);
    }

    if (v4)
    {
      v65[0] = &unk_1F5CD6D60;
      v65[1] = this;
      v65[3] = v65;
      v8 = this + 408;
      p_buf = &buf;
      *&buf = &unk_1F5CD6D60;
      *(&buf + 1) = this;
      if (&buf != (this + 408))
      {
        v9 = *(this + 54);
        if (v9 == v8)
        {
          v55 = &unk_1F5CD6D60;
          v56 = this;
          p_buf = 0;
          (*(*v9 + 24))(v9, &buf);
          (*(**(this + 54) + 32))(*(this + 54));
          *(this + 54) = 0;
          p_buf = &buf;
          v55[3](&v55, this + 408);
          (v55[4])(&v55);
        }

        else
        {
          *(this + 51) = &unk_1F5CD6D60;
          *(this + 52) = this;
          p_buf = v9;
        }

        *(this + 54) = v8;
      }

      std::__function::__value_func<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::~__value_func[abi:nn200100](&buf);
      std::__function::__value_func<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::~__value_func[abi:nn200100](v65);
    }

    for (i = 0; i != 3; ++i)
    {
      re::TransformService::logRegisteredOpsIfNecessary(this, i, 0);
    }

    *(this + 440) = 1;
    v12 = a2[36];
    if (v12)
    {
      buf = 0uLL;
      v60 = 1;
      v62 = 0;
      v63 = 0;
      p_buf = 0;
      v64 = 0;
      v14 = a2[13];
      v15 = *(v14 + 43);
      if (v15)
      {
        v16 = *(v14 + 45);
        v17 = 8 * v15;
        do
        {
          v18 = *v16;
          if (*v16)
          {
            v19 = v18 + 1;
            re::TransformService::processEntityInScene(this, v18);
          }

          ++v16;
          v17 -= 8;
        }

        while (v17);
      }

      v20 = re::globalAllocators(v13)[2];
      v55 = &unk_1F5CD6C58;
      v56 = this;
      v57 = v20;
      v58 = &v55;
      v53 = v20;
      v54 = 0;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>(v52, &v55);
      v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(v12, v52, 0, 0);
      v23 = v22;
      v24 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(&buf);
      *v24 = v21;
      v24[1] = v23;
      v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(v52);
      v26 = re::globalAllocators(v25)[2];
      v51[0] = &unk_1F5CD6CB0;
      v51[1] = this;
      v51[3] = v26;
      v51[4] = v51;
      v49 = v26;
      v50 = 0;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(v48, v51);
      v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v12, v48, 0, 0);
      v29 = v28;
      v30 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(&buf);
      *v30 = v27;
      v30[1] = v29;
      v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v48);
      v32 = re::globalAllocators(v31)[2];
      v47[0] = &unk_1F5CD6D08;
      v47[1] = this;
      v47[3] = v32;
      v47[4] = v47;
      v45 = v32;
      v46 = 0;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(v44, v47);
      v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v12, v44, 0, 0);
      v35 = v34;
      v36 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(&buf);
      *v36 = v33;
      v36[1] = v35;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v44);
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 352, &v43, &buf);
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v47);
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v51);
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(&v55);
      re::BucketArray<RESubscriptionHandle,4ul>::deinit(&buf);
      if (buf && (v60 & 1) == 0)
      {
        (*(*buf + 40))();
      }
    }

    v37 = *(this + 56);
    if (v37)
    {
      v38 = 0;
      v39 = (*(this + 26) + 8);
      while (1)
      {
        v40 = *v39;
        v39 += 6;
        if (v40 < 0)
        {
          break;
        }

        if (v37 == ++v38)
        {
          LODWORD(v38) = *(this + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v38) = 0;
    }

    while (v38 != v37)
    {
      v41 = *(*(this + 26) + 24 * v38 + 16);
      (*(*v41 + 32))(v41, this, v43);
      v42 = *(this + 56);
      if (v42 <= v38 + 1)
      {
        v42 = v38 + 1;
      }

      while (v42 - 1 != v38)
      {
        LODWORD(v38) = v38 + 1;
        if ((*(*(this + 26) + 24 * v38 + 8) & 0x80000000) != 0)
        {
          goto LABEL_39;
        }
      }

      LODWORD(v38) = v42;
LABEL_39:
      ;
    }
  }
}

void re::TransformService::logRegisteredOpsIfNecessary(_BOOL8 a1, unsigned int a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 440) == a3)
  {
    v4 = (a1 + 40 * a2);
    v5 = *(v4 + 9);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 11);
      if (a3)
      {
        v8 = "MOD ";
      }

      else
      {
        v8 = "INIT";
      }

      v9 = 8 * v5;
      do
      {
        v10 = *(v7 + 8 * v6);
        v11 = *re::foundationCoreLogObjects(a1);
        a1 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          v12 = re::TransformService::logRegisteredOpsIfNecessary(re::TransformService::DescriptorIndex,BOOL)::descriptorLabel[a2];
          v13 = *(*(v10 + 72) + 32);
          v14 = "volatile";
          if (!*(v10 + 84))
          {
            v14 = "stable";
          }

          v15 = "modifier";
          if (*(v10 + 85) == 1)
          {
            v15 = "absolute";
          }

          *buf = 136316418;
          v17 = v8;
          v18 = 2080;
          v19 = v12;
          v20 = 1024;
          v21 = v6;
          v22 = 2080;
          v23 = v13;
          v24 = 2080;
          v25 = v14;
          v26 = 2080;
          v27 = v15;
          _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "%s TransformService %s op %u) %s [%s | %s]", buf, 0x3Au);
        }

        ++v6;
        v9 -= 8;
      }

      while (v9);
    }
  }
}

uint64_t re::TransformService::processEntityInScene(uint64_t this, const re::ecs2::Entity ***a2)
{
  if (a2)
  {
    v3 = this;
    this = re::TransformService::addToTransformCache(this, a2);
    v4 = *(v3 + 224);
    if (v4)
    {
      v5 = 0;
      v6 = (*(v3 + 208) + 8);
      while (1)
      {
        v7 = *v6;
        v6 += 6;
        if (v7 < 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          LODWORD(v5) = *(v3 + 224);
          break;
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    while (v5 != v4)
    {
      v8 = *(*(v3 + 208) + 24 * v5 + 16);
      this = re::ecs2::EntityComponentCollection::get((a2 + 6), v8[9]);
      if (this)
      {
        this = (*(*v8 + 6))(v8, v3, a2);
      }

      v9 = *(v3 + 224);
      if (v9 <= v5 + 1)
      {
        v9 = v5 + 1;
      }

      while (v9 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(v3 + 208) + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v9;
LABEL_17:
      ;
    }

    v10 = a2[43];
    if (v10)
    {
      v11 = a2[45];
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        this = re::TransformService::processEntityInScene(v3, v13);
        v12 -= 8;
      }

      while (v12);
    }
  }

  return this;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addInternal<re::ecs2::Scene * const&,re::BucketArray<RESubscriptionHandle,4ul>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v9) + 16;
  }
}

uint64_t re::TransformService::willRemoveSceneFromECSService(re::TransformService *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 352, &v15);
  if (result)
  {
    v4 = *(v15 + 36);
    if (v4)
    {
      v5 = result;
      v6 = *(result + 40);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](v5, i);
          re::EventBus::unsubscribe(v4, *v8, *(v8 + 8));
        }
      }
    }

    result = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 352, &v15);
  }

  v9 = *(this + 56);
  if (v9)
  {
    v10 = 0;
    v11 = (*(this + 26) + 8);
    while (1)
    {
      v12 = *v11;
      v11 += 6;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(this + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  while (v10 != v9)
  {
    v13 = *(*(this + 26) + 24 * v10 + 16);
    result = (*(*v13 + 40))(v13, this, v15);
    v14 = *(this + 56);
    if (v14 <= v10 + 1)
    {
      v14 = v10 + 1;
    }

    while (v14 - 1 != v10)
    {
      LODWORD(v10) = v10 + 1;
      if ((*(*(this + 26) + 24 * v10 + 8) & 0x80000000) != 0)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v10) = v14;
LABEL_20:
    ;
  }

  return result;
}

BOOL re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(a1, v5);
}

_anonymous_namespace_ *re::TransformService::transformServiceFromEntity(re::TransformService *this, const re::ecs2::Entity *a2)
{
  if (!this)
  {
    return 0;
  }

  do
  {
    v2 = this;
    this = *(this + 4);
  }

  while (this);
  v3 = *(v2 + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = (*(*v4 + 32))(v4, a2);

  return re::ServiceLocator::serviceOrNull<re::TransformService>(v5);
}

void re::TransformService::worldTransform(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (re::TransformService::isEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
  }

  if (re::TransformService::isEnabled(void)::isEnabled == 1)
  {
    if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::onceToken != -1)
    {
      dispatch_once(&re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::onceToken, &__block_literal_global_6);
    }

    if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::flushEveryTime == 1)
    {
      re::TransformService::flushDirtyComponentsQueue(a1, a2);
    }

    re::TransformService::calculateWorldTransform(a1, a2, a3, v11);
    v13 = xmmword_1E30474D0;
    v14 = 0u;
    v12 = 0u;
    re::decomposeScaleRotationTranslation<float>(v11, &v14, &v13, &v12);
    v8 = v14.i64[1];
    v9 = v13;
    v10 = v12;
    *a4 = v14.i64[0];
    *(a4 + 8) = v8;
    *(a4 + 16) = v9;
    *(a4 + 32) = v10;
  }

  else
  {

    re::ecs2::TransformComponent::worldSRT(a2, (a3 != 2), a4);
  }
}

void re::TransformService::flushDirtyComponentsQueue(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    do
    {
      v2 = a2;
      a2 = *(a2 + 32);
    }

    while (a2);
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 56);
      if (v4)
      {
        (*(*v4 + 248))();
      }
    }
  }
}

double re::TransformService::calculateWorldTransform@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (!a2)
  {
    *a4 = xmmword_1E3047670;
    a4[1] = xmmword_1E3047680;
    result = 0.0;
    a4[2] = xmmword_1E30476A0;
    a4[3] = xmmword_1E30474D0;
    return result;
  }

  if (*(a1 + 432))
  {
    std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(a1 + 408, a2, 1, 0);
  }

  v24 = xmmword_1E3047670;
  v25 = xmmword_1E3047680;
  v26 = xmmword_1E30476A0;
  v27 = xmmword_1E30474D0;
  v8 = re::TransformService::transformCache(a1, a2, a3, 0);
  if (v8)
  {
    if (*(v8 + 88))
    {
      v10 = *(v8 + 47) == 0;
    }

    else
    {
      v10 = 0;
    }

    if (*(v8 + 46))
    {
      v12 = 0;
    }

    else
    {
      v12 = v8[8];
      if (v12 && !*(v8 + 18))
      {
        re::TransformService::calculateWorldTransform(&v24, a1, v12, a3);
        v13 = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  v13 = 1;
LABEL_13:
  re::TransformService::calculateTransformForCache(v23, a1, a2, a2, v12, &v24, v13, a3, v9);
  if (*(a1 + 432))
  {
    re::operator*<float>(&v24, v23, v29);
    v22 = "calculated";
    if (v10)
    {
      v22 = "cached";
    }

    *&v28[0] = v22;
    *(&v28[0] + 1) = v29;
    std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(a1 + 408, a2, 2, v28);
  }

  v14 = 0;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v28[0] = v23[0];
  v28[1] = v23[1];
  v28[2] = v23[2];
  v28[3] = v23[3];
  do
  {
    v29[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(v28[v14])), v16, *&v28[v14], 1), v17, v28[v14], 2), v18, v28[v14], 3);
    ++v14;
  }

  while (v14 != 4);
  result = *v29;
  v19 = v29[1];
  v20 = v29[2];
  v21 = v29[3];
  *a4 = v29[0];
  a4[1] = v19;
  a4[2] = v20;
  a4[3] = v21;
  return result;
}

double re::TransformService::worldMatrix@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, float32x4_t *a4@<X8>)
{
  if (re::TransformService::isEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
  }

  if (re::TransformService::isEnabled(void)::isEnabled == 1)
  {
    if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::onceToken != -1)
    {
      dispatch_once(&re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::onceToken, &__block_literal_global_6);
    }

    if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::flushEveryTime == 1)
    {
      re::TransformService::flushDirtyComponentsQueue(a1, a2);
    }

    return re::TransformService::calculateWorldTransform(a1, a2, a3, a4);
  }

  else
  {

    *&result = re::ecs2::TransformComponent::worldMatrix4x4F(a2, (a3 != 2), a4).n128_u64[0];
  }

  return result;
}

double re::TransformService::parentWorldMatrix@<D0>(uint64_t a1@<X0>, re::ecs2::TransformComponent *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (re::TransformService::isEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::TransformService::isEnabled(void)::onceToken, &__block_literal_global_14);
  }

  if (re::TransformService::isEnabled(void)::isEnabled == 1)
  {
    if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::onceToken != -1)
    {
      dispatch_once(&re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::onceToken, &__block_literal_global_6);
    }

    if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::flushEveryTime == 1)
    {
      re::TransformService::flushDirtyComponentsQueue(a1, a2);
    }

    if (a2 && (v8 = *(a2 + 4)) != 0)
    {
      if ((*(v8 + 304) & 0x80) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(a2 + 4);
      }
    }

    else
    {
      v9 = 0;
    }

    return re::TransformService::calculateWorldTransform(a1, v9, a3, a4);
  }

  else
  {

    return re::ecs2::TransformComponent::parentWorldMatrix4x4F(a2, (a3 != 2), a4);
  }
}

double re::TransformService::worldMatrixForRendering@<D0>(re::TransformService *this@<X0>, const re::ecs2::Entity *a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  if (!a2)
  {
    goto LABEL_17;
  }

  if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::onceToken != -1)
  {
    dispatch_once(&re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::onceToken, &__block_literal_global_6);
  }

  if (re::TransformService::flushDirtyComponentsQueueOnEveryQuery(void)::flushEveryTime == 1)
  {
    v8 = a2;
    do
    {
      v9 = v8;
      v8 = *(v8 + 4);
    }

    while (v8);
    v10 = *(v9 + 3);
    if (v10)
    {
      v11 = *(v10 + 56);
      if (v11)
      {
        (*(*v11 + 248))(v11);
      }
    }
  }

  if (!*(this + 50))
  {
    goto LABEL_17;
  }

  if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
  }

  if (re::ecs2::gIsBillboardEnabled == 1)
  {
    v12 = *(**(this + 50) + 56);

    v12();
  }

  else
  {
LABEL_17:

    return re::TransformService::worldMatrix(this, a2, a3 ^ 1u, a4);
  }

  return result;
}

void re::TransformService::registerOp(unsigned int *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = *a2;
  v7 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v8 = (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
  v9 = a1[54];
  if (v9)
  {
    v10 = v8 % v9;
    v11 = *(*(a1 + 25) + 4 * (v8 % v9));
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(a1 + 26);
      if (*(v12 + 24 * v11 + 16) == v6)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v11) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v12 + 24 * v11 + 16) == v6)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  v13 = a1[57];
  if (v13 == 0x7FFFFFFF)
  {
    v13 = a1[56];
    v14 = v13;
    if (v13 == v9)
    {
      re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::setCapacity((a1 + 48), 2 * a1[55]);
      LODWORD(v10) = v8 % v5[54];
      v14 = v5[56];
      v6 = *a2;
    }

    v5[56] = v14 + 1;
    v15 = *(v5 + 26);
    v16 = *(v15 + 24 * v13 + 8);
  }

  else
  {
    v15 = *(a1 + 26);
    v16 = *(v15 + 24 * v13 + 8);
    a1[57] = v16 & 0x7FFFFFFF;
  }

  *(v15 + 24 * v13 + 8) = v16 | 0x80000000;
  v17 = *(v5 + 25);
  *(*(v5 + 26) + 24 * v13 + 8) = *(*(v5 + 26) + 24 * v13 + 8) & 0x80000000 | *(v17 + 4 * v10);
  *(*(v5 + 26) + 24 * v13) = v8;
  *(*(v5 + 26) + 24 * v13 + 16) = v6;
  if (v6)
  {
    a1 = (v6 + 8);
    v17 = *(v5 + 25);
  }

  *(v17 + 4 * v10) = v13;
  ++v5[55];
  ++v5[58];
LABEL_16:
  v18 = 0;
  v19 = 0;
  for (i = 44; i != 47; ++i)
  {
    if (((1 << v18) & a3) != 0)
    {
      v21 = &v5[v19];
      v22 = *&v5[v19 + 16];
      v23 = *&v5[v19 + 18];
      if (v23 >= v22)
      {
        v24 = v23 + 1;
        if (v22 < v23 + 1)
        {
          if (*(v21 + 7))
          {
            v25 = 2 * v22;
            v26 = v22 == 0;
            v27 = 8;
            if (!v26)
            {
              v27 = v25;
            }

            if (v27 <= v24)
            {
              v28 = v24;
            }

            else
            {
              v28 = v27;
            }

            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v21 + 7, v28);
          }

          else
          {
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v21 + 7, v24);
            ++v5[v19 + 20];
          }
        }

        v23 = *(v21 + 9);
      }

      v29 = *a2;
      *(*(v21 + 11) + 8 * v23) = *a2;
      v30 = (v29 + 8);
      v31 = *a2;
      ++*(v21 + 9);
      ++v21[20];
      *(v31 + 80) |= 1 << v18;
      re::TransformService::sortAndProcessArray(v5, (v21 + 14), &v5[i]);
      re::TransformService::logRegisteredOpsIfNecessary(v5, v18, 1);
    }

    v19 += 10;
    ++v18;
  }

  v32 = v5[96];
  if (v32)
  {
    v33 = 0;
    v34 = *(v5 + 46);
    while (1)
    {
      v35 = *v34;
      v34 += 20;
      if (v35 < 0)
      {
        break;
      }

      if (v32 == ++v33)
      {
        LODWORD(v33) = v5[96];
        break;
      }
    }
  }

  else
  {
    LODWORD(v33) = 0;
  }

  while (v33 != v32)
  {
    (*(**a2 + 32))(*a2, v5, *(*(v5 + 46) + 80 * v33 + 8));
    v36 = v5[96];
    if (v36 <= v33 + 1)
    {
      v36 = v33 + 1;
    }

    while (v36 - 1 != v33)
    {
      LODWORD(v33) = v33 + 1;
      if ((*(*(v5 + 46) + 80 * v33) & 0x80000000) != 0)
      {
        goto LABEL_44;
      }
    }

    LODWORD(v33) = v36;
LABEL_44:
    ;
  }
}

unint64_t re::TransformService::sortAndProcessArray(re::TransformService *a1, uint64_t a2, unsigned int *a3)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v16 = a1;
  v7 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,false>(v5, &v5[v6], &v16, v8, 1);
  *a3 = 0;
  result = *(a2 + 16);
  if (result)
  {
    v10 = 0;
    LODWORD(v11) = 0;
    v12 = *(a2 + 32);
    while (*(*(v12 + 8 * v10) + 85) == 1)
    {
      LODWORD(v11) = v11 + 1;
      v10 = v11;
      if (result <= v11)
      {
        return result;
      }
    }

    *a3 = v11;
    while (1)
    {
      v11 = (v11 + 1);
      if (result <= v11)
      {
        break;
      }

      if (*(*(v12 + 8 * v11) + 85) == 1)
      {
        re::DynamicArray<re::SharedPtr<re::TransformOp>>::operator[](result, *(a2 + 32), v11);
        re::DynamicArray<re::SharedPtr<re::TransformOp>>::operator[](*(a2 + 16), *(a2 + 32), *a3);
        v13 = *(*(*re::DynamicArray<re::SharedPtr<re::TransformOp>>::operator[](*(a2 + 16), *(a2 + 32), v11) + 72) + 32);
        v14 = re::DynamicArray<re::SharedPtr<re::TransformOp>>::operator[](*(a2 + 16), *(a2 + 32), *a3);
        re::internal::assertLog(8, v15, "assertion failure: '%s' (%s:line %i) Found an absolute TransformOp (%s) in index %u after first modifier TransformOp (%s) in index %u", "!ops[i]->isAbsolute()", "sortAndProcessArray", 694, v13, v11, *(*(*v14 + 72) + 32), *a3);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }
  }

  return result;
}

void re::TransformService::setExecutionOrder(re::TransformService *a1, uint64_t **a2)
{
  v9 = 0;
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    ++v9;
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, (v5 + 24), &v9);
  }

  v6 = 0;
  v7 = a1 + 56;
  v8 = (a1 + 176);
  do
  {
    re::TransformService::sortAndProcessArray(a1, v7, v8);
    re::TransformService::logRegisteredOpsIfNecessary(a1, v6++, 1);
    ++v8;
    v7 += 40;
  }

  while (v6 != 3);
}

void re::TransformService::notifyOpAdded(re::TransformService *this, const re::ecs2::Entity *a2, const re::TransformOp *a3)
{
  if (*(a3 + 80))
  {
    v6 = re::TransformService::transformCache(this, a2, 0, 0);
    if (v6)
    {
      v7 = v6;
      v8 = v6[45];
      v9 = v6[46];
      v10 = *(a3 + 84);
      v11 = v6[45];
      if (*(a3 + 84))
      {
        v11 = v8 + 1;
        v6[45] = v8 + 1;
      }

      v12 = v9;
      if (*(a3 + 85) == 1)
      {
        v12 = v9 + 1;
        v6[46] = v9 + 1;
      }

      if (v10 == 2)
      {
        ++v6[47];
      }

      if (*(this + 54))
      {
        v6 = std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(this + 408, a2, 0, 0);
      }

      v13 = a2;
      do
      {
        v14 = v13;
        v13 = *(v13 + 4);
      }

      while (v13);
      v15 = *(v14 + 3);
      re::TransformService::markCacheDirty(v6, v7, 0, v15);
      if (!v8 || !v11)
      {
        v22 = 0;
        v23 = 2;
        if (!v11 || v8)
        {
          v17 = 0;
          if (!v12 || v9)
          {
LABEL_22:
            v18 = *(a2 + 43);
            if (v18)
            {
              v19 = *(a2 + 45);
              v20 = 8 * v18;
              do
              {
                v21 = *v19++;
                re::TransformService::applyDirtinessToEntity(this, v21, 0, v15, v17);
                v20 -= 8;
              }

              while (v20);
            }

            return;
          }

          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

        v22 = a2;
        v23 = v16;
        v17 = &v22;
        goto LABEL_22;
      }
    }
  }
}

void *re::TransformService::transformCache(uint64_t a1, unint64_t *a2, int a3, char a4)
{
  for (i = a3 == 0; ; i = 1)
  {
    if (re::TransformService::transformCache(re::ecs2::Entity const*,re::TransformService::DescriptorIndex,BOOL)::onceToken != -1)
    {
      dispatch_once(&re::TransformService::transformCache(re::ecs2::Entity const*,re::TransformService::DescriptorIndex,BOOL)::onceToken, &__block_literal_global_20);
    }

    if (((i && a2 != 0) & re::TransformService::transformCache(re::ecs2::Entity const*,re::TransformService::DescriptorIndex,BOOL)::isEnabled) != 1)
    {
      break;
    }

    result = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 304, a2[39]);
    if (result)
    {
      if (*(a1 + 256) <= WORD1(*result))
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = (*(*(a1 + 272) + 16 * WORD1(*result)) + 96 * *result);
    }

    if (result != 0 || (a4 & 1) == 0)
    {
      return result;
    }

    re::TransformService::addToTransformCache(a1, a2);
    a4 = 0;
  }

  return 0;
}

uint64_t std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = a3;
  v7 = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, a2, &v8, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return re::TransformService::markCacheDirty(v6);
}

void re::TransformService::markCacheDirty(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a2 + 88) = 0;
  if (a4)
  {
    v4 = *(a2 + 80);
    if (v4)
    {
      if ((v4[304] & 1) != 0 && !a3 && (v4[387] & 1) == 0)
      {
        v5 = *(a4 + 288);
        v6 = re::EventBus::getTypeId<re::RenderingWorldTransformCacheDirtyEvent>();
        re::EventBus::publish(v5, v4, v6, &v7, 1uLL, 0);
      }
    }
  }
}

void re::TransformService::notifyOpRemove(re::TransformService *this, const re::ecs2::Entity *a2, const re::TransformOp *a3)
{
  if (*(a2 + 387) & 1) == 0 && (*(a3 + 80))
  {
    v6 = re::TransformService::transformCache(this, a2, 0, 0);
    if (v6)
    {
      v7 = v6;
      v8 = v6[45];
      v9 = v6[46];
      v10 = *(a3 + 84);
      v11 = v6[45];
      if (*(a3 + 84))
      {
        v11 = v8 - 1;
        v6[45] = v8 - 1;
      }

      v12 = v9;
      if (*(a3 + 85) == 1)
      {
        v12 = v9 - 1;
        v6[46] = v9 - 1;
      }

      if (v10 == 2)
      {
        --v6[47];
      }

      if (*(this + 54))
      {
        v6 = std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(this + 408, a2, 0, 0);
      }

      v13 = a2;
      do
      {
        v14 = v13;
        v13 = *(v13 + 4);
      }

      while (v13);
      v15 = *(v14 + 3);
      re::TransformService::markCacheDirty(v6, v7, 0, v15);
      if (!v8 || !v11)
      {
        v23 = *(v7 + 64);
        if (v11)
        {
LABEL_17:
          v16 = 0;
          goto LABEL_30;
        }

        if (v12)
        {
          v17 = v8 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          if (v8 | v9)
          {
            v18 = v12 == 0;
          }

          else
          {
            v18 = 0;
          }

          if (!v18)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *&v23 = a2;
          DWORD2(v23) = 1;
        }

        v16 = &v23;
LABEL_30:
        v19 = *(a2 + 43);
        if (v19)
        {
          v20 = *(a2 + 45);
          v21 = 8 * v19;
          do
          {
            v22 = *v20++;
            re::TransformService::applyDirtinessToEntity(this, v22, 0, v15, v16);
            v21 -= 8;
          }

          while (v21);
        }
      }
    }
  }
}

void re::TransformService::notifyOpDirty(re::TransformService *this, const re::ecs2::Entity *a2, const re::TransformOp *a3)
{
  if (*(a3 + 80))
  {
    v5 = re::TransformService::transformCache(this, a2, 0, 0);
    if (v5)
    {
      v6 = v5;
      if (*(this + 54))
      {
        v5 = std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(this + 408, a2, 0, 0);
      }

      if (*(v6 + 88))
      {
        if (!*(v6 + 94))
        {
          v7 = a2;
          do
          {
            v8 = v7;
            v7 = *(v7 + 4);
          }

          while (v7);
          v9 = *(v8 + 3);
          re::TransformService::markCacheDirty(v5, v6, 0, v9);
          if (!*(v6 + 90))
          {
            v10 = *(a2 + 43);
            if (v10)
            {
              v11 = *(a2 + 45);
              v12 = 8 * v10;
              do
              {
                v13 = *v11++;
                re::TransformService::applyDirtinessToEntity(this, v13, 0, v9, 0);
                v12 -= 8;
              }

              while (v12);
            }
          }
        }
      }
    }
  }
}

__n128 re::TransformService::determineKeyAncestor(re::TransformService *this, const re::ecs2::Entity *a2, uint64_t a3)
{
  if (!a3 || (*(a3 + 304) & 0x80) != 0 || (v5 = re::TransformService::transformCache(a2, a3, 0, 0)) == 0)
  {
    *this = 0;
    v7 = 2;
LABEL_7:
    *(this + 2) = v7;
    return result;
  }

  if (v5[5].n128_u16[5])
  {
    *this = a3;
    *(this + 2) = 0;
    return result;
  }

  if (v5[5].n128_u16[6])
  {
    *this = a3;
    v7 = 1;
    goto LABEL_7;
  }

  result = v5[4];
  *this = result;
  return result;
}

void *re::TransformService::applyDirtinessToEntity(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = re::TransformService::applyDirtiness(a1, a2, a3, a4, a5);
  if (result)
  {
    v11 = a2[43];
    if (v11)
    {
      v12 = a2[45];
      v13 = 8 * v11;
      do
      {
        v14 = *v12++;
        result = re::TransformService::applyDirtinessToEntity(a1, v14, a3, a4, a5);
        v13 -= 8;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t re::TransformService::addToTransformCache(uint64_t this, const re::ecs2::Entity *a2)
{
  v3 = this;
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 39);
  v5 = v4 ^ (v4 >> 30);
  if (!*(this + 304) || (v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v5) ^ ((0xBF58476D1CE4E5B9 * v5) >> 27)), v7 = *(*(this + 312) + 4 * ((v6 ^ (v6 >> 31)) % *(this + 328))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    if (*(this + 432))
    {
      std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(this + 408, a2, 5, 0);
    }

    v9 = *(v3 + 296);
    if ((v9 + 1) >> 24)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 + 1;
    }

    *(v3 + 296) = v10;
    v11 = *(v3 + 292);
    v12 = *(v3 + 294);
    if (v11 == 0xFFFF && v12 == 0xFFFF)
    {
      if (*(v3 + 288) >= *(v3 + 284))
      {
        re::DataArray<re::TransformCache>::allocBlock((v3 + 240));
      }

      v13 = *(v3 + 256);
      v12 = (v13 - 1);
      if (v13)
      {
        v11 = *(v3 + 288);
        if (v11 < 0x10000)
        {
          v14 = (*(v3 + 272) + 16 * v12);
          *(v3 + 288) = v11 + 1;
          *(v14[1] + 4 * v11) = *(v3 + 296);
          v15 = *v14 + 96 * v11;
          goto LABEL_20;
        }

LABEL_25:
        re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v11, v19, v20);
        _os_crash();
        __break(1u);
      }
    }

    else
    {
      if (*(v3 + 256) > v12)
      {
        v16 = (*(v3 + 272) + 16 * v12);
        *(v16[1] + 4 * v11) = v10;
        v15 = *v16 + 96 * v11;
        *(v3 + 292) = *v15;
LABEL_20:
        ++*(v3 + 280);
        *v15 = xmmword_1E3047670;
        *(v15 + 16) = xmmword_1E3047680;
        *(v15 + 32) = xmmword_1E30476A0;
        *(v15 + 48) = xmmword_1E30474D0;
        *(v15 + 64) = 0;
        *(v15 + 72) = 2;
        *(v15 + 80) = a2;
        *(v15 + 88) = 0;
        *(v15 + 90) = 0;
        *(v15 + 94) = 0;
        v17 = *(v3 + 296);
        v21 = 0uLL;
        *&v22 = 0;
        v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v5) ^ ((0xBF58476D1CE4E5B9 * v5) >> 27));
        this = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v21, v3 + 304, v4, v18 ^ (v18 >> 31));
        if (HIDWORD(v21) == 0x7FFFFFFF)
        {
          this = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v3 + 304, DWORD2(v21), v21);
          *(this + 8) = v4;
          *(this + 16) = v11 + (v12 << 16) + ((v17 & 0xFFFFFF) << 32);
          ++*(v3 + 344);
        }

        return this;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v19 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v20) = 136315906;
    *(&v20 + 4) = "operator[]";
    WORD6(v20) = 1024;
    HIWORD(v20) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  v8 = *(this + 320);
  while (*(v8 + 32 * v7 + 8) != v4)
  {
    v7 = *(v8 + 32 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }
  }

  return this;
}

void *re::TransformService::applyDirtiness(uint64_t a1, unint64_t *a2, int a3, uint64_t a4, uint64_t *a5)
{
  if (*(a1 + 432))
  {
    std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(a1 + 408, a2, 0, 0);
  }

  result = re::TransformService::transformCache(a1, a2, a3, 1);
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (!*(result + 88) || *(result + 47))
  {
    if (!a5)
    {
      return 0;
    }

    v12 = *(a5 + 2);
    v13 = *a5;
    if (v12 == *(result + 18) && v13 == result[8])
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (a5)
  {
    v13 = *a5;
    v12 = *(a5 + 2);
LABEL_12:
    result[8] = v13;
    *(result + 18) = v12;
  }

  if (*(result + 46))
  {
    return 0;
  }

  re::TransformService::markCacheDirty(result, result, a3, a4);
  return (*(v11 + 45) == 0);
}

uint64_t re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

uint64_t re::DataArray<re::TransformCache>::destroy(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (WORD1(a2) < v2)
  {
    v3 = (v2 - 1) == WORD1(a2) ? *(result + 48) : *(result + 44);
    if (a2 < v3)
    {
      v4 = (*(result + 32) + 16 * WORD1(a2));
      v5 = v4[1];
      v6 = *(v5 + 4 * a2);
      if (v6)
      {
        v7 = v6 == (HIDWORD(a2) & 0xFFFFFF);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = *v4;
        if (v8)
        {
          v9 = v8 + 96 * a2;
          *(v9 + 80) = 0;
          *(v9 + 64) = 0;
          *(v5 + 4 * a2) = 0;
          *v9 = *(result + 52);
          *(result + 52) = a2;
          --*(result + 40);
        }
      }
    }
  }

  return result;
}

uint64_t re::TransformService::opExecutionOrder(re::TransformService *this, const re::TransformOp *a2)
{
  v4 = *(a2 + 9);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v4 + 24) >> 31) ^ (*(v4 + 24) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v4 + 24) >> 31) ^ (*(v4 + 24) >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, (v4 + 24), v5 ^ (v5 >> 31), v8);
  if (v9 != 0x7FFFFFFF)
  {
    return *(*(this + 3) + 32 * v9 + 24);
  }

  re::internal::assertLog(5, v6, "assertion failure: '%s' (%s:line %i) Did not find execution order for component type %s", "orderPtr", "opExecutionOrder", 664, *(*(a2 + 9) + 32));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::DynamicArray<re::SharedPtr<re::TransformOp>>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 8 * a3;
}

void ___ZN2re16TransformService14transformCacheEPKNS_4ecs26EntityENS0_15DescriptorIndexEb_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("EnableTransformServiceCache", a2, v5);
  if (v5[0] == 1)
  {
    re::TransformService::transformCache(re::ecs2::Entity const*,re::TransformService::DescriptorIndex,BOOL)::isEnabled = v5[1];
  }

  v3 = *re::foundationCoreLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::TransformService::transformCache(re::ecs2::Entity const*,re::TransformService::DescriptorIndex,BOOL)::isEnabled)
    {
      v4 = "TRUE";
    }

    else
    {
      v4 = "FALSE";
    }

    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "EnableTransformServiceCache is %s", buf, 0xCu);
  }
}

float32x4_t re::TransformService::calculateTransformForCache(float32x4_t *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t a6, int a7, unsigned int a8, float32x4_t result)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a4 || a4 == a5 && (a7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v17 = re::TransformService::transformCache(a2, a4, a8, 0);
  if (v17)
  {
    if (a4 != a3 && v17[5].i16[5])
    {
LABEL_7:
      *a1 = xmmword_1E3047670;
      a1[1] = xmmword_1E3047680;
      result.i64[0] = 0;
      a1[2] = xmmword_1E30476A0;
      a1[3] = xmmword_1E30474D0;
      return result;
    }

    if (v17[5].i8[8] && !v17[5].i16[7])
    {
      result = *v17;
      v55 = v17[1];
      v56 = v17[3];
      a1[2] = v17[2];
      a1[3] = v56;
      *a1 = result;
      a1[1] = v55;
      return result;
    }
  }

  v57 = a3;
  v58 = a7;
  v59 = v17;
  v60 = a6;
  *a1 = xmmword_1E3047670;
  a1[1] = xmmword_1E3047680;
  a1[2] = xmmword_1E30476A0;
  a1[3] = xmmword_1E30474D0;
  LODWORD(a6) = 40;
  v18 = *(a2 + 4 * a8 + 176);
  if (*(a2 + 432))
  {
LABEL_46:
    std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(a2 + 408, a4, 3, 0);
  }

  a6 = a2 + a8 * a6;
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      while (1)
      {
        v21 = *(a6 + 72);
        if (v21 <= v19)
        {
          *&v65[0] = 0;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v66 = 0u;
          a1 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v71 = 136315906;
          *&v71[4] = "operator[]";
          *&v71[12] = 1024;
          *&v71[14] = 797;
          *&v71[18] = 2048;
          *&v71[20] = v19;
          *&v71[28] = 2048;
          *&v71[30] = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_46;
        }

        v22 = *(*(a6 + 88) + 8 * v19);
        v23 = re::ecs2::EntityComponentCollection::get((a4 + 6), v22[9]);
        if (!v23)
        {
          break;
        }

        *v71 = xmmword_1E3047670;
        *&v71[16] = xmmword_1E3047680;
        *&v71[32] = xmmword_1E30476A0;
        v72 = xmmword_1E30474D0;
        (*(*v22 + 7))(&v66, v22, a4, v23, v71, a1);
        v24 = v67;
        *a1 = v66;
        a1[1] = v24;
        v25 = v69;
        a1[2] = v68;
        a1[3] = v25;
        v20 = 1;
        if (v18 - 1 == v19++)
        {
          goto LABEL_32;
        }
      }

      ++v19;
    }

    while (v18 != v19);
    if (v20)
    {
      goto LABEL_32;
    }
  }

  v27 = a4[4];
  if (v27)
  {
    v28 = *(v27 + 304);
    v29 = (v28 & 0x80) != 0 ? 0 : a4[4];
    v30 = v29 == a5 ? v58 : 1;
    if ((v28 & 0x80) == 0 && v30)
    {
      re::TransformService::calculateTransformForCache(&v66, a2, v57);
      v31 = v67;
      *a1 = v66;
      a1[1] = v31;
      v32 = v69;
      a1[2] = v68;
      a1[3] = v32;
    }
  }

LABEL_32:
  v33 = 0;
  v34 = *v60;
  v35 = v60[1];
  v36 = v60[2];
  v37 = v60[3];
  result = *a1;
  v38 = a1[1];
  v39 = a1[2];
  v40 = a1[3];
  *v71 = *a1;
  *&v71[16] = v38;
  *&v71[32] = v39;
  v72 = v40;
  do
  {
    *(&v66 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*&v71[v33])), v35, *&v71[v33], 1), v36, *&v71[v33], 2), v37, *&v71[v33], 3);
    v33 += 16;
  }

  while (v33 != 64);
  v65[0] = v66;
  v65[1] = v67;
  v65[2] = v68;
  v65[3] = v69;
  v42 = xmmword_1E30476A0;
  v41 = xmmword_1E3047670;
  v44 = xmmword_1E30474D0;
  v43 = xmmword_1E3047680;
  v61 = xmmword_1E3047670;
  v62 = xmmword_1E3047680;
  v63 = xmmword_1E30476A0;
  v64 = xmmword_1E30474D0;
  if (*(a6 + 72) > v18)
  {
    v45 = v18 + 1;
    do
    {
      v46 = *(*(a6 + 88) + 8 * v18);
      v47 = re::ecs2::EntityComponentCollection::get((a4 + 6), v46[9]);
      if (v47)
      {
        (*(*v46 + 7))(&v66, v46, a4, v47, v65, &v61);
        v61 = v66;
        v62 = v67;
        v63 = v68;
        v64 = v69;
      }

      v18 = v45;
    }

    while (*(a6 + 72) > v45++);
    result = *a1;
    v38 = a1[1];
    v39 = a1[2];
    v40 = a1[3];
    v41 = v61;
    v43 = v62;
    v42 = v63;
    v44 = v64;
  }

  v49 = 0;
  *v71 = v41;
  *&v71[16] = v43;
  *&v71[32] = v42;
  v72 = v44;
  do
  {
    *(&v66 + v49) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result, COERCE_FLOAT(*&v71[v49])), v38, *&v71[v49], 1), v39, *&v71[v49], 2), v40, *&v71[v49], 3);
    v49 += 16;
  }

  while (v49 != 64);
  result.i64[0] = v66;
  v50 = v67;
  v51 = v68;
  v52 = v69;
  *a1 = v66;
  a1[1] = v50;
  a1[2] = v51;
  a1[3] = v52;
  if (v59)
  {
    result = *a1;
    v53 = a1[1];
    v54 = a1[3];
    v59[2] = a1[2];
    v59[3] = v54;
    *v59 = result;
    v59[1] = v53;
    v59[5].i8[8] = 1;
  }

  return result;
}

void *re::allocInfo_TransformService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_163, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_163))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0628, "TransformService");
    __cxa_guard_release(&_MergedGlobals_163);
  }

  return &unk_1EE1A0628;
}

void re::initInfo_TransformService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x686EA10FCF058B92;
  v6[1] = "TransformService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1C000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_TransformService(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::TransformService>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TransformService>;
  *(this + 13) = re::internal::defaultConstructV2<re::TransformService>;
  *(this + 14) = re::internal::defaultDestructV2<re::TransformService>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_1,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator()(uint64_t a1, const re::ecs2::Entity **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  re::TransformService::addToTransformCache(v3, *a2);
  v4 = re::TransformService::transformCache(v3, v2, 0, 0);
  if (v4)
  {
    v5 = v4;
    re::TransformService::determineKeyAncestor(&v7, v3, *(v2 + 4));
    v5[8] = v7;
    *(v5 + 18) = v8;
  }

  return 0;
}

void *re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_1,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6C58;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_1,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6C58;
  a2[1] = v2;
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_2,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(*a2 + 312);
  v5 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v3 + 304, v4);
  if (v5)
  {
    v6 = v5;
    if (*(v3 + 432))
    {
      std::function<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(v3 + 408, v2, 6, 0);
    }

    re::DataArray<re::TransformCache>::destroy(v3 + 240, *v6);
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v13, v3 + 304, v4, v7 ^ (v7 >> 31));
    v8 = v15;
    if (v15 != 0x7FFFFFFF)
    {
      v9 = *(v3 + 320);
      v10 = (v9 + 32 * v15);
      v11 = *v10 & 0x7FFFFFFF;
      if (v16 == 0x7FFFFFFF)
      {
        *(*(v3 + 312) + 4 * v14) = v11;
      }

      else
      {
        *(v9 + 32 * v16) = *(v9 + 32 * v16) & 0x80000000 | v11;
      }

      *v10 = *(v3 + 340);
      *(v3 + 340) = v8;
      --*(v3 + 332);
      ++*(v3 + 344);
    }
  }

  return 0;
}

void *re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_2,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6CB0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_2,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6CB0;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_3,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(uint64_t a1, unint64_t **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (re::TransformService::transformCache(v3, *a2, 0, 0))
  {
    re::TransformService::determineKeyAncestor(v7, v3, v2[4]);
    v4 = v2;
    do
    {
      v5 = v4;
      v4 = v4[4];
    }

    while (v4);
    re::TransformService::applyDirtinessToEntity(v3, v2, 0, v5[3], v7);
  }

  return 0;
}

void *re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_3,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6D08;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_3,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6D08;
  a2[1] = v2;
  return a2;
}

double re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (*(result + 16) + 80 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = (v2 + 4);
    re::BucketArray<RESubscriptionHandle,4ul>::deinit(v3);

    return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::~__value_func[abi:nn200100](uint64_t a1)
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

_anonymous_namespace_ *re::DataArray<re::TransformCache>::allocBlock(void *a1)
{
  v3 = 96 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

void re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 80 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_9, 4 * v10);
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

uint64_t std::__function::__func<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_0,std::allocator<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_0>,void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CD6D60;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_0,std::allocator<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_0>,void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::operator()(_BOOL8 a1, uint64_t a2, int *a3, void **a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *a4;
  if (*(a2 + 296))
  {
    v7 = *(a2 + 296);
  }

  else
  {
    v7 = "Unknown";
  }

  if (v5 > 2)
  {
    if (v5 <= 4)
    {
      if (v5 != 3)
      {
        v8 = v6[1];
        v9 = *re::foundationCoreLogObjects(a1);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v10 = *(a2 + 312);
        v11 = *(*v6 + 32);
        v12 = *v8;
        v13 = v8[1];
        v14 = v8[2];
        v15 = v8[3];
        v16 = v8[4];
        v17 = v8[5];
        v18 = v8[6];
        v19 = v8[7];
        v20 = v8[8];
        v21 = v8[9];
        v22 = v8[10];
        v23 = v8[11];
        v24 = v8[12];
        v25 = v8[13];
        v26 = v8[14];
        v27 = v8[15];
        v57 = 134222850;
        v58 = a2;
        v59 = 2048;
        v60 = v10;
        v61 = 2080;
        v62 = v7;
        v63 = 2080;
        v64 = v11;
        v65 = 2048;
        v66 = v12;
        v67 = 2048;
        v68 = v13;
        v69 = 2048;
        v70 = v14;
        v71 = 2048;
        v72 = v15;
        v73 = 2048;
        v74 = v16;
        v75 = 2048;
        v76 = v17;
        v77 = 2048;
        v78 = v18;
        v79 = 2048;
        v80 = v19;
        v81 = 2048;
        v82 = v20;
        v83 = 2048;
        v84 = v21;
        v85 = 2048;
        v86 = v22;
        v87 = 2048;
        v88 = v23;
        v89 = 2048;
        v90 = v24;
        v91 = 2048;
        v92 = v25;
        v93 = 2048;
        v94 = v26;
        v95 = 2048;
        v96 = v27;
        v28 = "TransformServiceVisitation: %p %llu (%s) op calculation (%s) result: [%f %f %f %f | %f %f %f %f | %f %f %f %f | %f %f %f %f]";
        goto LABEL_14;
      }

      v50 = *re::foundationCoreLogObjects(a1);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v52 = *(a2 + 312);
      v57 = 134218498;
      v58 = a2;
      v59 = 2048;
      v60 = v52;
      v61 = 2080;
      v62 = v7;
      v28 = "TransformServiceVisitation: %p %llu (%s) apply ops";
LABEL_28:
      v48 = v50;
      v49 = 32;
      goto LABEL_29;
    }

    if (v5 == 5)
    {
      v53 = *re::foundationCoreLogObjects(a1);
      a1 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v54 = *(a2 + 312);
        v57 = 134218498;
        v58 = a2;
        v59 = 2048;
        v60 = v54;
        v61 = 2080;
        v62 = v7;
        _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "TransformServiceVisitation: %p %llu (%s) added to cache", &v57, 0x20u);
      }
    }

    else if (v5 != 6)
    {
      return;
    }

    v50 = *re::foundationCoreLogObjects(a1);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v55 = *(a2 + 312);
    v57 = 134218498;
    v58 = a2;
    v59 = 2048;
    v60 = v55;
    v61 = 2080;
    v62 = v7;
    v28 = "TransformServiceVisitation: %p %llu (%s) removed from cache";
    goto LABEL_28;
  }

  switch(v5)
  {
    case 0:
      v50 = *re::foundationCoreLogObjects(a1);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v51 = *(a2 + 312);
      v57 = 134218498;
      v58 = a2;
      v59 = 2048;
      v60 = v51;
      v61 = 2080;
      v62 = v7;
      v28 = "TransformServiceVisitation: %p %llu (%s) invalidate";
      goto LABEL_28;
    case 1:
      v50 = *re::foundationCoreLogObjects(a1);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v56 = *(a2 + 312);
      v57 = 134218498;
      v58 = a2;
      v59 = 2048;
      v60 = v56;
      v61 = 2080;
      v62 = v7;
      v28 = "TransformServiceVisitation: %p %llu (%s) calculate world transform called";
      goto LABEL_28;
    case 2:
      v29 = v6[1];
      v9 = *re::foundationCoreLogObjects(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a2 + 312);
        v31 = *v6;
        v32 = *v29;
        v33 = v29[1];
        v34 = v29[2];
        v35 = v29[3];
        v36 = v29[4];
        v37 = v29[5];
        v38 = v29[6];
        v39 = v29[7];
        v40 = v29[8];
        v41 = v29[9];
        v42 = v29[10];
        v43 = v29[11];
        v44 = v29[12];
        v45 = v29[13];
        v46 = v29[14];
        v47 = v29[15];
        v57 = 134222850;
        v58 = a2;
        v59 = 2048;
        v60 = v30;
        v61 = 2080;
        v62 = v7;
        v63 = 2080;
        v64 = v31;
        v65 = 2048;
        v66 = v32;
        v67 = 2048;
        v68 = v33;
        v69 = 2048;
        v70 = v34;
        v71 = 2048;
        v72 = v35;
        v73 = 2048;
        v74 = v36;
        v75 = 2048;
        v76 = v37;
        v77 = 2048;
        v78 = v38;
        v79 = 2048;
        v80 = v39;
        v81 = 2048;
        v82 = v40;
        v83 = 2048;
        v84 = v41;
        v85 = 2048;
        v86 = v42;
        v87 = 2048;
        v88 = v43;
        v89 = 2048;
        v90 = v44;
        v91 = 2048;
        v92 = v45;
        v93 = 2048;
        v94 = v46;
        v95 = 2048;
        v96 = v47;
        v28 = "TransformServiceVisitation: %p %llu (%s) calculate world transform complete, %s: [%f %f %f %f | %f %f %f %f | %f %f %f %f | %f %f %f %f]";
LABEL_14:
        v48 = v9;
        v49 = 202;
LABEL_29:
        _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, v28, &v57, v49);
      }

      break;
  }
}

uint64_t std::__function::__func<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_0,std::allocator<re::TransformService::willAddSceneToECSService(re::ecs2::Scene *)::$_0>,void ()(re::ecs2::Entity const&,re::TransformService::VisitationType,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<RESubscriptionHandle,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1, i);
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

uint64_t re::BucketArray<RESubscriptionHandle,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<RESubscriptionHandle,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<RESubscriptionHandle,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 64, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RESceneEntityDidAddEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD6DF0;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD6E48;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneEntityDidAddEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneEntityDidAddEvent>(void)const::s_id = re::EventBus::typeStringToId(("24RESceneEntityDidAddEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[19];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD6DF0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD6DF0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD6DF0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD6DF0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD6E48;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD6E48;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD6E48;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD6E48;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<RESubscriptionHandle,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
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
  return v5 + 16 * (v2 & 3);
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addInternal<re::ecs2::Scene * const&,re::BucketArray<RESubscriptionHandle,4ul>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  re::BucketArray<RESubscriptionHandle,8ul>::swap(v7 + 16, a4);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 72) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(v4, *(v7 + v5 + 72) % *(v4 + 24));
        *(v8 + 8) = *(*(a2 + 16) + v5 + 8);
        v9 = *(a2 + 16) + v5;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v8 += 16;
        *(v8 + 16) = 1;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v8 + 40) = 0;
        *(v8 + 24) = 0;
        result = re::BucketArray<RESubscriptionHandle,8ul>::swap(v8, v9 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

uint64_t re::BucketArray<RESubscriptionHandle,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 2)) + 16 * (a2 & 3);
}

BOOL re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 80 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 80 * v5) = *(v6 + 80 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 80 * v9) = *(*(a1 + 16) + 80 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 16);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 24);
            v16 = v14 % v15;
            v17 = *(a1 + 36);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 32);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 24);
                v18 = *(a1 + 32);
                v12 = *(a1 + 8);
              }

              *(a1 + 32) = v18 + 1;
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 36) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 16) + 24 * v17 + 8) = *(*(a1 + 16) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 16) + 24 * v17) = v14;
            *(*(a1 + 16) + 24 * v17 + 16) = *v13;
            *v13 = 0;
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 28) + 1;
            *(a1 + 28) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

void re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_9, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = *v17;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_9, 4 * v10);
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

void std::__introsort<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,false>(const re::TransformOp **a1, const re::TransformOp **a2, re::TransformService **a3, uint64_t a4, char a5)
{
  while (2)
  {
    v160 = a2 - 1;
    v162 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = a1;
          v10 = a2 - a1;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, v160, a3);
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, v160, a3);
                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, v160, a3);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v66 = *a1;
              v67 = *a3;
              v68 = re::TransformService::opExecutionOrder(v67, *(a2 - 1));
              v69 = re::TransformService::opExecutionOrder(v67, v66);
              if (v68 < v69)
              {
                v70 = *a1;
                *a1 = 0;
                *a1 = *(a2 - 1);
                *(a2 - 1) = v70;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v71 = a1 + 1;
            v73 = a1 == a2 || v71 == a2;
            if (a5)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = a1;
                do
                {
                  v77 = *v75;
                  v76 = v75[1];
                  v75 = v71;
                  v78 = *a3;
                  v79 = re::TransformService::opExecutionOrder(*a3, v76);
                  if (v79 < re::TransformService::opExecutionOrder(v78, v77))
                  {
                    v80 = *v75;
                    *v75 = 0;
                    v81 = v74;
                    while (1)
                    {
                      v82 = (a1 + v81);
                      v84 = *(a1 + v81);
                      v83 = *(a1 + v81 + 8);
                      *v82 = v83;
                      v82[1] = v84;
                      if (!v81)
                      {
                        break;
                      }

                      v85 = *(v82 - 1);
                      v86 = *a3;
                      v87 = re::TransformService::opExecutionOrder(*a3, v80);
                      v81 -= 8;
                      if (v87 >= re::TransformService::opExecutionOrder(v86, v85))
                      {
                        v88 = (a1 + v81 + 8);
                        v83 = *v88;
                        goto LABEL_87;
                      }
                    }

                    v88 = a1;
LABEL_87:
                    *v88 = v80;
                    a2 = v162;
                    if (v83)
                    {
                    }
                  }

                  v71 = v75 + 1;
                  v74 += 8;
                }

                while (v75 + 1 != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v147 = *v9;
                v146 = v9[1];
                v9 = v71;
                v148 = *a3;
                v149 = re::TransformService::opExecutionOrder(*a3, v146);
                if (v149 < re::TransformService::opExecutionOrder(v148, v147))
                {
                  v150 = *v9;
                  *v9 = 0;
                  v151 = v9;
                  v152 = v9;
                  do
                  {
                    v153 = *v151;
                    v154 = *--v152;
                    *v151 = v154;
                    *v152 = v153;
                    v155 = *(v151 - 2);
                    v156 = *a3;
                    v157 = re::TransformService::opExecutionOrder(*a3, v150);
                    v158 = re::TransformService::opExecutionOrder(v156, v155);
                    v151 = v152;
                  }

                  while (v157 < v158);
                  v159 = *v152;
                  *v152 = v150;
                  if (v159)
                  {
                  }
                }

                v71 = v9 + 1;
              }

              while (v9 + 1 != a2);
            }

            return;
          }

          v167 = a1;
          if (!a4)
          {
            if (a1 != a2)
            {
              v89 = (v10 - 2) >> 1;
              v165 = v89;
              v168 = a2 - a1;
              do
              {
                v90 = v89;
                if (v165 >= v89)
                {
                  v91 = (2 * v89) | 1;
                  v92 = &v9[v91];
                  if (2 * v89 + 2 < v10)
                  {
                    v93 = v92[1];
                    v94 = *a3;
                    v95 = re::TransformService::opExecutionOrder(*a3, *v92);
                    v96 = re::TransformService::opExecutionOrder(v94, v93);
                    if (v95 < v96)
                    {
                      ++v92;
                    }

                    a2 = v162;
                    if (v95 < v96)
                    {
                      v91 = 2 * v90 + 2;
                    }
                  }

                  v97 = &v9[v90];
                  v98 = *v97;
                  v99 = *a3;
                  v100 = re::TransformService::opExecutionOrder(*a3, *v92);
                  v101 = re::TransformService::opExecutionOrder(v99, v98);
                  v10 = v168;
                  if (v100 >= v101)
                  {
                    v161 = v90;
                    v102 = *v97;
                    *v97 = 0;
                    while (1)
                    {
                      v103 = v92;
                      v104 = *v97;
                      *v97 = *v92;
                      *v92 = v104;
                      if (v165 < v91)
                      {
                        break;
                      }

                      v105 = (2 * v91) | 1;
                      v92 = &v9[v105];
                      v106 = 2 * v91 + 2;
                      if (v106 < v10)
                      {
                        v107 = v92[1];
                        v108 = *a3;
                        v109 = re::TransformService::opExecutionOrder(*a3, *v92);
                        v110 = re::TransformService::opExecutionOrder(v108, v107);
                        if (v109 < v110)
                        {
                          ++v92;
                        }

                        v9 = v167;
                        if (v109 < v110)
                        {
                          v105 = v106;
                        }
                      }

                      v111 = *a3;
                      v112 = re::TransformService::opExecutionOrder(*a3, *v92);
                      v113 = re::TransformService::opExecutionOrder(v111, v102);
                      v97 = v103;
                      v91 = v105;
                      v10 = v168;
                      if (v112 < v113)
                      {
                        v104 = *v103;
                        break;
                      }
                    }

                    *v103 = v102;
                    v90 = v161;
                    a2 = v162;
                    if (v104)
                    {
                    }
                  }
                }

                v89 = v90 - 1;
              }

              while (v90);
              do
              {
                v114 = 0;
                v115 = 0;
                v163 = a2;
                v166 = *v9;
                *v9 = 0;
                v116 = (v10 - 2) >> 1;
                v117 = v9;
                do
                {
                  v118 = &v117[v115];
                  v119 = v118 + 1;
                  v120 = (2 * v115) | 1;
                  v121 = 2 * v115 + 2;
                  if (v121 >= v10)
                  {
                    v115 = (2 * v115) | 1;
                  }

                  else
                  {
                    v123 = v118[2];
                    v122 = v118 + 2;
                    v124 = v10;
                    v125 = *a3;
                    v126 = v116;
                    v127 = re::TransformService::opExecutionOrder(*a3, *(v122 - 1));
                    v128 = v125;
                    v10 = v124;
                    v129 = re::TransformService::opExecutionOrder(v128, v123);
                    v116 = v126;
                    if (v127 >= v129)
                    {
                      v115 = v120;
                    }

                    else
                    {
                      v119 = v122;
                      v115 = v121;
                    }

                    v114 = *v117;
                  }

                  *v117 = *v119;
                  *v119 = v114;
                  v117 = v119;
                }

                while (v115 <= v116);
                v130 = v163 - 1;
                if (v119 == v163 - 1)
                {
                  v131 = v163 - 1;
                  *v119 = v166;
                }

                else
                {
                  *v119 = *v130;
                  v131 = v163 - 1;
                  *v130 = v166;
                  v132 = (v119 - v167 + 8) >> 3;
                  v133 = v132 < 2;
                  v134 = v132 - 2;
                  if (!v133)
                  {
                    v135 = v134 >> 1;
                    v136 = &v167[v134 >> 1];
                    v137 = *v119;
                    v169 = v10;
                    v138 = *a3;
                    v139 = re::TransformService::opExecutionOrder(*a3, *v136);
                    v140 = v138;
                    v10 = v169;
                    if (v139 < re::TransformService::opExecutionOrder(v140, v137))
                    {
                      v141 = *v119;
                      *v119 = 0;
                      while (1)
                      {
                        v142 = v136;
                        v143 = *v119;
                        *v119 = *v136;
                        *v136 = v143;
                        if (!v135)
                        {
                          break;
                        }

                        v135 = (v135 - 1) >> 1;
                        v136 = &v167[v135];
                        v144 = *a3;
                        v145 = re::TransformService::opExecutionOrder(*a3, *v136);
                        v119 = v142;
                        if (v145 >= re::TransformService::opExecutionOrder(v144, v141))
                        {
                          v143 = *v142;
                          break;
                        }
                      }

                      v10 = v169;
                      *v142 = v141;
                      if (v143)
                      {
                      }
                    }
                  }
                }

                if (v114)
                {
                }

                v133 = v10-- <= 2;
                a2 = v131;
                v9 = v167;
              }

              while (!v133);
            }

            return;
          }

          v11 = &a1[v10 >> 1];
          if (v10 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(&v9[v10 >> 1], v9, v160, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(v9, &v9[v10 >> 1], v160, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(v9 + 1, v11 - 1, a2 - 2, a3);
            v12 = &v9[(v10 >> 1) + 1];
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(v167 + 2, v12, a2 - 3, a3);
            v9 = v167;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(v11 - 1, v11, v12, a3);
            v13 = *v167;
            *v167 = 0;
            *v167 = *v11;
            *v11 = v13;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v14 = *v9;
          v15 = *a3;
          v16 = re::TransformService::opExecutionOrder(*a3, *(v9 - 1));
          v17 = v16 >= re::TransformService::opExecutionOrder(v15, v14);
          v9 = v167;
          if (!v17)
          {
            break;
          }

          v42 = *v167;
          *v167 = 0;
          v43 = *v160;
          v44 = *a3;
          v45 = re::TransformService::opExecutionOrder(*a3, v42);
          if (v45 >= re::TransformService::opExecutionOrder(v44, v43))
          {
            v49 = v167 + 1;
            do
            {
              a1 = v49;
              if (v49 >= a2)
              {
                break;
              }

              ++v49;
              v50 = *a1;
              v51 = *a3;
              v52 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v52 >= re::TransformService::opExecutionOrder(v51, v50));
          }

          else
          {
            a1 = v167;
            do
            {
              v46 = a1[1];
              ++a1;
              v47 = *a3;
              v48 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v48 >= re::TransformService::opExecutionOrder(v47, v46));
          }

          v53 = a2;
          if (a1 < a2)
          {
            v53 = a2;
            do
            {
              v54 = *--v53;
              v55 = *a3;
              v56 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v56 < re::TransformService::opExecutionOrder(v55, v54));
          }

          while (a1 < v53)
          {
            v57 = *a1;
            *a1 = 0;
            *a1 = *v53;
            *v53 = v57;
            do
            {
              v58 = a1[1];
              ++a1;
              v59 = *a3;
              v60 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v60 >= re::TransformService::opExecutionOrder(v59, v58));
            do
            {
              v61 = *--v53;
              v62 = *a3;
              v63 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v63 < re::TransformService::opExecutionOrder(v62, v61));
          }

          v64 = a1 - 1;
          v65 = *v167;
          if (a1 - 1 != v167)
          {
            *v167 = *v64;
          }

          a5 = 0;
          *v64 = v42;
          if (v65)
          {

            a5 = 0;
          }
        }

        v18 = 0;
        v19 = *v9;
        *v9 = 0;
        do
        {
          v20 = *a3;
          v21 = re::TransformService::opExecutionOrder(*a3, v9[++v18]);
        }

        while (v21 < re::TransformService::opExecutionOrder(v20, v19));
        v22 = &v9[v18];
        v23 = a2;
        if (v18 == 1)
        {
          v23 = a2;
          do
          {
            if (v22 >= v23)
            {
              break;
            }

            v27 = *--v23;
            v28 = *a3;
            v29 = re::TransformService::opExecutionOrder(*a3, v27);
          }

          while (v29 >= re::TransformService::opExecutionOrder(v28, v19));
        }

        else
        {
          do
          {
            v24 = *--v23;
            v25 = *a3;
            v26 = re::TransformService::opExecutionOrder(*a3, v24);
          }

          while (v26 >= re::TransformService::opExecutionOrder(v25, v19));
        }

        if (v22 >= v23)
        {
          v39 = v22 - 1;
        }

        else
        {
          v30 = &v9[v18];
          v31 = v23;
          do
          {
            v32 = *v30;
            *v30 = 0;
            *v30 = *v31;
            *v31 = v32;
            do
            {
              v33 = v30[1];
              ++v30;
              v34 = *a3;
              v35 = re::TransformService::opExecutionOrder(*a3, v33);
            }

            while (v35 < re::TransformService::opExecutionOrder(v34, v19));
            do
            {
              v36 = *--v31;
              v37 = *a3;
              v38 = re::TransformService::opExecutionOrder(*a3, v36);
            }

            while (v38 >= re::TransformService::opExecutionOrder(v37, v19));
          }

          while (v30 < v31);
          v39 = v30 - 1;
        }

        v40 = *v167;
        if (v39 != v167)
        {
          *v167 = *v39;
        }

        *v39 = v19;
        if (v40)
        {
        }

        if (v22 >= v23)
        {
          break;
        }

LABEL_39:
        std::__introsort<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,false>(v167, v39, a3, a4, a5 & 1);
        a5 = 0;
        a1 = v39 + 1;
      }

      v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*>(v167, v39, a3);
      a1 = v39 + 1;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*>(v39 + 1, a2, a3))
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_39;
      }
    }

    a2 = v39;
    a1 = v167;
    if (!v41)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(const re::TransformOp **a1, const re::TransformOp **a2, const re::TransformOp **a3, re::TransformService **a4)
{
  v8 = *a1;
  v9 = *a4;
  v10 = re::TransformService::opExecutionOrder(*a4, *a2);
  LODWORD(v8) = re::TransformService::opExecutionOrder(v9, v8);
  v11 = *a2;
  v12 = *a4;
  v13 = re::TransformService::opExecutionOrder(*a4, *a3);
  result = re::TransformService::opExecutionOrder(v12, v11);
  if (v10 >= v8)
  {
    if (v13 < result)
    {
      v16 = *a2;
      *a2 = 0;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = *a4;
      v19 = re::TransformService::opExecutionOrder(v18, *a2);
      result = re::TransformService::opExecutionOrder(v18, v17);
      if (v19 < result)
      {
        v20 = *a1;
        *a1 = 0;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  else
  {
    v15 = *a1;
    *a1 = 0;
    if (v13 >= result)
    {
      *a1 = *a2;
      *a2 = v15;
      v21 = *a4;
      v22 = re::TransformService::opExecutionOrder(*a4, *a3);
      result = re::TransformService::opExecutionOrder(v21, v15);
      if (v22 < result)
      {
        v23 = *a2;
        *a2 = 0;
        *a2 = *a3;
        *a3 = v23;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v15;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(const re::TransformOp **a1, const re::TransformOp **a2, const re::TransformOp **a3, const re::TransformOp **a4, re::TransformService **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a2, a3, a5);
  v10 = *a3;
  v11 = *a5;
  v12 = re::TransformService::opExecutionOrder(*a5, *a4);
  result = re::TransformService::opExecutionOrder(v11, v10);
  if (v12 < result)
  {
    v14 = *a3;
    *a3 = 0;
    *a3 = *a4;
    *a4 = v14;
    v15 = *a2;
    v16 = *a5;
    v17 = re::TransformService::opExecutionOrder(*a5, *a3);
    result = re::TransformService::opExecutionOrder(v16, v15);
    if (v17 < result)
    {
      v18 = *a2;
      *a2 = 0;
      *a2 = *a3;
      *a3 = v18;
      v19 = *a1;
      v20 = *a5;
      v21 = re::TransformService::opExecutionOrder(v20, *a2);
      result = re::TransformService::opExecutionOrder(v20, v19);
      if (v21 < result)
      {
        v22 = *a1;
        *a1 = 0;
        *a1 = *a2;
        *a2 = v22;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(const re::TransformOp **a1, const re::TransformOp **a2, const re::TransformOp **a3, const re::TransformOp **a4, const re::TransformOp **a5, re::TransformService **a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = *a6;
  v14 = re::TransformService::opExecutionOrder(*a6, *a5);
  result = re::TransformService::opExecutionOrder(v13, v12);
  if (v14 < result)
  {
    v16 = *a4;
    *a4 = 0;
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    v18 = *a6;
    v19 = re::TransformService::opExecutionOrder(*a6, *a4);
    result = re::TransformService::opExecutionOrder(v18, v17);
    if (v19 < result)
    {
      v20 = *a3;
      *a3 = 0;
      *a3 = *a4;
      *a4 = v20;
      v21 = *a2;
      v22 = *a6;
      v23 = re::TransformService::opExecutionOrder(*a6, *a3);
      result = re::TransformService::opExecutionOrder(v22, v21);
      if (v23 < result)
      {
        v24 = *a2;
        *a2 = 0;
        *a2 = *a3;
        *a3 = v24;
        v25 = *a1;
        v26 = *a6;
        v27 = re::TransformService::opExecutionOrder(v26, *a2);
        result = re::TransformService::opExecutionOrder(v26, v25);
        if (v27 < result)
        {
          v28 = *a1;
          *a1 = 0;
          *a1 = *a2;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*>(const re::TransformOp **a1, const re::TransformOp **a2, re::TransformService **a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v8 = *a3;
        v9 = re::TransformService::opExecutionOrder(*a3, *(a2 - 1));
        if (v9 < re::TransformService::opExecutionOrder(v8, v7))
        {
          v10 = *a1;
          *a1 = 0;
          *a1 = *(v4 - 1);
          *(v4 - 1) = v10;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, a3);
  v12 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v28 = v4;
  while (1)
  {
    v15 = *v11;
    v16 = *a3;
    v17 = re::TransformService::opExecutionOrder(*a3, *v12);
    if (v17 < re::TransformService::opExecutionOrder(v16, v15))
    {
      v18 = *v12;
      *v12 = 0;
      v19 = v13;
      while (1)
      {
        v20 = (a1 + v19);
        v22 = *(a1 + v19 + 16);
        v21 = *(a1 + v19 + 24);
        v20[2] = v21;
        v20[3] = v22;
        if (v19 == -16)
        {
          break;
        }

        v23 = v20[1];
        v24 = *a3;
        v25 = re::TransformService::opExecutionOrder(*a3, v18);
        v19 -= 8;
        if (v25 >= re::TransformService::opExecutionOrder(v24, v23))
        {
          v26 = (a1 + v19 + 24);
          v21 = *v26;
          goto LABEL_19;
        }
      }

      v26 = a1;
LABEL_19:
      v4 = v28;
      *v26 = v18;
      if (v21)
      {
      }

      if (++v14 == 8)
      {
        return v12 + 1 == v28;
      }
    }

    v11 = v12;
    v13 += 8;
    if (++v12 == v4)
    {
      return 1;
    }
  }
}