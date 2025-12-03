@interface BWInferenceAttachedMediaCropDescriptor
+ (id)attachedMediaCropDescriptorWithName:(id)name attachedMediaKey:(id)key cropRectKey:(id)rectKey targetDimensions:(id)dimensions extendCropRect:(BOOL)rect;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
- (void)initWithNameAndAttachedMediaKey:(void *)key attachedMediaKey:(uint64_t)mediaKey cropRectKey:(uint64_t)rectKey targetDimensions:(char)dimensions extendCropRect:;
@end

@implementation BWInferenceAttachedMediaCropDescriptor

+ (id)attachedMediaCropDescriptorWithName:(id)name attachedMediaKey:(id)key cropRectKey:(id)rectKey targetDimensions:(id)dimensions extendCropRect:(BOOL)rect
{
  v7 = [[BWInferenceAttachedMediaCropDescriptor alloc] initWithNameAndAttachedMediaKey:name attachedMediaKey:key cropRectKey:rectKey targetDimensions:*&dimensions extendCropRect:rect];

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceAttachedMediaCropDescriptor;
  [(BWInferenceAttachedMediaCropDescriptor *)&v3 dealloc];
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  rect.origin.x = FigCaptureUnityRect();
  rect.origin.y = v5;
  rect.size.width = v6;
  rect.size.height = v7;
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, self->_attachedMediaKey);
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

- (void)initWithNameAndAttachedMediaKey:(void *)key attachedMediaKey:(uint64_t)mediaKey cropRectKey:(uint64_t)rectKey targetDimensions:(char)dimensions extendCropRect:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = BWInferenceAttachedMediaCropDescriptor;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  if (v11)
  {
    v11[1] = a2;
    v11[2] = key;
    v11[3] = mediaKey;
    v11[4] = rectKey;
    *(v11 + 40) = dimensions;
  }

  return v11;
}

@end