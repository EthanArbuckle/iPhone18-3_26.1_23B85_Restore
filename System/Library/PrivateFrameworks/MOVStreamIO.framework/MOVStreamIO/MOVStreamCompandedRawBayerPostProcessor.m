@interface MOVStreamCompandedRawBayerPostProcessor
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5;
- (unsigned)processedPixelFormat;
@end

@implementation MOVStreamCompandedRawBayerPostProcessor

- (unsigned)processedPixelFormat
{
  if (![(MOVStreamDefaultPostProcessor *)self originalPixelFormat])
  {
    return 1278226488;
  }

  return [(MOVStreamDefaultPostProcessor *)self originalPixelFormat];
}

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:@"RawBayerFormat"];
  v10 = [v9 unsignedIntValue];

  if (!v10)
  {
    v10 = [(MOVStreamDefaultPostProcessor *)self originalPixelFormat];
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  LODWORD(v17) = 1;
  HIDWORD(v17) = [(MOVStreamDefaultPostProcessor *)self bufferCacheMode];
  v13 = [MIOPixelBufferUtility createRawPixelBufferWithWidth:Width height:Height extendedRows:0 extendedPixelsPerRow:0 pixelFormat:v10 bytesPerRowAlignment:1 planeAlignment:v17 bufferCacheMode:?];
  if ([MIOPixelBufferUtility joinCompandedWarholBuffer:a3 intoCompandedBayerBuffer:v13])
  {
    if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:v13 metadata:v8])
    {
      v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:v13 error:a5];
      CVPixelBufferRelease(v13);
LABEL_9:
      v13 = v14;
      goto LABEL_10;
    }

    if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:a3])
    {
      v15 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:v15 fromPixelBuffer:a3 error:a5];

      CVPixelBufferRelease(v13);
      goto LABEL_9;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateStreamError:a5 message:@"Error joining Warhol-Buffer for Companded-RawBayer pixel buffer." code:2];
    v13 = 0;
  }

LABEL_10:

  return v13;
}

@end