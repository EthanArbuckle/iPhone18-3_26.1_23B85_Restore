@interface MOVStreamL008ToNonPlanarPostProcessor
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error;
- (unint64_t)adjustedWidthForWidth:(unint64_t)width;
@end

@implementation MOVStreamL008ToNonPlanarPostProcessor

- (unint64_t)adjustedWidthForWidth:(unint64_t)width
{
  [MOVStreamIOUtility bytesPerPixelForFormat:[(MOVStreamDefaultPostProcessor *)self originalPixelFormat]];
  v5 = v4;
  if (!v4)
  {
    v5 = 2;
  }

  return width / v5;
}

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  pool = self->_pool;
  if (pool || (Width = CVPixelBufferGetWidth(from), [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:[(MOVStreamL008ToNonPlanarPostProcessor *)self adjustedWidthForWidth:Width] height:CVPixelBufferGetHeight(from) pixelFormat:[(MOVStreamDefaultPostProcessor *)self originalPixelFormat] extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:[(MOVStreamDefaultPostProcessor *)self bufferCacheMode]], v11 = objc_claimAutoreleasedReturnValue(), v12 = self->_pool, self->_pool = v11, v12, (pool = self->_pool) != 0))
  {
    getPixelBuffer = [(MIOPixelBufferPool *)pool getPixelBuffer];
    [MIOPixelBufferUtility copyPixelBuffer:from toPixelBuffer:getPixelBuffer];
    if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:getPixelBuffer metadata:metadataCopy])
    {
      v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:getPixelBuffer error:error];
      CVPixelBufferRelease(getPixelBuffer);
LABEL_7:
      getPixelBuffer = v14;
      goto LABEL_8;
    }

    if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:from])
    {
      exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:exactBytesPerRow fromPixelBuffer:getPixelBuffer error:error];

      CVPixelBufferRelease(getPixelBuffer);
      goto LABEL_7;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for Non-Planar stream." code:19];
    if (error)
    {
      v17 = v17;
      *error = v17;
    }

    getPixelBuffer = 0;
  }

LABEL_8:

  return getPixelBuffer;
}

@end