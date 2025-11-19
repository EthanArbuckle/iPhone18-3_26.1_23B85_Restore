uint64_t sub_2461192F0()
{
  qword_27EE3F638 = os_log_create("com.apple.CoreOCModules", "VoxelHashing");

  return MEMORY[0x2821F96F8]();
}

int8x16_t sub_246119334(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[3].i8[8] == 1)
  {
    result = vextq_s8(v1[2], v1[2], 8uLL);
    v1[2] = result;
    v1[3].i8[8] = 0;
  }

  return result;
}

id sub_246119358(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = sub_246119590(a1);
  if (v4)
  {
    v5 = objc_msgSend_commandBuffer(*(*(a1 + 48) + 8), v2, v3);
    v8 = objc_msgSend_width(v4, v6, v7);
    v11 = objc_msgSend_height(v4, v9, v10);
    v14 = objc_msgSend_blitCommandEncoder(v5, v12, v13);
    __p[0] = 0;
    __p[1] = 0;
    v26 = 0;
    *buf = v8;
    *&buf[8] = v11;
    *&buf[16] = 1;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v14, v15, v4, 0, 0, __p, buf, *(a1 + 232), 0, 4 * v8, v11 * 4 * v8);
    objc_msgSend_endEncoding(v14, v16, v17);
    objc_msgSend_commit(v5, v18, v19);
    objc_msgSend_waitUntilCompleted(v5, v20, v21);
    v22 = *(a1 + 232);
  }

  else
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v5 = qword_27EE3F638;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual id<MTLBuffer> oc::voxel_hashing::VoxelDepthRendererUsingMesh::depthBuffer()");
      v24 = v26 >= 0 ? __p : __p[0];
      *buf = 136315394;
      *&buf[4] = v24;
      *&buf[12] = 1026;
      *&buf[14] = 175;
      _os_log_error_impl(&dword_2460CF000, v5, OS_LOG_TYPE_ERROR, "%s:%{public}d Received invalid texture.", buf, 0x12u);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v22 = 0;
  }

  return v22;
}

id sub_246119590(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v1 = *(a1 + 216);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v8 = sub_246119334;
    v9 = &unk_278E9B530;
    v10 = a1 + 168;
    dispatch_sync(v1, block);
    v3 = *(*(a1 + 168) + 8 * *(a1 + 208));
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
      sub_24610D894(block, "virtual id<MTLTexture> oc::voxel_hashing::VoxelDepthRendererUsingMesh::depthTexture()");
      v6 = SHIBYTE(v8) >= 0 ? block : block[0];
      *buf = 136315394;
      v12 = v6;
      v13 = 1026;
      v14 = 207;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get depth texture - VoxelDepthRendererUsingMesh not initialized.", buf, 0x12u);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(block[0]);
      }
    }

    v3 = 0;
  }

  return v3;
}

void sub_246119738(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v125 = *MEMORY[0x277D85DE8];
  sub_2461374DC(*(a1 + 32));
  v8 = atomic_load((a1 + 144));
  v11 = sub_246135ED8(*(a1 + 32), v9, v10);
  v12 = atomic_load((a1 + 148));
  if (v8)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v13 = qword_27EE3F638;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::canRenderDepthImage(const BOOL, const uint32_t, const int, const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
    if (v116.i8[7] >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 1026;
    *&buf[14] = 148;
    v15 = "%s:%{public}d Failed to render depth image - rendering has been stopped.";
LABEL_45:
    _os_log_error_impl(&dword_2460CF000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    if (v116.i8[7] < 0)
    {
      operator delete(__p[0]);
    }

LABEL_18:

    return;
  }

  if (!v11)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v16 = qword_27EE3F638;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "BOOL oc::voxel_hashing::canRenderDepthImage(const BOOL, const uint32_t, const int, const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
      v40 = v116.i8[7] >= 0 ? __p : __p[0];
      *buf = 136315394;
      *&buf[4] = v40;
      *&buf[12] = 1026;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_2460CF000, v16, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to render depth image - empty voxel blocks.", buf, 0x12u);
      if (v116.i8[7] < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v12 >= 1)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v13 = qword_27EE3F638;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::canRenderDepthImage(const BOOL, const uint32_t, const int, const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
    if (v116.i8[7] >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v32;
    *&buf[12] = 1026;
    *&buf[14] = 159;
    v15 = "%s:%{public}d Failed to render depth image - rendering task already in pipeline.";
    goto LABEL_45;
  }

  if (sub_24611A5E4(a2, a3, *a4, a4[1]))
  {
    v17 = sub_24613726C(*(a1 + 32));
    v20 = *objc_msgSend_contents(*(v17 + 16), v18, v19);
    if (*objc_msgSend_contents(*v17, v21, v22))
    {
      _ZF = v20 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      if (qword_27EE3F640 != -1)
      {
        dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
      }

      v13 = qword_27EE3F638;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      sub_24610D894(__p, "virtual void oc::voxel_hashing::VoxelDepthRendererUsingMesh::renderDepthImage(const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
      if (v116.i8[7] >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v25;
      *&buf[12] = 1026;
      *&buf[14] = 123;
      v15 = "%s:%{public}d Failed to render depth image - mesh is empty.";
    }

    else
    {
      v27 = *a3;
      v26 = *(a3 + 16);
      v28 = *(a3 + 32);
      v29 = vdup_n_s32(0x38D1B717u);
      v30 = vand_s8(vcge_f32(v29, vabs_f32(vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v28, v28, 8uLL)), 0xBF80000080000000))), vcge_f32(v29, vabs_f32(vext_s8(*a3, *&vextq_s8(v27, v27, 8uLL), 4uLL))));
      if ((vpmin_u32(v30, v30).u32[0] & 0x80000000) != 0)
      {
        v33 = *a4;
        if (*a4 >= 0.0 && fabs(v33) > 0.000000999999997)
        {
          v34 = a4[1];
          if (v34 >= 0.0 && fabs(v34) > 0.000000999999997)
          {
            v35 = *(a1 + 56);
            if (v35 >= 0.0 && fabs(v35) > 0.000000999999997)
            {
              v36 = *(a1 + 64);
              if (v36 >= 0.0 && fabs(v36) > 0.000000999999997)
              {
                *&v37 = *v28.i32 + 0.5;
                v38 = v34;
                v39 = v38 - (*&v28.i32[1] + 0.5);
                v108 = *(a1 + 64);
                v109 = *(a1 + 56);
                if (v33 == v35 && v34 == v36)
                {
                  v110 = *a3;
                  v111 = *(a3 + 16);
                  *(&v37 + 1) = v39;
                  objc_msgSend_commandBufferWithDescriptor_(*(*(a1 + 48) + 8), v23, *(a1 + 328), v37);
                }

                else
                {
                  v41 = *v27.i32;
                  v42 = *&v26.i32[1];
                  v43 = *&v37;
                  v44 = v39;
                  if (v35 / v36 >= v33 / v34)
                  {
                    v45 = v35 / v33;
                    v46 = v35 / v33 * v43;
                    v47 = -(v36 - v34 * v45) * -0.5 + v44 * v45;
                  }

                  else
                  {
                    v45 = v36 / v34;
                    v46 = -(v35 - v33 * (v36 / v34)) * -0.5 + v43 * (v36 / v34);
                    v47 = v36 / v34 * v44;
                  }

                  v48 = v45 * v41;
                  v49 = v48;
                  v50 = v45 * v42;
                  *v110.i32 = v49;
                  *(&v111 + 1) = v50;
                  *&v51 = v46;
                  *&v52 = v47;
                  __asm { FMOV            V2.4S, #1.0 }

                  objc_msgSend_commandBufferWithDescriptor_(*(*(a1 + 48) + 8), v23, *(a1 + 328), __PAIR64__(v52, v51));
                }
                v57 = ;
                v58.f64[0] = v109;
                if (v57)
                {
                  v58.f64[1] = v108;
                  v59 = vcvt_f32_f64(v58);
                  v126.columns[1].i32[0] = 0;
                  v126.columns[1].i64[1] = 0;
                  v126.columns[0].i32[1] = 0;
                  v126.columns[0].i64[1] = 0;
                  v126.columns[0].f32[0] = (*v110.i32 + *v110.i32) / v59.f32[0];
                  v126.columns[1].f32[1] = (*(&v111 + 1) + *(&v111 + 1)) / v59.f32[1];
                  __asm { FMOV            V3.2S, #1.0 }

                  *v126.columns[2].f32 = vsub_f32(_D3, vdiv_f32(vadd_f32(v107, v107), v59));
                  v126.columns[2].i64[1] = 0xBF800000BF80063ELL;
                  v61 = *(a2 + 16);
                  v62 = *(a2 + 32);
                  v63 = *(a2 + 48);
                  v64 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*(a1 + 96))), v61, *(a1 + 96), 1), v62, *(a1 + 96), 2), v63, *(a1 + 96), 3);
                  v65 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*(a1 + 112))), v61, *(a1 + 112), 1), v62, *(a1 + 112), 2), v63, *(a1 + 112), 3);
                  v66 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*(a1 + 128))), v61, *(a1 + 128), 1), v62, *(a1 + 128), 2), v63, *(a1 + 128), 3);
                  *__p = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*(a1 + 80))), v61, *(a1 + 80), 1), v62, *(a1 + 80), 2), v63, *(a1 + 80), 3);
                  v116 = v64;
                  v117 = v65;
                  v118 = v66;
                  v126.columns[3] = xmmword_24613FC50;
                  *buf = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126.columns[0].u32[0], *__p), v126.columns[1].u64[0], __p[0], 1), v126.columns[2], *__p, 2), xmmword_24613FC50, *__p, 3);
                  *&buf[16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126.columns[0].u32[0], v64.f32[0]), v126.columns[1].u64[0], *v64.f32, 1), v126.columns[2], v64, 2), xmmword_24613FC50, v64, 3);
                  v123 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126.columns[0].u32[0], v65.f32[0]), v126.columns[1].u64[0], *v65.f32, 1), v126.columns[2], v65, 2), xmmword_24613FC50, v65, 3);
                  v124 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126.columns[0].u32[0], v66.f32[0]), v126.columns[1].u64[0], *v66.f32, 1), v126.columns[2], v66, 2), xmmword_24613FC50, v66, 3);
                  v114 = __invert_f4(v126);
                  v13 = v57;
                  v67 = *(*(a1 + 168) + 8 * *(a1 + 192));
                  v70 = objc_msgSend_colorAttachments(*(a1 + 320), v68, v69);
                  v72 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, 0);
                  objc_msgSend_setTexture_(v72, v73, v67);

                  v74 = *(*(a1 + 240) + 8 * *(a1 + 264));
                  v77 = objc_msgSend_colorAttachments(*(a1 + 320), v75, v76);
                  v79 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, 1);
                  objc_msgSend_setTexture_(v79, v80, v74);

                  v83 = *objc_msgSend_contents(*(v17 + 16), v81, v82);
                  v85 = objc_msgSend_renderCommandEncoderWithDescriptor_(v13, v84, *(a1 + 320));
                  objc_msgSend_setLabel_(v85, v86, @"RenderDepth Encoder");
                  objc_msgSend_setRenderPipelineState_(v85, v87, *(a1 + 152));
                  objc_msgSend_setDepthStencilState_(v85, v88, *(a1 + 312));
                  objc_msgSend_setVertexBuffer_offset_atIndex_(v85, v89, *(v17 + 8), 0, 0);
                  objc_msgSend_setVertexBytes_length_atIndex_(v85, v90, buf, 64, 1);
                  objc_msgSend_setFragmentBytes_length_atIndex_(v85, v91, &v114, 64, 0);
                  objc_msgSend_setFragmentBytes_length_atIndex_(v85, v92, __p, 64, 1);
                  objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(v85, v93, 3, v83, 1, *(v17 + 24), 0);
                  v119[0] = 0;
                  v119[1] = 0;
                  v120 = *(a1 + 56);
                  v121 = xmmword_24613FB40;
                  objc_msgSend_setViewport_(v85, v94, v119);
                  objc_msgSend_setCullMode_(v85, v95, 2);
                  objc_msgSend_endEncoding(v85, v96, v97);

                  v113[0] = MEMORY[0x277D85DD0];
                  v113[1] = 3221225472;
                  v113[2] = sub_24611A1A4;
                  v113[3] = &unk_278E9B550;
                  v113[4] = a1;
                  objc_msgSend_addScheduledHandler_(v13, v98, v113);
                  v112[0] = MEMORY[0x277D85DD0];
                  v112[1] = 3221225472;
                  v112[2] = sub_24611A1B8;
                  v112[3] = &unk_278E9B550;
                  v112[4] = a1;
                  objc_msgSend_addCompletedHandler_(v13, v99, v112);
                  v102 = atomic_load((a1 + 144));
                  if ((v102 & 1) == 0)
                  {
                    objc_msgSend_commit(v13, v100, v101);
                    objc_msgSend_waitUntilCompleted(v13, v103, v104);
                  }
                }

                else
                {
                  if (qword_27EE3F640 != -1)
                  {
                    dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
                  }

                  v105 = qword_27EE3F638;
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                  {
                    sub_24610D894(__p, "virtual void oc::voxel_hashing::VoxelDepthRendererUsingMesh::renderDepthImage(const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
                    v106 = v116.i8[7] >= 0 ? __p : __p[0];
                    *buf = 136315394;
                    *&buf[4] = v106;
                    *&buf[12] = 1026;
                    *&buf[14] = 138;
                    _os_log_error_impl(&dword_2460CF000, v105, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to render depth image - failed to create command buffer.", buf, 0x12u);
                    if (v116.i8[7] < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }

                  v13 = 0;
                }

                goto LABEL_18;
              }
            }
          }
        }
      }

      if (qword_27EE3F640 != -1)
      {
        dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
      }

      v13 = qword_27EE3F638;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      sub_24610D894(__p, "virtual void oc::voxel_hashing::VoxelDepthRendererUsingMesh::renderDepthImage(const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
      if (v116.i8[7] >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v31;
      *&buf[12] = 1026;
      *&buf[14] = 131;
      v15 = "%s:%{public}d Failed to render depth image - projection matrix is invalid.";
    }

    goto LABEL_45;
  }
}

void sub_24611A1B8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_error(a2, a2, a3);
  v7 = v4;
  if (v4)
  {
    sub_24611A2D0(v4, v5, v6);
  }

  else
  {
    v8 = *(v3 + 216);
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = sub_24611A584;
    v13 = &unk_278E9B530;
    v14 = v3 + 168;
    dispatch_sync(v8, &block);
    v9 = *(v3 + 288);
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = sub_24611A584;
    v13 = &unk_278E9B530;
    v14 = v3 + 240;
    dispatch_sync(v9, &block);
  }

  atomic_fetch_add((v3 + 148), 0xFFFFFFFF);
}

void sub_24611A2D0(void *a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x277CD6940]);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v25, v31, 16);
  if (v10)
  {
    v12 = *v26;
    *&v11 = 138543362;
    v24 = v11;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_errorState(v14, v8, v9, v24, v25) == 4)
        {
          if (qword_27EE3F650 != -1)
          {
            dispatch_once(&qword_27EE3F650, &unk_2858EC3C0);
          }

          v17 = qword_27EE3F648;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v20 = objc_msgSend_label(v14, v18, v19);
            *buf = v24;
            v30 = v20;
            _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, "%{public}@ has faulted", buf, 0xCu);
          }

LABEL_4:

          continue;
        }

        if (objc_msgSend_errorState(v14, v15, v16) == 2)
        {
          if (qword_27EE3F650 != -1)
          {
            dispatch_once(&qword_27EE3F650, &unk_2858EC3C0);
          }

          v17 = qword_27EE3F648;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_msgSend_label(v14, v21, v22);
            *buf = v24;
            v30 = v23;
            _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, "%{public}@ has been affected", buf, 0xCu);
          }

          goto LABEL_4;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v25, v31, 16);
    }

    while (v10);
  }
}

int8x16_t sub_24611A584(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  *(v1 + 24) = result;
  *(v1 + 56) = 1;
  return result;
}

uint64_t sub_24611A5A0()
{
  qword_27EE3F648 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24611A5E4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(MEMORY[0x277D860B0] + 16);
  v8 = *(MEMORY[0x277D860B0] + 32);
  v9 = vdupq_n_s32(0x38D1B717u);
  v10 = vandq_s8(vandq_s8(vcgeq_f32(v9, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v4, *v4.f32, 1), v5, *v5.f32, 1), v6, *v6.f32, 1), v7)), vcgeq_f32(v9, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v4, v4.f32[0]), v5, v5.f32[0]), v6, v6.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v9, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v4, v4, 2), v5, v5, 2), v6, v6, 2), v8)));
  v10.i32[3] = v10.i32[2];
  if ((vminvq_u32(v10) & 0x80000000) == 0 || (v11 = vzip1q_s32(vzip2q_s32(v4, v6), vdupq_laneq_s32(v5, 2)), v12 = vtrn2q_s32(v4, v5), v12.i32[2] = HIDWORD(*(a1 + 32)), v13 = vzip1q_s32(vzip1q_s32(v4, v6), v5), v14 = vandq_s8(vandq_s8(vcgeq_f32(v9, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v5.f32[0]), v12, *v5.f32, 1), v11, v5, 2), v7)), vcgeq_f32(v9, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v4.f32[0]), v12, *v4.f32, 1), v11, v4, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v9, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v6.f32[0]), v12, *v6.f32, 1), v11, v6, 2), v8))), v14.i32[3] = v14.i32[2], (vminvq_u32(v14) & 0x80000000) == 0) || (v15 = vmulq_f32(v4, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL))), vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL))), fabsf((v15.f32[2] + vaddv_f32(*v15.f32)) + -1.0) > 0.000011) || (v16 = vabs_f32(vzip2_s32(*&vextq_s8(v4, v4, 8uLL), *&vextq_s8(v5, v5, 8uLL))), v17 = vdup_n_s32(0x38D1B717u), v18 = vand_s8(vcge_f32(v17, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v17, v16)), (vpmin_u32(v18, v18).u32[0] & 0x80000000) == 0))
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v19 = qword_27EE3F638;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::isValidInputForRenderDepthImage(const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
    if (v27 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    *buf = 136315394;
    v29 = v21;
    v30 = 1026;
    v31 = 114;
    v22 = "%s:%{public}d Failed to render depth image - invalid viewMatrix.";
LABEL_13:
    _os_log_error_impl(&dword_2460CF000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_8:

    return 0;
  }

  v23 = vand_s8(vcge_f32(v17, vabs_f32(vadd_f32(vzip1_s32(*(a2 + 24), *(a2 + 40)), 0xBF80000080000000))), vcge_f32(v17, vabs_f32(vext_s8(*a2, *&vextq_s8(*a2, *a2, 8uLL), 4uLL))));
  if ((vpmin_u32(v23, v23).u32[0] & 0x80000000) == 0)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v19 = qword_27EE3F638;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::isValidInputForRenderDepthImage(const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
    if (v27 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    *buf = 136315394;
    v29 = v24;
    v30 = 1026;
    v31 = 120;
    v22 = "%s:%{public}d Failed to render depth image - invalid camera intrinsics.";
    goto LABEL_13;
  }

  if (a3 < 0.0 || fabs(a3) <= 0.000000999999997 || a4 < 0.0 || fabs(a4) <= 0.000000999999997)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v19 = qword_27EE3F638;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::isValidInputForRenderDepthImage(const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
    if (v27 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    *buf = 136315394;
    v29 = v25;
    v30 = 1026;
    v31 = 127;
    v22 = "%s:%{public}d Failed to render depth image - invalid render image size.";
    goto LABEL_13;
  }

  return 1;
}

uint64_t sub_24611AA44(uint64_t a1, unint64_t a2, unint64_t a3, float32x4_t *a4, float a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  if (!v5)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v7 = qword_27EE3F638;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::init(const std::size_t, const std::size_t, const simd_float4x4 &, const float, const uint8_t)");
    if (v45 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v47 = v11;
    v48 = 1026;
    v49 = 52;
    v9 = "%s:%{public}d Failed to initialize VoxelDepthRendererUsingMesh - failed to get MTLDeviceContext.";
    goto LABEL_35;
  }

  v6 = *(a1 + 32);
  if (!v6 || (*(v6 + 8) & 1) == 0)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v7 = qword_27EE3F638;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::init(const std::size_t, const std::size_t, const simd_float4x4 &, const float, const uint8_t)");
    if (v45 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v47 = v10;
    v48 = 1026;
    v49 = 58;
    v9 = "%s:%{public}d Failed to initialize VoxelDepthRendererUsingMesh - invalid init config.";
    goto LABEL_35;
  }

  if (!a2 || !a3)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v7 = qword_27EE3F638;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::init(const std::size_t, const std::size_t, const simd_float4x4 &, const float, const uint8_t)");
    if (v45 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v47 = v12;
    v48 = 1026;
    v49 = 64;
    v9 = "%s:%{public}d Failed to initialize VoxelDepthRendererUsingMesh - invalid image size.";
    goto LABEL_35;
  }

  if (a5 < 0.0001)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v7 = qword_27EE3F638;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::init(const std::size_t, const std::size_t, const simd_float4x4 &, const float, const uint8_t)");
    if (v45 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v47 = v8;
    v48 = 1026;
    v49 = 70;
    v9 = "%s:%{public}d Failed to initialize VoxelDepthRendererUsingMesh - invalid voxel dimension.";
    goto LABEL_35;
  }

  if (*(a1 + 8) == 1)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v7 = qword_27EE3F638;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::init(const std::size_t, const std::size_t, const simd_float4x4 &, const float, const uint8_t)");
    if (v45 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    v47 = v13;
    v48 = 1026;
    v49 = 76;
    v9 = "%s:%{public}d Failed to initialize VoxelDepthRendererUsingMesh - already been initialized.";
    goto LABEL_35;
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  v14 = a4[1];
  v15 = a4[2];
  v16 = a4[3];
  v17 = vmulq_f32(*a4, 0);
  v18 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v17, v14, a5), 0, v15), 0, v16);
  v19 = vmlaq_f32(v17, 0, v14);
  *(a1 + 80) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*a4, a5), 0, v14), 0, v15), 0, v16);
  *(a1 + 96) = v18;
  *(a1 + 112) = vmlaq_f32(vmlaq_n_f32(v19, v15, a5), 0, v16);
  *(a1 + 128) = vaddq_f32(v16, vmlaq_f32(v19, 0, v15));
  v21 = *v5;
  v23 = objc_msgSend_newBufferWithLength_options_(v21, v22, 4 * *(a1 + 24) * *(a1 + 16), 0);
  v24 = *(a1 + 232);
  *(a1 + 232) = v23;

  v26 = *(a1 + 232);
  if (!v26)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v7 = qword_27EE3F638;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createBuffers()");
    if (v45 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = __p[0];
    }

    *buf = 136315394;
    v47 = v40;
    v48 = 1026;
    v49 = 265;
    v9 = "%s:%{public}d Failed to create depthImageBuffer.";
    goto LABEL_35;
  }

  objc_msgSend_setLabel_(v26, v25, @"depthImageBuffer");
  v27 = **(a1 + 48);
  v29 = objc_msgSend_newBufferWithLength_options_(v27, v28, 16 * *(a1 + 24) * *(a1 + 16), 0);
  v30 = *(a1 + 304);
  *(a1 + 304) = v29;

  v32 = *(a1 + 304);
  if (!v32)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v7 = qword_27EE3F638;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createBuffers()");
    if (v45 >= 0)
    {
      v42 = __p;
    }

    else
    {
      v42 = __p[0];
    }

    *buf = 136315394;
    v47 = v42;
    v48 = 1026;
    v49 = 275;
    v9 = "%s:%{public}d Failed to create normalImageBuffer.";
    goto LABEL_35;
  }

  objc_msgSend_setLabel_(v32, v31, @"normalImageBuffer");
  if (sub_24611B220(a1) && sub_24611B7EC(a1, v33) && sub_24611BD88(a1) && sub_24611BFD4(a1))
  {
    v34 = objc_alloc_init(MEMORY[0x277CD6CE8]);
    v35 = *(a1 + 328);
    *(a1 + 328) = v34;

    v37 = *(a1 + 328);
    if (v37)
    {
      v38 = 1;
      objc_msgSend_setErrorOptions_(v37, v36, 1);
      *(a1 + 8) = 1;
      v7 = sub_24611B1CC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::init(const std::size_t, const std::size_t, const simd_float4x4 &, const float, const uint8_t)");
        if (v45 >= 0)
        {
          v39 = __p;
        }

        else
        {
          v39 = __p[0];
        }

        *buf = 136315394;
        v47 = v39;
        v48 = 1026;
        v49 = 102;
        _os_log_debug_impl(&dword_2460CF000, v7, OS_LOG_TYPE_DEBUG, "%s:%{public}d Successfully Initialized VoxelDepthRendererUsingMesh.", buf, 0x12u);
        if (v45 < 0)
        {
          operator delete(__p[0]);
        }

        v38 = 1;
      }

      goto LABEL_71;
    }

    v7 = sub_24611B1CC();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_70:
      v38 = 0;
LABEL_71:

      return v38;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::init(const std::size_t, const std::size_t, const simd_float4x4 &, const float, const uint8_t)");
    if (v45 >= 0)
    {
      v43 = __p;
    }

    else
    {
      v43 = __p[0];
    }

    *buf = 136315394;
    v47 = v43;
    v48 = 1026;
    v49 = 94;
    v9 = "%s:%{public}d Failed to initialize VoxelDepthRendererUsingMesh - failed to create command buffer descriptor.";
LABEL_35:
    _os_log_error_impl(&dword_2460CF000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_70;
  }

  return 0;
}

id sub_24611B1CC()
{
  if (qword_27EE3F640 != -1)
  {
    dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
  }

  v1 = qword_27EE3F638;

  return v1;
}

uint64_t sub_24611B220(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD7058]);
  v33 = v2;
  if (!v2)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v4 = qword_27EE3F638;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(&v42, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createTextures()");
      v23 = v43 >= 0 ? &v42 : v42;
      *buf = 136315394;
      *&buf[4] = v23;
      *&buf[12] = 1026;
      *&buf[14] = 290;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create textureDescriptor.", buf, 0x12u);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }
    }

    goto LABEL_21;
  }

  v4 = v2;
  objc_msgSend_setTextureType_(v2, v3, 2);
  objc_msgSend_setPixelFormat_(v4, v5, 252);
  objc_msgSend_setWidth_(v4, v6, *(a1 + 16));
  objc_msgSend_setHeight_(v4, v7, *(a1 + 24));
  objc_msgSend_setUsage_(v4, v8, 5);
  if (*(*(a1 + 48) + 24))
  {
    objc_msgSend_setStorageMode_(v4, v9, 3);
  }

  else
  {
    objc_msgSend_setStorageMode_(v4, v9, 2);
  }

  v10 = **(a1 + 48);
  v12 = objc_msgSend_newTextureWithDescriptor_(v10, v11, v4);
  v13 = *(a1 + 160);
  *(a1 + 160) = v12;

  v15 = *(a1 + 160);
  if (!v15)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v24 = qword_27EE3F638;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(&v42, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createTextures()");
      v32 = v43 >= 0 ? &v42 : v42;
      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 1026;
      *&buf[14] = 302;
      _os_log_error_impl(&dword_2460CF000, v24, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create renderDepthTexture.", buf, 0x12u);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }
    }

LABEL_21:
    v25 = 0;
    goto LABEL_36;
  }

  objc_msgSend_setLabel_(v15, v14, @"renderDepthTexture");
  objc_msgSend_setTextureType_(v4, v16, 2);
  objc_msgSend_setPixelFormat_(v4, v17, 55);
  objc_msgSend_setWidth_(v4, v18, *(a1 + 16));
  objc_msgSend_setHeight_(v4, v19, *(a1 + 24));
  objc_msgSend_setUsage_(v4, v20, 5);
  objc_msgSend_setStorageMode_(v4, v21, 0);
  v42 = &unk_2858EC3F0;
  *&v43 = a1;
  *(&v43 + 1) = &v33;
  v44 = &v42;
  v41 = &v39;
  v39 = &unk_2858EC3F0;
  v40 = v43;
  sub_24611C30C((a1 + 168), &v39);
  if (v41 == &v39)
  {
    (*(*v41 + 4))(v41);
  }

  else if (v41)
  {
    (*(*v41 + 5))();
  }

  objc_msgSend_setTextureType_(v33, v22, 2);
  objc_msgSend_setPixelFormat_(v33, v26, 125);
  objc_msgSend_setWidth_(v33, v27, *(a1 + 16));
  objc_msgSend_setHeight_(v33, v28, *(a1 + 24));
  objc_msgSend_setUsage_(v33, v29, 5);
  objc_msgSend_setStorageMode_(v33, v30, 0);
  *buf = &unk_2858EC438;
  *&buf[8] = a1;
  *&buf[16] = &v33;
  v38 = buf;
  v36 = &v34;
  v34 = &unk_2858EC438;
  v35 = *&buf[8];
  sub_24611C30C((a1 + 240), &v34);
  if (v36 == &v34)
  {
    (*(*v36 + 4))(v36);
  }

  else if (v36)
  {
    (*(*v36 + 5))();
  }

  if (v38 == buf)
  {
    (*(*v38 + 32))(v38);
  }

  else if (v38)
  {
    (*(*v38 + 40))();
  }

  if (v44 == &v42)
  {
    (*(*v44 + 4))(v44);
  }

  else if (v44)
  {
    (*(*v44 + 5))();
  }

  v25 = 1;
  v4 = v33;
LABEL_36:

  return v25;
}

void sub_24611B790(_Unwind_Exception *a1, uint64_t a2, void *a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_24611C400(va);
  sub_24611C400(va1);
  sub_24611C400(v3 - 72);

  _Unwind_Resume(a1);
}

uint64_t sub_24611B7EC(uint64_t a1, const char *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_newFunctionWithName_(*(*(a1 + 48) + 16), a2, @"oc::voxel_hashing::vertexShaderForMesh");
  if (v4)
  {
    v5 = objc_msgSend_newFunctionWithName_(*(*(a1 + 48) + 16), v3, @"oc::voxel_hashing::fragmentShaderForMesh");
    if (!v5)
    {
      if (qword_27EE3F640 != -1)
      {
        dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
      }

      v35 = qword_27EE3F638;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createPipelines()");
        v42 = (v60 & 0x80000000) == 0 ? __p : *__p;
        *buf = 136315394;
        *&buf[4] = v42;
        v53 = 1026;
        v54 = 364;
        _os_log_error_impl(&dword_2460CF000, v35, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find fragmentShaderForMesh fragment shader.", buf, 0x12u);
        if (SBYTE3(v60) < 0)
        {
          operator delete(*__p);
        }
      }

      v38 = 0;
      goto LABEL_23;
    }

    v6 = objc_alloc_init(MEMORY[0x277CD6F78]);
    v8 = v6;
    if (v6)
    {
      objc_msgSend_setVertexFunction_(v6, v7, v4);
      objc_msgSend_setFragmentFunction_(v8, v9, v5);
      v12 = objc_msgSend_pixelFormat(*(*(a1 + 168) + 8 * *(a1 + 208)), v10, v11);
      v15 = objc_msgSend_colorAttachments(v8, v13, v14);
      v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);
      objc_msgSend_setPixelFormat_(v17, v18, v12);

      v21 = objc_msgSend_pixelFormat(*(*(a1 + 240) + 8 * *(a1 + 280)), v19, v20);
      v24 = objc_msgSend_colorAttachments(v8, v22, v23);
      v26 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 1);
      objc_msgSend_setPixelFormat_(v26, v27, v21);

      v30 = objc_msgSend_pixelFormat(*(a1 + 160), v28, v29);
      objc_msgSend_setDepthAttachmentPixelFormat_(v8, v31, v30);
      v32 = **(a1 + 48);
      v51 = 0;
      v34 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v32, v33, v8, &v51);
      v35 = v51;
      v37 = *(a1 + 152);
      v36 = (a1 + 152);
      *v36 = v34;

      if (*v36)
      {
        v38 = 1;
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      if (qword_27EE3F640 != -1)
      {
        dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
      }

      v39 = qword_27EE3F638;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createPipelines()");
        v44 = v55;
        v45 = *buf;
        v48 = objc_msgSend_localizedDescription(v35, v46, v47);
        v49 = v48;
        if (v44 >= 0)
        {
          v50 = buf;
        }

        else
        {
          v50 = v45;
        }

        *__p = 136315650;
        *&__p[4] = v50;
        v57 = 1026;
        v58 = 382;
        v59 = 2114;
        v60 = v48;
        _os_log_error_impl(&dword_2460CF000, v39, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create render pipeline state. Error details: %{public}@", __p, 0x1Cu);

        if (v55 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      if (qword_27EE3F640 != -1)
      {
        dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
      }

      v39 = qword_27EE3F638;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createPipelines()");
        v43 = (v60 & 0x80000000) == 0 ? __p : *__p;
        *buf = 136315394;
        *&buf[4] = v43;
        v53 = 1026;
        v54 = 370;
        _os_log_error_impl(&dword_2460CF000, v39, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create render pipeline descriptor.", buf, 0x12u);
        if (SBYTE3(v60) < 0)
        {
          operator delete(*__p);
        }
      }

      v35 = 0;
    }

    v38 = 0;
    goto LABEL_22;
  }

  if (qword_27EE3F640 != -1)
  {
    dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
  }

  v5 = qword_27EE3F638;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createPipelines()");
    v41 = (v60 & 0x80000000) == 0 ? __p : *__p;
    *buf = 136315394;
    *&buf[4] = v41;
    v53 = 1026;
    v54 = 357;
    _os_log_error_impl(&dword_2460CF000, v5, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find vertexShaderForMesh vertex shader.", buf, 0x12u);
    if (SBYTE3(v60) < 0)
    {
      operator delete(*__p);
    }
  }

  v38 = 0;
LABEL_24:

  return v38;
}

void sub_24611BD04(_Unwind_Exception *a1)
{
  if (v7 < 0)
  {
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24611BD88(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD6D60]);
  v4 = v2;
  if (!v2)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v11 = qword_27EE3F638;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createDepthStencilStates()");
    if (v17 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 1026;
    v21 = 395;
    v13 = "%s:%{public}d Failed to create depth stencil descriptor.";
    goto LABEL_20;
  }

  objc_msgSend_setDepthCompareFunction_(v2, v3, 1);
  objc_msgSend_setDepthWriteEnabled_(v4, v5, 1);
  v6 = **(a1 + 48);
  v8 = objc_msgSend_newDepthStencilStateWithDescriptor_(v6, v7, v4);
  v9 = *(a1 + 312);
  *(a1 + 312) = v8;

  if (!*(a1 + 312))
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v11 = qword_27EE3F638;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createDepthStencilStates()");
    if (v17 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    *buf = 136315394;
    v19 = v15;
    v20 = 1026;
    v21 = 404;
    v13 = "%s:%{public}d Failed to create depth stencil state.";
LABEL_20:
    _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_14:

    v10 = 0;
    goto LABEL_15;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

BOOL sub_24611BFD4(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD6F50]);
  v3 = *(a1 + 320);
  *(a1 + 320) = v2;

  v6 = *(a1 + 320);
  if (v6)
  {
    v7 = objc_msgSend_depthAttachment(*(a1 + 320), v4, v5);
    objc_msgSend_setLoadAction_(v7, v8, 2);

    v11 = objc_msgSend_depthAttachment(*(a1 + 320), v9, v10);
    objc_msgSend_setStoreAction_(v11, v12, 0);

    v13 = *(a1 + 160);
    v16 = objc_msgSend_depthAttachment(*(a1 + 320), v14, v15);
    objc_msgSend_setTexture_(v16, v17, v13);

    v20 = objc_msgSend_colorAttachments(*(a1 + 320), v18, v19);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
    objc_msgSend_setLoadAction_(v22, v23, 2);

    v26 = objc_msgSend_colorAttachments(*(a1 + 320), v24, v25);
    v28 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, 0);
    objc_msgSend_setClearColor_(v28, v29, v30, 0.0, 0.0, 0.0, 0.0);

    v33 = objc_msgSend_colorAttachments(*(a1 + 320), v31, v32);
    v35 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 0);
    objc_msgSend_setStoreAction_(v35, v36, 1);

    v39 = objc_msgSend_colorAttachments(*(a1 + 320), v37, v38);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, 1);
    objc_msgSend_setLoadAction_(v41, v42, 2);

    v45 = objc_msgSend_colorAttachments(*(a1 + 320), v43, v44);
    v47 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 1);
    objc_msgSend_setClearColor_(v47, v48, v49, 0.0, 0.0, 0.0, 0.0);

    v52 = objc_msgSend_colorAttachments(*(a1 + 320), v50, v51);
    v54 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 1);
    objc_msgSend_setStoreAction_(v54, v55, 1);
  }

  else
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v56 = qword_27EE3F638;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelDepthRendererUsingMesh::createRenderPassDescriptors()");
      if (v60 >= 0)
      {
        v58 = __p;
      }

      else
      {
        v58 = __p[0];
      }

      *buf = 136315394;
      v62 = v58;
      v63 = 1026;
      v64 = 415;
      _os_log_error_impl(&dword_2460CF000, v56, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create render pass descriptor.", buf, 0x12u);
      if (v60 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v6 != 0;
}

uint64_t sub_24611C30C(void ***a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && ((*(*v3 + 48))(v3), v5 = objc_claimAutoreleasedReturnValue(), v6 = **a1, **a1 = v5, v6, (v7 = *(a2 + 24)) != 0) && ((*(*v7 + 48))(v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = (*a1)[1], (*a1)[1] = v8, v9, (v10 = *(a2 + 24)) != 0))
  {
    (*a1)[2] = (*(*v10 + 48))(v10);

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    sub_246102FD4();
    return sub_24611C400(v11);
  }
}

uint64_t sub_24611C400(uint64_t a1)
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

id sub_24611C480(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_newTextureWithDescriptor_(**(*(a1 + 8) + 48), a2, **(a1 + 16));
  if (!v3)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v4 = qword_27EE3F638;
    if (os_log_type_enabled(qword_27EE3F638, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VoxelDepthRendererUsingMesh::createTextures";
      v8 = 1026;
      v9 = 337;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create depthTexture.", &v6, 0x12u);
    }
  }

  objc_msgSend_setLabel_(v3, v2, @"normalTexture");

  return v3;
}

__n128 sub_24611C5C0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2858EC438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

id sub_24611C65C(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_newTextureWithDescriptor_(**(*(a1 + 8) + 48), a2, **(a1 + 16));
  if (!v3)
  {
    if (qword_27EE3F640 != -1)
    {
      dispatch_once(&qword_27EE3F640, &unk_2858EC3A0);
    }

    v4 = qword_27EE3F638;
    if (os_log_type_enabled(qword_27EE3F638, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VoxelDepthRendererUsingMesh::createTextures";
      v8 = 1026;
      v9 = 318;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create depthTexture.", &v6, 0x12u);
    }
  }

  objc_msgSend_setLabel_(v3, v2, @"depthTexture");

  return v3;
}

__n128 sub_24611C79C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2858EC3F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_24611C838(uint64_t a1)
{
  sub_24611C870(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_24611C870(uint64_t a1)
{
  atomic_store(1u, (a1 + 144));
  v2 = atomic_load((a1 + 148));
  if (v2 >= 1)
  {
    do
    {
      __ns.__rep_ = 1000000;
      std::this_thread::sleep_for (&__ns);
      v3 = atomic_load((a1 + 148));
    }

    while (v3 > 0);
  }

  v4 = *(a1 + 240);
  if (v4)
  {
    v5 = *(a1 + 248);
    v6 = *(a1 + 240);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 8);
        v5 -= 8;
      }

      while (v5 != v4);
      v6 = *(a1 + 240);
    }

    *(a1 + 248) = v4;
    operator delete(v6);
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a1 + 176);
    v10 = *(a1 + 168);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        v9 -= 8;
      }

      while (v9 != v8);
      v10 = *(a1 + 168);
    }

    *(a1 + 176) = v8;
    operator delete(v10);
  }

  v12 = *(a1 + 40);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  return a1;
}

void sub_24611C9DC(_Unwind_Exception *a1)
{
  sub_24611CA38((v1 + 240));

  sub_24611CA38((v1 + 168));
  sub_2460D502C(v1 + 32);
  _Unwind_Resume(a1);
}

char **sub_24611CA38(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_24611CAA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if ((v2 - v3) >= 0x11)
  {
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *(a1 + 8) = v3 + 24;
  }

  else
  {
    v4 = *a1;
    v5 = &v3[-*a1];
    v6 = v5 >> 3;
    v7 = (v5 >> 3) + 3;
    if (v7 >> 61)
    {
      sub_2460D368C();
    }

    v8 = v2 - v4;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_2460D368C();
    }

    v10 = v5 >> 3;
    v11 = (8 * v6);
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    if (v4 != v3)
    {
      v12 = v3 - v4 - 8;
      v13 = v4;
      v14 = 0;
      if (v12 < 0x98)
      {
        goto LABEL_31;
      }

      v15 = 8 * v10;
      if (v4 < v5 + (v12 & 0xFFFFFFFFFFFFFFF8) - 8 * v10 + 8)
      {
        v13 = v4;
        v14 = 0;
        if ((v4 + (v12 & 0xFFFFFFFFFFFFFFF8)) != -8)
        {
          goto LABEL_31;
        }
      }

      v16 = (v12 >> 3) + 1;
      v14 = (8 * (v16 & 0x3FFFFFFFFFFFFFFCLL));
      v13 = (v14 + v4);
      v17 = (8 * v6 - v15 + 16);
      v18 = v4;
      v19 = v16 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v18;
        v21 = *(v18 + 1);
        *v18 = 0uLL;
        *(v18 + 1) = 0uLL;
        v18 += 4;
        *(v17 - 1) = v20;
        *v17 = v21;
        v17 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_31:
        do
        {
          v22 = *v13;
          *v13++ = 0;
          *v14++ = v22;
        }

        while (v13 != v3);
      }

      do
      {
        v23 = *v4++;
      }

      while (v4 != v3);
      v4 = *a1;
    }

    *a1 = 0;
    *(a1 + 8) = 8 * v6 + 24;
    *(a1 + 16) = 0;
    if (v4)
    {

      operator delete(v4);
    }
  }
}

void **sub_24611CC9C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_24611CCFC(uint64_t a1, float32x2_t *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v85 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 1) == 0)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v33 = qword_27EE3F658;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::deintegratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v83.i8[15] >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    *&buf[4] = p_p;
    *&buf[12] = 1026;
    *&buf[14] = 390;
    v35 = "%s:%{public}d VoxelIntegratorGPU not initialized.";
    goto LABEL_43;
  }

  v5 = a5;
  v6 = a4;
  if (sub_246107174(a2, a3, a4, a5, *(a1 + 440)))
  {
    *(a1 + 408) = 0;
    v10 = *(a1 + 224);
    v11 = *(a1 + 240);
    v12 = *(a1 + 256);
    v13 = *(a1 + 272);
    v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2->f32)), v11, *a2, 1), v12, *a2->f32, 2), v13, *a2->f32, 3);
    v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[2].f32)), v11, a2[2], 1), v12, *a2[2].f32, 2), v13, *a2[2].f32, 3);
    v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[4].f32)), v11, a2[4], 1), v12, *a2[4].f32, 2), v13, *a2[4].f32, 3);
    v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[6].f32)), v11, a2[6], 1), v12, *a2[6].f32, 2), v13, *a2[6].f32, 3);
    *(a1 + 160) = v14;
    *(a1 + 176) = v15;
    *(a1 + 192) = v16;
    *(a1 + 208) = v17;
    *(a1 + 80) = *a2[6].f32;
    if (sub_24611D4E4(a1, a3, v6, v5))
    {
      v20 = objc_msgSend_contents(*(a1 + 448), v18, v19);
      v23 = objc_msgSend_contents(*(a1 + 456), v21, v22);
      *(a1 + 444) = 0;
      if (a3)
      {
        v25 = 0;
        v26 = 0;
        v27 = (a1 + 444);
        do
        {
          if ((*(*(a1 + 416) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26))
          {
            v28 = (v20 + 48 * v25);
            v29 = *v6;
            v30 = *(v6 + 32);
            v28[1] = *(v6 + 16);
            v28[2] = v30;
            *v28 = v29;
            v31 = v23 + 20 * *v27;
            v32 = *v5;
            *(v31 + 16) = *(v5 + 16);
            *v31 = v32;
            v25 = *v27 + 1;
            *v27 = v25;
          }

          ++v26;
          v6 += 48;
          v5 += 20;
        }

        while (a3 != v26);
        if (v25)
        {
          v33 = objc_msgSend_commandBufferWithDescriptor_(*(*(a1 + 32) + 8), v24, *(a1 + 400));
          if (v33)
          {
            sub_24611DAF0(a1, v33);
            v39 = objc_msgSend_computeCommandEncoder(v33, v37, v38);
            objc_msgSend_setLabel_(v39, v40, @"deintegrateVoxelsIntersectingRays Encoder");
            objc_msgSend_setComputePipelineState_(v39, v41, *(a1 + 376));
            objc_msgSend_setBytes_length_atIndex_(v39, v42, a1 + 48, 272, 0);
            objc_msgSend_setBytes_length_atIndex_(v39, v43, **(a1 + 320), *(*(a1 + 320) + 8) - **(a1 + 320), 1);
            objc_msgSend_setBytes_length_atIndex_(v39, v44, a1 + 408, 4, 2);
            v45 = sub_24613712C(*(a1 + 16));
            objc_msgSend_setBuffer_offset_atIndex_(v39, v46, v45, 0, 3);

            objc_msgSend_setBytes_length_atIndex_(v39, v47, a1 + 444, 4, 4);
            objc_msgSend_setBuffer_offset_atIndex_(v39, v48, *(a1 + 448), 0, 5);
            objc_msgSend_setBuffer_offset_atIndex_(v39, v49, *(a1 + 456), 0, 6);
            v50 = sub_246136204(*(a1 + 16));
            objc_msgSend_setBuffer_offset_atIndex_(v39, v51, v50, 0, 7);

            v52 = sub_246136344(*(a1 + 16));
            objc_msgSend_setBuffer_offset_atIndex_(v39, v53, v52, 0, 8);

            objc_msgSend_setBuffer_offset_atIndex_(v39, v54, *(a1 + 488), 0, 9);
            v55 = sub_2461369A4(*(a1 + 16));
            objc_msgSend_setBuffer_offset_atIndex_(v39, v56, v55, 0, 10);

            v57 = sub_24613685C(*(a1 + 16));
            objc_msgSend_setBuffer_offset_atIndex_(v39, v58, v57, 0, 11);

            v61 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 376), v59, v60);
            __p = *v27;
            v83 = vdupq_n_s64(1uLL);
            *buf = v61;
            *&buf[8] = v83;
            objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v39, v62, &__p, buf);
            objc_msgSend_endEncoding(v39, v63, v64);

            if (*(a1 + 636) == 1)
            {
              sub_24611DD40(a1, v33, v66);
              sub_24611DE44(a1, v33, v67);
            }

            objc_msgSend_addCompletedHandler_(v33, v65, &unk_2858EC4F8);
            objc_msgSend_commit(v33, v68, v69);
            objc_msgSend_waitUntilCompleted(v33, v70, v71);
            if (sub_246136EBC(*(a1 + 16), *(a1 + 408)))
            {
              kdebug_trace();
              if (sub_246137698(*(a1 + 16), v72, v73))
              {
                kdebug_trace();
                v36 = 1;
LABEL_28:

                return v36;
              }

              v79 = sub_24611DFB4();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::deintegratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
                if (v83.i8[15] >= 0)
                {
                  v81 = &__p;
                }

                else
                {
                  v81 = __p;
                }

                *buf = 136315394;
                *&buf[4] = v81;
                *&buf[12] = 1026;
                *&buf[14] = 450;
                _os_log_error_impl(&dword_2460CF000, v79, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to erase hash entries with empty voxelblocks.", buf, 0x12u);
                if (v83.i8[15] < 0)
                {
                  operator delete(__p);
                }
              }

              kdebug_trace();
LABEL_27:
              v36 = 0;
              goto LABEL_28;
            }

            v75 = sub_24611DFB4();
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
LABEL_38:

              goto LABEL_27;
            }

            sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::deintegratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
            if (v83.i8[15] >= 0)
            {
              v80 = &__p;
            }

            else
            {
              v80 = __p;
            }

            *buf = 136315394;
            *&buf[4] = v80;
            *&buf[12] = 1026;
            *&buf[14] = 440;
            v77 = "%s:%{public}d Failed to setLastIntegratedSubmapID.";
          }

          else
          {
            if (qword_27EE3F660 != -1)
            {
              dispatch_once(&qword_27EE3F660, &unk_2858EC518);
            }

            v75 = qword_27EE3F658;
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::deintegratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
            if (v83.i8[15] >= 0)
            {
              v76 = &__p;
            }

            else
            {
              v76 = __p;
            }

            *buf = 136315394;
            *&buf[4] = v76;
            *&buf[12] = 1026;
            *&buf[14] = 416;
            v77 = "%s:%{public}d Failed to deintegrate pointcloud - Failed to create command buffer.";
          }

          _os_log_error_impl(&dword_2460CF000, v75, OS_LOG_TYPE_ERROR, v77, buf, 0x12u);
          if (v83.i8[15] < 0)
          {
            operator delete(__p);
          }

          goto LABEL_38;
        }
      }
    }

    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v33 = qword_27EE3F658;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::deintegratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v83.i8[15] >= 0)
    {
      v78 = &__p;
    }

    else
    {
      v78 = __p;
    }

    *buf = 136315394;
    *&buf[4] = v78;
    *&buf[12] = 1026;
    *&buf[14] = 407;
    v35 = "%s:%{public}d Failed to deintegrate pointcloud - processed pointcloud is empty.";
LABEL_43:
    _os_log_error_impl(&dword_2460CF000, v33, OS_LOG_TYPE_ERROR, v35, buf, 0x12u);
    if (v83.i8[15] < 0)
    {
      operator delete(__p);
    }

    goto LABEL_27;
  }

  return 0;
}

BOOL sub_24611D4E4(uint64_t a1, unsigned int a2, float32x4_t *a3, uint64_t a4)
{
  v62 = *MEMORY[0x277D85DE8];
  *(a1 + 444) = 0;
  if (!a2)
  {
    v43 = 0;
    v38 = 1;
    v39 = 1;
    v41 = 1;
    v40 = 1;
    v42 = 1;
    goto LABEL_35;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *(a1 + 124);
  v14 = *(a1 + 128);
  v15 = *(a1 + 304);
  v16 = *(a1 + 516);
  v17 = a2;
  v18 = a3 + 1;
  v19 = (a4 + 8);
  do
  {
    v21 = -v18[-1].f32[2];
    v22 = v14 > v21;
    if (v13 < v21)
    {
      v22 = 1;
    }

    v23 = v19[1];
    v24 = fabsf(v23);
    v25 = v23 <= 1.0;
    if (fabsf(v23 + -1.0) <= 0.000011)
    {
      v25 = 1;
    }

    v26 = v7 + v25;
    v27 = !v25;
    v28 = v23 > 0.0 && v24 > 0.000001;
    if (v28)
    {
      v7 = v26;
    }

    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(v19 - 1);
    if (v30 >= v15)
    {
      ++v8;
    }

    if ((v16 - 1) >= 2)
    {
      if (!v16)
      {
LABEL_23:
        v31 = 0;
        ++v10;
        goto LABEL_26;
      }
    }

    else if (*(v19 - 2) > 0.0)
    {
      goto LABEL_23;
    }

    v31 = 1;
LABEL_26:
    v32 = *v19;
    v33 = vmulq_f32(*v18, *v18);
    v34 = fabsf(sqrtf(v33.f32[2] + vaddv_f32(*v33.f32)) + -1.0) > 0.000011;
    if (fabsf(COERCE_FLOAT(HIDWORD(*v18))) > 0.000001)
    {
      v34 = 1;
    }

    v35 = v22 | v29;
    v36 = v5 >> 3;
    if ((v35 & 1) != 0 || v30 < v15)
    {
      v20 = *(a1 + 416);
LABEL_4:
      *(v20 + (v36 & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v5);
      goto LABEL_5;
    }

    v37 = v31 | v32 ^ 1 | v34;
    v20 = *(a1 + 416);
    if (v37)
    {
      goto LABEL_4;
    }

    *(v20 + (v36 & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
    ++v12;
LABEL_5:
    v6 += !v22;
    v9 += v32;
    v11 += !v34;
    ++v5;
    v18 += 3;
    v19 += 5;
  }

  while (v17 != v5);
  v38 = v7 == 0;
  v39 = v8 == 0;
  v40 = v10 == 0;
  v41 = v9 == 0;
  v42 = v11 == 0;
  v43 = v12 != 0;
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (qword_27EE3F660 != -1)
  {
    dispatch_once(&qword_27EE3F660, &unk_2858EC518);
  }

  v44 = qword_27EE3F658;
  if (!os_log_type_enabled(qword_27EE3F658, OS_LOG_TYPE_ERROR))
  {
LABEL_38:
    if (v38)
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  v51 = *(a1 + 128);
  v52 = *(a1 + 124);
  v54 = 136315906;
  v55 = "VoxelIntegratorGPU";
  v56 = 1026;
  v57 = 805;
  v58 = 2050;
  v59 = v51;
  v60 = 2050;
  v61 = v52;
  _os_log_error_impl(&dword_2460CF000, v44, OS_LOG_TYPE_ERROR, "%s:%{public}d No points with valid distance. Distance range: [%{public}f, %{public}f].", &v54, 0x26u);
  if (!v38)
  {
    goto LABEL_42;
  }

LABEL_39:
  if (qword_27EE3F660 != -1)
  {
    dispatch_once(&qword_27EE3F660, &unk_2858EC518);
  }

  v45 = qword_27EE3F658;
  if (!os_log_type_enabled(qword_27EE3F658, OS_LOG_TYPE_ERROR))
  {
LABEL_42:
    if (v39)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v54 = 136315394;
  v55 = "VoxelIntegratorGPU";
  v56 = 1026;
  v57 = 812;
  _os_log_error_impl(&dword_2460CF000, v45, OS_LOG_TYPE_ERROR, "%s:%{public}d No points with valid angle of incidence. Angle of incidence range: [-pi, pi]", &v54, 0x12u);
  if (!v39)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (qword_27EE3F660 != -1)
  {
    dispatch_once(&qword_27EE3F660, &unk_2858EC518);
  }

  v46 = qword_27EE3F658;
  if (!os_log_type_enabled(qword_27EE3F658, OS_LOG_TYPE_ERROR))
  {
LABEL_46:
    if (v40)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v53 = *(a1 + 304);
  v54 = 136315650;
  v55 = "VoxelIntegratorGPU";
  v56 = 1026;
  v57 = 817;
  v58 = 2050;
  v59 = v53;
  _os_log_error_impl(&dword_2460CF000, v46, OS_LOG_TYPE_ERROR, "%s:%{public}d No points with valid confidence. Confidence threshold = %{public}f.", &v54, 0x1Cu);
  if (!v40)
  {
    goto LABEL_50;
  }

LABEL_47:
  if (qword_27EE3F660 != -1)
  {
    dispatch_once(&qword_27EE3F660, &unk_2858EC518);
  }

  v47 = qword_27EE3F658;
  if (!os_log_type_enabled(qword_27EE3F658, OS_LOG_TYPE_ERROR))
  {
LABEL_50:
    if (v41)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  v54 = 136315394;
  v55 = "VoxelIntegratorGPU";
  v56 = 1026;
  v57 = 821;
  _os_log_error_impl(&dword_2460CF000, v47, OS_LOG_TYPE_ERROR, "%s:%{public}d No points with valid weight", &v54, 0x12u);
  if (!v41)
  {
    goto LABEL_54;
  }

LABEL_51:
  if (qword_27EE3F660 != -1)
  {
    dispatch_once(&qword_27EE3F660, &unk_2858EC518);
  }

  v48 = qword_27EE3F658;
  if (os_log_type_enabled(qword_27EE3F658, OS_LOG_TYPE_ERROR))
  {
    v54 = 136315394;
    v55 = "VoxelIntegratorGPU";
    v56 = 1026;
    v57 = 825;
    _os_log_error_impl(&dword_2460CF000, v48, OS_LOG_TYPE_ERROR, "%s:%{public}d No above plane points.", &v54, 0x12u);
    if (v42)
    {
LABEL_55:
      if (qword_27EE3F660 != -1)
      {
        dispatch_once(&qword_27EE3F660, &unk_2858EC518);
      }

      v49 = qword_27EE3F658;
      if (os_log_type_enabled(qword_27EE3F658, OS_LOG_TYPE_ERROR))
      {
        v54 = 136315394;
        v55 = "VoxelIntegratorGPU";
        v56 = 1026;
        v57 = 829;
        _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d No points with valid normals.", &v54, 0x12u);
      }
    }
  }

  else
  {
LABEL_54:
    if (v42)
    {
      goto LABEL_55;
    }
  }

  return v43;
}

void sub_24611DAF0(uint64_t a1, void *a2)
{
  v3 = a2;
  *objc_msgSend_contents(*(a1 + 472), v4, v5) = 0;
  v6 = sub_2461369A4(*(a1 + 16));
  v7 = v6;
  *objc_msgSend_contents(v7, v8, v9) = 0;

  v10 = sub_246136C34(*(a1 + 16));
  v11 = v10;
  *objc_msgSend_contents(v11, v12, v13) = 0;

  v16 = objc_msgSend_contents(*(a1 + 496), v14, v15);
  *v16 = 0;
  *(v16 + 8) = 0;
  v19 = objc_msgSend_computeCommandEncoder(v3, v17, v18);
  objc_msgSend_setLabel_(v19, v20, @"resetAllHashBucketLocks Encoder");
  objc_msgSend_setComputePipelineState_(v19, v21, *(a1 + 328));
  objc_msgSend_setBytes_length_atIndex_(v19, v22, a1 + 96, 28, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v19, v23, *(a1 + 464), 0, 1);
  v24 = (*(a1 + 120) * *(a1 + 96));
  v41 = 1;
  v42 = v24;
  v43 = vdupq_n_s64(1uLL);
  v40 = xmmword_24613FC60;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v19, v25, &v42, &v40);
  objc_msgSend_endEncoding(v19, v26, v27);
  v30 = objc_msgSend_computeCommandEncoder(v3, v28, v29);

  objc_msgSend_setLabel_(v30, v31, @"resetAllHashEntryLocks Encoder");
  objc_msgSend_setComputePipelineState_(v30, v32, *(a1 + 336));
  objc_msgSend_setBytes_length_atIndex_(v30, v33, a1 + 96, 28, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v30, v34, *(a1 + 488), 0, 1);
  v35 = sub_246136204(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v30, v36, v35, 0, 2);

  v42 = *(a1 + 108);
  v43 = vdupq_n_s64(1uLL);
  v40 = xmmword_24613FC60;
  v41 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v30, v37, &v42, &v40);
  objc_msgSend_endEncoding(v30, v38, v39);
}

void sub_24611DD40(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_computeCommandEncoder(a2, a2, a3);
  objc_msgSend_setLabel_(v4, v5, @"updateArgsForFindHashEntriesToErase Encoder");
  objc_msgSend_setComputePipelineState_(v4, v6, a1[48]);
  objc_msgSend_setBytes_length_atIndex_(v4, v7, (a1 + 6), 272, 0);
  v8 = sub_2461369A4(a1[2]);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v9, v8, 0, 1);

  objc_msgSend_setBuffer_offset_atIndex_(v4, v10, a1[62], 0, 2);
  v16 = xmmword_246144150;
  v17 = 1;
  v14 = xmmword_246144150;
  v15 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v4, v11, &v16, &v14);
  objc_msgSend_endEncoding(v4, v12, v13);
}

void sub_24611DE44(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_computeCommandEncoder(a2, a2, a3);
  objc_msgSend_setLabel_(v4, v5, @"findHashEntriesToErase Encoder");
  objc_msgSend_setComputePipelineState_(v4, v6, a1[49]);
  objc_msgSend_setBytes_length_atIndex_(v4, v7, (a1 + 6), 272, 0);
  v8 = sub_246136344(a1[2]);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v9, v8, 0, 1);

  v10 = sub_2461369A4(a1[2]);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v11, v10, 0, 2);

  v12 = sub_24613685C(a1[2]);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v13, v12, 0, 3);

  v14 = sub_246136204(a1[2]);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v15, v14, 0, 4);

  v16 = a1[62];
  v20 = xmmword_246144168;
  v21 = 1;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v4, v17, v16, 0, &v20);
  objc_msgSend_endEncoding(v4, v18, v19);
}

id sub_24611DFB4()
{
  if (qword_27EE3F660 != -1)
  {
    dispatch_once(&qword_27EE3F660, &unk_2858EC518);
  }

  v1 = qword_27EE3F658;

  return v1;
}

void sub_24611E008(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_error(a2, a2, a3);
  if (v5)
  {
    sub_24611A2D0(v5, v3, v4);
  }
}

uint64_t sub_24611E070()
{
  qword_27EE3F658 = os_log_create("com.apple.CoreOCModules", "VoxelHashing");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24611E0B4(uint64_t a1, float32x2_t *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v59 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 1) == 0)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v32 = qword_27EE3F658;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v54 >= 0)
    {
      v46 = __p;
    }

    else
    {
      v46 = __p[0];
    }

    *buf = 136315394;
    v56 = v46;
    v57 = 1026;
    v58 = 282;
    v45 = "%s:%{public}d VoxelIntegratorGPU not initialized.";
LABEL_40:
    _os_log_error_impl(&dword_2460CF000, v32, OS_LOG_TYPE_ERROR, v45, buf, 0x12u);
    if (v54 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_14;
  }

  v5 = a5;
  v6 = a4;
  if (!sub_246107174(a2, a3, a4, a5, *(a1 + 440)))
  {
    return 0;
  }

  *(a1 + 408) = 0;
  v10 = *(a1 + 224);
  v11 = *(a1 + 240);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2->f32)), v11, *a2, 1), v12, *a2->f32, 2), v13, *a2->f32, 3);
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[2].f32)), v11, a2[2], 1), v12, *a2[2].f32, 2), v13, *a2[2].f32, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[4].f32)), v11, a2[4], 1), v12, *a2[4].f32, 2), v13, *a2[4].f32, 3);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[6].f32)), v11, a2[6], 1), v12, *a2[6].f32, 2), v13, *a2[6].f32, 3);
  *(a1 + 160) = v14;
  *(a1 + 176) = v15;
  *(a1 + 192) = v16;
  *(a1 + 208) = v17;
  *(a1 + 80) = *a2[6].f32;
  if (!sub_24611D4E4(a1, a3, v6, v5))
  {
    return 0;
  }

  if ((*(a1 + 639) & 1) == 0)
  {
    sub_24611E6EC(a1, a3, v6);
  }

  v20 = objc_msgSend_contents(*(a1 + 448), v18, v19);
  v23 = objc_msgSend_contents(*(a1 + 456), v21, v22);
  *(a1 + 444) = 0;
  if (!a3)
  {
    goto LABEL_29;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    if ((*(*(a1 + 416) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26))
    {
      v27 = (v20 + 48 * v25);
      v28 = *v6;
      v29 = *(v6 + 32);
      v27[1] = *(v6 + 16);
      v27[2] = v29;
      *v27 = v28;
      v30 = v23 + 20 * *(a1 + 444);
      v31 = *v5;
      *(v30 + 16) = *(v5 + 16);
      *v30 = v31;
      v25 = *(a1 + 444) + 1;
      *(a1 + 444) = v25;
    }

    ++v26;
    v6 += 48;
    v5 += 20;
  }

  while (a3 != v26);
  if (!v25)
  {
LABEL_29:
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v32 = qword_27EE3F658;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v54 >= 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    *buf = 136315394;
    v56 = v44;
    v57 = 1026;
    v58 = 317;
    v45 = "%s:%{public}d Failed to integrate pointcloud - pointcloud does not intersect region of interest.";
    goto LABEL_40;
  }

  v32 = objc_msgSend_commandBufferWithDescriptor_(*(*(a1 + 32) + 8), v24, *(a1 + 400));
  if (!v32)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v47 = qword_27EE3F658;
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v54 >= 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = __p[0];
    }

    *buf = 136315394;
    v56 = v48;
    v57 = 1026;
    v58 = 326;
    v49 = "%s:%{public}d Failed to integrate pointcloud - Failed to create command buffer.";
    goto LABEL_57;
  }

  sub_24611DAF0(a1, v32);
  if (*(a1 + 444))
  {
    if (*(a1 + 516) <= 1u)
    {
      sub_24611EEDC(a1, v32, v36);
    }

    sub_24611F10C(a1, v32, v36);
  }

  if (*(a1 + 636) == 1)
  {
    sub_24611DD40(a1, v32, v36);
    sub_24611DE44(a1, v32, v37);
  }

  objc_msgSend_addCompletedHandler_(v32, v35, &unk_2858EC4D8);
  objc_msgSend_commit(v32, v38, v39);
  objc_msgSend_waitUntilCompleted(v32, v40, v41);
  if ((sub_246136EBC(*(a1 + 16), *(a1 + 408)) & 1) == 0)
  {
    v47 = sub_24611DFB4();
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
LABEL_50:

      goto LABEL_14;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v54 >= 0)
    {
      v51 = __p;
    }

    else
    {
      v51 = __p[0];
    }

    *buf = 136315394;
    v56 = v51;
    v57 = 1026;
    v58 = 358;
    v49 = "%s:%{public}d Failed to setLastIntegratedSubmapID.";
LABEL_57:
    _os_log_error_impl(&dword_2460CF000, v47, OS_LOG_TYPE_ERROR, v49, buf, 0x12u);
    if (v54 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_50;
  }

  kdebug_trace();
  if (sub_246137698(*(a1 + 16), v42, v43))
  {
    kdebug_trace();
    v33 = 1;
    goto LABEL_15;
  }

  v50 = sub_24611DFB4();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloudInTruncationRegion(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v54 >= 0)
    {
      v52 = __p;
    }

    else
    {
      v52 = __p[0];
    }

    *buf = 136315394;
    v56 = v52;
    v57 = 1026;
    v58 = 368;
    _os_log_error_impl(&dword_2460CF000, v50, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to erase hash entries with empty voxelblocks.", buf, 0x12u);
    if (v54 < 0)
    {
      operator delete(__p[0]);
    }
  }

  kdebug_trace();
LABEL_14:
  v33 = 0;
LABEL_15:

  return v33;
}

void sub_24611E6EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_24613712C(*(a1 + 16));
  v7 = v6;
  v142 = objc_msgSend_contents(v7, v8, v9);

  v10 = sub_246136204(*(a1 + 16));
  v11 = v10;
  v14 = objc_msgSend_contents(v11, v12, v13);

  v15 = sub_246136344(*(a1 + 16));
  v16 = v15;
  v19 = objc_msgSend_contents(v16, v17, v18);

  v20 = sub_246136484(*(a1 + 16));
  v21 = v20;
  v24 = objc_msgSend_contents(v21, v22, v23);

  v25 = sub_2461365CC(*(a1 + 16));
  v26 = v25;
  v29 = objc_msgSend_contents(v26, v27, v28);

  v30 = sub_246136714(*(a1 + 16));
  v31 = v30;
  v151 = objc_msgSend_contents(v31, v32, v33);

  v34 = sub_246136D7C(*(a1 + 16));
  v35 = v34;
  v38 = objc_msgSend_contents(v35, v36, v37);

  if (a2)
  {
    v39 = 0;
    v40 = a2;
    v140 = v29;
    v141 = a3;
    v139 = a2;
    while (1)
    {
      v41 = (a3 + 48 * v39);
      v42 = *v41;
      v43 = -COERCE_FLOAT(v41->i64[1]);
      if (*(a1 + 128) > v43)
      {
        goto LABEL_4;
      }

      if (*(a1 + 124) < v43)
      {
        goto LABEL_4;
      }

      v44 = *(a1 + 416);
      v45 = *(v44 + 8 * (v39 >> 6));
      if ((v45 & (1 << v39)) == 0)
      {
        goto LABEL_4;
      }

      v46 = v41[1];
      v47 = vmulq_f32(v46, v46);
      if (fabsf(sqrtf(v47.f32[2] + vaddv_f32(*v47.f32)) + -1.0) > 0.000011)
      {
        v48 = vmulq_f32(v42, v42);
        *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
        *v48.f32 = vrsqrte_f32(v49);
        *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
        v46 = vmulq_n_f32(vnegq_f32(v42), vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
        v46.i32[3] = 0;
      }

      v50 = 1.0 / (*(a1 + 292) * 8.0);
      v51 = *(a1 + 132);
      v52 = vmlaq_n_f32(v42, v46, v51.f32[0]);
      v53 = *(a1 + 160);
      v54 = *(a1 + 176);
      v55 = *(a1 + 192);
      v56 = *(a1 + 208);
      v57 = vmulq_n_f32(vaddq_f32(v56, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v52.f32[0]), v54, *v52.f32, 1), v55, v52, 2)), v50);
      v58 = vmulq_n_f32(vaddq_f32(v56, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v42.f32[0]), v54, *v42.f32, 1), v55, v42, 2)), v50);
      v59 = vmuls_lane_f32(0.125, v51, 2);
      v60 = vmuls_lane_f32(0.125, v51, 3);
      v61 = vsubq_f32(v57, v58);
      v62 = fabsf(v61.f32[1]);
      v63 = (fabsf(v58.f32[1]) * 0.00001) + 0.000001;
      v64 = fabsf(v61.f32[0]) > ((fabsf(v58.f32[0]) * 0.00001) + 0.000001) || v62 > v63;
      v65 = fabsf(v61.f32[2]);
      v66 = (fabsf(v58.f32[2]) * 0.00001) + 0.000001;
      v67 = v64 || v65 > v66;
      v68 = vabds_f32(v59, v60);
      v69 = fabsf(v60);
      v70 = v67 && v68 > ((v69 * 0.00001) + 0.000001);
      if (!v70 || v50 <= 0.0)
      {
        return;
      }

      v71 = vsubq_f32(v58, v57);
      v72 = vmulq_f32(v71, v71);
      v72.f32[0] = sqrtf(v72.f32[2] + vaddv_f32(*v72.f32));
      v73 = 0;
      if (v72.f32[0] >= 0.001)
      {
        v71 = vdivq_f32(v71, vdupq_lane_s32(*v72.f32, 0));
      }

      else
      {
        v72.i32[0] = 0;
      }

      v74 = vmulq_n_f32(*(a1 + 48), v50);
      v75 = vmulq_n_f32(*(a1 + 64), v50);
      __asm { FMOV            V20.4S, #1.0 }

      v80 = vdivq_f32(_Q20, v71);
      v81 = vcgez_f32(*v80.f32);
      v82 = vbsl_s8(v81, *v74.f32, *v75.f32);
      v83 = vmul_f32(*v80.f32, vsub_f32(vbsl_s8(v81, *v75.f32, *v74.f32), *v57.f32));
      v84 = vmul_f32(*v80.f32, vsub_f32(v82, *v57.f32));
      v85 = vcgt_f32(v83, vrev64_s32(v84));
      if (((v85.i32[0] | v85.i32[1]) & 1) == 0)
      {
        v86 = fmaxf(v83.f32[0], v83.f32[1]);
        v87 = fminf(*v84.i32, *&v84.i32[1]);
        v88 = v75.f32[2];
        if (v80.f32[2] >= 0.0)
        {
          v89 = v75.f32[2];
        }

        else
        {
          v89 = v74.f32[2];
        }

        if (v80.f32[2] >= 0.0)
        {
          v88 = v74.f32[2];
        }

        v90 = vmuls_lane_f32(v89 - v57.f32[2], v80, 2);
        v91 = vmuls_lane_f32(v88 - v57.f32[2], v80, 2);
        if (v86 <= v91 && v90 <= v87)
        {
          *v73.i32 = v69 + v72.f32[0];
          v93 = fmaxf(v86, v90);
          v94 = fminf(v87, v91);
          if (v93 > 0.0 || v94 < *v73.i32)
          {
            v96 = fmaxf(v93, 0.0);
            v57 = vmlaq_n_f32(v57, v71, v96);
            *v73.i32 = fminf(*v73.i32, v94) - v96;
          }
        }
      }

      if (fabsf(*v73.i32) > 0.000001 && *v73.i32 >= 0.0)
      {
        break;
      }

      *(v44 + 8 * (v39 >> 6)) = v45 & ~(1 << v39);
LABEL_4:
      if (++v39 == v40)
      {
        return;
      }
    }

    v149 = _Q20;
    v152 = v73;
    v97 = *(a1 + 408);
    v98 = (v142 + (v97 << 8));
    v100 = v98[10];
    v99 = v98[11];
    v102 = v98[8];
    v101 = v98[9];
    v103 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, v71.f32[0]), v101, *v71.f32, 1), v100, v71, 2), 0, v99);
    v104 = vmulq_f32(v103, v103);
    *&v105 = v104.f32[2] + vaddv_f32(*v104.f32);
    *v104.f32 = vrsqrte_f32(v105);
    *v104.f32 = vmul_f32(*v104.f32, vrsqrts_f32(v105, vmul_f32(*v104.f32, *v104.f32)));
    v106 = vmulq_n_f32(v103, vmul_f32(*v104.f32, vrsqrts_f32(v105, vmul_f32(*v104.f32, *v104.f32))).f32[0]);
    v107 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, v57.f32[0]), v101, *v57.f32, 1), v100, v57, 2);
    v143 = vaddq_f32(v99, v107);
    v144 = v106;
    v108 = v14;
    v109 = vcvtms_s32_f32(v143.f32[0]);
    v110 = vextq_s8(v143, v143, 4uLL);
    *v110.i8 = vrndm_f32(*v110.i8);
    *v107.f32 = vcvt_s32_f32(*v110.i8);
    v145 = v107.i32[0];
    v111 = v107.i32[1];
    v112 = v107.i32[0];
    v110.i16[0] = v109;
    v110.i16[1] = v107.i16[0];
    v110.i16[2] = v107.i16[2];
    v154 = *v110.i8;
    v138 = v29;
    v113 = v19;
    v114 = v108;
    v115 = v24;
    v116 = v113;
    v117 = v115;
    sub_24611F3A4((a1 + 96), **(a1 + 320), v97, &v154, *(a1 + 637), v108, v113, v115, v110, v107, v99, v100, v138, v151, v38);
    v120.i32[3] = v144.i32[3];
    if (v144.f32[0] >= 0.0)
    {
      v121 = 1;
    }

    else
    {
      v121 = -1;
    }

    v122 = v144.f32[1];
    if (v144.f32[1] >= 0.0)
    {
      v123 = 1;
    }

    else
    {
      v123 = -1;
    }

    v147 = v123;
    v148 = v121;
    v124 = v144.f32[2];
    if (v144.f32[2] >= 0.0)
    {
      v125 = 1;
    }

    else
    {
      v125 = -1;
    }

    *v118.f32 = vcvt_f32_s32(__PAIR64__(v145, v109));
    v118.f32[2] = v111;
    v126 = v143;
    v127 = vsubq_f32(v143, v118);
    if (fabsf(v144.f32[0]) >= 1.1755e-38)
    {
      if (v144.f32[0] >= 0.0)
      {
        v120.f32[0] = (1.0 - *v127.i32) / v144.f32[0];
      }

      else
      {
        v120.f32[0] = *v127.i32 / -v144.f32[0];
      }
    }

    else
    {
      v120.i32[0] = 2139095040;
    }

    v14 = v114;
    v128 = v149;
    v19 = v116;
    if (fabsf(v144.f32[1]) >= 1.1755e-38)
    {
      v129 = *&v127.i32[1];
      v24 = v117;
      if (v144.f32[1] >= 0.0)
      {
        v129 = 1.0 - *&v127.i32[1];
      }

      else
      {
        v122 = -v144.f32[1];
      }

      *v119.i32 = v129 / v122;
    }

    else
    {
      v119.i32[0] = 2139095040;
      v24 = v117;
    }

    v29 = v140;
    *v126.i32 = fabsf(v144.f32[2]);
    if (*v126.i32 >= 1.1755e-38)
    {
      v131 = *&v127.i32[2];
      if (v144.f32[2] >= 0.0)
      {
        v131 = 1.0 - *&v127.i32[2];
      }

      else
      {
        v124 = -v144.f32[2];
      }

      v130 = v131 / v124;
    }

    else
    {
      v130 = INFINITY;
    }

    v120.i32[1] = v119.i32[0];
    v120.f32[2] = v130;
    v150 = vdupq_lane_s32(v152, 0);
    v132 = vcgtq_f32(v150, v120);
    v132.i32[3] = v132.i32[2];
    if ((vmaxvq_u32(v132) & 0x80000000) == 0)
    {
LABEL_71:
      v133 = vmlaq_f32(v143, v144, v150);
      v134 = vextq_s8(v133, v133, 4uLL);
      *v134.i8 = vcvt_s32_f32(vrndm_f32(*v134.i8));
      v133.i16[0] = vcvtms_s32_f32(*v133.i32);
      v133.i16[1] = v134.i16[0];
      v133.i16[2] = v134.i16[2];
      v154 = *v133.i8;
      sub_24611F3A4((a1 + 96), **(a1 + 320), *(a1 + 408), &v154, *(a1 + 637), v14, v19, v24, v134, v133, v150, v126, v140, v151, v38);
      a3 = v141;
      v40 = v139;
      goto LABEL_4;
    }

    v135 = vdivq_f32(v128, vabsq_f32(v144));
    v136 = *&v135.i32[2];
    v146 = v135;
    v137 = *&v135.i32[1];
    while (1)
    {
      v127.i32[0] = v120.i32[1];
      if (v120.f32[0] >= v120.f32[1])
      {
        if (v120.f32[1] < v120.f32[2])
        {
          v112 += v147;
          v154.i16[1] = v112;
          *v135.i32 = v137 + v120.f32[1];
          v120.f32[1] = v137 + v120.f32[1];
          goto LABEL_74;
        }
      }

      else if (v120.f32[0] < v120.f32[2])
      {
        *v135.i8 = v154;
        v154.i16[0] += v148;
        v127 = v146;
        *v127.i32 = *v146.i32 + v120.f32[0];
        v120.f32[0] = *v146.i32 + v120.f32[0];
        v153 = v120;
        v111 = v135.u16[2];
        v112 = v135.u16[1];
        goto LABEL_75;
      }

      v111 += v125;
      v154.i16[2] = v111;
      *v135.i32 = v136 + v120.f32[2];
      v120.f32[2] = v136 + v120.f32[2];
LABEL_74:
      v153 = v120;
LABEL_75:
      sub_24611F3A4((a1 + 96), **(a1 + 320), *(a1 + 408), &v154, *(a1 + 637), v14, v19, v24, v135, v127, v119, v126, v140, v151, v38);
      v127 = v153;
      v135 = vcgtq_f32(v150, v153);
      v135.i32[3] = v135.i32[2];
      v120 = v153;
      if ((vmaxvq_u32(v135) & 0x80000000) == 0)
      {
        goto LABEL_71;
      }
    }
  }
}

void sub_24611EEDC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_computeCommandEncoder(a2, a2, a3);
  objc_msgSend_setLabel_(v4, v5, @"integrateVoxelsUptoTruncationRegion Encoder");
  objc_msgSend_setComputePipelineState_(v4, v6, *(a1 + 360));
  objc_msgSend_setBytes_length_atIndex_(v4, v7, a1 + 48, 272, 0);
  objc_msgSend_setBytes_length_atIndex_(v4, v8, **(a1 + 320), *(*(a1 + 320) + 8) - **(a1 + 320), 1);
  objc_msgSend_setBytes_length_atIndex_(v4, v9, a1 + 408, 4, 2);
  v10 = sub_24613712C(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v11, v10, 0, 3);

  objc_msgSend_setBytes_length_atIndex_(v4, v12, a1 + 444, 4, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v13, *(a1 + 448), 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v14, *(a1 + 456), 0, 6);
  v15 = sub_246136204(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v16, v15, 0, 7);

  v17 = sub_246136344(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v18, v17, 0, 8);

  objc_msgSend_setBuffer_offset_atIndex_(v4, v19, *(a1 + 488), 0, 9);
  v20 = sub_2461369A4(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v21, v20, 0, 10);

  v22 = sub_24613685C(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v23, v22, 0, 11);

  v26 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 360), v24, v25);
  v32 = *(a1 + 444);
  v33 = vdupq_n_s64(1uLL);
  v30 = v26;
  v31 = v33;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v4, v27, &v32, &v30);
  objc_msgSend_endEncoding(v4, v28, v29);
}

void sub_24611F10C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_computeCommandEncoder(a2, a2, a3);
  objc_msgSend_setLabel_(v4, v5, @"integrateVoxelsInTruncationRegion Encoder");
  objc_msgSend_setComputePipelineState_(v4, v6, *(a1 + 368));
  objc_msgSend_setBytes_length_atIndex_(v4, v7, a1 + 48, 272, 0);
  objc_msgSend_setBytes_length_atIndex_(v4, v8, **(a1 + 320), *(*(a1 + 320) + 8) - **(a1 + 320), 1);
  objc_msgSend_setBytes_length_atIndex_(v4, v9, a1 + 408, 4, 2);
  v10 = sub_24613712C(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v11, v10, 0, 3);

  objc_msgSend_setBytes_length_atIndex_(v4, v12, a1 + 444, 4, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v13, *(a1 + 448), 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v14, *(a1 + 456), 0, 6);
  v15 = sub_246136204(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v16, v15, 0, 7);

  v17 = sub_246136344(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v18, v17, 0, 8);

  objc_msgSend_setBuffer_offset_atIndex_(v4, v19, *(a1 + 488), 0, 9);
  v20 = sub_2461369A4(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v21, v20, 0, 10);

  v22 = sub_24613685C(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v4, v23, v22, 0, 11);

  v26 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 368), v24, v25);
  v32 = *(a1 + 444);
  v33 = vdupq_n_s64(1uLL);
  v30 = v26;
  v31 = v33;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v4, v27, &v32, &v30);
  objc_msgSend_endEncoding(v4, v28, v29);
}

void sub_24611F33C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_error(a2, a2, a3);
  if (v5)
  {
    sub_24611A2D0(v5, v3, v4);
  }
}

uint64_t sub_24611F3A4(unsigned int *a1, uint64_t a2, unsigned int a3, int16x4_t *a4, char a5, uint64_t a6, uint64_t a7, unsigned int *a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, uint64_t a13, _DWORD *a14, uint64_t a15)
{
  v15 = *a4;
  a9.i32[0] = a4->i16[0];
  a11.i32[0] = HIWORD(a4->u32[0]);
  a11.i32[1] = WORD2(*a4);
  *a11.i8 = vshr_n_s32(vshl_n_s32(*a11.i8, 0x10uLL), 0x10uLL);
  v16 = vmulq_s32(vextq_s8(vextq_s8(a9, a9, 4uLL), a11, 0xCuLL), xmmword_24613FBD0);
  v17 = *a1;
  v18 = a1[1];
  v19 = ((v16.i32[0] ^ v16.i32[1]) ^ v16.i32[2]) % *a1;
  v20 = *a1 * a3;
  v21 = (v20 + v19) * v18;
  v22 = (a2 + 8 * a3);
  v24 = *v22;
  v23 = v22[1];
  v25 = *v22 <= v21 && v23 > v21;
  if (!v25 || ((v26 = v21 + v18, v26 <= v23) ? (v27 = v21 > v23 - v18) : (v27 = 1), v27))
  {
    v28 = a1[3];
LABEL_12:
    LODWORD(v21) = v28;
LABEL_13:
    v29 = v28;
    v30 = v28;
    v31 = v28;
    if (v21 < v28)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v28 = a1[3];
  if (v21 >= v26)
  {
    goto LABEL_12;
  }

  v29 = a1[3];
  v30 = v29;
  v31 = v29;
  do
  {
    v36 = (a6 + 24 * v21);
    if (v36[1].i32[1] < 0)
    {
      if (v29 == v28)
      {
        v29 = v21;
      }
    }

    else
    {
      *v16.i8 = *v36;
      *a12.i8 = vceq_s16(*v36, v15);
      a12.i16[3] = a12.i16[2];
      if ((vminv_u16(*a12.i8) & 0x8000) != 0)
      {
        goto LABEL_13;
      }

      a12.i32[0] = v16.i16[0];
      v16.i32[0] = v16.u16[1];
      v16.i32[1] = v16.u16[2];
      *v16.i8 = vshr_n_s32(vshl_n_s32(*v16.i8, 0x10uLL), 0x10uLL);
      a12 = vextq_s8(a12, a12, 4uLL);
      v16 = vmulq_s32(vextq_s8(a12, v16, 0xCuLL), xmmword_24613FBD0);
      if (((v16.i32[0] ^ v16.i32[1]) ^ v16.i32[2]) % v17 == v19)
      {
        if (v31 == v28)
        {
          v37 = v36[1].u32[0];
          if (v24 <= v37)
          {
            if (v23 <= v37)
            {
              v31 = a1[3];
            }

            else
            {
              v31 = v21;
            }
          }

          else
          {
            v31 = a1[3];
          }
        }

        v30 = v21;
      }
    }

    ++v21;
  }

  while (v21 != v26);
  LODWORD(v21) = a1[3];
LABEL_14:
  if (v29 >= v28 && v30 >= v28 && v31 >= v28)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_17:
  if (v24 <= v21 && v23 > v21)
  {
    return 0xFFFFFFFFLL;
  }

  if (v24 <= v29 && v23 > v29 && (*(a6 + 24 * v29 + 12) & 0x80000000) != 0)
  {
    v60 = *a14;
    *a14 = v60 - 1;
    if ((v60 & 0x80000000) != 0)
    {
      v61 = *a8;
      if (a1[4] >= v61 + 1)
      {
        v62 = v61 + 1;
      }

      else
      {
        v62 = a1[4];
      }

      *a8 = v62;
    }

    else
    {
      v61 = *(a13 + 4 * v60);
    }

    v32 = 0xFFFFFFFFLL;
    if ((v61 & 0x80000000) == 0 && v61 < a1[4])
    {
      sub_24611F89C(a3, v29, a4, v61, a5, a6, a7, a15);
      return v61;
    }
  }

  else
  {
    if (v24 <= v31 && v23 > v31)
    {
      v30 = v31;
      while (1)
      {
        v34 = *(a6 + 24 * v30 + 8);
        if (v24 > v34 || v23 <= v34)
        {
          break;
        }

        *v16.i8 = vceq_s16(*(a6 + 24 * v34), v15);
        v16.i16[3] = v16.i16[2];
        v30 = *(a6 + 24 * v30 + 8);
        if ((vminv_u16(*v16.i8) & 0x8000) != 0)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    v32 = 0xFFFFFFFFLL;
    if (v24 <= v30 && v23 > v30)
    {
      v38 = a6 + 24 * v30;
      v39 = *(v38 + 8);
      v40 = v24 <= v39 && v23 > v39;
      if (v40 || (*(v38 + 12) & 0x80000000) != 0)
      {
LABEL_97:
        v51 = v28;
      }

      else
      {
        v41 = v30 / v18;
        if (v30 % v18 + 2 >= v18)
        {
          ++v41;
        }

        v42 = v41 % v17;
        v43 = v42;
        while (1)
        {
          v44 = (v43 + v20) * v18;
          v45 = v44 + v18;
          v50 = v24 <= v44 && v23 > v44 && v24 <= v45 && v44 < v45 && v44 <= v23 - v18 && v23 > v45;
          v51 = v28;
          if (v50)
          {
            v52 = 0;
            v53 = 0;
            v54 = (a6 + 12 + 24 * v44);
            v51 = v28;
            do
            {
              if ((*v54 & 0x80000000) != 0)
              {
                if (v51 == v28)
                {
                  v51 = v44;
                }

                if (v53)
                {
                  goto LABEL_76;
                }

                v53 = 1;
              }

              else if (v52)
              {
                v52 = 1;
              }

              else
              {
                v55 = *(v54 - 1);
                if (v24 <= v55 && v23 > v55)
                {
                  a10.i64[0] = *(v54 - 3);
                  v16.i32[0] = a10.i16[0];
                  v57.i32[0] = a10.u16[1];
                  v57.i32[1] = a10.u16[2];
                  *a10.i8 = vshr_n_s32(vshl_n_s32(v57, 0x10uLL), 0x10uLL);
                  v16 = vextq_s8(v16, v16, 4uLL);
                  a10 = vmulq_s32(vextq_s8(v16, a10, 0xCuLL), xmmword_24613FBD0);
                  v52 = ((a10.i32[0] ^ a10.i32[1]) ^ a10.i32[2]) % v17 == v43;
                }

                else
                {
                  v52 = 0;
                }
              }

              ++v44;
              v54 += 6;
            }

            while (v45 != v44);
            if (!v52 || v53 == 0)
            {
              v51 = v28;
            }
          }

LABEL_76:
          if (v24 <= v51 && v23 > v51)
          {
            break;
          }

          v43 = (v43 + v20 + 1) % v17;
          if (v43 == v42)
          {
            goto LABEL_97;
          }
        }
      }

      v32 = 0xFFFFFFFFLL;
      if (v24 <= v51 && v23 > v51)
      {
        v58 = *a14;
        *a14 = v58 - 1;
        if ((v58 & 0x80000000) != 0)
        {
          v59 = *a8;
          if (a1[4] >= v59 + 1)
          {
            v63 = v59 + 1;
          }

          else
          {
            v63 = a1[4];
          }

          *a8 = v63;
        }

        else
        {
          v59 = *(a13 + 4 * v58);
        }

        v32 = 0xFFFFFFFFLL;
        if ((v59 & 0x80000000) == 0 && v59 < a1[4])
        {
          v64 = v30;
          sub_24611F89C(a3, v51, a4, v59, a5, a6, a7, a15);
          *(a6 + 24 * v64 + 8) = v51;
          return v59;
        }
      }
    }
  }

  return v32;
}

double sub_24611F89C(int a1, unsigned int a2, void *a3, unsigned int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6 + 24 * a2;
  *v8 = *a3;
  *(v8 + 12) = a4;
  v9 = a7 + 17368 * a4;
  atomic_store(0, (v9 + 6144));
  if (a5)
  {
    v10 = 0;
    v11 = (a8 + 30852 * a4);
    atomic_store(0, v11);
    v12 = v11 + 28834;
    v13 = a7 + 17368 * a4 + 48;
    v14 = v11 + 7205;
    do
    {
      v15 = 0;
      v16 = v13;
      do
      {
        *(v16 - 44) = 0;
        *(v16 - 48) = 0;
        *(v16 - 40) = 0;
        v17 = &v14[v15];
        *(v17 - 8) = 0;
        v18 = &v12[v15 * 4];
        *(v18 - 14) = -1;
        *(v16 - 32) = 0;
        *(v16 - 36) = 0;
        *(v16 - 28) = 0;
        *(v17 - 6) = 0;
        *(v18 - 12) = -1;
        *(v16 - 20) = 0;
        *(v16 - 24) = 0;
        *(v16 - 16) = 0;
        *(v17 - 4) = 0;
        *(v18 - 10) = -1;
        *(v16 - 8) = 0;
        *(v16 - 12) = 0;
        *(v16 - 4) = 0;
        *(v17 - 2) = 0;
        *(v18 - 8) = -1;
        *(v16 + 4) = 0;
        *v16 = 0;
        *(v16 + 8) = 0;
        *v17 = 0;
        *(v18 - 6) = -1;
        *(v16 + 16) = 0;
        *(v16 + 12) = 0;
        *(v16 + 20) = 0;
        *(v17 + 2) = 0;
        *(v18 - 4) = -1;
        *(v16 + 28) = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v17 + 4) = 0;
        *(v18 - 2) = -1;
        *(v16 + 40) = 0;
        *(v16 + 36) = 0;
        *(v16 + 44) = 0;
        *(v17 + 6) = 0;
        v15 += 8;
        v16 += 96;
        *v18 = -1;
      }

      while (v15 != 64);
      ++v10;
      v12 += 256;
      v13 += 768;
      v14 += 64;
    }

    while (v10 != 8);
  }

  else
  {
    v19 = -6144;
    do
    {
      v20 = v9 + v19;
      *(v20 + 6148) = 0;
      *(v20 + 6144) = 0;
      *(v20 + 6152) = 0;
      *(v20 + 6160) = 0;
      *(v20 + 6156) = 0;
      *(v20 + 6164) = 0;
      *(v20 + 6172) = 0;
      *(v20 + 6168) = 0;
      *(v20 + 6176) = 0;
      *(v20 + 6184) = 0;
      *(v20 + 6180) = 0;
      *(v20 + 6188) = 0;
      *(v20 + 6196) = 0;
      *(v20 + 6192) = 0;
      *(v20 + 6200) = 0;
      *(v20 + 6208) = 0;
      *(v20 + 6204) = 0;
      *(v20 + 6212) = 0;
      *(v20 + 6220) = 0;
      *(v20 + 6216) = 0;
      *(v20 + 6224) = 0;
      *(v20 + 6232) = 0;
      *(v20 + 6228) = 0;
      *(v20 + 6236) = 0;
      *(v20 + 6244) = 0;
      *(v20 + 6240) = 0;
      *(v20 + 6248) = 0;
      *(v20 + 6256) = 0;
      *(v20 + 6252) = 0;
      *(v20 + 6260) = 0;
      *(v20 + 6268) = 0;
      *(v20 + 6264) = 0;
      *(v20 + 6272) = 0;
      *(v20 + 6280) = 0;
      *(v20 + 6276) = 0;
      *(v20 + 6284) = 0;
      *(v20 + 6292) = 0;
      *(v20 + 6288) = 0;
      *(v20 + 6296) = 0;
      *(v20 + 6304) = 0;
      *(v20 + 6300) = 0;
      *(v20 + 6308) = 0;
      *(v20 + 6316) = 0;
      *(v20 + 6312) = 0;
      *(v20 + 6320) = 0;
      *(v20 + 6328) = 0;
      *(v20 + 6324) = 0;
      *(v20 + 6332) = 0;
      *(v20 + 6340) = 0;
      *(v20 + 6336) = 0;
      *(v20 + 6344) = 0;
      *(v20 + 6352) = 0;
      *(v20 + 6348) = 0;
      *(v20 + 6356) = 0;
      *(v20 + 6364) = 0;
      *(v20 + 6360) = 0;
      *(v20 + 6368) = 0;
      *(v20 + 6376) = 0;
      *(v20 + 6372) = 0;
      *(v20 + 6380) = 0;
      *(v20 + 6388) = 0;
      *(v20 + 6384) = 0;
      *(v20 + 6392) = 0;
      *(v20 + 6400) = 0;
      *(v20 + 6396) = 0;
      *(v20 + 6404) = 0;
      *(v20 + 6412) = 0;
      *(v20 + 6408) = 0;
      *(v20 + 6416) = 0;
      *(v20 + 6424) = 0;
      *(v20 + 6420) = 0;
      *(v20 + 6428) = 0;
      *(v20 + 6436) = 0;
      *(v20 + 6432) = 0;
      *(v20 + 6440) = 0;
      *(v20 + 6448) = 0;
      *(v20 + 6444) = 0;
      *(v20 + 6452) = 0;
      *(v20 + 6460) = 0;
      *(v20 + 6456) = 0;
      *(v20 + 6464) = 0;
      *(v20 + 6472) = 0;
      *(v20 + 6468) = 0;
      *(v20 + 6476) = 0;
      *(v20 + 6484) = 0;
      *(v20 + 6480) = 0;
      *(v20 + 6488) = 0;
      *(v20 + 6496) = 0;
      *(v20 + 6492) = 0;
      *(v20 + 6500) = 0;
      *(v20 + 6508) = 0;
      *(v20 + 6504) = 0;
      *(v20 + 6512) = 0;
      *(v20 + 6520) = 0;
      *(v20 + 6516) = 0;
      *(v20 + 6524) = 0;
      *(v20 + 6532) = 0;
      *(v20 + 6528) = 0;
      *(v20 + 6536) = 0;
      *(v20 + 6544) = 0;
      *(v20 + 6540) = 0;
      *(v20 + 6548) = 0;
      *(v20 + 6556) = 0;
      *(v20 + 6552) = 0;
      *(v20 + 6560) = 0;
      *(v20 + 6568) = 0;
      *(v20 + 6564) = 0;
      *(v20 + 6572) = 0;
      *(v20 + 6580) = 0;
      *(v20 + 6576) = 0;
      *(v20 + 6584) = 0;
      *(v20 + 6592) = 0;
      *(v20 + 6588) = 0;
      *(v20 + 6596) = 0;
      *(v20 + 6604) = 0;
      *(v20 + 6600) = 0;
      *(v20 + 6608) = 0;
      *(v20 + 6616) = 0;
      *(v20 + 6612) = 0;
      *(v20 + 6620) = 0;
      *(v20 + 6628) = 0;
      *(v20 + 6624) = 0;
      *(v20 + 6632) = 0;
      *(v20 + 6640) = 0;
      *(v20 + 6636) = 0;
      *(v20 + 6644) = 0;
      *(v20 + 6652) = 0;
      *(v20 + 6648) = 0;
      *(v20 + 6656) = 0;
      *(v20 + 6664) = 0;
      *(v20 + 6660) = 0;
      *(v20 + 6668) = 0;
      *(v20 + 6676) = 0;
      *(v20 + 6672) = 0;
      *(v20 + 6680) = 0;
      *(v20 + 6688) = 0;
      *(v20 + 6684) = 0;
      *(v20 + 6692) = 0;
      *(v20 + 6700) = 0;
      *(v20 + 6696) = 0;
      *(v20 + 6704) = 0;
      *(v20 + 6712) = 0;
      *(v20 + 6708) = 0;
      *(v20 + 6716) = 0;
      *(v20 + 6724) = 0;
      *(v20 + 6720) = 0;
      *(v20 + 6728) = 0;
      *(v20 + 6736) = 0;
      *(v20 + 6732) = 0;
      *(v20 + 6740) = 0;
      *(v20 + 6748) = 0;
      *(v20 + 6744) = 0;
      *(v20 + 6752) = 0;
      *(v20 + 6760) = 0;
      *(v20 + 6756) = 0;
      *(v20 + 6764) = 0;
      *(v20 + 6772) = 0;
      *(v20 + 6768) = 0;
      *(v20 + 6776) = 0;
      *(v20 + 6784) = 0;
      *(v20 + 6780) = 0;
      *(v20 + 6788) = 0;
      *(v20 + 6796) = 0;
      *(v20 + 6792) = 0;
      *(v20 + 6800) = 0;
      *(v20 + 6808) = 0;
      *(v20 + 6804) = 0;
      *(v20 + 6812) = 0;
      *(v20 + 6820) = 0;
      *(v20 + 6816) = 0;
      *(v20 + 6824) = 0;
      *(v20 + 6832) = 0;
      *(v20 + 6828) = 0;
      *(v20 + 6836) = 0;
      *(v20 + 6844) = 0;
      *(v20 + 6840) = 0;
      *(v20 + 6848) = 0;
      *(v20 + 6856) = 0;
      *(v20 + 6852) = 0;
      *(v20 + 6860) = 0;
      *(v20 + 6868) = 0;
      *(v20 + 6864) = 0;
      *(v20 + 6872) = 0;
      *(v20 + 6880) = 0;
      *(v20 + 6876) = 0;
      *(v20 + 6884) = 0;
      *(v20 + 6892) = 0;
      *(v20 + 6888) = 0;
      *(v20 + 6896) = 0;
      *(v20 + 6904) = 0;
      *(v20 + 6900) = 0;
      *(v20 + 6908) = 0;
      v19 += 768;
    }

    while (v19);
  }

  result = *a3;
  *(v9 + 17352) = *a3;
  *(v9 + 17360) = a1;
  *(v9 + 17364) = 0;
  return result;
}

uint64_t sub_24611FD04(uint64_t a1, float32x2_t *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v89 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 1) == 0)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v32 = qword_27EE3F658;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v86.i8[15] >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    *&buf[4] = p_p;
    *&buf[12] = 1026;
    *&buf[14] = 183;
    v77 = "%s:%{public}d VoxelIntegratorGPU not initialized.";
LABEL_36:
    _os_log_error_impl(&dword_2460CF000, v32, OS_LOG_TYPE_ERROR, v77, buf, 0x12u);
    if (v86.i8[15] < 0)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  v5 = a5;
  v6 = a4;
  if (!sub_246107174(a2, a3, a4, a5, *(a1 + 440)))
  {
    return 0;
  }

  *(a1 + 408) = 0;
  v10 = *(a1 + 224);
  v11 = *(a1 + 240);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2->f32)), v11, *a2, 1), v12, *a2->f32, 2), v13, *a2->f32, 3);
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[2].f32)), v11, a2[2], 1), v12, *a2[2].f32, 2), v13, *a2[2].f32, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[4].f32)), v11, a2[4], 1), v12, *a2[4].f32, 2), v13, *a2[4].f32, 3);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a2[6].f32)), v11, a2[6], 1), v12, *a2[6].f32, 2), v13, *a2[6].f32, 3);
  *(a1 + 160) = v14;
  *(a1 + 176) = v15;
  *(a1 + 192) = v16;
  *(a1 + 208) = v17;
  *(a1 + 80) = *a2[6].f32;
  if (!sub_24611D4E4(a1, a3, v6, v5))
  {
    return 0;
  }

  if ((*(a1 + 639) & 1) == 0)
  {
    sub_24611E6EC(a1, a3, v6);
  }

  v20 = objc_msgSend_contents(*(a1 + 448), v18, v19);
  v23 = objc_msgSend_contents(*(a1 + 456), v21, v22);
  *(a1 + 444) = 0;
  if (!a3)
  {
    goto LABEL_25;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    if ((*(*(a1 + 416) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26))
    {
      v27 = (v20 + 48 * v25);
      v28 = *v6;
      v29 = *(v6 + 32);
      v27[1] = *(v6 + 16);
      v27[2] = v29;
      *v27 = v28;
      v30 = v23 + 20 * *(a1 + 444);
      v31 = *v5;
      *(v30 + 16) = *(v5 + 16);
      *v30 = v31;
      v25 = *(a1 + 444) + 1;
      *(a1 + 444) = v25;
    }

    ++v26;
    v6 += 48;
    v5 += 20;
  }

  while (a3 != v26);
  if (!v25)
  {
LABEL_25:
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v32 = qword_27EE3F658;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v86.i8[15] >= 0)
    {
      v76 = &__p;
    }

    else
    {
      v76 = __p;
    }

    *buf = 136315394;
    *&buf[4] = v76;
    *&buf[12] = 1026;
    *&buf[14] = 217;
    v77 = "%s:%{public}d Failed to integrate pointcloud - pointcloud does not intersect region of interest.";
    goto LABEL_36;
  }

  v32 = objc_msgSend_commandBufferWithDescriptor_(*(*(a1 + 32) + 8), v24, *(a1 + 400));
  if (!v32)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v79 = qword_27EE3F658;
    if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v86.i8[15] >= 0)
    {
      v80 = &__p;
    }

    else
    {
      v80 = __p;
    }

    *buf = 136315394;
    *&buf[4] = v80;
    *&buf[12] = 1026;
    *&buf[14] = 226;
    v81 = "%s:%{public}d Failed to integrate pointcloud - failed to create command buffer.";
    goto LABEL_53;
  }

  sub_24611DAF0(a1, v32);
  v35 = *(a1 + 448);
  v36 = *(a1 + 456);
  v87 = *(a1 + 444);
  v37 = v35;
  v38 = v36;
  v41 = objc_msgSend_computeCommandEncoder(v32, v39, v40);
  objc_msgSend_setLabel_(v41, v42, @"integrateVoxelsBetweenCameraAndEndPoints Encoder");
  objc_msgSend_setComputePipelineState_(v41, v43, *(a1 + 352));
  objc_msgSend_setBytes_length_atIndex_(v41, v44, a1 + 48, 272, 0);
  objc_msgSend_setBytes_length_atIndex_(v41, v45, **(a1 + 320), *(*(a1 + 320) + 8) - **(a1 + 320), 1);
  objc_msgSend_setBytes_length_atIndex_(v41, v46, a1 + 408, 4, 2);
  v47 = sub_24613712C(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v41, v48, v47, 0, 3);

  objc_msgSend_setBytes_length_atIndex_(v41, v49, &v87, 4, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v50, v37, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v51, v38, 0, 6);
  v52 = sub_246136204(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v41, v53, v52, 0, 7);

  v54 = sub_246136344(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v41, v55, v54, 0, 8);

  objc_msgSend_setBuffer_offset_atIndex_(v41, v56, *(a1 + 488), 0, 9);
  v57 = sub_2461369A4(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v41, v58, v57, 0, 10);

  v59 = sub_24613685C(*(a1 + 16));
  objc_msgSend_setBuffer_offset_atIndex_(v41, v60, v59, 0, 11);

  v63 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 352), v61, v62);
  __p = *(a1 + 444);
  v86 = vdupq_n_s64(1uLL);
  *buf = v63;
  *&buf[8] = v86;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v64, &__p, buf);
  objc_msgSend_endEncoding(v41, v65, v66);

  if (*(a1 + 636) == 1)
  {
    sub_24611DD40(a1, v32, v68);
    sub_24611DE44(a1, v32, v69);
  }

  objc_msgSend_addCompletedHandler_(v32, v67, &unk_2858EC4B8);
  objc_msgSend_commit(v32, v70, v71);
  objc_msgSend_waitUntilCompleted(v32, v72, v73);
  if ((sub_246136EBC(*(a1 + 16), *(a1 + 408)) & 1) == 0)
  {
    v79 = sub_24611DFB4();
    if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
LABEL_46:

      goto LABEL_14;
    }

    sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v86.i8[15] >= 0)
    {
      v83 = &__p;
    }

    else
    {
      v83 = __p;
    }

    *buf = 136315394;
    *&buf[4] = v83;
    *&buf[12] = 1026;
    *&buf[14] = 250;
    v81 = "%s:%{public}d Failed to setLastIntegratedSubmapID.";
LABEL_53:
    _os_log_error_impl(&dword_2460CF000, v79, OS_LOG_TYPE_ERROR, v81, buf, 0x12u);
    if (v86.i8[15] < 0)
    {
      operator delete(__p);
    }

    goto LABEL_46;
  }

  kdebug_trace();
  if (sub_246137698(*(a1 + 16), v74, v75))
  {
    kdebug_trace();
    v33 = 1;
    goto LABEL_15;
  }

  v82 = sub_24611DFB4();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(&__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::integratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v86.i8[15] >= 0)
    {
      v84 = &__p;
    }

    else
    {
      v84 = __p;
    }

    *buf = 136315394;
    *&buf[4] = v84;
    *&buf[12] = 1026;
    *&buf[14] = 260;
    _os_log_error_impl(&dword_2460CF000, v82, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to erase hash entries with empty voxelblocks.", buf, 0x12u);
    if (v86.i8[15] < 0)
    {
      operator delete(__p);
    }
  }

  kdebug_trace();
LABEL_14:
  v33 = 0;
LABEL_15:

  return v33;
}

void sub_246120554(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_error(a2, a2, a3);
  if (v5)
  {
    sub_24611A2D0(v5, v3, v4);
  }
}

uint64_t sub_2461205BC(float32x4_t *a1, float32x4_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((a1->i8[8] & 1) == 0)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v5 = qword_27EE3F658;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::reset(const VoxelIntegrator::ResetConfig &)");
    v6 = v9 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v11 = v6;
    v12 = 1026;
    v13 = 159;
    _os_log_error_impl(&dword_2460CF000, v5, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to reset VoxelIntegratorGPU - not initialized.", buf, 0x12u);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  v2 = *a2;
  if (COERCE_FLOAT(*a2) > 0.0 && v2.f32[1] > 0.0 && v2.f32[2] > 0.0)
  {
    v3.i64[0] = 0x3F0000003F000000;
    v3.i64[1] = 0x3F0000003F000000;
    a1[3] = vmulq_f32(*a2, v3);
    v3.i64[0] = 0xBF000000BF000000;
    v3.i64[1] = 0xBF000000BF000000;
    a1[4] = vmulq_f32(*a2, v3);
    a1[34] = *a2;
    return 1;
  }

  if (qword_27EE3F660 != -1)
  {
    dispatch_once(&qword_27EE3F660, &unk_2858EC518);
  }

  v5 = qword_27EE3F658;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::reset(const VoxelIntegrator::ResetConfig &)");
    v7 = v9 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v11 = v7;
    v12 = 1026;
    v13 = 165;
    _os_log_error_impl(&dword_2460CF000, v5, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to reset VoxelIntegratorGPU - reset config is invalid.", buf, 0x12u);
    if (v9 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

LABEL_13:

  return 0;
}

uint64_t sub_2461207FC(uint64_t a1, __int128 *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if ((sub_24610851C(a2) & 1) == 0)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v11 = qword_27EE3F658;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    v22 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315394;
    *&buf[4] = v22;
    v42 = 1026;
    v43 = 45;
    _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelIntegratorGPU - invalid init config.", buf, 0x12u);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_58:
    operator delete(*__p);
LABEL_21:

    return 0;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 544) = a2[2];
  *(a1 + 560) = v6;
  *(a1 + 512) = v4;
  *(a1 + 528) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 608) = a2[6];
  *(a1 + 624) = v9;
  *(a1 + 576) = v7;
  *(a1 + 592) = v8;
  if (!*(a1 + 32))
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v11 = qword_27EE3F658;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    v33 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315394;
    *&buf[4] = v33;
    v42 = 1026;
    v43 = 53;
    _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelIntegratorGPU - failed to get MTLDeviceContext.", buf, 0x12u);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  v10 = *(a1 + 16);
  if (!v10 || (*(v10 + 8) & 1) == 0)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v11 = qword_27EE3F658;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    v25 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315394;
    *&buf[4] = v25;
    v42 = 1026;
    v43 = 60;
    _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelIntegratorGPU - invalid voxelHashingData or it's not initialized.", buf, 0x12u);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  if (*(a1 + 8) == 1)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v11 = qword_27EE3F658;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    v35 = __p[23] >= 0 ? __p : *__p;
    *buf = 136315394;
    *&buf[4] = v35;
    v42 = 1026;
    v43 = 66;
    _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelIntegratorGPU - already initialized.", buf, 0x12u);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  v13 = *(a1 + 624);
  v14 = *(a1 + 544);
  v15.i64[0] = 0x3F0000003F000000;
  v15.i64[1] = 0x3F0000003F000000;
  v16.i64[0] = 0xBF000000BF000000;
  v16.i64[1] = 0xBF000000BF000000;
  *(a1 + 48) = vmulq_f32(v14, v15);
  *(a1 + 64) = vmulq_f32(v14, v16);
  sub_2461360B0(__p, v10);
  if ((v40 & 1) == 0)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v11 = qword_27EE3F658;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    if (v44 >= 0)
    {
      v23 = buf;
    }

    else
    {
      v23 = *buf;
    }

    *v45 = 136315394;
    v46 = v23;
    v47 = 1026;
    v48 = 78;
    v24 = "%s:%{public}d Failed to initialize VoxelIntegratorGPU - failed to get hash table parameters.";
    goto LABEL_78;
  }

  *(a1 + 96) = *__p;
  *(a1 + 108) = *&__p[12];
  *(a1 + 124) = *(a1 + 528);
  v17 = *(a1 + 520);
  *(a1 + 132) = v17;
  *(a1 + 140) = vmul_n_f32(v17, 1.0 / v13);
  *(a1 + 148) = 64;
  v18 = *(a1 + 576);
  *(a1 + 224) = *(a1 + 560);
  *(a1 + 240) = v18;
  v19 = *(a1 + 608);
  *(a1 + 256) = *(a1 + 592);
  *(a1 + 272) = v19;
  *(a1 + 288) = *&__p[16];
  *(a1 + 292) = *(a1 + 624);
  v20 = *(a1 + 512);
  if (v20 > 6)
  {
    v21 = 0;
    *(a1 + 300) = 0;
    *(a1 + 304) = *(a1 + 632);
    *(a1 + 308) = *(a1 + 638);
  }

  else
  {
    *(a1 + 300) = dword_246144180[v20];
    *(a1 + 304) = *(a1 + 632);
    *(a1 + 308) = *(a1 + 638);
    v21 = dword_24614419C[v20];
  }

  *(a1 + 440) = v21;
  v26 = *(a1 + 320);
  v27 = *v26;
  v28 = v26[1];
  if (v27 == v28 || *(a1 + 120) != ((v28 - v27) >> 3))
  {
    v11 = sub_24611DFB4();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    if (v44 >= 0)
    {
      v37 = buf;
    }

    else
    {
      v37 = *buf;
    }

    *v45 = 136315394;
    v46 = v37;
    v47 = 1026;
    v48 = 116;
    v24 = "%s:%{public}d Failed to initialize VoxelIntegratorGPU - hashtable extents is empty.";
LABEL_78:
    _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, v24, v45, 0x12u);
    if (v44 < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_21;
  }

  if ((sub_246121084(a1, (a1 + 516)) & 1) == 0)
  {
    v11 = sub_24611DFB4();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    if (v44 >= 0)
    {
      v34 = buf;
    }

    else
    {
      v34 = *buf;
    }

    *v45 = 136315394;
    v46 = v34;
    v47 = 1026;
    v48 = 122;
    v24 = "%s:%{public}d Failed to initialize VoxelIntegratorGPU - failed to create pipeline states.";
    goto LABEL_78;
  }

  if ((sub_246122798(a1) & 1) == 0)
  {
    v11 = sub_24611DFB4();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    if (v44 >= 0)
    {
      v36 = buf;
    }

    else
    {
      v36 = *buf;
    }

    *v45 = 136315394;
    v46 = v36;
    v47 = 1026;
    v48 = 128;
    v24 = "%s:%{public}d Failed to initialize VoxelIntegratorGPU - failed to create metal buffers.";
    goto LABEL_78;
  }

  if (*(a1 + 639) != 1 || sub_24612303C(a1))
  {
    v29 = objc_alloc_init(MEMORY[0x277CD6CE8]);
    v30 = *(a1 + 400);
    *(a1 + 400) = v29;

    v32 = *(a1 + 400);
    if (v32)
    {
      objc_msgSend_setErrorOptions_(v32, v31, 1);
      sub_24612369C();
    }

    v11 = sub_24611DFB4();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelIntegratorGPU::init(const InitConfig &)");
    if (v44 >= 0)
    {
      v38 = buf;
    }

    else
    {
      v38 = *buf;
    }

    *v45 = 136315394;
    v46 = v38;
    v47 = 1026;
    v48 = 141;
    v24 = "%s:%{public}d Failed to initialize VoxelIntegratorGPU - failed to create command buffer descriptor.";
    goto LABEL_78;
  }

  return 0;
}

uint64_t sub_246121084(uint64_t a1, int *a2)
{
  v224 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD6D70]);
  v214 = *a2;
  objc_msgSend_setConstantValue_type_atIndex_(v4, v5, &v214, 33, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v4, v6, a1 + 637, 53, 1);
  v8 = objc_msgSend_newFunctionWithName_(*(*(a1 + 32) + 16), v7, @"oc::voxel_hashing::resetAllHashBucketLocks");
  if (!v8)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v9 = qword_27EE3F658;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(v219, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
      v91 = (v223 & 0x80000000) == 0 ? v219 : *v219;
      *buf = 136315394;
      *&buf[4] = v91;
      v216 = 1026;
      v217 = 483;
      _os_log_error_impl(&dword_2460CF000, v9, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find resetAllHashBucketLocks compute shader.", buf, 0x12u);
      if (SBYTE3(v223) < 0)
      {
        operator delete(*v219);
      }
    }
  }

  v10 = **(a1 + 32);
  v213 = 0;
  v12 = objc_msgSend_newComputePipelineStateWithFunction_error_(v10, v11, v8, &v213);
  v13 = v213;
  v14 = *(a1 + 328);
  *(a1 + 328) = v12;

  if (*(a1 + 328))
  {
    v16 = objc_msgSend_newFunctionWithName_(*(*(a1 + 32) + 16), v15, @"oc::voxel_hashing::resetAllHashEntryLocksAndHashEntryUpdateFlag");
    if (!v16)
    {
      if (qword_27EE3F660 != -1)
      {
        dispatch_once(&qword_27EE3F660, &unk_2858EC518);
      }

      v17 = qword_27EE3F658;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(v219, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
        v99 = (v223 & 0x80000000) == 0 ? v219 : *v219;
        *buf = 136315394;
        *&buf[4] = v99;
        v216 = 1026;
        v217 = 499;
        _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find resetAllHashEntryLocksAndHashEntryUpdateFlag compute shader.", buf, 0x12u);
        if (SBYTE3(v223) < 0)
        {
          operator delete(*v219);
        }
      }
    }

    v18 = **(a1 + 32);
    v212 = v13;
    v20 = objc_msgSend_newComputePipelineStateWithFunction_error_(v18, v19, v16, &v212);
    v21 = v212;

    v22 = *(a1 + 336);
    *(a1 + 336) = v20;

    if (*(a1 + 336))
    {
      v23 = *(*(a1 + 32) + 16);
      v211 = v21;
      v25 = objc_msgSend_newFunctionWithName_constantValues_error_(v23, v24, @"oc::voxel_hashing::allocateVoxelBlocksIntersectingRay", v4, &v211);
      v26 = v211;

      if (v25)
      {
        v27 = **(a1 + 32);
        v210 = v26;
        v29 = objc_msgSend_newComputePipelineStateWithFunction_error_(v27, v28, v25, &v210);
        v30 = v210;

        v31 = *(a1 + 344);
        *(a1 + 344) = v29;

        if (*(a1 + 344))
        {
          v32 = *(*(a1 + 32) + 16);
          v209 = v30;
          v199 = objc_msgSend_newFunctionWithName_constantValues_error_(v32, v33, @"oc::voxel_hashing::integrateVoxelsBetweenCameraAndEndPoints", v4, &v209);
          v34 = v209;

          v35 = v199;
          if (!v199)
          {
            if (qword_27EE3F660 != -1)
            {
              dispatch_once(&qword_27EE3F660, &unk_2858EC518);
            }

            v36 = qword_27EE3F658;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
              v123 = v218;
              v124 = *buf;
              v127 = objc_msgSend_localizedDescription(v34, v125, v126);
              v128 = v127;
              v129 = buf;
              if (v123 < 0)
              {
                v129 = v124;
              }

              *v219 = 136315650;
              *&v219[4] = v129;
              v220 = 1026;
              v221 = 538;
              v222 = 2114;
              v223 = v127;
              _os_log_error_impl(&dword_2460CF000, v36, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find integrateVoxelsBetweenCameraAndEndPoints compute shader. Error details: %{public}@", v219, 0x1Cu);

              if (v218 < 0)
              {
                operator delete(*buf);
              }
            }

            v35 = 0;
          }

          v37 = **(a1 + 32);
          v208 = v34;
          v39 = objc_msgSend_newComputePipelineStateWithFunction_error_(v37, v38, v35, &v208);
          v26 = v208;

          v40 = *(a1 + 352);
          *(a1 + 352) = v39;

          if (*(a1 + 352))
          {
            v41 = *(*(a1 + 32) + 16);
            v207 = v26;
            v198 = objc_msgSend_newFunctionWithName_constantValues_error_(v41, v42, @"oc::voxel_hashing::integrateVoxelsUptoTruncationRegion", v4, &v207);
            v43 = v207;

            v44 = v198;
            if (!v198)
            {
              if (qword_27EE3F660 != -1)
              {
                dispatch_once(&qword_27EE3F660, &unk_2858EC518);
              }

              v45 = qword_27EE3F658;
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                v137 = v218;
                v138 = *buf;
                v141 = objc_msgSend_localizedDescription(v43, v139, v140);
                v142 = v141;
                v143 = buf;
                if (v137 < 0)
                {
                  v143 = v138;
                }

                *v219 = 136315650;
                *&v219[4] = v143;
                v220 = 1026;
                v221 = 558;
                v222 = 2114;
                v223 = v141;
                _os_log_error_impl(&dword_2460CF000, v45, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find integrateVoxelsUptoTruncationRegion compute shader. Error details: %{public}@", v219, 0x1Cu);

                if (v218 < 0)
                {
                  operator delete(*buf);
                }
              }

              v44 = 0;
            }

            v46 = **(a1 + 32);
            v206 = v43;
            v48 = objc_msgSend_newComputePipelineStateWithFunction_error_(v46, v47, v44, &v206);
            v26 = v206;

            v49 = *(a1 + 360);
            *(a1 + 360) = v48;

            if (*(a1 + 360))
            {
              v50 = *(*(a1 + 32) + 16);
              v205 = v26;
              v197 = objc_msgSend_newFunctionWithName_constantValues_error_(v50, v51, @"oc::voxel_hashing::integrateVoxelsInTruncationRegion", v4, &v205);
              v52 = v205;

              v53 = v197;
              if (!v197)
              {
                if (qword_27EE3F660 != -1)
                {
                  dispatch_once(&qword_27EE3F660, &unk_2858EC518);
                }

                v54 = qword_27EE3F658;
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                  v151 = v218;
                  v152 = *buf;
                  v155 = objc_msgSend_localizedDescription(v52, v153, v154);
                  v156 = v155;
                  v157 = buf;
                  if (v151 < 0)
                  {
                    v157 = v152;
                  }

                  *v219 = 136315650;
                  *&v219[4] = v157;
                  v220 = 1026;
                  v221 = 577;
                  v222 = 2114;
                  v223 = v155;
                  _os_log_error_impl(&dword_2460CF000, v54, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find integrateVoxelsInTruncationRegion compute shader. Error details: %{public}@", v219, 0x1Cu);

                  if (v218 < 0)
                  {
                    operator delete(*buf);
                  }
                }

                v53 = 0;
              }

              v55 = **(a1 + 32);
              v204 = v52;
              v57 = objc_msgSend_newComputePipelineStateWithFunction_error_(v55, v56, v53, &v204);
              v26 = v204;

              v58 = *(a1 + 368);
              *(a1 + 368) = v57;

              if (*(a1 + 368))
              {
                v59 = *(*(a1 + 32) + 16);
                v203 = v26;
                v196 = objc_msgSend_newFunctionWithName_constantValues_error_(v59, v60, @"oc::voxel_hashing::deintegrateVoxelsInTruncationRegion", v4, &v203);
                v61 = v203;

                v62 = v196;
                if (!v196)
                {
                  v63 = sub_24611DFB4();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                    v165 = v218;
                    v166 = *buf;
                    v169 = objc_msgSend_localizedDescription(v61, v167, v168);
                    v170 = v169;
                    v171 = buf;
                    if (v165 < 0)
                    {
                      v171 = v166;
                    }

                    *v219 = 136315650;
                    *&v219[4] = v171;
                    v220 = 1026;
                    v221 = 596;
                    v222 = 2114;
                    v223 = v169;
                    _os_log_error_impl(&dword_2460CF000, v63, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find deintegrateVoxelsInTruncationRegion compute shader. Error details: %{public}@", v219, 0x1Cu);

                    if (v218 < 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  v62 = 0;
                }

                v64 = **(a1 + 32);
                v202 = v61;
                v66 = objc_msgSend_newComputePipelineStateWithFunction_error_(v64, v65, v62, &v202);
                v67 = v202;

                v68 = *(a1 + 376);
                *(a1 + 376) = v66;

                if (!*(a1 + 376))
                {
                  v70 = sub_24611DFB4();
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                  {
                    sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                    v172 = v218;
                    v173 = *buf;
                    v176 = objc_msgSend_localizedDescription(v67, v174, v175);
                    v177 = v176;
                    v178 = buf;
                    if (v172 < 0)
                    {
                      v178 = v173;
                    }

                    *v219 = 136315650;
                    *&v219[4] = v178;
                    v220 = 1026;
                    v221 = 604;
                    v222 = 2114;
                    v223 = v176;
                    _os_log_error_impl(&dword_2460CF000, v70, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for deintegrateVoxelsInTruncationRegion compute shader. Error details: %{public}@", v219, 0x1Cu);

                    if (v218 < 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }

                v71 = objc_msgSend_newFunctionWithName_(*(*(a1 + 32) + 16), v69, @"oc::voxel_hashing::updateArgsForFindHashEntriesToErase");
                if (!v71)
                {
                  v72 = sub_24611DFB4();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                  {
                    sub_24610D894(v219, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                    v179 = (v223 & 0x80000000) == 0 ? v219 : *v219;
                    *buf = 136315394;
                    *&buf[4] = v179;
                    v216 = 1026;
                    v217 = 611;
                    _os_log_error_impl(&dword_2460CF000, v72, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find updateArgsForFindHashEntriesToErase compute shader.", buf, 0x12u);
                    if (SBYTE3(v223) < 0)
                    {
                      operator delete(*v219);
                    }
                  }

                  v71 = 0;
                }

                v73 = **(a1 + 32);
                v201 = v67;
                v195 = v71;
                v75 = objc_msgSend_newComputePipelineStateWithFunction_error_(v73, v74, v71, &v201);
                v26 = v201;

                v76 = *(a1 + 384);
                *(a1 + 384) = v75;

                if (*(a1 + 384))
                {
                  v78 = objc_msgSend_newFunctionWithName_(*(*(a1 + 32) + 16), v77, @"oc::voxel_hashing::findHashEntriesToErase");
                  if (!v78)
                  {
                    v79 = sub_24611DFB4();
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                    {
                      sub_24610D894(v219, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                      v187 = (v223 & 0x80000000) == 0 ? v219 : *v219;
                      *buf = 136315394;
                      *&buf[4] = v187;
                      v216 = 1026;
                      v217 = 627;
                      _os_log_error_impl(&dword_2460CF000, v79, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find findHashEntriesToErase compute shader.", buf, 0x12u);
                      if (SBYTE3(v223) < 0)
                      {
                        operator delete(*v219);
                      }
                    }
                  }

                  v80 = **(a1 + 32);
                  v200 = v26;
                  v82 = objc_msgSend_newComputePipelineStateWithFunction_error_(v80, v81, v78, &v200);
                  v83 = v200;

                  v84 = *(a1 + 392);
                  *(a1 + 392) = v82;

                  if (*(a1 + 392))
                  {
                    v85 = 1;
                  }

                  else
                  {
                    v107 = sub_24611DFB4();
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                    {
                      sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                      v188 = v218;
                      v189 = *buf;
                      v192 = objc_msgSend_localizedDescription(v83, v190, v191);
                      v193 = v192;
                      v194 = buf;
                      if (v188 < 0)
                      {
                        v194 = v189;
                      }

                      *v219 = 136315650;
                      *&v219[4] = v194;
                      v220 = 1026;
                      v221 = 635;
                      v222 = 2114;
                      v223 = v192;
                      _os_log_error_impl(&dword_2460CF000, v107, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for findHashEntriesToErase compute shader. Error details: %{public}@", v219, 0x1Cu);

                      if (v218 < 0)
                      {
                        operator delete(*buf);
                      }
                    }

                    v85 = 0;
                  }

                  v26 = v83;
                }

                else
                {
                  v78 = sub_24611DFB4();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                    v180 = v218;
                    v181 = *buf;
                    v184 = objc_msgSend_localizedDescription(v26, v182, v183);
                    v185 = v184;
                    v186 = v180 >= 0 ? buf : v181;
                    *v219 = 136315650;
                    *&v219[4] = v186;
                    v220 = 1026;
                    v221 = 619;
                    v222 = 2114;
                    v223 = v184;
                    _os_log_error_impl(&dword_2460CF000, v78, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for updateArgsForFindHashEntriesToErase compute shader. Error details: %{public}@", v219, 0x1Cu);

                    if (v218 < 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  v85 = 0;
                }

                v90 = v196;
              }

              else
              {
                if (qword_27EE3F660 != -1)
                {
                  dispatch_once(&qword_27EE3F660, &unk_2858EC518);
                }

                v90 = qword_27EE3F658;
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
                  sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                  v158 = v218;
                  v159 = *buf;
                  v162 = objc_msgSend_localizedDescription(v26, v160, v161);
                  v163 = v162;
                  v164 = v158 >= 0 ? buf : v159;
                  *v219 = 136315650;
                  *&v219[4] = v164;
                  v220 = 1026;
                  v221 = 585;
                  v222 = 2114;
                  v223 = v162;
                  _os_log_error_impl(&dword_2460CF000, v90, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for integrateVoxelsInTruncationRegion compute shader. Error details: %{public}@", v219, 0x1Cu);

                  if (v218 < 0)
                  {
                    operator delete(*buf);
                  }
                }

                v85 = 0;
              }

              v89 = v197;
            }

            else
            {
              if (qword_27EE3F660 != -1)
              {
                dispatch_once(&qword_27EE3F660, &unk_2858EC518);
              }

              v89 = qword_27EE3F658;
              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
                v144 = v218;
                v145 = *buf;
                v148 = objc_msgSend_localizedDescription(v26, v146, v147);
                v149 = v148;
                v150 = v144 >= 0 ? buf : v145;
                *v219 = 136315650;
                *&v219[4] = v150;
                v220 = 1026;
                v221 = 566;
                v222 = 2114;
                v223 = v148;
                _os_log_error_impl(&dword_2460CF000, v89, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for integrateVoxelsUptoTruncationRegion compute shader. Error details: %{public}@", v219, 0x1Cu);

                if (v218 < 0)
                {
                  operator delete(*buf);
                }
              }

              v85 = 0;
            }

            v88 = v198;
          }

          else
          {
            if (qword_27EE3F660 != -1)
            {
              dispatch_once(&qword_27EE3F660, &unk_2858EC518);
            }

            v88 = qword_27EE3F658;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
              v130 = v218;
              v131 = *buf;
              v134 = objc_msgSend_localizedDescription(v26, v132, v133);
              v135 = v134;
              v136 = v130 >= 0 ? buf : v131;
              *v219 = 136315650;
              *&v219[4] = v136;
              v220 = 1026;
              v221 = 547;
              v222 = 2114;
              v223 = v134;
              _os_log_error_impl(&dword_2460CF000, v88, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for integrateVoxelsBetweenCameraAndEndPoints compute shader. Error details: %{public}@", v219, 0x1Cu);

              if (v218 < 0)
              {
                operator delete(*buf);
              }
            }

            v85 = 0;
          }

          v87 = v199;
        }

        else
        {
          if (qword_27EE3F660 != -1)
          {
            dispatch_once(&qword_27EE3F660, &unk_2858EC518);
          }

          v87 = qword_27EE3F658;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
            v116 = v218;
            v117 = *buf;
            v120 = objc_msgSend_localizedDescription(v30, v118, v119);
            v121 = v120;
            v122 = v116 >= 0 ? buf : v117;
            *v219 = 136315650;
            *&v219[4] = v122;
            v220 = 1026;
            v221 = 527;
            v222 = 2114;
            v223 = v120;
            _os_log_error_impl(&dword_2460CF000, v87, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for allocateVoxelBlocksIntersectingRay compute shader. Error details: %{public}@", v219, 0x1Cu);

            if (v218 < 0)
            {
              operator delete(*buf);
            }
          }

          v85 = 0;
          v26 = v30;
        }
      }

      else
      {
        if (qword_27EE3F660 != -1)
        {
          dispatch_once(&qword_27EE3F660, &unk_2858EC518);
        }

        v87 = qword_27EE3F658;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
          v109 = v218;
          v110 = *buf;
          v113 = objc_msgSend_localizedDescription(v26, v111, v112);
          v114 = v113;
          v115 = v109 >= 0 ? buf : v110;
          *v219 = 136315650;
          *&v219[4] = v115;
          v220 = 1026;
          v221 = 518;
          v222 = 2114;
          v223 = v113;
          _os_log_error_impl(&dword_2460CF000, v87, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find allocateVoxelBlocksIntersectingRay compute shader. Error details: %{public}@", v219, 0x1Cu);

          if (v218 < 0)
          {
            operator delete(*buf);
          }
        }

        v85 = 0;
      }

      v86 = v25;
      v21 = v26;
    }

    else
    {
      if (qword_27EE3F660 != -1)
      {
        dispatch_once(&qword_27EE3F660, &unk_2858EC518);
      }

      v86 = qword_27EE3F658;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
        v100 = v218;
        v101 = *buf;
        v104 = objc_msgSend_localizedDescription(v21, v102, v103);
        v105 = v104;
        v106 = v100 >= 0 ? buf : v101;
        *v219 = 136315650;
        *&v219[4] = v106;
        v220 = 1026;
        v221 = 507;
        v222 = 2114;
        v223 = v104;
        _os_log_error_impl(&dword_2460CF000, v86, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelIntegratorGPU::createPipelineStates: Failed to create pipeline state for resetAllHashEntryLocksAndHashEntryUpdateFlag compute shader. Error details: %{public}@", v219, 0x1Cu);

        if (v218 < 0)
        {
          operator delete(*buf);
        }
      }

      v85 = 0;
    }

    v13 = v21;
  }

  else
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v16 = qword_27EE3F658;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createPipelineStates(const VoxelHashingMode &)");
      v92 = v218;
      v93 = *buf;
      v96 = objc_msgSend_localizedDescription(v13, v94, v95);
      v97 = v96;
      v98 = v92 >= 0 ? buf : v93;
      *v219 = 136315650;
      *&v219[4] = v98;
      v220 = 1026;
      v221 = 491;
      v222 = 2114;
      v223 = v96;
      _os_log_error_impl(&dword_2460CF000, v16, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for resetAllHashBucketLocks compute shader. Error details: %{public}@", v219, 0x1Cu);

      if (v218 < 0)
      {
        operator delete(*buf);
      }
    }

    v85 = 0;
  }

  return v85;
}

void sub_24612251C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v38 < 0)
  {
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_246122798(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = **(a1 + 32);
  v4 = objc_msgSend_newBufferWithLength_options_(v2, v3, 48 * *(a1 + 440), 0);
  v5 = *(a1 + 448);
  *(a1 + 448) = v4;

  v7 = *(a1 + 448);
  if (!v7)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v49 = qword_27EE3F658;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createBuffers()");
    v51 = v59 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v61 = v51;
    v62 = 1026;
    v63 = 650;
    _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create points buffer.", buf, 0x12u);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

  objc_msgSend_setLabel_(v7, v6, @"InputPoints Buffer");
  v8 = **(a1 + 32);
  v10 = objc_msgSend_newBufferWithLength_options_(v8, v9, 20 * *(a1 + 440), 0);
  v11 = *(a1 + 456);
  *(a1 + 456) = v10;

  v13 = *(a1 + 456);
  if (!v13)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v49 = qword_27EE3F658;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createBuffers()");
    v52 = v59 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v61 = v52;
    v62 = 1026;
    v63 = 660;
    _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointSupplements buffer.", buf, 0x12u);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

  objc_msgSend_setLabel_(v13, v12, @"PointSupplements Buffer");
  v14 = *(a1 + 440);
  if (v14)
  {
    operator new();
  }

  v50 = *(a1 + 416);
  if (v50)
  {
    operator delete(v50);
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
  }

  *(a1 + 416) = 0;
  *(a1 + 424) = v14;
  *(a1 + 432) = 0;
  v15 = *(a1 + 120) * *(a1 + 96);
  v16 = **(a1 + 32);
  v18 = objc_msgSend_newBufferWithLength_options_(v16, v17, 4 * v15, 0);
  v19 = *(a1 + 464);
  *(a1 + 464) = v18;

  v21 = *(a1 + 464);
  if (!v21)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v49 = qword_27EE3F658;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createBuffers()");
    v53 = v59 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v61 = v53;
    v62 = 1026;
    v63 = 673;
    _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create hashBucketLocks buffer.", buf, 0x12u);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

  objc_msgSend_setLabel_(v21, v20, @"HashBucketLocks Buffer");
  v22 = **(a1 + 32);
  v24 = objc_msgSend_newBufferWithLength_options_(v22, v23, 4, 0);
  v25 = *(a1 + 472);
  *(a1 + 472) = v24;

  v27 = *(a1 + 472);
  if (!v27)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v49 = qword_27EE3F658;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createBuffers()");
    v54 = v59 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v61 = v54;
    v62 = 1026;
    v63 = 682;
    _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create numLockedBucketIdxs buffer.", buf, 0x12u);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

  objc_msgSend_setLabel_(v27, v26, @"NumLockedBucketIdxs Buffer");
  *objc_msgSend_contents(*(a1 + 472), v28, v29) = 0;
  v30 = **(a1 + 32);
  v32 = objc_msgSend_newBufferWithLength_options_(v30, v31, 4 * *(a1 + 96), 0);
  v33 = *(a1 + 480);
  *(a1 + 480) = v32;

  v35 = *(a1 + 480);
  if (!v35)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v49 = qword_27EE3F658;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createBuffers()");
    v55 = v59 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v61 = v55;
    v62 = 1026;
    v63 = 696;
    _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create lockedBucketIdxs buffer.", buf, 0x12u);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

  objc_msgSend_setLabel_(v35, v34, @"LockedBucketIdxs Buffer");
  v36 = **(a1 + 32);
  v38 = objc_msgSend_newBufferWithLength_options_(v36, v37, 4 * *(a1 + 108), 0);
  v39 = *(a1 + 488);
  *(a1 + 488) = v38;

  v41 = *(a1 + 488);
  if (!v41)
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v49 = qword_27EE3F658;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createBuffers()");
    v56 = v59 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v61 = v56;
    v62 = 1026;
    v63 = 706;
    _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create hashEntryLocks buffer.", buf, 0x12u);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

  objc_msgSend_setLabel_(v41, v40, @"HashEntryLocks Buffer");
  v42 = **(a1 + 32);
  v44 = objc_msgSend_newBufferWithLength_options_(v42, v43, 12, 0);
  v45 = *(a1 + 496);
  *(a1 + 496) = v44;

  v47 = *(a1 + 496);
  if (v47)
  {
    objc_msgSend_setLabel_(v47, v46, @"IndirectArgsFindHashEntriesToErase Buffer");
    return 1;
  }

  if (qword_27EE3F660 != -1)
  {
    dispatch_once(&qword_27EE3F660, &unk_2858EC518);
  }

  v49 = qword_27EE3F658;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::createBuffers()");
    v57 = v59 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v61 = v57;
    v62 = 1026;
    v63 = 716;
    _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create indirectArgsFindHashEntriesToErase buffer.", buf, 0x12u);
    if (v59 < 0)
    {
LABEL_76:
      operator delete(__p[0]);
    }
  }

LABEL_41:

  return 0;
}

uint64_t sub_24612303C(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = sub_246136204(*(a1 + 16));
  v4 = v3;
  v69 = objc_msgSend_contents(v4, v5, v6);

  v7 = sub_246136344(*(a1 + 16));
  v8 = v7;
  v68 = objc_msgSend_contents(v8, v9, v10);

  v11 = sub_246136484(*(a1 + 16));
  v12 = v11;
  v15 = objc_msgSend_contents(v12, v13, v14);

  v16 = sub_2461365CC(*(a1 + 16));
  v17 = v16;
  v20 = objc_msgSend_contents(v17, v18, v19);

  v21 = sub_246136714(*(a1 + 16));
  v22 = v21;
  v25 = objc_msgSend_contents(v22, v23, v24);

  v26 = sub_246136D7C(*(a1 + 16));
  v27 = v26;
  v30 = objc_msgSend_contents(v27, v28, v29);

  v32 = vaddq_f32(*(a1 + 48), *(a1 + 48));
  *v33.i32 = *(a1 + 292) * 8.0;
  v34.i64[0] = 0x3F0000003F000000;
  v34.i64[1] = 0x3F0000003F000000;
  v38 = vmulq_f32(v32, v34);
  v35 = vdivq_f32(v38, vdupq_lane_s32(v33, 0));
  v35.i32[3] = 0;
  v39 = vrndpq_f32(v35);
  *v38.f32 = vcvt_s32_f32(*v39.i8);
  v36 = v38.i32[1];
  v37 = v38.i32[0];
  v38.i16[1] = v38.i16[2];
  v38.i16[2] = *&v39.i32[2];
  *v39.i8 = vneg_s16(*v38.f32);
  v40 = 8 * v36 * v37 * *&v39.i32[2];
  LOWORD(v41) = v39.i16[1];
  if (v39.i16[1] >= v36)
  {
    v44 = 0;
  }

  else
  {
    v42 = v39.i16[2];
    v43 = v39.i16[0];
    v44 = 0;
    if (v39.i16[2] < *&v39.i32[2] && v37 > v39.i16[0])
    {
      v46 = v32.f32[0];
      v39.i32[0] = v32.i32[1];
      v47 = v32.f32[1];
      v48 = v32.f32[2];
      v49 = v37 - v43;
      rep = v2.__d_.__rep_;
      v64 = 8 * v36 * v37 * *&v39.i32[2];
      v65 = v37 - v43;
      v66 = v43;
      v67 = *&v39.i32[2];
      v61 = v39.i16[2];
      v62 = v36;
      do
      {
        LOWORD(v50) = v42;
        while (2)
        {
          v51 = (v49 + v44);
          do
          {
            v32.i16[0] = v43;
            v32.i16[1] = v41;
            v32.i16[2] = v50;
            v70 = *v32.f32;
            if ((sub_24611F3A4((a1 + 96), **(a1 + 320), *(a1 + 408), &v70, *(a1 + 637), v69, v68, v15, v32, v39, v38, v31, v20, v25, v30) & 0x80000000) != 0)
            {
              if (qword_27EE3F660 != -1)
              {
                dispatch_once(&qword_27EE3F660, &unk_2858EC518);
              }

              v56 = qword_27EE3F658;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::allocateAllVoxelBlocksInBoundingBox()");
                v60 = v82 >= 0 ? __p : *__p;
                *buf = 136316162;
                *&buf[4] = v60;
                v72 = 1026;
                v73 = 760;
                v74 = 1026;
                LODWORD(v75) = v43;
                WORD2(v75) = 1026;
                *(&v75 + 6) = v41;
                WORD5(v75) = 1026;
                HIDWORD(v75) = v50;
                _os_log_error_impl(&dword_2460CF000, v56, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to allocate voxel block at position {%{public}d, %{public}d, %{public}d}", buf, 0x24u);
                if (v82 < 0)
                {
                  operator delete(*__p);
                }
              }

              if (qword_27EE3F660 != -1)
              {
                dispatch_once(&qword_27EE3F660, &unk_2858EC518);
              }

              v55 = qword_27EE3F658;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::allocateAllVoxelBlocksInBoundingBox()");
                v57 = v82 >= 0 ? __p : *__p;
                *buf = 136316418;
                *&buf[4] = v57;
                v72 = 1026;
                v73 = 767;
                v74 = 1026;
                LODWORD(v75) = v64;
                WORD2(v75) = 2050;
                *(&v75 + 6) = v46;
                HIWORD(v75) = 2050;
                v76 = v47;
                v77 = 2050;
                v78 = v48;
                _os_log_impl(&dword_2460CF000, v55, OS_LOG_TYPE_DEFAULT, "%s:%{public}d VoxelBlockPreallocation is enabled, ensure the voxelHashingCapacity is set to %{public}u to fill the bounding box of extents {%{public}f, %{public}f, %{public}f}", buf, 0x36u);
                if (v82 < 0)
                {
                  operator delete(*__p);
                }
              }

              goto LABEL_35;
            }

            ++v44;
            ++v43;
          }

          while (v51 != v44);
          v50 = (v50 + 1);
          v43 = v66;
          v49 = v65;
          if (v50 < v67)
          {
            continue;
          }

          break;
        }

        v41 = (v41 + 1);
        v42 = v61;
        v2.__d_.__rep_ = rep;
        v40 = v64;
      }

      while (v41 < v62);
    }
  }

  if (v44 == v40)
  {
    v52.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v53 = qword_27EE3F658;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::allocateAllVoxelBlocksInBoundingBox()");
      if (v82 >= 0)
      {
        v58 = __p;
      }

      else
      {
        v58 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = v58;
      v72 = 1026;
      v73 = 786;
      v74 = 2050;
      *&v75 = (((v52.__d_.__rep_ - v2.__d_.__rep_) / 1000) / 1000.0);
      _os_log_debug_impl(&dword_2460CF000, v53, OS_LOG_TYPE_DEBUG, "%s:%{public}d VoxelBlockPreallocation took %{public}f ms", buf, 0x1Cu);
      if (v82 < 0)
      {
        operator delete(*__p);
      }
    }

    return 1;
  }

  else
  {
    if (qword_27EE3F660 != -1)
    {
      dispatch_once(&qword_27EE3F660, &unk_2858EC518);
    }

    v55 = qword_27EE3F658;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelIntegratorGPU::allocateAllVoxelBlocksInBoundingBox()");
      v59 = (SBYTE3(v75) & 0x80u) == 0 ? buf : *buf;
      *__p = 136315394;
      *&__p[4] = v59;
      v80 = 1026;
      v81 = 779;
      _os_log_error_impl(&dword_2460CF000, v55, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to pre-allocate all the voxel blocks in the bounding box", __p, 0x12u);
      if (SBYTE3(v75) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_35:

    return 0;
  }
}

void sub_2461237A0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27EE3F718);
  MEMORY[0x24C1995D0](v2, v1);
  _Unwind_Resume(a1);
}

void *sub_2461237E0(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;

    MEMORY[0x24C1995D0](v3, 0xE0C40BC9ECFC2);
    return v4;
  }

  return result;
}

void *sub_246123840(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x24C1995D0](v1, 0xE0C40BC9ECFC2);
    return v2;
  }

  return result;
}

void sub_246123898(uint64_t a1)
{
  sub_2461238D0(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_2461238D0(uint64_t a1)
{
  v2 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v2)
  {

    MEMORY[0x24C1995D0](v2, 0xE0C40BC9ECFC2);
  }

  v3 = *(a1 + 416);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_246123A08(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  kdebug_trace();
  a6[1] = *a6;
  if (*a2)
  {
    operator new();
  }

  return 0;
}

BOOL sub_246126D24(float **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *v19 = xmmword_24613FAA0;
  v11 = a1;
  v12 = 4;
  v2 = sub_246126F24(v19, &v11);
  v3 = 0;
  v4 = 2.0;
  v5 = 0.0;
  if (v2 && (a1[6] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(a1 + 13) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (a1[7] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v5 = *&v19[4];
    v3 = *&v19[8];
    v4 = (*v19 + *v19) + 0.0;
  }

  LODWORD(v11) = 0;
  HIDWORD(v11) = v3.i32[1];
  v13 = 0;
  v15 = v3.i32[0];
  v16 = -v5;
  v12 = vneg_f32(v3);
  v14 = v5;
  v17 = 0;
  *(&v8 + 4) = vrev64_s32(vmul_f32(v3, COERCE_FLOAT32X2_T(--2.00000143)));
  v6 = vdup_lane_s32(v3, 0);
  v6.f32[0] = v5;
  *(&v9 + 4) = vadd_f32(v6, v6);
  *&v8 = v4;
  HIDWORD(v8) = vmuls_lane_f32(-2.0, v3, 1);
  *&v9 = v4;
  *(&v9 + 3) = v5 * -2.0;
  v10 = v4;
  v18[0] = &v8;
  v18[1] = &v11;
  memset(v19, 0, sizeof(v19));
  sub_246103208(v19, v18);
  v8 = *v19;
  v9 = *&v19[16];
  *&v8 = *v19 + 1.0;
  *&v9 = *&v19[16] + 1.0;
  v10 = *&v19[32] + 1.0;
  v18[0] = &v8;
  v11 = v18;
  v12 = &v8;
  memset(&v19[4], 0, 32);
  v20 = 0.0;
  sub_2461272BC(&v19[4], &v11);
  return fabsf(((*&v19[4] + -1.0) + (*&v19[20] + -1.0)) + (v20 + -1.0)) < 0.1;
}

uint64_t sub_246126F24(float *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = 0x27EE3F000uLL;
  if ((atomic_load_explicit(&qword_27EE3F670, memory_order_acquire) & 1) == 0)
  {
    v42 = __cxa_guard_acquire(&qword_27EE3F670);
    v4 = 0x27EE3F000uLL;
    if (v42)
    {
      dword_27EE3F668 = 968164595;
      __cxa_guard_release(&qword_27EE3F670);
      v4 = 0x27EE3F000;
    }
  }

  v5 = *(v4 + 1640);
  v43 = a2;
  v44[0] = &v43;
  v44[1] = a2;
  v45 = 0u;
  v46 = 0u;
  v47 = 0.0;
  sub_246127468(&v45, v44);
  v6 = fabsf(*&v45 + -1.0);
  v7 = fabsf(*(&v45 + 1));
  if (v6 < v7)
  {
    v6 = v7;
  }

  v8 = fabsf(*(&v45 + 2));
  if (v6 < v8)
  {
    v6 = v8;
  }

  v9 = fabsf(*(&v45 + 3));
  if (v6 < v9)
  {
    v6 = v9;
  }

  v10 = fabsf(*&v46 + -1.0);
  if (v6 < v10)
  {
    v6 = v10;
  }

  v11 = fabsf(*(&v46 + 1));
  if (v6 < v11)
  {
    v6 = v11;
  }

  v12 = fabsf(*(&v46 + 2));
  if (v6 < v12)
  {
    v6 = v12;
  }

  v13 = fabsf(*(&v46 + 3));
  if (v6 < v13)
  {
    v6 = v13;
  }

  v14 = fabsf(v47 + -1.0);
  if (v6 < v14)
  {
    v6 = v14;
  }

  if (v6 > v5)
  {
    return 0;
  }

  v15 = *a2;
  v16 = *(a2 + 8);
  v18 = **a2;
  v17 = *(*a2 + 4);
  v19 = *(*a2 + 8);
  v20 = (v16 - 3);
  v21 = (*a2 + v20 * 4);
  v22 = v21[3];
  v23 = v21[4];
  v21 += 3;
  v24 = &v21[v20];
  if (fabsf(((v19 * ((v24[4] * v22) - (v23 * v24[3]))) + ((v18 * ((v24[5] * v23) - (v21[2] * v24[4]))) - (v17 * ((v24[5] * v22) - (v21[2] * v24[3]))))) + -1.0) > v5)
  {
    return 0;
  }

  v25 = v15[(v16 + 1)];
  v26 = 2 * v16;
  v27 = v15[(2 * v16 + 2)];
  v28 = ((v18 + 1.0) + v25) + v27;
  v29 = ((v18 + 1.0) - v25) - v27;
  v30 = 1.0 - v18;
  v31 = ((1.0 - v18) + v25) - v27;
  v32 = (v30 - v25) + v27;
  if (v29 <= v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = v29;
  }

  if (v31 <= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v31;
  }

  if (v32 <= v34)
  {
    v40 = v29 > v28;
    if (v31 > v33)
    {
      v40 = 2;
    }

    v36 = sqrtf(v34);
    v37 = -v36;
    if (v40 == 2)
    {
      v36 = (v15[v26] - v19) / v37;
      *a1 = v36;
      v41 = (v15[v16] + v15[1]) / v37;
      a1[1] = v41;
      a1[2] = v37;
      v35 = (v15[v26 | 1] + v15[(v16 + 2)]) / v37;
      v38 = v37;
    }

    else
    {
      if (v40 == 1)
      {
        v36 = (v15[(v16 + 2)] - v15[v26 | 1]) / v37;
        *a1 = v36;
        a1[1] = v37;
        v38 = (v15[v16] + v15[1]) / v37;
        a1[2] = v38;
        v35 = (v15[2] + v15[v26]) / v37;
        goto LABEL_37;
      }

      *a1 = v36;
      v41 = (v15[v26 | 1] - v15[(v16 + 2)]) / v37;
      a1[1] = v41;
      v38 = (v15[2] - v15[v26]) / v37;
      a1[2] = v38;
      v35 = (v15[v16] - v15[1]) / v37;
    }

    v37 = v41;
    goto LABEL_37;
  }

  v35 = -sqrtf(v32);
  v36 = (v17 - v15[v16]) / v35;
  *a1 = v36;
  v37 = (v15[2] + v15[v26]) / v35;
  a1[1] = v37;
  v38 = (v15[v26 | 1] + v15[(v16 + 2)]) / v35;
LABEL_37:
  *a1 = v36 * 0.5;
  a1[1] = v37 * 0.5;
  a1[2] = v38 * 0.5;
  a1[3] = v35 * 0.5;
  return 1;
}

__n64 sub_2461272BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_2461272BC(&v7);
    result.n64_u64[0] = v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  else
  {
    v4 = **a2;
    result.n64_u32[1] = 0;
    *a1 = (((v4[1] * v3[1]) + (*v4 * *v3)) + 0.0) + (v4[2] * v3[2]);
    *(a1 + 4) = (((v4[4] * v3[1]) + (v4[3] * *v3)) + 0.0) + (v4[5] * v3[2]);
    *(a1 + 8) = (((v4[7] * v3[1]) + (v4[6] * *v3)) + 0.0) + (v4[8] * v3[2]);
    *(a1 + 12) = (((v4[1] * v3[4]) + (*v4 * v3[3])) + 0.0) + (v4[2] * v3[5]);
    *(a1 + 16) = (((v4[4] * v3[4]) + (v4[3] * v3[3])) + 0.0) + (v4[5] * v3[5]);
    *(a1 + 20) = (((v4[7] * v3[4]) + (v4[6] * v3[3])) + 0.0) + (v4[8] * v3[5]);
    *(a1 + 24) = (((v4[1] * v3[7]) + (*v4 * v3[6])) + 0.0) + (v4[2] * v3[8]);
    *(a1 + 28) = (((v4[4] * v3[7]) + (v4[3] * v3[6])) + 0.0) + (v4[5] * v3[8]);
    result.n64_f32[0] = (((v4[7] * v3[7]) + (v4[6] * v3[6])) + 0.0) + (v4[8] * v3[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

__n64 sub_246127468(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *v3;
  if (*v3 - 4 * *(v3 + 12) == a1)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_246127468(&v17);
    result.n64_u64[0] = v17;
    v16 = v18;
    *a1 = v17;
    *(a1 + 16) = v16;
    *(a1 + 32) = v19;
  }

  else
  {
    v5 = **a2;
    v6 = *(v3 + 8);
    v7 = *v5;
    v8 = v5[2];
    result.n64_u32[1] = 0;
    *a1 = (((*(*v5 + 4) * v4[1]) + (**v5 * *v4)) + 0.0) + (*(*v5 + 8) * v4[2]);
    v9 = &v7[v8];
    v10 = v8 + 2;
    *(a1 + 4) = (((v9[1] * v4[1]) + (*v9 * *v4)) + 0.0) + (v7[(v8 + 2)] * v4[2]);
    v11 = 2 * v8;
    v12 = &v7[(2 * v8)];
    v11 += 2;
    *(a1 + 8) = (((v12[1] * v4[1]) + (*v12 * *v4)) + 0.0) + (v7[v11] * v4[2]);
    v13 = &v4[v6];
    *(a1 + 12) = (((v7[1] * v13[1]) + (*v7 * *v13)) + 0.0) + (v7[2] * v4[(v6 + 2)]);
    *(a1 + 16) = (((v9[1] * v13[1]) + (*v9 * *v13)) + 0.0) + (v7[v10] * v4[(v6 + 2)]);
    *(a1 + 20) = (((v12[1] * v13[1]) + (*v12 * *v13)) + 0.0) + (v7[v11] * v4[(v6 + 2)]);
    LODWORD(v6) = 2 * v6;
    v14 = &v4[v6];
    LODWORD(v6) = v6 + 2;
    *(a1 + 24) = (((v7[1] * v14[1]) + (*v7 * *v14)) + 0.0) + (v7[2] * v4[v6]);
    *(a1 + 28) = (((v9[1] * v14[1]) + (*v9 * *v14)) + 0.0) + (v7[v10] * v4[v6]);
    result.n64_f32[0] = (((v12[1] * v14[1]) + (*v12 * *v14)) + 0.0) + (v7[v11] * v4[v6]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

__n128 sub_246127654(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_246127678(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_246127690(uint64_t a1, uint64_t a2)
{
  v2 = 500 * a2;
  v3 = 500 * a2 + 500;
  if (v3 >= **(a1 + 40))
  {
    v3 = **(a1 + 40);
  }

  v4 = v3 - v2;
  if (v3 > v2)
  {
    v6 = **(a1 + 48);
    v7 = 2000 * a2;
    v8 = 24000 * a2;
    do
    {
      v9 = *(*(*(a1 + 40) + 8) + v8);
      v9.i32[3] = -1.0;
      v10 = vmulq_f32(*(*(a1 + 56) + 112), v9);
      *(v6 + 4 * v7 + 12) = vaddv_f32(vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)));
      v6 = **(a1 + 48);
      *(*(*(*(a1 + 32) + 8) + 40) + v7) = 1.0 / (expf((0.02 - *(v6 + 4 * v7 + 12)) * 500.0) + 1.0);
      v7 += 4;
      v8 += 48;
      --v4;
    }

    while (v4);
  }
}

void sub_2461277A0(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v2 = 500 * a2;
  if (500 * a2 + 500 >= **(a1 + 40))
  {
    v3 = **(a1 + 40);
  }

  else
  {
    v3 = 500 * a2 + 500;
  }

  if (v2 < v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v8 = **(a1 + 48);
      v9 = *(v8 + 16 * v2);
      if (*(&v9 + 3) < -0.025)
      {
        *&v7 = 0;
        DWORD2(v7) = 0;
        HIDWORD(v7) = HIDWORD(v9);
        *(v8 + 16 * v2) = v7;
      }

      else
      {
        v37 = v6;
        sub_246118B04(*(a1 + 56), (*(*(a1 + 40) + 8) + 48 * v2), &v38);
        v5 = v38;
        if (v38 != v39)
        {
          v12 = 0;
          v13 = 0.0;
          v14 = v38;
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = *v14;
            v14 += 4;
            v18 = *(*(a1 + 40) + 8) + 48 * v17;
            _Q0 = *(v18 + 16);
            _S1 = HIDWORD(*(v18 + 16));
            v15 = vmla_n_f32(v15, *_Q0.f32, _Q0.f32[0]);
            _S2 = COERCE_FLOAT(*(v18 + 24));
            __asm { FMLA            S12, S1, V0.S[1] }

            v16 = vmla_laneq_f32(v16, *_Q0.f32, _Q0, 2);
            __asm { FMLA            S10, S2, V0.S[2] }

            v12 = vadd_f32(*_Q0.f32, v12);
            v13 = _S2 + v13;
          }

          while (v14 != v39);
          if (v39 - v38 >= 0)
          {
            operator new();
          }

          sub_2460D368C();
        }

        v11.f32[0] = 0.0 / 0.0;
        *_Q3.f32 = vdiv_f32(0, vdup_lane_s32(0, 0));
        v28 = vmls_lane_f32(*_Q3.f32, *_Q3.f32, v11, 0).u32[0];
        _S1 = _Q3.i32[1];
        v30 = _Q3;
        v30.f32[2] = 0.0 / 0.0;
        __asm { FMLS            S6, S1, V3.S[1] }

        v32 = vmulq_f32(v30, *(*(a1 + 64) + 32));
        *v33.f32 = vmls_lane_f32(*_Q3.f32, *_Q3.f32, *_Q3.f32, 0);
        v33.i64[1] = __PAIR64__(v36, v28);
        *(**(a1 + 48) + 16 * v2) = 1.0 - (v32.f32[2] + vaddv_f32(*v32.f32));
        v34 = v33;
        v34.i32[1] = _S6;
        v34.f32[2] = (0.0 / 0.0) - (v11.f32[0] * v11.f32[0]);
        v35 = vmulq_f32(v34, v34);
        *(**(a1 + 48) + 16 * v2 + 4) = sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
        *(**(a1 + 48) + 16 * v2 + 8) = 0;
        v6 = v37;
      }

      ++v2;
    }

    while (v2 != v3);
    if (v5)
    {

      operator delete(v5);
    }
  }
}

float32x4_t sub_246127AC4(uint64_t a1, uint64_t a2)
{
  v2 = 500 * a2;
  v3 = 500 * a2 + 500;
  if (v3 >= **(a1 + 64))
  {
    v3 = **(a1 + 64);
  }

  if (v2 < v3)
  {
    do
    {
      v4 = **(a1 + 72);
      result = *(v4 + 16 * v2);
      v6 = vdivq_f32(vsubq_f32(result, *(a1 + 32)), vsubq_f32(*(a1 + 48), *(a1 + 32)));
      v6.i32[3] = result.i32[3];
      *(v4 + 16 * v2++) = v6;
    }

    while (v3 != v2);
  }

  return result;
}

void sub_246127B20(uint64_t a1, uint64_t a2)
{
  v2 = 500 * a2;
  v3 = 500 * a2 + 500;
  v4 = **(a1 + 32);
  if ((*(*(a1 + 32) + 8) - v4) >> 4 < v3)
  {
    v3 = (*(*(a1 + 32) + 8) - v4) >> 4;
  }

  v5 = v3 - v2;
  if (v3 > v2)
  {
    v6 = (**(a1 + 40) + 2000 * a2);
    v7 = (v4 + 8000 * a2);
    do
    {
      v8 = v7->f32[3];
      v9 = expf((0.035 - v8) * 500.0) + 1.0;
      v10 = (v8 + 0.025) * 500.0;
      v11 = 1.0 / v9;
      v12 = expf(v10);
      v13 = *v7++;
      v14 = vmulq_f32(v13, xmmword_24613FCA0);
      *v6++ = v11 + ((v14.f32[2] + vaddv_f32(*v14.f32)) * (1.0 - ((1.0 / (v12 + 1.0)) + v11)));
      --v5;
    }

    while (v5);
  }
}

void *sub_246127C38(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_2460D368C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_246102CFC(a1, &v10);
}

os_log_t sub_2461281F8()
{
  result = os_log_create("com.apple.CoreOCModules", "General");
  qword_27EE3F678 = result;
  return result;
}

uint64_t sub_246128228(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  v9 = 0uLL;
  *(a1 + 128) = 0u;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if ((atomic_load_explicit(&qword_27EE3F718, memory_order_acquire) & 1) == 0)
  {
    v11 = __cxa_guard_acquire(&qword_27EE3F718);
    v9 = 0uLL;
    if (v11)
    {
      qword_27EE3F710 = sub_24613CEFC();
      __cxa_atexit(sub_24613D0CC, &qword_27EE3F710, &dword_2460CF000);
      __cxa_guard_release(&qword_27EE3F718);
      v9 = 0uLL;
    }
  }

  *(a1 + 192) = qword_27EE3F710;
  *(a1 + 200) = v9;
  *(a1 + 216) = v9;
  *(a1 + 232) = v9;
  sub_246103AE8(a1 + 248);
  *(a1 + 480) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = xmmword_24613FAF0;
  *(a1 + 552) = xmmword_24613FB00;
  *(a1 + 568) = xmmword_24613FB10;
  *(a1 + 584) = xmmword_24613FB20;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0x40000000;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 3;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 10;
  *(a1 + 728) = 1065353216;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  return a1;
}

void sub_246128390(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27EE3F718);
  v4 = v1[19];
  if (v4)
  {
    v1[20] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[17] = v5;
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_246128410(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (a1[4] >= v4)
  {
    return 0;
  }

  v5 = *(a1 + 7);
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v5 >= v6)
  {
    return 0;
  }

  *(a1 + 22) = a2;
  *(a1 + 23) = a3;
  v7 = (a1 + 48);
  if (!*(a1 + 24))
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    if (a2)
    {
      if ((a1[120] & 1) == 0)
      {
        result = 0;
        v10 = *(a1 + 31);
        if (v10 <= 1.0 && v5 < v6 && v10 >= 0.0)
        {
          result = 0;
          v11 = *(a1 + 134);
          if (v11 >= 0.0 && v11 <= 1.0)
          {
            v12 = *(a1 + 135);
            if (v12 <= 0.0)
            {
              return 0;
            }

            v13 = *(a1 + 136);
            if ((v12 + 0.1) > v13)
            {
              return 0;
            }

            v14 = *(a1 + 137);
            if (v12 >= v14 || v14 > ((v12 + v13) * 0.5) || *(a1 + 138) < 1.1)
            {
              return 0;
            }

            result = 0;
            if (*(a1 + 139) >= 0.0)
            {
              v15 = *(a1 + 140);
              if (v15 >= 0.0 && v15 <= 1.0)
              {
                v143 = v7;
                if (*(a1 + 141) <= 0.0)
                {
                  return 0;
                }

                v16 = a1;
                v17 = *a1;
                *(v16 + 50) = a2;
                *(v16 + 51) = a3;
                v16[97] = v4;
                *(v16 + 98) = v5;
                *(v16 + 99) = v6;
                *(v16 + 124) = v10;
                *(v16 + 96) = v17;
                result = sub_246103B9C((v16 + 62), v4);
                if (result)
                {
                  if (*(v16 + 284) == 1)
                  {
                    v18 = *(v16 + 34);
                  }

                  else
                  {
                    v18 = 0;
                  }

                  v19 = *(v16 + 38);
                  *(v16 + 38) = v18;

                  if (!*(v16 + 38))
                  {
                    return 0;
                  }

                  result = 0;
                  v20 = v16[96];
                  if (v20 <= 1)
                  {
                    if (v20)
                    {
                      if (v20 != 1)
                      {
                        return result;
                      }

                      v63 = 48 * v16[97];
                      v64 = **(v16 + 24);
                      v66 = objc_msgSend_newBufferWithLength_options_(v64, v65, v63, 0);
                      v67 = *(v16 + 39);
                      *(v16 + 39) = v66;

                      v69 = *(v16 + 39);
                      if (v69)
                      {
                        objc_msgSend_setLabel_(v69, v68, @"SurfaceVoxelDataBuffer");
                        v70 = (4 * v16[97]);
                        v71 = **(v16 + 24);
                        v73 = objc_msgSend_newBufferWithLength_options_(v71, v72, v70, 0);
                        v74 = *(v16 + 41);
                        *(v16 + 41) = v73;

                        v76 = *(v16 + 41);
                        if (v76)
                        {
                          objc_msgSend_setLabel_(v76, v75, @"SurfaceVoxelVisibilityBuffer");
                          v77 = 4 * v16[97];
                          v78 = **(v16 + 24);
                          v80 = objc_msgSend_newBufferWithLength_options_(v78, v79, v77, 0);
                          v81 = *(v16 + 75);
                          *(v16 + 75) = v80;

                          v83 = *(v16 + 75);
                          if (v83)
                          {
                            objc_msgSend_setLabel_(v83, v82, @"SurfaceVoxelWCCountBuffer");
                          }
                        }
                      }

                      goto LABEL_58;
                    }

                    v137 = (v16[97] << 7);
                    v92 = **(v16 + 24);
                    v94 = objc_msgSend_newBufferWithLength_options_(v92, v138, v137, 0);
                  }

                  else
                  {
                    if (v20 != 2)
                    {
                      if (v20 == 3)
                      {
                        v95 = 48 * v16[97];
                        v96 = **(v16 + 24);
                        v98 = objc_msgSend_newBufferWithLength_options_(v96, v97, v95, 0);
                        v99 = *(v16 + 39);
                        *(v16 + 39) = v98;

                        v101 = *(v16 + 39);
                        if (v101)
                        {
                          objc_msgSend_setLabel_(v101, v100, @"SurfaceVoxelDataBuffer");
                          v102 = (20 * v16[97]);
                          v103 = **(v16 + 24);
                          v105 = objc_msgSend_newBufferWithLength_options_(v103, v104, v102, 0);
                          v106 = *(v16 + 41);
                          *(v16 + 41) = v105;

                          v108 = *(v16 + 41);
                          if (v108)
                          {
                            objc_msgSend_setLabel_(v108, v107, @"SurfaceVoxelVisibilityBuffer");
                            v109 = v16[97];
                            v110 = **(v16 + 24);
                            v112 = objc_msgSend_newBufferWithLength_options_(v110, v111, v109, 0);
                            v113 = *(v16 + 77);
                            *(v16 + 77) = v112;

                            v115 = *(v16 + 77);
                            if (v115)
                            {
                              objc_msgSend_setLabel_(v115, v114, @"SurfaceVoxelFisherCountBuffer");
                              v116 = 4 * v16[97];
                              v117 = **(v16 + 24);
                              v119 = objc_msgSend_newBufferWithLength_options_(v117, v118, v116, 0);
                              v120 = *(v16 + 78);
                              *(v16 + 78) = v119;

                              v122 = *(v16 + 78);
                              if (v122)
                              {
                                objc_msgSend_setLabel_(v122, v121, @"SurfaceVoxelFisherKappaBuffer");
                                v123 = 4 * v16[97];
                                v124 = **(v16 + 24);
                                v126 = objc_msgSend_newBufferWithLength_options_(v124, v125, v123, 0);
                                v127 = *(v16 + 80);
                                *(v16 + 80) = v126;

                                v129 = *(v16 + 80);
                                if (v129)
                                {
                                  objc_msgSend_setLabel_(v129, v128, @"SurfaceVoxelFisherPastViewDirCountBuffer");
                                  v130 = 16 * v16[97];
                                  v131 = **(v16 + 24);
                                  v133 = objc_msgSend_newBufferWithLength_options_(v131, v132, v130, 0);
                                  v134 = *(v16 + 79);
                                  *(v16 + 79) = v133;

                                  v136 = *(v16 + 79);
                                  if (v136)
                                  {
                                    objc_msgSend_setLabel_(v136, v135, @"SurfaceVoxelFisherPastViewDirBuffer");
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        if (v20 != 4)
                        {
                          return result;
                        }

                        v21 = 48 * v16[97];
                        v22 = **(v16 + 24);
                        v24 = objc_msgSend_newBufferWithLength_options_(v22, v23, v21, 0);
                        v25 = *(v16 + 39);
                        *(v16 + 39) = v24;

                        v27 = *(v16 + 39);
                        if (v27)
                        {
                          objc_msgSend_setLabel_(v27, v26, @"SurfaceVoxelDataBuffer");
                          v28 = (v16[97] << 9);
                          v29 = **(v16 + 24);
                          v31 = objc_msgSend_newBufferWithLength_options_(v29, v30, v28, 0);
                          v32 = *(v16 + 41);
                          *(v16 + 41) = v31;

                          v34 = *(v16 + 41);
                          if (v34)
                          {
                            objc_msgSend_setLabel_(v34, v33, @"SurfaceVoxelVisibilityBuffer");
                            v35 = v16[97];
                            v36 = **(v16 + 24);
                            v38 = objc_msgSend_newBufferWithLength_options_(v36, v37, v35, 0);
                            v39 = *(v16 + 81);
                            *(v16 + 81) = v38;

                            v41 = *(v16 + 81);
                            if (v41)
                            {
                              objc_msgSend_setLabel_(v41, v40, @"SurfaceVoxelGOMDCountBuffer");
                              v42 = 4 * v16[97];
                              v43 = **(v16 + 24);
                              v45 = objc_msgSend_newBufferWithLength_options_(v43, v44, v42, 0);
                              v46 = *(v16 + 82);
                              *(v16 + 82) = v45;

                              v48 = *(v16 + 82);
                              if (v48)
                              {
                                objc_msgSend_setLabel_(v48, v47, @"SurfaceVoxelGOMDCameraNumBuffer");
                                v49 = v16[97] << 9;
                                v50 = **(v16 + 24);
                                v52 = objc_msgSend_newBufferWithLength_options_(v50, v51, v49, 0);
                                v53 = *(v16 + 83);
                                *(v16 + 83) = v52;

                                v55 = *(v16 + 83);
                                if (v55)
                                {
                                  objc_msgSend_setLabel_(v55, v54, @"SurfaceVoxelGOMDGoodnessBuffer");
                                  v56 = v16[97] << 11;
                                  v57 = **(v16 + 24);
                                  v59 = objc_msgSend_newBufferWithLength_options_(v57, v58, v56, 0);
                                  v60 = *(v16 + 84);
                                  *(v16 + 84) = v59;

                                  v62 = *(v16 + 84);
                                  if (v62)
                                  {
                                    objc_msgSend_setLabel_(v62, v61, @"SurfaceVoxelGOMDViewDirBuffer");
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_58;
                    }

                    v84 = 48 * v16[97];
                    v85 = **(v16 + 24);
                    v87 = objc_msgSend_newBufferWithLength_options_(v85, v86, v84, 0);
                    v88 = *(v16 + 39);
                    *(v16 + 39) = v87;

                    v90 = *(v16 + 39);
                    if (!v90)
                    {
LABEL_58:
                      result = sub_2461089AC(v143);
                      if (result)
                      {
                        result = sub_246108C38(v143, v142);
                        if (result)
                        {
                          result = sub_24610944C(v143);
                          if (result)
                          {
                            result = sub_246109500(v143);
                            if (result)
                            {
                              if (*(*v143 + 24) != 1 || (result = sub_2461097E4(v143), result))
                              {
                                if (v16[96] != 1 || (result = sub_2461099DC(v143), result))
                                {
                                  result = 1;
                                  *(v16 + 480) = 1;
                                }
                              }
                            }
                          }
                        }
                      }

                      return result;
                    }

                    objc_msgSend_setLabel_(v90, v89, @"SurfaceVoxelDataBuffer");
                    v91 = (v16[97] << 6);
                    v92 = **(v16 + 24);
                    v94 = objc_msgSend_newBufferWithLength_options_(v92, v93, v91, 0);
                  }

                  v139 = *(v16 + 41);
                  *(v16 + 41) = v94;

                  v141 = *(v16 + 41);
                  if (v141)
                  {
                    objc_msgSend_setLabel_(v141, v140, @"SurfaceVoxelVisibilityBuffer");
                  }

                  goto LABEL_58;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_246128BC0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 80))
  {
    operator new();
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = sub_2461296E0;
  v20 = sub_246129704;
  v21 = &unk_24615427A;
  v6 = *a4;
  v5 = a4[1];
  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_14;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_24612971C;
  block[3] = &unk_2858EC560;
  block[5] = a2;
  block[6] = 50;
  v12 = 0;
  v13 = 0;
  __p = 0;
  v14 = a3;
  v15 = a4;
  block[4] = &v16;
  dispatch_apply(ceilf(0 / 50.0), 0, block);
  v7 = v17;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v9 = v7[6];
  v8 = v7[7];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_14:
    sub_2460D368C();
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v16, 8);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_24612903C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a23, 8);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
    if (!v30)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_5;
  }

  operator delete(v30);
  _Unwind_Resume(a1);
}

void sub_2461290A0(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 736) = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 6);
  prime = *(a2 + 80);
  *__p = 0u;
  *v31 = 0u;
  *&v31[16] = prime;
  v32 = 1.0;
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_2460D3E08(__p, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v7 = __p[1];
    v8 = prime >= __p[1];
    if (prime > __p[1])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v9 = vcvtps_u32_f32(*&v31[8] / v32);
    if (v7 < 3 || (v10 = vcnt_s8(v7), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      v9 = std::__next_prime(v9);
    }

    else
    {
      v11 = 1 << -__clz(v9 - 1);
      if (v9 >= 2)
      {
        v9 = v11;
      }
    }

    if (prime <= v9)
    {
      prime = v9;
    }

    if (prime < v7)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (*(a2 + 80))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(*a3 + 4 * v13);
      v29 = *(*(a2 + 88) + v12);
      v33 = &v29;
      sub_246129348(__p, &v29)[2].i32[0] = v14;
      ++v13;
      v12 += 48;
    }

    while (v13 < *(a2 + 80));
  }

  v15 = *(a1 + 688);
  v16 = __p[0];
  v17 = __p[1];
  *(a1 + 688) = __p[0];
  v18 = *(a1 + 696);
  *(a1 + 696) = v17;
  __p[0] = v15;
  __p[1] = v18;
  v19 = *(a1 + 704);
  v20 = *v31;
  *(a1 + 704) = *v31;
  v21 = v19;
  *v31 = v19;
  v22 = *&v31[8];
  v23 = *(a1 + 712);
  *(a1 + 712) = *&v31[8];
  *&v31[8] = v23;
  v24 = *(a1 + 728);
  *(a1 + 728) = v32;
  v32 = v24;
  if (v22)
  {
    v25 = *(v20 + 8);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v25 >= v17)
      {
        v25 %= v17;
      }
    }

    else
    {
      v25 &= v17 - 1;
    }

    v16[v25] = a1 + 704;
    v21 = *v31;
  }

  if (v23)
  {
    v26 = v21[1];
    if ((__p[1] & (__p[1] - 1)) != 0)
    {
      if (v26 >= __p[1])
      {
        v26 %= __p[1];
      }
    }

    else
    {
      v26 &= __p[1] - 1;
    }

    *(v15 + v26) = v31;
    v21 = *v31;
  }

  if (v21)
  {
    v27 = v21;
    do
    {
      v28 = *v27;
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
    v15 = __p[0];
  }

  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }
}

void sub_246129320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_246129694(va);
  _Unwind_Resume(a1);
}

void sub_246129334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_246129694(va);
  _Unwind_Resume(a1);
}

int32x4_t *sub_246129348(void *a1, int32x2_t *a2)
{
  v2 = vmull_s32(*a2, 0x12740A50466F45DLL);
  v3 = (v2.i64[0] ^ (83492791 * *&a2[1]) ^ v2.i64[1]) % a1[4];
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v3;
    if (v3 >= *&v4)
    {
      v7 = v3 % *&v4;
    }
  }

  else
  {
    v7 = (*&v4 - 1) & v3;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  v10 = *a2->i8;
  if (v6 < 2)
  {
    while (1)
    {
      v12 = v9->i64[1];
      if (v12 == v3)
      {
        v11 = vceqq_s32(v9[1], v10);
        v11.i32[3] = v11.i32[2];
        if ((vminvq_u32(v11) & 0x80000000) != 0)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v4 - 1)) != v7)
      {
        goto LABEL_22;
      }

      v9 = v9->i64[0];
      if (!v9)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v14 = v9->u64[1];
    if (v14 == v3)
    {
      break;
    }

    if (v14 >= *&v4)
    {
      v14 %= *&v4;
    }

    if (v14 != v7)
    {
      goto LABEL_22;
    }

LABEL_17:
    v9 = v9->i64[0];
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  v13 = vceqq_s32(v9[1], v10);
  v13.i32[3] = v13.i32[2];
  if ((vminvq_u32(v13) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_246129694(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

__n128 sub_2461296E0(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_246129704(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_24612971C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if ((*(result + 64) - *(result + 56)) >> 3 < v4)
  {
    v4 = (*(result + 64) - *(result + 56)) >> 3;
  }

  v20 = v4;
  if (v3 < v4)
  {
    v5 = *(result + 40);
    v22 = result;
    do
    {
      v6 = *(result + 56);
      v21 = v3 + 1;
      if (v3 + 1 >= (*(result + 64) - v6) >> 3)
      {
        v7 = (*(result + 80) + 80);
      }

      else
      {
        v7 = (v6 + 8 * (v3 + 1));
      }

      v8 = *(v6 + 8 * v3);
      v9 = *v7;
      v24 = *v7 - v8;
      if (*v7 > v8)
      {
        v10 = *(v6 + 8 * v3);
        v23 = v10;
        if (v24 >= 2)
        {
          do
          {
            v12 = *(result + 80);
            if (v24 <= *(v5 + 104))
            {
              operator new();
            }

            do
            {
              v13 = v12[5].i64[1];
              v14 = v12[1];
              v15 = v12[2];
              v16 = v12[3];
              v17 = vsubq_f32(vaddq_f32(v12[4], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v14, v12->f32[0] * (*(v13 + 48 * v10) + 0.5)), v15, v12->f32[0] * (HIDWORD(*(v13 + 48 * v10)) + 0.5)), v16, v12->f32[0] * (*(v13 + 48 * v10 + 8) + 0.5))), vaddq_f32(v12[4], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v14, v12->f32[0] * (*(v13 + 48 * v8) + 0.5)), v15, v12->f32[0] * (HIDWORD(*(v13 + 48 * v8)) + 0.5)), v16, v12->f32[0] * (*(v13 + 48 * v8 + 8) + 0.5))));
              v18 = vmulq_f32(v17, v17);
              v19 = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
              if (*(v5 + 104) || v19 < v25)
              {
                operator new();
              }

              ++v8;
            }

            while (v8 != v9);
            sub_2460D3D4C(0);
            result = v22;
            v8 = v23;
            *(*(*(*(v22 + 32) + 8) + 48) + 4 * v10++) = 2143289344;
          }

          while (v10 != v9);
        }

        else
        {
          v11 = *(**(result + 88) + 4 * v8);
          do
          {
            *(*(*(*(result + 32) + 8) + 48) + 4 * v8++) = v11;
          }

          while (v9 != v8);
        }
      }

      v3 = v21;
    }

    while (v21 != v20);
  }

  return result;
}

void sub_24612A2D0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void *sub_24612A2E8(void *result, uint64_t a2)
{
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  v3 = *(a2 + 56);
  v2 = *(a2 + 64);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2460D368C();
  }

  return result;
}

void sub_24612A360(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int32x4_t a6)
{
  v6 = 500 * a2;
  v7 = 500 * a2 + 500;
  v8 = *(a1 + 40);
  if (*(v8 + 80) < v7)
  {
    v7 = *(v8 + 80);
  }

  if (v6 < v7)
  {
    v9 = *(a1 + 32);
    v10 = v9[87];
    v11 = **(a1 + 48);
    if (v10)
    {
      v12 = *(v8 + 88);
      v13 = v9[90];
      v14 = vcnt_s8(v10);
      v14.i16[0] = vaddlv_u8(v14);
      v15 = *&v10 - 1;
      v16 = v9[86];
      while (1)
      {
        v18 = *(v12 + 48 * v6);
        v19 = vmull_s32(*v18.i8, 0x12740A50466F45DLL);
        v20 = (v19.i64[0] ^ (83492791 * *(v12 + 48 * v6 + 8)) ^ v19.i64[1]) % v13;
        if (v14.u32[0] > 1uLL)
        {
          v21 = (v19.i64[0] ^ (83492791 * *(v12 + 48 * v6 + 8)) ^ v19.i64[1]) % v13;
          if (v20 >= *&v10)
          {
            v21 = v20 % *&v10;
          }
        }

        else
        {
          v21 = v15 & v20;
        }

        v22 = *(v16 + 8 * v21);
        if (v22)
        {
          v23 = *v22;
          if (v23)
          {
            if (v14.u32[0] < 2uLL)
            {
              while (1)
              {
                v25 = v23[1];
                if (v20 == v25)
                {
                  v24 = vceqq_s32(*(v23 + 1), v18);
                  v24.i32[3] = v24.i32[2];
                  if ((vminvq_u32(v24) & 0x80000000) != 0)
                  {
                    goto LABEL_6;
                  }
                }

                else if ((v25 & v15) != v21)
                {
                  goto LABEL_27;
                }

                v23 = *v23;
                if (!v23)
                {
                  goto LABEL_27;
                }
              }
            }

            do
            {
              v27 = v23[1];
              if (v20 == v27)
              {
                v26 = vceqq_s32(*(v23 + 1), v18);
                v26.i32[3] = v26.i32[2];
                if ((vminvq_u32(v26) & 0x80000000) != 0)
                {
LABEL_6:
                  v17 = *(v23 + 8);
                  goto LABEL_7;
                }
              }

              else
              {
                if (v27 >= *&v10)
                {
                  v27 %= *&v10;
                }

                if (v27 != v21)
                {
                  break;
                }
              }

              v23 = *v23;
            }

            while (v23);
          }
        }

LABEL_27:
        v28 = 0;
        v29 = v18.i32[2] - 1;
        v30 = v18.i32[0] - 1;
        v31 = v29 + 1;
        v32 = v29 + 2;
        v33 = v18.i32[0];
        v34 = 0.0;
        do
        {
          a6.i32[0] = v30;
          v36 = v18.i32[1] - 1;
          do
          {
            v37 = ((73856093 * v30) ^ (19349669 * v36) ^ (83492791 * (v18.i32[2] - 1))) % v13;
            if (v14.u32[0] >= 2uLL)
            {
              v38 = ((73856093 * v30) ^ (19349669 * v36) ^ (83492791 * (v18.i32[2] - 1))) % v13;
              if (v37 >= *&v10)
              {
                v38 = v37 % *&v10;
              }
            }

            else
            {
              v38 = v37 & v15;
            }

            v39 = a6;
            v39.i32[1] = v36;
            v40 = *(v16 + 8 * v38);
            if (v40)
            {
              v41 = *v40;
              if (v41)
              {
                v42 = v39;
                v42.i32[2] = v18.i32[2] - 1;
                if (v14.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v44 = v41->i64[1];
                    if (v37 == v44)
                    {
                      v43 = vceqq_s32(v41[1], v42);
                      v43.i32[3] = v43.i32[2];
                      if ((vminvq_u32(v43) & 0x80000000) != 0)
                      {
                        goto LABEL_54;
                      }
                    }

                    else if ((v44 & v15) != v38)
                    {
                      goto LABEL_55;
                    }

                    v41 = v41->i64[0];
                    if (!v41)
                    {
                      goto LABEL_55;
                    }
                  }
                }

                do
                {
                  v46 = v41->u64[1];
                  if (v37 == v46)
                  {
                    v45 = vceqq_s32(v41[1], v42);
                    v45.i32[3] = v45.i32[2];
                    if ((vminvq_u32(v45) & 0x80000000) != 0)
                    {
LABEL_54:
                      ++v28;
                      v34 = v34 + *v41[2].i32;
                      break;
                    }
                  }

                  else
                  {
                    if (v46 >= *&v10)
                    {
                      v46 %= *&v10;
                    }

                    if (v46 != v38)
                    {
                      break;
                    }
                  }

                  v41 = v41->i64[0];
                }

                while (v41);
              }
            }

LABEL_55:
            if (v18.i32[2] == 0x80000000)
            {
              goto LABEL_32;
            }

            v47.i64[0] = v30;
            v47.i64[1] = v36;
            v48 = vextq_s8(v47, v47, 8uLL).u64[0];
            v49 = ((73856093 * v30) ^ (19349669 * v48) ^ (83492791 * v31)) % v13;
            if (v14.u32[0] >= 2uLL)
            {
              v50 = ((73856093 * v30) ^ (19349669 * v48) ^ (83492791 * v31)) % v13;
              if (v49 >= *&v10)
              {
                v50 = v49 % *&v10;
              }
            }

            else
            {
              v50 = v49 & v15;
            }

            v51 = *(v16 + 8 * v50);
            if (!v51)
            {
              goto LABEL_77;
            }

            v52 = *v51;
            if (!v52)
            {
              goto LABEL_77;
            }

            v53 = v39;
            v53.i32[2] = *(v12 + 48 * v6 + 8);
            if (v14.u32[0] >= 2uLL)
            {
              while (1)
              {
                v57 = v52->u64[1];
                if (v49 == v57)
                {
                  v56 = vceqq_s32(v52[1], v53);
                  v56.i32[3] = v56.i32[2];
                  if ((vminvq_u32(v56) & 0x80000000) != 0)
                  {
                    goto LABEL_76;
                  }
                }

                else
                {
                  if (v57 >= *&v10)
                  {
                    v57 %= *&v10;
                  }

                  if (v57 != v50)
                  {
                    goto LABEL_77;
                  }
                }

                v52 = v52->i64[0];
                if (!v52)
                {
                  goto LABEL_77;
                }
              }
            }

            while (1)
            {
              v55 = v52->i64[1];
              if (v49 == v55)
              {
                break;
              }

              if ((v55 & v15) != v50)
              {
                goto LABEL_77;
              }

LABEL_65:
              v52 = v52->i64[0];
              if (!v52)
              {
                goto LABEL_77;
              }
            }

            v54 = vceqq_s32(v52[1], v53);
            v54.i32[3] = v54.i32[2];
            if ((vminvq_u32(v54) & 0x80000000) == 0)
            {
              goto LABEL_65;
            }

LABEL_76:
            ++v28;
            v34 = v34 + *v52[2].i32;
LABEL_77:
            v58 = ((73856093 * v30) ^ (19349669 * v48) ^ (83492791 * v32)) % v13;
            if (v14.u32[0] >= 2uLL)
            {
              v59 = ((73856093 * v30) ^ (19349669 * v48) ^ (83492791 * v32)) % v13;
              if (v58 >= *&v10)
              {
                v59 = v58 % *&v10;
              }
            }

            else
            {
              v59 = v58 & v15;
            }

            v60 = *(v16 + 8 * v59);
            if (v60)
            {
              v61 = *v60;
              if (v61)
              {
                v39.i32[2] = v18.i32[2] + 1;
                if (v14.u32[0] >= 2uLL)
                {
                  while (1)
                  {
                    v65 = v61->u64[1];
                    if (v58 == v65)
                    {
                      v64 = vceqq_s32(v61[1], v39);
                      v64.i32[3] = v64.i32[2];
                      if ((vminvq_u32(v64) & 0x80000000) != 0)
                      {
                        goto LABEL_31;
                      }
                    }

                    else
                    {
                      if (v65 >= *&v10)
                      {
                        v65 %= *&v10;
                      }

                      if (v65 != v59)
                      {
                        goto LABEL_32;
                      }
                    }

                    v61 = v61->i64[0];
                    if (!v61)
                    {
                      goto LABEL_32;
                    }
                  }
                }

                do
                {
                  v63 = v61->i64[1];
                  if (v58 == v63)
                  {
                    v62 = vceqq_s32(v61[1], v39);
                    v62.i32[3] = v62.i32[2];
                    if ((vminvq_u32(v62) & 0x80000000) != 0)
                    {
LABEL_31:
                      ++v28;
                      v34 = v34 + *v61[2].i32;
                      break;
                    }
                  }

                  else if ((v63 & v15) != v59)
                  {
                    break;
                  }

                  v61 = v61->i64[0];
                }

                while (v61);
              }
            }

LABEL_32:
            v35 = v36++ <= v18.i32[1];
          }

          while (v35);
          v35 = v30++ <= v33;
        }

        while (v35);
        v17 = -1.0;
        if (v28 > 1)
        {
          v17 = v34 / v28;
        }

LABEL_7:
        *(v11 + 4 * v6++) = v17;
        if (v6 == v7)
        {
          return;
        }
      }
    }

    memset_pattern16((v11 + 2000 * a2), &unk_24613FD70, 4 * v7 - 2000 * a2);
  }
}

void sub_24612A904(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 136);
  v5 = *(a1 + 128);
  if (v5 == v4)
  {
    v9 = -1.0;
  }

  else
  {
    v6 = *(a2 + 7);
    v7 = vsubq_f32(v6, v5[7]);
    v8 = vmulq_f32(v7, v7);
    v9 = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    do
    {
      v10 = vsubq_f32(v6, v5[7]);
      v11 = vmulq_f32(v10, v10);
      v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
      if (v12 < v9)
      {
        v9 = v12;
      }

      v5 += 12;
    }

    while (v5 != v4);
  }

  v14 = *(a1 + 160);
  v13 = *(a1 + 168);
  if (v14 >= v13)
  {
    v16 = *(a1 + 152);
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 2;
    v19 = v18 + 1;
    if ((v18 + 1) >> 62)
    {
      goto LABEL_65;
    }

    v20 = v13 - v16;
    if (v20 >> 1 > v19)
    {
      v19 = v20 >> 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v21 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 62))
      {
        operator new();
      }

      goto LABEL_64;
    }

    v22 = (v14 - v16) >> 2;
    v23 = (4 * v18);
    v24 = (4 * v18 - 4 * v22);
    *v23 = v9;
    v15 = v23 + 1;
    memcpy(v24, v16, v17);
    *(a1 + 152) = v24;
    *(a1 + 160) = v15;
    *(a1 + 168) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v9;
    v15 = v14 + 1;
  }

  *(a1 + 160) = v15;
  v25 = *(a1 + 136);
  v26 = *(a1 + 144);
  if (v25 >= v26)
  {
    v37 = *(a1 + 128);
    v38 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v37) >> 6) + 1;
    if (v38 > 0x155555555555555)
    {
      sub_2460D368C();
    }

    v39 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v37) >> 6);
    if (2 * v39 > v38)
    {
      v38 = 2 * v39;
    }

    if (v39 >= 0xAAAAAAAAAAAAAALL)
    {
      v40 = 0x155555555555555;
    }

    else
    {
      v40 = v38;
    }

    if (v40)
    {
      if (v40 <= 0x155555555555555)
      {
        operator new();
      }

      goto LABEL_64;
    }

    v41 = *(a2 + 9);
    v42 = ((v25 - v37) >> 6 << 6);
    v42[8] = *(a2 + 8);
    v42[9] = v41;
    v43 = *(a2 + 11);
    v42[10] = *(a2 + 10);
    v42[11] = v43;
    v44 = *(a2 + 5);
    v42[4] = *(a2 + 4);
    v42[5] = v44;
    v45 = *(a2 + 7);
    v42[6] = *(a2 + 6);
    v42[7] = v45;
    v46 = *(a2 + 1);
    *v42 = *a2;
    v42[1] = v46;
    v47 = *(a2 + 3);
    v36 = v42 + 12;
    v48 = v42 - (v25 - v37);
    v42[2] = *(a2 + 2);
    v42[3] = v47;
    memcpy(v48, v37, v25 - v37);
    *(a1 + 128) = v48;
    *(a1 + 136) = v36;
    *(a1 + 144) = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    v27 = *a2;
    v28 = *(a2 + 1);
    v29 = *(a2 + 3);
    *(v25 + 2) = *(a2 + 2);
    *(v25 + 3) = v29;
    *v25 = v27;
    *(v25 + 1) = v28;
    v30 = *(a2 + 4);
    v31 = *(a2 + 5);
    v32 = *(a2 + 7);
    *(v25 + 6) = *(a2 + 6);
    *(v25 + 7) = v32;
    *(v25 + 4) = v30;
    *(v25 + 5) = v31;
    v33 = *(a2 + 8);
    v34 = *(a2 + 9);
    v35 = *(a2 + 11);
    *(v25 + 10) = *(a2 + 10);
    *(v25 + 11) = v35;
    *(v25 + 8) = v33;
    *(v25 + 9) = v34;
    v36 = v25 + 192;
  }

  *(a1 + 136) = v36;
  if (*(a1 + 121) == 1 && !*a1)
  {
    v50 = *(a2 + 8);
    v49 = *(a2 + 9);
    v52 = *(a2 + 10);
    v51 = *(a2 + 11);
    v53 = *(a1 + 752);
    v54 = *(a1 + 760);
    if (v53 >= v54)
    {
      v56 = *(a1 + 744);
      v57 = v53 - v56;
      v58 = (v53 - v56) >> 6;
      v59 = v58 + 1;
      if ((v58 + 1) >> 58)
      {
        sub_2460D368C();
      }

      v60 = v54 - v56;
      if (v60 >> 5 > v59)
      {
        v59 = v60 >> 5;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFC0)
      {
        v61 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        if (!(v61 >> 58))
        {
          operator new();
        }

        goto LABEL_64;
      }

      v62 = (v58 << 6);
      *v62 = v50;
      v62[1] = v49;
      v62[2] = v52;
      v62[3] = v51;
      v55 = (v58 << 6) + 64;
      memcpy(0, v56, v57);
      *(a1 + 744) = 0;
      *(a1 + 752) = v55;
      *(a1 + 760) = 0;
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *v53 = v50;
      *(v53 + 1) = v49;
      v55 = (v53 + 64);
      *(v53 + 2) = v52;
      *(v53 + 3) = v51;
    }

    *(a1 + 752) = v55;
    v63 = atan2f(a2[1], *(a2 + 9) + *(a2 + 9));
    v64 = v63 + v63;
    v65 = *(a1 + 776);
    v66 = *(a1 + 784);
    if (v65 < v66)
    {
      *v65 = v64;
      v67 = v65 + 1;
LABEL_62:
      *(a1 + 776) = v67;
      return;
    }

    v68 = *(a1 + 768);
    v69 = v65 - v68;
    v70 = (v65 - v68) >> 2;
    v71 = v70 + 1;
    if (!((v70 + 1) >> 62))
    {
      v72 = v66 - v68;
      if (v72 >> 1 > v71)
      {
        v71 = v72 >> 1;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v73 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (!v73)
      {
        v74 = (v65 - v68) >> 2;
        v75 = (4 * v70);
        v76 = (4 * v70 - 4 * v74);
        *v75 = v64;
        v67 = v75 + 1;
        memcpy(v76, v68, v69);
        *(a1 + 768) = v76;
        *(a1 + 776) = v67;
        *(a1 + 784) = 0;
        if (v68)
        {
          operator delete(v68);
        }

        goto LABEL_62;
      }

      if (!(v73 >> 62))
      {
        operator new();
      }

LABEL_64:
      sub_2460D368C();
    }

LABEL_65:
    sub_2460D368C();
  }
}

void sub_24612AD9C(uint64_t a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88) == 1 && (*(a1 + 306) & 1) != 0)
  {
    v2 = *(a1 + 472);

    sub_24612A904(v2, a2);
  }

  else
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v3 = qword_27EE3F688;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual void oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::addCameraShot(const framing_guide::CoverageCamera &)");
      v4 = v6 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v8 = v4;
      v9 = 1026;
      v10 = 333;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to add camera shot - Coverage is not enabled.", buf, 0x12u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t sub_24612AF04()
{
  qword_27EE3F688 = os_log_create("com.apple.CoreOCModules", "VoxelHashing");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24612AF48(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88) == 1 && (*(a1 + 306) & 1) != 0)
  {
    return *(a1 + 444);
  }

  if (qword_27EE3F690 != -1)
  {
    dispatch_once(&qword_27EE3F690, &unk_2858EC628);
  }

  v2 = qword_27EE3F688;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "virtual uint32_t oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::cameraShotHeight()");
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315394;
    v7 = v3;
    v8 = 1026;
    v9 = 323;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get camera shot width - coverage is not enabled.", buf, 0x12u);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_24612B080(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88) == 1 && (*(a1 + 306) & 1) != 0)
  {
    return *(a1 + 440);
  }

  if (qword_27EE3F690 != -1)
  {
    dispatch_once(&qword_27EE3F690, &unk_2858EC628);
  }

  v2 = qword_27EE3F688;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "virtual uint32_t oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::cameraShotWidth()");
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315394;
    v7 = v3;
    v8 = 1026;
    v9 = 313;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get camera shot width - coverage is not enabled.", buf, 0x12u);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

double sub_24612B1B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 88) & 1) == 0)
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v20 = qword_27EE3F688;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    sub_24610D894(__p, "virtual VoxelHashingPipelineResults oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::results()");
    v28 = v32 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v34 = v28;
    v35 = 1026;
    v36 = 343;
    _os_log_error_impl(&dword_2460CF000, v20, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get voxelhashing results - pipeline not initialized.", buf, 0x12u);
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    operator delete(__p[0]);
LABEL_24:

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0;
    return result;
  }

  sub_2461374DC(*(a1 + 8));
  v4 = sub_24613726C(*(a1 + 8));
  v9 = *objc_msgSend_contents(*v4, v5, v6);
  if (!v9)
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v20 = qword_27EE3F688;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    sub_24610D894(__p, "virtual VoxelHashingPipelineResults oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::results()");
    v29 = v32 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v34 = v29;
    v35 = 1026;
    v36 = 354;
    _os_log_error_impl(&dword_2460CF000, v20, OS_LOG_TYPE_ERROR, "%s:%{public}d Vertex buffer is empty.", buf, 0x12u);
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

  v12 = objc_msgSend_contents(*(v4 + 8), v7, v8);
  if (*(a1 + 208) != 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(v4 + 32);
    if (!v18)
    {
      goto LABEL_6;
    }

LABEL_16:
    v19 = objc_msgSend_contents(*(v4 + 40), v10, v11);
    goto LABEL_17;
  }

  v16 = *objc_msgSend_contents(*(v4 + 16), v10, v11);
  if (!v16)
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v20 = qword_27EE3F688;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    sub_24610D894(__p, "virtual VoxelHashingPipelineResults oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::results()");
    v30 = v32 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v34 = v30;
    v35 = 1026;
    v36 = 366;
    _os_log_error_impl(&dword_2460CF000, v20, OS_LOG_TYPE_ERROR, "%s:%{public}d Index buffer is empty.", buf, 0x12u);
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

  v17 = objc_msgSend_contents(*(v4 + 24), v14, v15);
  v18 = *(v4 + 32);
  if (v18)
  {
    goto LABEL_16;
  }

LABEL_6:
  v19 = 0;
LABEL_17:
  v21 = *(a1 + 8);
  v22 = v21[20];
  v23 = v21[21];
  v24 = v21[22];
  v25 = v21[23];
  *a2 = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v27 = *(v4 + 48);
  v26 = *(v4 + 56);
  if (v26 != v27)
  {
    if (((v26 - v27) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2460D368C();
  }

  LODWORD(result) = *(v4 + 96);
  *(a2 + 56) = LODWORD(result);
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 80) = v22;
  *(a2 + 96) = v23;
  *(a2 + 112) = v24;
  *(a2 + 128) = v25;
  return result;
}

CVPixelBufferRef sub_24612B5DC(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  if ((*(a1 + 88) & 1) == 0)
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v3 = qword_27EE3F688;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual CVPixelBufferRef oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::normalImage()");
      v20 = v25 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v30 = v20;
      v31 = 1026;
      v32 = 291;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get normal image - pipeline not initialized.", buf, 0x12u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(a1 + 80), &pixelBufferOut))
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v2 = qword_27EE3F688;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    sub_24610D894(__p, "virtual CVPixelBufferRef oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::normalImage()");
    v21 = v25 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v30 = v21;
    v31 = 1026;
    v32 = 298;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get normal image - failed to create pixel buffer from pool.", buf, 0x12u);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v4 = *(a1 + 112);
    if (v4)
    {
      v5 = pixelBufferOut;
      if (pixelBufferOut)
      {
        if (CVPixelBufferGetBytesPerRow(pixelBufferOut) >= 16 * v4[2])
        {
          CVPixelBufferLockBaseAddress(v5, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(v5);
          v7 = (*(*v4 + 48))(v4);
          v10 = v7;
          if (v7)
          {
            v11 = objc_msgSend_width(v7, v8, v9);
            v14 = objc_msgSend_width(v10, v12, v13);
            v17 = objc_msgSend_height(v10, v15, v16);
            __p[0] = 0;
            __p[1] = 0;
            v25 = 0;
            v26 = v14;
            v27 = v17;
            v28 = 1;
            objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v10, v18, BaseAddress, 16 * v11, __p, 0);
            CVPixelBufferUnlockBaseAddress(v5, 0);

            return pixelBufferOut;
          }

          CVPixelBufferUnlockBaseAddress(v5, 0);
          CVPixelBufferRelease(v5);
        }
      }
    }

    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v2 = qword_27EE3F688;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    sub_24610D894(__p, "virtual CVPixelBufferRef oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::normalImage()");
    v22 = v25 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v30 = v22;
    v31 = 1026;
    v32 = 304;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get normal image - failed to copy normal image to pixel buffer.", buf, 0x12u);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  operator delete(__p[0]);
LABEL_30:

  return 0;
}

CVPixelBufferRef sub_24612B9C0(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  if ((*(a1 + 88) & 1) == 0)
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v3 = qword_27EE3F688;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual CVPixelBufferRef oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::depthImage()");
      v20 = v25 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v30 = v20;
      v31 = 1026;
      v32 = 267;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get depth image - pipeline not initialized.", buf, 0x12u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(a1 + 72), &pixelBufferOut))
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v2 = qword_27EE3F688;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    sub_24610D894(__p, "virtual CVPixelBufferRef oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::depthImage()");
    v21 = v25 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v30 = v21;
    v31 = 1026;
    v32 = 274;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get depth image - failed to create pixel buffer from pool.", buf, 0x12u);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v4 = *(a1 + 112);
    if (v4)
    {
      v5 = pixelBufferOut;
      if (pixelBufferOut)
      {
        if (CVPixelBufferGetBytesPerRow(pixelBufferOut) >= 4 * v4[2])
        {
          CVPixelBufferLockBaseAddress(v5, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(v5);
          v7 = (*(*v4 + 32))(v4);
          v10 = v7;
          if (v7)
          {
            v11 = objc_msgSend_width(v7, v8, v9);
            v14 = objc_msgSend_width(v10, v12, v13);
            v17 = objc_msgSend_height(v10, v15, v16);
            __p[0] = 0;
            __p[1] = 0;
            v25 = 0;
            v26 = v14;
            v27 = v17;
            v28 = 1;
            objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v10, v18, BaseAddress, 4 * v11, __p, 0);
            CVPixelBufferUnlockBaseAddress(v5, 0);

            return pixelBufferOut;
          }

          CVPixelBufferUnlockBaseAddress(v5, 0);
          CVPixelBufferRelease(v5);
        }
      }
    }

    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v2 = qword_27EE3F688;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    sub_24610D894(__p, "virtual CVPixelBufferRef oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::depthImage()");
    v22 = v25 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v30 = v22;
    v31 = 1026;
    v32 = 280;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get depth image - failed to copy depth image to pixel buffer.", buf, 0x12u);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  operator delete(__p[0]);
LABEL_30:

  return 0;
}

void sub_24612BDA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    v3 = *(a1 + 120);
    if (*(v3 + 160))
    {
      sub_2461374DC(*v3);
      v4 = sub_24613726C(*v3);
      v7 = *(v4 + 32);
      if (v7)
      {
        *a2 = v7;
        *(a2 + 8) = objc_msgSend_contents(*(v4 + 40), v5, v6);
        *(a2 + 16) = *(v3 + 72);
        v8 = *(v3 + 96);
        *(a2 + 32) = *(v3 + 80);
        *(a2 + 48) = v8;
        v9 = *(v3 + 112);
        v10 = *(v3 + 128);
LABEL_18:
        *(a2 + 64) = v9;
        *(a2 + 80) = v10;
        return;
      }

      if (qword_27EE3F548 != -1)
      {
        dispatch_once(&qword_27EE3F548, &unk_2858EBC48);
      }

      v13 = qword_27EE3F540;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_24610D894(__p, "common::PointCloudWithCoverageModelFrame oc::voxel_hashing::MeshSurfaceSamplerGPU::sampledPoints()");
        if (v20 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        *buf = 136315394;
        v22 = v18;
        v23 = 1026;
        v24 = 126;
        _os_log_debug_impl(&dword_2460CF000, v13, OS_LOG_TYPE_DEBUG, "%s:%{public}d No points sampled from mesh", buf, 0x12u);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = *(v3 + 72);
    }

    else
    {
      if (qword_27EE3F548 != -1)
      {
        dispatch_once(&qword_27EE3F548, &unk_2858EBC48);
      }

      v12 = qword_27EE3F540;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(__p, "common::PointCloudWithCoverageModelFrame oc::voxel_hashing::MeshSurfaceSamplerGPU::sampledPoints()");
        v17 = v20 >= 0 ? __p : __p[0];
        *buf = 136315394;
        v22 = v17;
        v23 = 1026;
        v24 = 115;
        _os_log_error_impl(&dword_2460CF000, v12, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get sampled points from mesh - MeshSurfaceSamplerGPU not initialized", buf, 0x12u);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    v14 = MEMORY[0x277D860B8];
    v15 = *(MEMORY[0x277D860B8] + 16);
    *(a2 + 32) = *MEMORY[0x277D860B8];
    *(a2 + 48) = v15;
    v9 = *(v14 + 32);
    v10 = *(v14 + 48);
    goto LABEL_18;
  }

  if (qword_27EE3F690 != -1)
  {
    dispatch_once(&qword_27EE3F690, &unk_2858EC628);
  }

  v11 = qword_27EE3F688;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "virtual common::PointCloudWithCoverageModelFrame oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::sampledPointCloud()");
    v16 = v20 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v22 = v16;
    v23 = 1026;
    v24 = 255;
    _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to sample points from mesh - pipeline not initialized.", buf, 0x12u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
}

double sub_24612C0F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    v3 = *(**(a1 + 104) + 40);

    v3();
  }

  else
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v5 = qword_27EE3F688;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual common::PointCloudModelFrame oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::surfacePointCloud()");
      v6 = v8 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v10 = v6;
      v11 = 1026;
      v12 = 245;
      _os_log_error_impl(&dword_2460CF000, v5, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get surface pointcloud - pipeline not initialized.", buf, 0x12u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
  }

  return result;
}

void sub_24612C2A0(uint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    v4 = sub_246136344(*(a1 + 8));
    v5 = v4;
    v51 = objc_msgSend_contents(v5, v6, v7);

    v10 = sub_246135ED8(*(a1 + 8), v8, v9);
    v48 = (a1 + 48);
    *(a1 + 56) = *(a1 + 48);
    if (v10 << 9)
    {
      operator new();
    }

    v13 = 0;
    v14 = 0uLL;
    v49 = a2;
    if (v10)
    {
      v15 = 0;
      v16 = (v51 + 2);
      v17 = xmmword_24613FCB0;
      v50 = v10;
      do
      {
        v18 = 0;
        v52 = v16;
        v53 = v15;
        v11.i64[0] = *(v51 + 17368 * v15 + 17352);
        v19 = vshll_n_s16(*v11.i8, 3uLL);
        v59 = v19;
        do
        {
          v20 = 0;
          v54 = v16;
          v55 = v18;
          v11.i32[0] = v18;
          v56 = v11;
          do
          {
            v21 = 0;
            v11 = v56;
            v22 = v56;
            v22.i32[1] = v20;
            v22.i32[2] = v56.i32[2];
            v57 = v16;
            v61 = v22;
            do
            {
              if (*v16)
              {
                _H2 = fabsl(*(v16 - 1));
                __asm { FCVT            S0, H2 }

                v28 = (_S0 / -12.0) + 1.0;
                if (v28 <= 1.0)
                {
                  v29 = v28;
                }

                else
                {
                  v29 = 1.0;
                }

                if (v28 >= 0.2)
                {
                  *&v30 = v29;
                }

                else
                {
                  *&v30 = 0.2;
                }

                v31 = _H2 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(12.0));
                v32 = v17;
                if (v31)
                {
                  __asm { FCMP            H1, #0 }

                  if (_NF != _VF)
                  {
                    v32 = xmmword_24613FCC0;
                    if (_NF)
                    {
                      DWORD1(v30) = 0;
                      *(&v30 + 1) = 0x3F33333300000000;
                      v32 = v30;
                    }
                  }

                  else
                  {
                    *&v32 = 0;
                    *(&v32 + 1) = v30 | 0x3F33333300000000;
                  }
                }

                v35 = v22;
                v35.i32[2] = v21;
                v36 = vaddq_s32(v35, v19);
                v36.i32[3] = 1;
                v37 = v14;
                v38 = v13 - v14;
                v39 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 4);
                v40 = v39 + 1;
                if (v39 + 1 > 0x555555555555555)
                {
                  sub_2460D368C();
                }

                if (0x5555555555555556 * (-v14 >> 4) > v40)
                {
                  v40 = 0x5555555555555556 * (-v14 >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v14 >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v41 = 0x555555555555555;
                }

                else
                {
                  v41 = v40;
                }

                if (v41)
                {
                  if (v41 <= 0x555555555555555)
                  {
                    operator new();
                  }

                  sub_2460D368C();
                }

                v42 = 48 * v39;
                *v42 = v36;
                *(v42 + 16) = 0;
                *(v42 + 24) = 0;
                *(v42 + 32) = v32;
                v13 = 48 * v39 + 48;
                v43 = v42 - v38;
                memcpy((v42 - v38), v14, v38);
                *&v14 = v43;
                if (v37)
                {
                  operator delete(v37);
                  *&v14 = v43;
                }

                v17 = xmmword_24613FCB0;
                v19 = v59;
                v22 = v61;
                *(&v14 + 1) = v13;
              }

              ++v21;
              v16 += 6;
            }

            while (v21 != 8);
            ++v20;
            v16 = v57 + 48;
          }

          while (v20 != 8);
          v18 = v55 + 1;
          v16 = v54 + 384;
        }

        while (v55 != 7);
        v15 = v53 + 1;
        v16 = v52 + 8684;
      }

      while (v53 + 1 != v50);
    }

    v44 = *v48;
    if (*v48)
    {
      *(a1 + 56) = v44;
      v64 = v14;
      operator delete(v44);
      v14 = v64;
      *v48 = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
    }

    *(a1 + 48) = v14;
    *(a1 + 64) = 0;
    v45 = *(a1 + 8);
    v58 = v45[20];
    v60 = v45[21];
    v62 = v45[22];
    v63 = v45[3].u32[2];
    v65 = v45[23];
    v73.columns[2].i64[0] = 0;
    v73.columns[0] = v63;
    v73.columns[1].i32[0] = 0;
    v73.columns[1].i32[3] = 0;
    *(v73.columns[1].i64 + 4) = v63;
    v73.columns[2].i64[1] = v63;
    v73.columns[3] = xmmword_24613FA50;
    v74 = __invert_f4(v73);
    v49->i32[0] = v63;
    v46 = *(a1 + 48);
    v49->i32[1] = -1431655765 * ((*(a1 + 56) - v46) >> 4);
    v49->i64[1] = v46;
    v49[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74.columns[0], v58.f32[0]), v74.columns[1], *v58.f32, 1), v74.columns[2], v58, 2), v74.columns[3], v58, 3);
    v49[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74.columns[0], v60.f32[0]), v74.columns[1], *v60.f32, 1), v74.columns[2], v60, 2), v74.columns[3], v60, 3);
    v49[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74.columns[0], v62.f32[0]), v74.columns[1], *v62.f32, 1), v74.columns[2], v62, 2), v74.columns[3], v62, 3);
    v49[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74.columns[0], v65.f32[0]), v74.columns[1], *v65.f32, 1), v74.columns[2], v65, 2), v74.columns[3], v65, 3);
  }

  else
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v12 = qword_27EE3F688;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(v66, "virtual common::VoxelCloudModelFrame oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::debugVoxelCloud()");
      v47 = v67 >= 0 ? v66 : v66[0];
      *buf = 136315394;
      v69 = v47;
      v70 = 1026;
      v71 = 221;
      _os_log_error_impl(&dword_2460CF000, v12, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get debug voxelcloud - pipeline not initialized.", buf, 0x12u);
      if (v67 < 0)
      {
        operator delete(v66[0]);
      }
    }

    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

void sub_24612C840(_Unwind_Exception *a1)
{
  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

double sub_24612C85C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    (*(**(a1 + 104) + 40))(__p);
    if (LODWORD(__p[0]))
    {
      v4 = __p[1] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      operator new();
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      *(a1 + 32) = v5;
      operator delete(v5);
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *a2 = v12;
    *(a2 + 4) = __p[0];
    *(a2 + 8) = 0;
    v6 = v15;
    *(a2 + 16) = v14;
    *(a2 + 32) = v6;
    result = *&v16;
    v8 = v17;
    *(a2 + 48) = v16;
    *(a2 + 64) = v8;
  }

  else
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v9 = qword_27EE3F688;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual common::VoxelCloudModelFrame oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::surfaceVoxelCloud()");
      v10 = v13 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v19 = v10;
      v20 = 1026;
      v21 = 206;
      _os_log_error_impl(&dword_2460CF000, v9, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get surface voxelcloud - pipeline not initialized.", buf, 0x12u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_24612CADC(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    if (sub_24611A5E4(a2, a3, *a4, a4[1]))
    {
      kdebug_trace();
      (*(**(a1 + 112) + 24))(*(a1 + 112), a2, a3, a4);
      kdebug_trace();
      return 0;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v9 = qword_27EE3F688;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual VoxelHashingStatus oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::renderDepthImage(const simd_float4x4 &, const simd_float3x3 &, const CGSize &)");
      if (v12 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315394;
      v14 = v10;
      v15 = 1026;
      v16 = 183;
      _os_log_error_impl(&dword_2460CF000, v9, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to render depth image - pipeline not initialized.", buf, 0x12u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 1;
  }
}

uint64_t sub_24612CCB4(uint64_t a1, int a2)
{
  v163 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 88) & 1) == 0)
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v17 = qword_27EE3F688;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    sub_24610D894(&__p, "virtual VoxelHashingStatus oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::sampleSurfacePoints(const uint32_t)");
    v29 = __p.columns[1].i8[7] >= 0 ? &__p : __p.columns[0].i64[0];
    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 1026;
    *&buf[14] = 135;
    _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to sample surface points - pipeline not initialized.", buf, 0x12u);
    if ((__p.columns[1].i8[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_62:
    operator delete(__p.columns[0].i64[0]);
LABEL_30:

    return 1;
  }

  (*(**(a1 + 104) + 24))(*(a1 + 104));
  if (*(a1 + 306) != 1)
  {
    goto LABEL_77;
  }

  v4 = sub_2461373A4(*(a1 + 8));
  v5 = *(a1 + 472);
  v6 = *(a1 + 180);
  __p = __invert_f4(*(a1 + 240));
  v9 = *(v5 + 4) != 1 || v4 == 0;
  if (v9 || !*v4 || !*(v4 + 8) || !*(v4 + 16) || *objc_msgSend_contents(*v4, v7, v8) < *(v5 + 16) || *(v5 + 128) != *(v5 + 136) && (*(v5 + 480) != 1 || (sub_246109D14(v5 + 192, &__p, v4, v6) & 1) == 0 || (sub_24610B6C8(v5 + 192, (v5 + 128), v10) & 1) == 0))
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v18 = qword_27EE3F688;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(&__p, "BOOL oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::computeCoverage()");
      v30 = __p.columns[1].i8[7] >= 0 ? &__p : __p.columns[0].i64[0];
      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 1026;
      *&buf[14] = 510;
      _os_log_error_impl(&dword_2460CF000, v18, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to compute coverage scores.", buf, 0x12u);
      if (__p.columns[1].i8[7] < 0)
      {
        operator delete(__p.columns[0].i64[0]);
      }
    }

    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v17 = qword_27EE3F688;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    sub_24610D894(&__p, "virtual VoxelHashingStatus oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::sampleSurfacePoints(const uint32_t)");
    v31 = __p.columns[1].i8[7] >= 0 ? &__p : __p.columns[0].i64[0];
    *buf = 136315394;
    *&buf[4] = v31;
    *&buf[12] = 1026;
    *&buf[14] = 143;
    _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to sample surface points - failed to compute coverage.", buf, 0x12u);
    if ((__p.columns[1].i8[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

  v12 = *(v4 + 48);
  v11 = *(v4 + 56);
  if (v12 == v11)
  {
    v33 = 0.0;
    goto LABEL_76;
  }

  v13 = 0;
  v154 = *(v4 + 56);
  v155 = v11 - v12;
  v14 = *(v4 + 72);
  v157 = *(a1 + 452) + 1;
  v158 = *(a1 + 448) + 1;
  v156 = v11 - v12;
  if (v156 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11 - v12;
  }

  v16 = *(v4 + 48);
  do
  {
    v26 = *v14++;
    v25 = v26;
    v27 = (a1 + 456);
    if (v26 - 1 < *(a1 + 448) || (v25 >= v158 ? (v28 = v25 > *(a1 + 452)) : (v28 = 1), v27 = (a1 + 460), !v28))
    {
      v20 = &v12[v13];
      v21 = *v16;
LABEL_32:
      v21 = v21 / *v27;
      *v20 = v21;
      goto LABEL_33;
    }

    v21 = *v16;
    v27 = (a1 + 464);
    v20 = v16;
    if (v25 >= v157)
    {
      goto LABEL_32;
    }

LABEL_33:
    v22 = powf(fmaxf(v21, 0.0), *(a1 + 468));
    if (v22 <= 1.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1.0;
    }

    if (v22 >= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    *v16++ = v24;
    ++v13;
    --v15;
  }

  while (v15);
  if ((v155 - 4) >= 0x1C)
  {
    v34 = ((v155 - 4) >> 2) + 1;
    v35 = (v12 + 4);
    v36 = 0uLL;
    v37 = vdupq_n_s32(0x3F4CCCCDu);
    v38 = vdupq_n_s64(1uLL);
    v39 = v34 & 0x7FFFFFFFFFFFFFF8;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    do
    {
      v43 = vcgtq_f32(v35[-1], v37);
      v44.i64[0] = v43.u32[0];
      v44.i64[1] = v43.u32[1];
      v45 = vandq_s8(v44, v38);
      v44.i64[0] = v43.u32[2];
      v44.i64[1] = v43.u32[3];
      v46 = vandq_s8(v44, v38);
      v47 = vcgtq_f32(*v35, v37);
      v44.i64[0] = v47.u32[0];
      v44.i64[1] = v47.u32[1];
      v48 = vandq_s8(v44, v38);
      v44.i64[0] = v47.u32[2];
      v44.i64[1] = v47.u32[3];
      v40 = vaddq_s64(v40, v46);
      v36 = vaddq_s64(v36, v45);
      v42 = vaddq_s64(v42, vandq_s8(v44, v38));
      v41 = vaddq_s64(v41, v48);
      v35 += 2;
      v39 -= 8;
    }

    while (v39);
    v32 = vaddvq_s64(vaddq_s64(vaddq_s64(v41, v36), vaddq_s64(v42, v40)));
    if (v34 != (v34 & 0x7FFFFFFFFFFFFFF8))
    {
      v12 += v34 & 0x7FFFFFFFFFFFFFF8;
      goto LABEL_71;
    }

    v49 = v156;
  }

  else
  {
    v32 = 0;
LABEL_71:
    v49 = v156;
    do
    {
      v50 = *v12++;
      if (v50 > 0.8)
      {
        ++v32;
      }
    }

    while (v12 != v154);
  }

  v33 = v32 / v49;
LABEL_76:
  *(v4 + 96) = v33;
LABEL_77:
  if (!a2)
  {
    goto LABEL_124;
  }

  kdebug_trace();
  v51 = *(a1 + 120);
  if ((*(v51 + 160) & 1) == 0)
  {
    if (qword_27EE3F548 != -1)
    {
      dispatch_once(&qword_27EE3F548, &unk_2858EBC48);
    }

    v81 = qword_27EE3F540;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(&__p, "BOOL oc::voxel_hashing::MeshSurfaceSamplerGPU::samplePointsFromMesh(const uint32_t)");
      v151 = __p.columns[1].i8[7] >= 0 ? &__p : __p.columns[0].i64[0];
      *buf = 136315394;
      *&buf[4] = v151;
      *&buf[12] = 1026;
      *&buf[14] = 59;
      _os_log_error_impl(&dword_2460CF000, v81, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to sample points from mesh - MeshSurfaceSamplerGPU not initialized", buf, 0x12u);
      if (__p.columns[1].i8[7] < 0)
      {
        operator delete(__p.columns[0].i64[0]);
      }
    }

    kdebug_trace();
    return 1;
  }

  v52 = sub_2461373A4(*v51);
  if (!*objc_msgSend_contents(*(v52 + 16), v53, v54))
  {
    if (qword_27EE3F548 != -1)
    {
      dispatch_once(&qword_27EE3F548, &unk_2858EBC48);
    }

    v82 = qword_27EE3F540;
    if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_93;
    }

    sub_24610D894(&__p, "BOOL oc::voxel_hashing::MeshSurfaceSamplerGPU::samplePointsFromMesh(const uint32_t)");
    v153 = __p.columns[1].i8[7] >= 0 ? &__p : __p.columns[0].i64[0];
    *buf = 136315394;
    *&buf[4] = v153;
    *&buf[12] = 1026;
    *&buf[14] = 78;
    _os_log_debug_impl(&dword_2460CF000, v82, OS_LOG_TYPE_DEBUG, "%s:%{public}d Can't sample points from mesh - triangle mesh is empty", buf, 0x12u);
    if ((__p.columns[1].i8[7] & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

LABEL_150:
    operator delete(__p.columns[0].i64[0]);
LABEL_93:

    goto LABEL_123;
  }

  v57 = objc_msgSend_contents(*(v51 + 56), v55, v56);
  memcpy(v57, *(v52 + 48), *(v52 + 56) - *(v52 + 48));
  v60 = objc_msgSend_contents(*(v51 + 40), v58, v59);
  v63 = objc_msgSend_contents(*(v52 + 8), v61, v62);
  v66 = objc_msgSend_contents(*(v52 + 24), v64, v65);
  v70 = *objc_msgSend_contents(*(v52 + 16), v67, v68);
  if (!v70)
  {
    goto LABEL_118;
  }

  v71 = 0;
  LODWORD(v72) = 0;
  do
  {
    v73 = *(v63 + 48 * *(v66 + 4 * v71));
    v74 = vsubq_f32(*(v63 + 48 * *(v66 + 4 * (v71 + 1))), v73);
    v75 = vsubq_f32(*(v63 + 48 * *(v66 + 4 * (v71 + 2))), v73);
    v76 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), vnegq_f32(v74)), v75, vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL));
    v77 = vmulq_f32(v76, v76);
    *(v60 + 4 * v72) = sqrtf(v77.f32[1] + (v77.f32[2] + v77.f32[0])) * 0.5;
    v72 = (v72 + 1);
    v71 += 3;
  }

  while (v71 < v70);
  if (!v72)
  {
    goto LABEL_118;
  }

  v78 = *(*v51 + 56) * *(*v51 + 56);
  v77.f32[0] = fminf(v78, 0.000049);
  if (v72 <= 7)
  {
    v79 = 0;
    v80 = 0;
    goto LABEL_97;
  }

  v79 = v72 & 0xFFFFFFF8;
  v83 = vdupq_lane_s32(*v77.f32, 0);
  v84 = v79;
  v85 = (v60 + 16);
  v86 = 0uLL;
  v87 = 0uLL;
  do
  {
    v88 = vrndpq_f32(vdivq_f32(vmulq_n_f32(v85[-1], v78), v83));
    v89 = vrndpq_f32(vdivq_f32(vmulq_n_f32(*v85, v78), v83));
    v85[-1] = v88;
    *v85 = v89;
    v86 = vaddq_s32(v86, vcvtq_u32_f32(v88));
    v87 = vaddq_s32(v87, vcvtq_u32_f32(v89));
    v85 += 2;
    v84 -= 8;
  }

  while (v84);
  v80 = vaddvq_s32(vaddq_s32(v87, v86));
  if (v79 != v72)
  {
LABEL_97:
    v90 = v72 - v79;
    v91 = (v60 + 4 * v79);
    do
    {
      v92 = (v78 * *v91) / v77.f32[0];
      *v91++ = ceilf(v92);
      v80 += vcvtps_u32_f32(v92);
      --v90;
    }

    while (v90);
  }

  v93 = *(v51 + 64);
  if (v80 > v93)
  {
    v94 = 0;
    do
    {
      v95 = *(v60 + 4 * v94);
      if (v95)
      {
        *(v60 + 4 * v94) = ceilf(v95 + -1.0);
        --v80;
      }

      ++v94;
    }

    while (v80 > v93);
  }

  if (!v80)
  {
LABEL_118:
    if (qword_27EE3F548 != -1)
    {
      dispatch_once(&qword_27EE3F548, &unk_2858EBC48);
    }

    v82 = qword_27EE3F540;
    if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_93;
    }

    sub_24610D894(&__p, "BOOL oc::voxel_hashing::MeshSurfaceSamplerGPU::samplePointsFromMesh(const uint32_t)");
    v152 = __p.columns[1].i8[7] >= 0 ? &__p : __p.columns[0].i64[0];
    *buf = 136315394;
    *&buf[4] = v152;
    *&buf[12] = 1026;
    *&buf[14] = 94;
    _os_log_debug_impl(&dword_2460CF000, v82, OS_LOG_TYPE_DEBUG, "%s:%{public}d Can't sample points from mesh - num of computed points is 0", buf, 0x12u);
    if ((__p.columns[1].i8[7] & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_150;
  }

  v96 = objc_msgSend_commandBufferWithDescriptor_(*(*(v51 + 16) + 8), v69, *(v51 + 32));
  v99 = objc_msgSend_contents(*(v51 + 48), v97, v98);
  v102 = 0;
  v103 = 0;
  v104.i64[0] = 0x400000004;
  v104.i64[1] = 0x400000004;
  v105.i64[0] = 0x800000008;
  v105.i64[1] = 0x800000008;
  do
  {
    v106 = vcvtps_u32_f32(*(v60 + 4 * v102));
    if (!v106)
    {
      goto LABEL_106;
    }

    if (v106 < 8 || v103 > -v106)
    {
      for (i = 0; i != v106; ++i)
      {
LABEL_116:
        v117 = (v99 + 8 * v103);
        *v117 = v102;
        v117[1] = i;
        ++v103;
      }

      goto LABEL_106;
    }

    i = v106 & 0xFFFFFFF8;
    v109 = vdupq_n_s32(v102);
    v110 = v106 & 0xFFFFFFF8;
    v111 = v103;
    v112 = xmmword_24613FBC0;
    do
    {
      v113 = vaddq_s32(v112, v104);
      v114 = (v99 + 8 * v111);
      v115 = v109;
      vst2q_f32(v114, *(&v112 - 1));
      v116 = (v99 + 8 * (v111 + 4));
      vst2q_f32(v116, *v109.i8);
      v112 = vaddq_s32(v112, v105);
      v111 += 8;
      v110 -= 8;
    }

    while (v110);
    v103 += i;
    if (i != v106)
    {
      goto LABEL_116;
    }

LABEL_106:
    ++v102;
  }

  while (v102 != v72);
  v161 = v80;
  v160 = *(v52 + 48) != *(v52 + 56);
  v118 = objc_msgSend_computeCommandEncoder(v96, v100, v101, COERCE_DOUBLE(0x100000000), COERCE_DOUBLE(0x400000004), COERCE_DOUBLE(0x800000008));
  objc_msgSend_setLabel_(v118, v119, @"SamplePointsFromTriangleMesh Encoder");
  objc_msgSend_setComputePipelineState_(v118, v120, *(v51 + 24));
  objc_msgSend_setBytes_length_atIndex_(v118, v121, v51 + 144, 16, 0);
  objc_msgSend_setBytes_length_atIndex_(v118, v122, v51 + 64, 4, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v118, v123, *(v52 + 16), 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v118, v124, *(v52 + 24), 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v118, v125, *(v52 + 8), 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v118, v126, *(v51 + 56), 0, 5);
  objc_msgSend_setBytes_length_atIndex_(v118, v127, &v160, 1, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v118, v128, *(v51 + 48), 0, 7);
  objc_msgSend_setBytes_length_atIndex_(v118, v129, &v161, 4, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v118, v130, *(v52 + 40), 0, 9);
  v133 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(v51 + 24), v131, v132);
  __p.columns[0].i64[0] = v161;
  *(__p.columns + 8) = vdupq_n_s64(1uLL);
  *buf = v133;
  *&buf[8] = *(__p.columns + 8);
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v118, v134, &__p, buf);
  objc_msgSend_endEncoding(v118, v135, v136);

  objc_msgSend_commit(v96, v137, v138);
  objc_msgSend_waitUntilCompleted(v96, v139, v140);
  *(v52 + 32) = v80;

LABEL_123:
  kdebug_trace();
LABEL_124:
  v141 = *(a1 + 8);
  if (*(v141 + 8))
  {
    v142 = *(v141 + 624);
    __p.columns[0].i64[0] = MEMORY[0x277D85DD0];
    __p.columns[0].i64[1] = 3221225472;
    __p.columns[1].i64[0] = sub_24613767C;
    __p.columns[1].i64[1] = &unk_278E9B530;
    __p.columns[2].i64[0] = v141 + 576;
    dispatch_sync(v142, &__p);
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v143 = qword_27EE3F698;
    if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(&__p, "void oc::voxel_hashing::VoxelHashingDataGPU::updateMeshWriterBuffer()");
      if (__p.columns[1].i8[7] >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.columns[0].i64[0];
      }

      *buf = 136315394;
      *&buf[4] = p_p;
      *&buf[12] = 1026;
      *&buf[14] = 436;
      _os_log_error_impl(&dword_2460CF000, v143, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (__p.columns[1].i8[7] < 0)
      {
        operator delete(__p.columns[0].i64[0]);
      }
    }
  }

  v144 = sub_2461373A4(*(a1 + 8));
  *objc_msgSend_contents(*v144, v145, v146) = 0;
  v149 = objc_msgSend_contents(v144[2], v147, v148);
  result = 0;
  *v149 = 0;
  return result;
}