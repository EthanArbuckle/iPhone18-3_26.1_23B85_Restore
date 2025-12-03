@interface CAMCTMCancelMomentCaptureCommand
- (CAMCTMCancelMomentCaptureCommand)initWithCoder:(id)coder;
- (CAMCTMCancelMomentCaptureCommand)initWithPersistenceUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMCTMCancelMomentCaptureCommand

- (CAMCTMCancelMomentCaptureCommand)initWithPersistenceUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CAMCTMCancelMomentCaptureCommand;
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

- (CAMCTMCancelMomentCaptureCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMCTMCancelMomentCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMCTMCancelCaptureCommandPersistenceUUID"];
    persistenceUUID = v5->__persistenceUUID;
    v5->__persistenceUUID = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _persistenceUUID = [(CAMCTMCancelMomentCaptureCommand *)self _persistenceUUID];
  [coderCopy encodeObject:_persistenceUUID forKey:@"CAMCTMCancelCaptureCommandPersistenceUUID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMCTMCancelMomentCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _persistenceUUID = [(CAMCTMCancelMomentCaptureCommand *)self _persistenceUUID];
  v6 = v4[3];
  v4[3] = _persistenceUUID;

  return v4;
}

- (void)executeWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  _persistenceUUID = [(CAMCTMCancelMomentCaptureCommand *)self _persistenceUUID];
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  v7 = _persistenceUUID;
  v8 = [contextCopy cachedMomentCaptureSettingsForIdentifier:v7];
  [contextCopy clearCachedMomentCaptureSettingsForIdentifier:v7];

  if (v8)
  {
    [currentStillImageOutput cancelMomentCaptureWithUniqueID:{objc_msgSend(v8, "uniqueID")}];
    v9 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      uniqueID = [v8 uniqueID];
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "captureID:%lld Called cancelMomentCaptureWithUniqueID:", &v10, 0xCu);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CAMCTMCancelMomentCaptureCommand *)v7 executeWithContext:v9];
    }
  }
}

- (void)executeWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to find cached initiation settings for persistenceUUID %{public}@ in CAMCTMCancelMomentCaptureCommand", &v2, 0xCu);
}

@end