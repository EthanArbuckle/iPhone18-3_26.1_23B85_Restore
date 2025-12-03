@interface HFCameraClipFeedbackPreparationOperation
- (HFCameraClipFeedbackPreparationOperation)initWithCameraClip:(id)clip completionHandler:(id)handler;
- (void)main;
@end

@implementation HFCameraClipFeedbackPreparationOperation

- (HFCameraClipFeedbackPreparationOperation)initWithCameraClip:(id)clip completionHandler:(id)handler
{
  clipCopy = clip;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HFCameraClipFeedbackPreparationOperation;
  v9 = [(HFCameraClipFeedbackPreparationOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cameraClip, clip);
    v11 = _Block_copy(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (void)main
{
  v33 = *MEMORY[0x277D85DE8];
  cameraClip = [(HFCameraClipFeedbackPreparationOperation *)self cameraClip];
  v4 = [HFCameraUtilities videoDestinationURLForCameraClip:cameraClip strippedAudio:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v4 path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v8 = HFLogForCategory(0x14uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Stripped audio file exists at url:%@.", buf, 0xCu);
    }

    completionHandler = [(HFCameraClipFeedbackPreparationOperation *)self completionHandler];
    (completionHandler)[2](completionHandler, v4);
  }

  else
  {
    cameraClip2 = [(HFCameraClipFeedbackPreparationOperation *)self cameraClip];
    completionHandler = [HFCameraUtilities videoDestinationURLForCameraClip:cameraClip2];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [completionHandler path];
    v13 = [defaultManager2 fileExistsAtPath:path2];

    v14 = HFLogForCategory(0x14uLL);
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        cameraClip3 = [(HFCameraClipFeedbackPreparationOperation *)self cameraClip];
        hf_prettyDescription = [cameraClip3 hf_prettyDescription];
        *buf = 138412290;
        v30 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Proceed to strip audio file and truncate file to 20 seconds for clip: %@", buf, 0xCu);
      }

      v18 = [MEMORY[0x277CE63D8] assetWithURL:completionHandler];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__HFCameraClipFeedbackPreparationOperation_main__block_invoke;
      v24[3] = &unk_277DF3398;
      v25 = v18;
      v26 = completionHandler;
      selfCopy = self;
      v28 = v4;
      completionHandler2 = v18;
      [completionHandler2 loadValuesAsynchronouslyForKeys:&unk_282525798 completionHandler:v24];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        cameraClip4 = [(HFCameraClipFeedbackPreparationOperation *)self cameraClip];
        hf_prettyDescription2 = [cameraClip4 hf_prettyDescription];
        path3 = [completionHandler path];
        *buf = 138412546;
        v30 = hf_prettyDescription2;
        v31 = 2112;
        v32 = path3;
        _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Unable to find file to convert for clip: %@; URL: %@. THIS SHOULD NEVER HAPPEN.", buf, 0x16u);
      }

      completionHandler2 = [(HFCameraClipFeedbackPreparationOperation *)self completionHandler];
      (*(completionHandler2 + 2))(completionHandler2, 0);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __48__HFCameraClipFeedbackPreparationOperation_main__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6548] composition];
  v3 = *MEMORY[0x277CE5EA8];
  v4 = [v2 addMutableTrackWithMediaType:*MEMORY[0x277CE5EA8] preferredTrackID:0];
  v5 = [*(a1 + 32) tracksWithMediaType:v3];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 duration];
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
    }

    start = **&MEMORY[0x277CC08F0];
    v19 = *&start.value;
    epoch = start.epoch;
    CMTimeRangeMake(&buf, &start, &duration);
    *&duration.value = v19;
    duration.epoch = epoch;
    [v4 insertTimeRange:&buf ofTrack:v6 atTime:&duration error:0];
    v14 = objc_alloc(MEMORY[0x277CE6400]);
    v15 = [v14 initWithAsset:v2 presetName:*MEMORY[0x277CE5C78]];
    [v15 setOutputFileType:*MEMORY[0x277CE5DA8]];
    [v15 setOutputURL:*(a1 + 56)];
    [v15 setShouldOptimizeForNetworkUse:1];
    CMTimeMake(&buf.start, 0, 1000);
    CMTimeMakeWithSeconds(&duration, 20.0, 1000);
    CMTimeRangeMake(&v25, &buf.start, &duration);
    buf = v25;
    [v15 setTimeRange:&buf];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __48__HFCameraClipFeedbackPreparationOperation_main__block_invoke_5;
    v20[3] = &unk_277DF3398;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = *(a1 + 40);
    v10 = v15;
    [v10 exportAsynchronouslyWithCompletionHandler:v20];
  }

  else
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [*(a1 + 40) path];
    [v8 removeItemAtPath:v9 error:0];

    v10 = HFLogForCategory(0x14uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 48) cameraClip];
      v12 = [v11 hf_prettyDescription];
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = v12;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Missing video track. Unable to strip audio from clip: %@", &buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __48__HFCameraClipFeedbackPreparationOperation_main__block_invoke_5(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) status];
  switch(v2)
  {
    case 5:
      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [*(a1 + 56) path];
      [v17 removeItemAtPath:v18 error:0];

      v12 = HFLogForCategory(0x14uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 40) cameraClip];
        v14 = [v13 hf_prettyDescription];
        v15 = [*(a1 + 32) error];
        v20 = 138412546;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        v16 = "Cancelled audio stripping and truncation of clip: %@; error: %@";
        goto LABEL_14;
      }

LABEL_10:

      v7 = [*(a1 + 40) completionHandler];
      v9 = v7[2];
LABEL_11:
      v9();

      break;
    case 4:
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [*(a1 + 56) path];
      [v10 removeItemAtPath:v11 error:0];

      v12 = HFLogForCategory(0x14uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 40) cameraClip];
        v14 = [v13 hf_prettyDescription];
        v15 = [*(a1 + 32) error];
        v20 = 138412546;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        v16 = "Failure to strip audio and truncate clip: %@; error: %@";
LABEL_14:
        _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, v16, &v20, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    case 3:
      v3 = HFLogForCategory(0x14uLL);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 40) cameraClip];
        v5 = [v4 hf_prettyDescription];
        v6 = *(a1 + 48);
        v20 = 138412546;
        v21 = v5;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Finished stripping/truncating file for clip: %@; URL: %@.", &v20, 0x16u);
      }

      v7 = [*(a1 + 40) completionHandler];
      v8 = *(a1 + 48);
      v9 = v7[2];
      goto LABEL_11;
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end