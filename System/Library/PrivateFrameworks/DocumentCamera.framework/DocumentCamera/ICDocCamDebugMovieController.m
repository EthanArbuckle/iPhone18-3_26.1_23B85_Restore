@interface ICDocCamDebugMovieController
- (AVCaptureConnection)videoConnection;
- (BOOL)inputsReadyToRecord;
- (BOOL)setupAssetWriterMetadataInputAndMetadataAdaptor;
- (BOOL)setupAssetWriterVideoInput:(opaqueCMFormatDescription *)a3;
- (CGAffineTransform)transformFromCurrentVideoOrientationToOrientation:(SEL)a3;
- (ICDocCamDebugMovieController)initWithDelegate:(id)a3 videoConnection:(id)a4 referenceOrientation:(int64_t)a5;
- (ICDocCamDebugMovieControllerDelegate)delegate;
- (double)angleOffsetFromPortraitOrientationToOrientation:(int64_t)a3;
- (uint64_t)writeMetaDataAtFrame:(double)a3 intrinsicMatrix:(float32x2_t)a4;
- (void)pauseCaptureSessionForMovieRecording;
- (void)recordFrame:(opaqueCMSampleBuffer *)a3 fromConnection:(id)a4;
- (void)recordingDidStart;
- (void)recordingDidStop;
- (void)recordingWillStart;
- (void)recordingWillStop;
- (void)removeFile:(id)a3;
- (void)resumeCaptureSessionForMovieRecording;
- (void)saveMovieToCameraRoll;
- (void)startRecording;
- (void)stopRecording;
- (void)video:(id)a3 didFinishSavingWithError:(id)a4 contextInfo:(void *)a5;
- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)a3 ofType:(id)a4 atFrame:(int64_t)a5;
@end

@implementation ICDocCamDebugMovieController

- (ICDocCamDebugMovieController)initWithDelegate:(id)a3 videoConnection:(id)a4 referenceOrientation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = ICDocCamDebugMovieController;
  v10 = [(ICDocCamDebugMovieController *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    objc_storeWeak(&v11->_videoConnection, v9);
    v11->_referenceOrientation = a5;
    v12 = MEMORY[0x277CBEBC0];
    v13 = MEMORY[0x277CCACA8];
    v14 = NSTemporaryDirectory();
    v15 = [v13 stringWithFormat:@"%@%@", v14, @"Movie.MOV"];
    v16 = [v12 fileURLWithPath:v15];
    movieURL = v11->_movieURL;
    v11->_movieURL = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("Movie Writing Queue", v18);
    movieWritingQueue = v11->_movieWritingQueue;
    v11->_movieWritingQueue = v19;

    v11->_backgroundRecordingID = *MEMORY[0x277D767B0];
  }

  return v11;
}

- (void)recordFrame:(opaqueCMSampleBuffer *)a3 fromConnection:(id)a4
{
  v6 = a4;
  CFRetain(a3);
  v7 = [(ICDocCamDebugMovieController *)self movieWritingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ICDocCamDebugMovieController_recordFrame_fromConnection___block_invoke;
  block[3] = &unk_278F93340;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

void __59__ICDocCamDebugMovieController_recordFrame_fromConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetWriter];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) canRecordFrames];

    if (v4)
    {
      v5 = [*(a1 + 32) inputsReadyToRecord];
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) videoConnection];

      if (v6 == v7)
      {
        if (([*(a1 + 32) readyToRecordVideo] & 1) == 0)
        {
          [*(a1 + 32) setReadyToRecordVideo:{objc_msgSend(*(a1 + 32), "setupAssetWriterVideoInput:", CMSampleBufferGetFormatDescription(*(a1 + 48)))}];
          recordFrame_fromConnection__frameNumber = 0;
        }

        if ([*(a1 + 32) inputsReadyToRecord])
        {
          [*(a1 + 32) writeSampleBuffer:*(a1 + 48) ofType:*MEMORY[0x277CE5EA8] atFrame:recordFrame_fromConnection__frameNumber];
        }
      }

      if (([*(a1 + 32) readyToRecordMetadata] & 1) == 0)
      {
        [*(a1 + 32) setReadyToRecordMetadata:{objc_msgSend(*(a1 + 32), "setupAssetWriterMetadataInputAndMetadataAdaptor")}];
      }

      if ([*(a1 + 32) inputsReadyToRecord])
      {
        v8 = CMGetAttachment(*(a1 + 48), *MEMORY[0x277CC06B0], 0);
        v10 = 0u;
        v11 = 0u;
        v9 = 0u;
        [v8 getBytes:&v9 length:48];
        [*(a1 + 32) writeMetaDataAtFrame:recordFrame_fromConnection__frameNumber++ intrinsicMatrix:{*&v9, *&v10, *&v11}];
      }

      if (!(v5 & 1 | (([*(a1 + 32) inputsReadyToRecord] & 1) == 0)))
      {
        [*(a1 + 32) setRecordingWillBeStarted:0];
        [*(a1 + 32) setRecording:1];
        [*(a1 + 32) recordingDidStart];
      }
    }
  }

  CFRelease(*(a1 + 48));
}

- (void)recordingWillStart
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ICDocCamDebugMovieController_recordingWillStart__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__ICDocCamDebugMovieController_recordingWillStart__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enableRecordButton:0];

  v3 = [*(a1 + 32) delegate];
  v4 = [DCLocalization localizedStringForKey:@"Stop" value:@"Stop" table:@"Localizable"];
  [v3 changeRecordButtonTitle:v4];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  [v5 setIdleTimerDisabled:1];

  v6 = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v4) = [v6 isMultitaskingSupported];

  if (v4)
  {
    v7 = [MEMORY[0x277D75128] sharedApplication];
    [*(a1 + 32) setBackgroundRecordingID:{objc_msgSend(v7, "beginBackgroundTaskWithExpirationHandler:", &__block_literal_global_18)}];
  }
}

- (void)recordingDidStart
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamDebugMovieController_recordingDidStart__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__ICDocCamDebugMovieController_recordingDidStart__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enableRecordButton:1];

  v3 = [*(a1 + 32) delegate];
  [v3 enableUIElementsForMovieRecording:0];
}

- (void)recordingWillStop
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamDebugMovieController_recordingWillStop__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __49__ICDocCamDebugMovieController_recordingWillStop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enableRecordButton:0];

  v3 = [*(a1 + 32) delegate];
  v4 = [DCLocalization localizedStringForKey:@"Record" value:@"Record" table:@"Localizable"];
  [v3 changeRecordButtonTitle:v4];

  v5 = *(a1 + 32);

  return [v5 pauseCaptureSessionForMovieRecording];
}

- (void)recordingDidStop
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICDocCamDebugMovieController_recordingDidStop__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__ICDocCamDebugMovieController_recordingDidStop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enableRecordButton:1];

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 setIdleTimerDisabled:0];

  [*(a1 + 32) resumeCaptureSessionForMovieRecording];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 isMultitaskingSupported];

  if (v5)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    [v6 endBackgroundTask:{objc_msgSend(*(a1 + 32), "backgroundRecordingID")}];

    [*(a1 + 32) setBackgroundRecordingID:*MEMORY[0x277D767B0]];
  }

  v7 = [*(a1 + 32) delegate];
  [v7 enableUIElementsForMovieRecording:1];
}

- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)a3 ofType:(id)a4 atFrame:(int64_t)a5
{
  v8 = a4;
  v9 = [(ICDocCamDebugMovieController *)self assetWriter];
  v10 = [v9 status];

  if (!v10)
  {
    v11 = [(ICDocCamDebugMovieController *)self assetWriter];
    v12 = [v11 startWriting];

    if (v12)
    {
      v13 = [(ICDocCamDebugMovieController *)self assetWriter];
      v26 = **&MEMORY[0x277CC08F0];
      [v13 startSessionAtSourceTime:&v26];
    }

    else
    {
      v13 = [(ICDocCamDebugMovieController *)self delegate];
      v14 = [(ICDocCamDebugMovieController *)self assetWriter];
      v15 = [v14 error];
      [v13 showErrorForMovieRecording:v15];
    }
  }

  v16 = [(ICDocCamDebugMovieController *)self assetWriter];
  v17 = [v16 status];

  if (v17 == 1 && *MEMORY[0x277CE5EA8] == v8)
  {
    v18 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
    v19 = [v18 isReadyForMoreMediaData];

    if (v19)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(a3);
      v21 = [(ICDocCamDebugMovieController *)self pixelBufferAdaptor];
      CMTimeMake(&v26, a5, 30);
      v22 = [v21 appendPixelBuffer:ImageBuffer withPresentationTime:&v26];

      if ((v22 & 1) == 0)
      {
        v23 = [(ICDocCamDebugMovieController *)self delegate];
        v24 = [(ICDocCamDebugMovieController *)self assetWriter];
        v25 = [v24 error];
        [v23 showErrorForMovieRecording:v25];
      }
    }
  }
}

- (uint64_t)writeMetaDataAtFrame:(double)a3 intrinsicMatrix:(float32x2_t)a4
{
  v28 = *(&a3 + 1);
  v34[4] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CE6558] metadataItem];
  [v8 setIdentifier:@"mdta/com.docCamMovie.version.field"];
  [v8 setDataType:*MEMORY[0x277CC05C0]];
  [v8 setValue:&unk_285C6D540];
  v9 = [MEMORY[0x277CE6558] metadataItem];
  [v9 setIdentifier:@"mdta/com.docCamMovie.comment.field"];
  [v9 setDataType:*MEMORY[0x277CC05F8]];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", a6];
  [v9 setValue:v10];

  v11 = [MEMORY[0x277CE6558] metadataItem];
  [v11 setIdentifier:@"mdta/com.docCamMovie.pixelFocalLength.field"];
  v12 = *MEMORY[0x277CC05A8];
  [v11 setDataType:*MEMORY[0x277CC05A8]];
  v13 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a2, v28}];
  [v11 setValue:v13];

  v14 = [MEMORY[0x277CE6558] metadataItem];
  [v14 setIdentifier:@"mdta/com.docCamMovie.principalPoint.field"];
  [v14 setDataType:v12];
  v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:vcvtq_f64_f32(a4)];
  [v14 setValue:v15];

  memset(&v33, 0, sizeof(v33));
  CMTimeMake(&v33, a6, 30);
  v16 = objc_alloc(MEMORY[0x277CE6648]);
  v34[0] = v8;
  v34[1] = v9;
  v34[2] = v11;
  v34[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  start = v33;
  duration = **&MEMORY[0x277CC0898];
  CMTimeRangeMake(&v32, &start, &duration);
  v18 = [v16 initWithItems:v17 timeRange:&v32];

  v19 = [a1 assetWriterMetadataIn];
  v20 = [v19 isReadyForMoreMediaData];

  if (v20)
  {
    v21 = [a1 assetWriterMetadataAdaptor];
    v22 = [v21 appendTimedMetadataGroup:v18];

    if ((v22 & 1) == 0)
    {
      v23 = [a1 delegate];
      v24 = [a1 assetWriter];
      v25 = [v24 error];
      [v23 showErrorForMovieRecording:v25];
    }
  }

  return 1;
}

- (BOOL)setupAssetWriterVideoInput:(opaqueCMFormatDescription *)a3
{
  v34[4] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  v5 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:96000000];
  v7 = *MEMORY[0x277CE62B0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v9 = [v5 dictionaryWithObjectsAndKeys:{v6, v7, v8, *MEMORY[0x277CE6368], *MEMORY[0x277CE6380], *MEMORY[0x277CE6390], MEMORY[0x277CBEC28], *MEMORY[0x277CE6298], *MEMORY[0x277CE6350], *MEMORY[0x277CE6358], &unk_285C6D558, *MEMORY[0x277CE6340], &unk_285C6D558, *MEMORY[0x277CE62B8], 0}];

  v10 = *MEMORY[0x277CE62C8];
  v34[0] = *MEMORY[0x277CE62F8];
  v11 = *MEMORY[0x277CE63C0];
  v33[0] = v10;
  v33[1] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:Dimensions.width];
  v34[1] = v12;
  v33[2] = *MEMORY[0x277CE6360];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:*&Dimensions >> 32];
  v33[3] = *MEMORY[0x277CE6330];
  v34[2] = v13;
  v34[3] = v9;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];

  v15 = [(ICDocCamDebugMovieController *)self assetWriter];
  v16 = *MEMORY[0x277CE5EA8];
  LODWORD(v7) = [v15 canApplyOutputSettings:v14 forMediaType:*MEMORY[0x277CE5EA8]];

  if (!v7)
  {
    NSLog(&cfstr_CouldnTApplyVi.isa);
LABEL_6:
    v30 = 0;
    goto LABEL_7;
  }

  v17 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:v16 outputSettings:0];
  [(ICDocCamDebugMovieController *)self setAssetWriterVideoIn:v17];

  v18 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  [v18 setExpectsMediaDataInRealTime:1];

  [(ICDocCamDebugMovieController *)self transformFromCurrentVideoOrientationToOrientation:[(ICDocCamDebugMovieController *)self referenceOrientation]];
  v19 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  *v32 = *&v32[7];
  *&v32[2] = *&v32[9];
  *&v32[4] = *&v32[11];
  [v19 setTransform:v32];

  v20 = objc_alloc(MEMORY[0x277CE6478]);
  v21 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  v22 = MEMORY[0x277CBEAC0];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:875704422];
  v24 = [v22 dictionaryWithObjectsAndKeys:{v23, *MEMORY[0x277CC4E30], 0}];
  v25 = [v20 initWithAssetWriterInput:v21 sourcePixelBufferAttributes:v24];
  [(ICDocCamDebugMovieController *)self setPixelBufferAdaptor:v25];

  v26 = [(ICDocCamDebugMovieController *)self assetWriter];
  v27 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  LODWORD(v24) = [v26 canAddInput:v27];

  if (!v24)
  {
    NSLog(&cfstr_CouldnTAddAsse.isa);
    goto LABEL_6;
  }

  v28 = [(ICDocCamDebugMovieController *)self assetWriter];
  v29 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  [v28 addInput:v29];

  v30 = 1;
LABEL_7:

  return v30;
}

- (BOOL)setupAssetWriterMetadataInputAndMetadataAdaptor
{
  v34[4] = *MEMORY[0x277D85DE8];
  formatDescriptionOut = 0;
  v4 = *MEMORY[0x277CC0608];
  v32[0] = *MEMORY[0x277CC0618];
  v3 = v32[0];
  v32[1] = v4;
  v5 = *MEMORY[0x277CC05C0];
  v33[0] = @"mdta/com.docCamMovie.version.field";
  v33[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v34[0] = v6;
  v30[0] = v3;
  v30[1] = v4;
  v7 = *MEMORY[0x277CC05F8];
  v31[0] = @"mdta/com.docCamMovie.comment.field";
  v31[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v34[1] = v8;
  v28[0] = v3;
  v28[1] = v4;
  v9 = *MEMORY[0x277CC05A8];
  v29[0] = @"mdta/com.docCamMovie.pixelFocalLength.field";
  v29[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v34[2] = v10;
  v26[0] = v3;
  v26[1] = v4;
  v27[0] = @"mdta/com.docCamMovie.principalPoint.field";
  v27[1] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v34[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];

  if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x277CBECE8], 0x6D656278u, v12, &formatDescriptionOut))
  {
    NSLog(&cfstr_FailedToCreate.isa, v12);
LABEL_6:
    v23 = 0;
    goto LABEL_7;
  }

  v13 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5E70] outputSettings:0 sourceFormatHint:formatDescriptionOut];
  [(ICDocCamDebugMovieController *)self setAssetWriterMetadataIn:v13];

  v14 = MEMORY[0x277CE6470];
  v15 = [(ICDocCamDebugMovieController *)self assetWriterMetadataIn];
  v16 = [v14 assetWriterInputMetadataAdaptorWithAssetWriterInput:v15];
  [(ICDocCamDebugMovieController *)self setAssetWriterMetadataAdaptor:v16];

  v17 = [(ICDocCamDebugMovieController *)self assetWriterMetadataIn];
  [v17 setExpectsMediaDataInRealTime:1];

  v18 = [(ICDocCamDebugMovieController *)self assetWriter];
  v19 = [(ICDocCamDebugMovieController *)self assetWriterMetadataIn];
  v20 = [v18 canAddInput:v19];

  if (!v20)
  {
    NSLog(&cfstr_CouldnTAddAsse_0.isa);
    goto LABEL_6;
  }

  v21 = [(ICDocCamDebugMovieController *)self assetWriter];
  v22 = [(ICDocCamDebugMovieController *)self assetWriterMetadataIn];
  [v21 addInput:v22];

  v23 = 1;
LABEL_7:

  return v23;
}

- (void)startRecording
{
  [(ICDocCamDebugMovieController *)self resumeCaptureSessionForMovieRecording];
  v3 = [(ICDocCamDebugMovieController *)self movieWritingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICDocCamDebugMovieController_startRecording__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(v3, block);
}

void __46__ICDocCamDebugMovieController_startRecording__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) recordingWillBeStarted] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isRecording") & 1) == 0)
  {
    [*(a1 + 32) setRecordingWillBeStarted:1];
    [*(a1 + 32) recordingWillStart];
    v2 = *(a1 + 32);
    v3 = [v2 movieURL];
    [v2 removeFile:v3];

    v4 = objc_alloc(MEMORY[0x277CE6460]);
    v5 = [*(a1 + 32) movieURL];
    v6 = *MEMORY[0x277CE5DA8];
    v10 = 0;
    v7 = [v4 initWithURL:v5 fileType:v6 error:&v10];
    v8 = v10;
    [*(a1 + 32) setAssetWriter:v7];

    if (v8)
    {
      v9 = [*(a1 + 32) delegate];
      [v9 showErrorForMovieRecording:v8];
    }

    [*(a1 + 32) setCanRecordFrames:1];
  }
}

- (void)stopRecording
{
  v3 = [(ICDocCamDebugMovieController *)self movieWritingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICDocCamDebugMovieController_stopRecording__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(v3, block);
}

void __45__ICDocCamDebugMovieController_stopRecording__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCanRecordFrames:0];
  if (([*(a1 + 32) recordingWillBeStopped] & 1) == 0)
  {
    if ([*(a1 + 32) isRecording])
    {
      [*(a1 + 32) setRecordingWillBeStopped:1];
      [*(a1 + 32) recordingWillStop];
      v2 = [*(a1 + 32) assetWriter];
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __45__ICDocCamDebugMovieController_stopRecording__block_invoke_2;
      v3[3] = &unk_278F92C70;
      v3[4] = *(a1 + 32);
      [v2 finishWritingWithCompletionHandler:v3];
    }
  }
}

void __45__ICDocCamDebugMovieController_stopRecording__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) assetWriter];
  v3 = [v2 status];

  if (v3 == 3)
  {
    v7 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) assetWriter];
    v6 = [v5 error];
    [v7 showErrorForMovieRecording:v6];
  }

  else if (v3 == 2)
  {
    [*(a1 + 32) setReadyToRecordVideo:0];
    [*(a1 + 32) setReadyToRecordMetadata:0];
    [*(a1 + 32) setAssetWriter:0];
    v4 = *(a1 + 32);

    [v4 saveMovieToCameraRoll];
  }
}

- (BOOL)inputsReadyToRecord
{
  v3 = [(ICDocCamDebugMovieController *)self readyToRecordVideo];
  if (v3)
  {

    LOBYTE(v3) = [(ICDocCamDebugMovieController *)self readyToRecordMetadata];
  }

  return v3;
}

- (void)pauseCaptureSessionForMovieRecording
{
  v2 = [(ICDocCamDebugMovieController *)self delegate];
  [v2 pauseCaptureSessionForMovieRecording];
}

- (void)resumeCaptureSessionForMovieRecording
{
  v2 = [(ICDocCamDebugMovieController *)self delegate];
  [v2 resumeCaptureSessionForMovieRecording];
}

- (void)saveMovieToCameraRoll
{
  v3 = [(ICDocCamDebugMovieController *)self movieURL];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICDocCamDebugMovieController *)self movieURL];
    v6 = [v5 path];
    IsCompatibleWithSavedPhotosAlbum = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(v6);

    if (IsCompatibleWithSavedPhotosAlbum)
    {
      v9 = [(ICDocCamDebugMovieController *)self movieURL];
      v8 = [v9 path];
      UISaveVideoAtPathToSavedPhotosAlbum(v8, self, sel_video_didFinishSavingWithError_contextInfo_, 0);
    }
  }
}

- (void)video:(id)a3 didFinishSavingWithError:(id)a4 contextInfo:(void *)a5
{
  v6 = a4;
  if (v6)
  {
    v7 = [(ICDocCamDebugMovieController *)self delegate];
    [v7 showErrorForMovieRecording:v6];
  }

  else
  {
    v7 = [(ICDocCamDebugMovieController *)self movieURL];
    [(ICDocCamDebugMovieController *)self removeFile:v7];
  }

  v8 = [(ICDocCamDebugMovieController *)self movieWritingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ICDocCamDebugMovieController_video_didFinishSavingWithError_contextInfo___block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(v8, block);
}

uint64_t __75__ICDocCamDebugMovieController_video_didFinishSavingWithError_contextInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRecordingWillBeStopped:0];
  [*(a1 + 32) setRecording:0];
  v2 = *(a1 + 32);

  return [v2 recordingDidStop];
}

- (void)removeFile:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v5 path];

  if ([v6 fileExistsAtPath:v7])
  {
    v11 = 0;
    v8 = [v6 removeItemAtPath:v7 error:&v11];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      v10 = [(ICDocCamDebugMovieController *)self delegate];
      [v10 showErrorForMovieRecording:v9];
    }
  }
}

- (double)angleOffsetFromPortraitOrientationToOrientation:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 2) <= 2)
  {
    return dbl_2492F7B20[a3 - 2];
  }

  return result;
}

- (CGAffineTransform)transformFromCurrentVideoOrientationToOrientation:(SEL)a3
{
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  v9 = [(ICDocCamDebugMovieController *)self delegate];
  v10 = [v9 videoPreviewLayer];
  v11 = [v10 connection];
  v12 = [v11 videoOrientation];

  [(ICDocCamDebugMovieController *)self angleOffsetFromPortraitOrientationToOrientation:a4];
  v14 = v13;
  [(ICDocCamDebugMovieController *)self angleOffsetFromPortraitOrientationToOrientation:v12];
  CGAffineTransformMakeRotation(retstr, v14 - v15);
  v16 = [(ICDocCamDebugMovieController *)self delegate];
  v17 = [v16 statusBarOrientation];

  if (v17 > 2)
  {
    if (v17 == 3)
    {
      v19 = 0.0;
    }

    else
    {
      if (v17 != 4)
      {
        return result;
      }

      v19 = 3.14159265;
    }
  }

  else if (v17 == 1)
  {
    v19 = 1.57079633;
  }

  else
  {
    if (v17 != 2)
    {
      return result;
    }

    v19 = 4.71238898;
  }

  result = CGAffineTransformMakeRotation(&v21, v19);
  v20 = *&v21.c;
  *&retstr->a = *&v21.a;
  *&retstr->c = v20;
  *&retstr->tx = *&v21.tx;
  return result;
}

- (AVCaptureConnection)videoConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_videoConnection);

  return WeakRetained;
}

- (ICDocCamDebugMovieControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end