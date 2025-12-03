@interface MIOL016Raw14FrameProcessor
- (MIOL016Raw14FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error;
- (void)dealloc;
@end

@implementation MIOL016Raw14FrameProcessor

- (MIOL016Raw14FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description
{
  v6.receiver = self;
  v6.super_class = MIOL016Raw14FrameProcessor;
  v4 = [(MIOFrameProcessor *)&v6 initWithInputFormatDescription:?];
  if (v4)
  {
    v4->_formatDescForEncoding = [MOVStreamIOUtility createL010FormatDescriptionFromL016FormatDescription:description];
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

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error
{
  error = [MOVStreamVideoEncoderInterface createHEVCCompatiblePixelBuffer:buffer, attachments, error];
  self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:error currentFormatDescription:self->_formatDescForEncoding];
  return error;
}

@end