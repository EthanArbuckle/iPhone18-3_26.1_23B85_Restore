@interface CAMNebulaSecondaryState
+ (id)secondaryStateWithContentsOfFile:(id)a3;
- (BOOL)addStopReasons:(int64_t)a3 stopTime:(id)a4;
- (BOOL)writeToFile:(id)a3;
- (CAMNebulaSecondaryState)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)notifyWillAttemptToWriteMovie;
@end

@implementation CAMNebulaSecondaryState

- (CAMNebulaSecondaryState)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAMNebulaSecondaryState;
  v5 = [(CAMNebulaSecondaryState *)&v12 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"stopReasons"])
    {
      v6 = [v4 decodeIntegerForKey:@"stopReasons"];
    }

    else
    {
      v6 = 0;
    }

    v5->_stopReasons = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stopTime"];
    stopTime = v5->_stopTime;
    v5->_stopTime = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastMovieWriteAttemptTime"];
    lastMovieWriteAttemptTime = v5->_lastMovieWriteAttemptTime;
    v5->_lastMovieWriteAttemptTime = v9;

    v5->_movieWriteAttemptsCount = [v4 decodeIntegerForKey:@"movieWriteAttemptsCount"];
    v5->_failedStateReadAttemptsCount = [v4 decodeIntegerForKey:@"failedStateReadAttemptsCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  stopReasons = self->_stopReasons;
  v5 = a3;
  [v5 encodeInteger:stopReasons forKey:@"stopReasons"];
  [v5 encodeObject:self->_stopTime forKey:@"stopTime"];
  [v5 encodeObject:self->_lastMovieWriteAttemptTime forKey:@"lastMovieWriteAttemptTime"];
  [v5 encodeInteger:self->_movieWriteAttemptsCount forKey:@"movieWriteAttemptsCount"];
  [v5 encodeInteger:self->_failedStateReadAttemptsCount forKey:@"failedStateReadAttemptsCount"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CAMNebulaSecondaryState;
  v4 = [(CAMNebulaSecondaryState *)&v9 description];
  v5 = [(CAMNebulaSecondaryState *)self stopReasons];
  v6 = [(CAMNebulaSecondaryState *)self stopTime];
  v7 = [v3 stringWithFormat:@"%@: stopReasons=%ld stopTime=%@", v4, v5, v6];

  return v7;
}

- (BOOL)addStopReasons:(int64_t)a3 stopTime:(id)a4
{
  v6 = a4;
  v7 = [(CAMNebulaSecondaryState *)self stopReasons];
  v8 = (v7 | a3) == v7;
  v9 = (v7 | a3) != v7;
  if (!v8)
  {
    [(CAMNebulaSecondaryState *)self setStopReasons:?];
  }

  v10 = [(CAMNebulaSecondaryState *)self stopTime];
  v11 = v10;
  if (v6 && !v10)
  {
    [(CAMNebulaSecondaryState *)self setStopTime:v6];
    v9 = 1;
  }

  return v9;
}

- (void)notifyWillAttemptToWriteMovie
{
  ++self->_movieWriteAttemptsCount;
  v3 = [MEMORY[0x1E695DF00] date];
  lastMovieWriteAttemptTime = self->_lastMovieWriteAttemptTime;
  self->_lastMovieWriteAttemptTime = v3;

  MEMORY[0x1EEE66BB8](v3, lastMovieWriteAttemptTime);
}

- (BOOL)writeToFile:(id)a3
{
  v4 = a3;
  if ([v4 length])
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

    v14 = [v5 writeToFile:v4 atomically:1];
    if ((v14 & 1) == 0)
    {
      v15 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CAMNebulaSecondaryState *)v4 writeToFile:v15, v16, v17, v18, v19, v20, v21];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)secondaryStateWithContentsOfFile:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
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