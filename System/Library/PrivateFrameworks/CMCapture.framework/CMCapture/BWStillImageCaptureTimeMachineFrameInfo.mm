@interface BWStillImageCaptureTimeMachineFrameInfo
+ (id)infoWithTimeMachineIndex:(int)a3 mainFlags:(unint64_t)a4 sifrFlags:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BWStillImageCaptureTimeMachineFrameInfo)initWithCoder:(id)a3;
- (BWStillImageCaptureTimeMachineFrameInfo)initWithTimeMachineIndex:(int)a3 mainFlags:(unint64_t)a4 sifrFlags:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWStillImageCaptureTimeMachineFrameInfo

- (BWStillImageCaptureTimeMachineFrameInfo)initWithTimeMachineIndex:(int)a3 mainFlags:(unint64_t)a4 sifrFlags:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = BWStillImageCaptureTimeMachineFrameInfo;
  result = [(BWStillImageCaptureFrameInfo *)&v7 initWithMainFlags:a4 sifrFlags:a5];
  if (result)
  {
    result->_timeMachineIndex = a3;
  }

  return result;
}

+ (id)infoWithTimeMachineIndex:(int)a3 mainFlags:(unint64_t)a4 sifrFlags:(unint64_t)a5
{
  v5 = [[a1 alloc] initWithTimeMachineIndex:*&a3 mainFlags:a4 sifrFlags:a5];

  return v5;
}

- (BWStillImageCaptureTimeMachineFrameInfo)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWStillImageCaptureTimeMachineFrameInfo;
  v4 = [(BWStillImageCaptureFrameInfo *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_timeMachineIndex = [a3 decodeInt32ForKey:@"timeMachineIndex"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BWStillImageCaptureTimeMachineFrameInfo;
  [(BWStillImageCaptureFrameInfo *)&v5 encodeWithCoder:?];
  [a3 encodeInt32:self->_timeMachineIndex forKey:@"timeMachineIndex"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  timeMachineIndex = self->_timeMachineIndex;
  v6 = BWStillImageCaptureFrameFlagsToShortString([(BWStillImageCaptureFrameInfo *)self mainFlags]);
  return [v3 stringWithFormat:@"<%@ %p>: TM%.2d main:%@ sifr:%@", v4, self, timeMachineIndex, v6, BWStillImageCaptureFrameFlagsToShortString(-[BWStillImageCaptureFrameInfo sifrFlags](self, "sifrFlags"))];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureTimeMachineFrameInfo;
  return [(BWStillImageCaptureFrameInfo *)&v3 hash]^ self->_timeMachineIndex;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11.receiver = self;
    v11.super_class = BWStillImageCaptureTimeMachineFrameInfo;
    v7 = [(BWStillImageCaptureFrameInfo *)&v11 isEqual:a3];
    if (!v7)
    {
      return v7;
    }

    timeMachineIndex = self->_timeMachineIndex;
    if (timeMachineIndex != [a3 timeMachineIndex])
    {
LABEL_6:
      LOBYTE(v7) = 0;
      return v7;
    }

    isNoLongErrorRecoveryFrame = self->_isNoLongErrorRecoveryFrame;
    LOBYTE(v7) = isNoLongErrorRecoveryFrame == [a3 isNoLongErrorRecoveryFrame];
  }

  return v7;
}

@end