@interface ICDocCamPhotoCaptureDelegate
- (ICDocCamPhotoCaptureDelegate)initWithRequestedPhotoSettings:(id)a3 willCapturePhotoAnimation:(id)a4 completed:(id)a5;
- (float)sharpnessForImageBuffer:(__CVBuffer *)a3;
- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishProcessingLivePhotoToMovieFileAtURL:(id)a4 duration:(id *)a5 photoDisplayTime:(id *)a6 resolvedSettings:(id)a7 error:(id)a8;
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 willCapturePhotoForResolvedSettings:(id)a4;
- (void)dealloc;
- (void)didFinish;
- (void)setPbRef:(__CVBuffer *)a3;
@end

@implementation ICDocCamPhotoCaptureDelegate

- (ICDocCamPhotoCaptureDelegate)initWithRequestedPhotoSettings:(id)a3 willCapturePhotoAnimation:(id)a4 completed:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ICDocCamPhotoCaptureDelegate;
  v11 = [(ICDocCamPhotoCaptureDelegate *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(ICDocCamPhotoCaptureDelegate *)v11 setRequestedPhotoSettings:v8];
    [(ICDocCamPhotoCaptureDelegate *)v12 setWillCapturePhotoAnimation:v9];
    [(ICDocCamPhotoCaptureDelegate *)v12 setCompleted:v10];
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(ICDocCamPhotoCaptureDelegate *)v12 setImageAttributes:v13];
  }

  return v12;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pbRef);
  self->_pbRef = 0;
  v3.receiver = self;
  v3.super_class = ICDocCamPhotoCaptureDelegate;
  [(ICDocCamPhotoCaptureDelegate *)&v3 dealloc];
}

- (void)didFinish
{
  v3 = [(ICDocCamPhotoCaptureDelegate *)self completed];
  v4 = [(ICDocCamPhotoCaptureDelegate *)self pbRef];
  v5 = [(ICDocCamPhotoCaptureDelegate *)self metaData];
  v6 = [(ICDocCamPhotoCaptureDelegate *)self imageAttributes];
  (v3)[2](v3, self, v4, v5, v6);

  [(ICDocCamPhotoCaptureDelegate *)self setRequestedPhotoSettings:0];

  [(ICDocCamPhotoCaptureDelegate *)self setPbRef:0];
}

- (void)setPbRef:(__CVBuffer *)a3
{
  pbRef = self->_pbRef;
  if (pbRef != a3)
  {
    CVPixelBufferRelease(pbRef);
    self->_pbRef = CVPixelBufferRetain(a3);
  }
}

- (void)captureOutput:(id)a3 willCapturePhotoForResolvedSettings:(id)a4
{
  v4 = [(ICDocCamPhotoCaptureDelegate *)self willCapturePhotoAnimation:a3];
  v4[2]();
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamPhotoCaptureDelegate *)v10 captureOutput:v11 didFinishProcessingPhoto:v12 error:v13, v14, v15, v16, v17];
    }

    goto LABEL_5;
  }

  v18 = [v9 pixelBuffer];
  v19 = [(ICDocCamPhotoCaptureDelegate *)self requestedPhotoSettings];
  if ([v19 isConstantColorEnabled])
  {
    v20 = [(ICDocCamPhotoCaptureDelegate *)self requestedPhotoSettings];
    if ([v20 isConstantColorFallbackPhotoDeliveryEnabled])
    {
      v21 = [v8 isFlashScene];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v9 isConstantColorFallbackPhoto];
    if (v21)
    {
      if (v22)
      {
        if ([(ICDocCamPhotoCaptureDelegate *)self constantColorDeliveredOriginalPhoto])
        {
          [(ICDocCamPhotoCaptureDelegate *)self constantColorCenterWeightedMeanConfidenceLevel];
          if (v23 >= 0.9)
          {
            v24 = os_log_create("com.apple.documentcamera", "");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [ICDocCamPhotoCaptureDelegate captureOutput:? didFinishProcessingPhoto:? error:?];
            }

            v18 = [(ICDocCamPhotoCaptureDelegate *)self pbRef];
            v25 = [(ICDocCamPhotoCaptureDelegate *)self imageAttributes];
            [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"constantColorPhoto"];
          }
        }

        [(ICDocCamPhotoCaptureDelegate *)self setConstantColorDeliveredFallBackPhoto:1];
      }

      else
      {
        if ([(ICDocCamPhotoCaptureDelegate *)self constantColorDeliveredFallBackPhoto])
        {
          [v9 constantColorCenterWeightedMeanConfidenceLevel];
          v32 = v31;
          if (v31 < 0.9)
          {
            v33 = os_log_create("com.apple.documentcamera", "");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [ICDocCamPhotoCaptureDelegate captureOutput:v9 didFinishProcessingPhoto:? error:?];
            }

            v18 = [(ICDocCamPhotoCaptureDelegate *)self pbRef];
          }

          v34 = [MEMORY[0x277CCABB0] numberWithBool:v32 >= 0.9];
          v35 = [(ICDocCamPhotoCaptureDelegate *)self imageAttributes];
          [v35 setObject:v34 forKeyedSubscript:@"constantColorPhoto"];
        }

        [v9 constantColorCenterWeightedMeanConfidenceLevel];
        [(ICDocCamPhotoCaptureDelegate *)self setConstantColorCenterWeightedMeanConfidenceLevel:?];
        [(ICDocCamPhotoCaptureDelegate *)self setConstantColorDeliveredOriginalPhoto:1];
      }

      [(ICDocCamPhotoCaptureDelegate *)self sharpnessForImageBuffer:v18];
      [(ICDocCamPhotoCaptureDelegate *)self setPbRef:v18];
      v36 = CMCopyDictionaryOfAttachments(0, v18, 1u);
      [(ICDocCamPhotoCaptureDelegate *)self setMetaData:v36];

      goto LABEL_5;
    }
  }

  else
  {

    [v9 isConstantColorFallbackPhoto];
  }

  [(ICDocCamPhotoCaptureDelegate *)self sharpnessForImageBuffer:v18];
  v27 = v26;
  [(ICDocCamPhotoCaptureDelegate *)self highestSharpness];
  if (v27 > v28)
  {
    [(ICDocCamPhotoCaptureDelegate *)self setPbRef:v18];
    v29 = CMCopyDictionaryOfAttachments(0, v18, 1u);
    [(ICDocCamPhotoCaptureDelegate *)self setMetaData:v29];

    *&v30 = v27;
    [(ICDocCamPhotoCaptureDelegate *)self setHighestSharpness:v30];
  }

LABEL_5:
}

- (void)captureOutput:(id)a3 didFinishProcessingLivePhotoToMovieFileAtURL:(id)a4 duration:(id *)a5 photoDisplayTime:(id *)a6 resolvedSettings:(id)a7 error:(id)a8
{
  v8 = a8;
  if (v8)
  {
    v9 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamPhotoCaptureDelegate *)v8 captureOutput:v9 didFinishProcessingLivePhotoToMovieFileAtURL:v10 duration:v11 photoDisplayTime:v12 resolvedSettings:v13 error:v14, v15];
    }
  }
}

- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5
{
  v6 = a5;
  if (v6)
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamPhotoCaptureDelegate *)v6 captureOutput:v7 didFinishProcessingPhoto:v8 error:v9, v10, v11, v12, v13];
    }
  }

  [(ICDocCamPhotoCaptureDelegate *)self didFinish];
}

- (float)sharpnessForImageBuffer:(__CVBuffer *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  v6 = HeightOfPlane * WidthOfPlane;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  src.data = BaseAddressOfPlane;
  src.height = HeightOfPlane;
  src.width = WidthOfPlane;
  src.rowBytes = BytesPerRowOfPlane;
  v9 = malloc_type_calloc(HeightOfPlane * WidthOfPlane, 4uLL, 0x100004052888210uLL);
  __StandardDeviation = 0;
  if (v9)
  {
    v10 = v9;
    if (BytesPerRowOfPlane == WidthOfPlane)
    {
      vDSP_vfltu8(BaseAddressOfPlane, 1, v9, 1, v6);
    }

    else
    {
      dest.data = v9;
      dest.height = HeightOfPlane;
      dest.width = WidthOfPlane;
      dest.rowBytes = 4 * WidthOfPlane;
      vImageConvert_Planar8toPlanarF(&src, &dest, 0.0, 255.0, 0);
    }

    v20 = -1082130432;
    v16 = xmmword_2492F78F8;
    v17 = unk_2492F7908;
    v18 = xmmword_2492F7918;
    v19 = unk_2492F7928;
    dest = *ymmword_2492F78D8;
    vDSP_f5x5(v10, HeightOfPlane, WidthOfPlane, &dest, v10);
    vDSP_normalize(v10, 1, 0, 1, &__StandardDeviation + 1, &__StandardDeviation, v6);
    free(v10);
  }

  else
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamPhotoCaptureDelegate sharpnessForImageBuffer:v11];
    }
  }

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  return *&__StandardDeviation;
}

@end