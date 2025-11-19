@interface NTKFaceSnapshotter
+ (id)defaultModernSnapshotOptions;
- (NTKFaceSnapshotter)init;
- (id)viewControllerForFace:(id)a3 withOptions:(id)a4;
- (void)_hideSnapshotWindow;
- (void)_mainQueue_serviceRequest:(id)a3 metrics:(id)a4 completion:(id)a5;
- (void)_queue_serviceRequestIfIdle;
- (void)_setupNotificationForCollectionLoadForDevice:(id)a3 completion:(id)a4;
- (void)_showSnapshotWindowForDevice:(id)a3;
- (void)complicationCollectionDidLoad:(id)a3;
- (void)dealloc;
- (void)provideSnapshotOfFace:(id)a3 completion:(id)a4;
- (void)provideSnapshotOfFace:(id)a3 options:(id)a4 completion:(id)a5;
- (void)requestSnapshotOfFace:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation NTKFaceSnapshotter

+ (id)defaultModernSnapshotOptions
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"NTKSnapshotUnadornedContentKey";
  v4[1] = @"NTKSnapshotUIOnlyKey";
  v5[0] = MEMORY[0x277CBEC28];
  v5[1] = MEMORY[0x277CBEC28];
  v4[2] = @"NTKSnapshotUseCanonicalContentKey";
  v4[3] = @"NTKSnapshotIgnoreSnapshotImages";
  v5[2] = MEMORY[0x277CBEC38];
  v5[3] = MEMORY[0x277CBEC38];
  v4[4] = @"NTKSnapshotPersistableKey";
  v4[5] = @"NTKSnapshotShouldUseSampleComplicationTemplatesKey";
  v5[4] = MEMORY[0x277CBEC38];
  v5[5] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (NTKFaceSnapshotter)init
{
  v8.receiver = self;
  v8.super_class = NTKFaceSnapshotter;
  v2 = [(NTKFaceSnapshotter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    snapshotWindow = v2->_snapshotWindow;
    v2->_snapshotWindow = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__NTKFaceSnapshotter_init__block_invoke;
    block[3] = &unk_27877DB10;
    v7 = v3;
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, block);
    }
  }

  return v3;
}

void __26__NTKFaceSnapshotter_init__block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(1);
  v3 = NTKFaceSnapshotterSemaphore;
  NTKFaceSnapshotterSemaphore = v2;

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ntkd.facesnapshotter"];
  v5 = dispatch_queue_create([v4 UTF8String], 0);
  v6 = NTKFaceSnapshotterQueue;
  NTKFaceSnapshotterQueue = v5;

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = NTKFaceSnapshotterRequests;
  NTKFaceSnapshotterRequests = v7;

  NTKFaceSnapshotterServicingRequest = 0;
  v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v10 = NTKFaceSnapshotterComplicationCollections;
  NTKFaceSnapshotterComplicationCollections = v9;

  NTKFaceSnapshotterCompanionAppLibraryLoaded = 0;
  v11 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Waiting on NTKCompanionAppLibrary (AppConduit) so apps are known before we snapshot", buf, 2u);
  }

  v12 = +[NTKCompanionAppLibrary sharedAppLibrary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __26__NTKFaceSnapshotter_init__block_invoke_86;
  v13[3] = &unk_27877DB10;
  v14 = *(a1 + 32);
  [v12 prewarmCompanionDaemonWithCompletion:v13];
}

void __26__NTKFaceSnapshotter_init__block_invoke_86(uint64_t a1)
{
  v1 = NTKFaceSnapshotterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__NTKFaceSnapshotter_init__block_invoke_2;
  block[3] = &unk_27877DB10;
  v3 = *(a1 + 32);
  dispatch_async(v1, block);
}

uint64_t __26__NTKFaceSnapshotter_init__block_invoke_2(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "NTKCompanionAppLibrary loaded!", v4, 2u);
  }

  NTKFaceSnapshotterCompanionAppLibraryLoaded = 1;
  return [*(a1 + 32) _queue_serviceRequestIfIdle];
}

- (void)_setupNotificationForCollectionLoadForDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__NTKFaceSnapshotter__setupNotificationForCollectionLoadForDevice_completion___block_invoke;
  block[3] = &unk_27877DC88;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__NTKFaceSnapshotter__setupNotificationForCollectionLoadForDevice_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pairingID];
  if (v2)
  {
    v3 = [NTKFaceSnapshotterComplicationCollections objectForKey:v2];
    if (!v3)
    {
      v3 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:*(a1 + 32)];
      [NTKFaceSnapshotterComplicationCollections setObject:v3 forKey:v2];
      v4 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138412290;
        v6 = v2;
        _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Listening for collection load of device uuid %@", &v5, 0xCu);
      }

      if (([v3 hasLoaded] & 1) == 0)
      {
        [v3 addObserver:*(a1 + 40)];
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)provideSnapshotOfFace:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__NTKFaceSnapshotter_provideSnapshotOfFace_options_completion___block_invoke;
  v10[3] = &unk_27877FB80;
  v11 = v8;
  v9 = v8;
  [(NTKFaceSnapshotter *)self requestSnapshotOfFace:a3 options:a4 completion:v10];
}

void __63__NTKFaceSnapshotter_provideSnapshotOfFace_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 hasBlankComplications];
  v5 = [v3 snapshot];

  (*(v2 + 16))(v2, v4, v5);
}

- (void)requestSnapshotOfFace:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v28 = a5;
  v9 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "dispatching to face snapshotter queue", buf, 2u);
  }

  v10 = [v8 objectForKey:@"NTKSnapshotMetricsKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 copy];
    v12 = v10;
  }

  else
  {
    v13 = [v8 mutableCopy];
    v12 = [NTKFaceSnapshotServiceTaskResult rootTaskNamed:@"SnapshotterMetrics"];
    [v13 setObject:v12 forKey:@"NTKSnapshotMetricsKey"];
    v11 = [v13 copy];
  }

  v40 = 0;
  v14 = [v12 childTaskNamed:@"FaceSnapshot" error:&v40];
  v15 = v40;
  if (!v14)
  {
    v16 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NTKFaceSnapshotter requestSnapshotOfFace:options:completion:];
    }
  }

  v17 = [v7 device];
  if (v17)
  {
    v27 = v8;
    v39 = 0;
    v18 = [v12 childTaskNamed:@"CollectionLoad" error:&v39];
    v19 = v39;
    if (!v18)
    {
      v20 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [NTKFaceSnapshotter requestSnapshotOfFace:options:completion:];
      }
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke;
    v36[3] = &unk_27877E438;
    v37 = v18;
    v38 = self;
    v21 = v18;
    [(NTKFaceSnapshotter *)self _setupNotificationForCollectionLoadForDevice:v17 completion:v36];

    v8 = v27;
  }

  v22 = NTKFaceSnapshotterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke_2;
  block[3] = &unk_27877FBF0;
  v31 = v7;
  v32 = v11;
  v34 = self;
  v35 = v28;
  v33 = v14;
  v23 = v28;
  v24 = v14;
  v25 = v11;
  v26 = v7;
  dispatch_async(v22, block);
}

void __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 finishWithError:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKFaceSnapshotter requestSnapshotOfFace:options:completion:];
    }
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke_100;
  v6[3] = &unk_27877DB10;
  v6[4] = *(a1 + 40);
  dispatch_async(NTKFaceSnapshotterQueue, v6);
}

void __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = [NTKFaceSnapshotRequest alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke_3;
  v11 = &unk_27877FBA8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v5 = [(NTKFaceSnapshotRequest *)v2 initWithFace:v3 options:v4 completion:&v8];
  v6 = NTKFaceSnapshotterRequests;
  v7 = [v6 indexOfObject:v5 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count", v8, v9, v10, v11), 1024, &__block_literal_global_27}];
  [NTKFaceSnapshotterRequests insertObject:v5 atIndex:v7];
  [*(a1 + 56) _queue_serviceRequestIfIdle];
}

void __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v17 = 0;
  v11 = [v10 finishWithError:&v17];
  v12 = v17;
  if ((v11 & 1) == 0)
  {
    v13 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke_3_cold_1();
    }
  }

  v14 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 prettyDescription];
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "Snapshot request finished:\n%@\n", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v7, v9);
  }
}

uint64_t __63__NTKFaceSnapshotter_requestSnapshotOfFace_options_completion___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 options];
  v7 = [v6 objectForKey:@"NTKSnapshotPriorityKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 options];
  v10 = [v9 objectForKey:@"NTKSnapshotPriorityKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 unsignedIntegerValue];
  }

  else
  {
    v11 = 0;
  }

  if (v8 == v11)
  {
    v12 = [v4 creationDate];
    v13 = [v5 creationDate];
    v14 = [v12 compare:v13];
  }

  else
  {
    v14 = v8 < v11;
  }

  return v14;
}

- (void)_queue_serviceRequestIfIdle
{
  dispatch_assert_queue_V2(NTKFaceSnapshotterQueue);
  if ([NTKFaceSnapshotterRequests count])
  {
    if (NTKFaceSnapshotterServicingRequest == 1)
    {
      v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = "Already servicing a face snapshot request.";
LABEL_10:
        _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
      }
    }

    else
    {
      v5 = [NTKFaceSnapshotterRequests indexOfObjectPassingTest:&__block_literal_global_108];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v5;
        v7 = [NTKFaceSnapshotterRequests objectAtIndex:v5];
        NTKFaceSnapshotterServicingRequest = 1;
        [NTKFaceSnapshotterRequests removeObjectAtIndex:v6];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __49__NTKFaceSnapshotter__queue_serviceRequestIfIdle__block_invoke_109;
        v8[3] = &unk_27877E438;
        v9 = v7;
        v10 = self;
        v3 = v7;
        dispatch_async(MEMORY[0x277D85CD0], v8);

        goto LABEL_12;
      }

      v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = "No complication snapshot requests are ready.";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "No face snapshot requests to service.";
      goto LABEL_10;
    }
  }

LABEL_12:
}

void __49__NTKFaceSnapshotter__queue_serviceRequestIfIdle__block_invoke_109(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) options];
  v4 = [v3 objectForKey:@"NTKSnapshotMetricsKey"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__NTKFaceSnapshotter__queue_serviceRequestIfIdle__block_invoke_109_cold_1(v2, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = 0;
    v6 = v4;
    v4 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  v5 = [v4 childTaskNamed:@"ServicingRequest" error:&v17];
  v6 = v17;
  if (!v5)
  {
    v7 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__NTKFaceSnapshotter__queue_serviceRequestIfIdle__block_invoke_109_cold_2();
    }

LABEL_8:
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__NTKFaceSnapshotter__queue_serviceRequestIfIdle__block_invoke_113;
  v16[3] = &unk_27877DB10;
  v16[4] = v14;
  [v14 _mainQueue_serviceRequest:v15 metrics:v5 completion:v16];
}

void __49__NTKFaceSnapshotter__queue_serviceRequestIfIdle__block_invoke_113(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Signalling waiting queue that main queue is ready", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NTKFaceSnapshotter__queue_serviceRequestIfIdle__block_invoke_114;
  block[3] = &unk_27877DB10;
  block[4] = *(a1 + 32);
  dispatch_async(NTKFaceSnapshotterQueue, block);
}

- (void)provideSnapshotOfFace:(id)a3 completion:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v13 = @"NTKSnapshotUIOnlyKey";
  v14[0] = MEMORY[0x277CBEC38];
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__NTKFaceSnapshotter_provideSnapshotOfFace_completion___block_invoke;
  v11[3] = &unk_27877FC38;
  v12 = v6;
  v10 = v6;
  [(NTKFaceSnapshotter *)self provideSnapshotOfFace:v8 options:v9 completion:v11];
}

- (id)viewControllerForFace:(id)a3 withOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setRootViewController:0];
  [(NTKFaceSnapshotter *)self _hideSnapshotWindow];
  v8 = [v7 deepCopy];

  v9 = [NTKFaceViewController alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__NTKFaceSnapshotter_viewControllerForFace_withOptions___block_invoke;
  v13[3] = &unk_27877FC60;
  v14 = v6;
  v10 = v6;
  v11 = [(NTKFaceViewController *)v9 initWithFace:v8 configuration:v13];
  [(NTKFaceViewController *)v11 freeze];

  return v11;
}

void __56__NTKFaceSnapshotter_viewControllerForFace_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 setDataMode:3];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotUIOnlyKey"];
  [v14 setSupressesNonSnapshotUI:{objc_msgSend(v3, "BOOLValue")}];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotUseCanonicalContentKey"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  [v14 setShowsCanonicalContent:v6];
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotShouldUseSampleComplicationTemplatesKey"];
  [v14 setShouldUseSampleTemplate:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotUnadornedContentKey"];
  [v14 setShowContentForUnadornedSnapshot:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotForcedLockedKey"];
  [v14 setShowsLockedUI:{objc_msgSend(v9, "BOOLValue")}];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotIgnoreSnapshotImages"];
  [v14 setIgnoreSnapshotImages:{objc_msgSend(v10, "BOOLValue")}];

  v11 = 1;
  [v14 setWidgetHostPriorityTransientSnapshot:1];
  v12 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotWidgetsAsPlaceholdersKey"];
  v13 = v12;
  if (v12)
  {
    v11 = [v12 BOOLValue];
  }

  [v14 setSnapshotWidgetsAsPlaceholders:v11];
}

- (void)_mainQueue_serviceRequest:(id)a3 metrics:(id)a4 completion:(id)a5
{
  v124 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v67 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [v8 face];
  v65 = [v10 dailySnapshotKey];
  v64 = [v10 unsafeDailySnapshotKey];
  v72 = [v8 options];
  v69 = [v10 description];
  v11 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v69;
    _os_signpost_emit_with_name_impl(&dword_22D9C5000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FaceSnapshot", "%@", &buf, 0xCu);
  }

  v62 = v12;

  Current = CFAbsoluteTimeGetCurrent();
  v16 = [v72 objectForKeyedSubscript:@"NTKSnapshotOverrideDateKey"];
  if (v16)
  {
    v17 = NTKRoundDateDownToNearestSecond();

    NTKSetIdealizedDate(v17);
    CLKSetCompanionDisplayDate();
  }

  else
  {
    v17 = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__6;
  v122 = __Block_byref_object_dispose__6;
  v123 = 0;
  v61 = +[NTKFaceSnapshotContext currentContext];
  v117[0] = 0;
  v117[1] = v117;
  v117[2] = 0x2020000000;
  v118 = 0;
  v116 = 0;
  v71 = [v9 childTaskNamed:@"FVC-Load" error:&v116];
  v18 = v116;
  v19 = v18;
  if (v9 && v18)
  {
    v20 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [NTKFaceSnapshotter _mainQueue_serviceRequest:metrics:completion:];
    }
  }

  v21 = objc_autoreleasePoolPush();
  v22 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v23 = [v10 device];
  [v22 setDevice:v23];

  v24 = [(NTKFaceSnapshotter *)self viewControllerForFace:v10 withOptions:v72];
  v25 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v24;

  v26 = *(*(&buf + 1) + 40);
  v115[0] = MEMORY[0x277D85DD0];
  v115[1] = 3221225472;
  v115[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke;
  v115[3] = &unk_27877FC88;
  v115[4] = v117;
  [v26 enumerateComplicationControllersAndDisplaysWithBlock:v115];
  v27 = [v10 device];
  [(NTKFaceSnapshotter *)self _showSnapshotWindowForDevice:v27];

  [*(*(&buf + 1) + 40) prepareForSnapshotting];
  v28 = [MEMORY[0x277D75348] clearColor];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setBackgroundColor:v28];

  _UIAppSetStatusBarOrientation();
  _UIAppSetStatusBarHeight();
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setRootViewController:*(*(&buf + 1) + 40)];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setHidden:0];
  v29 = [*(*(&buf + 1) + 40) faceView];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setNeedsLayout];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow layoutIfNeeded];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setNeedsDisplay];
  [v29 setNeedsRender];
  [MEMORY[0x277CD9FF0] commit];
  [MEMORY[0x277CD9FF0] flush];

  objc_autoreleasePoolPop(v21);
  v114 = v19;
  LOBYTE(v29) = [v71 finishWithError:&v114];
  v30 = v114;

  if (!(v29 & 1 | (v9 == 0)))
  {
    v31 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [NTKFaceSnapshotter _mainQueue_serviceRequest:metrics:completion:];
    }
  }

  objc_initWeak(&location, self);
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__6;
  v111 = __Block_byref_object_dispose__6;
  v112 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__127;
  v105 = __Block_byref_object_dispose__128;
  v106 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_129;
  aBlock[3] = &unk_27877FCB0;
  v60 = v17;
  v87 = v60;
  objc_copyWeak(v100, &location);
  v100[1] = *&Current;
  v97 = v117;
  v59 = v69;
  v88 = v59;
  v32 = v14;
  v100[2] = v62;
  v70 = v32;
  v89 = v32;
  v98 = &v107;
  v33 = v9;
  v90 = v33;
  v58 = v10;
  v91 = v58;
  v63 = v65;
  v92 = v63;
  v66 = v64;
  v93 = v66;
  v34 = v61;
  v94 = v34;
  v35 = v8;
  v95 = v35;
  p_buf = &buf;
  v68 = v67;
  v96 = v68;
  v36 = _Block_copy(aBlock);
  v37 = v102[5];
  v102[5] = v36;

  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__127;
  v84[4] = __Block_byref_object_dispose__128;
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_136;
  v83[3] = &unk_27877FCD8;
  v83[4] = &v101;
  v85 = _Block_copy(v83);
  v38 = dispatch_time(0, 20000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_2;
  block[3] = &unk_27877F8D0;
  block[4] = &v101;
  block[5] = v84;
  v39 = MEMORY[0x277D85CD0];
  dispatch_after(v38, MEMORY[0x277D85CD0], block);

  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_3;
  v80[3] = &unk_27877FD50;
  v80[4] = &buf;
  v80[5] = &v107;
  v80[6] = &v101;
  objc_copyWeak(&v81, &location);
  v80[7] = v84;
  v40 = _Block_copy(v80);
  v41 = [v35 options];
  v42 = [v41 valueForKey:@"NTKSnapshotPerformPrewarmRoutineKey"];
  objc_opt_class();
  LOBYTE(v39) = objc_opt_isKindOfClass();

  if (v39)
  {
    v43 = [v35 options];
    v44 = [v43 valueForKey:@"NTKSnapshotPerformPrewarmRoutineKey"];

    v45 = [v44 BOOLValue];
  }

  else
  {
    v45 = 0;
  }

  v79 = v30;
  v46 = [v33 childTaskNamed:@"Finalize" error:&v79];
  v47 = v79;

  v48 = v108[5];
  v108[5] = v46;

  if (v108[5] && v47)
  {
    v49 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [NTKFaceSnapshotter _mainQueue_serviceRequest:metrics:completion:];
    }
  }

  if (v45)
  {
    v50 = v108[5];
    v78 = v47;
    v51 = [v50 childTaskNamed:@"Prewarm" error:&v78];
    v52 = v9 != 0;
    v53 = v78;

    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    if (v54)
    {
      v55 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [NTKFaceSnapshotter _mainQueue_serviceRequest:metrics:completion:];
      }
    }

    v56 = *(*(&buf + 1) + 40);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_144;
    v73[3] = &unk_27877FDA0;
    v57 = v51;
    v74 = v57;
    v75 = v33;
    v77 = &v101;
    v76 = v40;
    [v56 performPrewarmRoutine:v73];

    v47 = v53;
  }

  else
  {
    v40[2](v40);
  }

  objc_destroyWeak(&v81);
  _Block_object_dispose(v84, 8);

  objc_destroyWeak(v100);
  _Block_object_dispose(&v101, 8);

  _Block_object_dispose(&v107, 8);
  objc_destroyWeak(&location);

  _Block_object_dispose(v117, 8);
  _Block_object_dispose(&buf, 8);
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v7 = [a3 complication];
    if ([v7 complicationType] == 31)
    {
      v8 = [v6 display];
      v9 = [v8 complicationTemplate];

      if (!v9)
      {
        v10 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v7 clientIdentifier];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Missing complication template for %@", &v12, 0xCu);
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_129(uint64_t a1, void *a2, void *a3)
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *&v6 = COERCE_DOUBLE(a3);
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (*(a1 + 32))
  {
    NTKSetIdealizedDate(0);
    CLKSetCompanionDisplayDate();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 136));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] setRootViewController:0];
    [v8 _hideSnapshotWindow];
  }

  v9 = CFAbsoluteTimeGetCurrent() - *(a1 + 144);
  if (v5)
  {
    [v5 size];
    NSStringFromCGSize(v108);
    *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v11 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 112) + 8) + 24))
      {
        v12 = @" hasBlankComplication";
      }

      else
      {
        v12 = &stru_284110E98;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"snapshot succeeded%@", v12];
      v14 = *(a1 + 40);
      *buf = 134218754;
      v100 = v9;
      v101 = 2112;
      v102 = v13;
      v103 = 2112;
      v104 = v10;
      v105 = 2112;
      v106 = v14;
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "%.2f seconds - %@: %@ %@", buf, 0x2Au);
    }

    v15 = *(a1 + 48);
    v16 = v15;
    v17 = *(a1 + 152);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = *(*(*(a1 + 112) + 8) + 24);
      *buf = 138412546;
      v100 = *&v10;
      v101 = 1024;
      LODWORD(v102) = v18;
      _os_signpost_emit_with_name_impl(&dword_22D9C5000, v16, OS_SIGNPOST_INTERVAL_END, v17, "FaceSnapshot", "size=%@ hasBlankComplication=%d", buf, 0x12u);
    }
  }

  else
  {
    v19 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v73 = *(a1 + 40);
      *buf = 134218498;
      v100 = v9;
      v101 = 2112;
      v102 = v73;
      v103 = 2112;
      v104 = v6;
      _os_log_error_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_ERROR, "%.2f seconds - snapshot failed: %@, error: %@", buf, 0x20u);
    }

    v20 = *(a1 + 48);
    v10 = v20;
    v21 = *(a1 + 152);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 138412290;
      v100 = *&v6;
      _os_signpost_emit_with_name_impl(&dword_22D9C5000, v10, OS_SIGNPOST_INTERVAL_END, v21, "FaceSnapshot", "snapshot failed: %@", buf, 0xCu);
    }
  }

  v22 = *(*(*(a1 + 120) + 8) + 40);
  v95 = 0;
  v23 = [v22 finishWithError:&v95];
  v24 = v95;
  v25 = *(a1 + 56);
  if (v25 && (v23 & 1) == 0)
  {
    v26 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_129_cold_1();
    }

    v25 = *(a1 + 56);
  }

  if (v25)
  {
    v94 = 0;
    v27 = [v25 finishWithError:&v94];
    v28 = v94;
    if ((v27 & 1) == 0)
    {
      v29 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_129_cold_2();
      }
    }
  }

  v81 = a1;
  if ([*(a1 + 64) usesComplications])
  {
    v75 = v24;
    v76 = v8;
    v78 = v5;
    context = objc_autoreleasePoolPush();
    v77 = v6;
    v30 = [v6 userInfo];
    v31 = [MEMORY[0x277CBEB58] set];
    v32 = [*(a1 + 64) allVisibleComplicationsForCurrentConfiguration];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v33 = [v32 countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v91;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v91 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v90 + 1) + 8 * i);
          v38 = [v30 objectForKey:*&v37];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v79 = [*(v81 + 64) name];
              *buf = 138412802;
              v100 = v37;
              v101 = 2112;
              v102 = v79;
              v103 = 2112;
              v104 = v38;
              _os_log_error_impl(&dword_22D9C5000, v39, OS_LOG_TYPE_ERROR, "Slot %@ for %@ had error %@", buf, 0x20u);
            }

            [v31 addObject:*&v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v34);
    }

    v40 = [v31 copy];

    objc_autoreleasePoolPop(context);
    if ([v40 count])
    {
      v41 = v81;
      *(*(*(v81 + 112) + 8) + 24) = 1;
      v42 = [MEMORY[0x277CBEB38] dictionary];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v80 = v40;
      v43 = v40;
      v44 = [v43 countByEnumeratingWithState:&v86 objects:v97 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v87;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v87 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v86 + 1) + 8 * j);
            v49 = [*(v41 + 64) complicationForSlot:v48];
            if (v49)
            {
              [v42 setObject:v49 forKey:v48];
            }

            v50 = *(v81 + 64);
            v51 = +[NTKComplication nullComplication];
            v52 = v50;
            v41 = v81;
            [v52 setComplication:v51 forSlot:v48];
          }

          v45 = [v43 countByEnumeratingWithState:&v86 objects:v97 count:16];
        }

        while (v45);
      }

      v53 = [*(v41 + 64) dailySnapshotKey];
      v54 = v41;
      v55 = v53;
      v56 = [*(v54 + 64) unsafeDailySnapshotKey];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v57 = v43;
      v58 = [v57 countByEnumeratingWithState:&v82 objects:v96 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v83;
        do
        {
          for (k = 0; k != v59; ++k)
          {
            if (*v83 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v62 = *(*(&v82 + 1) + 8 * k);
            v63 = [v42 objectForKey:v62];
            if (v63)
            {
              [*(v81 + 64) setComplication:v63 forSlot:v62];
            }
          }

          v59 = [v57 countByEnumeratingWithState:&v82 objects:v96 count:16];
        }

        while (v59);
      }

      v40 = v80;
    }

    else
    {
      v56 = 0;
      v55 = 0;
    }

    v6 = v77;
    v5 = v78;
    v24 = v75;
    v8 = v76;
    if (v78)
    {
      v64 = [NTKFaceSnapshotResult alloc];
      v65 = v55;
      if (v55)
      {
LABEL_69:
        v66 = v56;
        if (!v56)
        {
          v66 = *(v81 + 80);
        }

        v67 = [(NTKFaceSnapshotResult *)v64 initWithCachedFile:0 snapshotKey:v65 rawSnapshotKey:v66 context:*(v81 + 88) blankComplications:*(*(*(v81 + 112) + 8) + 24) snapshot:v5];
        v68 = [*(v81 + 96) completion];

        if (v68)
        {
          v69 = [*(v81 + 96) completion];
          (v69)[2](v69, v67, *(v81 + 56), 0);
        }

        goto LABEL_76;
      }

LABEL_68:
      v55 = 0;
      v65 = *(v81 + 72);
      goto LABEL_69;
    }
  }

  else
  {
    if (v5)
    {
      v64 = [NTKFaceSnapshotResult alloc];
      v56 = 0;
      goto LABEL_68;
    }

    v55 = 0;
    v56 = 0;
  }

  v70 = [*(v81 + 96) completion];

  if (v70)
  {
    v67 = [*(v81 + 96) completion];
    (v67->_cachedFile)(v67, 0, *(v81 + 56), v6);
LABEL_76:
  }

  v71 = *(*(v81 + 128) + 8);
  v72 = *(v71 + 40);
  *(v71 + 40) = 0;

  (*(*(v81 + 104) + 16))();
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v9, v5);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.faceSnapshotRenderer" code:2 userInfo:0];
    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  }
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_3(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_4;
  v4[3] = &unk_27877FD28;
  v4[4] = *(a1 + 48);
  objc_copyWeak(&v5, (a1 + 64));
  v4[5] = *(a1 + 56);
  [v2 finalizeForSnapshottingWithMetrics:v3 completion:v4];
  objc_destroyWeak(&v5);
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_5;
  v6[3] = &unk_27877FD00;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v10);
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_5(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] flush];
  [MEMORY[0x277CD9FF0] synchronize];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v2 = objc_autoreleasePoolPush();
      v3 = [objc_opt_class() renderSnapshotFromWindow:WeakRetained[1]];
      objc_autoreleasePoolPop(v2);
      if (!v3)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.faceSnapshotRenderer" code:4 userInfo:0];
        (*(*(*(*(a1 + 48) + 8) + 40) + 16))();

        goto LABEL_11;
      }

      v4 = *(*(*(*(a1 + 48) + 8) + 40) + 16);
    }

    else
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.faceSnapshotRenderer" code:3 userInfo:0];
      v4 = *(*(*(*(a1 + 48) + 8) + 40) + 16);
    }

    v4();
LABEL_11:

    return;
  }

  v6 = *(a1 + 32);
  v5 = a1 + 32;
  v7 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_5_cold_1(v5, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "finalizeForSnapshotting completed after timeout", buf, 2u);
  }
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_144(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [v2 finishWithError:&v10];
  v4 = v10;
  if (*(a1 + 40) && (v3 & 1) == 0)
  {
    v5 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_144_cold_1();
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_145;
  block[3] = &unk_27877FD78;
  v7 = *(a1 + 48);
  v6 = v7;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__NTKFaceSnapshotter__mainQueue_serviceRequest_metrics_completion___block_invoke_145(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "preform prewarm routine finished after timeout", v5, 2u);
    }
  }
}

- (void)_showSnapshotWindowForDevice:(id)a3
{
  v4 = a3;
  snapshotWindow = self->_snapshotWindow;
  v8 = v4;
  if (!snapshotWindow)
  {
    v6 = objc_alloc_init(NTKFaceSnapshottingWindow);
    v7 = self->_snapshotWindow;
    self->_snapshotWindow = v6;

    v4 = v8;
    snapshotWindow = self->_snapshotWindow;
  }

  [(NTKFaceSnapshottingWindow *)snapshotWindow updateForDevice:v4];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setHidden:0];
}

- (void)_hideSnapshotWindow
{
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setHidden:1];
  snapshotWindow = self->_snapshotWindow;
  self->_snapshotWindow = 0;
}

- (void)dealloc
{
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setHidden:1];
  v3.receiver = self;
  v3.super_class = NTKFaceSnapshotter;
  [(NTKFaceSnapshotter *)&v3 dealloc];
}

- (void)complicationCollectionDidLoad:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NTKFaceSnapshotter_complicationCollectionDidLoad___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(NTKFaceSnapshotterQueue, block);
}

@end