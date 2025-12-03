@interface BWStillImageCaptureBracketFrameInfo
+ (id)infoWithBracketedCaptureSequenceNumber:(int)number mainFlags:(unint64_t)flags sifrFlags:(unint64_t)sifrFlags;
- (BOOL)isEqual:(id)equal;
- (BWStillImageCaptureBracketFrameInfo)initWithBracketedCaptureSequenceNumber:(int)number mainFlags:(unint64_t)flags sifrFlags:(unint64_t)sifrFlags;
- (BWStillImageCaptureBracketFrameInfo)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWStillImageCaptureBracketFrameInfo

- (BWStillImageCaptureBracketFrameInfo)initWithBracketedCaptureSequenceNumber:(int)number mainFlags:(unint64_t)flags sifrFlags:(unint64_t)sifrFlags
{
  v7.receiver = self;
  v7.super_class = BWStillImageCaptureBracketFrameInfo;
  result = [(BWStillImageCaptureFrameInfo *)&v7 initWithMainFlags:flags sifrFlags:sifrFlags];
  if (result)
  {
    result->_bracketedCaptureSequenceNumber = number;
  }

  return result;
}

+ (id)infoWithBracketedCaptureSequenceNumber:(int)number mainFlags:(unint64_t)flags sifrFlags:(unint64_t)sifrFlags
{
  v5 = [[self alloc] initWithBracketedCaptureSequenceNumber:*&number mainFlags:flags sifrFlags:sifrFlags];

  return v5;
}

- (BWStillImageCaptureBracketFrameInfo)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BWStillImageCaptureBracketFrameInfo;
  v4 = [(BWStillImageCaptureFrameInfo *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_bracketedCaptureSequenceNumber = [coder decodeInt32ForKey:@"bracketedCaptureSequenceNumber"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BWStillImageCaptureBracketFrameInfo;
  [(BWStillImageCaptureFrameInfo *)&v5 encodeWithCoder:?];
  [coder encodeInt32:self->_bracketedCaptureSequenceNumber forKey:@"bracketedCaptureSequenceNumber"];
}

- (id)description
{
  bracketedCaptureSequenceNumber = self->_bracketedCaptureSequenceNumber;
  if (bracketedCaptureSequenceNumber < 1)
  {
    bracketedCaptureSequenceNumber = @"PB";
  }

  else
  {
    bracketedCaptureSequenceNumber = [MEMORY[0x1E696AEC0] stringWithFormat:@"B%.2d", bracketedCaptureSequenceNumber];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = BWStillImageCaptureFrameFlagsToShortString([(BWStillImageCaptureFrameInfo *)self mainFlags]);
  return [v5 stringWithFormat:@"<%@ %p>: %@ main:%@ sifr:%@", v6, self, bracketedCaptureSequenceNumber, v7, BWStillImageCaptureFrameFlagsToShortString(-[BWStillImageCaptureFrameInfo sifrFlags](self, "sifrFlags"))];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureBracketFrameInfo;
  return [(BWStillImageCaptureFrameInfo *)&v3 hash]^ self->_bracketedCaptureSequenceNumber;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10.receiver = self;
      v10.super_class = BWStillImageCaptureBracketFrameInfo;
      v7 = [(BWStillImageCaptureFrameInfo *)&v10 isEqual:equal];
      if (v7)
      {
        bracketedCaptureSequenceNumber = self->_bracketedCaptureSequenceNumber;
        LOBYTE(v7) = bracketedCaptureSequenceNumber == [equal bracketedCaptureSequenceNumber];
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

@end