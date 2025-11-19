@interface MOVStreamConvertL010Toq8q2PostProcessor
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5;
@end

@implementation MOVStreamConvertL010Toq8q2PostProcessor

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a4;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
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

  v14 = [(MIOPixelBufferPool *)pool getPixelBuffer];
  if (![MIOPixelBufferUtility transferL010PixelBuffer:a3 toq8q2PixelBuffer:v14])
  {
    CVPixelBufferRelease(v14);
    CVPixelBufferRelease(a3);
    v16 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot convert L010 to q8q2 buffer." code:20];
LABEL_11:
    if (a5)
    {
      v16 = v16;
      *a5 = v16;
    }

    v14 = 0;
    goto LABEL_14;
  }

  if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:v14 metadata:v8])
  {
    v15 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:v14 error:a5];
    CVPixelBufferRelease(v14);
LABEL_9:
    v14 = v15;
    goto LABEL_14;
  }

  if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:a3])
  {
    v17 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v15 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:v17 fromPixelBuffer:v14 error:a5];

    CVPixelBufferRelease(v14);
    goto LABEL_9;
  }

LABEL_14:

  return v14;
}

@end