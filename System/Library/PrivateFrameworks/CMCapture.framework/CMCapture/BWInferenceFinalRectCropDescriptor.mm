@interface BWInferenceFinalRectCropDescriptor
+ (id)finalCropRectDescriptorWithName:(id)name;
+ (id)finalCropRectDescriptorWithName:(id)name attachedMediaKey:(id)key;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
- (void)initWithNameAndAttachedMediaKey:(void *)key attachedMediaKey:;
@end

@implementation BWInferenceFinalRectCropDescriptor

+ (id)finalCropRectDescriptorWithName:(id)name
{
  v3 = [[BWInferenceFinalRectCropDescriptor alloc] initWithNameAndAttachedMediaKey:name attachedMediaKey:0];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceFinalRectCropDescriptor;
  [(BWInferenceFinalRectCropDescriptor *)&v3 dealloc];
}

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  AttachedMedia = buffer;
  attachedMediaKey = self->_attachedMediaKey;
  if (attachedMediaKey)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, attachedMediaKey);
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

- (void)initWithNameAndAttachedMediaKey:(void *)key attachedMediaKey:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWInferenceFinalRectCropDescriptor;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[2] = key;
  }

  return v5;
}

+ (id)finalCropRectDescriptorWithName:(id)name attachedMediaKey:(id)key
{
  v4 = [[BWInferenceFinalRectCropDescriptor alloc] initWithNameAndAttachedMediaKey:name attachedMediaKey:key];

  return v4;
}

@end