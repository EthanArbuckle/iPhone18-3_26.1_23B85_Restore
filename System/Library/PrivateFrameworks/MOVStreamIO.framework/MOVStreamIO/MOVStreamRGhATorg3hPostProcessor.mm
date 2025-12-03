@interface MOVStreamRGhATorg3hPostProcessor
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error;
@end

@implementation MOVStreamRGhATorg3hPostProcessor

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  pool = self->_pool;
  if (!pool)
  {
    Width = CVPixelBufferGetWidth(from);
    v11 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:CVPixelBufferGetHeight(from) pixelFormat:[(MOVStreamDefaultPostProcessor *)self originalPixelFormat] extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:[(MOVStreamDefaultPostProcessor *)self bufferCacheMode]];
    v12 = self->_pool;
    self->_pool = v11;

    pool = self->_pool;
    if (!pool)
    {
      v15 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for kCVPixelFormatType_RGBPlanarHalf stream." code:19];
      goto LABEL_11;
    }
  }

  getPixelBuffer = [(MIOPixelBufferPool *)pool getPixelBuffer];
  if (![MIOPixelBufferUtility transfer_RGhABuffer:from torg3h:getPixelBuffer])
  {
    CVPixelBufferRelease(getPixelBuffer);
    v15 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot convert pixel buffer for kCVPixelFormatType_RGBPlanarHalf stream." code:19];
LABEL_11:
    if (error)
    {
      v15 = v15;
      *error = v15;
    }

    getPixelBuffer = 0;
    goto LABEL_14;
  }

  if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:getPixelBuffer metadata:metadataCopy])
  {
    v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:getPixelBuffer error:error];
    CVPixelBufferRelease(getPixelBuffer);
LABEL_9:
    getPixelBuffer = v14;
    goto LABEL_14;
  }

  if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:from])
  {
    exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:exactBytesPerRow fromPixelBuffer:getPixelBuffer error:error];

    CVPixelBufferRelease(getPixelBuffer);
    goto LABEL_9;
  }

LABEL_14:

  return getPixelBuffer;
}

@end