@interface CAMVideoCaptureResult
- (CAMVideoCaptureResult)initWithURL:(id)l filteredLocalDestinationURL:(id)rL duration:(id *)duration stillDisplayTime:(id *)time dimensions:(id)dimensions metadata:(id)metadata videoZoomFactor:(double)factor reason:(int64_t)self0 videoPreviewPixelBuffer:(__CVBuffer *)self1 coordinationInfo:(id)self2 error:(id)self3 slowWriterFrameDrops:(BOOL)self4;
- (void)dealloc;
@end

@implementation CAMVideoCaptureResult

- (CAMVideoCaptureResult)initWithURL:(id)l filteredLocalDestinationURL:(id)rL duration:(id *)duration stillDisplayTime:(id *)time dimensions:(id)dimensions metadata:(id)metadata videoZoomFactor:(double)factor reason:(int64_t)self0 videoPreviewPixelBuffer:(__CVBuffer *)self1 coordinationInfo:(id)self2 error:(id)self3 slowWriterFrameDrops:(BOOL)self4
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  metadataCopy = metadata;
  infoCopy = info;
  errorCopy = error;
  v45.receiver = self;
  v45.super_class = CAMVideoCaptureResult;
  v24 = [(CAMVideoCaptureResult *)&v45 init];
  v25 = v24;
  if (v24)
  {
    v41 = rLCopy;
    objc_storeStrong(&v24->_localDestinationURL, l);
    objc_storeStrong(&v25->_filteredLocalDestinationURL, rL);
    v26 = *&duration->var0;
    v25->_duration.epoch = duration->var3;
    *&v25->_duration.value = v26;
    timeCopy2 = time;
    v28 = *&time->var0;
    v25->_stillDisplayTime.epoch = time->var3;
    *&v25->_stillDisplayTime.value = v28;
    v25->_dimensions = dimensions;
    v29 = [metadataCopy copy];
    metadata = v25->_metadata;
    v25->_metadata = v29;

    v25->_videoZoomFactor = factor;
    v25->_reason = reason;
    objc_storeStrong(&v25->_coordinationInfo, info);
    objc_storeStrong(&v25->_error, error);
    v25->_slowWriterFrameDrops = drops;
    v25->_videoPreviewPixelBuffer = CVPixelBufferRetain(buffer);
    v31 = [(NSArray *)v25->_metadata indexOfObjectPassingTest:&__block_literal_global_44];
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:
      if ((timeCopy2->var2 & 1) == 0)
      {
        v32 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v47 = lCopy;
          _os_log_impl(&dword_1A3640000, v32, OS_LOG_TYPE_DEFAULT, "Unable to extract captureDate, using currentTime instead for %{public}@", buf, 0xCu);
        }
      }

      date = [MEMORY[0x1E695DF00] date];
      goto LABEL_11;
    }

    v34 = [metadataCopy objectAtIndex:v31];
    dateValue = [v34 dateValue];
    if (dateValue)
    {
      date = dateValue;
    }

    else
    {
      stringValue = [v34 stringValue];
      v37 = +[CAMPersistenceController videoMetadataDateFormatter];
      date = [v37 dateFromString:stringValue];

      timeCopy2 = time;
      if (!date)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    captureDate = v25->_captureDate;
    v25->_captureDate = date;

    v39 = v25;
    rLCopy = v41;
  }

  return v25;
}

uint64_t __202__CAMVideoCaptureResult_initWithURL_filteredLocalDestinationURL_duration_stillDisplayTime_dimensions_metadata_videoZoomFactor_reason_videoPreviewPixelBuffer_coordinationInfo_error_slowWriterFrameDrops___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 keySpace];
  if ([v3 isEqualToString:*MEMORY[0x1E6987838]])
  {
    v4 = [v2 key];
    v5 = [v4 isEqual:*MEMORY[0x1E6987688]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_videoPreviewPixelBuffer);
  v3.receiver = self;
  v3.super_class = CAMVideoCaptureResult;
  [(CAMVideoCaptureResult *)&v3 dealloc];
}

@end