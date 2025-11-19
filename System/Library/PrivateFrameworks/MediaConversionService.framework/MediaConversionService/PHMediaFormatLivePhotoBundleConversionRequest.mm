@interface PHMediaFormatLivePhotoBundleConversionRequest
- (BOOL)prepareWithError:(id *)a3;
- (void)enqueueSubrequestsOnConversionManager:(id)a3;
- (void)enumerateSubrequests:(id)a3;
- (void)postProcessSuccessfulCompositeRequest;
@end

@implementation PHMediaFormatLivePhotoBundleConversionRequest

- (void)postProcessSuccessfulCompositeRequest
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setMediaType:3];
  [v3 generateTemporaryOutputFileURLForRequest:self];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __86__PHMediaFormatLivePhotoBundleConversionRequest_postProcessSuccessfulCompositeRequest__block_invoke;
  v32[3] = &unk_27989B6F0;
  v32[4] = self;
  v33 = 0;
  v4 = MEMORY[0x259C84340](v32);
  v31 = 0;
  v5 = [v3 createTemporaryOutputDirectoryWithError:&v31];
  v6 = v31;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277D3B520]);
    v8 = [(PHMediaFormatConversionRequest *)self source];
    v9 = [v8 fileURL];
    v10 = [v7 initWithBundleAtURL:v9];

    if (v10)
    {
      v11 = [(PHMediaFormatLivePhotoBundleConversionRequest *)self livePhotoConversionRequest];
      v12 = [v11 videoConversionRequest];
      v13 = [v12 destination];
      v14 = [v13 fileURL];

      v15 = [(PHMediaFormatLivePhotoBundleConversionRequest *)self livePhotoConversionRequest];
      v16 = [v15 imageConversionRequest];
      v17 = [v16 destination];
      v18 = [v17 fileURL];

      if ([(PHMediaFormatConversionCompositeRequest *)self requiresFormatConversion])
      {
        [(PHMediaFormatConversionRequest *)self livePhotoPairingIdentifier];
      }

      else
      {
        [v10 pairingIdentifier];
      }
      v19 = ;
      v20 = objc_alloc(MEMORY[0x277D3B520]);
      v29 = v14;
      v21 = [v14 path];
      v28 = v18;
      v22 = [v18 path];
      [v10 imageDisplayTime];
      v23 = [v20 initWithPathToVideo:v21 pathToImage:v22 imageDisplayTime:buf pairingIdentifier:v19];

      v24 = [v3 temporaryOutputFileURL];
      v30 = v6;
      v25 = [v23 writeToBundleAtURL:v24 error:&v30];
      v26 = v30;

      if (v25)
      {
        [(PHMediaFormatConversionRequest *)self setDestination:v3];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v35 = v26;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo output bundle: %@", buf, 0xCu);
        }

        v4[2](v4);
      }

      v6 = v26;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo source bundle", buf, 2u);
      }

      v4[2](v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create temporary output parent directory for live photo bundle: %@", buf, 0xCu);
    }

    v4[2](v4);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __86__PHMediaFormatLivePhotoBundleConversionRequest_postProcessSuccessfulCompositeRequest__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v8 = *MEMORY[0x277CCA7E8];
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:7 userInfo:v4];
  [*(a1 + 32) setError:v5];

  if (v3)
  {
  }

  result = [*(a1 + 32) setStatus:5];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)enumerateSubrequests:(id)a3
{
  v5 = a3;
  v6 = [(PHMediaFormatLivePhotoBundleConversionRequest *)self livePhotoConversionRequest];
  (*(a3 + 2))(v5, v6);
}

- (void)enqueueSubrequestsOnConversionManager:(id)a3
{
  v4 = a3;
  [(PHMediaFormatConversionCompositeRequest *)self propagateRequestOptionsToSubrequests];
  v5 = [(PHMediaFormatLivePhotoBundleConversionRequest *)self livePhotoConversionRequest];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__PHMediaFormatLivePhotoBundleConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke;
  v6[3] = &unk_27989BA48;
  v6[4] = self;
  [v4 enqueueConversionRequest:v5 completionHandler:v6];
}

void __87__PHMediaFormatLivePhotoBundleConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) livePhotoConversionRequest];
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Live photo bundle request subrequest finished: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)prepareWithError:(id *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [(PHMediaFormatConversionRequest *)self source];
  v6 = [v5 fileURL];

  v7 = [objc_alloc(MEMORY[0x277D3B520]) initWithBundleAtURL:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 imagePath];
    v10 = [v8 videoPath];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v6;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get image and video path from pvt bundle at path %@", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      v31 = v9;
      v32 = v10;
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
      v15 = [PHMediaFormatConversionSource imageSourceForFileURL:v14];

      v16 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
      v29 = v15;
      v17 = [PHMediaFormatConversionRequest requestForSource:v15 destinationCapabilities:v16 error:a3];

      v30 = v17;
      if (v17)
      {
        v11 = v32;
        v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v32];
        v19 = [PHMediaFormatConversionSource videoSourceForFileURL:v18];

        v20 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
        v28 = v19;
        v21 = [PHMediaFormatConversionRequest requestForSource:v19 destinationCapabilities:v20 error:a3];

        if (v21)
        {
          v22 = [PHMediaFormatLivePhotoConversionRequest requestForImageConversionRequest:v17 videoConversionRequest:v21 error:a3];
          v13 = v22 != 0;
          if (v22)
          {
            [(PHMediaFormatConversionRequest *)self setLivePhotoPairingIdentifierBehavior:4];
            v23 = [MEMORY[0x277CCAD78] UUID];
            v24 = [v23 UUIDString];
            [(PHMediaFormatConversionRequest *)self setLivePhotoPairingIdentifier:v24];

            [(PHMediaFormatLivePhotoBundleConversionRequest *)self setLivePhotoConversionRequest:v22];
            [v22 setParentRequest:self];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v6;
            _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo bundle request for %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v32;
            _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo bundle video subrequest for %@", buf, 0xCu);
          }

          v13 = 0;
        }

        v9 = v31;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v31;
        v34 = v31;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo bundle image subrequest for %@", buf, 0xCu);
        v13 = 0;
        v11 = v32;
      }

      else
      {
        v13 = 0;
        v9 = v31;
        v11 = v32;
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:5 userInfo:0];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v27 = [v6 path];
      *buf = 138412290;
      v34 = v27;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo bundle with path %@", buf, 0xCu);
    }

    v13 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v13;
}

@end