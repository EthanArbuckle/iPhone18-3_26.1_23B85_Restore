@interface MIOL016Raw14FrameProcessor
- (MIOL016Raw14FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MIOL016Raw14FrameProcessor

- (MIOL016Raw14FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3
{
  v6.receiver = self;
  v6.super_class = MIOL016Raw14FrameProcessor;
  v4 = [(MIOFrameProcessor *)&v6 initWithInputFormatDescription:?];
  if (v4)
  {
    v4->_formatDescForEncoding = [MOVStreamIOUtility createL010FormatDescriptionFromL016FormatDescription:a3];
    [(MIOFrameProcessor *)v4 setFormatDescriptionNeedsUpdate:1];
  }

  return v4;
}

- (void)dealloc
{
  formatDescForEncoding = self->_formatDescForEncoding;
  if (formatDescForEncoding)
  {
    CFRelease(formatDescForEncoding);
  }

  v4.receiver = self;
  v4.super_class = MIOL016Raw14FrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5
{
  v6 = [MOVStreamVideoEncoderInterface createHEVCCompatiblePixelBuffer:a3, a4, a5];
  self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:v6 currentFormatDescription:self->_formatDescForEncoding];
  return v6;
}

@end