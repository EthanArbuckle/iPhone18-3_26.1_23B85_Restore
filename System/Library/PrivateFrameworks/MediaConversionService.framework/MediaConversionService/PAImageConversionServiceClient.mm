@interface PAImageConversionServiceClient
- (PAImageConversionServiceClient)init;
- (void)convertImageAtSourceURL:(id)l options:(id)options completionHandler:(id)handler;
- (void)convertImageAtSourceURLCollection:(id)collection toDestinationURLCollection:(id)lCollection options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)requestStatusWithCompletionHandler:(id)handler;
- (void)sendRequestWithOptions:(id)options sourceURLCollection:(id)collection destinationURLCollection:(id)lCollection jobIdentifier:(id)identifier attemptCount:(int64_t)count completionHandler:(id)handler;
- (void)setupServiceConnection;
@end

@implementation PAImageConversionServiceClient

- (void)requestStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceConnection = [(PAImageConversionServiceClient *)self serviceConnection];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __69__PAImageConversionServiceClient_requestStatusWithCompletionHandler___block_invoke;
  v11 = &unk_27989B4B8;
  selfCopy = self;
  v13 = handlerCopy;
  v6 = handlerCopy;
  v7 = [serviceConnection remoteObjectProxyWithErrorHandler:&v8];
  [v7 requestStatusWithReply:{v6, v8, v9, v10, v11, selfCopy}];
}

void __69__PAImageConversionServiceClient_requestStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Image conversion status request error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestWithOptions:(id)options sourceURLCollection:(id)collection destinationURLCollection:(id)lCollection jobIdentifier:(id)identifier attemptCount:(int64_t)count completionHandler:(id)handler
{
  v67 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  collectionCopy = collection;
  lCollectionCopy = lCollection;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    logMessageSummary = [collectionCopy logMessageSummary];
    *buf = 138544130;
    v60 = identifierCopy;
    v61 = 2112;
    v62 = logMessageSummary;
    v63 = 2048;
    countCopy = count;
    v65 = 1024;
    v66 = 2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Sending image conversion request %{public}@ for %@ (attempt %ld of %d)", buf, 0x26u);
  }

  if (!lCollectionCopy)
  {
    [optionsCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
    goto LABEL_8;
  }

  v58 = 0;
  v20 = [lCollectionCopy ensureFilesExistWithError:&v58];
  v21 = v58;
  if ((v20 & 1) == 0)
  {
    handlerCopy[2](handlerCopy, 2, 0, v21);
    goto LABEL_13;
  }

  v57 = 0;
  v22 = [lCollectionCopy bookmarkDataDictionaryRepresentationWithError:&v57];
  v23 = v57;
  if (v22)
  {
    [optionsCopy setObject:v22 forKeyedSubscript:@"PAMediaConversionServiceDestinationBookmarkCollectionKey"];

LABEL_8:
    v24 = optionsCopy;
    v40 = optionsCopy;
    date = [MEMORY[0x277CBEAA8] date];
    serviceConnection = [(PAImageConversionServiceClient *)self serviceConnection];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __147__PAImageConversionServiceClient_sendRequestWithOptions_sourceURLCollection_destinationURLCollection_jobIdentifier_attemptCount_completionHandler___block_invoke;
    v49[3] = &unk_27989B458;
    v25 = identifierCopy;
    v50 = v25;
    countCopy2 = count;
    v26 = v24;
    v51 = v26;
    selfCopy = self;
    v53 = collectionCopy;
    v39 = identifierCopy;
    v27 = lCollectionCopy;
    v54 = v27;
    v28 = handlerCopy;
    v29 = lCollectionCopy;
    v30 = handlerCopy;
    v31 = collectionCopy;
    v32 = v28;
    v55 = v28;
    v33 = [serviceConnection remoteObjectProxyWithErrorHandler:v49];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __147__PAImageConversionServiceClient_sendRequestWithOptions_sourceURLCollection_destinationURLCollection_jobIdentifier_attemptCount_completionHandler___block_invoke_96;
    v41[3] = &unk_27989B490;
    v42 = v26;
    v43 = date;
    v44 = v25;
    countCopy3 = count;
    v34 = v32;
    collectionCopy = v31;
    handlerCopy = v30;
    lCollectionCopy = v29;
    v47 = v34;
    v35 = v27;
    identifierCopy = v39;
    v45 = v35;
    selfCopy2 = self;
    v21 = date;
    [v33 convertImageWithOptions:v42 reply:v41];

    optionsCopy = v40;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v60 = identifierCopy;
    v61 = 2114;
    v62 = v23;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Image conversion request %{public}@ unable to generate destination bookmark data: %{public}@", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy, 2, 0, v23);

LABEL_13:
  v36 = *MEMORY[0x277D85DE8];
}

void __147__PAImageConversionServiceClient_sendRequestWithOptions_sourceURLCollection_destinationURLCollection_jobIdentifier_attemptCount_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 80);
    v13 = 138544130;
    v14 = v11;
    v15 = 2048;
    v16 = v12;
    v17 = 1024;
    v18 = 2;
    v19 = 2114;
    v20 = v3;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Image conversion request %{public}@ (attempt %ld of %d) XPC error: %{public}@", &v13, 0x26u);
  }

  if (*(a1 + 80) > 1)
  {
    goto LABEL_8;
  }

  v4 = [v3 domain];
  if (([v4 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    goto LABEL_8;
  }

  if ([v3 code] != 4097)
  {
    v6 = [v3 code] == 4099;

    if (v6)
    {
      goto LABEL_11;
    }

LABEL_8:
    (*(*(a1 + 72) + 16))();
    goto LABEL_9;
  }

LABEL_11:
  v7 = [*(a1 + 40) objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldExitDuringRequestKey"];

  if (v7)
  {
    [*(a1 + 40) setObject:0 forKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldExitDuringRequestKey"];
  }

  v8 = *(a1 + 48);
  objc_sync_enter(v8);
  [*(*(a1 + 48) + 8) invalidate];
  v9 = *(a1 + 48);
  v10 = *(v9 + 8);
  *(v9 + 8) = 0;

  [*(a1 + 48) setupServiceConnection];
  objc_sync_exit(v8);

  [*(a1 + 48) sendRequestWithOptions:*(a1 + 40) sourceURLCollection:*(a1 + 56) destinationURLCollection:*(a1 + 64) jobIdentifier:*(a1 + 32) attemptCount:*(a1 + 80) + 1 completionHandler:*(a1 + 72)];
LABEL_9:

  v5 = *MEMORY[0x277D85DE8];
}

void __147__PAImageConversionServiceClient_sendRequestWithOptions_sourceURLCollection_destinationURLCollection_jobIdentifier_attemptCount_completionHandler___block_invoke_96(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
  v11 = [v10 BOOLValue];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPhotosAdjustmentsCalculationKey"];
  v13 = [v12 BOOLValue];

  if (!v8)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v14 = [v8 mutableCopy];
  v15 = MEMORY[0x277CCABB0];
  v16 = [MEMORY[0x277CBEAA8] date];
  [v16 timeIntervalSinceDate:*(a1 + 40)];
  v17 = [v15 numberWithDouble:?];
  [v14 setObject:v17 forKeyedSubscript:@"PAMediaConversionServiceConversionTotalDurationTimeIntervalClientSideKey"];

  if (v13 & 1 | ((v11 & 1) == 0))
  {
    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 80);
        v19 = *(a1 + 48);
        v20 = [*(a1 + 56) fileSizeSummary];
        v28 = 138544130;
        v29 = v19;
        v30 = 2048;
        v31 = v18;
        v32 = 1024;
        v33 = 2;
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Image conversion request %{public}@ (attempt %ld of %d) (url output) successful completion, output image sizes: %@", &v28, 0x26u);
      }

      v21 = *(*(a1 + 72) + 16);
LABEL_11:
      v21();
      goto LABEL_12;
    }

LABEL_8:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 48);
      v27 = *(a1 + 80);
      v28 = 138544130;
      v29 = v26;
      v30 = 2048;
      v31 = v27;
      v32 = 1024;
      v33 = 2;
      v34 = 2114;
      v35 = v9;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Image conversion request %{public}@ (url output) (attempt %ld of %d) unsuccessful completion: %{public}@", &v28, 0x26u);
    }

    v21 = *(*(a1 + 72) + 16);
    goto LABEL_11;
  }

  if (!v7 || !v14)
  {
    goto LABEL_8;
  }

  v23 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v14];
  [v23 setObject:v7 forKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 48);
    v25 = *(a1 + 80);
    v28 = 138544130;
    v29 = v24;
    v30 = 2048;
    v31 = v25;
    v32 = 1024;
    v33 = 2;
    v34 = 2048;
    v35 = [v7 length];
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Image conversion request %{public}@ (attempt %ld of %d) (data output) successful completion, output image size: %lu", &v28, 0x26u);
  }

  (*(*(a1 + 72) + 16))();

LABEL_12:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)convertImageAtSourceURLCollection:(id)collection toDestinationURLCollection:(id)lCollection options:(id)options completionHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  lCollectionCopy = lCollection;
  optionsCopy = options;
  handlerCopy = handler;
  v45 = collectionCopy;
  if ([collectionCopy urlCount])
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }

LABEL_32:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PAImageConversionServiceClient.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"imageConversionOptions"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_33:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PAImageConversionServiceClient.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"originalCompletionHandler"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PAImageConversionServiceClient.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"sourceURLCollection.urlCount > 0"}];

  if (!optionsCopy)
  {
    goto LABEL_32;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_33;
  }

LABEL_4:
  v13 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionApplyOrientationTransformKey"];
  if (v13)
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionOrientationKey"];

    if (v14)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"PAImageConversionServiceClient.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"!(imageConversionOptions[PAMediaConversionServiceOptionApplyOrientationTransformKey] && imageConversionOptions[PAMediaConversionServiceOptionOrientationKey])"}];
    }
  }

  currentHandler5 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumPixelCountKey"];
  if (currentHandler5)
  {
    v17 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionScaleFactorKey"];
    if (!v17)
    {
LABEL_11:

      goto LABEL_12;
    }

    v18 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionMaximumLongSideLengthKey"];

    if (v18)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"PAImageConversionServiceClient.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"!(imageConversionOptions[PAMediaConversionServiceOptionMaximumPixelCountKey] && imageConversionOptions[PAMediaConversionServiceOptionScaleFactorKey] && imageConversionOptions[PAMediaConversionServiceOptionMaximumLongSideLengthKey])"}];
      goto LABEL_11;
    }
  }

LABEL_12:
  v44 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionOutputFileTypeKey"];
  if (v44)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler6 handleFailureInMethod:a2 object:self file:@"PAImageConversionServiceClient.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:NSString.class]"}];
    }
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v41 = _os_activity_create(&dword_2585D9000, "mediaconversion-image", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v41, &state);
  v19 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  v20 = v19;
  if (v19)
  {
    uUIDString = v19;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  v23 = MEMORY[0x277D86220];
  v24 = os_signpost_id_make_with_pointer(MEMORY[0x277D86220], uUIDString);
  v25 = v23;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 138543362;
    v52 = uUIDString;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v24, "com.apple.photos.mediaconversion.client.image", "Image conversion request %{public}@", buf, 0xCu);
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __121__PAImageConversionServiceClient_convertImageAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke;
  v47[3] = &unk_27989B410;
  v49 = v24;
  v26 = handlerCopy;
  v48 = v26;
  v27 = MEMORY[0x259C84340](v47);
  v28 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:optionsCopy];
  [v28 setObject:uUIDString forKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  v46 = 0;
  v29 = [v45 bookmarkDataDictionaryRepresentationWithError:&v46];
  v30 = v46;
  if (v29)
  {
    [v28 setObject:v29 forKeyedSubscript:@"PAMediaConversionServiceSourceBookmarkCollectionKey"];
    v31 = [v28 objectForKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
    v32 = v31 == 0;

    if (v32)
    {
      callStackReturnAddresses = [MEMORY[0x277CCACC8] callStackReturnAddresses];
      v34 = [callStackReturnAddresses valueForKey:@"stringValue"];
      v35 = [v34 componentsJoinedByString:@" "];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v35;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Caller did not provide a request reason string, using stack addresses: %@", buf, 0xCu);
      }

      [v28 setObject:v35 forKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
    }

    [(PAImageConversionServiceClient *)self sendRequestWithOptions:v28 sourceURLCollection:v45 destinationURLCollection:lCollectionCopy jobIdentifier:uUIDString attemptCount:1 completionHandler:v27];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v52 = uUIDString;
      v53 = 2114;
      v54 = v30;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Image conversion request %{public}@ unable to generate source bookmark data: %{public}@", buf, 0x16u);
    }

    (v27)[2](v27, 2, 0, v30);
  }

  os_activity_scope_leave(&state);
  v36 = *MEMORY[0x277D85DE8];
}

void __121__PAImageConversionServiceClient_convertImageAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D86220];
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_EVENT, v9, "com.apple.photos.mediaconversion.client.image.pre-completion", "", buf, 2u);
  }

  v10 = MEMORY[0x277D86220];

  (*(*(a1 + 32) + 16))();
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v12, "com.apple.photos.mediaconversion.client.image", "", v13, 2u);
  }
}

- (void)convertImageAtSourceURL:(id)l options:(id)options completionHandler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = lCopy;
  v12 = handlerCopy;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PAImageConversionServiceClient.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"sourceURL"}];

    v11 = 0;
  }

  v13 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v11];
  [(PAImageConversionServiceClient *)self convertImageAtSourceURLCollection:v13 toDestinationURLCollection:0 options:optionsCopy completionHandler:v12];
}

- (void)setupServiceConnection
{
  if (self->_serviceConnection)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PAImageConversionServiceClient.m" lineNumber:42 description:@"Unexpected non-nil service connection during connection setup"];
  }

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.photos.ImageConversionService" options:0];
  [(PAImageConversionServiceClient *)self setServiceConnection:v3];

  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869A8358];
  serviceConnection = [(PAImageConversionServiceClient *)self serviceConnection];
  [serviceConnection setRemoteObjectInterface:v4];

  serviceConnection2 = [(PAImageConversionServiceClient *)self serviceConnection];
  [serviceConnection2 resume];
}

- (void)dealloc
{
  serviceConnection = [(PAImageConversionServiceClient *)self serviceConnection];
  [serviceConnection invalidate];

  v4.receiver = self;
  v4.super_class = PAImageConversionServiceClient;
  [(PAImageConversionServiceClient *)&v4 dealloc];
}

- (PAImageConversionServiceClient)init
{
  v5.receiver = self;
  v5.super_class = PAImageConversionServiceClient;
  v2 = [(PAImageConversionServiceClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PAImageConversionServiceClient *)v2 setupServiceConnection];
  }

  return v3;
}

@end