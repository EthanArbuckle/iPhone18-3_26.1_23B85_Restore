@interface CAMVideoCaptureResult
- (CAMVideoCaptureResult)initWithURL:(id)a3 filteredLocalDestinationURL:(id)a4 duration:(id *)a5 stillDisplayTime:(id *)a6 dimensions:(id)a7 metadata:(id)a8 videoZoomFactor:(double)a9 reason:(int64_t)a10 videoPreviewPixelBuffer:(__CVBuffer *)a11 coordinationInfo:(id)a12 error:(id)a13 slowWriterFrameDrops:(BOOL)a14;
- (void)dealloc;
@end

@implementation CAMVideoCaptureResult

- (CAMVideoCaptureResult)initWithURL:(id)a3 filteredLocalDestinationURL:(id)a4 duration:(id *)a5 stillDisplayTime:(id *)a6 dimensions:(id)a7 metadata:(id)a8 videoZoomFactor:(double)a9 reason:(int64_t)a10 videoPreviewPixelBuffer:(__CVBuffer *)a11 coordinationInfo:(id)a12 error:(id)a13 slowWriterFrameDrops:(BOOL)a14
{
  v48 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  v22 = a8;
  v23 = a12;
  v44 = a13;
  v45.receiver = self;
  v45.super_class = CAMVideoCaptureResult;
  v24 = [(CAMVideoCaptureResult *)&v45 init];
  v25 = v24;
  if (v24)
  {
    v41 = v21;
    objc_storeStrong(&v24->_localDestinationURL, a3);
    objc_storeStrong(&v25->_filteredLocalDestinationURL, a4);
    v26 = *&a5->var0;
    v25->_duration.epoch = a5->var3;
    *&v25->_duration.value = v26;
    v27 = a6;
    v28 = *&a6->var0;
    v25->_stillDisplayTime.epoch = a6->var3;
    *&v25->_stillDisplayTime.value = v28;
    v25->_dimensions = a7;
    v29 = [v22 copy];
    metadata = v25->_metadata;
    v25->_metadata = v29;

    v25->_videoZoomFactor = a9;
    v25->_reason = a10;
    objc_storeStrong(&v25->_coordinationInfo, a12);
    objc_storeStrong(&v25->_error, a13);
    v25->_slowWriterFrameDrops = a14;
    v25->_videoPreviewPixelBuffer = CVPixelBufferRetain(a11);
    v31 = [(NSArray *)v25->_metadata indexOfObjectPassingTest:&__block_literal_global_44];
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:
      if ((v27->var2 & 1) == 0)
      {
        v32 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v47 = v20;
          _os_log_impl(&dword_1A3640000, v32, OS_LOG_TYPE_DEFAULT, "Unable to extract captureDate, using currentTime instead for %{public}@", buf, 0xCu);
        }
      }

      v33 = [MEMORY[0x1E695DF00] date];
      goto LABEL_11;
    }

    v34 = [v22 objectAtIndex:v31];
    v35 = [v34 dateValue];
    if (v35)
    {
      v33 = v35;
    }

    else
    {
      v36 = [v34 stringValue];
      v37 = +[CAMPersistenceController videoMetadataDateFormatter];
      v33 = [v37 dateFromString:v36];

      v27 = a6;
      if (!v33)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    captureDate = v25->_captureDate;
    v25->_captureDate = v33;

    v39 = v25;
    v21 = v41;
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