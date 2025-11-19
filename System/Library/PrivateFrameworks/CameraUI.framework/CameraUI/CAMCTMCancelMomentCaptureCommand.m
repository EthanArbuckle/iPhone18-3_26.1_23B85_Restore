@interface CAMCTMCancelMomentCaptureCommand
- (CAMCTMCancelMomentCaptureCommand)initWithCoder:(id)a3;
- (CAMCTMCancelMomentCaptureCommand)initWithPersistenceUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMCTMCancelMomentCaptureCommand

- (CAMCTMCancelMomentCaptureCommand)initWithPersistenceUUID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMCTMCancelMomentCaptureCommand;
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

- (CAMCTMCancelMomentCaptureCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMCTMCancelMomentCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMCTMCancelCaptureCommandPersistenceUUID"];
    persistenceUUID = v5->__persistenceUUID;
    v5->__persistenceUUID = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMCTMCancelMomentCaptureCommand *)self _persistenceUUID];
  [v4 encodeObject:v5 forKey:@"CAMCTMCancelCaptureCommandPersistenceUUID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMCTMCancelMomentCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMCTMCancelMomentCaptureCommand *)self _persistenceUUID];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMCTMCancelMomentCaptureCommand *)self _persistenceUUID];
  v6 = [v4 currentStillImageOutput];
  v7 = v5;
  v8 = [v4 cachedMomentCaptureSettingsForIdentifier:v7];
  [v4 clearCachedMomentCaptureSettingsForIdentifier:v7];

  if (v8)
  {
    [v6 cancelMomentCaptureWithUniqueID:{objc_msgSend(v8, "uniqueID")}];
    v9 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = [v8 uniqueID];
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