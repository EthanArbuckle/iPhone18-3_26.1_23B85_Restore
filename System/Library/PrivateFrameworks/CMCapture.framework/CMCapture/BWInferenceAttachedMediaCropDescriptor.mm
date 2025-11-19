@interface BWInferenceAttachedMediaCropDescriptor
+ (id)attachedMediaCropDescriptorWithName:(id)a3 attachedMediaKey:(id)a4 cropRectKey:(id)a5 targetDimensions:(id)a6 extendCropRect:(BOOL)a7;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)initWithNameAndAttachedMediaKey:(void *)a3 attachedMediaKey:(uint64_t)a4 cropRectKey:(uint64_t)a5 targetDimensions:(char)a6 extendCropRect:;
@end

@implementation BWInferenceAttachedMediaCropDescriptor

+ (id)attachedMediaCropDescriptorWithName:(id)a3 attachedMediaKey:(id)a4 cropRectKey:(id)a5 targetDimensions:(id)a6 extendCropRect:(BOOL)a7
{
  v7 = [[BWInferenceAttachedMediaCropDescriptor alloc] initWithNameAndAttachedMediaKey:a3 attachedMediaKey:a4 cropRectKey:a5 targetDimensions:*&a6 extendCropRect:a7];

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceAttachedMediaCropDescriptor;
  [(BWInferenceAttachedMediaCropDescriptor *)&v3 dealloc];
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  rect.origin.x = FigCaptureUnityRect();
  rect.origin.y = v5;
  rect.size.width = v6;
  rect.size.height = v7;
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, self->_attachedMediaKey);
  v9 = CMGetAttachment(AttachedMedia, self->_cropRectKey, 0);
  if (v9)
  {
    CGRectMakeWithDictionaryRepresentation(v9, &rect);
    if (self->_extendCropRect)
    {
      memset(&v17, 0, sizeof(v17));
      ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
      Width = CVPixelBufferGetWidth(ImageBuffer);
      Height = CVPixelBufferGetHeight(ImageBuffer);
      FigCaptureMetadataUtilitiesExtendRectToAspectRatioOfTargetDimensions(Width | (Height << 32), *&self->_targetDimensions, &v17.origin.x, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
      rect = v17;
    }
  }

  else
  {
    [BWInferenceAttachedMediaCropDescriptor rectForSampleBuffer:];
  }

  x = rect.origin.x;
  y = rect.origin.y;
  v15 = rect.size.width;
  v16 = rect.size.height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithNameAndAttachedMediaKey:(void *)a3 attachedMediaKey:(uint64_t)a4 cropRectKey:(uint64_t)a5 targetDimensions:(char)a6 extendCropRect:
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = BWInferenceAttachedMediaCropDescriptor;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  if (v11)
  {
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    *(v11 + 40) = a6;
  }

  return v11;
}

@end