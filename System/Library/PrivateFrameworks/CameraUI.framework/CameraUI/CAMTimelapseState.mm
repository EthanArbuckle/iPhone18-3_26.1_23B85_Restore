@interface CAMTimelapseState
+ (id)stateWithContentsOfFile:(id)a3;
- (BOOL)_commonCAMTimelapseStateInitWithCoder:(id)a3;
- (BOOL)addStopReasons:(int64_t)a3 stopTime:(id)a4;
- (BOOL)canContinueCapture;
- (BOOL)incrementFrameIndex;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToState:(id)a3;
- (BOOL)isReadyForWritingMovie;
- (BOOL)mergeSecondaryState:(id)a3;
- (BOOL)writeToFile:(id)a3 createDirectoryIfNeeded:(BOOL)a4;
- (CAMTimelapseState)init;
- (CAMTimelapseState)initWithCoder:(id)a3;
- (CGSize)nominalIntermediateFrameSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)filePathForNextFrameIndex;
- (id)fullDescription;
- (void)encodeWithCoder:(id)a3;
- (void)forceCompleted;
@end

@implementation CAMTimelapseState

- (BOOL)mergeSecondaryState:(id)a3
{
  v4 = a3;
  v5 = [v4 stopReasons];
  v6 = [v4 stopTime];

  LOBYTE(self) = [(CAMTimelapseState *)self addStopReasons:v5 stopTime:v6];
  return self;
}

- (CAMTimelapseState)init
{
  v6.receiver = self;
  v6.super_class = CAMTimelapseState;
  v2 = [(CAMTimelapseState *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69BF320] UUIDString];
    timelapseUUID = v2->_timelapseUUID;
    v2->_timelapseUUID = v3;

    if (![(CAMTimelapseState *)v2 _commonCAMTimelapseStateInitWithCoder:0])
    {

      return 0;
    }
  }

  return v2;
}

- (CAMTimelapseState)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMTimelapseState;
  v5 = [(CAMTimelapseState *)&v8 init];
  v6 = v5;
  if (v5 && ![(CAMTimelapseState *)v5 _commonCAMTimelapseStateInitWithCoder:v4])
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)_commonCAMTimelapseStateInitWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"timelapseUUID"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timelapseUUID"];
    timelapseUUID = self->_timelapseUUID;
    self->_timelapseUUID = v5;
  }

  v7 = [(NSString *)self->_timelapseUUID length];
  if (v7)
  {
    if ([v4 containsValueForKey:@"captureDevice"])
    {
      v8 = [v4 decodeIntegerForKey:@"captureDevice"];
    }

    else
    {
      v8 = 0;
    }

    self->_captureDevice = v8;
    if ([v4 containsValueForKey:@"captureOrientation"])
    {
      v9 = [v4 decodeIntegerForKey:@"captureOrientation"];
    }

    else
    {
      v9 = 1;
    }

    self->_captureOrientation = v9;
    v10 = [v4 containsValueForKey:@"captureMirrored"];
    if (v10)
    {
      LOBYTE(v10) = [v4 decodeBoolForKey:@"captureMirrored"];
    }

    self->_captureMirrored = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = self->_startTime;
    self->_startTime = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startLocation"];
    startLocation = self->_startLocation;
    self->_startLocation = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFrameResponseTime"];
    lastFrameResponseTime = self->_lastFrameResponseTime;
    self->_lastFrameResponseTime = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stopTime"];
    stopTime = self->_stopTime;
    self->_stopTime = v17;

    self->_preferHEVC = [v4 decodeBoolForKey:@"timelapsePreferHEVC"];
    if ([v4 containsValueForKey:@"stopReasons"])
    {
      v19 = [v4 decodeIntegerForKey:@"stopReasons"];
    }

    else
    {
      v19 = 0;
    }

    self->_stopReasons = v19;
    self->_allFramesWritten = [v4 decodeBoolForKey:@"allFramesWritten"];
    if ([v4 containsValueForKey:@"captureTimeInterval"])
    {
      [v4 decodeDoubleForKey:@"captureTimeInterval"];
      self->_captureTimeInterval = v20;
    }

    else
    {
      v21 = +[CAMTimelapseSettings sharedInstance];
      [v21 initialCaptureTimeInterval];
      self->_captureTimeInterval = v22;
    }

    v23 = [v4 decodeIntegerForKey:@"frameIndexStride"];
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    self->_frameIndexStride = v24;
    self->_nextFrameIndex = [v4 decodeIntegerForKey:@"nextFrameIndex"];
    if ([v4 containsValueForKey:@"focusLensPosition"])
    {
      [v4 decodeFloatForKey:@"focusLensPosition"];
    }

    else
    {
      +[CUCaptureController focusLensPositionCurrentSentinel];
    }

    self->_focusLensPosition = v25;
    if ([v4 containsValueForKey:@"nominalIntermediateFrameSize"])
    {
      [v4 decodeCGSizeForKey:@"nominalIntermediateFrameSize"];
      self->_nominalIntermediateFrameSize.width = v26;
      self->_nominalIntermediateFrameSize.height = v27;
    }

    else
    {
      self->_nominalIntermediateFrameSize = *MEMORY[0x1E695F060];
    }

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localPrivateMetadataFileURL"];
    localPrivateMetadataFileURL = self->_localPrivateMetadataFileURL;
    self->_localPrivateMetadataFileURL = v28;
  }

  return v7 != 0;
}

- (void)encodeWithCoder:(id)a3
{
  timelapseUUID = self->_timelapseUUID;
  v6 = a3;
  [v6 encodeObject:timelapseUUID forKey:@"timelapseUUID"];
  [v6 encodeInteger:self->_captureDevice forKey:@"captureDevice"];
  [v6 encodeInteger:self->_captureOrientation forKey:@"captureOrientation"];
  [v6 encodeBool:self->_captureMirrored forKey:@"captureMirrored"];
  [v6 encodeObject:self->_startTime forKey:@"startTime"];
  [v6 encodeObject:self->_startLocation forKey:@"startLocation"];
  [v6 encodeObject:self->_lastFrameResponseTime forKey:@"lastFrameResponseTime"];
  [v6 encodeObject:self->_stopTime forKey:@"stopTime"];
  [v6 encodeInteger:self->_stopReasons forKey:@"stopReasons"];
  [v6 encodeBool:self->_allFramesWritten forKey:@"allFramesWritten"];
  [v6 encodeDouble:@"captureTimeInterval" forKey:self->_captureTimeInterval];
  [v6 encodeInteger:self->_frameIndexStride forKey:@"frameIndexStride"];
  [v6 encodeInteger:self->_nextFrameIndex forKey:@"nextFrameIndex"];
  *&v5 = self->_focusLensPosition;
  [v6 encodeFloat:@"focusLensPosition" forKey:v5];
  [v6 encodeCGSize:@"nominalIntermediateFrameSize" forKey:{self->_nominalIntermediateFrameSize.width, self->_nominalIntermediateFrameSize.height}];
  [v6 encodeBool:self->_preferHEVC forKey:@"timelapsePreferHEVC"];
  [v6 encodeObject:self->_localPrivateMetadataFileURL forKey:@"localPrivateMetadataFileURL"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CAMTimelapseState;
  v4 = [(CAMTimelapseState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: timelapseUUID=%@", v4, self->_timelapseUUID];

  return v5;
}

- (id)fullDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"Timelapse state:\n"];
  [v3 appendFormat:@"\ttimelapseUUID = %@\n", self->_timelapseUUID];
  [v3 appendFormat:@"\tcaptureDevice = %ld\n", self->_captureDevice];
  [v3 appendFormat:@"\tcaptureOrientation = %d\n", self->_captureOrientation];
  [v3 appendFormat:@"\tcaptureMirrored = %d\n", self->_captureMirrored];
  [v3 appendFormat:@"\tstartTime = %@\n", self->_startTime];
  [v3 appendFormat:@"\tstartLocation = %@\n", self->_startLocation];
  [v3 appendFormat:@"\tlastFrameResponseTime = %@\n", self->_lastFrameResponseTime];
  [v3 appendFormat:@"\tstopTime = %@\n", self->_stopTime];
  [v3 appendFormat:@"\tstopReasons = %ld\n", self->_stopReasons];
  [v3 appendFormat:@"\tallFramesWritten = %d\n", self->_allFramesWritten];
  [v3 appendFormat:@"\tcaptureTimeInterval = %f\n", *&self->_captureTimeInterval];
  [v3 appendFormat:@"\tframeIndexStride = %ld\n", self->_frameIndexStride];
  [v3 appendFormat:@"\tnextFrameIndex = %ld\n", self->_nextFrameIndex];
  [v3 appendFormat:@"\tfocusLensPosition = %f\n", self->_focusLensPosition];
  v4 = NSStringFromCGSize(self->_nominalIntermediateFrameSize);
  [v3 appendFormat:@"\tnominalIntermediateFrameSize = %@\n", v4];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_preferHEVC];
  v6 = [v5 description];
  [v3 appendFormat:@"\tpreferHEVC = %@\n", v6];

  [v3 appendFormat:@"\tlocalPrivateMetadataFileURL = %@\n", self->_localPrivateMetadataFileURL];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAMTimelapseState *)self isEqualToState:v4];

  return v5;
}

- (BOOL)isEqualToState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 1;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    if (v7 != v8)
    {
      v6 = [v7 isEqualToData:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)incrementFrameIndex
{
  frameIndexStride = self->_frameIndexStride;
  v4 = self->_nextFrameIndex + frameIndexStride;
  self->_nextFrameIndex = v4;
  v5 = v4 / frameIndexStride;
  v6 = +[CAMTimelapseSettings sharedInstance];
  v7 = [v6 maxOutputFrames];

  if (v5 >= v7)
  {
    self->_frameIndexStride *= 2;
    self->_captureTimeInterval = self->_captureTimeInterval + self->_captureTimeInterval;
  }

  return v5 >= v7;
}

- (id)filePathForNextFrameIndex
{
  v3 = [CAMTimelapseDiskUtilities fileNameForImageFrameIndex:[(CAMTimelapseState *)self nextFrameIndex]];
  v4 = [(CAMTimelapseState *)self timelapseUUID];
  v5 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:v4];

  v6 = [v5 stringByAppendingPathComponent:v3];

  return v6;
}

- (BOOL)addStopReasons:(int64_t)a3 stopTime:(id)a4
{
  v6 = a4;
  v7 = [(CAMTimelapseState *)self stopReasons];
  v8 = (v7 | a3) == v7;
  v9 = (v7 | a3) != v7;
  if (!v8)
  {
    [(CAMTimelapseState *)self setStopReasons:?];
  }

  v10 = [(CAMTimelapseState *)self stopTime];
  v11 = v10;
  if (v6 && !v10)
  {
    [(CAMTimelapseState *)self setStopTime:v6];
    v9 = 1;
  }

  return v9;
}

- (BOOL)canContinueCapture
{
  v2 = self;
  v3 = [(CAMTimelapseState *)self stopTime];
  LOBYTE(v2) = (v3 | [(CAMTimelapseState *)v2 stopReasons]) == 0;

  return v2;
}

- (BOOL)isReadyForWritingMovie
{
  if ([(CAMTimelapseState *)self canContinueCapture])
  {
    return 0;
  }

  if ([(CAMTimelapseState *)self allFramesWritten])
  {
    return 1;
  }

  v4 = [(CAMTimelapseState *)self stopTime];
  [v4 timeIntervalSinceNow];
  v6 = -v5;
  [objc_opt_class() maxTimeToWaitForWrittenFrameAfterStop];
  v3 = v7 <= v6;

  return v3;
}

- (void)forceCompleted
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CAMTimelapseState *)self timelapseUUID];
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = [(CAMTimelapseState *)self stopReasons];
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Forcing completion of timelapse %{public}@ with stopReasons %ld", &v7, 0x16u);
  }

  [objc_opt_class() maxTimeToWaitForWrittenFrameAfterStop];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v5];
  [(CAMTimelapseState *)self setStopTime:v6];
  [(CAMTimelapseState *)self setAllFramesWritten:1];
}

- (BOOL)writeToFile:(id)a3 createDirectoryIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = [v6 stringByDeletingLastPathComponent];
    if (v4)
    {
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      if (![v8 fileExistsAtPath:v7])
      {
        v17 = 0;
        v9 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v17];
        v10 = v17;
        v11 = v10;
        if (!v9)
        {
          v14 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [CAMTimelapseState writeToFile:createDirectoryIfNeeded:];
          }

          v13 = 0;
          goto LABEL_18;
        }
      }
    }

    v16 = 0;
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v16];
    v8 = v16;
    if (v8)
    {
      v12 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CAMTimelapseState writeToFile:createDirectoryIfNeeded:];
      }
    }

    v13 = 1;
    if ([v11 writeToFile:v6 atomically:1])
    {
      goto LABEL_19;
    }

    v14 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CAMTimelapseState writeToFile:createDirectoryIfNeeded:];
    }

LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

+ (id)stateWithContentsOfFile:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
    if (v4)
    {
      v9 = 0;
      v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];
      v6 = v9;
      if (v6)
      {
        v7 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          +[CAMTimelapseState stateWithContentsOfFile:];
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)nominalIntermediateFrameSize
{
  width = self->_nominalIntermediateFrameSize.width;
  height = self->_nominalIntermediateFrameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end