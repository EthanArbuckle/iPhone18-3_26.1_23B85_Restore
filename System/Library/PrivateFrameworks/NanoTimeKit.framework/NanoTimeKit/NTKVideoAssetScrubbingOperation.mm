@interface NTKVideoAssetScrubbingOperation
- (BOOL)scrubAssetAtURL:(id)l toDestinationURL:(id)rL error:(id *)error;
@end

@implementation NTKVideoAssetScrubbingOperation

- (BOOL)scrubAssetAtURL:(id)l toDestinationURL:(id)rL error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = MEMORY[0x277CE6650];
  rLCopy = rL;
  v10 = [v8 URLAssetWithURL:lCopy options:0];
  v11 = MEMORY[0x277CE6520];
  metadata = [v10 metadata];
  v13 = [v11 metadataItemsFromArray:metadata filteredByIdentifier:*MEMORY[0x277CE5EE0]];

  v14 = [v13 count];
  v15 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      *buf = 138412290;
      v31 = lCopy;
      _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Found location data in asset: '%@'. Will scrub.", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CE6400] exportSessionWithAsset:v10 presetName:*MEMORY[0x277CE5C78]];
    [v17 setOutputFileType:*MEMORY[0x277CE5DA8]];
    metadataItemFilterForSharing = [MEMORY[0x277CE6528] metadataItemFilterForSharing];
    [v17 setMetadataItemFilter:metadataItemFilterForSharing];

    [v17 setOutputURL:rLCopy];
    v19 = dispatch_semaphore_create(0);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__NTKVideoAssetScrubbingOperation_scrubAssetAtURL_toDestinationURL_error___block_invoke;
    v26[3] = &unk_27877E238;
    v27 = lCopy;
    defaultManager = v17;
    v28 = defaultManager;
    rLCopy = v19;
    v29 = rLCopy;
    [defaultManager exportAsynchronouslyWithCompletionHandler:v26];
    v21 = dispatch_time(0, 180000000000);
    dispatch_semaphore_wait(rLCopy, v21);
    status = [defaultManager status];
    if (status >= 3)
    {
      if (status == 4)
      {
        if (error)
        {
          error = [defaultManager error];

          if (error)
          {
            [defaultManager error];
            *error = LOBYTE(error) = 0;
          }

          goto LABEL_18;
        }
      }

      else if (status != 5)
      {
        LOBYTE(error) = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v23 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v23, OS_LOG_TYPE_INFO, "[Resource Scrubber]: AVAssetExportSession timed out.", buf, 2u);
      }

      [defaultManager cancelExport];
    }

    LOBYTE(error) = 0;
    goto LABEL_18;
  }

  if (v16)
  {
    *buf = 138412290;
    v31 = lCopy;
    _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Location data not found in asset: '%@'. Passing through", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(error) = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:error];
LABEL_19:

  return error;
}

intptr_t __74__NTKVideoAssetScrubbingOperation_scrubAssetAtURL_toDestinationURL_error___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) status];
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_INFO, "[Resource Scrubber]: AVAssetExportSession finished running on asset: '%@'. Status: %li", &v6, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

@end