@interface OUPipelineOnline
- (BOOL)updateCameraWithValid:(id)valid ouframe:(id)ouframe;
- (BOOL)updateWorldPCWithKeyframes:(id)keyframes;
- (OUPipelineOnline)init;
- (OUPipelineOnline)initWithConfig:(id)config;
- (id).cxx_construct;
- (id)updatePipelineWithKeyframes:(double)keyframes currentCameraPose:(double)pose;
- (id)updatePipelineWithKeyframes:(id)keyframes ouframe:(id)ouframe;
- (void)CommonInit;
- (void)clear;
- (void)getPointCloudFromOUFrame:(simd_float4)frame scenUnderstandingPose:(simd_float4)pose;
- (void)updateObjectAsset;
@end

@implementation OUPipelineOnline

- (OUPipelineOnline)init
{
  v4.receiver = self;
  v4.super_class = OUPipelineOnline;
  v2 = [(OUPipelineOnline *)&v4 init];
  v2->enable_3dor_ = 1;
  [(OUPipelineOnline *)v2 CommonInit];
  return v2;
}

- (OUPipelineOnline)initWithConfig:(id)config
{
  configCopy = config;
  v8.receiver = self;
  v8.super_class = OUPipelineOnline;
  v5 = [(OUPipelineOnline *)&v8 init];
  v6 = v5;
  if (v5)
  {
    -[OU3DObjectDetector setRgbRefinementEnabled:](v5->ou3dod_, "setRgbRefinementEnabled:", [configCopy enableRgbRefinement]);
    -[OU3DObjectDetector setObjectRepresentationEnabled:](v6->ou3dod_, "setObjectRepresentationEnabled:", [configCopy enable3DOROnline]);
    v6->enable_3dor_ = [configCopy enable3DOROnline];
    [(OUPipelineOnline *)v6 CommonInit];
  }

  return v6;
}

- (void)CommonInit
{
  v3 = objc_alloc_init(OUObjectAsset);
  objectAsset = self->objectAsset_;
  self->objectAsset_ = v3;

  *&self->num_pre_key_frames_ = 0;
  self->depth_confidence_threshold_ = 0.8;
  allObjects = self->allObjects;
  self->allObjects = MEMORY[0x277CBEBF8];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  accumulatedPointCloud = self->accumulatedPointCloud_;
  self->accumulatedPointCloud_ = v6;

  v8 = [[OU3DObjectDetector alloc] init:1];
  ou3dod = self->ou3dod_;
  self->ou3dod_ = v8;

  v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25D1DB000, v10, OS_LOG_TYPE_INFO, "Init 3D Object Detection online [done].", buf, 2u);
  }

  if (self->enable_3dor_)
  {
    operator new();
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [standardUserDefaults BOOLForKey:@"com.apple.ObjectUnderstanding.write_debug_data"];

  self->write_debug_output_ = v12;
}

- (void)clear
{
  [(OUPipelineOnline *)self CommonInit];
  [(OU3DObjectDetector *)self->ou3dod_ clear];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  accumulatedPointCloud = self->accumulatedPointCloud_;
  self->accumulatedPointCloud_ = v3;

  *&self->num_pre_key_frames_ = 0;
}

- (BOOL)updateCameraWithValid:(id)valid ouframe:(id)ouframe
{
  validCopy = valid;
  ouframeCopy = ouframe;
  v8 = ouframeCopy;
  if (!validCopy)
  {
    goto LABEL_9;
  }

  camera = [ouframeCopy camera];
  if (camera)
  {
    sceneCamera = [v8 sceneCamera];
    if (sceneCamera && [v8 sceneColorBuffer] && objc_msgSend(v8, "semanticLabelBuffer"))
    {
      sceneColorBuffer = [v8 sceneColorBuffer];

      if (sceneColorBuffer)
      {
        camera2 = [v8 camera];
        camera = self->camera_;
        self->camera_ = camera2;

        v14 = [[_OUFrame alloc] initWithFrame:v8];
        arframe = self->arframe_;
        self->arframe_ = v14;

        [(_OUFrame *)self->arframe_ GetCameraPoseInVisionWorld];
        *self->_anon_30 = v16;
        *&self->_anon_30[16] = v17;
        *&self->_anon_30[32] = v18;
        *&self->_anon_30[48] = v19;
        [(_OUFrame *)self->arframe_ GetSceneCameraPoseInVisionWorld];
        *self->_anon_70 = v20;
        *&self->_anon_70[16] = v21;
        LOBYTE(camera) = 1;
        *&self->_anon_70[32] = v22;
        *&self->_anon_70[48] = v23;
        goto LABEL_10;
      }
    }

    else
    {
    }

LABEL_9:
    LOBYTE(camera) = 0;
  }

LABEL_10:

  return camera;
}

- (void)getPointCloudFromOUFrame:(simd_float4)frame scenUnderstandingPose:(simd_float4)pose
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a7;
  kdebug_trace();
  v9 = *(self + 200);
  CameraPCFromARFrameSceneCamera(v8, 4u, &v31);
  camera = [v8 camera];
  SampleSemantics(&v31, camera, [v8 semanticLabelBuffer], objc_msgSend(v8, "semanticConfidenceBuffer"), v28, a2, frame, pose, a5);

  v11 = v31;
  v12 = v32;
  if (v31 == v32)
  {
    v13 = v31;
  }

  else
  {
    do
    {
      *v11->f32 = vaddq_f32(a5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*v11->f32)), frame, *v11, 1), pose, *v11->f32, 2));
      v11 += 2;
    }

    while (v11 != v12);
    v11 = v31;
    v13 = v32;
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, (v13 - v11) >> 4);
  if (v32 != v31)
  {
    v14 = 0;
    do
    {
      *(__p[0] + v14++) = xmmword_25D277BC0;
    }

    while (v14 < (v32 - v31) >> 4);
  }

  v15 = [OUPointCloud alloc];
  v16 = [OUPointCloud initWithCount:v15 points:"initWithCount:points:semanticLabels:semanticVotes:colors:" semanticLabels:(v32 - v31) >> 4 semanticVotes:? colors:?];
  v17 = *(self + 184);
  *(self + 184) = v16;

  v18 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    [v8 timestamp];
    v20 = v19;
    v21 = [*(self + 184) count];
    *buf = 134218240;
    v34 = v20;
    v35 = 2048;
    v36 = v21;
    _os_log_impl(&dword_25D1DB000, v18, OS_LOG_TYPE_INFO, "Updating world point cloud with frame at time %f with %zu points.", buf, 0x16u);
  }

  kdebug_trace();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateWorldPCWithKeyframes:(id)keyframes
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = keyframes;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        pointsToWorld = [v7 pointsToWorld];
        pointsToWorld2 = [v7 pointsToWorld];
        v10 = [v7 count];
        __p = 0;
        v24 = 0;
        v25 = 0;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, pointsToWorld, pointsToWorld2 + 16 * v10, (pointsToWorld2 + 16 * v10 - pointsToWorld) >> 4);
        v11 = [OUPointCloud alloc];
        v12 = [v7 count];
        v13 = -[OUPointCloud initWithCount:points:semanticLabels:semanticVotes:colors:](v11, "initWithCount:points:semanticLabels:semanticVotes:colors:", v12, __p, [v7 semanticLabels], objc_msgSend(v7, "semanticVotes"), objc_msgSend(v7, "colors"));
        accumulatedPointCloud = self->accumulatedPointCloud_;
        identifier = [v7 identifier];
        [(NSMutableDictionary *)accumulatedPointCloud setObject:v13 forKey:identifier];

        if (__p)
        {
          v24 = __p;
          operator delete(__p);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  allKeys = [(NSMutableDictionary *)self->accumulatedPointCloud_ allKeys];
  self->num_cur_key_frames_ = [allKeys count];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v18 = [standardUserDefaults BOOLForKey:@"3dod_earlyout_accumulation"];

  if (v18)
  {
    v19 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [OUPipelineOnline updateWorldPCWithKeyframes:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18 ^ 1;
}

- (void)updateObjectAsset
{
  [(OUObjectAsset *)self->objectAsset_ setObjects:self->allObjects];
  v3 = objc_alloc_init(OUPointCloud);
  [(OUObjectAsset *)self->objectAsset_ setFrustumPointCloud:?];
}

- (id)updatePipelineWithKeyframes:(double)keyframes currentCameraPose:(double)pose
{
  v8 = a7;
  if ([self updateWorldPCWithKeyframes:v8])
  {
    v9 = [*(self + 216) updateWithAccumulatePC:*(self + 176) currentCameraPose:{a2, keyframes, pose, a5}];
    v10 = *(self + 208);
    *(self + 208) = v9;

    [self updateObjectAsset];
    v11 = *(self + 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)updatePipelineWithKeyframes:(id)keyframes ouframe:(id)ouframe
{
  keyframesCopy = keyframes;
  ouframeCopy = ouframe;
  if (![(OUPipelineOnline *)self updateCameraWithValid:keyframesCopy ouframe:ouframeCopy])
  {
    p_arframe = &self->arframe_;
LABEL_11:
    [(_OUFrame *)*p_arframe ReleaseBuffer];
    v18 = self->objectAsset_;
    goto LABEL_13;
  }

  if ([(OUPipelineOnline *)self updateWorldPCWithKeyframes:keyframesCopy])
  {
    if (self->write_debug_output_)
    {
      ptr = self->frame_writer_.__ptr_;
      if (!ptr)
      {
        v9 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v9 setDateFormat:@"MM_dd_yyyy_HH_mm_ss_SSS"];
        v10 = MEMORY[0x277CCACA8];
        date = [MEMORY[0x277CBEAA8] date];
        v12 = [v9 stringFromDate:date];
        v13 = [v10 stringWithFormat:@"%@/%@", @"/var/mobile/Documents/Rooms/OU_dump", v12];

        v14 = time(0);
        srand(v14);
        [v13 UTF8String];
        rand();
        std::make_unique[abi:ne200100]<utils::OUFrameWriter,char const*,int,BOOL,0>();
      }

      utils::OUFrameWriter::Write(ptr, self->arframe_, keyframesCopy);
    }

    p_arframe = &self->arframe_;
    v16 = [(OU3DObjectDetector *)self->ou3dod_ updateWithAccumulatePC:self->accumulatedPointCloud_ ouframe:self->arframe_];
    allObjects = self->allObjects;
    self->allObjects = v16;

    if (self->enable_3dor_)
    {
      ou3dor::OU3DObjectRepresentation::AddObjects2DFeatures(self->ou3dor_.__ptr_, self->arframe_, self->allObjects);
    }

    [(OUPipelineOnline *)self updateObjectAsset];
    goto LABEL_11;
  }

  [(_OUFrame *)self->arframe_ ReleaseBuffer];
  v18 = 0;
LABEL_13:

  return v18;
}

- (id).cxx_construct
{
  *(self + 28) = 0;
  *(self + 30) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  return self;
}

- (void)updateWorldPCWithKeyframes:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"3dod_earlyout_accumulation";
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end