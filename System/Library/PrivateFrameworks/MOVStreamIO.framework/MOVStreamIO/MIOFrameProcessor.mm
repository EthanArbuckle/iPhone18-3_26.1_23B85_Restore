@interface MIOFrameProcessor
- (MIOFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description;
- (opaqueCMFormatDescription)updatedFormatDescriptionIfNeededWithBuffer:(__CVBuffer *)buffer currentFormatDescription:(opaqueCMFormatDescription *)description;
- (void)dealloc;
@end

@implementation MIOFrameProcessor

- (MIOFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description
{
  v6.receiver = self;
  v6.super_class = MIOFrameProcessor;
  v4 = [(MIOFrameProcessor *)&v6 init];
  if (v4)
  {
    CFRetain(description);
    v4->_formatDesc = description;
    [(MIOFrameProcessor *)v4 setBufferCacheMode:0];
  }

  return v4;
}

- (void)dealloc
{
  formatDesc = self->_formatDesc;
  if (formatDesc)
  {
    CFRelease(formatDesc);
  }

  v4.receiver = self;
  v4.super_class = MIOFrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (opaqueCMFormatDescription)updatedFormatDescriptionIfNeededWithBuffer:(__CVBuffer *)buffer currentFormatDescription:(opaqueCMFormatDescription *)description
{
  if (![(MIOFrameProcessor *)self formatDescriptionNeedsUpdate])
  {
    return description;
  }

  [(MIOFrameProcessor *)self setFormatDescriptionNeedsUpdate:0];
  if (description)
  {
    CFRelease(description);
  }

  return [MOVStreamIOUtility createFormatDescriptionFromPixelBuffer:buffer];
}

@end