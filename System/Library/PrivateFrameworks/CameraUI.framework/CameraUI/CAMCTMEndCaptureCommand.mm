@interface CAMCTMEndCaptureCommand
- (CAMCTMEndCaptureCommand)initWithCoder:(id)coder;
- (CAMCTMEndCaptureCommand)initWithPersistenceUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMCTMEndCaptureCommand

- (CAMCTMEndCaptureCommand)initWithPersistenceUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CAMCTMEndCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  if (v5)
  {
    v6 = [dCopy copy];
    persistenceUUID = v5->__persistenceUUID;
    v5->__persistenceUUID = v6;

    v8 = v5;
  }

  return v5;
}

- (CAMCTMEndCaptureCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMCTMEndCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMCTMEndCaptureCommandPersistenceUUID"];
    persistenceUUID = v5->__persistenceUUID;
    v5->__persistenceUUID = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _persistenceUUID = [(CAMCTMEndCaptureCommand *)self _persistenceUUID];
  [coderCopy encodeObject:_persistenceUUID forKey:@"CAMCTMEndCaptureCommandPersistenceUUID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMCTMEndCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _persistenceUUID = [(CAMCTMEndCaptureCommand *)self _persistenceUUID];
  v6 = v4[3];
  v4[3] = _persistenceUUID;

  return v4;
}

- (void)executeWithContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  _persistenceUUID = [(CAMCTMEndCaptureCommand *)self _persistenceUUID];
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  v7 = _persistenceUUID;
  v8 = [contextCopy cachedMomentCaptureSettingsForIdentifier:v7];
  [contextCopy clearCachedMomentCaptureSettingsForIdentifier:v7];
  currentVideoDevice = [contextCopy currentVideoDevice];
  [currentVideoDevice videoZoomFactor];
  v11 = v10;

  [contextCopy registerVideoEndZoomFactor:v11];
  if (v8)
  {
    [currentStillImageOutput endMomentCaptureWithUniqueID:{objc_msgSend(v8, "uniqueID")}];
    v12 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      uniqueID = [v8 uniqueID];
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