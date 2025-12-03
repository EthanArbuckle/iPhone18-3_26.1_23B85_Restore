@interface MIODefaultFrameProcessor
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error;
- (opaqueCMFormatDescription)formatDescriptionForEncoding;
- (unsigned)encodedPixelFormat;
- (void)dealloc;
@end

@implementation MIODefaultFrameProcessor

- (opaqueCMFormatDescription)formatDescriptionForEncoding
{
  if (self->_formatDescForEncoding)
  {
    return self->_formatDescForEncoding;
  }

  else
  {
    return [(MIOFrameProcessor *)self formatDesc];
  }
}

- (void)dealloc
{
  formatDescForEncoding = self->_formatDescForEncoding;
  if (formatDescForEncoding)
  {
    CFRelease(formatDescForEncoding);
  }

  v4.receiver = self;
  v4.super_class = MIODefaultFrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (unsigned)encodedPixelFormat
{
  formatDesc = [(MIOFrameProcessor *)self formatDesc];

  return CMFormatDescriptionGetMediaSubType(formatDesc);
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error
{
  error = [(MIOPixelBufferUtility *)PixelBufferUtility newPixelBufferRefCopy:buffer attachmentKeysToCopy:attachments, error];
  self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:error currentFormatDescription:self->_formatDescForEncoding];
  return error;
}

@end