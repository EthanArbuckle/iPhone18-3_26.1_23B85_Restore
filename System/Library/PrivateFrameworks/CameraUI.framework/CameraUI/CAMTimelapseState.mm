@interface CAMTimelapseState
+ (id)stateWithContentsOfFile:(id)file;
- (BOOL)_commonCAMTimelapseStateInitWithCoder:(id)coder;
- (BOOL)addStopReasons:(int64_t)reasons stopTime:(id)time;
- (BOOL)canContinueCapture;
- (BOOL)incrementFrameIndex;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToState:(id)state;
- (BOOL)isReadyForWritingMovie;
- (BOOL)mergeSecondaryState:(id)state;
- (BOOL)writeToFile:(id)file createDirectoryIfNeeded:(BOOL)needed;
- (CAMTimelapseState)init;
- (CAMTimelapseState)initWithCoder:(id)coder;
- (CGSize)nominalIntermediateFrameSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)filePathForNextFrameIndex;
- (id)fullDescription;
- (void)encodeWithCoder:(id)coder;
- (void)forceCompleted;
@end

@implementation CAMTimelapseState

- (BOOL)mergeSecondaryState:(id)state
{
  stateCopy = state;
  stopReasons = [stateCopy stopReasons];
  stopTime = [stateCopy stopTime];

  LOBYTE(self) = [(CAMTimelapseState *)self addStopReasons:stopReasons stopTime:stopTime];
  return self;
}

- (CAMTimelapseState)init
{
  v6.receiver = self;
  v6.super_class = CAMTimelapseState;
  v2 = [(CAMTimelapseState *)&v6 init];
  if (v2)
  {
    uUIDString = [MEMORY[0x1E69BF320] UUIDString];
    timelapseUUID = v2->_timelapseUUID;
    v2->_timelapseUUID = uUIDString;

    if (![(CAMTimelapseState *)v2 _commonCAMTimelapseStateInitWithCoder:0])
    {

      return 0;
    }
  }

  return v2;
}

- (CAMTimelapseState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMTimelapseState;
  v5 = [(CAMTimelapseState *)&v8 init];
  v6 = v5;
  if (v5 && ![(CAMTimelapseState *)v5 _commonCAMTimelapseStateInitWithCoder:coderCopy])
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)_commonCAMTimelapseStateInitWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"timelapseUUID"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timelapseUUID"];
    timelapseUUID = self->_timelapseUUID;
    self->_timelapseUUID = v5;
  }

  v7 = [(NSString *)self->_timelapseUUID length];
  if (v7)
  {
    if ([coderCopy containsValueForKey:@"captureDevice"])
    {
      v8 = [coderCopy decodeIntegerForKey:@"captureDevice"];
    }

    else
    {
      v8 = 0;
    }

    self->_captureDevice = v8;
    if ([coderCopy containsValueForKey:@"captureOrientation"])
    {
      v9 = [coderCopy decodeIntegerForKey:@"captureOrientation"];
    }

    else
    {
      v9 = 1;
    }

    self->_captureOrientation = v9;
    v10 = [coderCopy containsValueForKey:@"captureMirrored"];
    if (v10)
    {
      LOBYTE(v10) = [coderCopy decodeBoolForKey:@"captureMirrored"];
    }

    self->_captureMirrored = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = self->_startTime;
    self->_startTime = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startLocation"];
    startLocation = self->_startLocation;
    self->_startLocation = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFrameResponseTime"];
    lastFrameResponseTime = self->_lastFrameResponseTime;
    self->_lastFrameResponseTime = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stopTime"];
    stopTime = self->_stopTime;
    self->_stopTime = v17;

    self->_preferHEVC = [coderCopy decodeBoolForKey:@"timelapsePreferHEVC"];
    if ([coderCopy containsValueForKey:@"stopReasons"])
    {
      v19 = [coderCopy decodeIntegerForKey:@"stopReasons"];
    }

    else
    {
      v19 = 0;
    }

    self->_stopReasons = v19;
    self->_allFramesWritten = [coderCopy decodeBoolForKey:@"allFramesWritten"];
    if ([coderCopy containsValueForKey:@"captureTimeInterval"])
    {
      [coderCopy decodeDoubleForKey:@"captureTimeInterval"];
      self->_captureTimeInterval = v20;
    }

    else
    {
      v21 = +[CAMTimelapseSettings sharedInstance];
      [v21 initialCaptureTimeInterval];
      self->_captureTimeInterval = v22;
    }

    v23 = [coderCopy decodeIntegerForKey:@"frameIndexStride"];
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    self->_frameIndexStride = v24;
    self->_nextFrameIndex = [coderCopy decodeIntegerForKey:@"nextFrameIndex"];
    if ([coderCopy containsValueForKey:@"focusLensPosition"])
    {
      [coderCopy decodeFloatForKey:@"focusLensPosition"];
    }

    else
    {
      +[CUCaptureController focusLensPositionCurrentSentinel];
    }

    self->_focusLensPosition = v25;
    if ([coderCopy containsValueForKey:@"nominalIntermediateFrameSize"])
    {
      [coderCopy decodeCGSizeForKey:@"nominalIntermediateFrameSize"];
      self->_nominalIntermediateFrameSize.width = v26;
      self->_nominalIntermediateFrameSize.height = v27;
    }

    else
    {
      self->_nominalIntermediateFrameSize = *MEMORY[0x1E695F060];
    }

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localPrivateMetadataFileURL"];
    localPrivateMetadataFileURL = self->_localPrivateMetadataFileURL;
    self->_localPrivateMetadataFileURL = v28;
  }

  return v7 != 0;
}

- (void)encodeWithCoder:(id)coder
{
  timelapseUUID = self->_timelapseUUID;
  coderCopy = coder;
  [coderCopy encodeObject:timelapseUUID forKey:@"timelapseUUID"];
  [coderCopy encodeInteger:self->_captureDevice forKey:@"captureDevice"];
  [coderCopy encodeInteger:self->_captureOrientation forKey:@"captureOrientation"];
  [coderCopy encodeBool:self->_captureMirrored forKey:@"captureMirrored"];
  [coderCopy encodeObject:self->_startTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_startLocation forKey:@"startLocation"];
  [coderCopy encodeObject:self->_lastFrameResponseTime forKey:@"lastFrameResponseTime"];
  [coderCopy encodeObject:self->_stopTime forKey:@"stopTime"];
  [coderCopy encodeInteger:self->_stopReasons forKey:@"stopReasons"];
  [coderCopy encodeBool:self->_allFramesWritten forKey:@"allFramesWritten"];
  [coderCopy encodeDouble:@"captureTimeInterval" forKey:self->_captureTimeInterval];
  [coderCopy encodeInteger:self->_frameIndexStride forKey:@"frameIndexStride"];
  [coderCopy encodeInteger:self->_nextFrameIndex forKey:@"nextFrameIndex"];
  *&v5 = self->_focusLensPosition;
  [coderCopy encodeFloat:@"focusLensPosition" forKey:v5];
  [coderCopy encodeCGSize:@"nominalIntermediateFrameSize" forKey:{self->_nominalIntermediateFrameSize.width, self->_nominalIntermediateFrameSize.height}];
  [coderCopy encodeBool:self->_preferHEVC forKey:@"timelapsePreferHEVC"];
  [coderCopy encodeObject:self->_localPrivateMetadataFileURL forKey:@"localPrivateMetadataFileURL"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAMTimelapseState *)self isEqualToState:equalCopy];

  return v5;
}

- (BOOL)isEqualToState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy == self)
  {
    v6 = 1;
  }

  else if (stateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  maxOutputFrames = [v6 maxOutputFrames];

  if (v5 >= maxOutputFrames)
  {
    self->_frameIndexStride *= 2;
    self->_captureTimeInterval = self->_captureTimeInterval + self->_captureTimeInterval;
  }

  return v5 >= maxOutputFrames;
}

- (id)filePathForNextFrameIndex
{
  v3 = [CAMTimelapseDiskUtilities fileNameForImageFrameIndex:[(CAMTimelapseState *)self nextFrameIndex]];
  timelapseUUID = [(CAMTimelapseState *)self timelapseUUID];
  v5 = [CAMTimelapseDiskUtilities directoryPathForTimelapseUUID:timelapseUUID];

  v6 = [v5 stringByAppendingPathComponent:v3];

  return v6;
}

- (BOOL)addStopReasons:(int64_t)reasons stopTime:(id)time
{
  timeCopy = time;
  stopReasons = [(CAMTimelapseState *)self stopReasons];
  v8 = (stopReasons | reasons) == stopReasons;
  v9 = (stopReasons | reasons) != stopReasons;
  if (!v8)
  {
    [(CAMTimelapseState *)self setStopReasons:?];
  }

  stopTime = [(CAMTimelapseState *)self stopTime];
  v11 = stopTime;
  if (timeCopy && !stopTime)
  {
    [(CAMTimelapseState *)self setStopTime:timeCopy];
    v9 = 1;
  }

  return v9;
}

- (BOOL)canContinueCapture
{
  selfCopy = self;
  stopTime = [(CAMTimelapseState *)self stopTime];
  LOBYTE(selfCopy) = (stopTime | [(CAMTimelapseState *)selfCopy stopReasons]) == 0;

  return selfCopy;
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

  stopTime = [(CAMTimelapseState *)self stopTime];
  [stopTime timeIntervalSinceNow];
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
    timelapseUUID = [(CAMTimelapseState *)self timelapseUUID];
    v7 = 138543618;
    v8 = timelapseUUID;
    v9 = 2048;
    stopReasons = [(CAMTimelapseState *)self stopReasons];
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Forcing completion of timelapse %{public}@ with stopReasons %ld", &v7, 0x16u);
  }

  [objc_opt_class() maxTimeToWaitForWrittenFrameAfterStop];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v5];
  [(CAMTimelapseState *)self setStopTime:v6];
  [(CAMTimelapseState *)self setAllFramesWritten:1];
}

- (BOOL)writeToFile:(id)file createDirectoryIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  fileCopy = file;
  if ([fileCopy length])
  {
    stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
    if (neededCopy)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      if (![defaultManager fileExistsAtPath:stringByDeletingLastPathComponent])
      {
        v17 = 0;
        v9 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v17];
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
    defaultManager = v16;
    if (defaultManager)
    {
      v12 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CAMTimelapseState writeToFile:createDirectoryIfNeeded:];
      }
    }

    v13 = 1;
    if ([v11 writeToFile:fileCopy atomically:1])
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

+ (id)stateWithContentsOfFile:(id)file
{
  fileCopy = file;
  if ([fileCopy length])
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy];
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