@interface MADRemoveBackgroundMatteResult
- (CGImage)image;
- (CGRect)cropRect;
- (MADRemoveBackgroundMatteResult)initWithCoder:(id)a3;
- (MADRemoveBackgroundMatteResult)initWithSurface:(id)a3 cropRect:(CGRect)a4;
- (__CVBuffer)pixelBuffer;
- (id).cxx_construct;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)pixelBuffer;
@end

@implementation MADRemoveBackgroundMatteResult

- (MADRemoveBackgroundMatteResult)initWithSurface:(id)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = MADRemoveBackgroundMatteResult;
  v11 = [(MADResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_surface, a3);
    v12->_cropRect.origin.x = x;
    v12->_cropRect.origin.y = y;
    v12->_cropRect.size.width = width;
    v12->_cropRect.size.height = height;
  }

  return v12;
}

- (MADRemoveBackgroundMatteResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADRemoveBackgroundMatteResult;
  v5 = [(MADResult *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Surface"];
    surface = v5->_surface;
    v5->_surface = v6;

    [v4 decodeRectForKey:@"CropRect"];
    v5->_cropRect.origin.x = v8;
    v5->_cropRect.origin.y = v9;
    v5->_cropRect.size.width = v10;
    v5->_cropRect.size.height = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADRemoveBackgroundMatteResult;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_surface forKey:@"Surface"];
  [v4 encodeRect:@"CropRect" forKey:{self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"surface: %@, ", self->_surface];
  [v3 appendFormat:@"cropRect: %0.2fx%0.2f @ (%0.2f, %0.2f)>", *&self->_cropRect.size.width, *&self->_cropRect.size.height, *&self->_cropRect.origin.x, *&self->_cropRect.origin.y];

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
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      [(IOSurface *)self->_surface width];
      [(IOSurface *)self->_surface height];
      v5 = CGIOSurfaceContextCreate();
      ImageReference = CGIOSurfaceContextCreateImageReference();
      CF<CGImage *>::operator=(&self->_image.value_, &ImageReference);
      CF<CGColorSpace *>::~CF(&ImageReference);
      if (!self->_image.value_ && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADRemoveBackgroundMatteResult image];
      }

      CF<CGColorSpace *>::~CF(&v5);
      CF<CGColorSpace *>::~CF(&DeviceRGB);
      return self->_image.value_;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADRemoveBackgroundMatteResult image];
      }

      return 0;
    }
  }

  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)pixelBuffer
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create CVPixelBufferRef from IOSurface (%d)", v1, 8u);
}

@end