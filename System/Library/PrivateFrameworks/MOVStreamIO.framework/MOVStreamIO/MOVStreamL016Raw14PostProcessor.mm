@interface MOVStreamL016Raw14PostProcessor
- (MOVStreamL016Raw14PostProcessor)initWithOriginalPixelFormat:(unsigned int)format bufferCacheMode:(int)mode l010OutputFormatRAW14L016:(BOOL)l016;
- (MOVStreamL016Raw14PostProcessor)initWithOriginalPixelFormat:(unsigned int)format l010OutputFormatRAW14L016:(BOOL)l016;
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error;
- (unsigned)processedPixelFormat;
@end

@implementation MOVStreamL016Raw14PostProcessor

- (MOVStreamL016Raw14PostProcessor)initWithOriginalPixelFormat:(unsigned int)format l010OutputFormatRAW14L016:(BOOL)l016
{
  v9.receiver = self;
  v9.super_class = MOVStreamL016Raw14PostProcessor;
  v5 = [(MOVStreamDefaultPostProcessor *)&v9 initWithOriginalPixelFormat:*&format];
  v6 = v5;
  if (v5)
  {
    v5->_l010OutputFormatRAW14L016 = l016;
    v7 = v5;
  }

  return v6;
}

- (MOVStreamL016Raw14PostProcessor)initWithOriginalPixelFormat:(unsigned int)format bufferCacheMode:(int)mode l010OutputFormatRAW14L016:(BOOL)l016
{
  v10.receiver = self;
  v10.super_class = MOVStreamL016Raw14PostProcessor;
  v6 = [(MOVStreamDefaultPostProcessor *)&v10 initWithOriginalPixelFormat:*&format bufferCacheMode:*&mode];
  v7 = v6;
  if (v6)
  {
    v6->_l010OutputFormatRAW14L016 = l016;
    v8 = v6;
  }

  return v7;
}

- (unsigned)processedPixelFormat
{
  if (self->_l010OutputFormatRAW14L016)
  {
    return 1278226742;
  }

  else
  {
    return [(MOVStreamDefaultPostProcessor *)self originalPixelFormat];
  }
}

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  if (self->_l010OutputFormatRAW14L016)
  {
    pool = self->_pool;
    if (pool || (Width = CVPixelBufferGetWidth(from), Height = CVPixelBufferGetHeight(from), [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:Height pixelFormat:1278226742 extendedPixelsPerRow:((CVPixelBufferGetBytesPerRow(from) >> 1) - Width) minBufferCount:10 bufferCacheMode:[(MOVStreamDefaultPostProcessor *)self bufferCacheMode]], v12 = objc_claimAutoreleasedReturnValue(), v13 = self->_pool, self->_pool = v12, v13, (pool = self->_pool) != 0))
    {
      getPixelBuffer = [(MIOPixelBufferPool *)pool getPixelBuffer];
      [MIOPixelBufferUtility copyFromPixelBuffer:from toPixelBuffer:getPixelBuffer andShiftBits:4294967294];
      if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:getPixelBuffer metadata:metadataCopy])
      {
        v15 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:getPixelBuffer error:error];
        CVPixelBufferRelease(getPixelBuffer);
LABEL_9:
        getPixelBuffer = v15;
        goto LABEL_10;
      }

      if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:from])
      {
        exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
        v15 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:exactBytesPerRow fromPixelBuffer:getPixelBuffer error:error];

        CVPixelBufferRelease(getPixelBuffer);
        goto LABEL_9;
      }
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for Non-Planar stream." code:19];
      if (error)
      {
        v18 = v18;
        *error = v18;
      }

      getPixelBuffer = 0;
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = MOVStreamL016Raw14PostProcessor;
    getPixelBuffer = [(MOVStreamDefaultPostProcessor *)&v19 processedPixelBufferFrom:from metadata:metadataCopy error:error];
  }

LABEL_10:

  return getPixelBuffer;
}

@end