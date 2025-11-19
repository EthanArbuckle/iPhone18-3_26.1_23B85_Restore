@interface PHMediaFormatLivePhotoConversionRequest
+ (id)requestForImageConversionRequest:(id)a3 videoConversionRequest:(id)a4 error:(id *)a5;
+ (id)requestForSource:(id)a3 destinationCapabilities:(id)a4 error:(id *)a5;
- (void)didPreflightSubrequest:(id)a3;
- (void)enqueueSubrequestsOnConversionManager:(id)a3;
- (void)enumerateSubrequests:(id)a3;
@end

@implementation PHMediaFormatLivePhotoConversionRequest

- (void)didPreflightSubrequest:(id)a3
{
  if ([(PHMediaFormatConversionCompositeRequest *)self areAllSubrequestsPreflighted])
  {
    v8 = [(PHMediaFormatLivePhotoConversionRequest *)self imageConversionRequest];
    v5 = [(PHMediaFormatLivePhotoConversionRequest *)self videoConversionRequest];
    if ([(PHMediaFormatConversionCompositeRequest *)self requiresFormatConversion])
    {
      [v8 setForceFormatConversion:1];
      [v5 setForceFormatConversion:1];
      if ([(PHMediaFormatConversionRequest *)self livePhotoPairingIdentifierBehavior]== 4)
      {
        v6 = [(PHMediaFormatConversionRequest *)self livePhotoPairingIdentifier];
        if (!v6)
        {
          v7 = [MEMORY[0x277CCA890] currentHandler];
          [v7 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1713 description:@"Unexpected nil pairing identifier for configured live photo pairing identifier behavior"];
        }

        [v8 setLivePhotoPairingIdentifier:v6];
        [v5 setLivePhotoPairingIdentifier:v6];
      }
    }
  }
}

- (void)enumerateSubrequests:(id)a3
{
  v5 = a3;
  v6 = [(PHMediaFormatLivePhotoConversionRequest *)self imageConversionRequest];
  (*(a3 + 2))(v5, v6);

  v7 = [(PHMediaFormatLivePhotoConversionRequest *)self videoConversionRequest];
  (*(a3 + 2))(v5, v7);
}

- (void)enqueueSubrequestsOnConversionManager:(id)a3
{
  v4 = a3;
  [(PHMediaFormatConversionCompositeRequest *)self propagateRequestOptionsToSubrequests];
  v5 = [(PHMediaFormatLivePhotoConversionRequest *)self imageConversionRequest];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__PHMediaFormatLivePhotoConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke;
  v8[3] = &unk_27989BA48;
  v8[4] = self;
  [v4 enqueueConversionRequest:v5 completionHandler:v8];

  v6 = [(PHMediaFormatLivePhotoConversionRequest *)self videoConversionRequest];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PHMediaFormatLivePhotoConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke_749;
  v7[3] = &unk_27989BA48;
  v7[4] = self;
  [v4 enqueueConversionRequest:v6 completionHandler:v7];
}

void __81__PHMediaFormatLivePhotoConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) imageConversionRequest];
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Live photo request image subrequest finished: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __81__PHMediaFormatLivePhotoConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke_749(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) videoConversionRequest];
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Live photo request video subrequest finished: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)requestForImageConversionRequest:(id)a3 videoConversionRequest:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PHMediaFormatConversion.m" lineNumber:1664 description:{@"Invalid parameter not satisfying: %@", @"imageConversionRequest"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"PHMediaFormatConversion.m" lineNumber:1665 description:{@"Invalid parameter not satisfying: %@", @"videoConversionRequest"}];

LABEL_3:
  v12 = objc_opt_new();
  [v12 setImageConversionRequest:v9];
  [v9 setParentRequest:v12];
  [v12 setVideoConversionRequest:v11];
  [v11 setParentRequest:v12];
  [v12 setLivePhotoPairingIdentifierBehavior:4];
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [v13 UUIDString];
  [v12 setLivePhotoPairingIdentifier:v14];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = [v12 livePhotoPairingIdentifier];
    *buf = 138412290;
    v22 = v18;
    _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Initial live photo pairing identifier for live photo request: %@", buf, 0xCu);
  }

  v15 = [v12 compositeRequestCommonInitWithError:a5];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)requestForSource:(id)a3 destinationCapabilities:(id)a4 error:(id *)a5
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = NSStringFromSelector(a2);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v5 raise:v6 format:{@"The constructor %@ is unavailable for %@", v7, v9}];

  return 0;
}

@end