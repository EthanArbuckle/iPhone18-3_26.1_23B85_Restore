@interface MIORawBayerFrameProcessor
- (MIORawBayerFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MIORawBayerFrameProcessor

- (MIORawBayerFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3
{
  v6.receiver = self;
  v6.super_class = MIORawBayerFrameProcessor;
  v4 = [(MIOFrameProcessor *)&v6 initWithInputFormatDescription:?];
  if (v4)
  {
    v4->_formatDescForEncoding = [MOVStreamIOUtility createL010FormatDescriptionFromRawBayerFormatDescription:a3];
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
  v4.super_class = MIORawBayerFrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5
{
  v8 = a4;
  pool = self->_pool;
  if (pool || ([MIOPixelBufferPool createNewL010MIOPixelBufferPoolWithReferencePixelBuffer:a3 minBufferCount:10 bufferCacheMode:[(MIOFrameProcessor *)self bufferCacheMode]], v10 = objc_claimAutoreleasedReturnValue(), v11 = self->_pool, self->_pool = v10, v11, (pool = self->_pool) != 0))
  {
    v12 = [(MIOPixelBufferPool *)pool getPixelBuffer];
    [(MIOPixelBufferUtility *)PixelBufferUtility splitBayerBuffer:a3 intoWarholPixelBuffer:v12 shiftBitsLeftBy:2];
    self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:v12 currentFormatDescription:self->_formatDescForEncoding];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
    if (a5)
    {
      v14 = v14;
      *a5 = v14;
    }

    v12 = 0;
  }

  return v12;
}

@end