@interface CAMVideoThumbnailOutputEnabledCommand
- (CAMVideoThumbnailOutputEnabledCommand)initWithCoder:(id)coder;
- (CAMVideoThumbnailOutputEnabledCommand)initWithVideoThumbnailOutputEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoThumbnailOutputEnabledCommand

- (CAMVideoThumbnailOutputEnabledCommand)initWithVideoThumbnailOutputEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMVideoThumbnailOutputEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoThumbnailOutputEnabledCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMVideoThumbnailOutputEnabledCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMVideoThumbnailOutputEnabled"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoThumbnailOutputEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMVideoThumbnailOutputEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoThumbnailOutputEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoThumbnailOutputEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoThumbnailOutputEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  LOBYTE(self) = [(CAMVideoThumbnailOutputEnabledCommand *)self _isEnabled];
  currentVideoThumbnailOutput = [contextCopy currentVideoThumbnailOutput];

  connections = [currentVideoThumbnailOutput connections];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CAMVideoThumbnailOutputEnabledCommand_executeWithContext___block_invoke;
  v7[3] = &__block_descriptor_33_e36_v32__0__AVCaptureConnection_8Q16_B24l;
  selfCopy = self;
  [connections enumerateObjectsUsingBlock:v7];
}

void __60__CAMVideoThumbnailOutputEnabledCommand_executeWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v4 = *(a1 + 32) == [v3 isEnabled];
    v3 = v5;
    if (!v4)
    {
      [v5 setEnabled:?];
      v3 = v5;
    }
  }
}

@end