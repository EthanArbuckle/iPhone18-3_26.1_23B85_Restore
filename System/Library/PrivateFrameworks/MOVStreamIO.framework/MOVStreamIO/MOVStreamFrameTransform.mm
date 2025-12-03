@interface MOVStreamFrameTransform
- (MOVStreamFrameTransform)initWithRotation:(int64_t)rotation flip:(int64_t)flip bufferCacheMode:(int)mode;
- (__CVBuffer)transform:(__CVBuffer *)transform;
- (void)dealloc;
@end

@implementation MOVStreamFrameTransform

- (MOVStreamFrameTransform)initWithRotation:(int64_t)rotation flip:(int64_t)flip bufferCacheMode:(int)mode
{
  v15.receiver = self;
  v15.super_class = MOVStreamFrameTransform;
  v8 = [(MOVStreamFrameTransform *)&v15 init];
  if (v8)
  {
    v9 = VTPixelRotationSessionCreate(*MEMORY[0x277CBECE8], &v8->_rotationSession);
    if (v9)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create pixel buffer rotation session (err: %d)", v9];
    }

    else
    {
      v8->_bufferCacheMode = mode;
      v8->_rotation = rotation;
      if (rotation >= 4)
      {
        [MOVStreamFrameTransform initWithRotation:flip:bufferCacheMode:];
      }

      v10 = VTSessionSetProperty(v8->_rotationSession, *MEMORY[0x277CE2850], **(&unk_2798481A0 + rotation));
      if (v10)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot set rotation property (err: %d).", v10];
      }

      else if ((flip & 0xFFFFFFFFFFFFFFFDLL) == 1 && (v11 = VTSessionSetProperty(v8->_rotationSession, *MEMORY[0x277CE2838], *MEMORY[0x277CBED28]), v11))
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot set horizontal flip (err: %d).", v11];
      }

      else
      {
        if ((flip & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          return v8;
        }

        v12 = VTSessionSetProperty(v8->_rotationSession, *MEMORY[0x277CE2840], *MEMORY[0x277CBED28]);
        if (!v12)
        {
          return v8;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot set vertical flip (err: %d).", v12];
      }
    }

    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v14);
  }

  return v8;
}

- (void)dealloc
{
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    VTPixelRotationSessionInvalidate(rotationSession);
    CFRelease(self->_rotationSession);
  }

  v4.receiver = self;
  v4.super_class = MOVStreamFrameTransform;
  [(MOVStreamFrameTransform *)&v4 dealloc];
}

- (__CVBuffer)transform:(__CVBuffer *)transform
{
  pool = self->_pool;
  if (!pool)
  {
    Width = CVPixelBufferGetWidth(transform);
    Height = CVPixelBufferGetHeight(transform);
    PixelFormatType = CVPixelBufferGetPixelFormatType(transform);
    v9 = self->_rotation | 2;
    v10 = v9 == 3 ? Width : Height;
    v11 = v9 == 3 ? Height : Width;
    v12 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:v11 height:v10 pixelFormat:PixelFormatType extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:self->_bufferCacheMode];
    v13 = self->_pool;
    self->_pool = v12;

    pool = self->_pool;
    if (!pool)
    {
      v18 = MEMORY[0x277CBEAD8];
      v19 = *MEMORY[0x277CBE648];
      v20 = @"Cannot create pixel buffer pool.";
LABEL_15:
      v22 = [v18 exceptionWithName:v19 reason:v20 userInfo:0];
      objc_exception_throw(v22);
    }
  }

  getPixelBuffer = [(MIOPixelBufferPool *)pool getPixelBuffer];
  if (!getPixelBuffer)
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE648];
    v20 = @"Cannot create new pixel buffer.";
    goto LABEL_15;
  }

  v15 = getPixelBuffer;
  v16 = VTPixelRotationSessionRotateImage(self->_rotationSession, transform, getPixelBuffer);
  if (v16)
  {
    v21 = v16;
    CVPixelBufferRelease(v15);
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot rotate pixel buffer (err: %d).", v21];
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE648];
    goto LABEL_15;
  }

  return v15;
}

@end