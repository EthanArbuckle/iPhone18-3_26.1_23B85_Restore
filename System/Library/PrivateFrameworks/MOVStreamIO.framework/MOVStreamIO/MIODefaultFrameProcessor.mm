@interface MIODefaultFrameProcessor
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5;
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
  v2 = [(MIOFrameProcessor *)self formatDesc];

  return CMFormatDescriptionGetMediaSubType(v2);
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5
{
  v6 = [(MIOPixelBufferUtility *)PixelBufferUtility newPixelBufferRefCopy:a3 attachmentKeysToCopy:a4, a5];
  self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:v6 currentFormatDescription:self->_formatDescForEncoding];
  return v6;
}

@end