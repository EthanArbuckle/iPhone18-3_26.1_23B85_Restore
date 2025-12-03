@interface MOVStreamRawBayerFromYUVPostProcessor
- (MOVStreamRawBayerFromYUVPostProcessor)initWithOriginalPixelFormat:(unsigned int)format bufferCacheMode:(int)mode rawBayerMSBReplication:(BOOL)replication;
- (MOVStreamRawBayerFromYUVPostProcessor)initWithOriginalPixelFormat:(unsigned int)format rawBayerMSBReplication:(BOOL)replication;
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error;
- (unsigned)processedPixelFormat;
@end

@implementation MOVStreamRawBayerFromYUVPostProcessor

- (MOVStreamRawBayerFromYUVPostProcessor)initWithOriginalPixelFormat:(unsigned int)format rawBayerMSBReplication:(BOOL)replication
{
  v9.receiver = self;
  v9.super_class = MOVStreamRawBayerFromYUVPostProcessor;
  v5 = [(MOVStreamDefaultPostProcessor *)&v9 initWithOriginalPixelFormat:*&format];
  v6 = v5;
  if (v5)
  {
    v5->_rawBayerMSBReplication = replication;
    v7 = v5;
  }

  return v6;
}

- (MOVStreamRawBayerFromYUVPostProcessor)initWithOriginalPixelFormat:(unsigned int)format bufferCacheMode:(int)mode rawBayerMSBReplication:(BOOL)replication
{
  v10.receiver = self;
  v10.super_class = MOVStreamRawBayerFromYUVPostProcessor;
  v6 = [(MOVStreamDefaultPostProcessor *)&v10 initWithOriginalPixelFormat:*&format bufferCacheMode:*&mode];
  v7 = v6;
  if (v6)
  {
    v6->_rawBayerMSBReplication = replication;
    v8 = v6;
  }

  return v7;
}

- (unsigned)processedPixelFormat
{
  if (![(MOVStreamDefaultPostProcessor *)self originalPixelFormat])
  {
    return 1919379252;
  }

  return [(MOVStreamDefaultPostProcessor *)self originalPixelFormat];
}

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  Width = CVPixelBufferGetWidth(from);
  Height = CVPixelBufferGetHeight(from);
  processedPixelFormat = [(MOVStreamRawBayerFromYUVPostProcessor *)self processedPixelFormat];
  LODWORD(v17) = 1;
  HIDWORD(v17) = [(MOVStreamDefaultPostProcessor *)self bufferCacheMode];
  v12 = [MIOPixelBufferUtility createRawPixelBufferWithWidth:Width height:(2 * Height) extendedRows:0 extendedPixelsPerRow:0 pixelFormat:processedPixelFormat bytesPerRowAlignment:1 planeAlignment:v17 bufferCacheMode:?];
  if ([MIOPixelBufferUtility joinYUVBuffer:from intoRawBayerPixelBuffer:v12 shiftBitsLeftBy:4294967294 msbReplication:self->_rawBayerMSBReplication])
  {
    if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:v12 metadata:metadataCopy])
    {
      v13 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:v12 error:error];
      CVPixelBufferRelease(v12);
LABEL_9:
      v12 = v13;
      goto LABEL_10;
    }

    if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:from])
    {
      exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v13 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:exactBytesPerRow fromPixelBuffer:from error:error];

      CVPixelBufferRelease(v12);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Error joining Warhol-Buffer for RawBayer pixel buffer." code:2];
    if (error)
    {
      v14 = v14;
      *error = v14;
    }

    v12 = 0;
  }

LABEL_10:

  return v12;
}

@end