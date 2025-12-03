@interface CAMNebulaSecondaryState
+ (id)secondaryStateWithContentsOfFile:(id)file;
- (BOOL)addStopReasons:(int64_t)reasons stopTime:(id)time;
- (BOOL)writeToFile:(id)file;
- (CAMNebulaSecondaryState)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)notifyWillAttemptToWriteMovie;
@end

@implementation CAMNebulaSecondaryState

- (CAMNebulaSecondaryState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CAMNebulaSecondaryState;
  v5 = [(CAMNebulaSecondaryState *)&v12 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"stopReasons"])
    {
      v6 = [coderCopy decodeIntegerForKey:@"stopReasons"];
    }

    else
    {
      v6 = 0;
    }

    v5->_stopReasons = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stopTime"];
    stopTime = v5->_stopTime;
    v5->_stopTime = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastMovieWriteAttemptTime"];
    lastMovieWriteAttemptTime = v5->_lastMovieWriteAttemptTime;
    v5->_lastMovieWriteAttemptTime = v9;

    v5->_movieWriteAttemptsCount = [coderCopy decodeIntegerForKey:@"movieWriteAttemptsCount"];
    v5->_failedStateReadAttemptsCount = [coderCopy decodeIntegerForKey:@"failedStateReadAttemptsCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  stopReasons = self->_stopReasons;
  coderCopy = coder;
  [coderCopy encodeInteger:stopReasons forKey:@"stopReasons"];
  [coderCopy encodeObject:self->_stopTime forKey:@"stopTime"];
  [coderCopy encodeObject:self->_lastMovieWriteAttemptTime forKey:@"lastMovieWriteAttemptTime"];
  [coderCopy encodeInteger:self->_movieWriteAttemptsCount forKey:@"movieWriteAttemptsCount"];
  [coderCopy encodeInteger:self->_failedStateReadAttemptsCount forKey:@"failedStateReadAttemptsCount"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CAMNebulaSecondaryState;
  v4 = [(CAMNebulaSecondaryState *)&v9 description];
  stopReasons = [(CAMNebulaSecondaryState *)self stopReasons];
  stopTime = [(CAMNebulaSecondaryState *)self stopTime];
  v7 = [v3 stringWithFormat:@"%@: stopReasons=%ld stopTime=%@", v4, stopReasons, stopTime];

  return v7;
}

- (BOOL)addStopReasons:(int64_t)reasons stopTime:(id)time
{
  timeCopy = time;
  stopReasons = [(CAMNebulaSecondaryState *)self stopReasons];
  v8 = (stopReasons | reasons) == stopReasons;
  v9 = (stopReasons | reasons) != stopReasons;
  if (!v8)
  {
    [(CAMNebulaSecondaryState *)self setStopReasons:?];
  }

  stopTime = [(CAMNebulaSecondaryState *)self stopTime];
  v11 = stopTime;
  if (timeCopy && !stopTime)
  {
    [(CAMNebulaSecondaryState *)self setStopTime:timeCopy];
    v9 = 1;
  }

  return v9;
}

- (void)notifyWillAttemptToWriteMovie
{
  ++self->_movieWriteAttemptsCount;
  date = [MEMORY[0x1E695DF00] date];
  lastMovieWriteAttemptTime = self->_lastMovieWriteAttemptTime;
  self->_lastMovieWriteAttemptTime = date;

  MEMORY[0x1EEE66BB8](date, lastMovieWriteAttemptTime);
}

- (BOOL)writeToFile:(id)file
{
  fileCopy = file;
  if ([fileCopy length])
  {
    v23 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v23];
    v6 = v23;
    if (v6)
    {
      v7 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CAMNebulaSecondaryState *)v6 writeToFile:v7, v8, v9, v10, v11, v12, v13];
      }
    }

    v14 = [v5 writeToFile:fileCopy atomically:1];
    if ((v14 & 1) == 0)
    {
      v15 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CAMNebulaSecondaryState *)fileCopy writeToFile:v15, v16, v17, v18, v19, v20, v21];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)secondaryStateWithContentsOfFile:(id)file
{
  fileCopy = file;
  if ([fileCopy length])
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy];
    if (v4)
    {
      v15 = 0;
      v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v15];
      v6 = v15;
      if (v6)
      {
        v7 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(CAMNebulaSecondaryState *)v6 secondaryStateWithContentsOfFile:v7, v8, v9, v10, v11, v12, v13];
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

@end