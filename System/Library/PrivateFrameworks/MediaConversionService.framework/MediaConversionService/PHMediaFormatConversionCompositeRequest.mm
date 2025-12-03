@interface PHMediaFormatConversionCompositeRequest
- (BOOL)areAllSubrequestsPreflighted;
- (BOOL)requiresAccessibilityDescriptionMetadataChange;
- (BOOL)requiresCaptionMetadataChange;
- (BOOL)requiresCreationDateMetadataChange;
- (BOOL)requiresFormatConversion;
- (BOOL)requiresLocationMetadataChange;
- (id)compositeRequestCommonInitWithError:(id *)error;
- (void)didFinishProcessing;
- (void)enqueueSubrequestsOnConversionManager:(id)manager;
- (void)enumerateSubrequests:(id)subrequests;
- (void)preflightWithConversionManager:(id)manager;
- (void)propagateRequestOptionsToSubrequests;
- (void)setupProgress;
@end

@implementation PHMediaFormatConversionCompositeRequest

- (void)setupProgress
{
  v3 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PHMediaFormatConversionCompositeRequest_setupProgress__block_invoke;
  v5[3] = &unk_27989B6A0;
  v6 = v3;
  v4 = v3;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v5];
  [(PHMediaFormatConversionRequest *)self setProgress:v4];
}

void __56__PHMediaFormatConversionCompositeRequest_setupProgress__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setTotalUnitCount:{objc_msgSend(v3, "totalUnitCount") + 1}];
  v5 = *(a1 + 32);
  v6 = [v4 progress];

  [v5 addChild:v6 withPendingUnitCount:1];
}

- (void)didFinishProcessing
{
  v10 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__PHMediaFormatConversionCompositeRequest_didFinishProcessing__block_invoke;
  v5[3] = &unk_27989B6A0;
  v5[4] = self;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v5];
  if ([(PHMediaFormatConversionRequest *)self status]== 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      error = [(PHMediaFormatConversionRequest *)self error];
      *buf = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = error;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Composite conversion request %@ failed: %@", buf, 0x16u);
    }
  }

  else
  {
    [(PHMediaFormatConversionCompositeRequest *)self postProcessSuccessfulCompositeRequest];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __62__PHMediaFormatConversionCompositeRequest_didFinishProcessing__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if ([*(a1 + 32) status] != 5)
  {
    v5 = [v4 status];
    v6 = *(a1 + 32);
    if (v5 == 4)
    {
      [v6 setStatus:4];
    }

    else
    {
      [v6 setStatus:5];
      v7 = MEMORY[0x277CCA9B8];
      v8 = [v4 error];
      if (v8)
      {
        v12 = *MEMORY[0x277CCA7E8];
        v2 = [v4 error];
        v13[0] = v2;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      }

      else
      {
        v9 = 0;
      }

      v10 = [v7 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:6 userInfo:v9];
      [*(a1 + 32) setError:v10];

      if (v8)
      {
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)propagateRequestOptionsToSubrequests
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __79__PHMediaFormatConversionCompositeRequest_propagateRequestOptionsToSubrequests__block_invoke;
  v2[3] = &unk_27989B6A0;
  v2[4] = self;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v2];
}

void __79__PHMediaFormatConversionCompositeRequest_propagateRequestOptionsToSubrequests__block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 setLivePhotoPairingIdentifierBehavior:{objc_msgSend(*(a1 + 32), "livePhotoPairingIdentifierBehavior")}];
  v3 = [*(a1 + 32) livePhotoPairingIdentifier];

  if (v3)
  {
    v4 = [*(a1 + 32) livePhotoPairingIdentifier];
    [v14 setLivePhotoPairingIdentifier:v4];
  }

  if ([*(a1 + 32) shouldPadOutputFileToEstimatedLength])
  {
    [v14 setShouldPadOutputFileToEstimatedLength:1];
  }

  if ([*(a1 + 32) forceFormatConversion])
  {
    [v14 setForceFormatConversion:1];
  }

  v5 = [*(a1 + 32) locationMetadataBehavior];
  v6 = [*(a1 + 32) location];
  [v14 setLocationMetadataBehavior:v5 withLocation:v6];

  v7 = [*(a1 + 32) creationDateMetadataBehavior];
  v8 = [*(a1 + 32) creationDate];
  v9 = [*(a1 + 32) creationDateTimeZone];
  [v14 setCreationDateMetadataBehavior:v7 withCreationDate:v8 inTimeZone:v9];

  v10 = [*(a1 + 32) captionMetadataBehavior];
  v11 = [*(a1 + 32) caption];
  [v14 setCaptionMetadataBehavior:v10 withCaption:v11];

  v12 = [*(a1 + 32) accessibilityDescriptionMetadataBehavior];
  v13 = [*(a1 + 32) accessibilityDescription];
  [v14 setAccessibilityDescriptionMetadataBehavior:v12 withAccessibilityDescription:v13];
}

- (void)enumerateSubrequests:(id)subrequests
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Subclasses must override %@", v5}];
}

- (void)enqueueSubrequestsOnConversionManager:(id)manager
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Subclasses must override %@", v5}];
}

- (id)compositeRequestCommonInitWithError:(id *)error
{
  if ([(PHMediaFormatConversionRequest *)self prepareWithError:error])
  {
    [(PHMediaFormatConversionCompositeRequest *)self setupProgress];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)requiresAccessibilityDescriptionMetadataChange
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__PHMediaFormatConversionCompositeRequest_requiresAccessibilityDescriptionMetadataChange__block_invoke;
  v4[3] = &unk_27989B6C8;
  v4[4] = &v5;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __89__PHMediaFormatConversionCompositeRequest_requiresAccessibilityDescriptionMetadataChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 requiresAccessibilityDescriptionMetadataChange];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

- (BOOL)requiresCaptionMetadataChange
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__PHMediaFormatConversionCompositeRequest_requiresCaptionMetadataChange__block_invoke;
  v4[3] = &unk_27989B6C8;
  v4[4] = &v5;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __72__PHMediaFormatConversionCompositeRequest_requiresCaptionMetadataChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 requiresCaptionMetadataChange];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

- (BOOL)requiresCreationDateMetadataChange
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__PHMediaFormatConversionCompositeRequest_requiresCreationDateMetadataChange__block_invoke;
  v4[3] = &unk_27989B6C8;
  v4[4] = &v5;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __77__PHMediaFormatConversionCompositeRequest_requiresCreationDateMetadataChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 requiresCreationDateMetadataChange];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

- (BOOL)requiresLocationMetadataChange
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__PHMediaFormatConversionCompositeRequest_requiresLocationMetadataChange__block_invoke;
  v4[3] = &unk_27989B6C8;
  v4[4] = &v5;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __73__PHMediaFormatConversionCompositeRequest_requiresLocationMetadataChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 requiresLocationMetadataChange];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

- (BOOL)requiresFormatConversion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__PHMediaFormatConversionCompositeRequest_requiresFormatConversion__block_invoke;
  v4[3] = &unk_27989B6C8;
  v4[4] = &v5;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __67__PHMediaFormatConversionCompositeRequest_requiresFormatConversion__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 requiresFormatConversion];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

- (BOOL)areAllSubrequestsPreflighted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__PHMediaFormatConversionCompositeRequest_areAllSubrequestsPreflighted__block_invoke;
  v4[3] = &unk_27989B6C8;
  v4[4] = &v5;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __71__PHMediaFormatConversionCompositeRequest_areAllSubrequestsPreflighted__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    result = [a2 preflighted];
    v2 = *(*(a1 + 32) + 8);
  }

  else
  {
    result = 0;
  }

  *(v2 + 24) = result;
  return result;
}

- (void)preflightWithConversionManager:(id)manager
{
  managerCopy = manager;
  status = [(PHMediaFormatConversionRequest *)self status];
  if (status <= 5 && ((1 << status) & 0x31) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    statusString = [(PHMediaFormatConversionRequest *)self statusString];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1503 description:{@"Preflight of request in invalid state %@", statusString}];
  }

  if ([(PHMediaFormatConversionRequest *)self preflighted])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1506 description:@"Preflight of already preflighted request"];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__PHMediaFormatConversionCompositeRequest_preflightWithConversionManager___block_invoke;
  v11[3] = &unk_27989B6A0;
  v12 = managerCopy;
  v9 = managerCopy;
  [(PHMediaFormatConversionCompositeRequest *)self enumerateSubrequests:v11];
  [(PHMediaFormatConversionRequest *)self setPreflighted:1];
}

void __74__PHMediaFormatConversionCompositeRequest_preflightWithConversionManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 preflighted] & 1) == 0)
  {
    [*(a1 + 32) preflightConversionRequest:v3];
  }
}

@end