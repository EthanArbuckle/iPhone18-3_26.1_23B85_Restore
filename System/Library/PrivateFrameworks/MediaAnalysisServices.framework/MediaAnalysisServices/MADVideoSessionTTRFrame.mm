@interface MADVideoSessionTTRFrame
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timestamp;
- (MADVideoSessionTTRFrame)initWithCoder:(id)a3;
- (MADVideoSessionTTRFrame)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4 orientation:(unsigned int)a5;
- (__CVBuffer)pixelBuffer;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoSessionTTRFrame

- (MADVideoSessionTTRFrame)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4 orientation:(unsigned int)a5
{
  v15.receiver = self;
  v15.super_class = MADVideoSessionTTRFrame;
  v8 = [(MADVideoSessionTTRFrame *)&v15 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  v14 = CFRetain(a3);
  CF<CGImage *>::operator=(v8 + 2, &v14);
  CF<CGColorSpace *>::~CF(&v14);
  v9 = CVPixelBufferGetIOSurface(*(v8 + 2));
  v10 = *(v8 + 1);
  *(v8 + 1) = v9;

  if (*(v8 + 1))
  {
    v11 = *&a4->var0;
    *(v8 + 44) = a4->var3;
    *(v8 + 28) = v11;
    *(v8 + 6) = a5;
LABEL_4:
    v12 = v8;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADVideoSessionTTRFrame initWithPixelBuffer:timestamp:orientation:];
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (__CVBuffer)pixelBuffer
{
  p_pixelBuffer = &self->_pixelBuffer;
  result = self->_pixelBuffer.value_;
  if (!result)
  {
    CVPixelBufferCreateWithIOSurface(0, self->_surface, 0, &p_pixelBuffer->value_);
    result = self->_pixelBuffer.value_;
    if (!result)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADVideoSessionTTRFrame pixelBuffer];
      }

      return p_pixelBuffer->value_;
    }
  }

  return result;
}

- (MADVideoSessionTTRFrame)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADVideoSessionTTRFrame;
  v5 = [(MADVideoSessionTTRFrame *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Surface"];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    if (v4)
    {
      [v4 decodeCMTimeForKey:@"Timestamp"];
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    *(v5 + 28) = v9;
    *(v5 + 44) = v10;
    *(v5 + 6) = [v4 decodeInt32ForKey:@"Orientation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_surface forKey:@"Surface"];
  v5 = *(&self->_orientation + 1);
  v6 = *&self->_timestamp.flags;
  [v4 encodeCMTime:&v5 forKey:@"Timestamp"];
  [v4 encodeInt32:self->_orientation forKey:@"Orientation"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"surface: %@", self->_surface];
  *&time.value = *(&self->_orientation + 1);
  time.epoch = *&self->_timestamp.flags;
  [v3 appendFormat:@"timestamp: %.4f", CMTimeGetSeconds(&time)];
  [v3 appendFormat:@"orientation: %u>", self->_orientation];

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timestamp
{
  *&retstr->var0 = *(&self[1].var0 + 4);
  retstr->var3 = *(&self[1].var3 + 4);
  return self;
}

@end