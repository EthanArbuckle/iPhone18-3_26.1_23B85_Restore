@interface MOVStreamConvertL010Toq8q2PostProcessor
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error;
@end

@implementation MOVStreamConvertL010Toq8q2PostProcessor

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  Width = CVPixelBufferGetWidth(from);
  Height = CVPixelBufferGetHeight(from);
  pool = self->_pool;
  if (!pool)
  {
    v12 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:Height pixelFormat:1899524402 extendedPixelsPerRow:0 minBufferCount:10];
    v13 = self->_pool;
    self->_pool = v12;

    pool = self->_pool;
    if (!pool)
    {
      v16 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for q8q2 stream." code:19];
      goto LABEL_11;
    }
  }

  getPixelBuffer = [(MIOPixelBufferPool *)pool getPixelBuffer];
  if (![MIOPixelBufferUtility transferL010PixelBuffer:from toq8q2PixelBuffer:getPixelBuffer])
  {
    CVPixelBufferRelease(getPixelBuffer);
    CVPixelBufferRelease(from);
    v16 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot convert L010 to q8q2 buffer." code:20];
LABEL_11:
    if (error)
    {
      v16 = v16;
      *error = v16;
    }

    getPixelBuffer = 0;
    goto LABEL_14;
  }

  if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:getPixelBuffer metadata:metadataCopy])
  {
    v15 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:getPixelBuffer error:error];
    CVPixelBufferRelease(getPixelBuffer);
LABEL_9:
    getPixelBuffer = v15;
    goto LABEL_14;
  }

  if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:from])
  {
    exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v15 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:exactBytesPerRow fromPixelBuffer:getPixelBuffer error:error];

    CVPixelBufferRelease(getPixelBuffer);
    goto LABEL_9;
  }

LABEL_14:

  return getPixelBuffer;
}

@end