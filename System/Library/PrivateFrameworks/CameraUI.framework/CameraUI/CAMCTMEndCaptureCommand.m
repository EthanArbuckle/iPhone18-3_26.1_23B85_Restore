@interface CAMCTMEndCaptureCommand
- (CAMCTMEndCaptureCommand)initWithCoder:(id)a3;
- (CAMCTMEndCaptureCommand)initWithPersistenceUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMCTMEndCaptureCommand

- (CAMCTMEndCaptureCommand)initWithPersistenceUUID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMCTMEndCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  if (v5)
  {
    v6 = [v4 copy];
    persistenceUUID = v5->__persistenceUUID;
    v5->__persistenceUUID = v6;

    v8 = v5;
  }

  return v5;
}

- (CAMCTMEndCaptureCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMCTMEndCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMCTMEndCaptureCommandPersistenceUUID"];
    persistenceUUID = v5->__persistenceUUID;
    v5->__persistenceUUID = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMCTMEndCaptureCommand *)self _persistenceUUID];
  [v4 encodeObject:v5 forKey:@"CAMCTMEndCaptureCommandPersistenceUUID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMCTMEndCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMCTMEndCaptureCommand *)self _persistenceUUID];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMCTMEndCaptureCommand *)self _persistenceUUID];
  v6 = [v4 currentStillImageOutput];
  v7 = v5;
  v8 = [v4 cachedMomentCaptureSettingsForIdentifier:v7];
  [v4 clearCachedMomentCaptureSettingsForIdentifier:v7];
  v9 = [v4 currentVideoDevice];
  [v9 videoZoomFactor];
  v11 = v10;

  [v4 registerVideoEndZoomFactor:v11];
  if (v8)
  {
    [v6 endMomentCaptureWithUniqueID:{objc_msgSend(v8, "uniqueID")}];
    v12 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = [v8 uniqueID];
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "captureID:%lld Called endMomentCaptureWithUniqueID:", &v13, 0xCu);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CAMCTMEndCaptureCommand *)v7 executeWithContext:v12];
    }
  }
}

- (void)executeWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to find cached initiation settings for persistenceUUID %{public}@ in CAMCTMEndMomentCaptureCommand", &v2, 0xCu);
}

@end