@interface ICDocCamDebugMovieController
- (AVCaptureConnection)videoConnection;
- (BOOL)inputsReadyToRecord;
- (BOOL)setupAssetWriterMetadataInputAndMetadataAdaptor;
- (BOOL)setupAssetWriterVideoInput:(opaqueCMFormatDescription *)input;
- (CGAffineTransform)transformFromCurrentVideoOrientationToOrientation:(SEL)orientation;
- (ICDocCamDebugMovieController)initWithDelegate:(id)delegate videoConnection:(id)connection referenceOrientation:(int64_t)orientation;
- (ICDocCamDebugMovieControllerDelegate)delegate;
- (double)angleOffsetFromPortraitOrientationToOrientation:(int64_t)orientation;
- (uint64_t)writeMetaDataAtFrame:(double)frame intrinsicMatrix:(float32x2_t)matrix;
- (void)pauseCaptureSessionForMovieRecording;
- (void)recordFrame:(opaqueCMSampleBuffer *)frame fromConnection:(id)connection;
- (void)recordingDidStart;
- (void)recordingDidStop;
- (void)recordingWillStart;
- (void)recordingWillStop;
- (void)removeFile:(id)file;
- (void)resumeCaptureSessionForMovieRecording;
- (void)saveMovieToCameraRoll;
- (void)startRecording;
- (void)stopRecording;
- (void)video:(id)video didFinishSavingWithError:(id)error contextInfo:(void *)info;
- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)buffer ofType:(id)type atFrame:(int64_t)frame;
@end

@implementation ICDocCamDebugMovieController

- (ICDocCamDebugMovieController)initWithDelegate:(id)delegate videoConnection:(id)connection referenceOrientation:(int64_t)orientation
{
  delegateCopy = delegate;
  connectionCopy = connection;
  v22.receiver = self;
  v22.super_class = ICDocCamDebugMovieController;
  v10 = [(ICDocCamDebugMovieController *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_storeWeak(&v11->_videoConnection, connectionCopy);
    v11->_referenceOrientation = orientation;
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

- (void)recordFrame:(opaqueCMSampleBuffer *)frame fromConnection:(id)connection
{
  connectionCopy = connection;
  CFRetain(frame);
  movieWritingQueue = [(ICDocCamDebugMovieController *)self movieWritingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ICDocCamDebugMovieController_recordFrame_fromConnection___block_invoke;
  block[3] = &unk_278F93340;
  block[4] = self;
  v10 = connectionCopy;
  frameCopy = frame;
  v8 = connectionCopy;
  dispatch_async(movieWritingQueue, block);
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

- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)buffer ofType:(id)type atFrame:(int64_t)frame
{
  typeCopy = type;
  assetWriter = [(ICDocCamDebugMovieController *)self assetWriter];
  status = [assetWriter status];

  if (!status)
  {
    assetWriter2 = [(ICDocCamDebugMovieController *)self assetWriter];
    startWriting = [assetWriter2 startWriting];

    if (startWriting)
    {
      assetWriter3 = [(ICDocCamDebugMovieController *)self assetWriter];
      v26 = **&MEMORY[0x277CC08F0];
      [assetWriter3 startSessionAtSourceTime:&v26];
    }

    else
    {
      assetWriter3 = [(ICDocCamDebugMovieController *)self delegate];
      assetWriter4 = [(ICDocCamDebugMovieController *)self assetWriter];
      error = [assetWriter4 error];
      [assetWriter3 showErrorForMovieRecording:error];
    }
  }

  assetWriter5 = [(ICDocCamDebugMovieController *)self assetWriter];
  status2 = [assetWriter5 status];

  if (status2 == 1 && *MEMORY[0x277CE5EA8] == typeCopy)
  {
    assetWriterVideoIn = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
    isReadyForMoreMediaData = [assetWriterVideoIn isReadyForMoreMediaData];

    if (isReadyForMoreMediaData)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      pixelBufferAdaptor = [(ICDocCamDebugMovieController *)self pixelBufferAdaptor];
      CMTimeMake(&v26, frame, 30);
      v22 = [pixelBufferAdaptor appendPixelBuffer:ImageBuffer withPresentationTime:&v26];

      if ((v22 & 1) == 0)
      {
        delegate = [(ICDocCamDebugMovieController *)self delegate];
        assetWriter6 = [(ICDocCamDebugMovieController *)self assetWriter];
        error2 = [assetWriter6 error];
        [delegate showErrorForMovieRecording:error2];
      }
    }
  }
}

- (uint64_t)writeMetaDataAtFrame:(double)frame intrinsicMatrix:(float32x2_t)matrix
{
  v28 = *(&frame + 1);
  v34[4] = *MEMORY[0x277D85DE8];
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.docCamMovie.version.field"];
  [metadataItem setDataType:*MEMORY[0x277CC05C0]];
  [metadataItem setValue:&unk_285C6D540];
  metadataItem2 = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem2 setIdentifier:@"mdta/com.docCamMovie.comment.field"];
  [metadataItem2 setDataType:*MEMORY[0x277CC05F8]];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", a6];
  [metadataItem2 setValue:v10];

  metadataItem3 = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem3 setIdentifier:@"mdta/com.docCamMovie.pixelFocalLength.field"];
  v12 = *MEMORY[0x277CC05A8];
  [metadataItem3 setDataType:*MEMORY[0x277CC05A8]];
  v13 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a2, v28}];
  [metadataItem3 setValue:v13];

  metadataItem4 = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem4 setIdentifier:@"mdta/com.docCamMovie.principalPoint.field"];
  [metadataItem4 setDataType:v12];
  v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:vcvtq_f64_f32(matrix)];
  [metadataItem4 setValue:v15];

  memset(&v33, 0, sizeof(v33));
  CMTimeMake(&v33, a6, 30);
  v16 = objc_alloc(MEMORY[0x277CE6648]);
  v34[0] = metadataItem;
  v34[1] = metadataItem2;
  v34[2] = metadataItem3;
  v34[3] = metadataItem4;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  start = v33;
  duration = **&MEMORY[0x277CC0898];
  CMTimeRangeMake(&v32, &start, &duration);
  v18 = [v16 initWithItems:v17 timeRange:&v32];

  assetWriterMetadataIn = [self assetWriterMetadataIn];
  isReadyForMoreMediaData = [assetWriterMetadataIn isReadyForMoreMediaData];

  if (isReadyForMoreMediaData)
  {
    assetWriterMetadataAdaptor = [self assetWriterMetadataAdaptor];
    v22 = [assetWriterMetadataAdaptor appendTimedMetadataGroup:v18];

    if ((v22 & 1) == 0)
    {
      delegate = [self delegate];
      assetWriter = [self assetWriter];
      error = [assetWriter error];
      [delegate showErrorForMovieRecording:error];
    }
  }

  return 1;
}

- (BOOL)setupAssetWriterVideoInput:(opaqueCMFormatDescription *)input
{
  v34[4] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(input);
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

  assetWriter = [(ICDocCamDebugMovieController *)self assetWriter];
  v16 = *MEMORY[0x277CE5EA8];
  LODWORD(v7) = [assetWriter canApplyOutputSettings:v14 forMediaType:*MEMORY[0x277CE5EA8]];

  if (!v7)
  {
    NSLog(&cfstr_CouldnTApplyVi.isa);
LABEL_6:
    v30 = 0;
    goto LABEL_7;
  }

  v17 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:v16 outputSettings:0];
  [(ICDocCamDebugMovieController *)self setAssetWriterVideoIn:v17];

  assetWriterVideoIn = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  [assetWriterVideoIn setExpectsMediaDataInRealTime:1];

  [(ICDocCamDebugMovieController *)self transformFromCurrentVideoOrientationToOrientation:[(ICDocCamDebugMovieController *)self referenceOrientation]];
  assetWriterVideoIn2 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  *v32 = *&v32[7];
  *&v32[2] = *&v32[9];
  *&v32[4] = *&v32[11];
  [assetWriterVideoIn2 setTransform:v32];

  v20 = objc_alloc(MEMORY[0x277CE6478]);
  assetWriterVideoIn3 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  v22 = MEMORY[0x277CBEAC0];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:875704422];
  v24 = [v22 dictionaryWithObjectsAndKeys:{v23, *MEMORY[0x277CC4E30], 0}];
  v25 = [v20 initWithAssetWriterInput:assetWriterVideoIn3 sourcePixelBufferAttributes:v24];
  [(ICDocCamDebugMovieController *)self setPixelBufferAdaptor:v25];

  assetWriter2 = [(ICDocCamDebugMovieController *)self assetWriter];
  assetWriterVideoIn4 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  LODWORD(v24) = [assetWriter2 canAddInput:assetWriterVideoIn4];

  if (!v24)
  {
    NSLog(&cfstr_CouldnTAddAsse.isa);
    goto LABEL_6;
  }

  assetWriter3 = [(ICDocCamDebugMovieController *)self assetWriter];
  assetWriterVideoIn5 = [(ICDocCamDebugMovieController *)self assetWriterVideoIn];
  [assetWriter3 addInput:assetWriterVideoIn5];

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
  assetWriterMetadataIn = [(ICDocCamDebugMovieController *)self assetWriterMetadataIn];
  v16 = [v14 assetWriterInputMetadataAdaptorWithAssetWriterInput:assetWriterMetadataIn];
  [(ICDocCamDebugMovieController *)self setAssetWriterMetadataAdaptor:v16];

  assetWriterMetadataIn2 = [(ICDocCamDebugMovieController *)self assetWriterMetadataIn];
  [assetWriterMetadataIn2 setExpectsMediaDataInRealTime:1];

  assetWriter = [(ICDocCamDebugMovieController *)self assetWriter];
  assetWriterMetadataIn3 = [(ICDocCamDebugMovieController *)self assetWriterMetadataIn];
  v20 = [assetWriter canAddInput:assetWriterMetadataIn3];

  if (!v20)
  {
    NSLog(&cfstr_CouldnTAddAsse_0.isa);
    goto LABEL_6;
  }

  assetWriter2 = [(ICDocCamDebugMovieController *)self assetWriter];
  assetWriterMetadataIn4 = [(ICDocCamDebugMovieController *)self assetWriterMetadataIn];
  [assetWriter2 addInput:assetWriterMetadataIn4];

  v23 = 1;
LABEL_7:

  return v23;
}

- (void)startRecording
{
  [(ICDocCamDebugMovieController *)self resumeCaptureSessionForMovieRecording];
  movieWritingQueue = [(ICDocCamDebugMovieController *)self movieWritingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICDocCamDebugMovieController_startRecording__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(movieWritingQueue, block);
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
  movieWritingQueue = [(ICDocCamDebugMovieController *)self movieWritingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICDocCamDebugMovieController_stopRecording__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(movieWritingQueue, block);
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
  readyToRecordVideo = [(ICDocCamDebugMovieController *)self readyToRecordVideo];
  if (readyToRecordVideo)
  {

    LOBYTE(readyToRecordVideo) = [(ICDocCamDebugMovieController *)self readyToRecordMetadata];
  }

  return readyToRecordVideo;
}

- (void)pauseCaptureSessionForMovieRecording
{
  delegate = [(ICDocCamDebugMovieController *)self delegate];
  [delegate pauseCaptureSessionForMovieRecording];
}

- (void)resumeCaptureSessionForMovieRecording
{
  delegate = [(ICDocCamDebugMovieController *)self delegate];
  [delegate resumeCaptureSessionForMovieRecording];
}

- (void)saveMovieToCameraRoll
{
  movieURL = [(ICDocCamDebugMovieController *)self movieURL];
  if (movieURL)
  {
    v4 = movieURL;
    movieURL2 = [(ICDocCamDebugMovieController *)self movieURL];
    path = [movieURL2 path];
    IsCompatibleWithSavedPhotosAlbum = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(path);

    if (IsCompatibleWithSavedPhotosAlbum)
    {
      movieURL3 = [(ICDocCamDebugMovieController *)self movieURL];
      path2 = [movieURL3 path];
      UISaveVideoAtPathToSavedPhotosAlbum(path2, self, sel_video_didFinishSavingWithError_contextInfo_, 0);
    }
  }
}

- (void)video:(id)video didFinishSavingWithError:(id)error contextInfo:(void *)info
{
  errorCopy = error;
  if (errorCopy)
  {
    delegate = [(ICDocCamDebugMovieController *)self delegate];
    [delegate showErrorForMovieRecording:errorCopy];
  }

  else
  {
    delegate = [(ICDocCamDebugMovieController *)self movieURL];
    [(ICDocCamDebugMovieController *)self removeFile:delegate];
  }

  movieWritingQueue = [(ICDocCamDebugMovieController *)self movieWritingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ICDocCamDebugMovieController_video_didFinishSavingWithError_contextInfo___block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_async(movieWritingQueue, block);
}

uint64_t __75__ICDocCamDebugMovieController_video_didFinishSavingWithError_contextInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRecordingWillBeStopped:0];
  [*(a1 + 32) setRecording:0];
  v2 = *(a1 + 32);

  return [v2 recordingDidStop];
}

- (void)removeFile:(id)file
{
  v4 = MEMORY[0x277CCAA00];
  fileCopy = file;
  defaultManager = [v4 defaultManager];
  path = [fileCopy path];

  if ([defaultManager fileExistsAtPath:path])
  {
    v11 = 0;
    v8 = [defaultManager removeItemAtPath:path error:&v11];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      delegate = [(ICDocCamDebugMovieController *)self delegate];
      [delegate showErrorForMovieRecording:v9];
    }
  }
}

- (double)angleOffsetFromPortraitOrientationToOrientation:(int64_t)orientation
{
  result = 0.0;
  if ((orientation - 2) <= 2)
  {
    return dbl_2492F7B20[orientation - 2];
  }

  return result;
}

- (CGAffineTransform)transformFromCurrentVideoOrientationToOrientation:(SEL)orientation
{
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  delegate = [(ICDocCamDebugMovieController *)self delegate];
  videoPreviewLayer = [delegate videoPreviewLayer];
  connection = [videoPreviewLayer connection];
  videoOrientation = [connection videoOrientation];

  [(ICDocCamDebugMovieController *)self angleOffsetFromPortraitOrientationToOrientation:a4];
  v14 = v13;
  [(ICDocCamDebugMovieController *)self angleOffsetFromPortraitOrientationToOrientation:videoOrientation];
  CGAffineTransformMakeRotation(retstr, v14 - v15);
  delegate2 = [(ICDocCamDebugMovieController *)self delegate];
  statusBarOrientation = [delegate2 statusBarOrientation];

  if (statusBarOrientation > 2)
  {
    if (statusBarOrientation == 3)
    {
      v19 = 0.0;
    }

    else
    {
      if (statusBarOrientation != 4)
      {
        return result;
      }

      v19 = 3.14159265;
    }
  }

  else if (statusBarOrientation == 1)
  {
    v19 = 1.57079633;
  }

  else
  {
    if (statusBarOrientation != 2)
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