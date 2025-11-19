@interface MOVStreamRawBayerPostProcessor
- (MOVStreamRawBayerPostProcessor)initWithOriginalPixelFormat:(unsigned int)a3 bufferCacheMode:(int)a4 rawBayerMSBReplication:(BOOL)a5;
- (MOVStreamRawBayerPostProcessor)initWithOriginalPixelFormat:(unsigned int)a3 rawBayerMSBReplication:(BOOL)a4;
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5;
- (unsigned)processedPixelFormat;
@end

@implementation MOVStreamRawBayerPostProcessor

- (MOVStreamRawBayerPostProcessor)initWithOriginalPixelFormat:(unsigned int)a3 rawBayerMSBReplication:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = MOVStreamRawBayerPostProcessor;
  v5 = [(MOVStreamDefaultPostProcessor *)&v9 initWithOriginalPixelFormat:*&a3];
  v6 = v5;
  if (v5)
  {
    v5->_rawBayerMSBReplication = a4;
    v7 = v5;
  }

  return v6;
}

- (MOVStreamRawBayerPostProcessor)initWithOriginalPixelFormat:(unsigned int)a3 bufferCacheMode:(int)a4 rawBayerMSBReplication:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = MOVStreamRawBayerPostProcessor;
  v6 = [(MOVStreamDefaultPostProcessor *)&v10 initWithOriginalPixelFormat:*&a3 bufferCacheMode:*&a4];
  v7 = v6;
  if (v6)
  {
    v6->_rawBayerMSBReplication = a5;
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

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a4;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v11 = [(MOVStreamRawBayerPostProcessor *)self processedPixelFormat];
  LODWORD(v17) = 1;
  HIDWORD(v17) = [(MOVStreamDefaultPostProcessor *)self bufferCacheMode];
  v12 = [MIOPixelBufferUtility createRawPixelBufferWithWidth:Width height:Height extendedRows:0 extendedPixelsPerRow:0 pixelFormat:v11 bytesPerRowAlignment:1 planeAlignment:v17 bufferCacheMode:?];
  if ([MIOPixelBufferUtility joinWarholBuffer:a3 intoBayerBuffer:v12 shiftBitsRightBy:2 msbReplication:self->_rawBayerMSBReplication])
  {
    if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:v12 metadata:v8])
    {
      v13 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:v12 error:a5];
      CVPixelBufferRelease(v12);
LABEL_9:
      v12 = v13;
      goto LABEL_10;
    }

    if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:a3])
    {
      v15 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v13 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:v15 fromPixelBuffer:a3 error:a5];

      CVPixelBufferRelease(v12);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Error joining Warhol-Buffer for RawBayer pixel buffer." code:2];
    if (a5)
    {
      v14 = v14;
      *a5 = v14;
    }

    v12 = 0;
  }

LABEL_10:

  return v12;
}

@end