@interface MADVideoRemoveBackgroundPreviewFrame
- (MADVideoRemoveBackgroundPreviewFrame)initWithCoder:(id)a3;
- (MADVideoRemoveBackgroundPreviewFrame)initWithPresentationTimeStamp:(id *)a3 surface:(id)a4;
- (__CVBuffer)pixelBuffer;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoRemoveBackgroundPreviewFrame

- (MADVideoRemoveBackgroundPreviewFrame)initWithPresentationTimeStamp:(id *)a3 surface:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MADVideoRemoveBackgroundPreviewFrame;
  v8 = [(MADVideoRemoveBackgroundPreviewFrame *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&a3->var0;
    *(v8 + 5) = a3->var3;
    *(v8 + 24) = v10;
    objc_storeStrong(v8 + 1, a4);
  }

  return v9;
}

- (MADVideoRemoveBackgroundPreviewFrame)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADVideoRemoveBackgroundPreviewFrame;
  v5 = [(MADVideoRemoveBackgroundPreviewFrame *)&v9 init];
  if (v5)
  {
    v5->_presentationTimeStamp.value = [v4 decodeInt64ForKey:@"PresentationTimeStampValue"];
    v5->_presentationTimeStamp.timescale = [v4 decodeInt32ForKey:@"PresentationTimeStampScale"];
    v5->_presentationTimeStamp.flags = [v4 decodeInt32ForKey:@"PresentationTimeStampFlags"];
    v5->_presentationTimeStamp.epoch = [v4 decodeInt64ForKey:@"PresentationTimeStampEpoch"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Surface"];
    surface = v5->_surface;
    v5->_surface = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_presentationTimeStamp.value forKey:@"PresentationTimeStampValue"];
  [v4 encodeInt32:self->_presentationTimeStamp.timescale forKey:@"PresentationTimeStampScale"];
  [v4 encodeInt32:self->_presentationTimeStamp.flags forKey:@"PresentationTimeStampFlags"];
  [v4 encodeInt64:self->_presentationTimeStamp.epoch forKey:@"PresentationTimeStampEpoch"];
  [v4 encodeObject:self->_surface forKey:@"Surface"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  timescale = self->_presentationTimeStamp.timescale;
  time = self->_presentationTimeStamp;
  [v3 appendFormat:@"presentationTimeStamp: %lld/%d (%0.3fs), ", time.value, timescale, CMTimeGetSeconds(&time)];
  [v3 appendFormat:@"surface: %@>", self->_surface];

  return v3;
}

- (__CVBuffer)pixelBuffer
{
  p_pixelBuffer = &self->_pixelBuffer;
  result = self->_pixelBuffer.value_;
  if (!result)
  {
    v5 = CVPixelBufferCreateWithIOSurface(0, self->_surface, 0, &p_pixelBuffer->value_);
    result = self->_pixelBuffer.value_;
    if (!result)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(MADRemoveBackgroundMatteResult *)v5 pixelBuffer];
      }

      return p_pixelBuffer->value_;
    }
  }

  return result;
}

@end