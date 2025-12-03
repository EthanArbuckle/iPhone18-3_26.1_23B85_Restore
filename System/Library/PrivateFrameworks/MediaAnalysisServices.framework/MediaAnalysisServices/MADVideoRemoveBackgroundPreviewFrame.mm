@interface MADVideoRemoveBackgroundPreviewFrame
- (MADVideoRemoveBackgroundPreviewFrame)initWithCoder:(id)coder;
- (MADVideoRemoveBackgroundPreviewFrame)initWithPresentationTimeStamp:(id *)stamp surface:(id)surface;
- (__CVBuffer)pixelBuffer;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVideoRemoveBackgroundPreviewFrame

- (MADVideoRemoveBackgroundPreviewFrame)initWithPresentationTimeStamp:(id *)stamp surface:(id)surface
{
  surfaceCopy = surface;
  v12.receiver = self;
  v12.super_class = MADVideoRemoveBackgroundPreviewFrame;
  v8 = [(MADVideoRemoveBackgroundPreviewFrame *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&stamp->var0;
    *(v8 + 5) = stamp->var3;
    *(v8 + 24) = v10;
    objc_storeStrong(v8 + 1, surface);
  }

  return v9;
}

- (MADVideoRemoveBackgroundPreviewFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADVideoRemoveBackgroundPreviewFrame;
  v5 = [(MADVideoRemoveBackgroundPreviewFrame *)&v9 init];
  if (v5)
  {
    v5->_presentationTimeStamp.value = [coderCopy decodeInt64ForKey:@"PresentationTimeStampValue"];
    v5->_presentationTimeStamp.timescale = [coderCopy decodeInt32ForKey:@"PresentationTimeStampScale"];
    v5->_presentationTimeStamp.flags = [coderCopy decodeInt32ForKey:@"PresentationTimeStampFlags"];
    v5->_presentationTimeStamp.epoch = [coderCopy decodeInt64ForKey:@"PresentationTimeStampEpoch"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Surface"];
    surface = v5->_surface;
    v5->_surface = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_presentationTimeStamp.value forKey:@"PresentationTimeStampValue"];
  [coderCopy encodeInt32:self->_presentationTimeStamp.timescale forKey:@"PresentationTimeStampScale"];
  [coderCopy encodeInt32:self->_presentationTimeStamp.flags forKey:@"PresentationTimeStampFlags"];
  [coderCopy encodeInt64:self->_presentationTimeStamp.epoch forKey:@"PresentationTimeStampEpoch"];
  [coderCopy encodeObject:self->_surface forKey:@"Surface"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  timescale = self->_presentationTimeStamp.timescale;
  time = self->_presentationTimeStamp;
  [string appendFormat:@"presentationTimeStamp: %lld/%d (%0.3fs), ", time.value, timescale, CMTimeGetSeconds(&time)];
  [string appendFormat:@"surface: %@>", self->_surface];

  return string;
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