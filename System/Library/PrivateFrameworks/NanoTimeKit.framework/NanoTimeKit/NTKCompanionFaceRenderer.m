@interface NTKCompanionFaceRenderer
+ (id)_snapshotNameForFace:(id)a3 detailMode:(int64_t)a4;
+ (id)_storagePath;
+ (id)snapshotPathForFace:(id)a3 detailMode:(int64_t)a4;
- (NTKCompanionFaceRenderer)init;
- (void)_notifyFinishedFaceBatchIfNeeded;
- (void)_startNextWorkItem;
- (void)requestSnapshotOfFace:(id)a3 completion:(id)a4;
@end

@implementation NTKCompanionFaceRenderer

- (NTKCompanionFaceRenderer)init
{
  v9.receiver = self;
  v9.super_class = NTKCompanionFaceRenderer;
  v2 = [(NTKCompanionFaceRenderer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.nanotimekitcompaniond.render-queue", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = [MEMORY[0x277CBEB18] array];
    pendingTaskList = v2->_pendingTaskList;
    v2->_pendingTaskList = v6;

    v2->_queueActive = 0;
  }

  return v2;
}

- (void)requestSnapshotOfFace:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() snapshotPathForFace:v6 detailMode:0x7FFFFFFFFFFFFFFFLL];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    v7[2](v7);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__NTKCompanionFaceRenderer_requestSnapshotOfFace_completion___block_invoke;
    block[3] = &unk_27877EAA0;
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __61__NTKCompanionFaceRenderer_requestSnapshotOfFace_completion___block_invoke(uint64_t a1)
{
  v8 = [[_NTKCompanionFaceRenderingTask alloc] initWithFace:*(a1 + 32) detailMode:0x7FFFFFFFFFFFFFFFLL completionHandler:*(a1 + 48)];
  [*(*(a1 + 40) + 32) addObject:?];
  v2 = +[NTKFaceView numberOfDetailModesForFaceStyle:](NTKFaceView, "numberOfDetailModesForFaceStyle:", [*(a1 + 32) faceStyle]);
  if (v2 >= 1)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      v5 = *(*(a1 + 40) + 32);
      v6 = [[_NTKCompanionFaceRenderingTask alloc] initWithFace:*(a1 + 32) detailMode:i completionHandler:0];
      [v5 addObject:v6];
    }
  }

  v7 = *(a1 + 40);
  if ((v7[24] & 1) == 0)
  {
    [v7 _startNextWorkItem];
  }
}

+ (id)_snapshotNameForFace:(id)a3 detailMode:(int64_t)a4
{
  v5 = [a3 dailySnapshotKey];
  v6 = v5;
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 stringByAppendingFormat:@"~mode%d", a4];

    v6 = v7;
  }

  return v6;
}

+ (id)snapshotPathForFace:(id)a3 detailMode:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _storagePath];
  v8 = [a1 _snapshotNameForFace:v6 detailMode:a4];

  v9 = [v8 stringByAppendingPathExtension:@"png"];
  v10 = [v7 stringByAppendingPathComponent:v9];

  return v10;
}

+ (id)_storagePath
{
  if (_storagePath_onceToken != -1)
  {
    +[NTKCompanionFaceRenderer _storagePath];
  }

  v3 = _storagePath___storagePath;

  return v3;
}

void __40__NTKCompanionFaceRenderer__storagePath__block_invoke()
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v0 = NTKCacheDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"SnapshotImages"];
  v2 = _storagePath___storagePath;
  _storagePath___storagePath = v1;

  [v3 createDirectoryAtPath:_storagePath___storagePath withIntermediateDirectories:1 attributes:0 error:0];
}

- (void)_notifyFinishedFaceBatchIfNeeded
{
  faceBatchCompletionHandler = self->_faceBatchCompletionHandler;
  if (faceBatchCompletionHandler)
  {
    faceBatchCompletionHandler[2](faceBatchCompletionHandler, a2);
    v4 = self->_faceBatchCompletionHandler;
    self->_faceBatchCompletionHandler = 0;
  }
}

- (void)_startNextWorkItem
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(NSMutableArray *)self->_pendingTaskList firstObject];
  if (v3)
  {
    self->_queueActive = 1;
    [(NSMutableArray *)self->_pendingTaskList removeObjectAtIndex:0];
    v4 = [v3 completionHandler];
    v5 = [v3 isMemberOfBatch];
    v6 = [v3 face];
    v7 = [v6 isEquivalentToFace:self->_currentFace];

    if (v7)
    {
      v8 = [(NTKFaceSnapshottingWindow *)self->_window rootViewController];
    }

    else
    {
      [(NTKCompanionFaceRenderer *)self _notifyFinishedFaceBatchIfNeeded];
      v10 = objc_alloc_init(NTKFaceSnapshottingWindow);
      window = self->_window;
      self->_window = v10;

      v12 = self->_window;
      v13 = [v3 face];
      v14 = [v13 device];
      [(NTKFaceSnapshottingWindow *)v12 updateForDevice:v14];

      v15 = [NTKFaceViewController alloc];
      v16 = [v3 face];
      v8 = [(NTKFaceViewController *)v15 initWithFace:v16 configuration:&__block_literal_global_43_1];

      [(NTKFaceSnapshottingWindow *)self->_window setRootViewController:v8];
      [(NTKFaceSnapshottingWindow *)self->_window setHidden:0];
      if (v5 && v4)
      {
        v17 = _Block_copy(v4);
        faceBatchCompletionHandler = self->_faceBatchCompletionHandler;
        self->_faceBatchCompletionHandler = v17;
      }
    }

    v19 = [v3 face];
    currentFace = self->_currentFace;
    self->_currentFace = v19;

    v21 = [(NTKFaceViewController *)v8 faceView];
    v22 = [v3 detailMode];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [v21 setDetailMode:v22];
    [(NTKFaceSnapshottingWindow *)self->_window setNeedsLayout];
    [(NTKFaceSnapshottingWindow *)self->_window layoutIfNeeded];
    [(NTKFaceSnapshottingWindow *)self->_window setNeedsDisplay];
    [v21 setNeedsRender];
    [MEMORY[0x277CD9FF0] commit];
    [MEMORY[0x277CD9FF0] flush];
    [(NTKFaceSnapshottingWindow *)self->_window bounds];
    v24 = v23;
    v26 = v25;
    [(NTKFaceSnapshottingWindow *)self->_window contentScaleFactor];
    v28 = v27;
    v29 = v24 * v27;
    v30 = v26 * v27;
    v31 = [(NTKFaceSnapshottingWindow *)self->_window _contextId];
    v32 = objc_opt_class();
    v33 = [v3 face];
    v34 = [v32 _snapshotNameForFace:v33 detailMode:v22];

    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_2;
    block[3] = &unk_278784D98;
    v46 = v31;
    v42 = v28;
    v43 = v29;
    v44 = v30;
    block[4] = self;
    v39 = v3;
    v40 = v34;
    v45 = v22;
    v41 = v4;
    v47 = v5;
    v36 = v4;
    v37 = v34;
    dispatch_async(workQueue, block);
  }

  else
  {
    self->_queueActive = 0;
    v9 = self->_currentFace;
    self->_currentFace = 0;

    [(NTKCompanionFaceRenderer *)self _notifyFinishedFaceBatchIfNeeded];
  }
}

void __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDataMode:3];
  [v2 setShowsCanonicalContent:1];
  [v2 freeze];
}

void __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_2(uint64_t a1)
{
  location[6] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v33 = *(a1 + 96);
  CATransform3DMakeScale(&v34, *(a1 + 64), *(a1 + 64), *(a1 + 64));
  v3 = [MEMORY[0x277CD9E40] mainDisplay];
  [v3 name];

  v4 = *(a1 + 72);
  v5 = llroundf(v4);
  v6 = *(a1 + 80);
  v7 = llroundf(v6);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v9 = AlignedBytesPerRow * v7;
  v35[0] = *MEMORY[0x277CD2B88];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
  location[0] = v10;
  v35[1] = *MEMORY[0x277CD2A28];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
  location[1] = v11;
  v35[2] = *MEMORY[0x277CD2968];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:AlignedBytesPerRow];
  location[2] = v12;
  v35[3] = *MEMORY[0x277CD2948];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
  v14 = *MEMORY[0x277CD2960];
  location[3] = v13;
  location[4] = &unk_284183E20;
  v15 = *MEMORY[0x277CD2A70];
  v35[4] = v14;
  v35[5] = v15;
  location[5] = &unk_284183E38;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:location forKeys:v35 count:6];

  v17 = IOSurfaceCreate(v16);
  if (v17)
  {
    IOSurfaceLock(v17, 0, 0);
    CARenderServerRenderDisplayClientListWithTransformList();
    IOSurfaceUnlock(v17, 0, 0);
    v18 = _UICreateCGImageFromIOSurfaceWithOptions();
    CFRelease(v17);
    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v18];
      CGImageRelease(v18);
      v20 = objc_opt_class();
      v21 = [*(a1 + 40) face];
      v22 = [v20 snapshotPathForFace:v21 detailMode:*(a1 + 88)];

      v23 = UIImagePNGRepresentation(v19);
      v32 = 0;
      v24 = [v23 writeToFile:v22 options:1 error:&v32];
      v25 = v32;

      if ((v24 & 1) == 0)
      {
        v26 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_2_cold_1(a1, v25, v26);
        }
      }

      goto LABEL_13;
    }
  }

  else
  {
    v27 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_2_cold_2(v27);
    }
  }

  v19 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
  {
    __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_2_cold_3(a1, &v19->super);
  }

LABEL_13:

  objc_initWeak(location, *(a1 + 32));
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_48;
  v28[3] = &unk_278784D70;
  v29 = *(a1 + 56);
  v31 = *(a1 + 100);
  objc_copyWeak(&v30, location);
  dispatch_async(MEMORY[0x277D85CD0], v28);
  objc_destroyWeak(&v30);

  objc_destroyWeak(location);
  objc_autoreleasePoolPop(v2);
}

void __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_48(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(a1 + 48) & 1) == 0)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startNextWorkItem];
}

void __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "failed to write image for face %@: %@", &v4, 0x16u);
}

void __46__NTKCompanionFaceRenderer__startNextWorkItem__block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "failed to generate snapshot image for face %@", &v3, 0xCu);
}

@end