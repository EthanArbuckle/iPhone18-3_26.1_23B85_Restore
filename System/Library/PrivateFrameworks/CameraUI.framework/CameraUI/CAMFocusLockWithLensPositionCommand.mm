@interface CAMFocusLockWithLensPositionCommand
- (CAMFocusLockWithLensPositionCommand)initWithCoder:(id)coder;
- (CAMFocusLockWithLensPositionCommand)initWithLensPosition:(float)position completionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMFocusLockWithLensPositionCommand

- (CAMFocusLockWithLensPositionCommand)initWithLensPosition:(float)position completionBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = CAMFocusLockWithLensPositionCommand;
  v7 = [(CAMCaptureCommand *)&v12 initWithSubcommands:0];
  v9 = v7;
  if (v7)
  {
    *&v8 = position;
    [(CAMFocusLockWithLensPositionCommand *)v7 _setLensPosition:v8];
    [(CAMFocusLockWithLensPositionCommand *)v9 _setCompletionBlock:blockCopy];
    v10 = v9;
  }

  return v9;
}

- (CAMFocusLockWithLensPositionCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMFocusLockWithLensPositionCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CAMFocusLockWithLensPositionCommand;
  v4 = [(CAMCaptureCommand *)&v7 copyWithZone:zone];
  [(CAMFocusLockWithLensPositionCommand *)self _lensPosition];
  [v4 _setLensPosition:?];
  _completionBlock = [(CAMFocusLockWithLensPositionCommand *)self _completionBlock];
  [v4 _setCompletionBlock:_completionBlock];

  return v4;
}

- (void)executeWithContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  if ([currentVideoDevice isLockingFocusWithCustomLensPositionSupported])
  {
    [(CAMFocusLockWithLensPositionCommand *)self _lensPosition];
    v7 = v6;
    if (v6 == *MEMORY[0x1E6986998])
    {
      v9 = v6;
    }

    else
    {
      CEKClamp();
      v9 = v8;
      if (v7 != v9)
      {
        v10 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v17 = v7;
          v18 = 2048;
          v19 = v9;
          _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Clamping desired lensPosition %.4f to %.4f", buf, 0x16u);
        }
      }
    }

    objc_initWeak(buf, currentVideoDevice);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__CAMFocusLockWithLensPositionCommand_executeWithContext___block_invoke;
    v14[3] = &unk_1E76FB2C8;
    v14[4] = self;
    objc_copyWeak(&v15, buf);
    *&v13 = v9;
    [currentVideoDevice setFocusModeLockedWithLensPosition:v14 completionHandler:v13];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CAMFocusLockWithLensPositionCommand *)currentVideoDevice executeWithContext:v11];
    }

    completionBlock = self->__completionBlock;
    if (completionBlock)
    {
      [currentVideoDevice lensPosition];
      completionBlock[2](completionBlock);
    }
  }
}

uint64_t __58__CAMFocusLockWithLensPositionCommand_executeWithContext___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 32))
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 40));
    [WeakRetained lensPosition];
    v4 = v3;

    v5 = *(*(*(v1 + 32) + 32) + 16);
    v6.n128_u32[0] = v4;

    return v5(v6);
  }

  return result;
}

- (void)executeWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "lockingFocusWithCustomLensPositionSupported=NO for %{public}@", &v2, 0xCu);
}

@end