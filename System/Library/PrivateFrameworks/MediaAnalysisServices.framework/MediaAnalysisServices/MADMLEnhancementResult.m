@interface MADMLEnhancementResult
- (CGImage)image;
- (MADMLEnhancementResult)initWithCoder:(id)a3;
- (MADMLEnhancementResult)initWithSurface:(id)a3;
- (__CVBuffer)pixelBuffer;
- (id).cxx_construct;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADMLEnhancementResult

- (MADMLEnhancementResult)initWithSurface:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADMLEnhancementResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_surface, a3);
  }

  return v7;
}

- (MADMLEnhancementResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADMLEnhancementResult;
  v5 = [(MADResult *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Surface"];
    surface = v5->_surface;
    v5->_surface = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADMLEnhancementResult;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_surface forKey:@"Surface"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"surface: %@>", self->_surface];

  return v3;
}

- (__CVBuffer)pixelBuffer
{
  result = self->_pixelBuffer.value_;
  if (!result)
  {
    v4 = CVPixelBufferCreateWithIOSurface(0, self->_surface, 0, &self->_pixelBuffer.value_);
    result = self->_pixelBuffer.value_;
    if (!result)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(MADRemoveBackgroundMatteResult *)v4 pixelBuffer];
      }

      return self->_pixelBuffer.value_;
    }
  }

  return result;
}

- (CGImage)image
{
  result = self->_image.value_;
  if (!result)
  {
    if ([(IOSurface *)self->_surface pixelFormat]== 1111970369)
    {
      *&callbacks.version = CGColorSpaceCreateDeviceRGB();
      [(IOSurface *)self->_surface width];
      [(IOSurface *)self->_surface height];
      v30 = CGIOSurfaceContextCreate();
      space = CGIOSurfaceContextCreateImageReference();
      CF<CGImage *>::operator=(&self->_image.value_, &space);
      CF<CGColorSpace *>::~CF(&space);
      CF<CGColorSpace *>::~CF(&v30);
      CF<CGColorSpace *>::~CF(&callbacks);
    }

    else if ([(IOSurface *)self->_surface pixelFormat]== 1278226534 || [(IOSurface *)self->_surface pixelFormat]== 1278226488)
    {
      v4 = [(IOSurface *)self->_surface pixelFormat];
      if (v4 == 1278226488)
      {
        v5 = 0;
      }

      else
      {
        v5 = 8448;
      }

      if (v4 == 1278226488)
      {
        v6 = 8;
      }

      else
      {
        v6 = 32;
      }

      callbacks = *byte_1F49177A8;
      surface = self->_surface;
      v30 = CGDataProviderCreateDirect(surface, [(IOSurface *)surface height]* [(IOSurface *)surface bytesPerRow], &callbacks);
      if (v30)
      {
        CFRetain(surface);
        space = CGColorSpaceCreateDeviceGray();
        v8 = [(IOSurface *)self->_surface width];
        v9 = [(IOSurface *)self->_surface height];
        v10 = [(IOSurface *)self->_surface bytesPerRow];
        v27 = CGImageCreate(v8, v9, v6, v6, v10, space, v5, v30, 0, 1, kCGRenderingIntentDefault);
        CF<CGImage *>::operator=(&self->_image.value_, &v27);
        CF<CGColorSpace *>::~CF(&v27);
        CF<CGColorSpace *>::~CF(&space);
      }

      else
      {
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v11)
        {
          [(MADMLScalingResult *)v11 image:v12];
        }
      }

      CF<CGColorSpace *>::~CF(&v30);
    }

    result = self->_image.value_;
    if (!result)
    {
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [(MADMLScalingResult *)v19 image:v20];
      }

      return self->_image.value_;
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end