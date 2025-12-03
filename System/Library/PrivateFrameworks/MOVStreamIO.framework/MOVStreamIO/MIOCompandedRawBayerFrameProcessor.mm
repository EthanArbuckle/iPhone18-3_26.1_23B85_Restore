@interface MIOCompandedRawBayerFrameProcessor
- (MIOCompandedRawBayerFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error;
- (void)dealloc;
@end

@implementation MIOCompandedRawBayerFrameProcessor

- (MIOCompandedRawBayerFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description
{
  v6.receiver = self;
  v6.super_class = MIOCompandedRawBayerFrameProcessor;
  v4 = [(MIOFrameProcessor *)&v6 initWithInputFormatDescription:?];
  if (v4)
  {
    v4->_formatDescForEncoding = [MOVStreamIOUtility createL008FormatDescriptionFromCompandedRawBayerFormatDescription:description];
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
  v4.super_class = MIOCompandedRawBayerFrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error
{
  attachmentsCopy = attachments;
  pool = self->_pool;
  if (pool || ([MIOPixelBufferPool createNewL008MIOPixelBufferPoolWithReferencePixelBuffer:buffer minBufferCount:10 bufferCacheMode:[(MIOFrameProcessor *)self bufferCacheMode]], v10 = objc_claimAutoreleasedReturnValue(), v11 = self->_pool, self->_pool = v10, v11, (pool = self->_pool) != 0))
  {
    getPixelBuffer = [(MIOPixelBufferPool *)pool getPixelBuffer];
    [(MIOPixelBufferUtility *)PixelBufferUtility splitCompandedBayerBuffer:buffer intoCompandedWarholPixelBuffer:getPixelBuffer];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
    if (error)
    {
      v14 = v14;
      *error = v14;
    }

    getPixelBuffer = 0;
  }

  return getPixelBuffer;
}

@end