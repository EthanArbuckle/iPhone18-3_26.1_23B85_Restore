@interface MIONonPlanarToL008FrameProcessor
- (MIONonPlanarToL008FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MIONonPlanarToL008FrameProcessor

- (MIONonPlanarToL008FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3
{
  v6.receiver = self;
  v6.super_class = MIONonPlanarToL008FrameProcessor;
  v4 = [(MIOFrameProcessor *)&v6 initWithInputFormatDescription:?];
  if (v4)
  {
    v4->_formatDescForEncoding = [MOVStreamIOUtility createL008FormatDescriptionFromNonPlanarFormatDescription:a3];
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

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5
{
  v8 = a4;
  pool = self->_pool;
  if (pool || (Width = CVPixelBufferGetWidth(a3), Height = CVPixelBufferGetHeight(a3), BytesPerPixel = MIOCVPixelBufferGetBytesPerPixel(a3), self->_bytesPerPixel = BytesPerPixel, [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:(BytesPerPixel * Width) height:Height pixelFormat:1278226488 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:[(MIONonPlanarToL008FrameProcessor *)self bufferCacheMode]], v13 = objc_claimAutoreleasedReturnValue(), v14 = self->_pool, self->_pool = v13, v14, (pool = self->_pool) != 0))
  {
    v15 = [(MIOPixelBufferPool *)pool getPixelBuffer];
    [MIOPixelBufferUtility copyPixelBuffer:a3 toPixelBuffer:v15];
    self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:v15 currentFormatDescription:self->_formatDescForEncoding];
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create L008 pixel buffer pool for Non-Planar stream." code:19];
    if (a5)
    {
      v17 = v17;
      *a5 = v17;
    }

    v15 = 0;
  }

  return v15;
}

@end