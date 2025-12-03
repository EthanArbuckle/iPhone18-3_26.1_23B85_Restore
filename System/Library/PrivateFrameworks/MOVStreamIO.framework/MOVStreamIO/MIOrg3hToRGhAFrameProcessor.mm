@interface MIOrg3hToRGhAFrameProcessor
- (MIOrg3hToRGhAFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error;
- (void)dealloc;
@end

@implementation MIOrg3hToRGhAFrameProcessor

- (MIOrg3hToRGhAFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description
{
  v14.receiver = self;
  v14.super_class = MIOrg3hToRGhAFrameProcessor;
  v4 = [(MIOFrameProcessor *)&v14 initWithInputFormatDescription:?];
  if (!v4)
  {
    goto LABEL_4;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(description);
  v6 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Dimensions height:Dimensions >> 32 pixelFormat:1380411457 minBufferCount:10];
  pool = v4->_pool;
  v4->_pool = v6;

  v8 = v4->_pool;
  if (v8)
  {
    getPixelBuffer = [(MIOPixelBufferPool *)v8 getPixelBuffer];
    v4->_formatDescForEncoding = [MOVStreamIOUtility newFormatDescriptionFromPixelBuffer:getPixelBuffer];
    CVPixelBufferRelease(getPixelBuffer);
LABEL_4:
    v10 = v4;
    goto LABEL_8;
  }

  v11 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "Cannot create pixel buffer pool for kCVPixelFormatType_RGBPlanarHalf stream.", v13, 2u);
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)dealloc
{
  formatDescForEncoding = self->_formatDescForEncoding;
  if (formatDescForEncoding)
  {
    CFRelease(formatDescForEncoding);
  }

  v4.receiver = self;
  v4.super_class = MIOrg3hToRGhAFrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error
{
  v7 = [(MIOPixelBufferPool *)self->_pool getPixelBuffer:buffer];
  if (![MIOPixelBufferUtility transfer_rg3hBuffer:buffer toRGhA:v7])
  {
    CVPixelBufferRelease(v7);
    v8 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot convert pixel buffer for kCVPixelFormatType_RGBPlanarHalf stream." code:19];
    if (error)
    {
      v8 = v8;
      *error = v8;
    }

    return 0;
  }

  return v7;
}

@end