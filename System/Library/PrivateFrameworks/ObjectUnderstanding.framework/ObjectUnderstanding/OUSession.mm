@interface OUSession
- (OUSessionDelegate)delegate;
- (id)init:(BOOL)init;
- (void)generateOfflineObjectAsset:(id)asset onlineObjects:(id)objects block:(id)block;
- (void)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects;
- (void)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects block:(id)block;
- (void)runWithConfiguration:(id)configuration;
- (void)stop;
- (void)updateWithFrame:(id)frame;
- (void)updateWithKeyframes:(__n128)keyframes currentCameraPose:(__n128)pose;
- (void)updateWithKeyframes:(id)keyframes ouframe:(id)ouframe;
@end

@implementation OUSession

- (id)init:(BOOL)init
{
  initCopy = init;
  v25.receiver = self;
  v25.super_class = OUSession;
  v4 = [(OUSession *)&v25 init];
  v5 = v4;
  if (v4)
  {
    v4->isOnline_ = initCopy;
    if (initCopy)
    {
      v6 = objc_alloc_init(OUPipelineOnline);
      v7 = 24;
    }

    else
    {
      v6 = [[OU3DObjectDetector alloc] init:0];
      v7 = 16;
    }

    v8 = *(&v5->super.isa + v7);
    *(&v5->super.isa + v7) = v6;

    v9 = dispatch_semaphore_create(1);
    detSemaphore = v5->detSemaphore_;
    v5->detSemaphore_ = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    allKeyframes = v5->allKeyframes_;
    v5->allKeyframes_ = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    skipedKeyframes = v5->skipedKeyframes_;
    v5->skipedKeyframes_ = dictionary2;

    v15 = CreateWorkGroup("OU_OnlineOD3d_TG");
    workgroupOD = v5->_workgroupOD;
    v5->_workgroupOD = v15;

    v17 = CreateFixedPrioritySerialDispatchQueue("com.apple.ObjectUnderstanding.onlineOD3d", 0x11, 0, 1, &v5->_workgroupOD);
    detQueue = v5->detQueue_;
    v5->detQueue_ = v17;

    v19 = CreateWorkGroup("OU_UpdateFrame_TG");
    workgroupFrame = v5->_workgroupFrame;
    v5->_workgroupFrame = v19;

    v21 = CreateFixedPrioritySerialDispatchQueue("com.apple.ObjectUnderstanding.updateFrame", 0x11, 0, 1, &v5->_workgroupFrame);
    ouframeQueue = v5->ouframeQueue_;
    v5->ouframeQueue_ = v21;
  }

  v23 = v5;

  return v23;
}

- (void)runWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [configurationCopy copy];
  configuration = self->configuration_;
  self->configuration_ = v5;

  if (self->isOnline_)
  {
    [(OUPipelineOnline *)self->ouPipeline_ clear];
    v7 = objc_alloc_init(OUPipelineOnlineConfig);
    -[OUPipelineOnlineConfig setEnableRgbRefinement:](v7, "setEnableRgbRefinement:", [configurationCopy enableRgbRefinement]);
    -[OUPipelineOnlineConfig setEnable3DOROnline:](v7, "setEnable3DOROnline:", [configurationCopy enable3DOR]);
    v8 = [[OUPipelineOnline alloc] initWithConfig:v7];
    ouPipeline = self->ouPipeline_;
    self->ouPipeline_ = v8;
  }

  else
  {
    [(OU3DObjectDetector *)self->det3d_ clear];
    -[OU3DObjectDetector setRgbRefinementEnabled:](self->det3d_, "setRgbRefinementEnabled:", [configurationCopy enableRgbRefinement]);
    -[OU3DObjectDetector setObjectRepresentationEnabled:](self->det3d_, "setObjectRepresentationEnabled:", [configurationCopy enable3DOR]);
  }

  [(OUConfiguration *)self->configuration_ maxFramerate];
  self->_minFrameInterval = 1.0 / v10;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  allKeyframes = self->allKeyframes_;
  self->allKeyframes_ = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  skipedKeyframes = self->skipedKeyframes_;
  self->skipedKeyframes_ = dictionary2;
}

- (void)updateWithKeyframes:(__n128)keyframes currentCameraPose:(__n128)pose
{
  poseCopy = pose;
  v27 = a5;
  v24 = a2;
  keyframesCopy = keyframes;
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = a7;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = *(self + 96);
        identifier = [v12 identifier];
        [v13 setObject:v12 forKeyedSubscript:identifier];

        v15 = *(self + 104);
        identifier2 = [v12 identifier];
        [v15 setObject:v12 forKeyedSubscript:identifier2];
      }

      v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v9);
  }

  if (!dispatch_semaphore_wait(*(self + 48), 0xFFFFFFFFFFFFFFFELL))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:*(self + 64)];
    v19 = v18 < *(self + 60);

    if (v19)
    {
      dispatch_semaphore_signal(*(self + 48));
    }

    else
    {
      objc_initWeak(&location, self);
      allValues = [*(self + 104) allValues];
      [*(self + 104) removeAllObjects];
      v21 = *(self + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__OUSession_updateWithKeyframes_currentCameraPose___block_invoke;
      block[3] = &unk_2799C4210;
      objc_copyWeak(v34, &location);
      v33 = allValues;
      v29 = v24;
      v30 = keyframesCopy;
      v31 = poseCopy;
      v32 = v27;
      v22 = allValues;
      dispatch_async(v21, block);

      objc_destroyWeak(v34);
      objc_destroyWeak(&location);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __51__OUSession_updateWithKeyframes_currentCameraPose___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = *(WeakRetained + 8);
    *(WeakRetained + 8) = v3;

    v5 = [*(WeakRetained + 3) updatePipelineWithKeyframes:*(a1 + 96) currentCameraPose:{*(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80)}];
    v6 = *(WeakRetained + 10);
    *(WeakRetained + 10) = v5;

    v7 = [*(WeakRetained + 10) objects];
    v8 = *(WeakRetained + 9);
    *(WeakRetained + 9) = v7;

    v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(WeakRetained + 10) objects];
      v15 = 134217984;
      v16 = [v10 count];
      _os_log_impl(&dword_25D1DB000, v9, OS_LOG_TYPE_INFO, "[OD] Detected objects number: %lu", &v15, 0xCu);
    }

    v11 = [WeakRetained delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [WeakRetained delegate];
      [v13 session:WeakRetained didUpdateDetectedObjects:*(WeakRetained + 9)];
    }

    dispatch_semaphore_signal(*(WeakRetained + 6));
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateWithKeyframes:(id)keyframes ouframe:(id)ouframe
{
  v53 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  keyframesCopy = keyframes;
  v6 = [keyframesCopy countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v6)
  {
    v7 = *v41;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(keyframesCopy);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        allKeyframes = self->allKeyframes_;
        identifier = [v9 identifier];
        [(NSMutableDictionary *)allKeyframes setObject:v9 forKeyedSubscript:identifier];

        skipedKeyframes = self->skipedKeyframes_;
        identifier2 = [v9 identifier];
        [(NSMutableDictionary *)skipedKeyframes setObject:v9 forKeyedSubscript:identifier2];
      }

      v6 = [keyframesCopy countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v6);
  }

  if (!dispatch_semaphore_wait(self->detSemaphore_, 0xFFFFFFFFFFFFFFFELL))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_detStartDate];
    v16 = v15 < self->_minFrameInterval;

    if (v16)
    {
      dispatch_semaphore_signal(self->detSemaphore_);
    }

    else
    {
      objc_initWeak(&location, self);
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x3032000000;
      v37[3] = __Block_byref_object_copy__0;
      v37[4] = __Block_byref_object_dispose__0;
      v38 = 0;
      ouframeQueue = self->ouframeQueue_;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__OUSession_updateWithKeyframes_ouframe___block_invoke;
      block[3] = &unk_2799C4238;
      objc_copyWeak(&v36, &location);
      block[4] = self;
      block[5] = v37;
      dispatch_sync(ouframeQueue, block);
      allValues = [(NSMutableDictionary *)self->skipedKeyframes_ allValues];
      [(NSMutableDictionary *)self->skipedKeyframes_ removeAllObjects];
      detQueue = self->detQueue_;
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __41__OUSession_updateWithKeyframes_ouframe___block_invoke_2;
      v30 = &unk_2799C4260;
      objc_copyWeak(&v34, &location);
      v20 = allValues;
      selfCopy = self;
      v33 = v37;
      v31 = v20;
      dispatch_async(detQueue, &v27);
      v21 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [(NSArray *)self->objects_ count:v27];
        v23 = [(NSMutableDictionary *)self->allKeyframes_ count];
        v24 = [keyframesCopy count];
        v25 = [v20 count];
        *buf = 134218752;
        v45 = v22;
        v46 = 2048;
        v47 = v23;
        v48 = 2048;
        v49 = v24;
        v50 = 2048;
        v51 = v25;
        _os_log_impl(&dword_25D1DB000, v21, OS_LOG_TYPE_INFO, "[OD] Detected objects number: %lu in %lu keyframes (%lu, %lu)", buf, 0x2Au);
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v36);
      _Block_object_dispose(v37, 8);

      objc_destroyWeak(&location);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __41__OUSession_updateWithKeyframes_ouframe___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 112));
    WeakRetained = v3;
  }
}

void __41__OUSession_updateWithKeyframes_ouframe___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = *(WeakRetained + 8);
    *(WeakRetained + 8) = v3;

    v5 = [*(WeakRetained + 3) updatePipelineWithKeyframes:*(a1 + 32) ouframe:*(*(*(a1 + 48) + 8) + 40)];
    v6 = *(WeakRetained + 10);
    *(WeakRetained + 10) = v5;

    v7 = [*(WeakRetained + 10) objects];
    v8 = *(WeakRetained + 9);
    *(WeakRetained + 9) = v7;

    v9 = [WeakRetained delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [WeakRetained delegate];
      [v11 session:WeakRetained didUpdateDetectedObjects:*(*(a1 + 40) + 72)];
    }

    v12 = [WeakRetained delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [WeakRetained delegate];
      [v14 session:WeakRetained didUpdateObjectAsset:*(*(a1 + 40) + 80)];
    }

    dispatch_semaphore_signal(*(WeakRetained + 6));
  }
}

- (void)updateWithFrame:(id)frame
{
  frameCopy = frame;
  sceneCamera = [frameCopy sceneCamera];

  if (sceneCamera)
  {
    objc_initWeak(&location, self);
    ouframeQueue = self->ouframeQueue_;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__OUSession_updateWithFrame___block_invoke;
    block[3] = &unk_2799C4288;
    objc_copyWeak(&v9, &location);
    v8 = frameCopy;
    dispatch_async(ouframeQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __29__OUSession_updateWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 14, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (void)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects
{
  objectsCopy = objects;
  onlineObjectsCopy = onlineObjects;
  if (!dispatch_semaphore_wait(self->detSemaphore_, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    detQueue = self->detQueue_;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke;
    block[3] = &unk_2799C42B0;
    objc_copyWeak(&v13, &location);
    v10 = objectsCopy;
    v11 = onlineObjectsCopy;
    selfCopy = self;
    dispatch_async(detQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[2] generateOfflineObjects:*(a1 + 32) onlineObjects:*(a1 + 40)];
    v5 = v3[11];
    v3[11] = v4;

    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke_cold_2(buf, [v3[11] count], v6);
    }

    v7 = [v3 delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v3 delegate];
      [v9 session:v3 didGeneratedOfflineObjects:*(*(a1 + 48) + 88)];
    }

    v10 = [v3 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [v3 delegate];
      [v12 session:v3 didGeneratedOfflineObjectAsset:v3[10]];
    }

    dispatch_semaphore_signal(v3[6]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects block:(id)block
{
  objectsCopy = objects;
  onlineObjectsCopy = onlineObjects;
  blockCopy = block;
  detQueue = self->detQueue_;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__OUSession_generateOfflineObjects_onlineObjects_block___block_invoke;
  v15[3] = &unk_2799C42D8;
  v15[4] = self;
  v16 = objectsCopy;
  v17 = onlineObjectsCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = onlineObjectsCopy;
  v14 = objectsCopy;
  dispatch_async(detQueue, v15);
}

uint64_t __56__OUSession_generateOfflineObjects_onlineObjects_block___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 16) generateOfflineObjects:*(a1 + 40) onlineObjects:*(a1 + 48)];
  v4 = *(*v2 + 88);
  *(*v2 + 88) = v3;

  v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(*(a1 + 32) + 88) count];
    v7 = [*(a1 + 40) count];
    v8 = [*(a1 + 48) count];
    v11 = 134218496;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_25D1DB000, v5, OS_LOG_TYPE_INFO, "[OD] Offline detected objects number: %lu, from %lu keyframes and %lu online objects", &v11, 0x20u);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1 + 32) + 88));
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)generateOfflineObjectAsset:(id)asset onlineObjects:(id)objects block:(id)block
{
  assetCopy = asset;
  objectsCopy = objects;
  blockCopy = block;
  detQueue = self->detQueue_;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__OUSession_generateOfflineObjectAsset_onlineObjects_block___block_invoke;
  v15[3] = &unk_2799C42D8;
  v15[4] = self;
  v16 = assetCopy;
  v17 = objectsCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = objectsCopy;
  v14 = assetCopy;
  dispatch_async(detQueue, v15);
}

uint64_t __60__OUSession_generateOfflineObjectAsset_onlineObjects_block___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 16) generateOfflineObjects:*(a1 + 40) onlineObjects:*(a1 + 48)];
  v4 = *(*v2 + 88);
  *(*v2 + 88) = v3;

  v5 = [*(*v2 + 16) getObjectAsset];
  v6 = *(*v2 + 80);
  *(*v2 + 80) = v5;

  v7 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(*(a1 + 32) + 88) count];
    v9 = [*(a1 + 40) count];
    v10 = [*(a1 + 48) count];
    v13 = 134218496;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[OD] Offline detected objects number: %lu, from %lu keyframes and %lu online objects", &v13, 0x20u);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1 + 32) + 80));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stop
{
  objc_initWeak(&location, self);
  detQueue = self->detQueue_;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __17__OUSession_stop__block_invoke;
  v4[3] = &unk_2799C4300;
  objc_copyWeak(&v5, &location);
  dispatch_async(detQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __17__OUSession_stop__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] clear];
    v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 0;
      _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "Detected objects session ends.", v4, 2u);
    }
  }
}

- (OUSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = __cxa_begin_catch(a1);
  v2 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (OUTLINED_FUNCTION_2_0(v2))
  {
    OUTLINED_FUNCTION_4();
    (*(v4 + 16))(v1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v5, v6, "OUOffline Error: (init) %s", v7, v8, v9, v10, v11);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)init:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = __cxa_begin_catch(a1);
  v2 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (OUTLINED_FUNCTION_2_0(v2))
  {
    OUTLINED_FUNCTION_4();
    (*(v4 + 16))(v1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v5, v6, "OUOnline Error: (init) %s", v7, v8, v9, v10, v11);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)runWithConfiguration:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = __cxa_begin_catch(a1);
  *a3 = v4;
  v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (OUTLINED_FUNCTION_2_0(v5))
  {
    OUTLINED_FUNCTION_4();
    (*(v7 + 16))(v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v8, v9, "OUError: (run) %s", v10, v11, v12, v13, v14);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)runWithConfiguration:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_3_0(a1);
  (*(v3 + 16))(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v4, v5, "OUError: (init) %s", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)runWithConfiguration:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_3_0(a1);
  (*(v3 + 16))(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v4, v5, "OUError: (run) %s", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

void __41__OUSession_updateWithKeyframes_ouframe___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = __cxa_begin_catch(a1);
  v2 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (OUTLINED_FUNCTION_2_0(v2))
  {
    OUTLINED_FUNCTION_4();
    (*(v4 + 16))(v1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v5, v6, "OUError: (online) %s", v7, v8, v9, v10, v11);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = __cxa_begin_catch(a1);
  v2 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (OUTLINED_FUNCTION_2_0(v2))
  {
    OUTLINED_FUNCTION_4();
    (*(v4 + 16))(v1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v5, v6, "OUError: (offline) %s", v7, v8, v9, v10, v11);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke_cold_2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[OD] Offline detected objects number: %lu", buf, 0xCu);
}

@end