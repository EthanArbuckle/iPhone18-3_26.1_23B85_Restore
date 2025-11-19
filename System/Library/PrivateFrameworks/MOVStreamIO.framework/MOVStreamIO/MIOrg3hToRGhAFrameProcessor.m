@interface MIOrg3hToRGhAFrameProcessor
- (MIOrg3hToRGhAFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MIOrg3hToRGhAFrameProcessor

- (MIOrg3hToRGhAFrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)a3
{
  v14.receiver = self;
  v14.super_class = MIOrg3hToRGhAFrameProcessor;
  v4 = [(MIOFrameProcessor *)&v14 initWithInputFormatDescription:?];
  if (!v4)
  {
    goto LABEL_4;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  v6 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Dimensions height:Dimensions >> 32 pixelFormat:1380411457 minBufferCount:10];
  pool = v4->_pool;
  v4->_pool = v6;

  v8 = v4->_pool;
  if (v8)
  {
    v9 = [(MIOPixelBufferPool *)v8 getPixelBuffer];
    v4->_formatDescForEncoding = [MOVStreamIOUtility newFormatDescriptionFromPixelBuffer:v9];
    CVPixelBufferRelease(v9);
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

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)a3 preserveAttachments:(id)a4 error:(id *)a5
{
  v7 = [(MIOPixelBufferPool *)self->_pool getPixelBuffer:a3];
  if (![MIOPixelBufferUtility transfer_rg3hBuffer:a3 toRGhA:v7])
  {
    CVPixelBufferRelease(v7);
    v8 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot convert pixel buffer for kCVPixelFormatType_RGBPlanarHalf stream." code:19];
    if (a5)
    {
      v8 = v8;
      *a5 = v8;
    }

    return 0;
  }

  return v7;
}

@end