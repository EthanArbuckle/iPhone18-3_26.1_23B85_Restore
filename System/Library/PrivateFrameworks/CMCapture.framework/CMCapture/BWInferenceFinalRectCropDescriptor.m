@interface BWInferenceFinalRectCropDescriptor
+ (id)finalCropRectDescriptorWithName:(id)a3;
+ (id)finalCropRectDescriptorWithName:(id)a3 attachedMediaKey:(id)a4;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)initWithNameAndAttachedMediaKey:(void *)a3 attachedMediaKey:;
@end

@implementation BWInferenceFinalRectCropDescriptor

+ (id)finalCropRectDescriptorWithName:(id)a3
{
  v3 = [[BWInferenceFinalRectCropDescriptor alloc] initWithNameAndAttachedMediaKey:a3 attachedMediaKey:0];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceFinalRectCropDescriptor;
  [(BWInferenceFinalRectCropDescriptor *)&v3 dealloc];
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  AttachedMedia = a3;
  attachedMediaKey = self->_attachedMediaKey;
  if (attachedMediaKey)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(a3, attachedMediaKey);
  }

  CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 16);
  FigCFDictionaryGetCGRectIfPresent();
  CMSampleBufferGetImageBuffer(AttachedMedia);
  v6 = *(&v9 + 1);
  v5 = *&v9;
  v8 = *(&v10 + 1);
  v7 = *&v10;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)initWithNameAndAttachedMediaKey:(void *)a3 attachedMediaKey:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = BWInferenceFinalRectCropDescriptor;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[2] = a3;
  }

  return v5;
}

+ (id)finalCropRectDescriptorWithName:(id)a3 attachedMediaKey:(id)a4
{
  v4 = [[BWInferenceFinalRectCropDescriptor alloc] initWithNameAndAttachedMediaKey:a3 attachedMediaKey:a4];

  return v4;
}

@end