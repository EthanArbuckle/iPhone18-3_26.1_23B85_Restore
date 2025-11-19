@interface OUPipelineOnline
- (BOOL)updateCameraWithValid:(id)a3 ouframe:(id)a4;
- (BOOL)updateWorldPCWithKeyframes:(id)a3;
- (OUPipelineOnline)init;
- (OUPipelineOnline)initWithConfig:(id)a3;
- (id).cxx_construct;
- (id)updatePipelineWithKeyframes:(double)a3 currentCameraPose:(double)a4;
- (id)updatePipelineWithKeyframes:(id)a3 ouframe:(id)a4;
- (void)CommonInit;
- (void)clear;
- (void)getPointCloudFromOUFrame:(simd_float4)a3 scenUnderstandingPose:(simd_float4)a4;
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

- (OUPipelineOnline)initWithConfig:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OUPipelineOnline;
  v5 = [(OUPipelineOnline *)&v8 init];
  v6 = v5;
  if (v5)
  {
    -[OU3DObjectDetector setRgbRefinementEnabled:](v5->ou3dod_, "setRgbRefinementEnabled:", [v4 enableRgbRefinement]);
    -[OU3DObjectDetector setObjectRepresentationEnabled:](v6->ou3dod_, "setObjectRepresentationEnabled:", [v4 enable3DOROnline]);
    v6->enable_3dor_ = [v4 enable3DOROnline];
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

  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [v11 BOOLForKey:@"com.apple.ObjectUnderstanding.write_debug_data"];

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

- (BOOL)updateCameraWithValid:(id)a3 ouframe:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = [v7 camera];
  if (v9)
  {
    v10 = [v8 sceneCamera];
    if (v10 && [v8 sceneColorBuffer] && objc_msgSend(v8, "semanticLabelBuffer"))
    {
      v11 = [v8 sceneColorBuffer];

      if (v11)
      {
        v12 = [v8 camera];
        camera = self->camera_;
        self->camera_ = v12;

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
        LOBYTE(v9) = 1;
        *&self->_anon_70[32] = v22;
        *&self->_anon_70[48] = v23;
        goto LABEL_10;
      }
    }

    else
    {
    }

LABEL_9:
    LOBYTE(v9) = 0;
  }

LABEL_10:

  return v9;
}

- (void)getPointCloudFromOUFrame:(simd_float4)a3 scenUnderstandingPose:(simd_float4)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a7;
  kdebug_trace();
  v9 = *(a1 + 200);
  CameraPCFromARFrameSceneCamera(v8, 4u, &v31);
  v10 = [v8 camera];
  SampleSemantics(&v31, v10, [v8 semanticLabelBuffer], objc_msgSend(v8, "semanticConfidenceBuffer"), v28, a2, a3, a4, a5);

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
      *v11->f32 = vaddq_f32(a5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*v11->f32)), a3, *v11, 1), a4, *v11->f32, 2));
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
  v17 = *(a1 + 184);
  *(a1 + 184) = v16;

  v18 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    [v8 timestamp];
    v20 = v19;
    v21 = [*(a1 + 184) count];
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

- (BOOL)updateWorldPCWithKeyframes:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
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
        v8 = [v7 pointsToWorld];
        v9 = [v7 pointsToWorld];
        v10 = [v7 count];
        __p = 0;
        v24 = 0;
        v25 = 0;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, v8, v9 + 16 * v10, (v9 + 16 * v10 - v8) >> 4);
        v11 = [OUPointCloud alloc];
        v12 = [v7 count];
        v13 = -[OUPointCloud initWithCount:points:semanticLabels:semanticVotes:colors:](v11, "initWithCount:points:semanticLabels:semanticVotes:colors:", v12, __p, [v7 semanticLabels], objc_msgSend(v7, "semanticVotes"), objc_msgSend(v7, "colors"));
        accumulatedPointCloud = self->accumulatedPointCloud_;
        v15 = [v7 identifier];
        [(NSMutableDictionary *)accumulatedPointCloud setObject:v13 forKey:v15];

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

  v16 = [(NSMutableDictionary *)self->accumulatedPointCloud_ allKeys];
  self->num_cur_key_frames_ = [v16 count];

  v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v18 = [v17 BOOLForKey:@"3dod_earlyout_accumulation"];

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

- (id)updatePipelineWithKeyframes:(double)a3 currentCameraPose:(double)a4
{
  v8 = a7;
  if ([a1 updateWorldPCWithKeyframes:v8])
  {
    v9 = [*(a1 + 216) updateWithAccumulatePC:*(a1 + 176) currentCameraPose:{a2, a3, a4, a5}];
    v10 = *(a1 + 208);
    *(a1 + 208) = v9;

    [a1 updateObjectAsset];
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)updatePipelineWithKeyframes:(id)a3 ouframe:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(OUPipelineOnline *)self updateCameraWithValid:v6 ouframe:v7])
  {
    p_arframe = &self->arframe_;
LABEL_11:
    [(_OUFrame *)*p_arframe ReleaseBuffer];
    v18 = self->objectAsset_;
    goto LABEL_13;
  }

  if ([(OUPipelineOnline *)self updateWorldPCWithKeyframes:v6])
  {
    if (self->write_debug_output_)
    {
      ptr = self->frame_writer_.__ptr_;
      if (!ptr)
      {
        v9 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v9 setDateFormat:@"MM_dd_yyyy_HH_mm_ss_SSS"];
        v10 = MEMORY[0x277CCACA8];
        v11 = [MEMORY[0x277CBEAA8] date];
        v12 = [v9 stringFromDate:v11];
        v13 = [v10 stringWithFormat:@"%@/%@", @"/var/mobile/Documents/Rooms/OU_dump", v12];

        v14 = time(0);
        srand(v14);
        [v13 UTF8String];
        rand();
        std::make_unique[abi:ne200100]<utils::OUFrameWriter,char const*,int,BOOL,0>();
      }

      utils::OUFrameWriter::Write(ptr, self->arframe_, v6);
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