@interface PHMediaFormatLivePhotoConversionRequest
+ (id)requestForImageConversionRequest:(id)request videoConversionRequest:(id)conversionRequest error:(id *)error;
+ (id)requestForSource:(id)source destinationCapabilities:(id)capabilities error:(id *)error;
- (void)didPreflightSubrequest:(id)subrequest;
- (void)enqueueSubrequestsOnConversionManager:(id)manager;
- (void)enumerateSubrequests:(id)subrequests;
@end

@implementation PHMediaFormatLivePhotoConversionRequest

- (void)didPreflightSubrequest:(id)subrequest
{
  if ([(PHMediaFormatConversionCompositeRequest *)self areAllSubrequestsPreflighted])
  {
    imageConversionRequest = [(PHMediaFormatLivePhotoConversionRequest *)self imageConversionRequest];
    videoConversionRequest = [(PHMediaFormatLivePhotoConversionRequest *)self videoConversionRequest];
    if ([(PHMediaFormatConversionCompositeRequest *)self requiresFormatConversion])
    {
      [imageConversionRequest setForceFormatConversion:1];
      [videoConversionRequest setForceFormatConversion:1];
      if ([(PHMediaFormatConversionRequest *)self livePhotoPairingIdentifierBehavior]== 4)
      {
        livePhotoPairingIdentifier = [(PHMediaFormatConversionRequest *)self livePhotoPairingIdentifier];
        if (!livePhotoPairingIdentifier)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1713 description:@"Unexpected nil pairing identifier for configured live photo pairing identifier behavior"];
        }

        [imageConversionRequest setLivePhotoPairingIdentifier:livePhotoPairingIdentifier];
        [videoConversionRequest setLivePhotoPairingIdentifier:livePhotoPairingIdentifier];
      }
    }
  }
}

- (void)enumerateSubrequests:(id)subrequests
{
  subrequestsCopy = subrequests;
  imageConversionRequest = [(PHMediaFormatLivePhotoConversionRequest *)self imageConversionRequest];
  (*(subrequests + 2))(subrequestsCopy, imageConversionRequest);

  videoConversionRequest = [(PHMediaFormatLivePhotoConversionRequest *)self videoConversionRequest];
  (*(subrequests + 2))(subrequestsCopy, videoConversionRequest);
}

- (void)enqueueSubrequestsOnConversionManager:(id)manager
{
  managerCopy = manager;
  [(PHMediaFormatConversionCompositeRequest *)self propagateRequestOptionsToSubrequests];
  imageConversionRequest = [(PHMediaFormatLivePhotoConversionRequest *)self imageConversionRequest];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__PHMediaFormatLivePhotoConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke;
  v8[3] = &unk_27989BA48;
  v8[4] = self;
  [managerCopy enqueueConversionRequest:imageConversionRequest completionHandler:v8];

  videoConversionRequest = [(PHMediaFormatLivePhotoConversionRequest *)self videoConversionRequest];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PHMediaFormatLivePhotoConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke_749;
  v7[3] = &unk_27989BA48;
  v7[4] = self;
  [managerCopy enqueueConversionRequest:videoConversionRequest completionHandler:v7];
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

+ (id)requestForImageConversionRequest:(id)request videoConversionRequest:(id)conversionRequest error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  conversionRequestCopy = conversionRequest;
  v11 = conversionRequestCopy;
  if (requestCopy)
  {
    if (conversionRequestCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1664 description:{@"Invalid parameter not satisfying: %@", @"imageConversionRequest"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1665 description:{@"Invalid parameter not satisfying: %@", @"videoConversionRequest"}];

LABEL_3:
  v12 = objc_opt_new();
  [v12 setImageConversionRequest:requestCopy];
  [requestCopy setParentRequest:v12];
  [v12 setVideoConversionRequest:v11];
  [v11 setParentRequest:v12];
  [v12 setLivePhotoPairingIdentifierBehavior:4];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v12 setLivePhotoPairingIdentifier:uUIDString];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    livePhotoPairingIdentifier = [v12 livePhotoPairingIdentifier];
    *buf = 138412290;
    v22 = livePhotoPairingIdentifier;
    _os_log_debug_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Initial live photo pairing identifier for live photo request: %@", buf, 0xCu);
  }

  v15 = [v12 compositeRequestCommonInitWithError:error];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)requestForSource:(id)source destinationCapabilities:(id)capabilities error:(id *)error
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