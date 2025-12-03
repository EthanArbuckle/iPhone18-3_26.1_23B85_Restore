@interface BWStillImageCaptureFrameInfo
- (BOOL)isEqual:(id)equal;
- (BWStillImageCaptureFrameInfo)initWithCoder:(id)coder;
- (BWStillImageCaptureFrameInfo)initWithMainFlags:(unint64_t)flags sifrFlags:(unint64_t)sifrFlags;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWStillImageCaptureFrameInfo

- (BWStillImageCaptureFrameInfo)initWithMainFlags:(unint64_t)flags sifrFlags:(unint64_t)sifrFlags
{
  v7.receiver = self;
  v7.super_class = BWStillImageCaptureFrameInfo;
  result = [(BWStillImageCaptureFrameInfo *)&v7 init];
  if (result)
  {
    result->_mainFlags = flags;
    result->_sifrFlags = sifrFlags;
  }

  return result;
}

- (BWStillImageCaptureFrameInfo)initWithCoder:(id)coder
{
  v4 = [(BWStillImageCaptureFrameInfo *)self init];
  if (v4)
  {
    v4->_mainFlags = [coder decodeInt64ForKey:@"mainFlags"];
    v4->_sifrFlags = [coder decodeInt64ForKey:@"sifrFlags"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:self->_mainFlags forKey:@"mainFlags"];
  sifrFlags = self->_sifrFlags;

  [coder encodeInt64:sifrFlags forKey:@"sifrFlags"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mainFlags = self->_mainFlags;
  if (mainFlags != [equal mainFlags])
  {
    return 0;
  }

  sifrFlags = self->_sifrFlags;
  return sifrFlags == [equal sifrFlags];
}

@end