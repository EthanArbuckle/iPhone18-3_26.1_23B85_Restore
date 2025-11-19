@interface BWStillImageCaptureFrameInfo
- (BOOL)isEqual:(id)a3;
- (BWStillImageCaptureFrameInfo)initWithCoder:(id)a3;
- (BWStillImageCaptureFrameInfo)initWithMainFlags:(unint64_t)a3 sifrFlags:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWStillImageCaptureFrameInfo

- (BWStillImageCaptureFrameInfo)initWithMainFlags:(unint64_t)a3 sifrFlags:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BWStillImageCaptureFrameInfo;
  result = [(BWStillImageCaptureFrameInfo *)&v7 init];
  if (result)
  {
    result->_mainFlags = a3;
    result->_sifrFlags = a4;
  }

  return result;
}

- (BWStillImageCaptureFrameInfo)initWithCoder:(id)a3
{
  v4 = [(BWStillImageCaptureFrameInfo *)self init];
  if (v4)
  {
    v4->_mainFlags = [a3 decodeInt64ForKey:@"mainFlags"];
    v4->_sifrFlags = [a3 decodeInt64ForKey:@"sifrFlags"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_mainFlags forKey:@"mainFlags"];
  sifrFlags = self->_sifrFlags;

  [a3 encodeInt64:sifrFlags forKey:@"sifrFlags"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mainFlags = self->_mainFlags;
  if (mainFlags != [a3 mainFlags])
  {
    return 0;
  }

  sifrFlags = self->_sifrFlags;
  return sifrFlags == [a3 sifrFlags];
}

@end