@interface _OUFrame
- (_OUFrame)initWithDictionary:(id)a3;
- (_OUFrame)initWithFrame:(id)a3;
- (__CVBuffer)GetSceneColorBufferBGRA;
- (__n128)initWithSceneYUV:(__n128)a3 sceneDepth:(__n128)a4 referenceOriginTranform:(__n128)a5 OUCamera:(uint64_t)a6;
- (__n128)referenceOriginTransform;
- (__n128)setReferenceOriginTransform:(__n128)a3;
- (__n64)GetSceneRgbToDepthRatio;
- (double)GetCameraPoseInVisionWorld;
- (double)GetProjectionMatrixInVisionWorld;
- (double)GetSceneCameraPoseInVisionWorld;
- (double)GetSceneCameraProjectionMatrixInVisionWorld;
- (id)LoadDepth:(id)a3;
- (id)LoadLabel:(id)a3;
- (id)LoadRgb:(id)a3;
- (id)LoadVote:(id)a3;
- (void)ReleaseBuffer;
- (void)dealloc;
@end

@implementation _OUFrame

- (_OUFrame)initWithFrame:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _OUFrame;
  v5 = [(_OUFrame *)&v24 init];
  if (v5)
  {
    [v4 timestamp];
    v5->_timestamp = v6;
    v7 = [v4 camera];
    camera = v5->_camera;
    v5->_camera = v7;

    [v4 referenceOriginTransform];
    *&v5[1].super.isa = v9;
    *&v5[1]._timestamp = v10;
    *&v5[1]._colorBuffer = v11;
    *&v5[1]._sceneColorBuffer = v12;
    v5->_colorBuffer = CVPixelBufferRetain([v4 colorBuffer]);
    v13 = [v4 sceneCamera];
    sceneCamera = v5->_sceneCamera;
    v5->_sceneCamera = v13;

    v5->_sceneColorBuffer = CVPixelBufferRetain([v4 sceneColorBuffer]);
    v5->_sceneDepthBuffer = CVPixelBufferRetain([v4 sceneDepthBuffer]);
    v5->_sceneDepthConfidenceBuffer = CVPixelBufferRetain([v4 sceneDepthConfidenceBuffer]);
    v5->_semanticLabelBuffer = CVPixelBufferRetain([v4 semanticLabelBuffer]);
    v5->_semanticConfidenceBuffer = CVPixelBufferRetain([v4 semanticConfidenceBuffer]);
    v5->_deviceOrientation = [v4 deviceOrientation];
    v5->_semanticLabelBufferOnWideCamera = 0;
    v5->sceneColorBufferBGRA = 0;
    v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      Width = CVPixelBufferGetWidth(v5->_colorBuffer);
      Height = CVPixelBufferGetHeight(v5->_colorBuffer);
      v20 = CVPixelBufferGetWidth(v5->_sceneDepthBuffer);
      v21 = CVPixelBufferGetHeight(v5->_sceneDepthBuffer);
      v22 = CVPixelBufferGetWidth(v5->_semanticLabelBuffer);
      v23 = CVPixelBufferGetHeight(v5->_semanticLabelBuffer);
      *buf = 134219264;
      v26 = Width;
      v27 = 2048;
      v28 = Height;
      v29 = 2048;
      v30 = v20;
      v31 = 2048;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = v23;
      _os_log_debug_impl(&dword_25D1DB000, v15, OS_LOG_TYPE_DEBUG, "The input arframe has rgb-image (%zu x %zu), sem-depth (%zu, %zu), sem (%zu, %zu)", buf, 0x3Eu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (_OUFrame)initWithDictionary:(id)a3
{
  v103[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v101.receiver = self;
  v101.super_class = _OUFrame;
  v5 = [(_OUFrame *)&v101 init];
  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = [v4 objectForKeyedSubscript:@"timestamp"];
  [v6 doubleValue];
  *(v5 + 2) = v7;

  v8 = [v4 objectForKeyedSubscript:@"reference_origin_transform"];
  LOBYTE(v6) = v8 == 0;

  if ((v6 & 1) == 0)
  {
    v9 = [v4 objectForKeyedSubscript:@"reference_origin_transform"];
    float4x4FromNSArray(v9, (v5 + 112));
  }

  v10 = [v4 objectForKeyedSubscript:@"vio_tracking_state"];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [v4 objectForKeyedSubscript:@"vio_tracking_state"];
    *(v5 + 11) = [v12 intValue];
  }

  v13 = [v4 objectForKeyedSubscript:@"device_orientation"];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [v4 objectForKeyedSubscript:@"device_orientation"];
    *(v5 + 12) = [v15 intValue];
  }

  v16 = [v4 objectForKeyedSubscript:@"camera"];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = [v4 objectForKeyedSubscript:@"camera"];
    v19 = OUCameraFromDictionary(v18);
    v20 = *(v5 + 3);
    *(v5 + 3) = v19;
  }

  v21 = [v4 objectForKeyedSubscript:@"scene_camera"];
  v22 = v21 == 0;

  if (!v22)
  {
    v23 = [v4 objectForKeyedSubscript:@"scene_camera"];
    v24 = OUCameraFromDictionary(v23);
    v25 = *(v5 + 5);
    *(v5 + 5) = v24;
  }

  v102 = *MEMORY[0x277CC4DE8];
  v103[0] = MEMORY[0x277CBEC10];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:&v102 count:1];
  v27 = [v4 objectForKeyedSubscript:@"color_buffer"];
  v28 = v27 == 0;

  v29 = MEMORY[0x277CBECE8];
  if (!v28)
  {
    v30 = [v4 objectForKeyedSubscript:@"color_width"];
    v31 = [v30 unsignedIntegerValue];

    v32 = [v4 objectForKeyedSubscript:@"color_height"];
    v33 = [v32 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, v31, v33, 0x34323066u, v26, v5 + 4))
    {
      goto LABEL_33;
    }

    v34 = [v4 objectForKeyedSubscript:@"color_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 4), 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*(v5 + 4));
    DataSize = CVPixelBufferGetDataSize(*(v5 + 4));
    v37 = v34;
    memcpy(BaseAddress, [v34 bytes], DataSize);
    CVPixelBufferUnlockBaseAddress(*(v5 + 4), 0);
  }

  v38 = [v4 objectForKeyedSubscript:@"scene_color_buffer"];
  v39 = v38 == 0;

  if (!v39)
  {
    v40 = [v4 objectForKeyedSubscript:@"scene_color_width"];
    v41 = [v40 unsignedIntegerValue];

    v42 = [v4 objectForKeyedSubscript:@"scene_color_height"];
    v43 = [v42 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, v41, v43, 0x34323066u, v26, v5 + 6))
    {
      goto LABEL_33;
    }

    v44 = [v4 objectForKeyedSubscript:@"scene_color_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 6), 0);
    v45 = CVPixelBufferGetBaseAddress(*(v5 + 6));
    v46 = CVPixelBufferGetDataSize(*(v5 + 6));
    v47 = v44;
    memcpy(v45, [v44 bytes], v46);
    CVPixelBufferUnlockBaseAddress(*(v5 + 6), 0);
  }

  v48 = [v4 objectForKeyedSubscript:@"scene_color_buffer_bgra"];
  v49 = v48 == 0;

  if (v49)
  {
    *(v5 + 1) = 0;
  }

  else
  {
    v50 = [v4 objectForKeyedSubscript:@"scene_color_width"];
    v51 = [v50 unsignedIntegerValue];

    v52 = [v4 objectForKeyedSubscript:@"scene_color_height"];
    v53 = [v52 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, v51, v53, 0x42475241u, v26, v5 + 1))
    {
      goto LABEL_33;
    }

    v54 = [v4 objectForKeyedSubscript:@"scene_color_buffer_bgra"];
    CVPixelBufferLockBaseAddress(*(v5 + 1), 0);
    v55 = CVPixelBufferGetBaseAddress(*(v5 + 1));
    v56 = CVPixelBufferGetDataSize(*(v5 + 1));
    v57 = v54;
    memcpy(v55, [v54 bytes], v56);
    CVPixelBufferUnlockBaseAddress(*(v5 + 1), 0);
  }

  v58 = [v4 objectForKeyedSubscript:@"semantic_label_buffer"];
  v59 = v58 == 0;

  if (!v59)
  {
    v60 = [v4 objectForKeyedSubscript:@"semantic_label_width"];
    v61 = [v60 unsignedIntegerValue];

    v62 = [v4 objectForKeyedSubscript:@"semantic_label_height"];
    v63 = [v62 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, v61, v63, 0x4C303038u, v26, v5 + 9))
    {
      goto LABEL_33;
    }

    v64 = [v4 objectForKeyedSubscript:@"semantic_label_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 9), 0);
    v65 = CVPixelBufferGetBaseAddress(*(v5 + 9));
    v66 = CVPixelBufferGetDataSize(*(v5 + 9));
    v67 = v64;
    memcpy(v65, [v64 bytes], v66);
    CVPixelBufferUnlockBaseAddress(*(v5 + 9), 0);
  }

  v68 = [v4 objectForKeyedSubscript:@"semantic_confidence_buffer"];
  v69 = v68 == 0;

  if (!v69)
  {
    v70 = [v4 objectForKeyedSubscript:@"semantic_confidence_width"];
    v71 = [v70 unsignedIntegerValue];

    v72 = [v4 objectForKeyedSubscript:@"semantic_confidence_height"];
    v73 = [v72 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, v71, v73, 0x4C303066u, v26, v5 + 10))
    {
      goto LABEL_33;
    }

    v74 = [v4 objectForKeyedSubscript:@"semantic_confidence_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 10), 0);
    v75 = CVPixelBufferGetBaseAddress(*(v5 + 10));
    v76 = CVPixelBufferGetDataSize(*(v5 + 10));
    v77 = v74;
    memcpy(v75, [v74 bytes], v76);
    CVPixelBufferUnlockBaseAddress(*(v5 + 10), 0);
  }

  v78 = [v4 objectForKeyedSubscript:@"scene_depth_buffer"];
  v79 = v78 == 0;

  if (v79)
  {
LABEL_31:
    v88 = [v4 objectForKeyedSubscript:@"scene_depth_confidence_buffer"];
    v89 = v88 == 0;

    if (!v89)
    {
      v90 = [v4 objectForKeyedSubscript:@"scene_depth_confidence_width"];
      v91 = [v90 unsignedIntegerValue];

      v92 = [v4 objectForKeyedSubscript:@"scene_depth_confidence_height"];
      v93 = [v92 unsignedIntegerValue];

      if (CVPixelBufferCreate(*v29, v91, v93, 0x66646570u, v26, v5 + 8))
      {
        goto LABEL_33;
      }

      v95 = [v4 objectForKeyedSubscript:@"scene_depth_confidence_buffer"];
      CVPixelBufferLockBaseAddress(*(v5 + 8), 0);
      v96 = CVPixelBufferGetBaseAddress(*(v5 + 8));
      v97 = CVPixelBufferGetDataSize(*(v5 + 8));
      v98 = v95;
      memcpy(v96, [v95 bytes], v97);
      CVPixelBufferUnlockBaseAddress(*(v5 + 8), 0);
    }

LABEL_36:
    v94 = v5;
    goto LABEL_37;
  }

  v80 = [v4 objectForKeyedSubscript:@"scene_depth_width"];
  v81 = [v80 unsignedIntegerValue];

  v82 = [v4 objectForKeyedSubscript:@"scene_depth_height"];
  v83 = [v82 unsignedIntegerValue];

  if (!CVPixelBufferCreate(*v29, v81, v83, 0x66646570u, v26, v5 + 7))
  {
    v84 = [v4 objectForKeyedSubscript:@"scene_depth_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 7), 0);
    v85 = CVPixelBufferGetBaseAddress(*(v5 + 7));
    v86 = CVPixelBufferGetDataSize(*(v5 + 7));
    v87 = v84;
    memcpy(v85, [v84 bytes], v86);
    CVPixelBufferUnlockBaseAddress(*(v5 + 7), 0);

    goto LABEL_31;
  }

LABEL_33:

  v94 = 0;
LABEL_37:

  v99 = *MEMORY[0x277D85DE8];
  return v94;
}

- (void)ReleaseBuffer
{
  sceneDepthBuffer = self->_sceneDepthBuffer;
  if (sceneDepthBuffer)
  {
    CVPixelBufferRelease(sceneDepthBuffer);
    self->_sceneDepthBuffer = 0;
  }

  sceneDepthConfidenceBuffer = self->_sceneDepthConfidenceBuffer;
  if (sceneDepthConfidenceBuffer)
  {
    CVPixelBufferRelease(sceneDepthConfidenceBuffer);
    self->_sceneDepthConfidenceBuffer = 0;
  }

  semanticLabelBuffer = self->_semanticLabelBuffer;
  if (semanticLabelBuffer)
  {
    CVPixelBufferRelease(semanticLabelBuffer);
    self->_semanticLabelBuffer = 0;
  }

  semanticLabelBufferOnWideCamera = self->_semanticLabelBufferOnWideCamera;
  if (semanticLabelBufferOnWideCamera)
  {
    CVPixelBufferRelease(semanticLabelBufferOnWideCamera);
    self->_semanticLabelBufferOnWideCamera = 0;
  }

  semanticConfidenceBuffer = self->_semanticConfidenceBuffer;
  if (semanticConfidenceBuffer)
  {
    CVPixelBufferRelease(semanticConfidenceBuffer);
    self->_semanticConfidenceBuffer = 0;
  }

  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CVPixelBufferRelease(colorBuffer);
    self->_colorBuffer = 0;
  }

  sceneColorBuffer = self->_sceneColorBuffer;
  if (sceneColorBuffer)
  {
    CVPixelBufferRelease(sceneColorBuffer);
    self->_sceneColorBuffer = 0;
  }

  sceneColorBufferBGRA = self->sceneColorBufferBGRA;
  if (sceneColorBufferBGRA)
  {
    CVPixelBufferRelease(sceneColorBufferBGRA);
    self->sceneColorBufferBGRA = 0;
  }
}

- (void)dealloc
{
  [(_OUFrame *)self ReleaseBuffer];
  v3.receiver = self;
  v3.super_class = _OUFrame;
  [(_OUFrame *)&v3 dealloc];
}

- (double)GetCameraPoseInVisionWorld
{
  v18 = ARKit_VW_RW;
  v20 = *algn_28155B050;
  v14 = unk_28155B070;
  v16 = xmmword_28155B060;
  v27 = __invert_f4(*(a1 + 112));
  v2 = 0;
  v22 = v27;
  do
  {
    *(&v23 + v2 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*&v22.columns[v2])), v20, *v22.columns[v2].f32, 1), v16, v22.columns[v2], 2), v14, v22.columns[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  v19 = v23;
  v21 = v24;
  v15 = v26;
  v17 = v25;
  [*(a1 + 24) transform];
  v3 = 0;
  v22.columns[0] = v4;
  v22.columns[1] = v5;
  v22.columns[2] = v6;
  v22.columns[3] = v7;
  do
  {
    *(&v23 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*&v22.columns[v3])), v21, *v22.columns[v3].f32, 1), v17, v22.columns[v3], 2), v15, v22.columns[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  v8 = 0;
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v22 = *RC_VC;
  do
  {
    *(&v23 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*&v22.columns[v8])), v10, *v22.columns[v8].f32, 1), v11, v22.columns[v8], 2), v12, v22.columns[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  return *v23.i64;
}

- (double)GetSceneCameraPoseInVisionWorld
{
  v18 = ARKit_VW_RW;
  v20 = *algn_28155B050;
  v14 = unk_28155B070;
  v16 = xmmword_28155B060;
  v27 = __invert_f4(*(a1 + 112));
  v2 = 0;
  v22 = v27;
  do
  {
    *(&v23 + v2 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*&v22.columns[v2])), v20, *v22.columns[v2].f32, 1), v16, v22.columns[v2], 2), v14, v22.columns[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  v19 = v23;
  v21 = v24;
  v15 = v26;
  v17 = v25;
  [*(a1 + 40) transform];
  v3 = 0;
  v22.columns[0] = v4;
  v22.columns[1] = v5;
  v22.columns[2] = v6;
  v22.columns[3] = v7;
  do
  {
    *(&v23 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*&v22.columns[v3])), v21, *v22.columns[v3].f32, 1), v17, v22.columns[v3], 2), v15, v22.columns[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  v8 = 0;
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v22 = *RC_VC;
  do
  {
    *(&v23 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*&v22.columns[v8])), v10, *v22.columns[v8].f32, 1), v11, v22.columns[v8], 2), v12, v22.columns[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  return *v23.i64;
}

- (double)GetProjectionMatrixInVisionWorld
{
  [a1[3] intrinsics];
  v2.i32[3] = 0;
  v3.i32[3] = 0;
  v8 = v3;
  v9 = v2;
  v4.i32[3] = 0;
  v7 = v4;
  [a1 GetCameraPoseInVisionWorld];
  v13 = __invert_f4(v12);
  v5 = 0;
  v10 = v13;
  do
  {
    *(&v11 + v5 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*&v10.columns[v5])), v8, *v10.columns[v5].f32, 1), v7, v10.columns[v5], 2), xmmword_25D277B90, v10.columns[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  return *&v11;
}

- (double)GetSceneCameraProjectionMatrixInVisionWorld
{
  [a1[5] intrinsics];
  v2.i32[3] = 0;
  v3.i32[3] = 0;
  v8 = v3;
  v9 = v2;
  v4.i32[3] = 0;
  v7 = v4;
  [a1 GetSceneCameraPoseInVisionWorld];
  v13 = __invert_f4(v12);
  v5 = 0;
  v10 = v13;
  do
  {
    *(&v11 + v5 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*&v10.columns[v5])), v8, *v10.columns[v5].f32, 1), v7, v10.columns[v5], 2), xmmword_25D277B90, v10.columns[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  return *&v11;
}

- (__n64)GetSceneRgbToDepthRatio
{
  Width = CVPixelBufferGetWidth(*(a1 + 48));
  Height = CVPixelBufferGetHeight(*(a1 + 48));
  v4 = CVPixelBufferGetWidth(*(a1 + 56));
  v5 = CVPixelBufferGetHeight(*(a1 + 56));
  result.n64_f32[0] = Width / v4;
  result.n64_f32[1] = Height / v5;
  return result;
}

- (__CVBuffer)GetSceneColorBufferBGRA
{
  p_sceneColorBufferBGRA = &self->sceneColorBufferBGRA;
  result = self->sceneColorBufferBGRA;
  if (!result)
  {
    if (utils::ConvertColor420fTo32BGRA(self->_sceneColorBuffer, p_sceneColorBufferBGRA, v2))
    {
      v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [_OUFrame GetSceneColorBufferBGRA];
      }

      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, &unk_25D2878C2);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    return *p_sceneColorBufferBGRA;
  }

  return result;
}

- (__n128)referenceOriginTransform
{
  result = *(a1 + 112);
  v2 = *(a1 + 128);
  v3 = *(a1 + 144);
  v4 = *(a1 + 160);
  return result;
}

- (__n128)setReferenceOriginTransform:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  return result;
}

- (__n128)initWithSceneYUV:(__n128)a3 sceneDepth:(__n128)a4 referenceOriginTranform:(__n128)a5 OUCamera:(uint64_t)a6
{
  v13 = a9;
  v21.receiver = a1;
  v21.super_class = _OUFrame;
  v14 = [(_OUFrame *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_sceneColorBuffer = a7;
    v14->_sceneDepthBuffer = a8;
    objc_storeStrong(&v14->_sceneCamera, a9);
    v15[7] = a2;
    v15[8] = a3;
    v15[9] = a4;
    v15[10] = a5;
    v15->n128_u64[1] = 0;
  }

  return v15;
}

- (id)LoadDepth:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  LoadDepthToDictionary(v3, v4);

  return v4;
}

- (id)LoadRgb:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  LoadRGBToDictionary(v3, v4);

  return v4;
}

- (id)LoadLabel:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  LoadSemanticToDictionary(v3, v4);

  return v4;
}

- (id)LoadVote:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  LoadSemanticConfToDictionary(v3, v4);

  return v4;
}

@end