void sub_2461087DC(uint64_t a1)
{
  sub_246108814(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_246108814(uint64_t a1)
{
  v3 = (a1 + 184);
  v2 = *(a1 + 184);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *(a1 + 216);
  v5 = *(a1 + 224);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v17 = v4;
  v6 = *(a1 + 232);
  v7 = *(a1 + 240);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v18[0] = v6;
  v18[1] = v7;
  v19 = *(a1 + 248);
  *(a1 + 248) = 1065353216;
  if (v7)
  {
    v8 = v6[1];
    if ((v5 & (v5 - 1)) != 0)
    {
      if (v8 >= v5)
      {
        v8 %= v5;
      }
    }

    else
    {
      v8 &= v5 - 1;
    }

    v4[v8] = v18;
  }

  else if (!v6)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = v6;
  do
  {
    v16 = *v15;
    operator delete(v15);
    v15 = v16;
  }

  while (v16);
  v4 = v17;
  if (v17)
  {
LABEL_8:
    operator delete(v4);
  }

LABEL_9:
  v9 = *(a1 + 232);
  if (v9)
  {
    do
    {
      v10 = *v9;
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *v3;
  if (*v3)
  {
    *(a1 + 192) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 24);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return a1;
}

os_log_t sub_24610897C()
{
  result = os_log_create("com.apple.CoreOCModules", "General");
  qword_27EE3F580 = result;
  return result;
}

uint64_t sub_2461089AC(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7058]);
  v4 = v2;
  if (!v2)
  {
    goto LABEL_15;
  }

  objc_msgSend_setTextureType_(v2, v3, 2);
  objc_msgSend_setPixelFormat_(v4, v5, 53);
  objc_msgSend_setWidth_(v4, v6, *(a1 + 208));
  objc_msgSend_setHeight_(v4, v7, *(a1 + 216));
  objc_msgSend_setUsage_(v4, v8, 5);
  objc_msgSend_setStorageMode_(v4, v9, 2);
  v10 = **a1;
  v12 = objc_msgSend_newTextureWithDescriptor_(v10, v11, v4);
  v13 = *(a1 + 144);
  *(a1 + 144) = v12;

  v15 = *(a1 + 144);
  if (!v15)
  {
    goto LABEL_15;
  }

  objc_msgSend_setLabel_(v15, v14, @"SurfaceVoxelVisibleIndexTexture");
  if ((*(a1 + 192) - 1) <= 2)
  {
    objc_msgSend_setPixelFormat_(v4, v16, 125);
    objc_msgSend_setUsage_(v4, v17, 7);
    v18 = **a1;
    v20 = objc_msgSend_newTextureWithDescriptor_(v18, v19, v4);
    v21 = *(a1 + 152);
    *(a1 + 152) = v20;

    v23 = *(a1 + 152);
    if (!v23)
    {
      goto LABEL_15;
    }

    objc_msgSend_setLabel_(v23, v22, @"SurfaceVoxelNormalTexture");
    objc_msgSend_setUsage_(v4, v24, 3);
    v25 = **a1;
    v27 = objc_msgSend_newTextureWithDescriptor_(v25, v26, v4);
    v28 = *(a1 + 160);
    *(a1 + 160) = v27;

    v30 = *(a1 + 160);
    if (!v30)
    {
      goto LABEL_15;
    }

    objc_msgSend_setLabel_(v30, v29, @"SurfaceVoxelSmoothedNormalTexture");
  }

  objc_msgSend_setPixelFormat_(v4, v16, 252);
  objc_msgSend_setUsage_(v4, v31, 4);
  if (*(*a1 + 24))
  {
    objc_msgSend_setStorageMode_(v4, v32, 3);
  }

  else
  {
    objc_msgSend_setStorageMode_(v4, v32, 2);
  }

  v33 = **a1;
  v35 = objc_msgSend_newTextureWithDescriptor_(v33, v34, v4);
  v36 = *(a1 + 168);
  *(a1 + 168) = v35;

  v38 = *(a1 + 168);
  if (!v38)
  {
    goto LABEL_15;
  }

  objc_msgSend_setLabel_(v38, v37, @"SurfaceVoxelDepthTexture");
  if (*(*a1 + 24) == 1)
  {
    objc_msgSend_setPixelFormat_(v4, v39, 53);
    objc_msgSend_setUsage_(v4, v40, 5);
    objc_msgSend_setStorageMode_(v4, v41, 3);
    v42 = **a1;
    v44 = objc_msgSend_newTextureWithDescriptor_(v42, v43, v4);
    v45 = *(a1 + 336);
    *(a1 + 336) = v44;

    v47 = *(a1 + 336);
    if (v47)
    {
      objc_msgSend_setLabel_(v47, v46, @"tmpSurfaceVoxelVisibleIndexTexture");
      goto LABEL_14;
    }

LABEL_15:
    v48 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v48 = 1;
LABEL_16:

  return v48;
}

BOOL sub_246108C38(unsigned int *a1, const char *a2)
{
  v2 = a1[48];
  if (v2 <= 4)
  {
    v4 = off_278E9B3C8[v2];
    v5 = off_278E9B3F0[v2];
    v6 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), a2, off_278E9B418[v2]);
    v7 = **a1;
    v127 = 0;
    v9 = objc_msgSend_newComputePipelineStateWithFunction_error_(v7, v8, v6, &v127);
    v10 = v127;
    v11 = *(a1 + 1);
    *(a1 + 1) = v9;

    if (!*(a1 + 1))
    {
      v34 = 0;
LABEL_29:

      return v34;
    }

    v12 = objc_alloc_init(MEMORY[0x277CD6D70]);
    v13 = *(a1 + 26);
    v125 = *(a1 + 27);
    v126 = v13;
    objc_msgSend_setConstantValue_type_atIndex_(v12, v14, &v126, 3, 0);
    objc_msgSend_setConstantValue_type_atIndex_(v12, v15, &v125, 3, 1);
    objc_msgSend_setConstantValue_type_atIndex_(v12, v16, (a1 + 76), 3, 2);
    v17 = *(*a1 + 16);
    v124 = v10;
    v19 = objc_msgSend_newFunctionWithName_constantValues_error_(v17, v18, @"coverageFetchGOMDVisibleMeshVertex", v12, &v124);
    v20 = v124;

    v21 = **a1;
    v123 = v20;
    v23 = objc_msgSend_newComputePipelineStateWithFunction_error_(v21, v22, v19, &v123);
    v10 = v123;

    v24 = *(a1 + 2);
    *(a1 + 2) = v23;

    if (!*(a1 + 2))
    {
      v34 = 0;
LABEL_28:

      goto LABEL_29;
    }

    if (a1[48] == 4)
    {
      v26 = *(*a1 + 16);
      v28 = objc_msgSend_newFunctionWithName_(v26, v27, @"coverageGOMDProcess");

      v29 = **a1;
      v122 = v10;
      v31 = objc_msgSend_newComputePipelineStateWithFunction_error_(v29, v30, v28, &v122);
      v32 = v122;

      v33 = *(a1 + 3);
      *(a1 + 3) = v31;

      if (!*(a1 + 3))
      {
        v34 = 0;
        v6 = v28;
LABEL_27:
        v10 = v32;
        goto LABEL_28;
      }

      v6 = v28;
    }

    else
    {
      v32 = v10;
    }

    v35 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), v25, v5);
    v114 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), v36, v4);
    v37 = objc_alloc_init(MEMORY[0x277CD6F78]);
    v39 = v37;
    if (v37)
    {
      v113 = v35;
      objc_msgSend_setVertexFunction_(v37, v38, v35);
      objc_msgSend_setFragmentFunction_(v39, v40, v114);
      v43 = objc_msgSend_pixelFormat(*(a1 + 18), v41, v42);
      v46 = objc_msgSend_colorAttachments(v39, v44, v45);
      v48 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, 0);
      objc_msgSend_setPixelFormat_(v48, v49, v43);

      v52 = objc_msgSend_pixelFormat(*(a1 + 19), v50, v51);
      v55 = objc_msgSend_colorAttachments(v39, v53, v54);
      v57 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, 1);
      objc_msgSend_setPixelFormat_(v57, v58, v52);

      v61 = objc_msgSend_pixelFormat(*(a1 + 21), v59, v60);
      objc_msgSend_setDepthAttachmentPixelFormat_(v39, v62, v61);
      v63 = **a1;
      v121 = v32;
      v65 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v63, v64, v39, &v121);
      v66 = v121;

      v67 = *(a1 + 4);
      *(a1 + 4) = v65;

      if (*(a1 + 4))
      {
        v69 = *a1;
        if (*(*a1 + 24) == 1)
        {
          v70 = objc_alloc_init(MEMORY[0x277CD6D70]);
          v71 = *(a1 + 26);
          v119 = *(a1 + 27);
          v120 = v71;
          v111 = v70;
          objc_msgSend_setConstantValue_type_atIndex_(v70, v72, &v120, 3, 0);
          objc_msgSend_setConstantValue_type_atIndex_(v70, v73, &v119, 3, 1);
          objc_msgSend_setConstantValue_type_atIndex_(v70, v74, (a1 + 76), 3, 2);
          v75 = *(*a1 + 16);
          v118 = v66;
          v110 = objc_msgSend_newFunctionWithName_constantValues_error_(v75, v76, @"coverageTileFetchVisibleSurfaceVoxel", v70, &v118);
          v32 = v118;

          v77 = objc_alloc_init(MEMORY[0x277CD7078]);
          v79 = v77;
          if (v77)
          {
            objc_msgSend_setTileFunction_(v77, v78, v110);
            v82 = objc_msgSend_pixelFormat(*(a1 + 42), v80, v81);
            v85 = objc_msgSend_colorAttachments(v79, v83, v84);
            v87 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, 0);
            objc_msgSend_setPixelFormat_(v87, v88, v82);

            objc_msgSend_setThreadgroupSizeMatchesTileSize_(v79, v89, 1);
            v90 = **a1;
            v117 = v32;
            v92 = objc_msgSend_newRenderPipelineStateWithTileDescriptor_options_reflection_error_(v90, v91, v79, 0, 0, &v117);
            v93 = v117;

            v94 = *(a1 + 39);
            *(a1 + 39) = v92;

            if (*(a1 + 39))
            {
              v109 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), v95, @"coverageVisibilityTileFragmentShader");
              objc_msgSend_setFragmentFunction_(v39, v96, v109);
              v97 = **a1;
              v116 = v93;
              v99 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v97, v98, v39, &v116);
              v32 = v116;

              v100 = *(a1 + 40);
              *(a1 + 40) = v99;

              v101 = *(a1 + 40);
              if (!v101)
              {
                v34 = 0;
                v35 = v113;
                goto LABEL_26;
              }

              v69 = *a1;
              goto LABEL_22;
            }

            v32 = v93;
          }

          v34 = 0;
          v35 = v113;

          goto LABEL_26;
        }

        v32 = v66;
LABEL_22:
        v112 = objc_msgSend_newFunctionWithName_(v69[2], v68, @"meshVisibilityVertexShader");
        v35 = v113;
        objc_msgSend_setVertexFunction_(v39, v102, v112);
        v103 = **a1;
        v115 = v32;
        v105 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v103, v104, v39, &v115);
        v106 = v115;

        v107 = *(a1 + 5);
        *(a1 + 5) = v105;

        v34 = *(a1 + 5) != 0;
        v32 = v106;

        goto LABEL_26;
      }

      v34 = 0;
      v32 = v66;
      v35 = v113;
    }

    else
    {
      v34 = 0;
    }

LABEL_26:

    goto LABEL_27;
  }

  return 0;
}

BOOL sub_24610944C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D60]);
  v4 = v2;
  if (v2)
  {
    objc_msgSend_setDepthCompareFunction_(v2, v3, 1);
    objc_msgSend_setDepthWriteEnabled_(v4, v5, 1);
    v6 = **a1;
    v8 = objc_msgSend_newDepthStencilStateWithDescriptor_(v6, v7, v4);
    v9 = *(a1 + 48);
    *(a1 + 48) = v8;

    v10 = *(a1 + 48) != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_246109500(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6F50]);
  v3 = *(a1 + 176);
  *(a1 + 176) = v2;

  v6 = *(a1 + 176);
  if (v6)
  {
    v7 = *(a1 + 144);
    v8 = objc_msgSend_colorAttachments(*(a1 + 176), v4, v5);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, 0);
    objc_msgSend_setTexture_(v10, v11, v7);

    v14 = objc_msgSend_colorAttachments(*(a1 + 176), v12, v13);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);
    objc_msgSend_setLoadAction_(v16, v17, 2);

    v20 = objc_msgSend_colorAttachments(*(a1 + 176), v18, v19);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
    objc_msgSend_setClearColor_(v22, v23, v24, 0.0, 0.0, 0.0, 0.0);

    v27 = objc_msgSend_colorAttachments(*(a1 + 176), v25, v26);
    v29 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 0);
    objc_msgSend_setStoreAction_(v29, v30, 1);

    if ((*(a1 + 192) - 1) <= 3)
    {
      v33 = *(a1 + 152);
      v34 = objc_msgSend_colorAttachments(*(a1 + 176), v31, v32);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, 1);
      objc_msgSend_setTexture_(v36, v37, v33);

      v40 = objc_msgSend_colorAttachments(*(a1 + 176), v38, v39);
      v42 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 1);
      objc_msgSend_setLoadAction_(v42, v43, 2);

      v46 = objc_msgSend_colorAttachments(*(a1 + 176), v44, v45);
      v48 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, 1);
      objc_msgSend_setClearColor_(v48, v49, v50, 0.0, 0.0, 0.0, 0.0);

      v53 = objc_msgSend_colorAttachments(*(a1 + 176), v51, v52);
      v55 = objc_msgSend_objectAtIndexedSubscript_(v53, v54, 1);
      objc_msgSend_setStoreAction_(v55, v56, 1);
    }

    v57 = *(a1 + 168);
    v58 = objc_msgSend_depthAttachment(*(a1 + 176), v31, v32);
    objc_msgSend_setTexture_(v58, v59, v57);

    v62 = objc_msgSend_depthAttachment(*(a1 + 176), v60, v61);
    objc_msgSend_setLoadAction_(v62, v63, 2);

    v66 = objc_msgSend_depthAttachment(*(a1 + 176), v64, v65);
    objc_msgSend_setClearDepth_(v66, v67, v68, 1.0);

    v71 = objc_msgSend_depthAttachment(*(a1 + 176), v69, v70);
    objc_msgSend_setStoreAction_(v71, v72, 0);
  }

  return v6 != 0;
}

BOOL sub_2461097E4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6F50]);
  v3 = *(a1 + 328);
  *(a1 + 328) = v2;

  v6 = *(a1 + 328);
  if (v6)
  {
    v7 = *(a1 + 336);
    v8 = objc_msgSend_colorAttachments(*(a1 + 328), v4, v5);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, 0);
    objc_msgSend_setTexture_(v10, v11, v7);

    v14 = objc_msgSend_colorAttachments(*(a1 + 328), v12, v13);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);
    objc_msgSend_setLoadAction_(v16, v17, 2);

    v20 = objc_msgSend_colorAttachments(*(a1 + 328), v18, v19);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
    objc_msgSend_setClearColor_(v22, v23, v24, 0.0, 0.0, 0.0, 0.0);

    v27 = objc_msgSend_colorAttachments(*(a1 + 328), v25, v26);
    v29 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 0);
    objc_msgSend_setStoreAction_(v29, v30, 0);

    v31 = *(a1 + 168);
    v34 = objc_msgSend_depthAttachment(*(a1 + 328), v32, v33);
    objc_msgSend_setTexture_(v34, v35, v31);

    v38 = objc_msgSend_depthAttachment(*(a1 + 328), v36, v37);
    objc_msgSend_setLoadAction_(v38, v39, 2);

    v42 = objc_msgSend_depthAttachment(*(a1 + 328), v40, v41);
    objc_msgSend_setClearDepth_(v42, v43, v44, 1.0);

    v47 = objc_msgSend_depthAttachment(*(a1 + 328), v45, v46);
    objc_msgSend_setStoreAction_(v47, v48, 0);

    objc_msgSend_setTileWidth_(*(a1 + 328), v49, 32);
    objc_msgSend_setTileHeight_(*(a1 + 328), v50, 32);
  }

  return v6 != 0;
}

BOOL sub_2461099DC(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD7520]);
  v3 = **a1;
  LODWORD(v4) = 1128857600;
  v6 = objc_msgSend_initWithDevice_sigma_(v2, v5, v3, v4);
  v7 = *(a1 + 184);
  *(a1 + 184) = v6;

  return *(a1 + 184) != 0;
}

uint64_t sub_246109A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 288) != 1)
  {
    return 0;
  }

  if (*a2 <= 0.0)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(MEMORY[0x277D860B0] + 16);
  v7 = *(MEMORY[0x277D860B0] + 32);
  v8 = vdupq_n_s32(0x38D1B717u);
  v9 = vandq_s8(vandq_s8(vcgeq_f32(v8, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v3, *v3.f32, 1), v4, *v4.f32, 1), v5, *v5.f32, 1), v6)), vcgeq_f32(v8, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v3, v3.f32[0]), v4, v4.f32[0]), v5, v5.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v8, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v3, v3, 2), v4, v4, 2), v5, v5, 2), v7)));
  v9.i32[3] = v9.i32[2];
  if ((vminvq_u32(v9) & 0x80000000) == 0)
  {
    return 0;
  }

  v10 = vzip1q_s32(vzip2q_s32(v3, v5), vdupq_laneq_s32(v4, 2));
  v11 = vtrn2q_s32(v3, v4);
  v11.i32[2] = HIDWORD(*(a2 + 48));
  v12 = vzip1q_s32(vzip1q_s32(v3, v5), v4);
  v13 = vandq_s8(vandq_s8(vcgeq_f32(v8, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v4.f32[0]), v11, *v4.f32, 1), v10, v4, 2), v6)), vcgeq_f32(v8, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v3.f32[0]), v11, *v3.f32, 1), v10, v3, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v8, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v5.f32[0]), v11, *v5.f32, 1), v10, v5, 2), v7)));
  v13.i32[3] = v13.i32[2];
  if ((vminvq_u32(v13) & 0x80000000) == 0)
  {
    return 0;
  }

  v14 = vmulq_f32(v3, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL))), vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)));
  if (fabsf((v14.f32[2] + vaddv_f32(*v14.f32)) + -1.0) > 0.000011)
  {
    return 0;
  }

  v16 = 0;
  v17 = vabs_f32(vzip2_s32(*&vextq_s8(v3, v3, 8uLL), *&vextq_s8(v4, v4, 8uLL)));
  v18 = vdup_n_s32(0x38D1B717u);
  v19 = vand_s8(vcge_f32(v18, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(*(a2 + 64), *(a2 + 64), 8uLL)), 0xBF80000080000000))), vcge_f32(v18, v17));
  if ((vpmin_u32(v19, v19).u32[0] & 0x80000000) != 0 && *(a2 + 80) && *(a2 + 88))
  {
    if (sub_246103D18(a1 + 56, a2, a3))
    {
      v24 = *(a2 + 16);
      v25 = *(a2 + 32);
      v26 = *(a2 + 48);
      v27 = *(a2 + 64);
      v28 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v24, COERCE_FLOAT(*a2)), 0, v25), 0, v26), 0, v27);
      v29 = vmulq_f32(v24, 0);
      v30 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v29, v25, COERCE_FLOAT(*a2)), 0, v26), 0, v27);
      v31 = vmlaq_f32(v29, 0, v25);
      v32 = vmlaq_f32(vmlaq_n_f32(v31, v26, COERCE_FLOAT(*a2)), 0, v27);
      v33 = a1;
      *(a1 + 224) = v28;
      *(a1 + 240) = v30;
      *(a1 + 256) = v32;
      *(a1 + 272) = vaddq_f32(v27, vmlaq_f32(v31, 0, v26));
      *(a1 + 292) = *(a1 + 100);
      *(a1 + 296) = *(a2 + 88);
      if (*(a1 + 192))
      {
        v34 = objc_msgSend_contents(*(a1 + 120), v22, v23);
        memcpy(v34, *(a2 + 88), 48 * *(a1 + 292));
        v33 = a1;
      }

      v16 = 1;
      *(v33 + 289) = 1;
      *(v33 + 488) = 1;
    }

    else
    {
      return 0;
    }
  }

  return v16;
}

uint64_t sub_246109D14(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (a4 < 0.0001)
  {
    return 0;
  }

  if ((*(a1 + 288) & 1) == 0)
  {
    return 0;
  }

  v5 = *a2;
  v4 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(MEMORY[0x277D860B0] + 16);
  v8 = *(MEMORY[0x277D860B0] + 32);
  v9 = vdupq_n_s32(0x38D1B717u);
  v10 = vandq_s8(vandq_s8(vcgeq_f32(v9, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v5, *v5.f32, 1), v4, *v4.f32, 1), v6, *v6.f32, 1), v7)), vcgeq_f32(v9, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5, v5.f32[0]), v4, v4.f32[0]), v6, v6.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v9, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v5, 2), v4, v4, 2), v6, v6, 2), v8)));
  v10.i32[3] = v10.i32[2];
  if ((vminvq_u32(v10) & 0x80000000) == 0)
  {
    return 0;
  }

  v11 = vzip1q_s32(vzip2q_s32(v5, v6), vdupq_laneq_s32(v4, 2));
  v12 = vtrn2q_s32(v5, v4);
  v12.i32[2] = HIDWORD(*(a2 + 32));
  v13 = vzip1q_s32(vzip1q_s32(v5, v6), v4);
  v14 = vandq_s8(vandq_s8(vcgeq_f32(v9, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v4.f32[0]), v12, *v4.f32, 1), v11, v4, 2), v7)), vcgeq_f32(v9, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v5.f32[0]), v12, *v5.f32, 1), v11, v5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v9, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v6.f32[0]), v12, *v6.f32, 1), v11, v6, 2), v8)));
  v14.i32[3] = v14.i32[2];
  if ((vminvq_u32(v14) & 0x80000000) == 0)
  {
    return 0;
  }

  v15 = vmulq_f32(v5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL))), vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)));
  if (fabsf((v15.f32[2] + vaddv_f32(*v15.f32)) + -1.0) > 0.000011)
  {
    return 0;
  }

  v17 = vabs_f32(vzip2_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v4, v4, 8uLL)));
  v18 = vdup_n_s32(0x38D1B717u);
  v19 = vand_s8(vcge_f32(v18, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(*(a2 + 48), *(a2 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v18, v17));
  if ((vpmin_u32(v19, v19).u32[0] & 0x80000000) != 0)
  {
    v20 = *a3;
    if (!*a3)
    {
      return v20;
    }

    if (*(a3 + 8) && *(a3 + 16))
    {
      v24 = *objc_msgSend_contents(v20, a2, a3);
      v27 = objc_msgSend_contents(*(a3 + 16), v25, v26);
      v20 = 0;
      if (v24 && *v27)
      {
        v28 = a1;
        *(a1 + 128) = a3;
        v29 = *(a2 + 16);
        v30 = *(a2 + 32);
        v31 = *(a2 + 48);
        v32 = vmulq_f32(*a2, 0);
        v33 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v32, v29, a4), 0, v30), 0, v31);
        v34 = vmlaq_f32(v32, 0, v29);
        *(a1 + 224) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*a2, a4), 0, v29), 0, v30), 0, v31);
        *(a1 + 240) = v33;
        *(a1 + 256) = vmlaq_f32(vmlaq_n_f32(v34, v30, a4), 0, v31);
        *(a1 + 272) = vaddq_f32(v31, vmlaq_f32(v34, 0, v30));
        *(a1 + 292) = v24;
        if (*(a1 + 192))
        {
          objc_storeStrong((a1 + 120), *(a3 + 8));
          v28 = a1;
        }

        v20 = 1;
        *(v28 + 289) = 1;
        *(v28 + 488) = 2;
      }

      return v20;
    }
  }

  return 0;
}

char *sub_246109FF8(int32x4_t **a1, unint64_t a2, __int32 *a3, int32x2_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (a2 > (v6 - v7) >> 2)
  {
    if (v7)
    {
      a1[1] = v7;
      operator delete(v7);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v9 = v6 >> 1;
    if (v6 >> 1 <= a2)
    {
      v9 = a2;
    }

    v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
    v11 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v9;
    }

    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_2460D368C();
  }

  v12 = a1[1];
  v13 = v12 - v7;
  v14 = (v12 - v7) >> 2;
  if (v14 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = (v12 - v7) >> 2;
  }

  if (v15)
  {
    a4.i32[0] = *a3;
    if (v15 < 8)
    {
      goto LABEL_19;
    }

    result = &v7->i8[4 * (v15 & 0xFFFFFFFFFFFFFFF8)];
    v16 = vdupq_lane_s32(a4, 0);
    v17 = v7 + 1;
    v18 = v15 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v17[-1] = v16;
      *v17 = v16;
      v17 += 2;
      v18 -= 8;
    }

    while (v18);
    if (v15 != (v15 & 0xFFFFFFFFFFFFFFF8))
    {
      v15 &= 7u;
      do
      {
LABEL_19:
        *result = a4.i32[0];
        result += 4;
        --v15;
      }

      while (v15);
    }
  }

  v10 = a2 >= v14;
  v19 = a2 - v14;
  if (v19 == 0 || !v10)
  {
    a1[1] = (v7 + 4 * a2);
    return result;
  }

  v20 = (v12 + 4 * v19);
  a4.i32[0] = *a3;
  v21 = 4 * a2 - v13 - 4;
  if (v21 >= 0x1C)
  {
    v22 = (v21 >> 2) + 1;
    v23 = vdupq_lane_s32(a4, 0);
    v24 = v12 + 1;
    v25 = v22 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v24[-1] = v23;
      *v24 = v23;
      v24 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_28;
    }

    v12 = (v12 + 4 * (v22 & 0x7FFFFFFFFFFFFFF8));
  }

  do
  {
    v12->i32[0] = a4.i32[0];
    v12 = (v12 + 4);
  }

  while (v12 != v20);
LABEL_28:
  a1[1] = v20;
  return result;
}

uint64_t sub_24610A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, float a7)
{
  v8 = *a2;
  v7 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(MEMORY[0x277D860B0] + 16);
  v11 = *(MEMORY[0x277D860B0] + 32);
  v12 = vdupq_n_s32(0x38D1B717u);
  v13 = vandq_s8(vandq_s8(vcgeq_f32(v12, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v8, *v8.f32, 1), v7, *v7.f32, 1), v9, *v9.f32, 1), v10)), vcgeq_f32(v12, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v8.f32[0]), v7, v7.f32[0]), v9, v9.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v12, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, v8, 2), v7, v7, 2), v9, v9, 2), v11)));
  v13.i32[3] = v13.i32[2];
  if ((vminvq_u32(v13) & 0x80000000) == 0)
  {
    return 0;
  }

  v14 = vzip1q_s32(vzip2q_s32(v8, v9), vdupq_laneq_s32(v7, 2));
  v15 = vtrn2q_s32(v8, v7);
  v15.i32[2] = HIDWORD(*(a2 + 32));
  v16 = vzip1q_s32(vzip1q_s32(v8, v9), v7);
  v17 = vandq_s8(vandq_s8(vcgeq_f32(v12, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v7.f32[0]), v15, *v7.f32, 1), v14, v7, 2), v10)), vcgeq_f32(v12, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v8.f32[0]), v15, *v8.f32, 1), v14, v8, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v12, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v9.f32[0]), v15, *v9.f32, 1), v14, v9, 2), v11)));
  v17.i32[3] = v17.i32[2];
  if ((vminvq_u32(v17) & 0x80000000) == 0)
  {
    return 0;
  }

  v18 = vmulq_f32(v8, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL)));
  if (fabsf((v18.f32[2] + vaddv_f32(*v18.f32)) + -1.0) > 0.000011)
  {
    return 0;
  }

  result = 0;
  if (a7 < 3.1416 && a7 > 0.0)
  {
    v21 = vdup_n_s32(0x38D1B717u);
    v22 = vand_s8(vcge_f32(v21, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(*(a2 + 48), *(a2 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v21, vabs_f32(vzip2_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v7, v7, 8uLL)))));
    if ((vpmin_u32(v22, v22).u32[0] & 0x80000000) != 0)
    {
      if (a6 && *(a1 + 292) > ((a6[1] - *a6) >> 2))
      {
        return 0;
      }

      result = 0;
      v27 = *(a1 + 208) / *(a1 + 216);
      if (v27 >= 0.001 && a7 >= 0.0 && fabsf(a7) > 0.000001)
      {
        result = 0;
        v28 = *(a1 + 200);
        v29 = *(a1 + 204);
        if (v29 > v28 && v29 >= 0.001 && v28 >= 0.001 && fabsf(a7 + -3.1416) > 0.000032416)
        {
          v104 = *(a2 + 16);
          v105 = *(a2 + 32);
          v103 = *a2;
          v106 = *(a2 + 48);
          v30 = 1.0 / tanf(a7 * 0.5);
          *&v31 = v30 / v27;
          LODWORD(v32) = 0;
          *(&v32 + 1) = v30;
          v33.i64[0] = 0;
          v33.f32[2] = -v29 / (v29 - v28);
          v33.i32[3] = -1.0;
          v34.i64[0] = 0;
          v34.i64[1] = COERCE_UNSIGNED_INT(v33.f32[2] * v28);
          v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(a1 + 224))), v104, *(a1 + 224), 1), v105, *(a1 + 224), 2), v106, *(a1 + 224), 3);
          v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(a1 + 240))), v104, *(a1 + 240), 1), v105, *(a1 + 240), 2), v106, *(a1 + 240), 3);
          v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(a1 + 256))), v104, *(a1 + 256), 1), v105, *(a1 + 256), 2), v106, *(a1 + 256), 3);
          v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(a1 + 272))), v104, *(a1 + 272), 1), v105, *(a1 + 272), 2), v106, *(a1 + 272), 3);
          v108[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v35.f32[0]), v32, *v35.f32, 1), v33, v35, 2), v34, v35, 3);
          v108[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v36.f32[0]), v32, *v36.f32, 1), v33, v36, 2), v34, v36, 3);
          v108[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v37.f32[0]), v32, *v37.f32, 1), v33, v37, 2), v34, v37, 3);
          v108[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v38.f32[0]), v32, *v38.f32, 1), v33, v38, 2), v34, v38, 3);
          v41 = objc_msgSend_commandBuffer(*(*a1 + 8), v39, v40);
          v43 = objc_msgSend_renderCommandEncoderWithDescriptor_(v41, v42, *(a1 + 176));
          objc_msgSend_setLabel_(v43, v44, @"VisibleIndexRenderEncoder");
          objc_msgSend_setRenderPipelineState_(v43, v45, *(a1 + 32));
          objc_msgSend_setDepthStencilState_(v43, v46, *(a1 + 48));
          objc_msgSend_setVertexBuffer_offset_atIndex_(v43, v47, *(a1 + 112), 0, 0);
          objc_msgSend_setVertexBytes_length_atIndex_(v43, v48, v108, 64, 1);
          if ((*(a1 + 192) - 1) <= 3)
          {
            objc_msgSend_setVertexBuffer_offset_atIndex_(v43, v49, *(a1 + 120), 0, 2);
            objc_msgSend_setVertexBytes_length_atIndex_(v43, v50, a1 + 224, 64, 3);
            objc_msgSend_setVertexBytes_length_atIndex_(v43, v51, a1 + 488, 4, 4);
          }

          objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v43, v49, 3, 0, (36 * *(a1 + 292)), *&v103, *&v104, *&v105, *&v106);
          v109 = 0;
          v110 = 0;
          v111 = vcvtq_f64_u64(*(a1 + 208));
          v112 = xmmword_24613FB40;
          objc_msgSend_setViewport_(v43, v52, &v109);
          objc_msgSend_endEncoding(v43, v53, v54);

          if (*(a1 + 192) == 1)
          {
            objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(*(a1 + 184), v55, v41, *(a1 + 152), *(a1 + 160));
          }

          v57 = objc_msgSend_computeCommandEncoder(v41, v55, v56);
          objc_msgSend_setLabel_(v57, v58, @"FetchVisibleSurfaceVoxelEncoder");
          objc_msgSend_setComputePipelineState_(v57, v59, *(a1 + 8));
          objc_msgSend_setTexture_atIndex_(v57, v60, *(a1 + 144), 0);
          v63 = *(a1 + 192);
          if ((v63 - 1) < 3)
          {
            objc_msgSend_setTexture_atIndex_(v57, v61, *(a1 + qword_2461440E0[v63 - 1]), 1);
            v63 = *(a1 + 192);
          }

          if (v63 <= 1)
          {
            if (v63)
            {
              if (v63 == 1)
              {
                objc_msgSend_setBytes_length_atIndex_(v57, v61, a1 + 292, 4, 0);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v65, *(a1 + 120), 0, 1);
                objc_msgSend_setBytes_length_atIndex_(v57, v66, a1 + 224, 64, 2);
                objc_msgSend_setBytes_length_atIndex_(v57, v67, a3, 16, 3);
                objc_msgSend_setBytes_length_atIndex_(v57, v68, a4, 4, 4);
                objc_msgSend_setBytes_length_atIndex_(v57, v69, a5, 4, 5);
                objc_msgSend_setBytes_length_atIndex_(v57, v70, a1 + 344, 64, 6);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v71, *(a1 + 136), 0, 7);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v72, *(a1 + 408), 0, 8);
              }

              goto LABEL_36;
            }

            objc_msgSend_setBytes_length_atIndex_(v57, v61, a1 + 292, 4, 0);
            v79 = 1;
          }

          else
          {
            if (v63 != 2)
            {
              if (v63 == 3)
              {
                objc_msgSend_setBytes_length_atIndex_(v57, v61, a1 + 292, 4, 0);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v80, *(a1 + 120), 0, 1);
                objc_msgSend_setBytes_length_atIndex_(v57, v81, a1 + 224, 64, 2);
                objc_msgSend_setBytes_length_atIndex_(v57, v82, a3, 16, 3);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v83, *(a1 + 432), 0, 4);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v84, *(a1 + 440), 0, 5);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v85, *(a1 + 448), 0, 6);
                objc_msgSend_setBytes_length_atIndex_(v57, v86, a1 + 416, 4, 7);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v87, *(a1 + 136), 0, 8);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v88, *(a1 + 424), 0, 9);
              }

              else if (v63 == 4)
              {
                objc_msgSend_setBytes_length_atIndex_(v57, v61, a1 + 292, 4, 0);
                objc_msgSend_setBuffer_offset_atIndex_(v57, v64, *(a1 + 456), 0, 1);
              }

              goto LABEL_36;
            }

            objc_msgSend_setBytes_length_atIndex_(v57, v61, a1 + 292, 4, 0);
            objc_msgSend_setBuffer_offset_atIndex_(v57, v73, *(a1 + 120), 0, 1);
            objc_msgSend_setBytes_length_atIndex_(v57, v74, a1 + 224, 64, 2);
            objc_msgSend_setBytes_length_atIndex_(v57, v75, a3, 16, 3);
            objc_msgSend_setBytes_length_atIndex_(v57, v76, &unk_2461440D6, 1, 4);
            objc_msgSend_setBytes_length_atIndex_(v57, v77, &unk_2461440D7, 1, 5);
            v79 = 6;
          }

          objc_msgSend_setBuffer_offset_atIndex_(v57, v78, *(a1 + 136), 0, v79);
LABEL_36:
          v89 = *(a1 + 208);
          v90 = *(a1 + 216);
          v91 = objc_msgSend_threadExecutionWidth(*(a1 + 8), v61, v62);
          v94 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 8), v92, v93);
          v109 = v89;
          v110 = v90;
          *&v111.f64[0] = 1;
          v113[0] = v91;
          v113[1] = v94 / v91;
          v113[2] = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v57, v95, &v109, v113);
          objc_msgSend_endEncoding(v57, v96, v97);

          if (*(a1 + 192) == 4)
          {
            sub_24610AABC(a1, v41, a3);
          }

          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = sub_24610AC5C;
          v107[3] = &unk_278E9B348;
          v107[4] = a1;
          v107[5] = a6;
          objc_msgSend_addCompletedHandler_(v41, v98, v107);
          objc_msgSend_commit(v41, v99, v100);
          objc_msgSend_waitUntilCompleted(v41, v101, v102);

          return 1;
        }
      }
    }
  }

  return result;
}

void sub_24610AABC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_computeCommandEncoder(a2, a2, a3);
  objc_msgSend_setLabel_(v5, v6, @"GOMDProcessEncoder");
  objc_msgSend_setComputePipelineState_(v5, v7, *(a1 + 24));
  objc_msgSend_setBuffer_offset_atIndex_(v5, v8, *(a1 + 456), 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v5, v9, &unk_2461440D8, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v5, v10, a1 + 292, 4, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v11, *(a1 + 120), 0, 3);
  objc_msgSend_setBytes_length_atIndex_(v5, v12, a1 + 224, 64, 4);
  objc_msgSend_setBytes_length_atIndex_(v5, v13, a3, 16, 5);
  objc_msgSend_setBytes_length_atIndex_(v5, v14, a1 + 488, 4, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v15, *(a1 + 464), 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v16, *(a1 + 136), 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v17, *(a1 + 472), 0, 9);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v18, *(a1 + 480), 0, 10);
  v19 = *(a1 + 292);
  v22 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 24), v20, v21);
  v24 = *(a1 + 292);
  if (v22 < v24)
  {
    v24 = v22;
  }

  v29 = v19;
  v30 = vdupq_n_s64(1uLL);
  v27 = v24;
  v28 = v30;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v5, v23, &v29, &v27);
  objc_msgSend_endEncoding(v5, v25, v26);
}

void sub_24610AC5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_24610AC74(*(a1 + 32), v1, 0);
  }
}

void sub_24610AC74(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 192);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return;
      }

      v16 = objc_msgSend_contents(*(a1 + 136), a2, a3);
      v19 = objc_msgSend_contents(*(a1 + 408), v17, v18);
      v14 = vcvtps_u32_f32(*(a1 + 292) / 500.0);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_24610B054;
      v38[3] = &unk_278E9B368;
      v38[4] = a1;
      v38[5] = v19;
      v38[6] = a2;
      v38[7] = v16;
      v15 = v38;
    }

    else
    {
      v34 = objc_msgSend_contents(*(a1 + 136), a2, a3);
      v14 = vcvtps_u32_f32(*(a1 + 292) / 500.0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_24610AF98;
      block[3] = &unk_278E9B4F0;
      block[4] = a1;
      block[5] = a2;
      block[6] = v34;
      v15 = block;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v20 = objc_msgSend_contents(*(a1 + 136), a2, a3);
        v14 = vcvtps_u32_f32(*(a1 + 292) / 500.0);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_24610B0C8;
        v37[3] = &unk_278E9B4F0;
        v37[4] = a1;
        v37[5] = a2;
        v37[6] = v20;
        v15 = v37;
        break;
      case 3:
        v21 = objc_msgSend_contents(*(a1 + 136), a2, a3);
        v24 = objc_msgSend_contents(*(a1 + 424), v22, v23);
        v27 = objc_msgSend_contents(*(a1 + 432), v25, v26);
        v30 = objc_msgSend_contents(*(a1 + 440), v28, v29);
        v33 = objc_msgSend_contents(*(a1 + 448), v31, v32);
        v14 = vcvtps_u32_f32(*(a1 + 292) / 500.0);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = sub_24610B3E8;
        v36[3] = &unk_278E9B388;
        v36[4] = a1;
        v36[5] = v24;
        v36[6] = a2;
        v36[7] = v21;
        v36[8] = v27;
        v36[9] = v30;
        v36[10] = v33;
        v15 = v36;
        break;
      case 4:
        v7 = objc_msgSend_contents(*(a1 + 136), a2, a3);
        v10 = objc_msgSend_contents(*(a1 + 472), v8, v9);
        v13 = objc_msgSend_contents(*(a1 + 464), v11, v12);
        v14 = vcvtps_u32_f32(*(a1 + 292) / 500.0);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = sub_24610B4E0;
        v35[3] = &unk_278E9B3A8;
        v35[4] = a1;
        v35[5] = v13;
        v35[6] = a2;
        v35[7] = v7;
        v35[8] = v10;
        v35[9] = a3;
        v15 = v35;
        break;
      default:
        return;
    }
  }

  dispatch_apply(v14, 0, v15);
}

uint64_t sub_24610AF98(uint64_t result, uint64_t a2)
{
  v2 = 500 * a2;
  v3 = *(*(result + 32) + 292);
  if (500 * a2 + 500 < v3)
  {
    v3 = 500 * a2 + 500;
  }

  v4 = v3 - v2;
  if (v3 > v2)
  {
    v5 = *(result + 48);
    v6 = **(result + 40);
    if (v4 > 7)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFFF8;
      v8 = 2000 * a2 + 16;
      v9 = (v6 + v8);
      v10 = (v5 + v8);
      __asm { FMOV            V0.4S, #1.0 }

      v16 = v4 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v17 = vbicq_s8(_Q0, vceqzq_s32(*v10));
        v9[-1] = vbicq_s8(_Q0, vceqzq_s32(v10[-1]));
        *v9 = v17;
        v9 += 2;
        v10 += 2;
        v16 -= 8;
      }

      while (v16);
      if (v4 == v7)
      {
        return result;
      }

      v2 += v7;
    }

    v18 = v3 - v2;
    v19 = 4 * v2;
    v20 = (v6 + 4 * v2);
    v21 = (v5 + v19);
    do
    {
      if (*v21++)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = 0.0;
      }

      *v20++ = v23;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_24610B054(uint64_t result, uint64_t a2)
{
  v2 = 500 * a2;
  v3 = *(*(result + 32) + 292);
  if (500 * a2 + 500 < v3)
  {
    v3 = 500 * a2 + 500;
  }

  if (v2 < v3)
  {
    v4 = *(result + 40);
    v5 = **(result + 48);
    do
    {
      v7 = *(v4 + 4 * v2);
      if (v7)
      {
        v6 = (*(*(result + 56) + 4 * v2) / v7) / 1000.0;
      }

      else
      {
        v6 = 0.0;
      }

      *(v5 + 4 * v2++) = v6;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_24610B0C8(uint64_t result, uint64_t a2, double a3, float a4)
{
  v4 = 500 * a2;
  v5 = 500 * a2 + 500;
  if (v5 >= *(*(result + 32) + 292))
  {
    v5 = *(*(result + 32) + 292);
  }

  v6 = v5 - v4;
  if (v5 > v4)
  {
    v7 = *(result + 48);
    v8 = **(result + 40);
    if (v7 + 32000 * a2 >= v8 + 4 * v5 || v8 + 2000 * a2 >= v7 + (v5 << 6))
    {
      v13 = (v8 + 2000 * a2);
      v14 = (v7 + 32000 * a2 + 32);
      do
      {
        v16 = v14[-2];
        v15 = v14[-1];
        v17 = vcvtq_f32_u32(vqtbl1q_s8(v16, xmmword_24613FBE0));
        v18 = vcvtq_f32_u32(vqtbl1q_s8(v16, xmmword_24613FBF0));
        v19 = ((((((*v13 + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3]) + v18.f32[0]) + v18.f32[1]) + v18.f32[2];
        v20 = vqtbl1q_s8(v16, xmmword_24613FC00);
        v21 = vcvtq_f32_u32(vqtbl1q_s8(v16, xmmword_24613FC10));
        v22 = vcvtq_f32_u32(v20);
        v18.i32[0] = v21.i32[3];
        v23 = (((((((v19 + v18.f32[3]) + v22.f32[0]) + v22.f32[1]) + v22.f32[2]) + v22.f32[3]) + v21.f32[0]) + v21.f32[1]) + v21.f32[2];
        v24 = vqtbl1q_s8(v15, xmmword_24613FBF0);
        v25 = vcvtq_f32_u32(vqtbl1q_s8(v15, xmmword_24613FBE0));
        v26 = (((v23 + v18.f32[0]) + v25.f32[0]) + v25.f32[1]) + v25.f32[2];
        v27 = vqtbl1q_s8(v15, xmmword_24613FC00);
        v28 = vcvtq_f32_u32(vqtbl1q_s8(v15, xmmword_24613FC10));
        v29 = vcvtq_f32_u32(v24);
        v30 = vcvtq_f32_u32(v27);
        v25.f32[0] = ((((((((((((v26 + v25.f32[3]) + v29.f32[0]) + v29.f32[1]) + v29.f32[2]) + v29.f32[3]) + v30.f32[0]) + v30.f32[1]) + v30.f32[2]) + v30.f32[3]) + v28.f32[0]) + v28.f32[1]) + v28.f32[2]) + v28.f32[3];
        v32 = *v14;
        v31 = v14[1];
        v14 += 4;
        v33 = vcvtq_f32_u32(vqtbl1q_s8(v32, xmmword_24613FBE0));
        v34 = vcvtq_f32_u32(vqtbl1q_s8(v32, xmmword_24613FBF0));
        v25.f32[0] = ((((((v25.f32[0] + v33.f32[0]) + v33.f32[1]) + v33.f32[2]) + v33.f32[3]) + v34.f32[0]) + v34.f32[1]) + v34.f32[2];
        v35 = vcvtq_f32_u32(vqtbl1q_s8(v32, xmmword_24613FC00));
        v36 = vcvtq_f32_u32(vqtbl1q_s8(v32, xmmword_24613FC10));
        v36.f32[0] = (((((((v25.f32[0] + v34.f32[3]) + v35.f32[0]) + v35.f32[1]) + v35.f32[2]) + v35.f32[3]) + v36.f32[0]) + v36.f32[1]) + v36.f32[2];
        v37 = vcvtq_f32_u32(vqtbl1q_s8(v31, xmmword_24613FBE0));
        v38 = vcvtq_f32_u32(vqtbl1q_s8(v31, xmmword_24613FBF0));
        v36.f32[0] = (((((((v36.f32[0] + v36.f32[3]) + v37.f32[0]) + v37.f32[1]) + v37.f32[2]) + v37.f32[3]) + v38.f32[0]) + v38.f32[1]) + v38.f32[2];
        v39 = vcvtq_f32_u32(vqtbl1q_s8(v31, xmmword_24613FC00));
        v40 = vcvtq_f32_u32(vqtbl1q_s8(v31, xmmword_24613FC10));
        *v13++ = ((((((((v36.f32[0] + v38.f32[3]) + v39.f32[0]) + v39.f32[1]) + v39.f32[2]) + v39.f32[3]) + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3];
        --v6;
      }

      while (v6);
    }

    else
    {
      v10 = v7 + 32000 * a2;
      do
      {
        v11 = 0;
        v12 = *(v8 + 4 * v4);
        do
        {
          LOBYTE(a4) = *(v10 + v11);
          a4 = LODWORD(a4);
          v12 = v12 + a4;
          *(v8 + 4 * v4) = v12;
          ++v11;
        }

        while (v11 != 64);
        ++v4;
        v10 += 64;
      }

      while (v4 != v5);
    }
  }

  return result;
}

uint64_t sub_24610B3E8(uint64_t result, uint64_t a2)
{
  v2 = 500 * a2;
  v3 = *(*(result + 32) + 292);
  if (500 * a2 + 500 < v3)
  {
    v3 = 500 * a2 + 500;
  }

  if (v2 < v3)
  {
    v4 = 2000 * a2;
    v5 = 8000 * a2;
    v6 = 10000 * a2 + 16;
    do
    {
      if (*(*(result + 40) + v2))
      {
        v7 = *(result + 56) + v6;
        *(**(result + 48) + v4) = *(v7 - 16) + *(**(result + 48) + v4);
        v8 = *(result + 72);
        *(*(result + 64) + v4) = *(v7 - 12);
        *(v8 + v5) = *(v7 - 8) + *(v8 + v5);
        *(*(result + 72) + 4 * v4 + 4) = *(*(result + 56) + v6 - 4) + *(*(result + 72) + 4 * v4 + 4);
        *(*(result + 72) + 4 * v4 + 8) = *(*(result + 56) + v6) + *(*(result + 72) + 4 * v4 + 8);
        ++*(*(result + 80) + v4);
      }

      ++v2;
      v4 += 4;
      v5 += 16;
      v6 += 20;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_24610B4E0(uint64_t result, uint64_t a2)
{
  v2 = 500 * a2;
  v3 = *(*(result + 32) + 292);
  if (500 * a2 + 500 < v3)
  {
    v3 = 500 * a2 + 500;
  }

  if (v2 < v3)
  {
    v4 = 0;
    v5 = *(result + 40);
    v6 = (2000 * a2) | 4;
    v7 = 256000 * a2;
    v8 = (256000 * a2) | 0x10;
    v9 = 64000 * a2;
    v10 = 256000 * a2;
    do
    {
      v11 = *(v5 + 4 * v2);
      if (v11)
      {
        v12 = *(result + 56);
        v13 = **(result + 48);
        v14 = (v13 + 4 * v2);
        v15 = *(result + 64);
        v16 = *(result + 72);
        v17 = *v14;
        if (v16)
        {
          v18 = 0;
          v19 = *(v16 + 4 * v2) + 1;
          v20 = v15 + v10;
          v21 = v12 + v10;
          do
          {
            v17 = v17 + (*(v21 + 4 * v18) * (*(v20 + 4 * v18) * *(v20 + 4 * v18)));
            *(v16 + 4 * v2) = v19;
            *v14 = v17;
            ++v18;
            ++v19;
          }

          while (v18 < *(v5 + 4 * v2));
        }

        else
        {
          if (v11 >= 8)
          {
            v22 = 0;
            v30 = v7 + (v4 << 9);
            v31 = v13 + v6 + 4 * v4;
            v32 = v30 + 4 * v11;
            v33 = v12 + v32;
            v35 = v14 < v15 + v32 && v15 + v30 < v31;
            if ((v12 + v30 >= v31 || v14 >= v33) && !v35)
            {
              v22 = v11 & 0xFFFFFFF8;
              v37 = (v12 + v8);
              v38 = (v15 + v8);
              v39 = v22;
              do
              {
                v40 = vmulq_f32(v37[-1], vmulq_f32(v38[-1], v38[-1]));
                v41 = vmulq_f32(*v37, vmulq_f32(*v38, *v38));
                v17 = (((((((v17 + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3]) + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3];
                v37 += 2;
                v38 += 2;
                v39 -= 8;
              }

              while (v39);
              *v14 = v17;
              if (v22 == v11)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = v11 - v22;
          v24 = 4 * (v22 + v9);
          v25 = (v15 + v24);
          v26 = (v12 + v24);
          do
          {
            v27 = *v26++;
            v28 = v27;
            v29 = *v25++;
            v17 = v17 + (v28 * (v29 * v29));
            *v14 = v17;
            --v23;
          }

          while (v23);
        }
      }

LABEL_5:
      ++v2;
      ++v4;
      v10 += 512;
      v8 += 512;
      v9 += 128;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_24610B6C8(uint64_t a1, uint64_t *a2, int32x2_t a3)
{
  if (*(a1 + 192) == 4)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      if (*v4 && *(v4 + 8) && *(v4 + 16))
      {
        v6 = *(a1 + 292);
        LODWORD(v138[0]) = 0;
        sub_246109FF8((v4 + 48), v6, v138, a3);
        v9 = *(a1 + 128);
        v10 = v9[9];
        v11 = *(a1 + 292);
        v12 = v9[11];
        if (v11 > (v12 - v10) >> 2)
        {
          if (v10)
          {
            v9[10] = v10;
            operator delete(v10);
            v12 = 0;
            v9[9] = 0;
            v9[10] = 0;
            v9[11] = 0;
          }

          v13 = v12 >> 1;
          if (v12 >> 1 <= v11)
          {
            v13 = v11;
          }

          v14 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
          v15 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v14)
          {
            v15 = v13;
          }

          if (!(v15 >> 62))
          {
            operator new();
          }

          sub_2460D368C();
        }

        v16 = v9[10];
        v17 = (v16 - v10) >> 2;
        if (v17 >= v11)
        {
          v18 = *(a1 + 292);
        }

        else
        {
          v18 = (v16 - v10) >> 2;
        }

        if (v18)
        {
          if (v18 < 8)
          {
            v19 = v9[9];
            goto LABEL_25;
          }

          v19 = &v10[4 * (v18 & 0xFFFFFFF8)];
          v20 = v9[9];
          v21 = v18 & 0xFFFFFFF8;
          do
          {
            *v20 = 0uLL;
            v20[1] = 0uLL;
            v20 += 2;
            v21 -= 8;
          }

          while (v21);
          if (v18 != (v18 & 0xFFFFFFF8))
          {
            v18 &= 7u;
            do
            {
LABEL_25:
              *v19 = 0;
              v19 += 4;
              --v18;
            }

            while (v18);
          }
        }

        v14 = v11 >= v17;
        v22 = v11 - v17;
        if (v22 == 0 || !v14)
        {
          v9[10] = &v10[4 * v11];
          goto LABEL_35;
        }

        v23 = &v16[4 * v22];
        v24 = 4 * v11 - (v16 - v10) - 4;
        if (v24 >= 0x1C)
        {
          v25 = (v24 >> 2) + 1;
          v26 = v16;
          v27 = v25 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            *v26 = 0uLL;
            *(v26 + 1) = 0uLL;
            v26 += 32;
            v27 -= 8;
          }

          while (v27);
          if (v25 == (v25 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_34;
          }

          v16 += 4 * (v25 & 0x7FFFFFFFFFFFFFF8);
        }

        do
        {
          *v16 = 0;
          v16 += 4;
        }

        while (v16 != v23);
LABEL_34:
        v9[10] = v23;
LABEL_35:
        if (*a2 != a2[1])
        {
          v28 = objc_msgSend_contents(*(a1 + 136), v7, v8);
          v31 = objc_msgSend_length(*(a1 + 136), v29, v30);
          bzero(v28, v31);
          v34 = objc_msgSend_contents(*(a1 + 464), v32, v33);
          v37 = objc_msgSend_length(*(a1 + 464), v35, v36);
          bzero(v34, v37);
          v40 = objc_msgSend_contents(*(a1 + 472), v38, v39);
          v43 = objc_msgSend_length(*(a1 + 472), v41, v42);
          bzero(v40, v43);
          v46 = objc_msgSend_contents(*(a1 + 480), v44, v45);
          v49 = objc_msgSend_length(*(a1 + 480), v47, v48);
          bzero(v46, v49);
          v50 = *a2;
          v51 = a2[1];
          if (*a2 != v51)
          {
            v52 = MEMORY[0x277D860B0];
            v53 = vdupq_n_s32(0x38D1B717u);
            v132 = v53;
            v54 = vdup_n_s32(0x38D1B717u);
            v53.i64[0] = 0;
            v131 = v53;
            do
            {
              kdebug_trace();
              v57 = objc_msgSend_contents(*(a1 + 456), v55, v56);
              v60 = objc_msgSend_length(*(a1 + 456), v58, v59);
              bzero(v57, v60);
              v134 = *(v50 + 128);
              v135 = *(v50 + 144);
              v136 = *(v50 + 160);
              v137 = *(v50 + 112);
              v133 = *(v50 + 176);
              v61 = atan2f(*(v50 + 4), *(v50 + 36) + *(v50 + 36));
              v62 = v52[1];
              v63 = v52[2];
              v64 = vandq_s8(vandq_s8(vcgeq_f32(v132, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v134, *v134.f32, 1), v135, *v135.f32, 1), v136, *v136.f32, 1), v62)), vcgeq_f32(v132, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v134, v134.f32[0]), v135, v135.f32[0]), v136, v136.f32[0]), *v52))), vcgeq_f32(v132, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v134, v134, 2), v135, v135, 2), v136, v136, 2), v63)));
              v64.i32[3] = v64.i32[2];
              if ((vminvq_u32(v64) & 0x80000000) == 0)
              {
                return 0;
              }

              v65 = vzip1q_s32(vzip2q_s32(v134, v136), vdupq_laneq_s32(v135, 2));
              v66 = vtrn2q_s32(v134, v135);
              v66.i32[2] = v136.i32[1];
              v67 = vzip1q_s32(vzip1q_s32(v134, v136), v135);
              v68 = vandq_s8(vandq_s8(vcgeq_f32(v132, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v135.f32[0]), v66, *v135.f32, 1), v65, v135, 2), v62)), vcgeq_f32(v132, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v134.f32[0]), v66, *v134.f32, 1), v65, v134, 2), *v52))), vcgeq_f32(v132, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v136.f32[0]), v66, *v136.f32, 1), v65, v136, 2), v63)));
              v68.i32[3] = v68.i32[2];
              if ((vminvq_u32(v68) & 0x80000000) == 0)
              {
                return 0;
              }

              v69 = vmulq_f32(v134, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v136, v136, 0xCuLL), v136, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v135, v135), v135, 0xCuLL))), vextq_s8(vuzp1q_s32(v136, v136), v136, 0xCuLL), vextq_s8(vextq_s8(v135, v135, 0xCuLL), v135, 8uLL)));
              if (fabsf((v69.f32[2] + vaddv_f32(*v69.f32)) + -1.0) > 0.000011)
              {
                return 0;
              }

              v70 = v61 + v61;
              if (v70 >= 3.1416)
              {
                return 0;
              }

              if (v70 <= 0.0)
              {
                return 0;
              }

              v71 = vand_s8(vcge_f32(v54, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v136, v136, 8uLL), *&vextq_s8(v133, v133, 8uLL)), 0xBF80000080000000))), vcge_f32(v54, vabs_f32(vzip2_s32(*&vextq_s8(v134, v134, 8uLL), *&vextq_s8(v135, v135, 8uLL)))));
              if ((vpmin_u32(v71, v71).u32[0] & 0x80000000) == 0)
              {
                return 0;
              }

              v72 = *(a1 + 208) / *(a1 + 216);
              if (v72 < 0.001)
              {
                return 0;
              }

              if (v70 < 0.0)
              {
                return 0;
              }

              if (fabsf(v70) <= 0.000001)
              {
                return 0;
              }

              v73 = *(a1 + 200);
              v74 = *(a1 + 204);
              if (v74 <= v73 || v74 < 0.001 || v73 < 0.001 || fabsf(v70 + -3.1416) <= 0.000032416)
              {
                return 0;
              }

              v75 = 1.0 / tanf(v70 * 0.5);
              *&v76 = v75 / v72;
              LODWORD(v77) = 0;
              *(&v77 + 1) = v75;
              v78.i64[0] = v131.i64[0];
              v78.f32[2] = -v74 / (v74 - v73);
              v78.i32[3] = -1.0;
              v79.i64[0] = 0;
              v79.i32[3] = 0;
              v79.f32[2] = v78.f32[2] * v73;
              v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(*(a1 + 224))), v135, *(a1 + 224), 1), v136, *(a1 + 224), 2), v133, *(a1 + 224), 3);
              v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(*(a1 + 240))), v135, *(a1 + 240), 1), v136, *(a1 + 240), 2), v133, *(a1 + 240), 3);
              v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(*(a1 + 256))), v135, *(a1 + 256), 1), v136, *(a1 + 256), 2), v133, *(a1 + 256), 3);
              v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(*(a1 + 272))), v135, *(a1 + 272), 1), v136, *(a1 + 272), 2), v133, *(a1 + 272), 3);
              v138[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v80.f32[0]), v77, *v80.f32, 1), v78, v80, 2), v79, v80, 3);
              v138[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v81.f32[0]), v77, *v81.f32, 1), v78, v81, 2), v79, v81, 3);
              v138[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v82.f32[0]), v77, *v82.f32, 1), v78, v82, 2), v79, v82, 3);
              v138[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v83.f32[0]), v77, *v83.f32, 1), v78, v83, 2), v79, v83, 3);
              v86 = objc_msgSend_commandBuffer(*(*a1 + 8), v84, v85);
              v89 = *objc_msgSend_contents(*(*(a1 + 128) + 16), v87, v88);
              v91 = objc_msgSend_renderCommandEncoderWithDescriptor_(v86, v90, *(a1 + 176));
              objc_msgSend_setLabel_(v91, v92, @"VisibleMeshVertexIndexRenderEncoder");
              objc_msgSend_setRenderPipelineState_(v91, v93, *(a1 + 40));
              objc_msgSend_setDepthStencilState_(v91, v94, *(a1 + 48));
              objc_msgSend_setVertexBuffer_offset_atIndex_(v91, v95, *(*(a1 + 128) + 24), 0, 0);
              objc_msgSend_setVertexBuffer_offset_atIndex_(v91, v96, *(*(a1 + 128) + 8), 0, 1);
              objc_msgSend_setVertexBytes_length_atIndex_(v91, v97, v138, 64, 2);
              objc_msgSend_setVertexBytes_length_atIndex_(v91, v98, a1 + 224, 64, 3);
              objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v91, v99, 3, 0, v89);
              v139 = 0;
              v140 = 0;
              v141 = vcvtq_f64_u64(*(a1 + 208));
              v142 = xmmword_24613FB40;
              objc_msgSend_setViewport_(v91, v100, &v139);
              objc_msgSend_endEncoding(v91, v101, v102);

              v103 = v86;
              v106 = v103;
              if (*(a1 + 192) == 4)
              {
                v107 = objc_msgSend_computeCommandEncoder(v103, v104, v105);
                objc_msgSend_setLabel_(v107, v108, @"FetchVisiblemeshVertexEncoder");
                objc_msgSend_setComputePipelineState_(v107, v109, *(a1 + 16));
                objc_msgSend_setTexture_atIndex_(v107, v110, *(a1 + 144), 0);
                objc_msgSend_setBytes_length_atIndex_(v107, v111, a1 + 292, 4, 0);
                objc_msgSend_setBuffer_offset_atIndex_(v107, v112, *(*(a1 + 128) + 16), 0, 1);
                objc_msgSend_setBuffer_offset_atIndex_(v107, v113, *(*(a1 + 128) + 24), 0, 2);
                objc_msgSend_setBuffer_offset_atIndex_(v107, v114, *(a1 + 456), 0, 3);
                v116 = *(a1 + 208);
                v115 = *(a1 + 216);
                v119 = objc_msgSend_threadExecutionWidth(*(a1 + 8), v117, v118);
                v122 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 8), v120, v121);
                v139 = v116;
                v140 = v115;
                *&v141.f64[0] = 1;
                v143[0] = v119;
                v143[1] = v122 / v119;
                v143[2] = 1;
                objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v107, v123, &v139, v143);
                objc_msgSend_endEncoding(v107, v124, v125);
              }

              if (*(a1 + 192) == 4)
              {
                sub_24610AABC(a1, v106, &v137);
              }

              objc_msgSend_commit(v106, v126, v127, *&v131);
              objc_msgSend_waitUntilCompleted(v106, v128, v129);

              kdebug_trace();
              v50 += 192;
            }

            while (v50 != v51);
          }

          sub_24610AC74(a1, (*(a1 + 128) + 48), *(*(a1 + 128) + 72));
        }

        return 1;
      }
    }
  }

  return 0;
}

void sub_24610C034(void *a1, const char *a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = objc_msgSend_contents(*(v3 + 136), a2, a3);
  v7 = vcvtps_u32_f32(*(v3 + 292) / 500.0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_24610C0E4;
  v8[3] = &unk_278E9B368;
  v8[4] = v3;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v6;
  dispatch_apply(v7, 0, v8);
}

uint64_t sub_24610C0E4(uint64_t result, uint64_t a2, double a3, float32x4_t a4)
{
  v4 = 500 * a2;
  v5 = 500 * a2 + 500;
  if (v5 >= *(*(result + 32) + 292))
  {
    v5 = *(*(result + 32) + 292);
  }

  v6 = v5 - v4;
  if (v5 > v4)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(result + 56);
      v9 = **(result + 48);
      if (v7 <= 3)
      {
        v10 = (v9 + 2000 * a2);
        v11 = (v8 + 64000 * a2 + 2);
        do
        {
          a4.i8[0] = *(v11 - 2);
          a4.f32[0] = a4.u32[0];
          v12 = *v10 + a4.f32[0];
          *v10 = v12;
          if (v7 != 1)
          {
            a4.i8[0] = *(v11 - 1);
            a4.f32[0] = a4.u32[0];
            v13 = v12 + a4.f32[0];
            *v10 = v13;
            if (v7 != 2)
            {
              a4.i8[0] = *v11;
              a4.f32[0] = a4.u32[0];
              *v10 = v13 + a4.f32[0];
            }
          }

          ++v10;
          v11 += 128;
          --v6;
        }

        while (v6);
        return result;
      }

      v14 = 64000 * a2;
      v15 = v8 + 64000 * a2;
      if (v9 + 2000 * a2 < v8 + v7 + (v5 << 7) - 128 && v15 < v9 + 4 * v5)
      {
        do
        {
          v19 = *(v9 + 4 * v4);
          v20 = v15;
          v21 = v7;
          do
          {
            v22 = *v20++;
            v19 = v19 + v22;
            *(v9 + 4 * v4) = v19;
            --v21;
          }

          while (v21);
          ++v4;
          v15 += 128;
        }

        while (v4 != v5);
        return result;
      }

      v17 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      if (v7 < 0x20)
      {
        v18 = (v8 + v14 + v17);
        do
        {
          v23 = (v8 + (v4 << 7));
          a4.i32[0] = *v23;
          a4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a4.f32)));
          v24 = (((*(v9 + 4 * v4) + a4.f32[0]) + a4.f32[1]) + a4.f32[2]) + a4.f32[3];
          if (v17 != 4)
          {
            a4.i32[0] = v23[1];
            a4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a4.f32)));
            v24 = (((v24 + a4.f32[0]) + a4.f32[1]) + a4.f32[2]) + a4.f32[3];
            if (v17 != 8)
            {
              a4.i32[0] = v23[2];
              a4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a4.f32)));
              v24 = (((v24 + a4.f32[0]) + a4.f32[1]) + a4.f32[2]) + a4.f32[3];
              if (v17 != 12)
              {
                a4.i32[0] = v23[3];
                a4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a4.f32)));
                v24 = (((v24 + a4.f32[0]) + a4.f32[1]) + a4.f32[2]) + a4.f32[3];
                if (v17 != 16)
                {
                  a4.i32[0] = v23[4];
                  a4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a4.f32)));
                  v24 = (((v24 + a4.f32[0]) + a4.f32[1]) + a4.f32[2]) + a4.f32[3];
                  if (v17 != 20)
                  {
                    a4.i32[0] = v23[5];
                    a4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a4.f32)));
                    v24 = (((v24 + a4.f32[0]) + a4.f32[1]) + a4.f32[2]) + a4.f32[3];
                    if (v17 != 24)
                    {
                      a4.i32[0] = v23[6];
                      a4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a4.f32)));
                      v24 = (((v24 + a4.f32[0]) + a4.f32[1]) + a4.f32[2]) + a4.f32[3];
                    }
                  }
                }
              }
            }
          }

          *(v9 + 4 * v4) = v24;
          v25 = v18;
          v26 = v7 - v17;
          if (v7 != v17)
          {
            do
            {
              v27 = *v25++;
              result = v27;
              v24 = v24 + v27;
              *(v9 + 4 * v4) = v24;
              --v26;
            }

            while (v26);
          }

          ++v4;
          v18 += 128;
        }

        while (v4 != v5);
        return result;
      }

      v28 = v14 + v8;
      v29 = v14 + v8 + 16;
      result = v28 + (v7 & 0xFFFFFFFFFFFFFFE0);
      do
      {
        v30 = *(v9 + 4 * v4);
        v31 = v29;
        v32 = v7 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v33 = v31[-1];
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v33, xmmword_24613FBE0));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v33, xmmword_24613FBF0));
          v36 = ((((((v30 + v34.f32[0]) + v34.f32[1]) + v34.f32[2]) + v34.f32[3]) + v35.f32[0]) + v35.f32[1]) + v35.f32[2];
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v33, xmmword_24613FC00));
          v38 = vcvtq_f32_u32(vqtbl1q_s8(v33, xmmword_24613FC10));
          v39 = ((((((v36 + v35.f32[3]) + v37.f32[0]) + v37.f32[1]) + v37.f32[2]) + v37.f32[3]) + v38.f32[0]) + v38.f32[1];
          v37.i32[0] = v38.i32[3];
          v40 = v39 + v38.f32[2];
          v41 = vcvtq_f32_u32(vqtbl1q_s8(*v31, xmmword_24613FBE0));
          v42 = (((v40 + v37.f32[0]) + v41.f32[0]) + v41.f32[1]) + v41.f32[2];
          v43 = vcvtq_f32_u32(vqtbl1q_s8(*v31, xmmword_24613FBF0));
          v44 = (((v42 + v41.f32[3]) + v43.f32[0]) + v43.f32[1]) + v43.f32[2];
          v45 = vcvtq_f32_u32(vqtbl1q_s8(*v31, xmmword_24613FC00));
          v46 = vcvtq_f32_u32(vqtbl1q_s8(*v31, xmmword_24613FC10));
          v30 = ((((((((v44 + v43.f32[3]) + v45.f32[0]) + v45.f32[1]) + v45.f32[2]) + v45.f32[3]) + v46.f32[0]) + v46.f32[1]) + v46.f32[2]) + v46.f32[3];
          v31 += 2;
          v32 -= 32;
        }

        while (v32);
        *(v9 + 4 * v4) = v30;
        if (v7 == (v7 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_34;
        }

        if ((v7 & 0x1C) != 0)
        {
          v47 = result;
          v48 = v17 - (v7 & 0xFFFFFFFFFFFFFFE0);
          do
          {
            v49 = *v47++;
            v46.i32[0] = v49;
            v46 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v46.f32)));
            v30 = (((v30 + v46.f32[0]) + v46.f32[1]) + v46.f32[2]) + v46.f32[3];
            v48 -= 4;
          }

          while (v48);
          *(v9 + 4 * v4) = v30;
          v50 = v7 & 0xFFFFFFFFFFFFFFFCLL;
          if (v7 == v17)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v50 = v7 & 0xFFFFFFFFFFFFFFE0;
        }

        v51 = v7 - v50;
        v52 = (v15 + v50);
        do
        {
          v53 = *v52++;
          v30 = v30 + v53;
          *(v9 + 4 * v4) = v30;
          --v51;
        }

        while (v51);
LABEL_34:
        ++v4;
        v29 += 128;
        result += 128;
        v15 += 128;
      }

      while (v4 != v5);
    }
  }

  return result;
}

uint64_t sub_24610C618(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v4 = 0;
  if (!a2)
  {
    goto LABEL_24;
  }

  v6 = 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    return v6 | v4;
  }

  if (!a2[1] || (v7 = a2[3]) == 0)
  {
    v4 = 0;
    v6 = 0;
    return v6 | v4;
  }

  v4 = 0;
  if (v7 <= a3)
  {
LABEL_24:
    v6 = 0;
    return v6 | v4;
  }

  v6 = 0;
  v28 = a2[4];
  if (v28 > a4)
  {
    v8 = *(a1 + 8);
    v9 = v8 >> 1;
    v10 = a4 - (v8 >> 1);
    v11 = 0.0;
    v29 = (v8 >> 1) + a4;
    if (v10 >= v29 || v8 < 1)
    {
      v14 = 0.0;
    }

    else
    {
      v27 = a2[1];
      v12 = a3 - v9;
      v13 = v9 + a3;
      v14 = 0.0;
      if (a3 - v9 < v9 + a3)
      {
        v15 = 0;
        v26 = a2[5];
        v30 = v27 + v26 * a4;
        v16 = *(a1 + 8) & 0x7FFFFFFFLL;
        do
        {
          if ((v10 & 0x80000000) == 0 && v10 < v28)
          {
            v17 = 0;
            v18 = 1;
            do
            {
              v19 = v12 + v18 - 1;
              if ((v19 & 0x80000000) == 0 && v19 < v7)
              {
                v20 = *(v27 + v26 * v10 + 4 * v19);
                v21 = *(*(*(a1 + 32) + v17) + 4 * v15);
                v22 = *(a1 + 20) * *(a1 + 20);
                v23 = v21 * ((expf((((*(v30 + 4 * a3) - v20) * (*(v30 + 4 * a3) - v20)) * -0.5) / v22) * 0.15915) / v22);
                v11 = v11 + (v23 * v20);
                v14 = v14 + v23;
              }

              if (v12 + v18 >= v13)
              {
                break;
              }

              v17 += 24;
            }

            while (v18++ < v16);
          }

          if (++v10 >= v29)
          {
            break;
          }

          ++v15;
        }

        while (v15 < v16);
      }
    }

    v6 = COERCE_UNSIGNED_INT(v11 / v14);
    v4 = 0x100000000;
  }

  return v6 | v4;
}

uint64_t sub_24610C81C(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >= 2 && (a2 & 1) != 0)
  {
    if (*(a1 + 24) == 1)
    {
      *(a1 + 8) = a2;
      sub_24610C86C(a1);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_24610C86C(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2 != v3)
  {
    v4 = a1[5];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[5] = v3;
  v7 = a1[1];
  if (v7)
  {
    if (!(v7 >> 62))
    {
      operator new();
    }

    sub_2460D368C();
  }

  v8 = a1[4];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v8) >> 3))
  {
    if (v3 != v8)
    {
      v9 = v3;
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v3 - 16) = v10;
          operator delete(v10);
        }

        v3 = v9;
      }

      while (v9 != v8);
    }

    a1[5] = v8;
  }

  v12 = a1[1];
  v13 = v12 >> 1;
  if (((v12 >> 1) & 0x80000000) == 0 && v12 >= 1)
  {
    v14 = -v13;
    v15 = (a1 + 2);
    v52 = a1[4];
    v16 = a1[1] & 0x7FFFFFFFLL;
    v17 = a1[1] & 0x7FFFFFFELL;
    if (v17)
    {
      v18 = a1[1] & 0x7FFFFFFFLL;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18 - 1;
    if (v19 < v17)
    {
      v17 = v19;
    }

    if (v17 < 3)
    {
      v20 = 0;
      do
      {
        v21 = 0;
        v22 = v14;
        v23 = v14 * v14;
        v24 = *(v52 + 24 * v20);
        do
        {
          v25 = *v15 * *v15;
          *(v24 + 4 * v21) = (expf(((v23 + (v21 - v13) * (v21 - v13)) * -0.5) / v25) * 0.15915) / v25;
          if (v21 - v13 >= v13)
          {
            break;
          }

          ++v21;
        }

        while (v21 < v16);
        if (v22 >= v13)
        {
          break;
        }

        v14 = v22 + 1;
        ++v20;
      }

      while (v20 < v16);
      return;
    }

    v26 = 0;
    v50 = (a1 + 20);
    v51 = v17;
    v48 = v17 + 1;
    v49 = (v17 + 1) & 0xFFFFFFFC;
    v47 = vaddq_s32(vdupq_n_s32(v14), xmmword_24613FBC0);
    v27 = -v13;
    v53 = vdupq_n_s32(0x3E22F983u);
    while (1)
    {
      v28 = v27 * v27;
      v29 = *(v52 + 24 * v26);
      v30 = v29 >= v50 || v15 >= &v29->f32[v51 + 1];
      if (!v30)
      {
        break;
      }

      v31 = vdupq_n_s32(v28);
      v54 = v31;
      *v31.i32 = *v15 * *v15;
      v56 = vdupq_lane_s32(*v31.i8, 0);
      v32 = *(v52 + 24 * v26);
      v33 = v49;
      v34 = v47;
      do
      {
        v55 = v34;
        v35.i64[0] = 0xBF000000BF000000;
        v35.i64[1] = 0xBF000000BF000000;
        v60 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmlaq_s32(v54, v34, v34)), v35), v56);
        v57 = expf(v60.f32[1]);
        v36.f32[0] = expf(v60.f32[0]);
        v36.f32[1] = v57;
        v58 = v36;
        v37 = expf(v60.f32[2]);
        v38 = v58;
        v38.f32[2] = v37;
        v59 = v38;
        v39 = expf(v60.f32[3]);
        v40 = v59;
        v40.f32[3] = v39;
        *v29++ = vdivq_f32(vmulq_f32(v40, v53), v56);
        v41.i64[0] = 0x400000004;
        v41.i64[1] = 0x400000004;
        v34 = vaddq_s32(v55, v41);
        v33 -= 4;
      }

      while (v33);
      v42 = v49;
      v43 = v49 - v13;
      v29 = v32;
      if (v48 != v49)
      {
        goto LABEL_40;
      }

LABEL_44:
      v14 = -v13;
      if (v27 < v13)
      {
        ++v27;
        if (++v26 < v16)
        {
          continue;
        }
      }

      return;
    }

    v42 = 0;
    v43 = v14;
LABEL_40:
    v44 = v42 + 1;
    v45 = &v29->f32[v42];
    do
    {
      v46 = *v15 * *v15;
      *v45++ = (expf(((v28 + v43 * v43) * -0.5) / v46) * 0.15915) / v46;
      if (v43 >= v13)
      {
        break;
      }

      ++v43;
      v30 = v44++ >= v16;
    }

    while (!v30);
    goto LABEL_44;
  }
}

void sub_24610CE08(void *a1)
{
  *a1 = &unk_2858EBE88;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      v5 = a1[5];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_24610CEBC(void *a1)
{
  *a1 = &unk_2858EBE88;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      v5 = a1[5];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  return a1;
}

float *sub_24610CF50(float *result, float *a2, double a3)
{
  if (result != a2)
  {
    v3 = a2 - result - 4;
    if (v3 >= 0x1C)
    {
      v4 = (v3 >> 2) + 1;
      v5 = vdupq_lane_s32(*&a3, 0);
      v6 = (result + 4);
      __asm { FMOV            V2.4S, #1.0 }

      v12 = v4 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v13 = vdivq_f32(v6[-1], v5);
        v14 = vdivq_f32(*v6, v5);
        v6[-1] = vbicq_s8(vbslq_s8(vcgtq_f32(v13, _Q2), _Q2, v13), vcltzq_f32(v13));
        *v6 = vbicq_s8(vbslq_s8(vcgtq_f32(v14, _Q2), _Q2, v14), vcltzq_f32(v14));
        v6 += 2;
        v12 -= 8;
      }

      while (v12);
      if (v4 == (v4 & 0x7FFFFFFFFFFFFFF8))
      {
        return result;
      }

      result += v4 & 0x7FFFFFFFFFFFFFF8;
    }

    do
    {
      v15 = *result / *&a3;
      if (v15 <= 1.0)
      {
        v16 = *result / *&a3;
      }

      else
      {
        v16 = 1.0;
      }

      if (v15 >= 0.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0.0;
      }

      *result++ = v17;
    }

    while (result != a2);
  }

  return result;
}

BOOL sub_24610D000(__CVBuffer *a1, CGRect *a2, void *a3, __CVBuffer *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    if (qword_27EE3F598 != -1)
    {
      dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
    }

    v13 = qword_27EE3F590;
    result = os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(v17) = 0;
    v12 = "Failed to crop and scale pixel buffer, pixel transfer session ref is nil!";
LABEL_11:
    v14 = v13;
    v15 = 2;
LABEL_18:
    _os_log_error_impl(&dword_2460CF000, v14, OS_LOG_TYPE_ERROR, v12, &v17, v15);
    return 0;
  }

  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*a2);
  v8 = *MEMORY[0x277CE28B8];
  v9 = VTSessionSetProperty(a3, *MEMORY[0x277CE28B8], DictionaryRepresentation);
  CFRelease(DictionaryRepresentation);
  if (v9)
  {
    if (qword_27EE3F598 != -1)
    {
      dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
    }

    v10 = qword_27EE3F590;
    result = os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 67240192;
      v18 = v9;
      v12 = "Failed to crop and scaled pixel buffer, unable to initialize pixel transfer session for image cropping: %{public}d";
LABEL_17:
      v14 = v10;
      v15 = 8;
      goto LABEL_18;
    }

    return result;
  }

  v16 = VTPixelTransferSessionTransferImage(a3, a1, a4);
  if (VTSessionSetProperty(a3, v8, 0))
  {
    if (qword_27EE3F598 != -1)
    {
      dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
    }

    v10 = qword_27EE3F590;
    result = os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 67240192;
      v18 = 0;
      v12 = "Failed to crop and scaled pixel buffer, unable to unset crop rectangle for  pixel transfer session for image cropping: %{public}d";
      goto LABEL_17;
    }

    return result;
  }

  if (!v16)
  {
    return 1;
  }

  if (qword_27EE3F598 != -1)
  {
    dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
  }

  v13 = qword_27EE3F590;
  result = os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(v17) = 0;
    v12 = "Failed to crop and scale image in VTPixelTransferSession";
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_24610D27C()
{
  qword_27EE3F590 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t *sub_24610D2C0(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_24610D314(v2);
    MEMORY[0x24C1995D0](v4, 0x10E0C40A317B3DBLL);
    return v3;
  }

  return v1;
}

uint64_t sub_24610D314(uint64_t a1)
{
  result = a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_24610D3B0(_BYTE *a1, CVPixelBufferRef pixelBuffer, size_t a3, size_t a4)
{
  result = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (result == 875704438)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    v10 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    v12 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    if (!BaseAddressOfPlane || !v10 || !BytesPerRowOfPlane)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (result != 875704422)
    {
      *a1 = 0;
      a1[16] = 0;
      return result;
    }

    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    v10 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    v12 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    if (!BaseAddressOfPlane || !v10 || !BytesPerRowOfPlane)
    {
      goto LABEL_18;
    }
  }

  if (v12 && Width > a3 && Height > a4)
  {
    v16 = &v10[v12 * (a4 >> 1) + (a3 & 0xFFFFFFFFFFFFFFFELL)];
    LOBYTE(v15) = BaseAddressOfPlane[BytesPerRowOfPlane * a4 + a3];
    v17.f32[0] = v15;
    v18 = (*v16 - 128);
    v19 = v17.f32[0] + (v18 * -0.39176);
    v20 = v17.f32[0] + (v18 * 2.0172);
    v17.f32[1] = v19;
    v21 = vdiv_f32(vmla_n_f32(v17, 0xBF501EA43FCC4A9ALL, (v16[1] - 128)), vdup_n_s32(0x437F0000u));
    __asm { FMOV            V3.2S, #1.0 }

    *&v15 = vbic_s8(vbsl_s8(vcgt_f32(v21, _D3), _D3, v21), vcltz_f32(v21));
    v27 = v20 / 255.0;
    v28 = 1.0;
    if (v27 <= 1.0)
    {
      v28 = v27;
    }

    _NF = v27 < 0.0;
    v29 = 0.0;
    if (!_NF)
    {
      v29 = v28;
    }

    *(&v15 + 2) = v29;
    *a1 = v15;
    v30 = 1;
    goto LABEL_19;
  }

LABEL_18:
  v30 = 0;
  *a1 = 0;
LABEL_19:
  a1[16] = v30;

  return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
}

CFMutableDictionaryRef sub_24610D610(void *a1, CVPixelBufferPoolRef *a2)
{
  v2 = a1 + 1;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = a1 + 3;
    v4 = a1[3];
    if (v4)
    {
      v6 = a1 + 4;
      if (a1[4] - 1 < v4)
      {
        v8 = a1 + 2;
        v7 = *(a1 + 4);
        if (v7 == 1111970369 || v7 == 1717855600 || v7 == 1380410945)
        {
          v11 = *MEMORY[0x277CBECE8];
          result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          cf = result;
          if (!result)
          {
            return result;
          }

          v13 = result;
          v14 = CFNumberCreate(v11, kCFNumberIntType, v6);
          if (v14 && (v15 = v14, CFDictionarySetValue(v13, *MEMORY[0x277CC4E50], v14), CFRelease(v15), (v16 = CFNumberCreate(v11, kCFNumberIntType, v5)) != 0))
          {
            v17 = v16;
            CFDictionarySetValue(v13, *MEMORY[0x277CC4E40], v16);
            CFRelease(v17);
            Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (Mutable)
            {
              v19 = Mutable;
              v20 = CFNumberCreate(v11, kCFNumberIntType, a1);
              if (v20)
              {
                v21 = v20;
                CFDictionarySetValue(v19, *MEMORY[0x277CC4EC8], v20);
                CFRelease(v21);
                v22 = CFNumberCreate(v11, kCFNumberIntType, v2);
                if (v22)
                {
                  v23 = v22;
                  CFDictionarySetValue(v19, *MEMORY[0x277CC4DD8], v22);
                  CFRelease(v23);
                  v24 = CFNumberCreate(v11, kCFNumberIntType, v8);
                  if (v24)
                  {
                    v25 = v24;
                    CFDictionarySetValue(v19, *MEMORY[0x277CC4E30], v24);
                    CFRelease(v25);
                    v26 = CVPixelBufferPoolCreate(v11, v13, v19, a2);
                    CFRelease(v13);
                    CFRelease(v19);
                    return (v26 == 0);
                  }
                }
              }

              CFRelease(v13);
              v27 = v19;
            }

            else
            {
              v27 = v13;
            }
          }

          else
          {
            CFRelease(&cf);
            v27 = cf;
          }

          CFRelease(v27);
        }
      }
    }
  }

  return 0;
}

void sub_24610D894(uint64_t a1, char *__s)
{
  if (!__s)
  {
    *(a1 + 23) = 0;
    *a1 = 0;
    return;
  }

  v4 = strlen(__s);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_2460D368C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  if ((atomic_load_explicit(qword_27EE3F5E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27EE3F5E0))
  {
    sub_24610DFAC();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v20 = 0;
  if (v18 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v18 >= 0)
  {
    v7 = HIBYTE(v18);
  }

  else
  {
    v7 = *(&__dst + 1);
  }

  v8 = p_dst + v7;
  v21 = 0;
  *&v22 = p_dst + v7;
  *(&v22 + 1) = p_dst + v7;
  v23 = 0;
  sub_24610E030(&__p, (dword_27EE3F5BC + 1), &v22);
  v24 = p_dst;
  v25 = p_dst;
  v26 = 0;
  v27 = v22;
  v28 = v23;
  v30 = p_dst;
  v29 = 1;
  if ((word_27EE3F5B8 & 0x1F0) != 0)
  {
    if (dword_27EE3F5BC)
    {
      if (sub_24610F3A8(p_dst, p_dst + v7, &__p, 0, 1))
      {
        goto LABEL_28;
      }
    }

    else if (sub_24610E72C(p_dst, p_dst + v7, &__p, 0, 1))
    {
      goto LABEL_28;
    }
  }

  else if (sub_24610E208(&stru_27EE3F5A0, p_dst, p_dst + v7, &__p, 0, 1))
  {
LABEL_28:
    v12 = __p;
    v11 = v20;
    v13 = v20 == __p;
    if (v20 == __p)
    {
      v14 = &v22;
    }

    else
    {
      v14 = __p;
    }

    goto LABEL_31;
  }

  if (!v7)
  {
LABEL_54:
    v20 = __p;
    goto LABEL_55;
  }

  v9 = p_dst + 1;
  v10 = v7 - 1;
  if (v7 == 1)
  {
LABEL_25:
    sub_24610E030(&__p, 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3), &v22);
    if ((word_27EE3F5B8 & 0x1F0) != 0)
    {
      if (dword_27EE3F5BC)
      {
        if (sub_24610F3A8(v9, v8, &__p, 128, 0))
        {
          goto LABEL_28;
        }
      }

      else if (sub_24610E72C(v9, v8, &__p, 128, 0))
      {
        goto LABEL_28;
      }
    }

    else if (sub_24610E208(&stru_27EE3F5A0, v9, v8, &__p, 128, 0))
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

  while (1)
  {
    sub_24610E030(&__p, 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3), &v22);
    if ((word_27EE3F5B8 & 0x1F0) == 0)
    {
      if (sub_24610E208(&stru_27EE3F5A0, v9, v8, &__p, 128, 0))
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }

    if (!dword_27EE3F5BC)
    {
      break;
    }

    if (sub_24610F3A8(v9, v8, &__p, 128, 0))
    {
      goto LABEL_49;
    }

LABEL_43:
    sub_24610E030(&__p, 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3), &v22);
    ++v9;
    if (!--v10)
    {
      goto LABEL_25;
    }
  }

  if ((sub_24610E72C(v9, v8, &__p, 128, 0) & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_49:
  v12 = __p;
  v11 = v20;
  v13 = v20 == __p;
  if (v20 == __p)
  {
    v14 = &v22;
  }

  else
  {
    v14 = __p;
  }

LABEL_31:
  v25 = *v14;
  v26 = v24 != v25;
  v15 = !v13;
  v16 = v12 + 8;
  if (!v15)
  {
    v16 = &v22 + 1;
  }

  *&v27 = *v16;
  v28 = v27 != *(&v27 + 1);
  if (v11 != v12)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_2460D368C();
  }

LABEL_55:
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  *a1 = __dst;
  *(a1 + 16) = v18;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_24610DFAC()
{
  v0 = MEMORY[0x24C199520](&stru_27EE3F5A0);
  qword_27EE3F5A8 = std::locale::use_facet(v0, MEMORY[0x277D82680]);
  qword_27EE3F5B0 = std::locale::use_facet(&stru_27EE3F5A0, MEMORY[0x277D826A0]);
  *&word_27EE3F5B8 = 0u;
  *&qword_27EE3F5C8 = 0u;
  qword_27EE3F5D8 = 0;
  sub_246110824();
}

char *sub_24610E030(char **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_2460D368C();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = *(a3 + 16);
    if (v12 == 1)
    {
      v16 = result;
    }

    else
    {
      v16 = &result[24 * (v12 & 0xFFFFFFFFFFFFFFFELL)];
      v17 = result + 24;
      v18 = v12 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 3) = v13;
        *(v17 - 2) = v14;
        *v17 = v13;
        *(v17 + 1) = v14;
        *(v17 - 8) = v15;
        v17[16] = v15;
        v17 += 48;
        v18 -= 2;
      }

      while (v18);
      if (v12 == (v12 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_23;
      }

      v12 &= 1u;
    }

    do
    {
      *v16 = v13;
      *(v16 + 1) = v14;
      v16[16] = v15;
      v16 += 24;
      --v12;
    }

    while (v12);
  }

LABEL_23:
  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v19 = &v10[24 * (a2 - v11)];
    v20 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v21 = *a3;
      *(v10 + 2) = a3[2];
      *v10 = v21;
      v10 += 24;
      v20 -= 24;
    }

    while (v20);
    a1[1] = v19;
  }

  return result;
}

uint64_t sub_24610E208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return v6;
  }

  *&v56 = a3;
  *(&v56 + 1) = a3;
  v57 = 0;
  *v53 = 0;
  memset(&v53[8], 0, 48);
  *__p = 0u;
  memset(v55, 0, 21);
  v13 = sub_24610FDE0(&v58, v53);
  v59 = v13;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v53[32])
  {
    operator delete(*&v53[32]);
  }

  v14 = *(v13 - 64);
  *(v13 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 56) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 56) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_24610FFB8((v13 - 64), v15 - v16, &v56);
  }

  v17 = *(v13 - 40);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 32) - v17) >> 4;
  v52 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 32) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_246110184(v13 - 40, v18 - v19);
  }

  *(v13 - 16) = v6;
  v20 = 1;
  *(v13 - 8) = a5;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v20 & 0xFFF) == 0 && (v20 >> 12) >= a3 - a2)
    {
      sub_246111008();
LABEL_62:
      sub_246111008();
LABEL_63:
      sub_2460D368C();
    }

    v23 = (v13 - 16);
    v22 = *(v13 - 16);
    v24 = (v13 - 96);
    if (v22)
    {
      (*(*v22 + 16))(v22, v13 - 96);
    }

    v25 = *v24;
    if (*v24 <= -994)
    {
      break;
    }

    if (v25 == -993)
    {
      goto LABEL_29;
    }

    if (v25 != -992)
    {
      if (v25 != -991)
      {
        goto LABEL_62;
      }

      goto LABEL_16;
    }

    v30 = *(v13 - 80);
    *v53 = *v24;
    *&v53[16] = v30;
    memset(&v53[32], 0, 24);
    v32 = *(v13 - 64);
    v31 = *(v13 - 56);
    if (v31 != v32)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      goto LABEL_63;
    }

    __p[0] = 0;
    __p[1] = 0;
    v55[0] = 0;
    v34 = *(v13 - 40);
    v33 = *(v13 - 32);
    if (v33 != v34)
    {
      if (((v33 - v34) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2460D368C();
    }

    v35 = *v23;
    *(&v55[1] + 5) = *(v13 - 11);
    v55[1] = v35;
    (*(**v23 + 24))(*v23, 1, v24);
    (*(*v55[1] + 24))(v55[1], 0, v53);
    v36 = v59;
    if (v59 >= v60)
    {
      v59 = sub_24610FDE0(&v58, v53);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v37 = *&v53[16];
      *v59 = *v53;
      v36[1] = v37;
      *(v36 + 6) = 0;
      *(v36 + 7) = 0;
      *(v36 + 4) = 0;
      *(v36 + 5) = 0;
      v36[2] = *&v53[32];
      *(v36 + 6) = *&v53[48];
      *&v53[32] = 0;
      *&v53[40] = 0;
      *(v36 + 8) = 0;
      *(v36 + 9) = 0;
      *(v36 + 56) = *__p;
      *(v36 + 9) = v55[0];
      *&v53[48] = 0;
      __p[0] = 0;
      __p[1] = 0;
      v55[0] = 0;
      v38 = v55[1];
      *(v36 + 85) = *(&v55[1] + 5);
      *(v36 + 10) = v38;
      v59 = v36 + 6;
    }

    if (*&v53[32])
    {
      *&v53[40] = *&v53[32];
      operator delete(*&v53[32]);
    }

LABEL_16:
    v21 = v58;
    v13 = v59;
    ++v20;
    if (v58 == v59)
    {
      v6 = 0;
      if (!v58)
      {
        return v6;
      }

      goto LABEL_47;
    }
  }

  if ((v25 + 995) < 2)
  {
    goto LABEL_16;
  }

  if (v25 != -1000)
  {
    goto LABEL_62;
  }

  v26 = *(v13 - 80);
  if ((a5 & 0x20) != 0 && v26 == a2)
  {
LABEL_29:
    v27 = v59;
    v28 = *(v59 - 5);
    if (v28)
    {
      *(v59 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v59 = v27 - 6;
    goto LABEL_16;
  }

  v43 = *v52;
  *v43 = a2;
  *(v43 + 8) = v26;
  *(v43 + 16) = 1;
  v44 = *(v13 - 64);
  v45 = *(v13 - 56) - v44;
  if (v45)
  {
    v46 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 3);
    v47 = (v44 + 16);
    v48 = 1;
    do
    {
      v49 = v43 + 24 * v48;
      *v49 = *(v47 - 1);
      v50 = *v47;
      v47 += 24;
      *(v49 + 16) = v50;
    }

    while (v46 > v48++);
  }

  v6 = 1;
  v21 = v58;
  if (v58)
  {
LABEL_47:
    for (i = v59; i != v21; i -= 6)
    {
      v40 = *(i - 5);
      if (v40)
      {
        *(i - 4) = v40;
        operator delete(v40);
      }

      v41 = *(i - 8);
      if (v41)
      {
        *(i - 7) = v41;
        operator delete(v41);
      }
    }

    operator delete(v21);
  }

  return v6;
}

uint64_t sub_24610E72C(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, char a5)
{
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v5 = qword_27EE3F5C8;
  if (!qword_27EE3F5C8)
  {
    goto LABEL_108;
  }

  v88 = a2 - a1;
  memset(&v89[4], 0, 24);
  sub_2461102D8(&v95);
  v9 = *(*(&v95 + 1) + 8 * ((v97.i64[1] + v97.i64[0]) / 0x2AuLL)) - 4032 * ((v97.i64[1] + v97.i64[0]) / 0x2AuLL) + 96 * (v97.i64[1] + v97.i64[0]);
  *v9 = 0;
  *(v9 + 4) = *v89;
  v10 = *&v89[12];
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 16) = v10;
  *(v9 + 32) = 0u;
  *(v9 + 77) = 0u;
  v11 = v97.i64[1];
  v12 = ++v97.i64[1];
  v13 = *(&v95 + 1);
  v14 = v97.i64[0] + v11;
  v15 = (v97.i64[0] + v11) / 0x2AuLL;
  v16 = *(*(&v95 + 1) + 8 * v15);
  v17 = v16 - 4032 * (v14 / 0x2A) + 96 * v14;
  *v17 = 0;
  *(v17 + 8) = a1;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = *(v17 + 56);
  v19 = (*(v17 + 64) - v18) >> 4;
  if (dword_27EE3F5C0 <= v19)
  {
    if (dword_27EE3F5C0 < v19)
    {
      *(v17 + 64) = v18 + 16 * dword_27EE3F5C0;
    }
  }

  else
  {
    sub_246110184(v17 + 56, dword_27EE3F5C0 - v19);
    v16 = *(v13 + 8 * v15);
  }

  v20 = 0;
  v21 = 0;
  v87 = 0;
  v22 = v16 - 4032 * (v14 / 0x2A) + 96 * v14;
  *(v22 + 80) = v5;
  *(v22 + 88) = a4;
  *(v22 + 92) = a5;
  v23 = v88;
  do
  {
    if ((++v21 & 0xFFF) == 0 && (v21 >> 12) >= v23)
    {
      sub_246111008();
LABEL_123:
      sub_246111008();
LABEL_124:
      sub_2460D368C();
    }

    v25 = *(*(&v95 + 1) + 8 * ((v12 + v97.i64[0] - 1) / 0x2AuLL)) - 4032 * ((v12 + v97.i64[0] - 1) / 0x2AuLL) + 96 * (v12 + v97.i64[0] - 1);
    v27 = (v25 + 80);
    v26 = *(v25 + 80);
    if (v26)
    {
      (*(*v26 + 16))(v26, v25);
    }

    v28 = *v25;
    if (*v25 <= -995)
    {
      if (v28 != -1000)
      {
        if (v28 == -999)
        {
          goto LABEL_9;
        }

        if (v28 != -995)
        {
          goto LABEL_123;
        }

        v29 = v97.i64[0];
        v30 = *(&v95 + 1);
        v31 = v96;
        if (!v97.i64[0])
        {
          v32 = 42 * ((v96 - *(&v95 + 1)) >> 3) - 1;
          if (v96 == *(&v95 + 1))
          {
            v32 = 0;
          }

          if ((v32 - v97.i64[1]) < 0x2A)
          {
            if (v96 - *(&v95 + 1) < *(&v96 + 1) - v95)
            {
              if (*(&v95 + 1) != v95)
              {
                operator new();
              }

              operator new();
            }

            if (*(&v96 + 1) == v95)
            {
              v65 = 1;
            }

            else
            {
              v65 = (*(&v96 + 1) - v95) >> 2;
            }

            if (!(v65 >> 61))
            {
              operator new();
            }

            sub_2460D368C();
          }

          v97.i64[0] = 42;
          *v89 = *(v96 - 8);
          *&v96 = v96 - 8;
          sub_246110614(&v95, v89);
          v29 = v97.i64[0];
          v30 = *(&v95 + 1);
          v31 = v96;
        }

        v66 = (v30 + 8 * (v29 / 0x2A));
        v67 = *v66 - 4032 * (v29 / 0x2A) + 96 * v29;
        if (v31 == v30)
        {
          v68 = 0;
        }

        else
        {
          v68 = v67;
        }

        if (v68 == *v66)
        {
          v68 = *(v66 - 1) + 4032;
        }

        v69 = *(v25 + 16);
        *(v68 - 96) = *v25;
        *(v68 - 80) = v69;
        *(v68 - 56) = 0;
        *(v68 - 48) = 0;
        *(v68 - 64) = 0;
        *(v68 - 64) = *(v25 + 32);
        *(v68 - 48) = *(v25 + 48);
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
        *(v25 + 48) = 0;
        *(v68 - 40) = 0;
        *(v68 - 32) = 0;
        *(v68 - 24) = 0;
        *(v68 - 40) = *(v25 + 56);
        *(v68 - 24) = *(v25 + 72);
        *(v25 + 56) = 0;
        *(v25 + 64) = 0;
        *(v25 + 72) = 0;
        v70 = *v27;
        *(v68 - 11) = *(v25 + 85);
        *(v68 - 16) = v70;
        v71 = vdupq_laneq_s64(v97, 1);
        v97 = vaddq_s64(v97, xmmword_24613FC20);
        v34 = vaddq_s64(v71, v97).u64[0];
        v35 = *(*(&v95 + 1) + 8 * (v34 / 0x2A)) - 4032 * (v34 / 0x2A);
        goto LABEL_98;
      }

      v33 = *(v25 + 16);
      if ((a4 & 0x20) != 0 && v33 == a1)
      {
        goto LABEL_32;
      }

      v48 = v33 - *(v25 + 8);
      v49 = v87;
      if (v87 <= v48)
      {
        v49 = v48;
      }

      if (v20)
      {
        v48 = v49;
      }

      if (v48 == v23)
      {
        v50 = *(&v95 + 1);
        v51 = v96;
        if (v96 == *(&v95 + 1))
        {
          v51 = *(&v95 + 1);
        }

        else
        {
          v52 = (*(&v95 + 1) + 8 * (v97.i64[0] / 0x2AuLL));
          v53 = (*v52 - 4032 * (v97.i64[0] / 0x2AuLL) + 96 * v97.i64[0]);
          v54 = *(*(&v95 + 1) + 8 * ((v97.i64[1] + v97.i64[0]) / 0x2AuLL)) - 4032 * ((v97.i64[1] + v97.i64[0]) / 0x2AuLL) + 96 * (v97.i64[1] + v97.i64[0]);
          if (v53 != v54)
          {
            do
            {
              v55 = v53[7];
              if (v55)
              {
                v53[8] = v55;
                operator delete(v55);
              }

              v56 = v53[4];
              if (v56)
              {
                v53[5] = v56;
                operator delete(v56);
              }

              v53 += 12;
              if ((v53 - *v52) == 4032)
              {
                v57 = v52[1];
                ++v52;
                v53 = v57;
              }
            }

            while (v53 != v54);
            v50 = *(&v95 + 1);
            v51 = v96;
          }

          v23 = v88;
        }

        v97.i64[1] = 0;
        v63 = (v51 - v50) >> 3;
        if (v63 >= 3)
        {
          do
          {
            operator delete(*v50);
            v50 = (*(&v95 + 1) + 8);
            *(&v95 + 1) = v50;
            v63 = (v96 - v50) >> 3;
          }

          while (v63 > 2);
        }

        if (v63 == 1)
        {
          v64 = 21;
LABEL_89:
          v97.i64[0] = v64;
        }

        else if (v63 == 2)
        {
          v64 = 42;
          goto LABEL_89;
        }

        v20 = 1;
        v87 = v23;
        goto LABEL_9;
      }

      v87 = v48;
      v58 = (*(*(&v95 + 1) + 8 * ((v97.i64[1] + v97.i64[0] - 1) / 0x2AuLL)) - 4032 * ((v97.i64[1] + v97.i64[0] - 1) / 0x2AuLL) + 96 * (v97.i64[1] + v97.i64[0] - 1));
      v59 = v58[7];
      if (v59)
      {
        v58[8] = v59;
        operator delete(v59);
      }

      v60 = v58[4];
      if (v60)
      {
        v58[5] = v60;
        operator delete(v60);
      }

      v61 = 42 * ((v96 - *(&v95 + 1)) >> 3) - 1;
      v62 = v97;
      --v97.i64[1];
      if (v96 == *(&v95 + 1))
      {
        v61 = 0;
      }

      if ((v61 - (v62.i64[1] + v62.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v96 - 8));
        *&v96 = v96 - 8;
      }

      v20 = 1;
    }

    else
    {
      if (v28 <= -993)
      {
        if (v28 == -994)
        {
          goto LABEL_9;
        }

        if (v28 != -993)
        {
          goto LABEL_123;
        }

LABEL_32:
        v34 = v97.i64[1] + v97.i64[0] - 1;
        v35 = *(*(&v95 + 1) + 8 * (v34 / 0x2A)) - 4032 * (v34 / 0x2A);
LABEL_98:
        v72 = (v35 + 96 * v34);
        v73 = v72[7];
        if (v73)
        {
          v72[8] = v73;
          operator delete(v73);
        }

        v74 = v72[4];
        if (v74)
        {
          v72[5] = v74;
          operator delete(v74);
        }

        v75 = 42 * ((v96 - *(&v95 + 1)) >> 3) - 1;
        v76 = v97;
        --v97.i64[1];
        if (v96 == *(&v95 + 1))
        {
          v75 = 0;
        }

        if ((v75 - (v76.i64[1] + v76.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v96 - 8));
          *&v96 = v96 - 8;
        }

        goto LABEL_9;
      }

      if (v28 == -992)
      {
        v36 = *(v25 + 16);
        *v89 = *v25;
        *&v89[16] = v36;
        v90[1] = 0;
        v91 = 0;
        v90[0] = 0;
        v38 = *(v25 + 32);
        v37 = *(v25 + 40);
        if (v37 != v38)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v37 - v38) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          goto LABEL_124;
        }

        __p[0] = 0;
        __p[1] = 0;
        v93 = 0;
        v40 = *(v25 + 56);
        v39 = *(v25 + 64);
        if (v39 != v40)
        {
          if (((v39 - v40) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_2460D368C();
        }

        v41 = *v27;
        *(v94 + 5) = *(v25 + 85);
        v94[0] = v41;
        (*(**(v25 + 80) + 24))(*(v25 + 80), 1, v25);
        (*(*v94[0] + 24))(v94[0], 0, v89);
        v42 = *(&v95 + 1);
        if (v96 == *(&v95 + 1))
        {
          v43 = 0;
        }

        else
        {
          v43 = 42 * ((v96 - *(&v95 + 1)) >> 3) - 1;
        }

        v44 = v97.i64[1] + v97.i64[0];
        if (v43 == v97.i64[1] + v97.i64[0])
        {
          sub_2461102D8(&v95);
          v42 = *(&v95 + 1);
          v44 = v97.i64[1] + v97.i64[0];
        }

        v45 = *(v42 + 8 * (v44 / 0x2A)) - 4032 * (v44 / 0x2A) + 96 * v44;
        v46 = *&v89[16];
        *v45 = *v89;
        *(v45 + 16) = v46;
        *(v45 + 40) = 0;
        *(v45 + 48) = 0;
        *(v45 + 32) = 0;
        *(v45 + 32) = *v90;
        *(v45 + 48) = v91;
        v90[0] = 0;
        v90[1] = 0;
        v91 = 0;
        *(v45 + 56) = 0;
        *(v45 + 64) = 0;
        *(v45 + 72) = 0;
        *(v45 + 56) = *__p;
        *(v45 + 72) = v93;
        __p[0] = 0;
        __p[1] = 0;
        v93 = 0;
        v47 = v94[0];
        *(v45 + 85) = *(v94 + 5);
        *(v45 + 80) = v47;
        ++v97.i64[1];
        v23 = v88;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v90[0])
        {
          v90[1] = v90[0];
          operator delete(v90[0]);
        }
      }

      else if (v28 != -991)
      {
        goto LABEL_123;
      }
    }

LABEL_9:
    v12 = v97.i64[1];
  }

  while (v97.i64[1]);
  if (v20)
  {
    v77 = *a3;
    *v77 = a1;
    *(v77 + 8) = a1 + v87;
    v78 = 1;
    *(v77 + 16) = 1;
    goto LABEL_109;
  }

LABEL_108:
  v78 = 0;
LABEL_109:
  v79 = *(&v95 + 1);
  v80 = v96;
  v97.i64[1] = 0;
  v81 = (v96 - *(&v95 + 1)) >> 3;
  if (v81 >= 3)
  {
    do
    {
      operator delete(*v79);
      v80 = v96;
      v79 = (*(&v95 + 1) + 8);
      *(&v95 + 1) = v79;
      v81 = (v96 - v79) >> 3;
    }

    while (v81 > 2);
  }

  if (v81 == 1)
  {
    v82 = 21;
LABEL_115:
    v97.i64[0] = v82;
  }

  else if (v81 == 2)
  {
    v82 = 42;
    goto LABEL_115;
  }

  if (v79 != v80)
  {
    do
    {
      v83 = *v79++;
      operator delete(v83);
    }

    while (v79 != v80);
    if (v96 != *(&v95 + 1))
    {
      *&v96 = v96 + ((*(&v95 + 1) - v96 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v95)
  {
    operator delete(v95);
  }

  return v78;
}

uint64_t sub_24610F3A8(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, char a5)
{
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v5 = qword_27EE3F5C8;
  if (!qword_27EE3F5C8)
  {
    v13 = 0;
    goto LABEL_103;
  }

  *&v84 = a2;
  *(&v84 + 1) = a2;
  v85 = 0;
  *v81 = 0;
  memset(&v81[8], 0, 48);
  *__p = 0u;
  memset(v83, 0, 21);
  v9 = sub_24610FDE0(&v86, v81);
  v87 = v9;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v81[32])
  {
    operator delete(*&v81[32]);
  }

  v10 = a2 - a1;
  v11 = *(v9 - 64);
  *(v9 - 96) = 0;
  *(v9 - 88) = a1;
  *(v9 - 80) = a1;
  *(v9 - 72) = a2;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(v9 - 56) - v11) >> 3);
  if (dword_27EE3F5BC <= v12)
  {
    if (dword_27EE3F5BC < v12)
    {
      *(v9 - 56) = v11 + 24 * dword_27EE3F5BC;
    }
  }

  else
  {
    sub_24610FFB8((v9 - 64), dword_27EE3F5BC - v12, &v84);
  }

  v14 = *(v9 - 40);
  v15 = (*(v9 - 32) - v14) >> 4;
  v76 = a3;
  if (dword_27EE3F5C0 <= v15)
  {
    if (dword_27EE3F5C0 < v15)
    {
      *(v9 - 32) = v14 + 16 * dword_27EE3F5C0;
    }
  }

  else
  {
    sub_246110184(v9 - 40, dword_27EE3F5C0 - v15);
  }

  v16 = 0;
  v78 = 0;
  v17 = 0;
  v18 = 0;
  *(v9 - 16) = v5;
  *(v9 - 8) = a4;
  *(v9 - 4) = a5;
  do
  {
    v19 = (++v17 & 0xFFF) != 0 || (v17 >> 12) < v10;
    if (!v19)
    {
      sub_246111008();
LABEL_113:
      sub_246111008();
LABEL_114:
      sub_2460D368C();
    }

    v21 = (v9 - 16);
    v20 = *(v9 - 16);
    v22 = (v9 - 96);
    if (v20)
    {
      (*(*v20 + 16))(v20, v9 - 96);
    }

    v23 = *v22;
    if (*v22 <= -994)
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_17;
      }

      if (v23 != -1000)
      {
        goto LABEL_113;
      }

      v24 = *(v9 - 80);
      if ((a4 & 0x20) != 0 && v24 == a1)
      {
LABEL_33:
        v25 = v87;
        v26 = *(v87 - 5);
        if (v26)
        {
          *(v87 - 4) = v26;
          operator delete(v26);
        }

        v27 = *(v25 - 8);
        if (v27)
        {
          *(v25 - 7) = v27;
          operator delete(v27);
        }

        v87 = v25 - 6;
        goto LABEL_17;
      }

      v37 = v24 - *(v9 - 88);
      if ((v78 & (v18 >= v37)) != 0)
      {
        v37 = v18;
        goto LABEL_67;
      }

      v39 = *(v9 - 64);
      v38 = *(v9 - 56);
      if (v38 != v39)
      {
        v40 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v39) >> 3);
        if (v40 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

LABEL_115:
        sub_2460D368C();
      }

      if (v39 == v38)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          *v16 = *v39;
          *(v16 + 16) = *(v39 + 16);
          v39 += 24;
          v16 += 24;
        }

        while (v39 != v38);
      }

      v42 = *(v9 - 40);
      v41 = *(v9 - 32);
      v43 = v41 - v42;
      if (v41 != v42)
      {
        if (!((v43 >> 4) >> 60))
        {
          operator new();
        }

        goto LABEL_114;
      }

      if (v42 == v41)
      {
        goto LABEL_67;
      }

      v44 = v37;
      v45 = v43 - 16;
      v46 = 0;
      if ((v43 - 16) >= 0xF0)
      {
        v53 = v45 & 0xFFFFFFFFFFFFFFF0 | 8;
        v54 = (v45 & 0xFFFFFFFFFFFFFFF0) + 16;
        v55 = &v42[v54] <= 8 || (v42 + 8) >= v54;
        v56 = !v55;
        v57 = v53 <= v42 || &v42[v53] == 0;
        if (v57 && !v56)
        {
          v58 = (v45 >> 4) + 1;
          v46 = (16 * (v58 & 0x1FFFFFFFFFFFFFFCLL));
          v59 = (v42 + 32);
          v60 = 32;
          v61 = v58 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v63 = *(v59 - 2);
            v62 = *(v59 - 1);
            v65 = *v59;
            v64 = v59[1];
            v59 += 4;
            *(v60 - 32) = v63;
            *(v60 - 16) = v62;
            *v60 = v65;
            *(v60 + 16) = v64;
            v60 += 64;
            v61 -= 4;
          }

          while (v61);
          if (v58 == (v58 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_66;
          }

          v42 += 16 * (v58 & 0x1FFFFFFFFFFFFFFCLL);
        }
      }

      do
      {
        *v46 = *v42;
        v46[1] = *(v42 + 1);
        v42 += 16;
        v46 += 2;
      }

      while (v42 != v41);
LABEL_66:
      v37 = v44;
LABEL_67:
      v47 = v87;
      if (v37 == v10)
      {
        v48 = v86;
        while (v47 != v48)
        {
          v49 = *(v47 - 5);
          if (v49)
          {
            *(v47 - 4) = v49;
            operator delete(v49);
          }

          v50 = *(v47 - 8);
          if (v50)
          {
            *(v47 - 7) = v50;
            operator delete(v50);
          }

          v47 -= 6;
        }

        v87 = v48;
        v78 = 1;
        v18 = v10;
      }

      else
      {
        v51 = *(v87 - 5);
        if (v51)
        {
          *(v87 - 4) = v51;
          operator delete(v51);
        }

        v52 = *(v47 - 8);
        if (v52)
        {
          *(v47 - 7) = v52;
          operator delete(v52);
        }

        v87 = v47 - 6;
        v78 = 1;
        v18 = v37;
      }

      goto LABEL_17;
    }

    switch(v23)
    {
      case -993:
        goto LABEL_33;
      case -992:
        v80 = v18;
        v28 = *(v9 - 80);
        *v81 = *v22;
        *&v81[16] = v28;
        memset(&v81[32], 0, 24);
        v30 = *(v9 - 64);
        v29 = *(v9 - 56);
        if (v29 != v30)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_115;
        }

        __p[0] = 0;
        __p[1] = 0;
        v83[0] = 0;
        v32 = *(v9 - 40);
        v31 = *(v9 - 32);
        if (v31 != v32)
        {
          if (((v31 - v32) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_114;
        }

        v33 = *v21;
        *(&v83[1] + 5) = *(v9 - 11);
        v83[1] = v33;
        (*(**v21 + 24))(*v21, 1, v9 - 96);
        (*(*v83[1] + 24))(v83[1], 0, v81);
        v34 = v87;
        if (v87 >= v88)
        {
          v87 = sub_24610FDE0(&v86, v81);
          v18 = v80;
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v35 = *&v81[16];
          *v87 = *v81;
          v34[1] = v35;
          *(v34 + 6) = 0;
          *(v34 + 7) = 0;
          *(v34 + 4) = 0;
          *(v34 + 5) = 0;
          v34[2] = *&v81[32];
          *(v34 + 6) = *&v81[48];
          *&v81[32] = 0;
          *&v81[40] = 0;
          *(v34 + 8) = 0;
          *(v34 + 9) = 0;
          *(v34 + 56) = *__p;
          *(v34 + 9) = v83[0];
          *&v81[48] = 0;
          __p[0] = 0;
          __p[1] = 0;
          v83[0] = 0;
          v36 = v83[1];
          *(v34 + 85) = *(&v83[1] + 5);
          *(v34 + 10) = v36;
          v87 = v34 + 6;
          v18 = v80;
        }

        if (*&v81[32])
        {
          *&v81[40] = *&v81[32];
          operator delete(*&v81[32]);
        }

        break;
      case -991:
        break;
      default:
        goto LABEL_113;
    }

LABEL_17:
    v9 = v87;
  }

  while (v86 != v87);
  if (v78)
  {
    v66 = *v76;
    *v66 = a1;
    *(v66 + 8) = a1 + v18;
    *(v66 + 16) = 1;
    if (v16)
    {
      v67 = 16;
      v68 = 1;
      do
      {
        v69 = v66 + 24 * v68;
        *v69 = *(v67 - 16);
        v70 = *v67;
        v67 += 24;
        *(v69 + 16) = v70;
        v19 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3) > v68++;
      }

      while (v19);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_103:
  v71 = v86;
  if (v86)
  {
    for (i = v87; i != v71; i -= 6)
    {
      v73 = *(i - 5);
      if (v73)
      {
        *(i - 4) = v73;
        operator delete(v73);
      }

      v74 = *(i - 8);
      if (v74)
      {
        *(i - 7) = v74;
        operator delete(v74);
      }
    }

    operator delete(v71);
  }

  return v13;
}

uint64_t sub_24610FDE0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_2460D368C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2460D368C();
  }

  v6 = *(a2 + 16);
  v7 = 32 * ((a1[1] - *a1) >> 5);
  *v7 = *a2;
  *(v7 + 16) = v6;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 72) = v8;
  *(v7 + 80) = v9;
  v10 = 96 * v2 + 96;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v7 + *a1 - v12;
    do
    {
      v16 = *(v14 + 1);
      *v15 = *v14;
      *(v15 + 16) = v16;
      *(v15 + 48) = 0;
      *(v15 + 32) = *(v14 + 2);
      *(v15 + 48) = v14[6];
      v14[4] = 0;
      v14[5] = 0;
      v14[6] = 0;
      *(v15 + 72) = 0;
      *(v15 + 56) = *(v14 + 7);
      *(v15 + 72) = v14[9];
      v14[7] = 0;
      v14[8] = 0;
      v14[9] = 0;
      v17 = v14[10];
      *(v15 + 85) = *(v14 + 85);
      *(v15 + 80) = v17;
      v14 += 12;
      v15 += 96;
    }

    while (v14 != v12);
    do
    {
      v18 = v11[7];
      if (v18)
      {
        v11[8] = v18;
        operator delete(v18);
      }

      v19 = v11[4];
      if (v19)
      {
        v11[5] = v19;
        operator delete(v19);
      }

      v11 += 12;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_24610FFB8(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      do
      {
        v11 = *a3;
        *(v3 + 16) = *(a3 + 2);
        *v3 = v11;
        v3 += 24;
        v10 -= 24;
      }

      while (v10);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2460D368C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2460D368C();
    }

    v12 = 24 * a2;
    v13 = 24 * v5;
    do
    {
      v14 = *a3;
      *(v13 + 16) = *(a3 + 2);
      *v13 = v14;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = 24 * v5 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = 24 * v5 + *a1 - v16;
      do
      {
        v19 = *v15;
        *(v18 + 16) = v15[2];
        *v18 = v19;
        v18 += 24;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = 24 * v5 + 24 * a2;
    a1[2] = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_246110184(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_2460D368C();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_2460D368C();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *sub_2461102D8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_2460D368C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_246102CFC(a1, &v11);
}

const void **sub_246110614(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_2460D368C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void sub_2461107A8(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

uint64_t sub_246111020(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    operator new();
  }

  if (a2 == a3)
  {
    v7 = a2;
  }

  else
  {
    while (1)
    {
      if (v3 == a3)
      {
        v7 = v3;
LABEL_11:
        if (v7 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v6 = sub_2461169E8(a1, v3, a3);
      if (v6 == v3)
      {
        break;
      }

      v7 = sub_246116D04(a1, v6, a3);
      v8 = v7 == v3;
      v3 = v7;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    v7 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (v7 + 1 == a3 && *v7 == 36)
    {
      operator new();
    }
  }

LABEL_18:
  v3 = v7;
  if (v7 == a3)
  {
    return v3;
  }

  v10 = sub_246111008();
  return sub_2461111D4(v10);
}

unsigned __int8 *sub_2461111D4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_246111380(a1, a2, a3);
  if (v6 != a2)
  {
    do
    {
      v7 = v6;
      v6 = sub_246111380(a1, v6, a3);
    }

    while (v6 != v7);
    if (v7 != a2)
    {
      if (v7 == a3 || *v7 != 124)
      {
        return v7;
      }

      v8 = v7 + 1;
      v9 = sub_246111380(a1, v7 + 1, a3);
      if (v9 != v7 + 1)
      {
        do
        {
          v10 = v9;
          v9 = sub_246111380(a1, v9, a3);
        }

        while (v9 != v10);
        if (v10 != v8)
        {
          operator new();
        }
      }
    }
  }

  v12 = sub_246111008();
  return sub_246111380(v12, v13, v14);
}

unsigned __int8 *sub_246111380(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    v7 = (v6 - 36);
    if (v7 > 0x3A)
    {
      goto LABEL_21;
    }

    if (((1 << (v6 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v7 == 5)
    {
      if (!*(a1 + 36))
      {
LABEL_22:
        sub_246112688(a1);
      }
    }

    else
    {
LABEL_21:
      if ((v6 - 123) >= 2)
      {
        goto LABEL_22;
      }
    }

LABEL_4:
    v8 = sub_246111708(a1, a2, a3);
    v9 = v8;
    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = sub_246111708(a1, a2, a3);
  if (v9 == a2)
  {
LABEL_8:
    v9 = sub_2461117E8(a1, a2, a3);
  }

LABEL_9:
  if (v9 == a2 && v9 != a3)
  {
    v10 = *v9;
    switch(v10)
    {
      case '$':
        operator new();
      case '(':
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        ++*(a1 + 36);
        v11 = sub_2461111D4(a1);
        if (v11 == a3 || *v11 != 41)
        {
          v13 = sub_246111008();
          return sub_246111708(v13, v14, v15);
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        --*(a1 + 36);
        v9 = v11 + 1;
        break;
      case '^':
        operator new();
    }
  }

  if (v9 == a2)
  {
    return v9;
  }

  return sub_2461127F0(a1, v9, a3);
}

unsigned __int8 *sub_246111708(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v3 = a2[1];
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    sub_246112688(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v7 = a2;
    v8 = sub_246116278(a1, v3);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    return &v7[v9];
  }

  v6 = a2 + 1;

  return sub_246114AF8(a1, v6, a3, 0);
}

_BYTE *sub_2461117E8(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      operator new();
    }

    sub_246111008();
    sub_246111008();
    sub_2460D368C();
  }

  return a2;
}

void sub_246112688(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned __int8 *sub_2461127F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *(a1 + 24) & 0x1F0;
  v4 = *a2;
  if (v4 <= 0x3E)
  {
    if (v4 == 42)
    {
      v12 = a2 + 1;
      if (v3)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 == a3;
      }

      if (!v13 && *v12 == 63)
      {
        operator new();
      }

      operator new();
    }

    if (v4 == 43)
    {
      v5 = a2 + 1;
      if (!v3 && v5 != a3 && *v5 == 63)
      {
        operator new();
      }

      operator new();
    }

    return a2;
  }

  if (v4 == 63)
  {
    v14 = a2 + 1;
    if (v3)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 == a3;
    }

    if (!v15 && *v14 == 63)
    {
      operator new();
    }

    operator new();
  }

  if (v4 == 123)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_67;
    }

    v6 = a2[1];
    if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
    {
      goto LABEL_67;
    }

    v7 = v6 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      do
      {
        v9 = *v8;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          goto LABEL_20;
        }

        if (v7 >= 214748364)
        {
          goto LABEL_67;
        }

        v7 = v9 + 10 * v7 - 48;
        ++v8;
      }

      while (v8 != a3);
      v8 = a3;
    }

LABEL_20:
    if (v8 != a3)
    {
      v10 = *v8;
      if (v10 != 44)
      {
        if (v10 == 125)
        {
          v11 = v8 + 1;
          if (v3 || v11 == a3 || *v11 != 63)
          {
            operator new();
          }

          goto LABEL_64;
        }

        goto LABEL_67;
      }

      if (v8 + 1 == a3)
      {
        goto LABEL_67;
      }

      v16 = v8[1];
      if (v16 == 125)
      {
        v17 = v8 + 2;
        if (v3 || v17 == a3 || *v17 != 63)
        {
          operator new();
        }

        goto LABEL_64;
      }

      if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
      {
        v18 = v16 - 48;
        v19 = v8 + 2;
        if (v19 != a3)
        {
          do
          {
            v20 = *v19;
            if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
            {
              goto LABEL_58;
            }

            if (v18 >= 214748364)
            {
              goto LABEL_67;
            }

            v18 = v20 + 10 * v18 - 48;
            ++v19;
          }

          while (v19 != a3);
          v19 = a3;
        }

LABEL_58:
        if (v19 != a3 && *v19 == 125)
        {
          if (v18 >= v7)
          {
            v21 = v19 + 1;
            if (v3 || v21 == a3 || *v21 != 63)
            {
              operator new();
            }

LABEL_64:
            sub_2461130DC();
          }

LABEL_67:
          sub_246111008();
        }
      }
    }

    sub_246111008();
    sub_2461130DC();
  }

  return a2;
}

uint64_t sub_24611321C(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_246113248(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      goto LABEL_9;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != v10)
    {
      v6 += v10;
LABEL_9:
      v13 = v5 - v6;
      v14 = (v8 + 24 * v6 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t sub_246113308(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_40;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v22 = *(result + 44);
      v23 = *(result + 48);
      if (v22 == v23)
      {
        return result;
      }

      v24 = (v23 - 1);
      v25 = (v22 - 1);
      v26 = *(a2 + 24);
      v27 = *(a2 + 32);
      v28 = v24 - v25;
      if ((v24 - v25) >= 2)
      {
        v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
        v30 = v27 + 24 * v25 + 24;
        v31 = v28 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v30 - 24) = v26;
          *(v30 - 16) = v26;
          *v30 = v26;
          *(v30 + 8) = v26;
          *(v30 - 8) = 0;
          *(v30 + 16) = 0;
          v30 += 48;
          v31 -= 2;
        }

        while (v31);
        if (v28 == v29)
        {
          return result;
        }

        v25 += v29;
      }

      v32 = v24 - v25;
      v33 = (v27 + 24 * v25 + 16);
      do
      {
        *(v33 - 2) = v26;
        *(v33 - 1) = v26;
        *v33 = 0;
        v33 += 24;
        --v32;
      }

      while (v32);
      return result;
    }

LABEL_38:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_38;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_40:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    goto LABEL_24;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v18 = v15 + 24 * v13 + 24;
  v19 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v18 - 24) = v14;
    *(v18 - 16) = v14;
    *v18 = v14;
    *(v18 + 8) = v14;
    *(v18 - 8) = 0;
    *(v18 + 16) = 0;
    v18 += 48;
    v19 -= 2;
  }

  while (v19);
  if (v16 != v17)
  {
    v13 += v17;
LABEL_24:
    v20 = v12 - v13;
    v21 = (v15 + 24 * v13 + 16);
    do
    {
      *(v21 - 2) = v14;
      *(v21 - 1) = v14;
      *v21 = 0;
      v21 += 24;
      --v20;
    }

    while (v20);
  }

  return result;
}

void sub_2461134D0(void *a1)
{
  *a1 = &unk_2858EC270;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2858EBF70;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x24C1995D0);
}

void sub_2461135A8(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_246113638(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_2461136AC(void *a1)
{
  *a1 = &unk_2858EC270;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2858EBF70;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_246113780(void *a1)
{
  *a1 = &unk_2858EC270;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2858EBF70;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void *sub_246113834(void *a1)
{
  *a1 = &unk_2858EC270;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2858EBF70;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_2461138E8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void sub_246113930(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_2461139C0(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_246113A34(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void sub_246113A7C(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC0C0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C1995D0);
}

std::locale *sub_246113B28(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC0C0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_246113BB4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void sub_246113C48(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC090;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C1995D0);
}

std::locale *sub_246113CF4(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC090;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_246113D80(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_246113DB8(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_246113E48(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_246113EBC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_246113EEC(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_246113F7C(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_246113FF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_246114044(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_2461140D4(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_246114148(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void sub_2461141B0(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_246114240(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_2461142B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_2858EC1B0;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_2461143C8(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    if (v8 < v7)
    {
      *v8 = a2;
      v6 = (v8 + 1);
      goto LABEL_26;
    }

    v9 = *(a1 + 40);
    v13 = v8 - v9 + 1;
    if (v13 >= 0)
    {
      v14 = v7 - v9;
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        operator new();
      }

      v16 = v8 - v9;
      *(v8 - v9) = a2;
      v6 = v8 - v9 + 1;
      goto LABEL_24;
    }

LABEL_27:
    sub_2460D368C();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v5 < v4)
  {
    *v5 = v3;
    v6 = (v5 + 1);
    goto LABEL_26;
  }

  v9 = *(a1 + 40);
  v10 = v5 - v9 + 1;
  if (v10 < 0)
  {
    goto LABEL_27;
  }

  v11 = v4 - v9;
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    operator new();
  }

  v16 = v5 - v9;
  *(v5 - v9) = v3;
  v6 = v5 - v9 + 1;
LABEL_24:
  memcpy(0, v9, v16);
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 56) = 0;
  if (v9)
  {
    operator delete(v9);
  }

LABEL_26:
  *(a1 + 48) = v6;
}

void sub_246114590(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2460D368C();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a4 - __src;
  if (a4 != __src)
  {
    memcpy(&__dst, __src, v4);
  }

  __dst.__r_.__value_.__s.__data_[v4] = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_15;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v12, p_dst);
  *a1 = *&v12.__r_.__value_.__l.__data_;
  v8 = v12.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v12.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_15;
    }
  }

  else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v12);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v12;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v10 = *(a1 + 23);
    if (v10 != 12 && v10 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v11 = *(a1 + 8);
  if (v11 == 1 || v11 == 12)
  {
LABEL_29:
    std::string::operator=(a1, &__dst);
    goto LABEL_15;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_15:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

unsigned __int8 *sub_2461147A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_246111008();
    goto LABEL_55;
  }

  v5 = *a2;
  if (v5 <= 0x61)
  {
    if (*a2 <= 0x52u)
    {
      if (*a2)
      {
        if (v5 == 68)
        {
          *(a5 + 164) |= 0x400u;
          return a2 + 1;
        }

        goto LABEL_24;
      }

      v15 = this;
      v16 = a2;
      v17 = 0;
LABEL_21:
      std::string::operator=(v15, v17);
      return v16 + 1;
    }

    if (v5 == 83)
    {
      *(a5 + 164) |= 0x4000u;
      return a2 + 1;
    }

    if (v5 != 87)
    {
      goto LABEL_24;
    }

    *(a5 + 164) |= 0x500u;
    if (*(a5 + 169) != 1)
    {
      v19 = *(a5 + 72);
      v18 = *(a5 + 80);
      if (v19 >= v18)
      {
        v26 = *(a5 + 64);
        v27 = (v19 - v26);
        v28 = v19 - v26 + 1;
        if (v28 < 0)
        {
          goto LABEL_55;
        }

        v29 = a2;
        v30 = v18 - v26;
        if (2 * v30 > v28)
        {
          v28 = 2 * v30;
        }

        if (v30 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v31 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v28;
        }

        if (v31)
        {
          operator new();
        }

        v33 = a5;
        v34 = v19 - v26;
        *v27 = 95;
        v20 = v27 + 1;
        memcpy(0, v26, v34);
        a5 = v33;
        v33[8] = 0;
        v33[9] = v27 + 1;
        v33[10] = 0;
        if (v26)
        {
          operator delete(v26);
          a5 = v33;
        }

        a2 = v29;
      }

      else
      {
        *v19 = 95;
        v20 = v19 + 1;
      }

      *(a5 + 72) = v20;
      return a2 + 1;
    }

    v6 = a2;
    v7 = a5;
    v8 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
    v9 = v7;
    v11 = v7[9];
    v10 = v7[10];
    if (v11 < v10)
    {
      *v11 = v8;
      v12 = v11 + 1;
LABEL_48:
      a2 = v6;
      v9[9] = v12;
      return a2 + 1;
    }

    v21 = v7[8];
    v22 = (v11 - v21);
    v23 = v11 - v21 + 1;
    if (v23 >= 0)
    {
      v24 = v10 - v21;
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        operator new();
      }

      v32 = v11 - v21;
      *v22 = v8;
      v12 = v22 + 1;
      memcpy(0, v21, v32);
      v7[8] = 0;
      v7[9] = v22 + 1;
      v7[10] = 0;
      if (v21)
      {
        operator delete(v21);
      }

      v9 = v7;
      goto LABEL_48;
    }

LABEL_55:
    sub_2460D368C();
  }

  if (*a2 > 0x72u)
  {
    if (v5 == 115)
    {
      *(a5 + 160) |= 0x4000u;
      return a2 + 1;
    }

    if (v5 == 119)
    {
      *(a5 + 160) |= 0x500u;
      v13 = a2;
      sub_2461143C8(a5, 95);
      return v13 + 1;
    }

    goto LABEL_24;
  }

  if (v5 == 98)
  {
    v15 = this;
    v16 = a2;
    v17 = 8;
    goto LABEL_21;
  }

  if (v5 == 100)
  {
    *(a5 + 160) |= 0x400u;
    return a2 + 1;
  }

LABEL_24:

  return sub_24611514C(a1, a2, a3, this);
}

unsigned __int8 *sub_246114AF8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
    goto LABEL_42;
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        goto LABEL_40;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        goto LABEL_40;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      goto LABEL_40;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      goto LABEL_40;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        goto LABEL_40;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        goto LABEL_40;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

LABEL_40:
        sub_246112688(a1);
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
LABEL_42:
    v11 = sub_246111008();
    return sub_246114CE0(v11, v12);
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
  }

  if (!this)
  {
    sub_246112688(a1);
  }

  std::string::operator=(this, v8);
  return v9;
}

_BYTE *sub_246114CE0(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_246111008();
  }

  else
  {
    sub_246114590(&v13, a1, __src, v6);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v13;
    v9 = v14;
    *(a4 + 16) = v14;
    v10 = HIBYTE(v9);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a4 + 8);
    }

    if (v10 - 1 < 2)
    {
      return v6 + 2;
    }
  }

  v12 = sub_246111008();
  return sub_246114DB0(v12);
}

void sub_246114DB0(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      sub_2460D368C();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2460D368C();
    }

    *(2 * v8) = *a2;
    v5 = 2 * v8 + 2;
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
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_246114EAC(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2460D368C();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  v9 = a4 - __src;
  if (a4 != __src)
  {
    memmove(__dst, __src, v4);
  }

  *(__dst + v4) = 0;
  v6 = v9;
  if ((v9 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((v9 & 0x80u) != 0)
  {
    v6 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_246114FD8(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_2460D368C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      sub_2460D368C();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

unsigned __int8 *sub_24611514C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          goto LABEL_64;
        }

        std::string::operator=(this, 12);
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_60;
        }

        if (!this)
        {
          goto LABEL_64;
        }

        std::string::operator=(this, 10);
      }
    }

    else
    {
      if (v5 != 48)
      {
        if (v5 == 99)
        {
          if (a2 + 1 != a3)
          {
            v6 = a2[1];
            if (((v6 & 0xDF) - 65) <= 0x19u)
            {
              if (!this)
              {
                sub_246112688(a1);
              }

              std::string::operator=(this, v6 & 0x1F);
              v4 += 2;
              return v4;
            }
          }

          goto LABEL_67;
        }

        if (v5 == 95)
        {
          goto LABEL_67;
        }

        goto LABEL_60;
      }

      if (!this)
      {
        goto LABEL_64;
      }

      std::string::operator=(this, 0);
    }

    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (!this)
      {
        goto LABEL_64;
      }

      std::string::operator=(this, 13);
      return ++v4;
    }

    if (v5 == 116)
    {
      if (!this)
      {
        goto LABEL_64;
      }

      std::string::operator=(this, 9);
      return ++v4;
    }

LABEL_60:
    if ((v5 & 0x80) != 0 || (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) == 0)
    {
      if (this)
      {
        std::string::operator=(this, v5);
        return ++v4;
      }

LABEL_64:
      sub_246112688(a1);
    }

    goto LABEL_67;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_67;
    }

    v7 = a2[1];
    if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 && (v7 | 0x20u) - 97 >= 6)
    {
      goto LABEL_67;
    }

    v4 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_67;
    }

    v8 = *v4;
    if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
    {
      goto LABEL_67;
    }

    goto LABEL_37;
  }

  if (v5 == 118)
  {
    if (!this)
    {
      goto LABEL_64;
    }

    std::string::operator=(this, 11);
    return ++v4;
  }

  if (v5 != 120)
  {
    goto LABEL_60;
  }

LABEL_37:
  if (v4 + 1 != a3)
  {
    v9 = v4[1];
    v10 = -48;
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
    {
      v9 |= 0x20u;
      if ((v9 - 97) >= 6u)
      {
        goto LABEL_67;
      }

      v10 = -87;
    }

    if (v4 + 2 != a3)
    {
      v11 = v4[2];
      v12 = -48;
      if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
      {
        v11 |= 0x20u;
        if ((v11 - 97) >= 6u)
        {
          goto LABEL_67;
        }

        v12 = -87;
      }

      if (!this)
      {
        sub_246112688(a1);
      }

      std::string::operator=(this, v12 + v11 + 16 * (v10 + v9));
      v4 += 3;
      return v4;
    }
  }

LABEL_67:
  v14 = sub_246111008();
  return sub_24611543C(v14);
}

void sub_24611543C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v11 = 0;
    v12 = *(a1 + 168);
    goto LABEL_90;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_67;
  }

  v6 = *v4;
  v7 = v4[1];
  if (*(a1 + 169) == 1)
  {
    LODWORD(v6) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
    LODWORD(v7) = (*(**(a1 + 24) + 40))(*(a1 + 24), v7);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  v8 = v6 | (v7 << 8);
  LOWORD(__s.__r_.__value_.__l.__data_) = v8;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v122, &__s);
  __p = v122;
  size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  v10 = SHIBYTE(v122.__r_.__value_.__r.__words[2]);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v122.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(**(a1 + 32) + 32))(&v122);
  if (v10 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v122;
  if ((SHIBYTE(v122.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v122.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v122.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_161;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_161:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_67:
    v12 = 0;
    v11 = 1;
    goto LABEL_68;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_67;
  }

LABEL_16:
  v13 = *(a1 + 112);
  v14 = *(a1 + 120) - v13;
  if (v14)
  {
    v15 = v14 >> 1;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = (v13 + 1);
    v11 = 2;
    while (*(v16 - 1) != v6 || *v16 != v7)
    {
      v16 += 2;
      if (!--v15)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_89;
  }

LABEL_24:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    *(&__s.__r_.__value_.__s + 23) = 2;
    __s.__r_.__value_.__s.__data_[0] = v6;
    __s.__r_.__value_.__s.__data_[1] = v7;
    __s.__r_.__value_.__s.__data_[2] = 0;
    (*(**(a1 + 32) + 32))(&v122);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v17 = *(a1 + 88);
    v18 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    v19 = *(a1 + 96) - v17;
    if (v19)
    {
      v110 = v6 | (v7 << 8);
      v117 = v6;
      v113 = v7;
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v108 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
      v21 = (v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v122.__r_.__value_.__r.__words[2]) : v122.__r_.__value_.__l.__size_;
      v22 = (v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v122 : v122.__r_.__value_.__r.__words[0];
      v23 = v20 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v24 = (v17 + 47);
      v25 = 1;
      v26 = 1;
      while (1)
      {
        v27 = *(v24 - 24);
        if (v27 >= 0)
        {
          v28 = *(v24 - 24);
        }

        else
        {
          v28 = *(v24 - 39);
        }

        if (v27 >= 0)
        {
          v29 = (v24 - 47);
        }

        else
        {
          v29 = *(v24 - 47);
        }

        if (v28 >= v21)
        {
          v30 = v21;
        }

        else
        {
          v30 = v28;
        }

        v31 = memcmp(v22, v29, v30);
        v32 = v21 >= v28;
        if (v31)
        {
          v32 = v31 >= 0;
        }

        if (v32)
        {
          v33 = *v24;
          if (v33 >= 0)
          {
            v34 = *v24;
          }

          else
          {
            v34 = *(v24 - 15);
          }

          if (v33 >= 0)
          {
            v35 = (v24 - 23);
          }

          else
          {
            v35 = *(v24 - 23);
          }

          if (v21 >= v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = v21;
          }

          v37 = memcmp(v35, v22, v36);
          v38 = v34 >= v21;
          if (v37)
          {
            v38 = v37 >= 0;
          }

          if (v38)
          {
            break;
          }
        }

        v26 = v25++ < v20;
        v24 += 48;
        if (!--v23)
        {
          goto LABEL_65;
        }
      }

      LODWORD(v23) = 5;
LABEL_65:
      LODWORD(v7) = v113;
      LODWORD(v6) = v117;
      v8 = v110;
      v18 = v108;
    }

    else
    {
      v26 = 0;
      LODWORD(v23) = 0;
    }

    if (v18 < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }

    if (v26)
    {
      v90 = 1;
      goto LABEL_239;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v90 = 0;
    goto LABEL_241;
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = v8;
  __s.__r_.__value_.__s.__data_[2] = 0;
  (*(**(a1 + 32) + 32))(&v122);
  v91 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v91 = v122.__r_.__value_.__l.__size_;
  }

  if (v91 != 1)
  {
    if (v91 == 12)
    {
      v92 = &v122;
      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v92 = v122.__r_.__value_.__r.__words[0];
      }

      v92->__r_.__value_.__s.__data_[11] = v92->__r_.__value_.__s.__data_[3];
    }

    else if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      *v122.__r_.__value_.__l.__data_ = 0;
      v122.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v122.__r_.__value_.__s.__data_[0] = 0;
      *(&v122.__r_.__value_.__s + 23) = 0;
    }
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v93 = *(a1 + 136);
  v94 = *(a1 + 144) - v93;
  if (v94)
  {
    v120 = v6;
    v95 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
    v116 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v96 = v122.__r_.__value_.__l.__size_;
    }

    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v97 = &v122;
    }

    else
    {
      v97 = v122.__r_.__value_.__r.__words[0];
    }

    if (v95 <= 1)
    {
      v98 = 1;
    }

    else
    {
      v98 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
    }

    v99 = 1;
    v100 = 1;
    do
    {
      v101 = *(v93 + 23);
      v102 = v101;
      if ((v101 & 0x80u) != 0)
      {
        v101 = *(v93 + 8);
      }

      if (v96 == v101)
      {
        v103 = v102 >= 0 ? v93 : *v93;
        if (!memcmp(v97, v103, v96))
        {
          v90 = 1;
          LODWORD(v23) = 5;
          goto LABEL_236;
        }
      }

      v100 = v99++ < v95;
      v93 += 24;
      --v98;
    }

    while (v98);
    LODWORD(v23) = 0;
    v90 = 0;
LABEL_236:
    LODWORD(v6) = v120;
    if (v116 < 0)
    {
      goto LABEL_237;
    }
  }

  else
  {
    v100 = 0;
    LODWORD(v23) = 0;
    v90 = 0;
    if ((*(&v122.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_237:
      operator delete(v122.__r_.__value_.__l.__data_);
    }
  }

  if (!v100)
  {
LABEL_241:
    if ((v6 & 0x80000000) != 0)
    {
      v107 = *(a1 + 164);
    }

    else
    {
      v104 = *(a1 + 160);
      v105 = *(*(a1 + 24) + 16);
      v106 = *(v105 + 4 * v6);
      if (((v106 & v104) != 0 || v6 == 95 && (v104 & 0x80) != 0) && (v7 & 0x80000000) == 0 && ((*(v105 + 4 * v7) & v104) != 0 || (v104 & 0x80) != 0 && v7 == 95))
      {
        goto LABEL_259;
      }

      v107 = *(a1 + 164);
      if ((v106 & v107) != 0 || v6 == 95 && (v107 & 0x80) != 0)
      {
LABEL_258:
        v11 = 2;
        v12 = v90;
        goto LABEL_90;
      }
    }

    if ((v7 & 0x80000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v7) & v107) == 0)
      {
        v12 = 1;
        v11 = 2;
        if (v7 != 95 || (v107 & 0x80) == 0)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_258;
    }

LABEL_259:
    v12 = 1;
    v11 = 2;
    goto LABEL_90;
  }

LABEL_239:
  v11 = 2;
  v12 = v90;
  if (v23)
  {
    goto LABEL_90;
  }

LABEL_68:
  v40 = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    v40 = (*(**(a1 + 24) + 40))(*(a1 + 24), **(v2 + 16));
  }

  v41 = *(a1 + 40);
  v42 = *(a1 + 48) - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_89;
      }
    }

    while (--v42);
  }

  v44 = *(a1 + 164);
  if (v44 || *(a1 + 64) != *(a1 + 72))
  {
    if (v40 < 0 || (*(*(*(a1 + 24) + 16) + 4 * v40) & v44) == 0)
    {
      v45 = (v40 == 95) & (v44 >> 7);
    }

    else
    {
      LOBYTE(v45) = 1;
    }

    v46 = *(a1 + 72);
    v47 = memchr(*(a1 + 64), v40, v46 - *(a1 + 64));
    v48 = !v47 || v47 == v46;
    v49 = !v48;
    if ((v45 & 1) == 0 && !v49)
    {
LABEL_89:
      v12 = 1;
      goto LABEL_90;
    }
  }

  v52 = *(a1 + 88);
  v53 = *(a1 + 96);
  if (v52 == v53)
  {
    goto LABEL_142;
  }

  v118 = v12;
  if (*(a1 + 170) == 1)
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    (*(**(a1 + 32) + 32))(&v122);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v52 = *(a1 + 88);
    v54 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    v55 = *(a1 + 96) - v52;
    if (v55)
    {
      goto LABEL_99;
    }

LABEL_136:
    v62 = 0;
    if ((v54 & 0x80) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

  v54 = 1;
  *(&v122.__r_.__value_.__s + 23) = 1;
  LOWORD(v122.__r_.__value_.__l.__data_) = v40;
  v55 = v53 - v52;
  if (!v55)
  {
    goto LABEL_136;
  }

LABEL_99:
  v111 = v2;
  v114 = v11;
  v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
  v109 = v54;
  if ((v54 & 0x80u) == 0)
  {
    v57 = v54;
  }

  else
  {
    v57 = v122.__r_.__value_.__l.__size_;
  }

  if ((v54 & 0x80u) == 0)
  {
    v58 = &v122;
  }

  else
  {
    v58 = v122.__r_.__value_.__r.__words[0];
  }

  if (v56 <= 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
  }

  v60 = (v52 + 47);
  v61 = 1;
  v62 = 1;
  do
  {
    v63 = *(v60 - 24);
    if (v63 >= 0)
    {
      v64 = *(v60 - 24);
    }

    else
    {
      v64 = *(v60 - 39);
    }

    if (v63 >= 0)
    {
      v65 = (v60 - 47);
    }

    else
    {
      v65 = *(v60 - 47);
    }

    if (v64 >= v57)
    {
      v66 = v57;
    }

    else
    {
      v66 = v64;
    }

    v67 = memcmp(v58, v65, v66);
    v68 = v57 >= v64;
    if (v67)
    {
      v68 = v67 >= 0;
    }

    if (v68)
    {
      v69 = *v60;
      if (v69 >= 0)
      {
        v70 = *v60;
      }

      else
      {
        v70 = *(v60 - 15);
      }

      if (v69 >= 0)
      {
        v71 = (v60 - 23);
      }

      else
      {
        v71 = *(v60 - 23);
      }

      if (v57 >= v70)
      {
        v72 = v70;
      }

      else
      {
        v72 = v57;
      }

      v73 = memcmp(v71, v58, v72);
      v74 = v70 >= v57;
      if (v73)
      {
        v74 = v73 >= 0;
      }

      if (v74)
      {
        v12 = 1;
        v2 = v111;
        v11 = v114;
        goto LABEL_139;
      }
    }

    v62 = v61++ < v56;
    v60 += 48;
    --v59;
  }

  while (v59);
  v2 = v111;
  v11 = v114;
  v12 = v118;
LABEL_139:
  if (v109 < 0)
  {
LABEL_140:
    operator delete(v122.__r_.__value_.__l.__data_);
  }

LABEL_141:
  if (v62)
  {
    goto LABEL_90;
  }

LABEL_142:
  if (*(a1 + 136) != *(a1 + 144))
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    (*(**(a1 + 32) + 32))(&v122);
    v75 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v75 = v122.__r_.__value_.__l.__size_;
    }

    if (v75 != 1)
    {
      if (v75 == 12)
      {
        v76 = &v122;
        if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v76 = v122.__r_.__value_.__r.__words[0];
        }

        v76->__r_.__value_.__s.__data_[11] = v76->__r_.__value_.__s.__data_[3];
      }

      else if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
      {
        *v122.__r_.__value_.__l.__data_ = 0;
        v122.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v122.__r_.__value_.__s.__data_[0] = 0;
        *(&v122.__r_.__value_.__s + 23) = 0;
      }
    }

    v119 = v12;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v77 = *(a1 + 136);
    v78 = *(a1 + 144) - v77;
    if (v78)
    {
      v112 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
      v115 = v11;
      v79 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = v122.__r_.__value_.__l.__size_;
      }

      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = &v122;
      }

      else
      {
        v81 = v122.__r_.__value_.__r.__words[0];
      }

      if (v79 <= 1)
      {
        v82 = 1;
      }

      else
      {
        v82 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
      }

      v83 = 1;
      v84 = 1;
      do
      {
        v85 = *(v77 + 23);
        v86 = v85;
        if ((v85 & 0x80u) != 0)
        {
          v85 = *(v77 + 8);
        }

        if (v80 == v85)
        {
          v87 = v86 >= 0 ? v77 : *v77;
          if (!memcmp(v81, v87, v80))
          {
            v12 = 1;
            v11 = v115;
            goto LABEL_186;
          }
        }

        v84 = v83++ < v79;
        v77 += 24;
        --v82;
      }

      while (v82);
      v11 = v115;
      v12 = v119;
LABEL_186:
      if (v112 < 0)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v84 = 0;
      if ((*(&v122.__r_.__value_.__s + 23) & 0x80) != 0)
      {
LABEL_187:
        operator delete(v122.__r_.__value_.__l.__data_);
      }
    }

    if (v84)
    {
      goto LABEL_90;
    }
  }

  v88 = *(a1 + 160);
  if ((v40 & 0x80000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v40) & v88) != 0)
  {
    goto LABEL_89;
  }

  v89 = (v88 >> 7) & 1;
  if (v40 != 95)
  {
    LOBYTE(v89) = 0;
  }

  v12 |= v89;
LABEL_90:
  if (*(a1 + 168) == (v12 & 1))
  {
    v50 = 0;
    v51 = -993;
  }

  else
  {
    *(v2 + 16) += v11;
    v50 = *(a1 + 8);
    v51 = -995;
  }

  *v2 = v51;
  *(v2 + 80) = v50;
}

void sub_246115F8C(std::locale *a1)
{
  sub_246115FC4(a1);

  JUMPOUT(0x24C1995D0);
}

std::locale *sub_246115FC4(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC1B0;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 != v7)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 3));
        }

        v10 = (v8 - 48);
        if (*(v8 - 25) < 0)
        {
          operator delete(*v10);
        }

        v8 = (v8 - 48);
      }

      while (v10 != v7);
      v9 = a1[11].__locale_;
    }

    a1[12].__locale_ = v7;
    operator delete(v9);
  }

  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

uint64_t sub_246116134(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void sub_246116174(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_246116204(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_246116278(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_2461162DC(a1);
    }

    v3 = sub_246111008();
    sub_2461162DC(v3);
  }

  return 0;
}

void sub_2461162DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_246116408(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    v13 = sub_246111008();
    sub_2461164CC(v13);
  }

  else
  {
    v4 = v3 + 24 * (v2 - 1);
    if (*(v4 + 16) == 1 && (v6 = v4, v5 = *v4, v7 = *(v6 + 8) - v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (v10 = a2, v11 = memcmp(v5, *(a2 + 16), v7), a2 = v10, !v11))
    {
      *v10 = -994;
      *(v10 + 16) = v8 + v7;
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = 0;
      *a2 = -993;
    }

    *(a2 + 80) = v12;
  }
}

void sub_2461164CC(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_24611655C(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_2461165D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_24611665C(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC150;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C1995D0);
}

std::locale *sub_246116708(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC150;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_246116794(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void sub_2461168B0(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC120;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C1995D0);
}

std::locale *sub_24611695C(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC120;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *sub_2461169E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = a2 + 1;
    v7 = *a2;
    if (a2 + 1 != a3 || v7 != 36)
    {
      v11 = (v7 - 46) > 0x2E || ((1 << (v7 - 46)) & 0x600000000001) == 0;
      if (v11)
      {
        sub_246112688(a1);
      }

      if (v6 == a3 || v7 != 92)
      {
        if (v7 == 46)
        {
          operator new();
        }
      }

      else
      {
        v12 = *v6 - 36;
        if (v12 <= 0x3A && ((1 << v12) & 0x580000000000441) != 0)
        {
          sub_246112688(a1);
        }
      }
    }
  }

  result = sub_2461117E8(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v9 = result[1];
    if (v9 == 40)
    {
      v10 = result + 2;
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      while (v10 != a3)
      {
        v13 = sub_2461169E8(a1, v10, a3);
        if (v13 == v10)
        {
          break;
        }

        v14 = sub_246116D04(a1, v13, a3);
        v11 = v14 == v10;
        v10 = v14;
        if (v11)
        {
          goto LABEL_34;
        }
      }

      v14 = v10;
LABEL_34:
      if (v14 != a3 && v14 + 1 != a3 && *v14 == 92 && v14[1] == 41)
      {
        result = &v14[2 * (v14[1] == 41)];
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        return result;
      }

      sub_246111008();
LABEL_42:
      v15 = sub_246111008();
      return sub_246116D04(v15, v16, v17);
    }

    if (((v9 & 0xF8) == 0x30 || (v9 & 0xFE) == 0x38) && (v9 - 49) <= 8)
    {
      if ((v9 - 48) <= *(a1 + 28))
      {
        sub_2461162DC(a1);
      }

      goto LABEL_42;
    }
  }

  return result;
}

uint64_t sub_246116D04(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 == 42)
  {
    operator new();
  }

  if (a2 + 1 == a3 || v3 != 92 || a2[1] != 123)
  {
    return a2;
  }

  v5 = &a2[2 * (a2[1] == 123)];
  if (v5 != a3)
  {
    v6 = *v5;
    if ((v6 & 0xF8) == 0x30 || (v6 & 0xFE) == 0x38)
    {
      v7 = v6 - 48;
      v8 = v5 + 1;
      if (v5 + 1 != a3)
      {
        while (1)
        {
          v9 = *v8;
          if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
          {
            break;
          }

          if (v7 >= 214748364)
          {
            goto LABEL_41;
          }

          v7 = v9 + 10 * v7 - 48;
          if (++v8 == a3)
          {
            v8 = a3;
            break;
          }
        }
      }

      if (v8 == a3)
      {
        goto LABEL_42;
      }

      v10 = v8 + 1;
      v11 = *v8;
      if (v11 != 44)
      {
        if (v10 != a3 && v11 == 92 && *v10 == 125)
        {
          operator new();
        }

        goto LABEL_42;
      }

      if (v10 != a3 && ((v12 = *v10, (v12 & 0xF8) == 0x30) || (v12 & 0xFE) == 0x38))
      {
        v13 = v12 - 48;
        v10 = v8 + 2;
        if (v8 + 2 != a3)
        {
          while (1)
          {
            v14 = *v10;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v13 >= 214748364)
            {
              goto LABEL_41;
            }

            v13 = v14 + 10 * v13 - 48;
            if (++v10 == a3)
            {
              v10 = a3;
              break;
            }
          }
        }
      }

      else
      {
        v13 = -1;
      }

      if (v10 == a3 || v10 + 1 == a3 || *v10 != 92 || v10[1] != 125)
      {
        goto LABEL_42;
      }

      if (v13 == -1)
      {
        operator new();
      }

      if (v13 >= v7)
      {
        operator new();
      }
    }
  }

LABEL_41:
  sub_246111008();
LABEL_42:
  v15 = sub_246111008();
  return sub_24611723C(v15, v16);
}

uint64_t sub_24611723C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_246117268(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void sub_246117298(void *a1)
{
  *a1 = &unk_2858EC270;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2858EBF70;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_24611736C(void *a1)
{
  *a1 = &unk_2858EC270;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2858EBF70;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned __int8 *sub_246117420(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 > 0x5B)
    {
      if (v3 == 92)
      {
        if (a2 + 1 != a3)
        {
          v10 = a2[1];
          if (v10 == 66)
          {
            operator new();
          }

          if (v10 == 98)
          {
            operator new();
          }
        }
      }

      else if (v3 == 94)
      {
        operator new();
      }
    }

    else
    {
      if (v3 == 36)
      {
        operator new();
      }

      v5 = v3 == 40;
      v4 = a2 + 1;
      v5 = !v5 || v4 == a3;
      if (!v5)
      {
        v5 = *v4 == 63;
        v6 = a2 + 2;
        if (v5 && v6 != a3)
        {
          v8 = *v6;
          if (v8 == 33 || v8 == 61)
          {
            sub_2461180EC(v14);
            v14[6] = *(a1 + 24);
            sub_246110824(v14, a2 + 3, a3);
            sub_246118148();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_246117748(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 <= 0x3E)
  {
    if (*a2 <= 0x28u)
    {
      if (v3 != 36)
      {
        if (v3 == 40)
        {
          v7 = a2 + 1;
          if (a2 + 1 != a3)
          {
            if (a2 + 2 != a3 && *v7 == 63 && a2[2] == 58)
            {
              v8 = (a1 + 36);
              ++*(a1 + 36);
              v10 = sub_246117D18(a1, a2 + 3, a3);
              if (v10 == a3)
              {
                goto LABEL_65;
              }

              v11 = v10;
              if (*v10 != 41)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if ((*(a1 + 24) & 2) == 0)
              {
                operator new();
              }

              v8 = (a1 + 36);
              ++*(a1 + 36);
              v15 = sub_246117D18(a1, v7, a3);
              if (v15 == a3)
              {
                goto LABEL_65;
              }

              v11 = v15;
              if (*v15 != 41)
              {
                goto LABEL_65;
              }

              if ((*(a1 + 24) & 2) == 0)
              {
                operator new();
              }
            }

            --*v8;
            return v11 + 1;
          }

LABEL_65:
          sub_246111008();
LABEL_66:
          sub_246111008();
          goto LABEL_67;
        }

        goto LABEL_45;
      }
    }

    else if (v3 != 41)
    {
      if (v3 == 46)
      {
        operator new();
      }

      if (v3 - 42 < 2)
      {
        goto LABEL_64;
      }

LABEL_45:
      sub_246112688(a1);
    }

    return a2;
  }

  v4 = v3 - 92;
  if (v4 > 0x21)
  {
LABEL_40:
    if (v3 == 91)
    {

      return sub_2461117E8(a1, a2, a3);
    }

    if (v3 != 63)
    {
      goto LABEL_45;
    }

LABEL_64:
    sub_246111008();
    goto LABEL_65;
  }

  if (((1 << (v3 - 92)) & 0x300000006) != 0)
  {
    return a2;
  }

  if (v3 != 92)
  {
    if (v4 == 31)
    {
      goto LABEL_64;
    }

    goto LABEL_40;
  }

  v5 = a2 + 1;
  if (a2 + 1 == a3)
  {
LABEL_67:
    v20 = sub_246111008();
    return sub_246117D18(v20, v21, v22);
  }

  v6 = *v5;
  if (v6 == 48)
  {
    sub_246112688(a1);
  }

  if ((v6 - 49) <= 8)
  {
    v16 = (v6 - 48);
    v17 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_46;
    }

    do
    {
      v18 = *v17;
      if ((v18 - 48) > 9)
      {
        break;
      }

      if (v16 >= 0x19999999)
      {
        goto LABEL_66;
      }

      v16 = v18 + 10 * v16 - 48;
      ++v17;
    }

    while (v17 != a3);
    if (v16)
    {
LABEL_46:
      if (v16 <= *(a1 + 28))
      {
        sub_2461162DC(a1);
      }
    }

    goto LABEL_66;
  }

  if (*v5 > 0x63u)
  {
    switch(v6)
    {
      case 'w':
        operator new();
      case 's':
        operator new();
      case 'd':
        operator new();
    }
  }

  else
  {
    switch(v6)
    {
      case 'D':
        operator new();
      case 'S':
        operator new();
      case 'W':
        operator new();
    }
  }

  result = sub_24611514C(a1, v5, a3, 0);
  if (result == v5)
  {
    return a2;
  }

  return result;
}

unsigned __int8 *sub_246117D18(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  while (1)
  {
    v7 = result;
    result = sub_246117420(a1, result, a3);
    if (result == v7)
    {
      break;
    }

LABEL_2:
    if (result == v7)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_246117748(a1);
  if (v8 != v7)
  {
    result = sub_2461127F0(a1, v8, a3);
    goto LABEL_2;
  }

  result = v7;
LABEL_7:
  if (v7 == a2)
  {
    operator new();
  }

  if (v7 != a3 && *result == 124)
  {
    v9 = result + 1;
    v10 = result + 1;
    while (1)
    {
      v11 = v10;
      v10 = sub_246117420(a1, v10, a3);
      if (v10 == v11)
      {
        v12 = sub_246117748(a1);
        if (v12 == v11)
        {
LABEL_18:
          if (v11 == v9)
          {
            operator new();
          }

          operator new();
        }

        v10 = sub_2461127F0(a1, v12, a3);
      }

      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_246117FE8(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_246118078(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_2461180EC(uint64_t a1)
{
  v2 = MEMORY[0x24C199520]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void sub_246118210(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0uLL;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  __p = 0;
  v18 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v19 = 0;
  *&v20 = v5;
  *(&v20 + 1) = v5;
  v21 = 0;
  sub_24610E030(&__p, v4, &v20);
  v22 = v6;
  v23 = v6;
  v24 = 0;
  v25 = v20;
  v26 = v21;
  v28 = v6;
  v27 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_24610E208(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  for (i = 1; i < v10; i = v13++)
  {
    v15 = &v9[24 * i];
    v16 = v12 + 24 * (v11 + v13 - 2);
    *v16 = *v15;
    *(v16 + 16) = v15[16];
  }

LABEL_11:

  operator delete(v9);
}

void sub_246118398(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC030;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x24C1995D0);
}

std::locale *sub_246118490(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC030;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_246118568(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_18;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      if (v6 != 95)
      {
LABEL_15:
        if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

LABEL_17:
      v10 = 1;
      goto LABEL_25;
    }

LABEL_18:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
        if (v6 != 95)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
  {
    v9 = 1;
    if (v8 == 95)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = 0;
    if (v8 == 95)
    {
      goto LABEL_22;
    }
  }

  if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
  {
    v11 = 0;
    goto LABEL_24;
  }

LABEL_22:
  v11 = 1;
LABEL_24:
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void sub_24611868C(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC000;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C1995D0);
}

std::locale *sub_246118738(std::locale *a1)
{
  a1->__locale_ = &unk_2858EC000;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858EBF70;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_2461187C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2461187F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_246118834(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_246118848(void *a1)
{
  *a1 = &unk_2858EBF70;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_2461188D8(void *result)
{
  *result = &unk_2858EBF70;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_246118970(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = **a2;
  if (v3 == result || (v4 = *(a2 + 8), v4 == result))
  {
    v10 = 0uLL;
    result = sub_246118970(&v10);
    v7 = v10;
  }

  else
  {
    v5 = (4 * *(*a2 + 16));
    if (v5)
    {
      v6 = 4 * v5;
      v7 = 0uLL;
      do
      {
        v8 = *v3++;
        v9 = v8;
        v8.i32[0] = *v4++;
        v7 = vmlaq_n_f32(v7, v9, v8.f32[0]);
        v6 -= 16;
      }

      while (v6);
    }

    else
    {
      v7 = 0uLL;
    }
  }

  *v2 = v7;
  return result;
}

float32x4_t *sub_2461189FC(float32x4_t *result, uint64_t a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = *(a2 + 8), v4 == result))
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    result = sub_2461189FC(&v7);
    v6 = v8;
    *v2 = v7;
    v2[1] = v6;
    v5 = v10;
    v2[2] = v9;
  }

  else
  {
    *result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *v3, *v4), v3[1], v4[1]), v3[2], v4[2]), v3[3], v4[3]);
    result[1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *v3, v4[4]), v3[1], v4[5]), v3[2], v4[6]), v3[3], v4[7]);
    result[2] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *v3, v4[8]), v3[1], v4[9]), v3[2], v4[10]), v3[3], v4[11]);
    v5 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *v3, v4[12]), v3[1], v4[13]), v3[2], v4[14]), v3[3], v4[15]);
  }

  v2[3] = v5;
  return result;
}

uint64_t sub_246118B04(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  kdebug_trace();
  v6 = *a3;
  *(a3 + 8) = *a3;
  v7.i32[0] = *(a1 + 16);
  v8 = vcvtms_s32_f32(0.04 / *v7.i32);
  v9 = *(a1 + 64);
  v10 = vceqz_s32(*&v9);
  v11.i64[0] = -1;
  v11.i32[2] = -1;
  if ((v10.i8[0] & 1) == 0 && (v10.i8[4] & 1) == 0 && DWORD2(v9))
  {
    v11 = vcvtq_s32_f32(vdivq_f32(vsubq_f32(*a2, *(a1 + 32)), vdupq_lane_s32(v7, 0)));
  }

  v12 = v11.i32[0] - v8;
  v38 = v11.i32[0] + v8;
  if ((v11.i32[0] - v8) <= (v11.i32[0] + v8))
  {
    v13 = v11.i32[1] - v8;
    v14 = v11.i32[1] + v8;
    v15 = v11.i32[2] - v8;
    v16 = v11.i32[2] + v8;
    v37 = v13;
    v39 = v14;
    v40 = v15;
    v43 = v16;
    if (v13 <= v14 && v15 <= v16)
    {
      do
      {
        v20 = v37;
        v42 = v12;
        if ((v12 & 0x80000000) == 0)
        {
          do
          {
            v21 = v40;
            v41 = v20;
            if ((v20 & 0x80000000) == 0)
            {
              do
              {
                v22 = *(a1 + 64);
                if (v12 < v22 && (v21 & 0x80000000) == 0 && v41 < SDWORD1(v22) && v21 < SDWORD2(v22))
                {
                  v24 = *(a1 + 80) + 24 * (v21 + (v41 + DWORD1(v22) * v12) * DWORD2(v22));
                  v25 = *v24;
                  v26 = *(v24 + 8);
                  while (v25 != v26)
                  {
                    v27 = *v25;
                    v28 = vsubq_f32(*(*(a1 + 8) + 48 * *v25), *a2);
                    v29 = vmulq_f32(v28, v28);
                    if (sqrtf(v29.f32[2] + vaddv_f32(*v29.f32)) <= 0.04)
                    {
                      v30 = *(a3 + 16);
                      if (v6 < v30)
                      {
                        *v6++ = v27;
                      }

                      else
                      {
                        v31 = *a3;
                        v32 = v6 - *a3;
                        v33 = v32 >> 2;
                        v34 = (v32 >> 2) + 1;
                        if (v34 >> 62)
                        {
                          sub_2460D368C();
                        }

                        v35 = v30 - v31;
                        if (v35 >> 1 > v34)
                        {
                          v34 = v35 >> 1;
                        }

                        if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v36 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v36 = v34;
                        }

                        if (v36)
                        {
                          if (!(v36 >> 62))
                          {
                            operator new();
                          }

                          sub_2460D368C();
                        }

                        *(4 * v33) = v27;
                        v6 = (4 * v33 + 4);
                        memcpy(0, v31, v32);
                        *a3 = 0;
                        *(a3 + 8) = v6;
                        *(a3 + 16) = 0;
                        if (v31)
                        {
                          operator delete(v31);
                        }

                        v12 = v42;
                      }

                      *(a3 + 8) = v6;
                    }

                    ++v25;
                  }
                }

                v19 = v21++ == v43;
              }

              while (!v19);
            }

            v20 = v41 + 1;
          }

          while (v41 + 1 <= v39);
        }

        v19 = v12++ == v38;
      }

      while (!v19);
    }
  }

  return kdebug_trace();
}

void sub_246118E18(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2460D368C();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      sub_2460D368C();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
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
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

id sub_246118F1C(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = sub_246119148(a1);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_width(v2, v3, v4);
    v9 = objc_msgSend_height(v5, v7, v8);
    v12 = objc_msgSend_commandBuffer(*(*(a1 + 48) + 8), v10, v11);
    v15 = objc_msgSend_blitCommandEncoder(v12, v13, v14);
    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
    *buf = v6;
    *&buf[8] = v9;
    *&buf[16] = 1;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v15, v16, v5, 0, 0, __p, buf, *(a1 + 304), 0, 16 * v6, v9 * 16 * v6);
    objc_msgSend_endEncoding(v15, v17, v18);
    objc_msgSend_commit(v12, v19, v20);
    objc_msgSend_waitUntilCompleted(v12, v21, v22);
    v23 = *(a1 + 304);
  }

  else
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v12 = qword_27EE3F638;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual id<MTLBuffer> oc::voxel_hashing::VoxelDepthRendererUsingMesh::normalBuffer()");
      v25 = v27 >= 0 ? __p : __p[0];
      *buf = 136315394;
      *&buf[4] = v25;
      *&buf[12] = 1026;
      *&buf[14] = 230;
      _os_log_error_impl(&dword_2460CF000, v12, OS_LOG_TYPE_ERROR, "%s:%{public}d Received invalid texture.", buf, 0x12u);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v23 = 0;
  }

  return v23;
}

id sub_246119148(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v1 = *(a1 + 288);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v8 = sub_246119334;
    v9 = &unk_278E9B530;
    v10 = a1 + 240;
    dispatch_sync(v1, block);
    v3 = *(*(a1 + 240) + 8 * *(a1 + 280));
  }

  else
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v4 = qword_27EE3F638;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(block, "virtual id<MTLTexture> oc::voxel_hashing::VoxelDepthRendererUsingMesh::normalTexture()");
      v6 = SHIBYTE(v8) >= 0 ? block : block[0];
      *buf = 136315394;
      v12 = v6;
      v13 = 1026;
      v14 = 218;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get normal texture - VoxelDepthRendererUsingMesh not initialized.", buf, 0x12u);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(block[0]);
      }
    }

    v3 = 0;
  }

  return v3;
}