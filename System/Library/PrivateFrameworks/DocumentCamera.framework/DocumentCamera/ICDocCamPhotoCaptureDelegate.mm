@interface ICDocCamPhotoCaptureDelegate
- (ICDocCamPhotoCaptureDelegate)initWithRequestedPhotoSettings:(id)settings willCapturePhotoAnimation:(id)animation completed:(id)completed;
- (float)sharpnessForImageBuffer:(__CVBuffer *)buffer;
- (void)captureOutput:(id)output didFinishCaptureForResolvedSettings:(id)settings error:(id)error;
- (void)captureOutput:(id)output didFinishProcessingLivePhotoToMovieFileAtURL:(id)l duration:(id *)duration photoDisplayTime:(id *)time resolvedSettings:(id)settings error:(id)error;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output willCapturePhotoForResolvedSettings:(id)settings;
- (void)dealloc;
- (void)didFinish;
- (void)setPbRef:(__CVBuffer *)ref;
@end

@implementation ICDocCamPhotoCaptureDelegate

- (ICDocCamPhotoCaptureDelegate)initWithRequestedPhotoSettings:(id)settings willCapturePhotoAnimation:(id)animation completed:(id)completed
{
  settingsCopy = settings;
  animationCopy = animation;
  completedCopy = completed;
  v15.receiver = self;
  v15.super_class = ICDocCamPhotoCaptureDelegate;
  v11 = [(ICDocCamPhotoCaptureDelegate *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(ICDocCamPhotoCaptureDelegate *)v11 setRequestedPhotoSettings:settingsCopy];
    [(ICDocCamPhotoCaptureDelegate *)v12 setWillCapturePhotoAnimation:animationCopy];
    [(ICDocCamPhotoCaptureDelegate *)v12 setCompleted:completedCopy];
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
  completed = [(ICDocCamPhotoCaptureDelegate *)self completed];
  pbRef = [(ICDocCamPhotoCaptureDelegate *)self pbRef];
  metaData = [(ICDocCamPhotoCaptureDelegate *)self metaData];
  imageAttributes = [(ICDocCamPhotoCaptureDelegate *)self imageAttributes];
  (completed)[2](completed, self, pbRef, metaData, imageAttributes);

  [(ICDocCamPhotoCaptureDelegate *)self setRequestedPhotoSettings:0];

  [(ICDocCamPhotoCaptureDelegate *)self setPbRef:0];
}

- (void)setPbRef:(__CVBuffer *)ref
{
  pbRef = self->_pbRef;
  if (pbRef != ref)
  {
    CVPixelBufferRelease(pbRef);
    self->_pbRef = CVPixelBufferRetain(ref);
  }
}

- (void)captureOutput:(id)output willCapturePhotoForResolvedSettings:(id)settings
{
  v4 = [(ICDocCamPhotoCaptureDelegate *)self willCapturePhotoAnimation:output];
  v4[2]();
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  outputCopy = output;
  photoCopy = photo;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamPhotoCaptureDelegate *)errorCopy captureOutput:v11 didFinishProcessingPhoto:v12 error:v13, v14, v15, v16, v17];
    }

    goto LABEL_5;
  }

  pixelBuffer = [photoCopy pixelBuffer];
  requestedPhotoSettings = [(ICDocCamPhotoCaptureDelegate *)self requestedPhotoSettings];
  if ([requestedPhotoSettings isConstantColorEnabled])
  {
    requestedPhotoSettings2 = [(ICDocCamPhotoCaptureDelegate *)self requestedPhotoSettings];
    if ([requestedPhotoSettings2 isConstantColorFallbackPhotoDeliveryEnabled])
    {
      isFlashScene = [outputCopy isFlashScene];
    }

    else
    {
      isFlashScene = 0;
    }

    isConstantColorFallbackPhoto = [photoCopy isConstantColorFallbackPhoto];
    if (isFlashScene)
    {
      if (isConstantColorFallbackPhoto)
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

            pixelBuffer = [(ICDocCamPhotoCaptureDelegate *)self pbRef];
            imageAttributes = [(ICDocCamPhotoCaptureDelegate *)self imageAttributes];
            [imageAttributes setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"constantColorPhoto"];
          }
        }

        [(ICDocCamPhotoCaptureDelegate *)self setConstantColorDeliveredFallBackPhoto:1];
      }

      else
      {
        if ([(ICDocCamPhotoCaptureDelegate *)self constantColorDeliveredFallBackPhoto])
        {
          [photoCopy constantColorCenterWeightedMeanConfidenceLevel];
          v32 = v31;
          if (v31 < 0.9)
          {
            v33 = os_log_create("com.apple.documentcamera", "");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [ICDocCamPhotoCaptureDelegate captureOutput:photoCopy didFinishProcessingPhoto:? error:?];
            }

            pixelBuffer = [(ICDocCamPhotoCaptureDelegate *)self pbRef];
          }

          v34 = [MEMORY[0x277CCABB0] numberWithBool:v32 >= 0.9];
          imageAttributes2 = [(ICDocCamPhotoCaptureDelegate *)self imageAttributes];
          [imageAttributes2 setObject:v34 forKeyedSubscript:@"constantColorPhoto"];
        }

        [photoCopy constantColorCenterWeightedMeanConfidenceLevel];
        [(ICDocCamPhotoCaptureDelegate *)self setConstantColorCenterWeightedMeanConfidenceLevel:?];
        [(ICDocCamPhotoCaptureDelegate *)self setConstantColorDeliveredOriginalPhoto:1];
      }

      [(ICDocCamPhotoCaptureDelegate *)self sharpnessForImageBuffer:pixelBuffer];
      [(ICDocCamPhotoCaptureDelegate *)self setPbRef:pixelBuffer];
      v36 = CMCopyDictionaryOfAttachments(0, pixelBuffer, 1u);
      [(ICDocCamPhotoCaptureDelegate *)self setMetaData:v36];

      goto LABEL_5;
    }
  }

  else
  {

    [photoCopy isConstantColorFallbackPhoto];
  }

  [(ICDocCamPhotoCaptureDelegate *)self sharpnessForImageBuffer:pixelBuffer];
  v27 = v26;
  [(ICDocCamPhotoCaptureDelegate *)self highestSharpness];
  if (v27 > v28)
  {
    [(ICDocCamPhotoCaptureDelegate *)self setPbRef:pixelBuffer];
    v29 = CMCopyDictionaryOfAttachments(0, pixelBuffer, 1u);
    [(ICDocCamPhotoCaptureDelegate *)self setMetaData:v29];

    *&v30 = v27;
    [(ICDocCamPhotoCaptureDelegate *)self setHighestSharpness:v30];
  }

LABEL_5:
}

- (void)captureOutput:(id)output didFinishProcessingLivePhotoToMovieFileAtURL:(id)l duration:(id *)duration photoDisplayTime:(id *)time resolvedSettings:(id)settings error:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v9 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamPhotoCaptureDelegate *)errorCopy captureOutput:v9 didFinishProcessingLivePhotoToMovieFileAtURL:v10 duration:v11 photoDisplayTime:v12 resolvedSettings:v13 error:v14, v15];
    }
  }
}

- (void)captureOutput:(id)output didFinishCaptureForResolvedSettings:(id)settings error:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamPhotoCaptureDelegate *)errorCopy captureOutput:v7 didFinishProcessingPhoto:v8 error:v9, v10, v11, v12, v13];
    }
  }

  [(ICDocCamPhotoCaptureDelegate *)self didFinish];
}

- (float)sharpnessForImageBuffer:(__CVBuffer *)buffer
{
  v21 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v6 = HeightOfPlane * WidthOfPlane;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
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

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  return *&__StandardDeviation;
}

@end