@interface MIONonPlanarToL008FrameProcessor
- (MIONonPlanarToL008FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error;
- (void)dealloc;
@end

@implementation MIONonPlanarToL008FrameProcessor

- (MIONonPlanarToL008FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description
{
  v6.receiver = self;
  v6.super_class = MIONonPlanarToL008FrameProcessor;
  v4 = [(MIOFrameProcessor *)&v6 initWithInputFormatDescription:?];
  if (v4)
  {
    v4->_formatDescForEncoding = [MOVStreamIOUtility createL008FormatDescriptionFromNonPlanarFormatDescription:description];
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
  v4.super_class = MIONonPlanarToL008FrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error
{
  attachmentsCopy = attachments;
  pool = self->_pool;
  if (pool || (Width = CVPixelBufferGetWidth(buffer), Height = CVPixelBufferGetHeight(buffer), BytesPerPixel = MIOCVPixelBufferGetBytesPerPixel(buffer), self->_bytesPerPixel = BytesPerPixel, [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:(BytesPerPixel * Width) height:Height pixelFormat:1278226488 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:[(MIONonPlanarToL008FrameProcessor *)self bufferCacheMode]], v13 = objc_claimAutoreleasedReturnValue(), v14 = self->_pool, self->_pool = v13, v14, (pool = self->_pool) != 0))
  {
    getPixelBuffer = [(MIOPixelBufferPool *)pool getPixelBuffer];
    [MIOPixelBufferUtility copyPixelBuffer:buffer toPixelBuffer:getPixelBuffer];
    self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:getPixelBuffer currentFormatDescription:self->_formatDescForEncoding];
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create L008 pixel buffer pool for Non-Planar stream." code:19];
    if (error)
    {
      v17 = v17;
      *error = v17;
    }

    getPixelBuffer = 0;
  }

  return getPixelBuffer;
}

@end