@interface NTKFaceSnapshotCache
+ (id)snapshotCache;
- (NTKFaceSnapshotCache)init;
- (id)cachedSnapshotOfFace:(id)face;
- (id)cachedSnapshotResultOfFace:(id)face;
- (void)_attemptSnapshotForRequest:(id)request;
- (void)_invokeCallbacksMatchingRequest:(id)request withResult:(id)result error:(id)error;
- (void)_serviceRequestsIfIdle;
- (void)_snapshotProcessInterrupted:(id)interrupted;
- (void)cancelSnapshotRequest:(id)request;
- (void)dealloc;
- (void)fetchSnapshotWithRequest:(id)request;
@end

@implementation NTKFaceSnapshotCache

+ (id)snapshotCache
{
  if (snapshotCache_onceToken != -1)
  {
    +[NTKFaceSnapshotCache snapshotCache];
  }

  v3 = snapshotCache_cache;

  return v3;
}

void __37__NTKFaceSnapshotCache_snapshotCache__block_invoke()
{
  v0 = objc_alloc_init(NTKFaceSnapshotCache);
  v1 = snapshotCache_cache;
  snapshotCache_cache = v0;
}

- (NTKFaceSnapshotCache)init
{
  v18.receiver = self;
  v18.super_class = NTKFaceSnapshotCache;
  v2 = [(NTKFaceSnapshotCache *)&v18 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    results = v2->_results;
    v2->_results = dictionary;

    v5 = objc_opt_new();
    requestsBySnapshotKey = v2->_requestsBySnapshotKey;
    v2->_requestsBySnapshotKey = v5;

    v7 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
    callCountsByFace = v2->_callCountsByFace;
    v2->_callCountsByFace = v7;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    highPriorityRequests = v2->_highPriorityRequests;
    v2->_highPriorityRequests = orderedSet;

    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    lowPriorityRequests = v2->_lowPriorityRequests;
    v2->_lowPriorityRequests = orderedSet2;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.nanotimekit.snapshots.face", v13);
    snapshotQueue = v2->_snapshotQueue;
    v2->_snapshotQueue = v14;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__snapshotProcessInterrupted_ name:@"NTKFaceSnapshotClientInterruptionName" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKFaceSnapshotCache;
  [(NTKFaceSnapshotCache *)&v4 dealloc];
}

- (id)cachedSnapshotResultOfFace:(id)face
{
  v4 = _NTKFaceSnapshotCacheKeyForFace(face);
  if (v4)
  {
    results = [(NTKFaceSnapshotCache *)self results];
    v6 = [results objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cachedSnapshotOfFace:(id)face
{
  v3 = [(NTKFaceSnapshotCache *)self cachedSnapshotResultOfFace:face];
  snapshot = [v3 snapshot];

  return snapshot;
}

- (void)_snapshotProcessInterrupted:(id)interrupted
{
  v4 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Face snapshot process interrupted!", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NTKFaceSnapshotCache__snapshotProcessInterrupted___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__NTKFaceSnapshotCache__snapshotProcessInterrupted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) servicingRequest];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _attemptSnapshotForRequest:v2];
    v2 = v3;
  }
}

- (void)_invokeCallbacksMatchingRequest:(id)request withResult:(id)result error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  errorCopy = error;
  v11 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    face = [requestCopy face];
    faceSnapshotKey = [requestCopy faceSnapshotKey];
    *buf = 138412802;
    v34 = resultCopy;
    v35 = 2112;
    v36 = face;
    v37 = 2112;
    v38 = faceSnapshotKey;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Invoking callbacks for result %@ of face %@ with key %@", buf, 0x20u);
  }

  requestsBySnapshotKey = self->_requestsBySnapshotKey;
  faceSnapshotKey2 = [requestCopy faceSnapshotKey];
  v16 = [(NSMutableDictionary *)requestsBySnapshotKey objectForKey:faceSnapshotKey2];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        completion = [*(*(&v28 + 1) + 8 * v21) completion];
        v23 = completion;
        if (completion)
        {
          (*(completion + 16))(completion, 0, resultCopy, errorCopy);
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  v24 = self->_requestsBySnapshotKey;
  faceSnapshotKey3 = [requestCopy faceSnapshotKey];
  [(NSMutableDictionary *)v24 removeObjectForKey:faceSnapshotKey3];

  callCountsByFace = [(NTKFaceSnapshotCache *)self callCountsByFace];
  face2 = [requestCopy face];
  [callCountsByFace removeObjectForKey:face2];
}

- (void)cancelSnapshotRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    face = [requestCopy face];
    v17 = 138412290;
    v18 = face;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Cancel face request for %@", &v17, 0xCu);
  }

  servicingRequest = [(NTKFaceSnapshotCache *)self servicingRequest];
  if (servicingRequest != requestCopy)
  {
    requestsBySnapshotKey = [(NTKFaceSnapshotCache *)self requestsBySnapshotKey];
    faceSnapshotKey = [requestCopy faceSnapshotKey];
    v10 = [requestsBySnapshotKey objectForKey:faceSnapshotKey];

    [v10 removeObject:requestCopy];
    highPriorityRequests = [(NTKFaceSnapshotCache *)self highPriorityRequests];
    [highPriorityRequests removeObject:requestCopy];
    lowPriorityRequests = [(NTKFaceSnapshotCache *)self lowPriorityRequests];
    [lowPriorityRequests removeObject:requestCopy];
    completion = [requestCopy completion];
    if (completion)
    {
      v14 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        face2 = [requestCopy face];
        v17 = 138412290;
        v18 = face2;
        _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "Cancelling face completion callback called for %@", &v17, 0xCu);
      }

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:31000 userInfo:0];
      (completion)[2](completion, 1, 0, v16);
    }
  }
}

- (void)fetchSnapshotWithRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    face = [requestCopy face];
    v16 = 138412290;
    v17 = face;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Fetch request for %@", &v16, 0xCu);
  }

  options = [requestCopy options];
  priority = [options priority];

  completion = [requestCopy completion];
  if (completion)
  {
    face2 = [requestCopy face];

    if (face2)
    {
      if (priority == 3)
      {
        [(NTKFaceSnapshotCache *)self highPriorityRequests];
      }

      else
      {
        [(NTKFaceSnapshotCache *)self lowPriorityRequests];
      }
      v11 = ;
      [v11 addObject:requestCopy];

      requestsBySnapshotKey = [(NTKFaceSnapshotCache *)self requestsBySnapshotKey];
      faceSnapshotKey = [requestCopy faceSnapshotKey];
      array = [requestsBySnapshotKey objectForKey:faceSnapshotKey];

      if (!array)
      {
        array = [MEMORY[0x277CBEB18] array];
        faceSnapshotKey2 = [requestCopy faceSnapshotKey];
        [requestsBySnapshotKey setObject:array forKey:faceSnapshotKey2];
      }

      [array addObject:requestCopy];
      [(NTKFaceSnapshotCache *)self _serviceRequestsIfIdle];
    }
  }
}

- (void)_serviceRequestsIfIdle
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to service face requests if idle…", &v16, 2u);
  }

  servicingRequest = [(NTKFaceSnapshotCache *)self servicingRequest];

  if (!servicingRequest)
  {
    highPriorityRequests = [(NTKFaceSnapshotCache *)self highPriorityRequests];
    lowPriorityRequests = [(NTKFaceSnapshotCache *)self lowPriorityRequests];
    v9 = [highPriorityRequests count];
    v10 = highPriorityRequests;
    if (v9 || (v11 = [lowPriorityRequests count], v10 = lowPriorityRequests, v11))
    {
      v5 = v10;
    }

    else
    {
      v5 = 0;
    }

    v12 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [highPriorityRequests count];
      v14 = [lowPriorityRequests count];
      v16 = 134218240;
      v17 = v13;
      v18 = 2048;
      v19 = v14;
      _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "High/Low Priority Requests: %lu/%lu", &v16, 0x16u);
    }

    if (v5)
    {
      firstObject = [v5 firstObject];
      [v5 removeObjectAtIndex:0];
      [(NTKFaceSnapshotCache *)self setServicingRequest:firstObject];
      [(NTKFaceSnapshotCache *)self _attemptSnapshotForRequest:firstObject];
    }

    goto LABEL_14;
  }

  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    servicingRequest2 = [(NTKFaceSnapshotCache *)self servicingRequest];
    highPriorityRequests = [servicingRequest2 face];
    v16 = 138412290;
    v17 = highPriorityRequests;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Skipping service request because already servicing face %@", &v16, 0xCu);

LABEL_14:
  }
}

- (void)_attemptSnapshotForRequest:(id)request
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  face = [requestCopy face];
  v6 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = face;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Attempting snapshot of face %@", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  callCountsByFace = [(NTKFaceSnapshotCache *)self callCountsByFace];
  v7 = [callCountsByFace objectForKey:face];
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_284181AE0;
  }

  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if ((unsignedIntegerValue + 1) < 3)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [callCountsByFace setObject:v12 forKey:face];

    options = [requestCopy options];
    v13 = [options priority] - 1;
    if (v13 >= 3)
    {
      v14 = 0;
      v15 = QOS_CLASS_UTILITY;
    }

    else
    {
      v14 = dword_22DCE7950[v13];
      v15 = QOS_CLASS_USER_INITIATED;
    }

    ntk_asDictionaryOptions = [options ntk_asDictionaryOptions];
    v17 = _NTKFaceSnapshotCacheKeyForFace(face);
    v18 = self->_snapshotQueue;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_2;
    v25[3] = &unk_27877E4D8;
    v26 = v17;
    v27 = face;
    v28 = ntk_asDictionaryOptions;
    v29 = v18;
    v19 = v18;
    v20 = ntk_asDictionaryOptions;
    v21 = v17;
    objc_copyWeak(&v31, &location);
    v30 = requestCopy;
    v22 = requestCopy;
    v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, v14, v25);
    dispatch_async(v19, v23);

    objc_destroyWeak(&v31);
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = face;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Skipping face %@ - too many failures", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke;
    block[3] = &unk_27877E438;
    block[4] = self;
    v33 = requestCopy;
    options = requestCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_destroyWeak(&location);
}

uint64_t __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:34000 userInfo:0];
  [v2 _invokeCallbacksMatchingRequest:v3 withResult:0 error:v4];

  [*(a1 + 32) setServicingRequest:0];
  v5 = *(a1 + 32);

  return [v5 _serviceRequestsIfIdle];
}

void __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[NTKFaceSnapshotClient sharedInstance];
  v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Asking face client to snapshot %@ (%@)…", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_47;
  v8[3] = &unk_27877E4B0;
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  objc_copyWeak(&v13, (a1 + 72));
  v11 = *(a1 + 64);
  v12 = *(a1 + 40);
  [v2 requestSnapshotOfFace:v6 options:v7 completion:v8];

  objc_destroyWeak(&v13);
}

void __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_2_48;
  v10[3] = &unk_27877E488;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v8 = v5;
  objc_copyWeak(&v16, (a1 + 64));
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = v6;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v16);
}

void __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_2_48(id *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v29 = v3;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Client face snapshotted %@ - %@", buf, 0x16u);
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = [v5 snapshot];
    v7 = [v6 imageWithRenderingMode:1];
    v8 = [NTKFaceSnapshotResult alloc];
    v9 = [a1[5] cachedFile];
    v10 = [a1[5] snapshotKey];
    v11 = [a1[5] rawSnapshotKey];
    v12 = [a1[5] snapshotContext];
    v13 = -[NTKFaceSnapshotResult initWithCachedFile:snapshotKey:rawSnapshotKey:context:blankComplications:snapshot:](v8, "initWithCachedFile:snapshotKey:rawSnapshotKey:context:blankComplications:snapshot:", v9, v10, v11, v12, [a1[5] hasBlankComplications], v7);

    if (NTKInternalBuild(v14, v15, v16, v17) && _os_feature_enabled_impl())
    {
      _NTKFaceDebugAPLSnapshotWithBaseImage(v7);
    }
  }

  else
  {
    v13 = 0;
    v7 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_50;
  block[3] = &unk_27877E460;
  objc_copyWeak(&v27, a1 + 9);
  v21 = a1[6];
  v22 = a1[4];
  v23 = v7;
  v24 = a1[7];
  v25 = v13;
  v26 = a1[8];
  v18 = v13;
  v19 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v27);
}

void __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_50(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained servicingRequest];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v8 = [*(a1 + 56) dailySnapshotKey];
    v9 = [*(a1 + 32) faceSnapshotKey];
    v10 = [v8 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      v11 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_50_cold_1((a1 + 32), (a1 + 56), v11);
      }
    }

    if (!*(a1 + 48) || ((*(a1 + 40) != 0) & v10) != 1)
    {
      goto LABEL_18;
    }

    v12 = [WeakRetained[1] objectForKeyedSubscript:?];

    v13 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        *v21 = 138412546;
        *&v21[4] = v15;
        *&v21[12] = 2112;
        *&v21[14] = v16;
        v17 = "Overwriting cache %@ with %@";
LABEL_16:
        _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, v17, v21, 0x16u);
      }
    }

    else if (v14)
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      *v21 = 138412546;
      *&v21[4] = v18;
      *&v21[12] = 2112;
      *&v21[14] = v19;
      v17 = "Stored to cache %@ with %@";
      goto LABEL_16;
    }

    v20 = [WeakRetained results];
    [v20 setObject:*(a1 + 64) forKey:*(a1 + 40)];

LABEL_18:
    [WeakRetained _invokeCallbacksMatchingRequest:*(a1 + 32) withResult:*(a1 + 64) error:{*(a1 + 72), *v21, *&v21[16], v22}];
    [WeakRetained setServicingRequest:0];
    goto LABEL_19;
  }

  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *v21 = 138412546;
    *&v21[4] = v6;
    *&v21[12] = 2112;
    *&v21[14] = v7;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Aborting callbacks because it's not the servicing face request %@ - %@", v21, 0x16u);
  }

LABEL_19:
  [WeakRetained _serviceRequestsIfIdle];
}

void __51__NTKFaceSnapshotCache__attemptSnapshotForRequest___block_invoke_50_cold_1(id *a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a1 faceSnapshotKey];
  v6 = [*a2 dailySnapshotKey];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "Snapshot key changed during request from %@ to %@", &v7, 0x16u);
}

@end