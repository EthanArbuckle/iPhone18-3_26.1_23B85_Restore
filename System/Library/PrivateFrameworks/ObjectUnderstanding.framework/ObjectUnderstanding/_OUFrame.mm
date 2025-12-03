@interface _OUFrame
- (_OUFrame)initWithDictionary:(id)dictionary;
- (_OUFrame)initWithFrame:(id)frame;
- (__CVBuffer)GetSceneColorBufferBGRA;
- (__n128)initWithSceneYUV:(__n128)v sceneDepth:(__n128)depth referenceOriginTranform:(__n128)tranform OUCamera:(uint64_t)camera;
- (__n128)referenceOriginTransform;
- (__n128)setReferenceOriginTransform:(__n128)transform;
- (__n64)GetSceneRgbToDepthRatio;
- (double)GetCameraPoseInVisionWorld;
- (double)GetProjectionMatrixInVisionWorld;
- (double)GetSceneCameraPoseInVisionWorld;
- (double)GetSceneCameraProjectionMatrixInVisionWorld;
- (id)LoadDepth:(id)depth;
- (id)LoadLabel:(id)label;
- (id)LoadRgb:(id)rgb;
- (id)LoadVote:(id)vote;
- (void)ReleaseBuffer;
- (void)dealloc;
@end

@implementation _OUFrame

- (_OUFrame)initWithFrame:(id)frame
{
  v37 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v24.receiver = self;
  v24.super_class = _OUFrame;
  v5 = [(_OUFrame *)&v24 init];
  if (v5)
  {
    [frameCopy timestamp];
    v5->_timestamp = v6;
    camera = [frameCopy camera];
    camera = v5->_camera;
    v5->_camera = camera;

    [frameCopy referenceOriginTransform];
    *&v5[1].super.isa = v9;
    *&v5[1]._timestamp = v10;
    *&v5[1]._colorBuffer = v11;
    *&v5[1]._sceneColorBuffer = v12;
    v5->_colorBuffer = CVPixelBufferRetain([frameCopy colorBuffer]);
    sceneCamera = [frameCopy sceneCamera];
    sceneCamera = v5->_sceneCamera;
    v5->_sceneCamera = sceneCamera;

    v5->_sceneColorBuffer = CVPixelBufferRetain([frameCopy sceneColorBuffer]);
    v5->_sceneDepthBuffer = CVPixelBufferRetain([frameCopy sceneDepthBuffer]);
    v5->_sceneDepthConfidenceBuffer = CVPixelBufferRetain([frameCopy sceneDepthConfidenceBuffer]);
    v5->_semanticLabelBuffer = CVPixelBufferRetain([frameCopy semanticLabelBuffer]);
    v5->_semanticConfidenceBuffer = CVPixelBufferRetain([frameCopy semanticConfidenceBuffer]);
    v5->_deviceOrientation = [frameCopy deviceOrientation];
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

- (_OUFrame)initWithDictionary:(id)dictionary
{
  v103[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v101.receiver = self;
  v101.super_class = _OUFrame;
  v5 = [(_OUFrame *)&v101 init];
  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  [v6 doubleValue];
  *(v5 + 2) = v7;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"reference_origin_transform"];
  LOBYTE(v6) = v8 == 0;

  if ((v6 & 1) == 0)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"reference_origin_transform"];
    float4x4FromNSArray(v9, (v5 + 112));
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"vio_tracking_state"];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:@"vio_tracking_state"];
    *(v5 + 11) = [v12 intValue];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"device_orientation"];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [dictionaryCopy objectForKeyedSubscript:@"device_orientation"];
    *(v5 + 12) = [v15 intValue];
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"camera"];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = [dictionaryCopy objectForKeyedSubscript:@"camera"];
    v19 = OUCameraFromDictionary(v18);
    v20 = *(v5 + 3);
    *(v5 + 3) = v19;
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"scene_camera"];
  v22 = v21 == 0;

  if (!v22)
  {
    v23 = [dictionaryCopy objectForKeyedSubscript:@"scene_camera"];
    v24 = OUCameraFromDictionary(v23);
    v25 = *(v5 + 5);
    *(v5 + 5) = v24;
  }

  v102 = *MEMORY[0x277CC4DE8];
  v103[0] = MEMORY[0x277CBEC10];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:&v102 count:1];
  v27 = [dictionaryCopy objectForKeyedSubscript:@"color_buffer"];
  v28 = v27 == 0;

  v29 = MEMORY[0x277CBECE8];
  if (!v28)
  {
    v30 = [dictionaryCopy objectForKeyedSubscript:@"color_width"];
    unsignedIntegerValue = [v30 unsignedIntegerValue];

    v32 = [dictionaryCopy objectForKeyedSubscript:@"color_height"];
    unsignedIntegerValue2 = [v32 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, unsignedIntegerValue, unsignedIntegerValue2, 0x34323066u, v26, v5 + 4))
    {
      goto LABEL_33;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"color_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 4), 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*(v5 + 4));
    DataSize = CVPixelBufferGetDataSize(*(v5 + 4));
    v37 = v34;
    memcpy(BaseAddress, [v34 bytes], DataSize);
    CVPixelBufferUnlockBaseAddress(*(v5 + 4), 0);
  }

  v38 = [dictionaryCopy objectForKeyedSubscript:@"scene_color_buffer"];
  v39 = v38 == 0;

  if (!v39)
  {
    v40 = [dictionaryCopy objectForKeyedSubscript:@"scene_color_width"];
    unsignedIntegerValue3 = [v40 unsignedIntegerValue];

    v42 = [dictionaryCopy objectForKeyedSubscript:@"scene_color_height"];
    unsignedIntegerValue4 = [v42 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, unsignedIntegerValue3, unsignedIntegerValue4, 0x34323066u, v26, v5 + 6))
    {
      goto LABEL_33;
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"scene_color_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 6), 0);
    v45 = CVPixelBufferGetBaseAddress(*(v5 + 6));
    v46 = CVPixelBufferGetDataSize(*(v5 + 6));
    v47 = v44;
    memcpy(v45, [v44 bytes], v46);
    CVPixelBufferUnlockBaseAddress(*(v5 + 6), 0);
  }

  v48 = [dictionaryCopy objectForKeyedSubscript:@"scene_color_buffer_bgra"];
  v49 = v48 == 0;

  if (v49)
  {
    *(v5 + 1) = 0;
  }

  else
  {
    v50 = [dictionaryCopy objectForKeyedSubscript:@"scene_color_width"];
    unsignedIntegerValue5 = [v50 unsignedIntegerValue];

    v52 = [dictionaryCopy objectForKeyedSubscript:@"scene_color_height"];
    unsignedIntegerValue6 = [v52 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, unsignedIntegerValue5, unsignedIntegerValue6, 0x42475241u, v26, v5 + 1))
    {
      goto LABEL_33;
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"scene_color_buffer_bgra"];
    CVPixelBufferLockBaseAddress(*(v5 + 1), 0);
    v55 = CVPixelBufferGetBaseAddress(*(v5 + 1));
    v56 = CVPixelBufferGetDataSize(*(v5 + 1));
    v57 = v54;
    memcpy(v55, [v54 bytes], v56);
    CVPixelBufferUnlockBaseAddress(*(v5 + 1), 0);
  }

  v58 = [dictionaryCopy objectForKeyedSubscript:@"semantic_label_buffer"];
  v59 = v58 == 0;

  if (!v59)
  {
    v60 = [dictionaryCopy objectForKeyedSubscript:@"semantic_label_width"];
    unsignedIntegerValue7 = [v60 unsignedIntegerValue];

    v62 = [dictionaryCopy objectForKeyedSubscript:@"semantic_label_height"];
    unsignedIntegerValue8 = [v62 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, unsignedIntegerValue7, unsignedIntegerValue8, 0x4C303038u, v26, v5 + 9))
    {
      goto LABEL_33;
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"semantic_label_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 9), 0);
    v65 = CVPixelBufferGetBaseAddress(*(v5 + 9));
    v66 = CVPixelBufferGetDataSize(*(v5 + 9));
    v67 = v64;
    memcpy(v65, [v64 bytes], v66);
    CVPixelBufferUnlockBaseAddress(*(v5 + 9), 0);
  }

  v68 = [dictionaryCopy objectForKeyedSubscript:@"semantic_confidence_buffer"];
  v69 = v68 == 0;

  if (!v69)
  {
    v70 = [dictionaryCopy objectForKeyedSubscript:@"semantic_confidence_width"];
    unsignedIntegerValue9 = [v70 unsignedIntegerValue];

    v72 = [dictionaryCopy objectForKeyedSubscript:@"semantic_confidence_height"];
    unsignedIntegerValue10 = [v72 unsignedIntegerValue];

    if (CVPixelBufferCreate(*v29, unsignedIntegerValue9, unsignedIntegerValue10, 0x4C303066u, v26, v5 + 10))
    {
      goto LABEL_33;
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"semantic_confidence_buffer"];
    CVPixelBufferLockBaseAddress(*(v5 + 10), 0);
    v75 = CVPixelBufferGetBaseAddress(*(v5 + 10));
    v76 = CVPixelBufferGetDataSize(*(v5 + 10));
    v77 = v74;
    memcpy(v75, [v74 bytes], v76);
    CVPixelBufferUnlockBaseAddress(*(v5 + 10), 0);
  }

  v78 = [dictionaryCopy objectForKeyedSubscript:@"scene_depth_buffer"];
  v79 = v78 == 0;

  if (v79)
  {
LABEL_31:
    v88 = [dictionaryCopy objectForKeyedSubscript:@"scene_depth_confidence_buffer"];
    v89 = v88 == 0;

    if (!v89)
    {
      v90 = [dictionaryCopy objectForKeyedSubscript:@"scene_depth_confidence_width"];
      unsignedIntegerValue11 = [v90 unsignedIntegerValue];

      v92 = [dictionaryCopy objectForKeyedSubscript:@"scene_depth_confidence_height"];
      unsignedIntegerValue12 = [v92 unsignedIntegerValue];

      if (CVPixelBufferCreate(*v29, unsignedIntegerValue11, unsignedIntegerValue12, 0x66646570u, v26, v5 + 8))
      {
        goto LABEL_33;
      }

      v95 = [dictionaryCopy objectForKeyedSubscript:@"scene_depth_confidence_buffer"];
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

  v80 = [dictionaryCopy objectForKeyedSubscript:@"scene_depth_width"];
  unsignedIntegerValue13 = [v80 unsignedIntegerValue];

  v82 = [dictionaryCopy objectForKeyedSubscript:@"scene_depth_height"];
  unsignedIntegerValue14 = [v82 unsignedIntegerValue];

  if (!CVPixelBufferCreate(*v29, unsignedIntegerValue13, unsignedIntegerValue14, 0x66646570u, v26, v5 + 7))
  {
    v84 = [dictionaryCopy objectForKeyedSubscript:@"scene_depth_buffer"];
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
  v27 = __invert_f4(*(self + 112));
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
  [*(self + 24) transform];
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
  v27 = __invert_f4(*(self + 112));
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
  [*(self + 40) transform];
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
  [self[3] intrinsics];
  v2.i32[3] = 0;
  v3.i32[3] = 0;
  v8 = v3;
  v9 = v2;
  v4.i32[3] = 0;
  v7 = v4;
  [self GetCameraPoseInVisionWorld];
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
  [self[5] intrinsics];
  v2.i32[3] = 0;
  v3.i32[3] = 0;
  v8 = v3;
  v9 = v2;
  v4.i32[3] = 0;
  v7 = v4;
  [self GetSceneCameraPoseInVisionWorld];
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
  Width = CVPixelBufferGetWidth(*(self + 48));
  Height = CVPixelBufferGetHeight(*(self + 48));
  v4 = CVPixelBufferGetWidth(*(self + 56));
  v5 = CVPixelBufferGetHeight(*(self + 56));
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
  result = *(self + 112);
  v2 = *(self + 128);
  v3 = *(self + 144);
  v4 = *(self + 160);
  return result;
}

- (__n128)setReferenceOriginTransform:(__n128)transform
{
  result[7] = a2;
  result[8] = transform;
  result[9] = a4;
  result[10] = a5;
  return result;
}

- (__n128)initWithSceneYUV:(__n128)v sceneDepth:(__n128)depth referenceOriginTranform:(__n128)tranform OUCamera:(uint64_t)camera
{
  v13 = a9;
  v21.receiver = self;
  v21.super_class = _OUFrame;
  v14 = [(_OUFrame *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_sceneColorBuffer = a7;
    v14->_sceneDepthBuffer = a8;
    objc_storeStrong(&v14->_sceneCamera, a9);
    v15[7] = a2;
    v15[8] = v;
    v15[9] = depth;
    v15[10] = tranform;
    v15->n128_u64[1] = 0;
  }

  return v15;
}

- (id)LoadDepth:(id)depth
{
  depthCopy = depth;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  LoadDepthToDictionary(depthCopy, v4);

  return v4;
}

- (id)LoadRgb:(id)rgb
{
  rgbCopy = rgb;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  LoadRGBToDictionary(rgbCopy, v4);

  return v4;
}

- (id)LoadLabel:(id)label
{
  labelCopy = label;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  LoadSemanticToDictionary(labelCopy, v4);

  return v4;
}

- (id)LoadVote:(id)vote
{
  voteCopy = vote;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  LoadSemanticConfToDictionary(voteCopy, v4);

  return v4;
}

@end