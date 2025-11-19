@interface PHMediaFormatConversionImplementation_MediaConversionService
- (PHMediaFormatConversionImplementation_MediaConversionService)init;
- (id)submitNonSinglePassVideoConversionRequest:(id)a3 destination:(id)a4 completionHandler:(id)a5;
- (id)submitSinglePassVideoConversionRequest:(id)a3 destination:(id)a4 completionHandler:(id)a5;
- (int64_t)transferBehaviorUserPreference;
- (void)applyCommonOptionsFromRequest:(id)a3 toOptions:(id)a4;
- (void)applyCommonOptionsFromVideoRequest:(id)a3 toOptions:(id)a4;
- (void)dealloc;
- (void)performConversionRequest:(id)a3 completionHandler:(id)a4;
- (void)performImageConversionRequest:(id)a3 completionHandler:(id)a4;
- (void)performVideoConversionRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation PHMediaFormatConversionImplementation_MediaConversionService

- (void)applyCommonOptionsFromRequest:(id)a3 toOptions:(id)a4
{
  v5 = a4;
  if ([a3 requiresPassthroughConversion])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PAMediaConversionServiceOptionIsPassthroughConversionKey"];
  }

  [v5 setObject:&unk_2869A1048 forKeyedSubscript:@"PAMediaConversionServiceOptionJobPriorityKey"];
}

- (void)performImageConversionRequest:(id)a3 completionHandler:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setMediaType:2];
  v9 = [v6 outputPathExtension];
  [v8 setOutputPathExtension:v9];

  [v8 generateTemporaryOutputFileURLForRequest:v6];
  v74 = 0;
  v10 = [v8 createTemporaryOutputFileWithErrorError:&v74];
  v11 = v74;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [MEMORY[0x277D3B420] standardPolicy];
    [v12 addObject:v13];

    v14 = [v6 source];
    v15 = [v14 renderOriginatingSignature];

    v68 = v15;
    if (v15)
    {
      v16 = MEMORY[0x277D3B410];
      v17 = [MEMORY[0x277D3B458] renderOriginatingAssetIdentifierMetadataKey];
      v18 = [v16 policyWithKey:v17 value:v15];
      [v12 addObject:v18];
    }

    else
    {
      if (![v6 requiresFormatConversion])
      {
LABEL_11:
        v22 = [v6 livePhotoPairingIdentifier];
        v23 = [v6 livePhotoPairingIdentifierBehavior];
        v67 = v22;
        if (v23 <= 2)
        {
          if (!v23)
          {
            v24 = [MEMORY[0x277CCA890] currentHandler];
            [v24 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:322 description:@"Unexpected uninitialized live photo pairing identifier behavior"];
            goto LABEL_27;
          }

          if (v23 != 2 || ([v6 source], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "livePhotoPairingIdentifier"), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, !v29))
          {
LABEL_28:
            if ([v6 locationMetadataBehavior] == 1)
            {
              v39 = [MEMORY[0x277D3B440] policyWithLocation:0];
              [v12 addObject:v39];
            }

            else
            {
              if ([v6 locationMetadataBehavior] != 2 || (objc_msgSend(v6, "location"), v40 = objc_claimAutoreleasedReturnValue(), v40, !v40))
              {
LABEL_34:
                if ([v6 creationDateMetadataBehavior] == 2)
                {
                  v43 = [v6 creationDate];

                  if (v43)
                  {
                    v44 = MEMORY[0x277D3B438];
                    v45 = [v6 creationDate];
                    v46 = [v6 creationDateTimeZone];
                    v47 = [v44 policyWithCreationDate:v45 inTimeZone:v46];
                    [v12 addObject:v47];
                  }
                }

                if ([v6 captionMetadataBehavior] == 1)
                {
                  v48 = [MEMORY[0x277D3B430] policyWithCaption:0];
                  [v12 addObject:v48];
                }

                else
                {
                  if ([v6 captionMetadataBehavior] != 2 || (objc_msgSend(v6, "caption"), v49 = objc_claimAutoreleasedReturnValue(), v49, !v49))
                  {
LABEL_43:
                    if ([v6 accessibilityDescriptionMetadataBehavior] == 1)
                    {
                      v52 = [MEMORY[0x277D3B428] policyWithAccessibilityDescription:0];
                      [v12 addObject:v52];
                    }

                    else
                    {
                      if ([v6 accessibilityDescriptionMetadataBehavior] != 2)
                      {
                        goto LABEL_49;
                      }

                      v53 = [v6 accessibilityDescription];

                      if (!v53)
                      {
                        goto LABEL_49;
                      }

                      v54 = MEMORY[0x277D3B428];
                      v52 = [v6 accessibilityDescription];
                      v55 = [v54 policyWithAccessibilityDescription:v52];
                      [v12 addObject:v55];
                    }

LABEL_49:
                    v56 = [MEMORY[0x277CBEB38] dictionary];
                    v57 = [MEMORY[0x277D3B418] policyWithPolicies:v12];
                    [v56 setObject:v57 forKeyedSubscript:@"PAMediaConversionServiceOptionMetadataPolicyKey"];

                    [v56 setObject:&unk_2869A1210 forKeyedSubscript:@"PAMediaConversionServiceOptionScaleFactorKey"];
                    [v56 setObject:&unk_2869A1030 forKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];
                    [v56 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PAMediaConversionServiceOptionFormatConversionOnlyKey"];
                    [v56 setObject:@"PHMediaFormatConversion" forKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
                    [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromRequest:v6 toOptions:v56];
                    v58 = [v6 source];
                    v59 = [v58 fileURL];
                    v60 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v59];

                    v61 = [v8 fileURL];
                    v62 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v61];

                    v63 = [(PHMediaFormatConversionImplementation_MediaConversionService *)self imageConversionServiceClient];
                    v70[0] = MEMORY[0x277D85DD0];
                    v70[1] = 3221225472;
                    v70[2] = __112__PHMediaFormatConversionImplementation_MediaConversionService_performImageConversionRequest_completionHandler___block_invoke;
                    v70[3] = &unk_27989B908;
                    v71 = v6;
                    v73 = v7;
                    v72 = v8;
                    [v63 convertImageAtSourceURLCollection:v60 toDestinationURLCollection:v62 options:v56 completionHandler:v70];

LABEL_50:
                    goto LABEL_51;
                  }

                  v50 = MEMORY[0x277D3B430];
                  v48 = [v6 caption];
                  v51 = [v50 policyWithCaption:v48];
                  [v12 addObject:v51];
                }

                goto LABEL_43;
              }

              v41 = MEMORY[0x277D3B440];
              v39 = [v6 location];
              v42 = [v41 policyWithLocation:v39];
              [v12 addObject:v42];
            }

            goto LABEL_34;
          }
        }

        else
        {
          if (v23 == 3)
          {
            v34 = MEMORY[0x277D3B410];
            v24 = [MEMORY[0x277D3B458] livePhotoPairingIdentifierMetadataKey];
            v31 = v34;
            v32 = v24;
            v33 = v22;
            goto LABEL_25;
          }

          if (v23 == 4)
          {
            v35 = [v6 source];
            v36 = [v35 livePhotoPairingIdentifier];

            if (!v36)
            {
              goto LABEL_28;
            }

            v37 = MEMORY[0x277D3B410];
            v24 = [MEMORY[0x277D3B458] livePhotoPairingIdentifierMetadataKey];
            v31 = v37;
            v32 = v24;
            v33 = v67;
            goto LABEL_25;
          }

          if (v23 != 5)
          {
            goto LABEL_28;
          }

          v24 = [v6 source];
          v25 = [v24 livePhotoPairingIdentifier];
          if (!v25)
          {
            goto LABEL_27;
          }

          v26 = v25;
          v27 = [v6 requiresFormatConversion];

          if (!v27)
          {
            goto LABEL_28;
          }
        }

        v30 = MEMORY[0x277D3B410];
        v24 = [MEMORY[0x277D3B458] livePhotoPairingIdentifierMetadataKey];
        v31 = v30;
        v32 = v24;
        v33 = 0;
LABEL_25:
        v38 = [v31 policyWithKey:v32 value:v33];
        [v12 addObject:v38];

LABEL_27:
        goto LABEL_28;
      }

      v19 = [v6 source];
      v17 = [v19 fileSignature];

      if (!v17)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v66 = [v6 source];
          *buf = 138412290;
          v76 = v66;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected nil file signature for source %@", buf, 0xCu);
        }

        v65 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:5 userInfo:0];
        [v6 setError:v65];

        [v6 setStatus:5];
        v7[2](v7);
        goto LABEL_50;
      }

      v20 = MEMORY[0x277D3B410];
      v18 = [MEMORY[0x277D3B458] originatingAssetIdentifierMetadataKey];
      v21 = [v20 policyWithKey:v18 value:v17];
      [v12 addObject:v21];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v76 = v11;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary file: %@", buf, 0xCu);
  }

  [v6 setError:v11];
  [v6 setStatus:5];
  v7[2](v7);
LABEL_51:

  v64 = *MEMORY[0x277D85DE8];
}

- (void)applyCommonOptionsFromVideoRequest:(id)a3 toOptions:(id)a4
{
  v42 = a3;
  v7 = a4;
  v8 = [v42 source];
  v9 = [v8 renderOriginatingSignature];

  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataRenderOriginatingSignatureKey"];
  }

  v10 = [v42 livePhotoPairingIdentifier];
  v11 = [v42 livePhotoPairingIdentifierBehavior];
  if (v11 <= 2)
  {
    if (!v11)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:220 description:@"Unexpected uninitialized live photo pairing identifier behavior"];

      goto LABEL_19;
    }

    if (v11 == 2)
    {
      v16 = [v42 source];
      v17 = [v16 livePhotoPairingIdentifier];

      if (v17)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_19;
  }

  switch(v11)
  {
    case 3:
LABEL_15:
      v19 = v7;
      v18 = v10;
      goto LABEL_16;
    case 4:
      v20 = [v42 source];
      v21 = [v20 livePhotoPairingIdentifier];

      if (!v21)
      {
        break;
      }

      goto LABEL_15;
    case 5:
      v12 = [v42 source];
      v13 = [v12 livePhotoPairingIdentifier];
      if (!v13)
      {

        break;
      }

      v14 = v13;
      v15 = [v42 requiresFormatConversion];

      if (!v15)
      {
        break;
      }

LABEL_13:
      v18 = &stru_28699D8A8;
      v19 = v7;
LABEL_16:
      [v19 setObject:v18 forKeyedSubscript:@"PAMediaConversionServiceOptionLivePhotoPairingIdentifierKey"];
      break;
  }

LABEL_19:
  v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v42, "locationMetadataBehavior") != 1}];
  [v7 setObject:v23 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeLocationKey"];

  if ([v42 locationMetadataBehavior] == 2)
  {
    v24 = [v42 location];

    if (v24)
    {
      v25 = [v42 location];
      [v7 setObject:v25 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataLocationKey"];
    }
  }

  if ([v42 creationDateMetadataBehavior] == 2)
  {
    v26 = [v42 creationDate];

    if (v26)
    {
      v27 = [v42 creationDate];
      [v7 setObject:v27 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataContentCreationDateKey"];

      v28 = [v42 creationDateTimeZone];

      if (v28)
      {
        v29 = [v42 creationDateTimeZone];
        v30 = [v42 creationDate];
        v31 = [v29 secondsFromGMTForDate:v30];

        v32 = [MEMORY[0x277CCABB0] numberWithInteger:v31];
        [v7 setObject:v32 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataContentCreationDateTimeZoneOffsetKey"];
      }
    }
  }

  v33 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v42, "captionMetadataBehavior") != 1}];
  [v7 setObject:v33 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeDescriptionKey"];

  if ([v42 captionMetadataBehavior] == 2)
  {
    v34 = [v42 caption];

    if (v34)
    {
      v35 = [v42 caption];
      [v7 setObject:v35 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataDescriptionKey"];
    }
  }

  v36 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v42, "accessibilityDescriptionMetadataBehavior") != 1}];
  [v7 setObject:v36 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeAccessibilityDescriptionKey"];

  if ([v42 accessibilityDescriptionMetadataBehavior] == 2)
  {
    v37 = [v42 accessibilityDescription];

    if (v37)
    {
      v38 = [v42 accessibilityDescription];
      [v7 setObject:v38 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataAccessibilityDescriptionKey"];
    }
  }

  [v7 setObject:&unk_2869A1000 forKeyedSubscript:@"PAMediaConversionServiceOptionPowerEfficiencyKey"];
  [v7 setObject:&unk_2869A1018 forKeyedSubscript:@"PAMediaConversionServiceOptionPowerEfficiencyMinimumDurationKey"];
  v39 = *MEMORY[0x277CE5C00];
  v40 = [v42 videoExportPreset];

  if (v40)
  {
    v41 = [v42 videoExportPreset];

    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"PAMediaConversionServiceOptionIsPassthroughConversionKey"];
  }

  else
  {
    if (![v42 shouldExportAsHDR])
    {
      goto LABEL_37;
    }

    v41 = *MEMORY[0x277CE5BF8];
  }

  v39 = v41;
LABEL_37:
  [v7 setObject:v39 forKeyedSubscript:@"PAMediaConversionServiceOptionExportPresetNameKey"];
}

- (id)submitSinglePassVideoConversionRequest:(id)a3 destination:(id)a4 completionHandler:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = MEMORY[0x277CBEB38];
  v31 = @"PAMediaConversionServiceOptionTargetFileSizeKey";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "estimatedOutputFileLength")}];
  v32[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v14 = [v11 dictionaryWithDictionary:v13];

  [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromRequest:v8 toOptions:v14];
  [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromVideoRequest:v8 toOptions:v14];
  objc_initWeak(&location, v8);
  v15 = [(PHMediaFormatConversionImplementation_MediaConversionService *)self videoConversionServiceClient];
  v16 = [v8 source];
  v17 = [v16 fileURL];
  v18 = [v8 destination];
  v19 = [v18 fileURL];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __133__PHMediaFormatConversionImplementation_MediaConversionService_submitSinglePassVideoConversionRequest_destination_completionHandler___block_invoke;
  v26[3] = &unk_27989B858;
  v20 = v10;
  v27 = v20;
  objc_copyWeak(&v29, &location);
  v21 = v9;
  v28 = v21;
  v22 = [v15 convertVideoAtSourceURL:v17 toDestinationURL:v19 options:v14 completionHandler:v26];

  [v20 startObservingProgress:v22 forRequest:v8];
  objc_destroyWeak(&v29);

  objc_destroyWeak(&location);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)submitNonSinglePassVideoConversionRequest:(id)a3 destination:(id)a4 completionHandler:(id)a5
{
  v30[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEB38];
  v12 = *MEMORY[0x277CE5DA8];
  v29[0] = @"PAMediaConversionServiceOptionOutputFileTypeKey";
  v29[1] = @"PAMediaConversionServiceOptionAVIncludeMetadataKey";
  v30[0] = v12;
  v30[1] = MEMORY[0x277CBEC38];
  v29[2] = @"PAMediaConversionServiceOptionAudioTrackGroupHandlingKey";
  v30[2] = &unk_2869A0FE8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v14 = [v11 dictionaryWithDictionary:v13];

  [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromRequest:v8 toOptions:v14];
  [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromVideoRequest:v8 toOptions:v14];
  objc_initWeak(&location, v8);
  v15 = [(PHMediaFormatConversionImplementation_MediaConversionService *)self videoConversionServiceClient];
  v16 = [v8 source];
  v17 = [v16 fileURL];
  v18 = [v9 fileURL];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __136__PHMediaFormatConversionImplementation_MediaConversionService_submitNonSinglePassVideoConversionRequest_destination_completionHandler___block_invoke;
  v24[3] = &unk_27989B858;
  objc_copyWeak(&v27, &location);
  v19 = v9;
  v25 = v19;
  v20 = v10;
  v26 = v20;
  v21 = [v15 convertVideoAtSourceURL:v17 toDestinationURL:v18 options:v14 completionHandler:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)performVideoConversionRequest:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 destination];
  if (!v8)
  {
    v8 = objc_opt_new();
    [v8 setMediaType:1];
    [v8 generateTemporaryOutputFileURLForRequest:v6];
  }

  v14 = 0;
  v9 = [v8 createTemporaryOutputFileWithErrorError:&v14];
  v10 = v14;
  if (v9)
  {
    if ([v6 requiresSinglePassVideoConversion])
    {
      [(PHMediaFormatConversionImplementation_MediaConversionService *)self submitSinglePassVideoConversionRequest:v6 destination:v8 completionHandler:v7];
    }

    else
    {
      [(PHMediaFormatConversionImplementation_MediaConversionService *)self submitNonSinglePassVideoConversionRequest:v6 destination:v8 completionHandler:v7];
    }
    v11 = ;
    if (v11)
    {
      v12 = [v6 progress];
      [v12 addChild:v11 withPendingUnitCount:1];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected nil progress for conversion request %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary file: %@", buf, 0xCu);
    }

    [v6 setError:v10];
    [v6 setStatus:5];
    v7[2](v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)performConversionRequest:(id)a3 completionHandler:(id)a4
{
  v14 = a3;
  v7 = a4;
  v8 = v14;
  if (!v14)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    v8 = 0;
  }

  if ([v8 isCompositeRequest])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"!request.isCompositeRequest"}];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
    goto LABEL_5;
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  v9 = [v14 source];
  v10 = [v9 mediaType];

  if (v10 == 1)
  {
    [(PHMediaFormatConversionImplementation_MediaConversionService *)self performVideoConversionRequest:v14 completionHandler:v7];
  }

  else
  {
    [(PHMediaFormatConversionImplementation_MediaConversionService *)self performImageConversionRequest:v14 completionHandler:v7];
  }
}

- (void)dealloc
{
  [(PAVideoConversionServiceClient *)self->_videoConversionServiceClient invalidateAfterPendingRequestCompletion];
  v3.receiver = self;
  v3.super_class = PHMediaFormatConversionImplementation_MediaConversionService;
  [(PHMediaFormatConversionImplementation_MediaConversionService *)&v3 dealloc];
}

- (PHMediaFormatConversionImplementation_MediaConversionService)init
{
  v8.receiver = self;
  v8.super_class = PHMediaFormatConversionImplementation_MediaConversionService;
  v2 = [(PHMediaFormatConversionImplementation_MediaConversionService *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    videoConversionServiceClient = v2->_videoConversionServiceClient;
    v2->_videoConversionServiceClient = v3;

    v5 = objc_opt_new();
    imageConversionServiceClient = v2->_imageConversionServiceClient;
    v2->_imageConversionServiceClient = v5;
  }

  return v2;
}

- (int64_t)transferBehaviorUserPreference
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.camera"];
  v3 = [v2 valueForKey:@"CAMUserPreferenceMediaTransferBehavior"];
  if (!v3 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = [v3 integerValue];
  if (v4 >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown transfer behavior user preference value %ld, using automatic", &v7, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

@end