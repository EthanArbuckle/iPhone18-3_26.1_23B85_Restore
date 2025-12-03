@interface MOVStreamCompandedRawBayerPostProcessor
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error;
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

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v9 = [metadataCopy objectForKeyedSubscript:@"RawBayerFormat"];
  unsignedIntValue = [v9 unsignedIntValue];

  if (!unsignedIntValue)
  {
    unsignedIntValue = [(MOVStreamDefaultPostProcessor *)self originalPixelFormat];
  }

  Width = CVPixelBufferGetWidth(from);
  Height = CVPixelBufferGetHeight(from);
  LODWORD(v17) = 1;
  HIDWORD(v17) = [(MOVStreamDefaultPostProcessor *)self bufferCacheMode];
  v13 = [MIOPixelBufferUtility createRawPixelBufferWithWidth:Width height:Height extendedRows:0 extendedPixelsPerRow:0 pixelFormat:unsignedIntValue bytesPerRowAlignment:1 planeAlignment:v17 bufferCacheMode:?];
  if ([MIOPixelBufferUtility joinCompandedWarholBuffer:from intoCompandedBayerBuffer:v13])
  {
    if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:v13 metadata:metadataCopy])
    {
      v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:v13 error:error];
      CVPixelBufferRelease(v13);
LABEL_9:
      v13 = v14;
      goto LABEL_10;
    }

    if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:from])
    {
      exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v14 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:exactBytesPerRow fromPixelBuffer:from error:error];

      CVPixelBufferRelease(v13);
      goto LABEL_9;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateStreamError:error message:@"Error joining Warhol-Buffer for Companded-RawBayer pixel buffer." code:2];
    v13 = 0;
  }

LABEL_10:

  return v13;
}

@end