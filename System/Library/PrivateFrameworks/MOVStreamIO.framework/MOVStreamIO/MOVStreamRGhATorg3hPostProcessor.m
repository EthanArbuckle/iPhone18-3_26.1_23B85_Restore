@interface MOVStreamRGhATorg3hPostProcessor
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5;
@end

@implementation MOVStreamRGhATorg3hPostProcessor

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a4;
  pool = self->_pool;
  if (!pool)
  {
    Width = CVPixelBufferGetWidth(a3);
    v11 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:CVPixelBufferGetHeight(a3) pixelFormat:[(MOVStreamDefaultPostProcessor *)self originalPixelFormat] extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:[(MOVStreamDefaultPostProcessor *)self bufferCacheMode]];
    v12 = self->_pool;
    self->_pool = v11;

    pool = self->_pool;
    if (!pool)
    {
      v15 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for kCVPixelFormatType_RGBPlanarHalf stream." code:19];
      goto LABEL_11;
    }
  }

  v13 = [(MIOPixelBufferPool *)pool getPixelBuffer];
  if (![MIOPixelBufferUtility transfer_RGhABuffer:a3 torg3h:v13])
  {
    CVPixelBufferRelease(v13);
    v15 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot convert pixel buffer for kCVPixelFormatType_RGBPlanarHalf stream." code:19];
LABEL_11:
    if (a5)
    {
      v15 = v15;
      *a5 = v15;
    }

    v13 = 0;
    goto LABEL_14;
  }

  if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:v13 metadata:v8])
  {
    v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:v13 error:a5];
    CVPixelBufferRelease(v13);
LABEL_9:
    v13 = v14;
    goto LABEL_14;
  }

  if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:a3])
  {
    v16 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:v16 fromPixelBuffer:v13 error:a5];

    CVPixelBufferRelease(v13);
    goto LABEL_9;
  }

LABEL_14:

  return v13;
}

@end