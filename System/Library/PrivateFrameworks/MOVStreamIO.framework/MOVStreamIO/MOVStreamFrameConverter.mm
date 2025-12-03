@interface MOVStreamFrameConverter
- (MOVStreamFrameConverter)init;
- (MOVStreamFrameConverter)initWithTargetWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format bytesPerRow:(unint64_t)row bufferCacheMode:(int)mode;
- (MOVStreamFrameConverter)initWithTargetWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format bytesPerRows:(id)rows bufferCacheMode:(int)mode;
- (MOVStreamFrameConverter)initWithTargetWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format extendedPixelsPerRow:(unint64_t)row bufferCacheMode:(int)mode;
- (__CVBuffer)convertPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
@end

@implementation MOVStreamFrameConverter

- (MOVStreamFrameConverter)init
{
  v6.receiver = self;
  v6.super_class = MOVStreamFrameConverter;
  v2 = [(MOVStreamFrameConverter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_transferSessionUsageDisabled = 0;
    if (VTPixelTransferSessionCreate(*MEMORY[0x277CBECE8], &v2->_transferSession))
    {
      v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot create pixel buffer transfer session" userInfo:0];
      objc_exception_throw(v5);
    }
  }

  return v3;
}

- (MOVStreamFrameConverter)initWithTargetWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format extendedPixelsPerRow:(unint64_t)row bufferCacheMode:(int)mode
{
  v7 = *&mode;
  v9 = *&format;
  v12 = [(MOVStreamFrameConverter *)self init];
  if (v12)
  {
    v13 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:width height:height pixelFormat:v9 extendedPixelsPerRow:row minBufferCount:1 bufferCacheMode:v7];
    pool = v12->_pool;
    v12->_pool = v13;

    if (!v12->_pool)
    {
      v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot create pixel buffer pool" userInfo:0];
      objc_exception_throw(v16);
    }
  }

  return v12;
}

- (MOVStreamFrameConverter)initWithTargetWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format bytesPerRow:(unint64_t)row bufferCacheMode:(int)mode
{
  v7 = *&mode;
  v9 = *&format;
  v12 = [(MOVStreamFrameConverter *)self init];
  if (v12)
  {
    v13 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:width height:height pixelFormat:v9 exactBytesPerRow:row minBufferCount:1 bufferCacheMode:v7];
    pool = v12->_pool;
    v12->_pool = v13;

    if (!v12->_pool)
    {
      v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot create pixel buffer pool" userInfo:0];
      objc_exception_throw(v16);
    }
  }

  return v12;
}

- (MOVStreamFrameConverter)initWithTargetWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format bytesPerRows:(id)rows bufferCacheMode:(int)mode
{
  v7 = *&mode;
  v8 = *&format;
  rowsCopy = rows;
  v13 = [(MOVStreamFrameConverter *)self init];
  if (v13)
  {
    v14 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:width height:height pixelFormat:v8 exactBytesPerRows:rowsCopy minBufferCount:1 bufferCacheMode:v7];
    pool = v13->_pool;
    v13->_pool = v14;

    if (!v13->_pool)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot create pixel buffer pool" userInfo:0];
      objc_exception_throw(v17);
    }
  }

  return v13;
}

- (void)dealloc
{
  transferSession = self->_transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    CFRelease(self->_transferSession);
  }

  v4.receiver = self;
  v4.super_class = MOVStreamFrameConverter;
  [(MOVStreamFrameConverter *)&v4 dealloc];
}

- (__CVBuffer)convertPixelBuffer:(__CVBuffer *)buffer
{
  getPixelBuffer = [(MIOPixelBufferPool *)self->_pool getPixelBuffer];
  if (!getPixelBuffer)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Cannot create new pixel buffer.";
    goto LABEL_11;
  }

  v6 = getPixelBuffer;
  if (!self->_transferSessionUsageDisabled)
  {
    if (!VTPixelTransferSessionTransferImage(self->_transferSession, buffer, getPixelBuffer))
    {
      goto LABEL_6;
    }

    CVPixelBufferRelease(v6);
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Cannot transfer pixel buffer";
LABEL_11:
    v12 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
    objc_exception_throw(v12);
  }

  if (![MIOPixelBufferUtility copyPixelBuffer:buffer toPixelBuffer:getPixelBuffer])
  {
    CVPixelBufferRelease(v6);
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = @"Cannot copy pixel buffer";
    goto LABEL_11;
  }

LABEL_6:
  v10 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachments(v6, v10, kCVAttachmentMode_ShouldPropagate);
  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

@end