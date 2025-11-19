@interface MOVStreamy416To2ByteMonochromePostProcessor
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5;
@end

@implementation MOVStreamy416To2ByteMonochromePostProcessor

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a4;
  pool = self->_pool;
  if (pool || (Width = CVPixelBufferGetWidth(a3), [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:CVPixelBufferGetHeight(a3) pixelFormat:[(MOVStreamDefaultPostProcessor *)self originalPixelFormat] extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:[(MOVStreamDefaultPostProcessor *)self bufferCacheMode]], v11 = objc_claimAutoreleasedReturnValue(), v12 = self->_pool, self->_pool = v11, v12, (pool = self->_pool) != 0))
  {
    v13 = [(MIOPixelBufferPool *)pool getPixelBuffer];
    [MIOPixelBufferUtility copyAlphaChannelOfBuffer:a3 toMonochromeBuffer:v13];
    if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:v13 metadata:v8])
    {
      v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:v13 error:a5];
      CVPixelBufferRelease(v13);
LABEL_7:
      v13 = v14;
      goto LABEL_8;
    }

    if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:a3])
    {
      v15 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:v15 fromPixelBuffer:v13 error:a5];

      CVPixelBufferRelease(v13);
      goto LABEL_7;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for Non-Planar stream." code:19];
    if (a5)
    {
      v17 = v17;
      *a5 = v17;
    }

    v13 = 0;
  }

LABEL_8:

  return v13;
}

@end