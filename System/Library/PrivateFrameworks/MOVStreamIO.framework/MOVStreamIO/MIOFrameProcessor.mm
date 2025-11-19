@interface MIOFrameProcessor
- (MIOFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3;
- (opaqueCMFormatDescription)updatedFormatDescriptionIfNeededWithBuffer:(__CVBuffer *)a3 currentFormatDescription:(opaqueCMFormatDescription *)a4;
- (void)dealloc;
@end

@implementation MIOFrameProcessor

- (MIOFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3
{
  v6.receiver = self;
  v6.super_class = MIOFrameProcessor;
  v4 = [(MIOFrameProcessor *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_formatDesc = a3;
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

- (opaqueCMFormatDescription)updatedFormatDescriptionIfNeededWithBuffer:(__CVBuffer *)a3 currentFormatDescription:(opaqueCMFormatDescription *)a4
{
  if (![(MIOFrameProcessor *)self formatDescriptionNeedsUpdate])
  {
    return a4;
  }

  [(MIOFrameProcessor *)self setFormatDescriptionNeedsUpdate:0];
  if (a4)
  {
    CFRelease(a4);
  }

  return [MOVStreamIOUtility createFormatDescriptionFromPixelBuffer:a3];
}

@end